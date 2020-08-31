const NPC = 'npc';
const BUSINESS = 'business';
const NIGHT = 'night';
const CONFIG = 'config';

const TASK_TYPES = {
	SAVE_HEALTH: "saveHealth",
	SAVE_NOTES: "saveNotes",
	SAVE_ALIVE: "saveAlive"
}

const Task = function(type, data){
	this.type = type;
	this.data = data;
}

const isNullOrUndefinedOrEmpty = function(o){
	return _.isNull(o) || _.isUndefined(o) || o === "";
}

Vue.prototype.axios = axios;

Vue.component('left-bar-menu', {
	template: '#leftBarMenuTemplate',
	props: ['warningList', 'loaded', 'saving'],
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

Vue.component('tristate', {
	template: '#tristateTemplate',
	props: ['value'],
	methods: {
		click: function(){
			this.$emit('tristate-change');
		}
	}
});

Vue.component('bistate', {
	template: '#bistateTemplate',
	props: ['value'],
	methods: {
		click: function(){
			this.$emit('bistate-change');
		}
	}
});

Vue.component('clan-icon', {
	template: '#clanIconTemplate',
	props: ['clan']
});

Vue.component('main-area', {
	template: '#mainAreaTemplate',
	props: ['mainArea', 'npcNameFilter', 'npcHomeFilter', 
			'npcMinimunAgeFilter', 'npcMaximunAgeFilter',
			'npcNeighbourhoodFilter', 'npcVampireFilter',
			'npcAliveFilter', 'logList',
			'warningList', 'npcProfessionList', 'professionList',
			'npc-list', 'neighbourhoodList', 'familyList', 'homeList',
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
		clearLogs: function(){
			this.$emit('clear-logs');
		},
		clickNpc: function(npc){
			this.$emit('click-npc', npc);
		},
		clickBusiness: function(business){
			this.$emit('click-business', business);
		},
		clearFilter: function(){
			this.$emit('clear-filter');	
		},
		selectFamily: function(familyId){
			this.$emit('select-family', familyId);
		},
		vampireFilterChange: function(){
			this.$emit('vampire-filter-change');
		},
		aliveFilterChange: function(){
			this.$emit('alive-filter-change');
		},
		nameFilterChange: function(event){
			this.$emit('name-filter-change', event);
		},
		minimunAgeFilterChange: function(event){
			this.$emit('minimun-age-filter-change', event);	
		},
		maximunAgeFilterChange: function(event){
			this.$emit('maximun-age-filter-change', event);	
		},
		neighbourhoodFilterChange: function(event){
			this.$emit('neighbourhood-filter-change', event);	
		},
		homeFilterChange: function(event){
			this.$emit('home-filter-change', event);
		}
	}
});

Vue.component('main-area-npc', {
	template: '#mainAreaNpcTemplate',
	props: ['npcList', 'nameFilter', 'homeFilter', 'minimunAgeFilter', 
	'maximunAgeFilter', 'neighbourhoodFilter', 'vampireFilter',
	'aliveFilter',
	'professionList', 'npcProfessionList', 'professionList',
	'businessList', 'neighbourhoodList', 'familyList', 'familyFilter', 'homeList'],
	data: function(){
		return {
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
			if(!isNullOrUndefinedOrEmpty(this.homeFilter)){
				list = _.filter(list, (npc) => {
					return npc.home_id == this.homeFilter;
				});
			}
			if(!isNullOrUndefinedOrEmpty(this.vampireFilter)){
				list = _.filter(list, (npc) => {
					return (npc.clan != undefined) == this.vampireFilter;
				});
			}
			if(!isNullOrUndefinedOrEmpty(this.aliveFilter)){
				list = _.filter(list, (npc) => {
					return npc.alive == this.aliveFilter;
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
			this.orderById = null;
			this.orderByName = null;
			this.orderByGender = null;
			this.orderByNeighbourhood = null;
			this.orderByNationality = null;
			this.orderByAge = null;
			this.orderByHealth = null;
			this.orderByRessonance = null;
			this.$emit('clear-filter');
		},
		selectFamily: function(event){
			this.$emit('select-family', parseInt(event.target.value));
		},
		vampireFilterChange: function(){
			this.$emit('vampire-filter-change');
		},
		aliveFilterChange: function(){
			this.$emit('alive-filter-change');
		},
		nameFilterChange: function(event){
			this.$emit('name-filter-change', event);
		},
		minimunAgeFilterChange: function(event){
			this.$emit('minimun-age-filter-change', event);	
		},
		maximunAgeFilterChange: function(event){
			this.$emit('maximun-age-filter-change', event);	
		},
		neighbourhoodFilterChange: function(event){
			this.$emit('neighbourhood-filter-change', event);	
		},
		homeFilterChange: function(event){
			this.$emit('home-filter-change', event);
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
		},
		clickBusiness: function(business){
			this.$emit("click-business", business);
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
	"Castanho": "#523b3b",
	"Preto": "#171616"
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
	props: ['warningList', 'logList'],
	computed: {
		warningListSize: function(){
			return _.size(this.warningList);
		},
		logListSize: function(){
			return _.size(this.logList);
		}
	},
	methods: {
		clickClearWarnings: function(){
			this.$emit('clear-warnings');
		},
		clickClearLogs: function(){
			this.$emit('clear-logs');
		}
	}
});

Vue.component('side-details', {
	props: ['npc', 'business', 'loaded', 'npcList', 'npcProfessionList'],
	template: '#sideDetailsTemplate',
	methods: {
		clickFamily: function(familyId){
			this.$emit('click-family', familyId);
		},
		saveSelectedNpcNotes: function(){
			this.$emit('save-selected-npc-notes');
		},
		saveSelectedNpcHealthChange: function(event){
			this.$emit('save-selected-npc-health-change', event);
		},
		selectedNpcAliveChange: function(){
			this.$emit('selected-npc-alive-change');
		}
	}
});

Vue.component('open-closed-icon', {
	props: ['value'],
	template: '#openClosedIconTemplate',
});	

Vue.component('npc-details', {
	props: ['npc', 'loaded'],
	template: '#npcDetailsTemplate',
	methods: {
		clickFamily: function(familyId){
			this.$emit('click-family', familyId);
		},
		saveSelectedNpcNotes: function(){
			this.$emit('save-selected-npc-notes');
		},
		saveSelectedNpcHealthChange: function(event){
			this.$emit('save-selected-npc-health-change', event);
		},
		selectedNpcAliveChange: function(event){
			this.$emit('selected-npc-alive-change', event);	
		}
	}
});

Vue.component('business-details', {
	props: ['business', 'loaded', 'npcList', 'npcProfessionList'],
	template: '#businessDetailsTemplate'
});

Vue.component('business-information', {
	props: ['business', 'loaded', 'npcList', 'npcProfessionList'],
	template: '#businessInformationTemplate',
	computed: {
		workerList: function(){
			return 
				_.filter(this.npcList, 
					(npc) => {
						return _.any(
							_.filter(this.npcProfessionList,
									(npcProfession) => {
										return npcProfession.business == this.business.id;
									}),
							(npcProfession) => {
								return npcProfession.npc == npc.id;
							}
						)
					}
				);
		}
	}
});

Vue.component('npc-location-summary', {
	props: ['attendance'],
	template: '#npcLocationSummary'
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
	props: ['npc', 'loaded'],
	template: '#npcInformationTemplate',
	methods: {
		clickFamily: function(familyId){
			this.$emit('click-family', familyId);
		},
		saveSelectedNpcNotes: function(){
			this.$emit('save-selected-npc-notes');
		},
		selectedNpcAliveChange: function(){
			this.$emit('selected-npc-alive-change');
		},
		saveHealthBar: function(health){
			this.$emit('save-selected-npc-health-change', {
				npc: this.npc,
				health: health
			});
		}
	}
});

Vue.component('health-bar', {
	props: ['health'],
	template: '#healthBar',
	methods: {
		clickHealth: function(h){
			this.$emit('click-health', {
				index: h.index,
				value: h.value
			});
		}
	},
	computed: {
		healthStatusList: function(){
			return _.sortBy(this.health, (h) => h.index);
		}
	}
});

const DAMAGE_CLEAN = "clean";
const DAMAGE_SUPERFICIAL = "superficial";
const DAMAGE_AGGRAVATED = "aggravated";

const Log = function(message){
	this.message = message;
	this.time = new Date();
}

var app = new Vue({
	el: '#app',
	data: {
		lastUpdateDetails: new Date().toString(),
		lastUpdate: new Date().toString(),
		mainArea: NPC,
		npcList: null,
		professionList: [],
		npcProfessionList: [],
		businessList: [],
		warningList: [],
		logList: [],
		loaded:false,
		saving:false,
		selectedNpc: null,
		selectedBusiness: null,
		neighbourhoodList: [],
		familyList: [],
		homeList: [],
		selectedFamily: "",
		npcNameFilter: null,
		npcHomeFilter: "",
		npcMinimunAgeFilter: null,
		npcMaximunAgeFilter: null,
		npcNeighbourhoodFilter: "",
		npcVampireFilter: null,
		npcAliveFilter: null,
		taskQueue: []
	},
	methods: {
		thenAction: function(response){
			this.runTask();			
		},
		errorAction: function(exception){
			this.warningList.push({
				error: exception,
				response: exception.response
			});
			this.runTask();		
		},
		runTask: function(){
			let self = this;
			if(_.isEmpty(self.taskQueue)){
				self.saving = false;
				return;
			}
			let task = self.taskQueue.shift();
			let type = task.type;
			let data = task.data;

			if(type == TASK_TYPES.SAVE_NOTES){
				self.axios.post('/notes', data)
					.then(self.thenAction)
					.catch(self.errorAction);
			} else if(type == TASK_TYPES.SAVE_HEALTH){
				self.axios.post('/health', data)
					.then(self.thenAction)
					.catch(self.errorAction);
			} else if(type == TASK_TYPES.SAVE_ALIVE){
				self.axios.post('/alive', data)
					.then(self.thenAction)
					.catch(self.errorAction);
			}
		},
		addTask: function(task){
			this.taskQueue.push(task);
			if(this.saving == false){
				this.saving = true;
				this.runTask();
			}
		},
		log: function(text){
			this.logList.push(new Log(text));
		},
		showMainArea: function(mainArea){
			if(mainArea == NIGHT){
				if(!this.loaded){
					return;
				}
				generateNight(this.npcList, this.businessList, this.npcPreferencesList,
					this.npcProfessionList, this.businessRulesList, this.homeList);
				if(this.selectedNpc != null && this.selectedNpc != undefined){
					this.selectedNpc = _.find(this.npcList, (n) => {return n.id == this.selectedNpc.id;});
				}
				this.lastUpdate = new Date().toString();
				this.lastUpdateDetails = new Date().toString();
			} else{
				this.mainArea = mainArea;
			}
		},
		vampireFilterChange: function(){
			if(this.npcVampireFilter == null){
				this.npcVampireFilter = true;
			} else if(this.npcVampireFilter == true){
				this.npcVampireFilter = false;
			} else if(this.npcVampireFilter == false){
				this.npcVampireFilter = null;
			}
		},
		aliveFilterChange: function(){
			if(this.npcAliveFilter == null){
				this.npcAliveFilter = true;
			} else if(this.npcAliveFilter == true){
				this.npcAliveFilter = false;
			} else if(this.npcAliveFilter == false){
				this.npcAliveFilter = null;
			}
		},
		minimunAgeFilterChange: function(event){
			this.npcMinimunAgeFilter = event.target.value;
		},
		maximunAgeFilterChange: function(event){
			this.npcMaximunAgeFilter = event.target.value;
		},
		nameFilterChange: function(event){
			this.npcNameFilter = event.target.value;
		},
		neighbourhoodFilterChange: function(event){
			this.npcNeighbourhoodFilter = event.target.value;
		},
		homeFilterChange: function(event){
			this.npcHomeFilter = event.target.value;
		},
		clearWarnings: function(){
			this.warningList = [];
		},
		clearLogs: function(){
			this.logList = [];
		},
		selectNpc: function(npc){
			this.selectedBusiness = null;
			this.selectedNpc = _.find(this.npcList, (n) => {return n.id == npc.id;});
			this.lastUpdateDetails = new Date().toString();
		},
		selectBusiness: function(business){
			this.selectedNpc = null;
			this.selectedBusiness = _.find(this.businessList, (b) => {return b.id == business.id;});
			this.lastUpdateDetails = new Date().toString();
		},
		selectFamily: function(familyId){
			this.selectedFamily = familyId;	
			this.npcNameFilter = null;
			this.npcHomeFilter = "";
			this.npcMinimunAgeFilter = null;
			this.npcMaximunAgeFilter = null;
			this.npcNeighbourhoodFilter = "";
			this.mainArea = NPC;
		},
		saveSelectedNpcNotes: (function(){
			return _.debounce(function(){
				let self = this;
				let cleanNpcJson = {
					...self.selectedNpc
				};
				delete cleanNpcJson.l1;
				delete cleanNpcJson.l2;
				delete cleanNpcJson.l3;
				delete cleanNpcJson.professions;
				this.log("Saving npc "+cleanNpcJson.id+" notes");
				this.addTask(new Task(
					TASK_TYPES.SAVE_NOTES,
					{
						id: cleanNpcJson.id,
						notes: cleanNpcJson.notes
					}
				));
			}, 1500);
		})(),
		selectedNpcAliveChange: function(){
			let self = this;
			let npcId = self.selectedNpc.id;
			self.selectedNpc.alive = !self.selectedNpc.alive;
			let value = self.selectedNpc.alive;
			this.log("Saving npc "+npcId+" alive "+value);
			this.addTask(new Task(
				TASK_TYPES.SAVE_ALIVE,
				{
					id: npcId,
					alive: value
				}
			));
		},
		saveSelectedNpcHealthChange: function(event){
			let self = this;
			let i = event.health.index;
			let h = self.selectedNpc.healthBar[i];
			if(h.value == DAMAGE_CLEAN){
				h.value = DAMAGE_SUPERFICIAL;
			} else if(h.value == DAMAGE_AGGRAVATED){
				h.value = DAMAGE_CLEAN;
			} else if(h.value == DAMAGE_SUPERFICIAL){
				h.value = DAMAGE_AGGRAVATED;
			}
			let npcId = self.selectedNpc.id;
			this.log("Saving npc "+npcId+" health "+i+" value "+h.value);
			this.addTask(new Task(
				TASK_TYPES.SAVE_HEALTH,
				{
					npc: npcId,
					index: i,
					value: h.value
				}
			));
		},
		clearFilter: function(){
			this.selectedFamily = null;
			this.npcNameFilter = null;
			this.npcHomeFilter = "";
			this.npcMinimunAgeFilter = null;
			this.npcMaximunAgeFilter = null;
			this.npcNeighbourhoodFilter = "";
			this.npcAliveFilter = null;
			this.npcVampireFilter = null;
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
								self.axios.get('/health').catch(errorHandler).then(function(healthResponse){
									self.npcList = _.map(npcResponse.data, (npc) => {
										let healthBarData = _.filter(healthResponse.data, (h) => h.npc == npc.id);
										let healthBar = [];
										for(var i = 0 ; i < npc.max_health ; i++){
											let healthStatus = _.find(healthBarData, (h) => h.index == i);
											let value = isNullOrUndefinedOrEmpty(healthStatus) ? DAMAGE_CLEAN : healthStatus.value;
											healthBar.push({index: i, value: value});
										}
										return {
											...npc,
											healthBar: healthBar,
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
											self.axios.get('/home').catch(errorHandler).then(function(homeResponse){
												self.homeList = _.sortBy(homeResponse.data, (h) => h.name);
												self.loaded = true;
												self.runTask();
											});
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
	if(npc.age <= 6){
		return {
			business: {
				name: "Com os pais",
				neighbourhood: npc.neighbourhood
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
				&& job.profession != 49 // Criminoso
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

const generateNight = function(npcList, businessList, npcPreferencesList, npcProfessionList, businessRulesList, homeList){
	if(!confirm("Tem certeza que deseja sobreescrever a noite atual?")){
		return;
	}
	const cemetery = _.find(homeList, (h) => {
		return h.name == 'Cemitério';
	});
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
		let isAlive = npc.alive;
		if(!isAlive){
			npc.l1 = {
				business: cemetery,
				working: false,
				sleeping: false,
				sick: false,
			};
			npc.l2 = {
				business: cemetery,
				working: false,
				sleeping: false,
				sick: false,
			};
			npc.l3 = {
				business: cemetery,
				working: false,
				sleeping: false,
				sick: false,
			};
			return;
		}
		if(isSick){
			let doctorCheck = Math.random();
			let goesToDockor = doctorCheck < 0.5*_.find(npcPreferencesList, (pref) => {
				return pref.npc == npc.id && pref.business == hospital.id}
			).seed;
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