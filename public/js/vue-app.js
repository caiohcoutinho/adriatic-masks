const NPC = 'npc';
const BUSINESS = 'business';
const NIGHT = 'night';
const CONFIG = 'config';

const isNullOrUndefinedOrEmpty = function(o){
	return _.isNull(o) || _.isUndefined(o) || o == "";
}

Vue.prototype.axios = axios;

Vue.component('left-bar-menu', {
	template: '#leftBarMenuTemplate',
	props: ['warningList'],
	computed: {
		warningListSize: function(){
			return _.size(this.warningList);
		}
	},
	methods: {
		clickNpc: function(){
			this.$emit('click-link', NPC);
		},
		clickBusiness: function(){
			this.$emit('click-link', BUSINESS);
		},
		clickNight: function(){
			this.$emit('click-link', NIGHT);
		},
		clickConfig: function(){
			this.$emit('click-link', CONFIG);
		}
	}
});

Vue.component('main-area', {
	template: '#mainAreaTemplate',
	props: ['mainArea', 'warningList', 'npcProfessionList', 'professionList',
			'npc-list', 'neighbourhoodList', 'familyList',
			'selectedFamily', 'businessList', 'lastUpdate', 'lastUpdateDetails'],
	computed: {
		showNpc: function(){
			return this.mainArea == NPC;
		},
		showBusiness: function(){
			return this.mainArea == BUSINESS;
		},
		showNight: function(){
			return this.mainArea == NIGHT;
		},
		showConfig: function(){
			return this.mainArea == CONFIG;
		}
	},
	methods: {
		clearWarnings: function(){
			this.$emit('clear-warnings');
		},
		clickNpc: function(npc){
			this.$emit('click-npc', npc);
		}
	}
});

Vue.component('main-area-npc', {
	template: '#mainAreaNpcTemplate',
	props: ['npcList', 'professionList', 'npcProfessionList', 'professionList',
	'businessList', 'neighbourhoodList', 'familyList', 'familyFilter'],
	data: function(){
		return {
			'nameFilter': null,
			'minimunAgeFilter': null,
			'maximunAgeFilter': null,
			'neighbourhoodFilter': "",
			'orderById': null,
			'orderByName': null,
			'orderByGender': null,
			'orderByNeighbourhood': null,
			'orderByNationality': null,
			'orderByAge': null,
			'orderByHealth': null,
			'orderByRessonance': null
		}
	},
	computed: {
		npcFilteredOrderedList: function(){
			let list = this.npcList;
			if(!isNullOrUndefinedOrEmpty(this.minimunAgeFilter)){
				list = _.filter(list, (npc) => {return npc.age >= parseInt(this.minimunAgeFilter);});
			}
			if(!isNullOrUndefinedOrEmpty(this.maximunAgeFilter)){
				list = _.filter(list, (npc) => {return npc.age <= parseInt(this.maximunAgeFilter);});
			}
			if(!isNullOrUndefinedOrEmpty(this.neighbourhoodFilter)){
				list = _.filter(list, (npc) => {
					return npc.neighbourhoodid == this.neighbourhoodFilter;
				});
			}
			if(!isNullOrUndefinedOrEmpty(this.familyFilter)){
				list = _.filter(list, (npc) => {
					return npc.family_id == this.familyFilter;
				});
			}
			if(!isNullOrUndefinedOrEmpty(this.nameFilter)){
				list = _.filter(list, (npc) => {return _.any(
					this.nameFilter.split(" "), (term) => {
						return npc.name.toLowerCase().indexOf(term.toLowerCase()) > -1;
					});
				});
			}

			if(!_.isNull(this.orderById)){
				list = _.sortBy(list, (npc) => {return npc.id*(this.orderById ? 1 : -1);});
			}
			if(!_.isNull(this.orderByName)){
				list = _.sortBy(list, (npc) => {return npc.name});
				if(this.orderByName){
					list = list.reverse();
				}
			}
			if(!_.isNull(this.orderByGender)){
				list = _.sortBy(list, (npc) => {return npc.gender});
				if(this.orderByGender){
					list = list.reverse();
				}
			}
			if(!_.isNull(this.orderByAge)){
				list = _.sortBy(list, (npc) => {return npc.age*(this.orderByAge ? 1 : -1);});
			}
			if(!_.isNull(this.orderByNeighbourhood)){
				list = _.sortBy(list, (npc) => {return npc.neighbourhoodid*(this.orderByNeighbourhood ? 1 : -1);});
			}
			if(!_.isNull(this.orderByNationality)){
				list = _.sortBy(list, (npc) => {return npc.nationality});
				if(this.orderByNationality){
					list = list.reverse();
				}
			}
			if(!_.isNull(this.orderByRessonance)){
				list = _.sortBy(list, (npc) => {return npc.ressonance});
				if(this.orderByRessonance){
					list = list.reverse();
				}
			}
			return list;
		},
	},
	methods: {
		orderBy: function(term){
			let current = this["orderBy"+term];
			this.orderById = null;
			this.orderByName = null;
			this.orderByGender = null;
			this.orderByAge = null;
			this.orderByHealth = null;
			this.orderByRessonance = null;
			this.orderByNeighbourhood = null;
			this.orderByNationality = null;
			this["orderBy"+term] = !current;
		},
		clickNpc: function(npc){
			this.$emit('click-npc', npc);
		},
		cleanFilter: function(){
			this.nameFilter = null;
			this.familyFilter = null;
			this.minimunAgeFilter = null;
			this.maximunAgeFilter = null;
			this.neighbourhoodFilter = "";
			this.orderById = null;
			this.orderByName = null;
			this.orderByGender = null;
			this.orderByNeighbourhood = null;
			this.orderByNationality = null;
			this.orderByAge = null;
			this.orderByHealth = null;
			this.orderByRessonance = null;
		}
	}
});

