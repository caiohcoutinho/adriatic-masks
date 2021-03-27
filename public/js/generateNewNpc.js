importScripts("underscore.js");

const isNullOrUndefinedOrEmpty = function(o){
	return _.isNull(o) || _.isUndefined(o) || o === "";
}

const random = function(){
	return Math.random();
}

const generateNewNpc = function(distributionList, genderList, nationalityList, 
		skinList, eyesList, hairList, neighbourhoodList, homeList,
		instinctList, oathList, oathNatureList, ressonanceList, randomNameList){
	let attrRange = [0, 1, 2, 3];
	let npc = {};

	npc.seed_nickname = random();
	npc.seed_age = random();
	npc.seed_eyes = random();
	npc.seed_hair = random();
	npc.seed_neighborhood = random();
	npc.seed_physical = random();
	npc.seed_social = random();
	npc.seed_mental = random();
	npc.seed_instinct = random();
	npc.seed_oath = random();
	npc.seed_oath_nature = random();

	let seed_name = random();
	let seed_family = random();
	let seed_gender = random();
	let seed_nationality = random();
	let seed_age = random();
	let seed_skin = random();
	let seed_home = random();
	let seed_wealth = random();
	let seed_max_health = random();
	let seed_ressonance = random();

	let gender = selectRandomFromEvenDistribution(seed_gender, genderList);

    npc.gender = gender.symbol;
    npc.nationality = selectRandomFromUnevenDistribution(seed_nationality, nationalityList, distributionList, "nationality").id

    npc.name = selectRandomFromEvenDistribution(seed_name, _.filter(randomNameList, (n) => n.nationality == npc.nationality && n.gender == gender.id)).name + (seed_family > 0.5 ? " + FAMILY" : "");

    npc.age = Math.floor(selectRandomAge(seed_age));
    npc.nickname = selectRandomNickname(npc.seed_nickname);
    npc.skin = selectRandomFromUnevenDistribution(seed_skin, skinList, distributionList, "skin").id;
    npc.eyes = selectRandomFromUnevenDistribution(npc.seed_eyes, eyesList, distributionList, "eyes").id;
    npc.hair = selectRandomHair(npc.seed_hair, hairList, distributionList, npc.age).id;
    npc.f = selectRandomFromEvenDistribution(npc.seed_physical, attrRange);
    npc.s = selectRandomFromEvenDistribution(npc.seed_social, attrRange);
    npc.m = selectRandomFromEvenDistribution(npc.seed_mental, attrRange);
    let neighbourhood = selectRandomFromUnevenDistribution(npc.seed_neighborhood, neighbourhoodList, distributionList, "neighbourhood").id;
    npc.home = selectRandomFromEvenDistribution(seed_home, _.filter(homeList, (h) => h.neighbourhood == neighbourhood)).id;
    npc.instinct = selectRandomFromEvenDistribution(npc.seed_instinct, instinctList).id;
    npc.oath = selectRandomFromEvenDistribution(npc.seed_oath, oathList).id;
    npc.oath_nature = selectRandomFromEvenDistribution(npc.seed_oath_nature, oathNatureList).id;
    npc.wealth = selectRandomFromEvenDistribution(seed_wealth, attrRange);
    npc.max_health = 2+selectRandomFromEvenDistribution(seed_max_health, [1, 2, 3]);
    npc.ressonance = selectRandomFromEvenDistribution(seed_ressonance, ressonanceList).id;
    npc.alive = true;
    npc.sick = false;
    npc.hospitalized = false;

    return npc;
}

let selectRandomHair = function(seed, hairList, distributionList, age){
	if(age > 60){
		return _.findWhere(hairList, (c) => c.name == 'Branco');
	}
	return selectRandomFromUnevenDistribution(seed, hairList, distributionList, "hair");
}

let selectRandomNickname = function(seed){
	return seed > 0.15 ? null : "NICKNAME";
}

let selectRandomAge = function(seed){
	if(seed < 0.1){
		return 100*seed;
	}
	if(seed < 0.9){
		return 10 + (seed - 0.1)*50/0.8;
	}
	return 60 + (seed-0.9)*200;
}

let selectRandomFromEvenDistribution = function(seed, list){
	return list[Math.floor(seed*_.size(list))];
}

let selectRandomFromUnevenDistribution = function(seed, list, distributionList, concept){
	let listWithWeight = _.map(list, (item) => {
		let distribution = _.findWhere(distributionList, {concept: concept, referenceid: item.id});
		return {
			...item,
			weight: isNullOrUndefinedOrEmpty(distribution) ? 1 : distribution.weight
		};
	});
	let totalWeight = _.reduce(listWithWeight, (memo, value) => {return memo + value.weight;}, 0);
	let sum = 0;
	return _.find(listWithWeight, (item) => {
		let weight = item.weight;
		sum += weight;
		return weight > 0 ? seed < sum/totalWeight : false;
	});
}

onmessage = function(e){
	let args = e.data;
	
	let	distributionList = args[0];
	let genderList = args[1];
	let nationalityList = args[2];
	let skinList = args[3];
	let eyesList = args[4];
	let hairList = args[5];
	let neighbourhoodList = args[6];
	let homeList = args[7];
	let instinctList = args[8];
	let oathList = args[9];
	let oathNatureList = args[10];
	let ressonanceList = args[11];
	let professionList = args[12];
	let businessList = args[13];
	let randomNameList = args[14];

	let npc = generateNewNpc(distributionList, genderList, nationalityList, 
		skinList, eyesList, hairList, neighbourhoodList, homeList,
		instinctList, oathList, oathNatureList, ressonanceList, randomNameList);

	let professionId = selectRandomFromUnevenDistribution(random(), professionList, distributionList, "profession").id;
	let businessId = selectRandomFromUnevenDistribution(random(), businessList, distributionList, "business").id;

	postMessage({
		npc: npc,
		professionId: professionId,
		businessId: businessId
	});
}