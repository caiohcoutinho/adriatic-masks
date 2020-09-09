importScripts("underscore.js");

const isNullOrUndefinedOrEmpty = function(o){
	return _.isNull(o) || _.isUndefined(o) || o === "";
}

const findCemetery = (homeList) => {
	return _.find(homeList, (h) => {
		return h.name == 'Cemitério';
	});
};

const findHospital = (businessList) => {
	return _.find(businessList, (b) => {
		return b.business_type == 'Hospital';
	});
}

const MAGIC_NUMBERS = {
	DONT_MISS_WORK: 0.95,
	GOES_TO_WORK_WHEN_CLOSED: 0.05,
	SLEEP_AT_1: 0.005,
	SLEEP_AT_2: 0.01,
	SLEEP_AT_3: 0.80,
	CLOSED_BUSINESS: 0.05,
	GOES_TO_DOCTOR: 0.5,
	DEFAULT_HOSPITAL_PREFERENCE: 0.5,
	CALL_IN_SICK: 0.25,
	WANDERING: 0.95
}

const setNpcLocation = function(night, period, npcId, locationId, homeId, job, sleeping){
	let result = {
		npcId: npcId, location: locationId, home: homeId, 
		sleeping: sleeping,
	};
	if(!isNullOrUndefinedOrEmpty(job) && job != false){
		result.job = job;
	}
	night.npcActivity[npcId]["n"+period] = result;
	if(!isNullOrUndefinedOrEmpty(locationId)){
		night.businessActivity[locationId]["n"+period].push(result);
	}
	if(!isNullOrUndefinedOrEmpty(homeId)){
		night.homeActivity[homeId]["n"+period].push(result)
	}
}

const mergeNpcPreferenceAndBusinessRules = function(night, npc, period, npcPreferencesList, businessList, businessRulesList, homeList){
	let npcId = npc.id;
	let npcPrefs = _.where(npcPreferencesList, {npc: npcId});
	return 	_.map(
		npcPrefs, 
		(pref) => {
			let business = _.findWhere(businessList, {id: pref.business});
			let businessPrefModifier = _.reduce(
				_.filter(
					businessRulesList, 
					(businessPref) => {
						return 1==1
							&& businessPref.business == pref.business
							&& ( _.isUndefined(businessPref.withprofession) || _.isNull(businessPref.withprofession) || false /* TODO */)
							&& ( _.isUndefined(businessPref.withoutprofession) || _.isNull(businessPref.withoutprofession) || false /* TODO */)
							&& ( _.isUndefined(businessPref.agegreaterthan) || _.isNull(businessPref.agegreaterthan) || npc.age >= businessPref.agegreaterthan)
							&& ( _.isUndefined(businessPref.agelessthan) || _.isNull(businessPref.agelessthan) || npc.age <= businessPref.agelessthan)
							&& ( _.isUndefined(businessPref.wealthgreaterthan) || _.isNull(businessPref.wealthgreaterthan) || false /* TODO */)
							&& ( _.isUndefined(businessPref.wealthlessthan) || _.isNull(businessPref.wealthlessthan) || false /* TODO */)
							&& ( _.isUndefined(businessPref.withgender) || _.isNull(businessPref.withgender) || npc.gender == businessPref.withgender)
							&& ( _.isUndefined(businessPref.withoutgender) || _.isNull(businessPref.withoutgender) || npc.gender != businessPref.withoutgender)
							//&& ( _.isUndefined(locationPref.mesmobairro) ||  false /* TODO */)
							;
					}
				), 
				(memo, value) => {return memo*parseFloat(value.modifier)}, 
				1
			);
			return {
				id: pref.id,
				npc: pref.npc,
				business: pref.business,
				seed: Math.pow(pref.seed, 4) * businessPrefModifier * (business["n"+period] ? 1 : MAGIC_NUMBERS.CLOSED_BUSINESS)
			}
		}
	);
}

const getWanderingLocation = function(night, npc, period, npcProfessionList, professionList, npcPreferencesList, businessList, businessRulesList, homeList){
	let npcId = npc.id;
	let businessSeed = Math.random();
	let sum = 0;
	let npcPrefsWithCorrections = mergeNpcPreferenceAndBusinessRules(night, npc, period, npcPreferencesList, businessList, businessRulesList);
	let totalChance = _.reduce(npcPrefsWithCorrections, (memo, pref) => {return memo+pref.seed}, 0);
	let businessId = _.find(npcPrefsWithCorrections, (pref) => {
		let seed = pref.seed;
		sum += seed;
		return seed > 0 ? businessSeed < sum/totalChance : false;
	}).business;
	return businessId;
}

const peopleWorking = function(night, npc, period, npcProfessionList, professionList, npcPreferencesList, businessList, businessRulesList, homeList){
	let jobs = _.where(npcProfessionList, {npc: npc.id});

	let openJobsAtPeriod = _.filter(jobs, (job) => {
		let business = _.findWhere(businessList, {id: job.business});
		let profession = _.findWhere(professionList, {id: job.profession});
		return !profession.nominal && (business == null || business["n"+period]);
	});

	if(!_.isEmpty(openJobsAtPeriod)){ // Hummm such a diligent person...

		let job = jobs[0]; // This is the prioritary job.
		let jobLocationId = job.business;

		if(Math.random() < MAGIC_NUMBERS.DONT_MISS_WORK){ // Bills ain't gonna pay themselves!
			if(!isNullOrUndefinedOrEmpty(jobLocationId)){
				setNpcLocation(night, period, npc.id, jobLocationId, null, job, false); // At office
				return true;
			}
			let locationId = getWanderingLocation(night, npc, period, npcProfessionList, professionList, npcPreferencesList, businessList, businessRulesList);
			setNpcLocation(night, period, npc.id, locationId, null, job, false); //Out of office work
			return true;
		} else{ 
			// Skipping work...
		}
	}
	return false;
}