Vue.component('main-area-business', {
	template: '#mainAreaBusinessTemplate',
	props: ['businessList', 'neighbourhoodList'],
	data: function(){
		return {
			'nameFilter': null,
			'neighbourhoodFilter': "",
			'orderById': true,
			'orderByName': null,
			'orderByNeighbourhood': null
		}
	},
	computed: {
		businessFilteredOrderedList: function(){
			let list = this.businessList;
			if(!isNullOrUndefinedOrEmpty(this.neighbourhoodFilter)){
				list = _.filter(list, (location) => {
					return location.neighbourhoodid == this.neighbourhoodFilter;
				});
			}
			if(!isNullOrUndefinedOrEmpty(this.nameFilter)){
				list = _.filter(list, (business) => {return _.any(
					this.nameFilter.split(" "), (term) => {
						return business.name.toLowerCase().indexOf(term.toLowerCase()) > -1;
					});
				});
			}

			if(!_.isNull(this.orderById)){
				list = _.sortBy(list, (business) => {return business.id*(this.orderById ? 1 : -1);});
			}
			if(!_.isNull(this.orderByName)){
				list = _.sortBy(list, (business) => {return business.name});
				if(this.orderByName){
					list = list.reverse();
				}
			}
			if(!_.isNull(this.orderByNeighbourhood)){
				list = _.sortBy(list, (business) => {return business.neighbourhoodid*(this.orderByNeighbourhood ? 1 : -1);});
			}
			return list;
		}
	},
	methods: {
		orderBy: function(term){
			let current = this["orderBy"+term];
			this.orderById = null;
			this.orderByName = null;
			this.orderByNeighbourhood = null;
			this["orderBy"+term] = !current;
		},
		cleanFilter: function(){
			this.nameFilter = null;
			this.neighbourhoodFilter = "";
			this.orderById = true;
			this.orderByName = null;
			this.orderByNeighbourhood = null;
		},
		n1List: function(business){
			return business.npcListN1;
		},
		n2List: function(business){
			return business.npcListN2;
		},
		n3List: function(business){
			return business.npcListN3;
		},
		clickNpc: function(npc){
			this.$emit("click-npc", npc);
		}
	}
});

const SKIN = {
	"Branco": "#dec6c6",
	"Marrom": "#58473c",
	"Mediterrâneo": "#a77e63",
	"Cinza": "#737070"
};

const EYES = {
	"Esquerdo Marrom, Direito Verde": "url(#eyeGradient)",
	"Vermelho": "#710000",
	"Cinza": "#737070",
	"Azul": "#5e8dec",
	"Verde": "#6ab567",
	"Castanho": "#523b3b"
};

const HAIR = {
	"Branco": "#9a9898",
	"Preto": "#171616",
	"Loiro": "#e5f19b",
	"Marrom": "#271d00",
	"Vermelho": "#652525",
	"Sem cabelo": "#737070"
}

Vue.component('portrait', {
	template: '#portraitTemplate',
	props: ['npc'],
	methods: {
		eyeColor: function(npc){
			return EYES[npc.eyes];
		},
		skinColor: function(npc){
			return SKIN[npc.skin];
		},
		hairColor: function(npc){
			return HAIR[npc.hair];
		},
	}
});

Vue.component('sorting-arrow', {
	props: ['condition'],
	template: '#sortingArrowTemplate'
});

Vue.component('main-area-config', {
	template: '#mainAreaConfigTemplate',
	props: ['warningList'],
	computed: {
		warningListSize: function(){
			return _.size(this.warningList);
		}
	},
	methods: {
		clickClearWarnings: function(){
			this.$emit('clear-warnings');
		}
	}
});

Vue.component('npc-details', {
	props: ['npc'],
	template: '#npcDetailsTemplate',
	methods: {
		clickFamily: function(familyId){
			this.$emit('click-family', familyId);
		}
	}
});

Vue.component('neighbourhood-icon', {
	props: ['neighbourhoodId', 'neighbourhoodList'],
	template: '#neighbourhoodIconTemplate'
});

Vue.component('npc-list', {
	props: ['npcList', 'neighbourhoodList'],
	template: '#npcListTemplate',
	methods: {
		clickNpc: function(npc){
			this.$emit("click-npc", npc);
		}
	}
});

Vue.component('npc-information', {
	props: ['npc'],
	template: '#npcInformationTemplate',
	methods: {
		clickFamily: function(familyId){
			this.$emit('click-family', familyId);
		}
	}
});