const peopleSleeping = function(night, npc, period, npcProfessionList, professionList, npcPreferencesList, businessList, businessRulesList, homeList){
	if(Math.random() < MAGIC_NUMBERS["SLEEP_AT_"+period]){
		setNpcLocation(night, period, npc.id, null, npc.home_id, false, true);
		return true;
	}

	return false;
}

const peopleWandering = function(night, npc, period, npcProfessionList, professionList, npcPreferencesList, businessList, businessRulesList, homeList){
	if(Math.random() < MAGIC_NUMBERS.WANDERING){
		let locationId = getWanderingLocation(night, npc, period, npcProfessionList, professionList, npcPreferencesList, businessList, businessRulesList);
		setNpcLocation(night, period, npc.id, locationId, null, false, false);
		return true;
	}
	return false;
}

const peopleChillingAtHome = function(night, npc, period, npcProfessionList, professionList, npcPreferencesList, businessList, businessRulesList, homeList){
	setNpcLocation(night, period, npc.id, null, npc.home_id, false, false);
	return true;
}

const peopleDead = function(night, npc, period, npcProfessionList, professionList, npcPreferencesList, businessList, businessRulesList, homeList, hospitalId, cemeteryId){
	if(npc.alive){
		return false;
	}
	setNpcLocation(night, period, npc.id, null, cemeteryId, false, false);
	return true;
}

const peopleSickGoingToHospital = function(night, npc, period, npcProfessionList, professionList, npcPreferencesList, businessList, businessRulesList, homeList, hospitalId){
	if(!npc.sick){
		return false;
	}
	let hospitalPreference = _.findWhere(npcPreferencesList, {npc: npc.id, business: hospitalId});
	let seed = isNullOrUndefinedOrEmpty(hospitalPreference) ? MAGIC_NUMBERS.DEFAULT_HOSPITAL_PREFERENCE : hospitalPreference.seed;
	let doctorCheck = Math.random();
	let goesToDockor = doctorCheck < MAGIC_NUMBERS.GOES_TO_DOCTOR*seed;
	if(goesToDockor){
		setNpcLocation(night, period, npc.id, hospitalId, null, false, false);
		return true;
	}
	return false;
}

const peopleHospitalized = function(night, npc, period, npcProfessionList, professionList, npcPreferencesList, businessList, businessRulesList, homeList, hospitalId){
	if(!npc.hospitalized){
		return false;
	}
	setNpcLocation(night, period, npc.id, hospitalId, null, false, false);
	return true;
}

const peopleCallingInSick = function(night, npc, period, npcProfessionList, professionList, npcPreferencesList, businessList, businessRulesList, homeList){
	if(!npc.sick){
		return false;
	}
	let stayHomeCheck = Math.random();
	if(stayHomeCheck < MAGIC_NUMBERS.CALL_IN_SICK){
		setNpcLocation(night, period, npc.id, null, _.findWhere(homeList, {id: npc.home_id}).id, false, false);
		return true;	
	}
}

const peopleThatBeKids = function(night, npc, period, npcProfessionList, professionList, npcPreferencesList, businessList, businessRulesList, homeList){
	// TODO: They should be with their parents. For now, they're nowhere.
	return npc.age < 6;
}

const LocationCase = function(name, test){
	this.name = name;
	this.test = test;
}

const NPC_LOCATION_CASES = [
	new LocationCase("peopleDead", peopleDead),
	new LocationCase("peopleThatBeKids", peopleThatBeKids),
	new LocationCase("peopleSickGoingToHospital", peopleSickGoingToHospital),
	new LocationCase("peopleHospitalized", peopleHospitalized),
	new LocationCase("peopleCallingInSick", peopleCallingInSick),
	new LocationCase("peopleSleeping", peopleSleeping),
	new LocationCase("peopleWorking", peopleWorking),
	new LocationCase("peopleWandering", peopleWandering),
	new LocationCase("peopleChillingAtHome", peopleChillingAtHome),
];


const generateNight = function(npcList, businessList, npcPreferencesList, npcProfessionList, professionList, businessRulesList, homeList){
	let night = {};
	night.businessActivity = [];
	_.each(businessList, (b) => {night.businessActivity[b.id] = {n1: [], n2: [], n3: []}});
	night.homeActivity = [];
	_.each(homeList, (h) => {night.homeActivity[h.id] = {n1: [], n2: [], n3: []}});
	night.npcActivity = [];
	_.each(npcList, (npc) => {night.npcActivity[npc.id] = {n1: [], n2: [], n3: []}});

	const cemeteryId = findCemetery(homeList).id;
	const hospitalId = findHospital(businessList).id;

	let stats = [];
	_.each([1, 2, 3], (period) => {
		stats[period] = {};
		_.each(NPC_LOCATION_CASES, (locationCase) => {
			stats[period][locationCase.name] = 0;
		});
		_.each(npcList, (npc) => {
			_.find(NPC_LOCATION_CASES, (locationCase) => {
				if(locationCase.test(night, npc, period, npcProfessionList, professionList, npcPreferencesList, businessList, businessRulesList, homeList, hospitalId, cemeteryId)){
					stats[period][locationCase.name]++;
					return true;
				}
			});
		});
	});

	night.stats = stats;

	return night;
}

onmessage = function(e){
	let args = e.data;
	let night = generateNight(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
	postMessage(night);
}