var app = new Vue({
	el: '#app',
	data: {
		lastUpdateDetails: new Date().toString(),
		lastUpdate: new Date().toString(),
		mainArea: BUSINESS,
		npcList: null,
		professionList: [],
		npcProfessionList: [],
		businessList: [],
		warningList: [],
		selectedNpc: null,
		neighbourhoodList: [],
		familyList: [],
		selectedFamily: null,
	},
	methods: {
		showMainArea: function(mainArea){
			if(mainArea == NIGHT){
				generateNight(this.npcList, this.businessList, this.npcPreferencesList,
					this.npcProfessionList, this.businessRulesList);
				this.lastUpdate = new Date().toString();
				this.lastUpdateDetails = new Date().toString();
			} else{
				this.mainArea = mainArea;
			}
		},
		clearWarnings: function(){
			this.warningList = [];
		},
		selectNpc: function(npc){
			this.selectedNpc = npc;
			this.lastUpdateDetails = new Date().toString();
		},
		selectFamily: function(familyId){
			this.selectedFamily = familyId;	
			this.mainArea = NPC;
		}
	},
	mounted: function() {
		let self = this;

		const errorHandler = function(exception){
			self.warningList.push({
				error: exception,
				response: exception.response
			});
		}

		self.axios.get('/business').then(locationResponse => {
			self.locationList = locationResponse.data;
			self.axios.get('/profession').catch(errorHandler).then(professionsResponse => {
				self.professionList = professionsResponse.data;
				self.axios.get('/npcProfession').catch(errorHandler).then(npcProfessionResponse => {
					self.npcProfessionList = npcProfessionResponse.data;
					self.axios.get('/npc').catch(errorHandler).then(function(npcResponse){
						self.axios.get('/neighbourhood').catch(errorHandler).then(function(neighbourhoodResponse){
							self.neighbourhoodList = neighbourhoodResponse.data;
							self.axios.get('/family').catch(errorHandler).then(function(familyResponse){
								self.familyList = familyResponse.data;
								self.axios.get('/business').catch(errorHandler).then(function(businessResponse){
									self.businessList = businessResponse.data;
									self.npcList = _.map(npcResponse.data, (npc) => {
										return {
											...npc,
											professions:_.map(
												_.filter(self.npcProfessionList, (npcProfession) => {return npcProfession.npc == npc.id}),
												(profession) => ({
													profession: _.find(self.professionList, (p) => {return p.id == profession.profession}),
													business: _.find(self.businessList, (b) => {return b.id == profession.business})
												})
											)
										}
									});		
									self.axios.get('/npcPreferences').catch(errorHandler).then(function(npcPreferencesResponse){
										self.npcPreferencesList = npcPreferencesResponse.data;
										self.axios.get('/businessRules').catch(errorHandler).then(function(businessRulesResponse){
											self.businessRulesList = businessRulesResponse.data;
											generateNight(self.npcList, self.businessList, self.npcPreferencesList,
												self.npcProfessionList, self.businessRulesList);
											self.lastUpdate = new Date().toString();
										});
									});
								});
							});
						});
					});
				});
			});
		}).catch(errorHandler);
	}
});

const generateFinalLocation = function(npc, period, 
	isSick, npcProfessionList, npcPreferencesList, businessList, businessRulesList){
	let professions = _.filter(npcProfessionList, (prof) => {
		let business = _.find(businessList, (b) => {return b.id == prof.business});
		return prof.npc == npc.id && (business == null || business["n"+period]);
	});
	if(npc.idade <= 6){
		return {
			business: {
				name: "Com os pais",
				neighbourhood: npc.bairro
			},
			working: false,
			sleeping: false,
			sick: isSick
		}
	}
	if(!_.isEmpty(professions)){
		let workingSeed = Math.random();
		let isWorking = workingSeed < 0.95;
		if(isWorking){
			let jobSeed = Math.random();
			let job;
			if(_.size(professions) > 1){
				if(jobSeed < 0.5){
					job = professions[0];
				} else{
					job = professions[1];
				}
			} else{
				job = professions[0];
			}
			if( 1==1
				&& job.profession != 2 // Aposentado
				&& job.profession != 9 // Detetive
				&& job.profession != 17 // Faxineiro de rua
				&& job.profession != 28 // Guarda do Tráfico
				&& job.profession != 33 // Morador de Rua
				&& job.profession != 24 // Piloto de Táxi
				&& job.profession != 37 // Policial
				&& job.profession != 42 // Transporte de Drogas
				&& job.profession != 43 // Turista
				&& job.profession != 46 // Vendedor de Drogas
				){ 
				let finalBusiness = _.find(businessList, (b) => {return b.id == job.business;});
				if(finalBusiness != null){
					finalBusiness["npcListN"+period].push({...npc, working: true});
				}
				return {
					business: finalBusiness,
					working: true,
					sleeping: false,
					sick: isSick
				}
			}
		}
	}
	if(period == 3){
		let sleepingSeed = Math.random();
		let isSleeping = sleepingSeed < 0.95;
		if(isSleeping){
			return {
				business: {
					name: npc.home,
					neighbourhood: npc.neighbourhood
				},
				working: false,
				sleeping: true,
				sick: isSick
			}
		}
	}

	let businessSeed = Math.random();
	let sum = 0;
	let npcPrefs = _.filter(
		npcPreferencesList, 
		(pref) => {return pref.npc == npc.id}
	);
	let npcPrefsWithCorrections = _.map(
		npcPrefs, 
		(pref) => {
			let business = _.find(businessList, (b) => {return b.id == pref.business});
			let businessPrefModifier = _.reduce(
				_.filter(
					businessRulesList, 
					(businessPref) => {
						return 1==1
							&& businessPref.business == pref.business
							&& ( _.isUndefined(businessPref.withprofession) || _.isNull(businessPref.withprofession) || false /* TODO */)
							&& ( _.isUndefined(businessPref.withoutprofession) || _.isNull(businessPref.withoutprofession) || false /* TODO */)
							&& ( _.isUndefined(businessPref.agegreaterthan) || _.isNull(businessPref.agegreaterthan) || npc.idade >= businessPref.agegreaterthan)
							&& ( _.isUndefined(businessPref.agelessthan) || _.isNull(businessPref.agelessthan) || npc.idade <= businessPref.agelessthan)
							&& ( _.isUndefined(businessPref.wealthgreaterthan) || _.isNull(businessPref.wealthgreaterthan) || false /* TODO */)
							&& ( _.isUndefined(businessPref.wealthlessthan) || _.isNull(businessPref.wealthlessthan) || false /* TODO */)
							&& ( _.isUndefined(businessPref.withgender) || _.isNull(businessPref.withgender) || npc.sexo == businessPref.withgender)
							&& ( _.isUndefined(businessPref.withoutgender) || _.isNull(businessPref.withoutgender) || npc.sexo != businessPref.withoutgender)
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
				seed: Math.pow(pref.seed, 4) * businessPrefModifier * (business["n"+period] ? 1 : 0.05)
			}
		}
	);
	let totalChance = _.reduce(npcPrefsWithCorrections, (memo, pref) => {return memo+pref.seed}, 0);
	let businessId = _.find(npcPrefsWithCorrections, (pref) => {
		let seed = pref.seed;
		sum += seed;
		return seed > 0 ? businessSeed < sum/totalChance : false;
	}).business;
	let finalBusiness = _.find(businessList, (b) => {return b.id == businessId});
	finalBusiness["npcListN"+period].push({...npc, working: false});
	return {
		business: finalBusiness,
		working: false,
		sleeping: false,
		sick: isSick
	}
};

const generateNight = function(npcList, businessList, npcPreferencesList,
		npcProfessionList, businessRulesList){
	/*
	if(!confirm("Tem certeza que deseja sobreescrever a noite atual?")){
		return;
	}
	*/
	const hospital = _.find(businessList, (b) => {
		return b.business_type == 'Hospital';
	});
	_.each(businessList, (business) => {
		business.npcListN1 = [];
		business.npcListN2 = [];
		business.npcListN3 = [];
	});
	_.each(npcList, (npc) => {
		//updateRessonance(npc);
		let sickSeed = Math.random();
		let isSick = sickSeed < 0.05;
		if(isSick){
			let doctorCheck = Math.random();
			let goesToDockor = doctorCheck < 0.5*_.find(npcPreferencesList, (pref) => {
			return pref.npc == npc.id && pref.business == hospital.id}).seed;
			if(goesToDockor){
				npc.l1 = {
					business: hospital,
					working: false,
					sleeping: false,
					sick: true,
				};
				npc.l2 = {
					business: hospital,
					working: false,
					sleeping: false,
					sick: true,
				};
				npc.l3 = {
					business: hospital,
					working: false,
					sleeping: false,
					sick: true,
				};
				return;
			}
		}
		let l1 = generateFinalLocation(npc, 1, isSick, 
			npcProfessionList, npcPreferencesList, businessList, businessRulesList);
		let l2 = generateFinalLocation(npc, 2, isSick, 
			npcProfessionList, npcPreferencesList, businessList, businessRulesList);
		let l3 = generateFinalLocation(npc, 3, isSick, 
			npcProfessionList, npcPreferencesList, businessList, businessRulesList);
		npc.l1 = l1;
		npc.l2 = l2;
		npc.l3 = l3;
	});
	//saveRessonance();
}