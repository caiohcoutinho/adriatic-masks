const NPC = 'npc';
const BUSINESS = 'business';
const NIGHT = 'night';
const CONFIG = 'config';

const TASK_TYPES = {
	SAVE_HEALTH: "saveHealth",
	SAVE_NOTES: "saveNotes",
	SAVE_ALIVE: "saveAlive",
	SAVE_SICK: "saveSick",
	SAVE_HOSPITALIZED: "saveHospitalized",
	SAVE_RESSONANCE: "saveRessonance",
	LOAD_RESSONANCE: "loadRessonance",
	LOAD_PROFESSION: "loadProfession",
	LOAD_NPC_PROFESSION: "loadNpcProfession",
	LOAD_NPC: "loadNpc",
	LOAD_NEIGHBOURHOOD: "loadNeighbourhood",
	LOAD_FAMILY: "loadFamily",
	LOAD_BUSINESS: "loadBusiness",
	LOAD_HEALTH: "loadHealth",
	LOAD_NPC_PREFERENCES: "loadNpcPreferences",
	LOAD_BUSINESS_RULES: "loadBusinessRules",
	LOAD_HOME: "loadHome",
	GENERATE_NIGHT: "generateNight"
}

const createPostUrlAction = (url) => {
	return function(self, data){
		self.axios.post(url, data).then(self.thenAction).catch(self.errorAction);
	}
}

const createLoadListUrlAction = (url, fieldName, sortingFunction) => {
	return function(self, data){
		self.axios.get(url).catch(self.errorAction).then(function(response){
			if(sortingFunction != undefined){
				self[fieldName] = _.sortBy(response.data, sortingFunction)
			} else{
				self[fieldName] = _.sortBy(response.data, (r) => r.id);
			}
			self.thenAction(response);
		});
	}
}

const TASK_EXECUTIONS = {};
TASK_EXECUTIONS[TASK_TYPES.SAVE_HEALTH] = createPostUrlAction("/health");
TASK_EXECUTIONS[TASK_TYPES.SAVE_NOTES] = createPostUrlAction("/notes");
TASK_EXECUTIONS[TASK_TYPES.SAVE_ALIVE] = createPostUrlAction("/alive");
TASK_EXECUTIONS[TASK_TYPES.SAVE_SICK] = createPostUrlAction("/sick");
TASK_EXECUTIONS[TASK_TYPES.SAVE_HOSPITALIZED] = createPostUrlAction("/hospitalized");
TASK_EXECUTIONS[TASK_TYPES.SAVE_RESSONANCE] = createPostUrlAction("/ressonance");

TASK_EXECUTIONS[TASK_TYPES.LOAD_RESSONANCE] = createLoadListUrlAction("/ressonance", "ressonanceList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_PROFESSION] = createLoadListUrlAction("/profession", "professionList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_NPC_PROFESSION] = createLoadListUrlAction("/npcProfession", "npcProfessionList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_NPC] = createLoadListUrlAction("/npc", "npcList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_NEIGHBOURHOOD] = createLoadListUrlAction("/neighbourhood", "neighbourhoodList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_FAMILY] = createLoadListUrlAction("/family", "familyList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_BUSINESS] = createLoadListUrlAction("/business", "businessList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_HEALTH] = createLoadListUrlAction("/health", "healthList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_NPC_PREFERENCES] = createLoadListUrlAction("/npcPreferences", "npcPreferencesList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_BUSINESS_RULES] = createLoadListUrlAction("/businessRules", "businessRulesList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_HOME] = createLoadListUrlAction("/home", "homeList", (h) => h.name);
TASK_EXECUTIONS[TASK_TYPES.GENERATE_NIGHT] = function(self, data){
	if(!window.Worker){
		alert("no support for web workers.");
		self.thenAction();
	}
	let tic = new Date().getTime();
	var worker = new Worker('../js/generateNight.js');
	worker.onmessage = function(event){
		let tac = new Date().getTime();
		self.night = event.data;
		self.lastUpdate = new Date().toString();
		self.lastUpdateDetails = new Date().toString();
		self.log("generateNight took "+((tac-tic)/1000)+"s.");
		self.log("state = "+JSON.stringify(self.night.stats));
		self.thenAction();
	}
	worker.postMessage([self.npcList, self.businessList, self.npcPreferencesList,
					self.npcProfessionList, self.businessRulesList, self.homeList]);
};

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
	props: ['warningList', 'working'],
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

Vue.component('sickIcon', {
	template: '#sickIconTemplate',
	props: ['sick']
});

Vue.component('ressonance', {
	template: '#ressonanceTemplate',
	props: ['value', 'ressonanceList'],
	computed: {
		ressonanceName: function(){
			let r = _.findWhere(this.ressonanceList, {id: this.value});
			if(isNullOrUndefinedOrEmpty(r)){
				return "";
			}
			return r.name;
		}
	}
})

Vue.component('clan-icon', {
	template: '#clanIconTemplate',
	props: ['clan']
});

Vue.component('main-area', {
	template: '#mainAreaTemplate',
	props: ['mainArea', 'npcNameFilter', 'npcHomeFilter', 
			'npcMinimunAgeFilter', 'npcMaximunAgeFilter',
			'npcNeighbourhoodFilter', 'npcVampireFilter',
			'npcAliveFilter', 'npcSickFilter', 'logList',
			'warningList', 'npcProfessionList', 'professionList',
			'npc-list', 'neighbourhoodList', 'familyList', 'homeList',
			'ressonanceList',
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
		sickFilterChange: function(){
			this.$emit('sick-filter-change');
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
	'aliveFilter', 'sickFilter', 'ressonanceList',
	'professionList', 'npcProfessionList', 
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
		professionById: function(){
			let cache = [];
			_.each(this.professionList, (p) => {
				cache[p.id] = p.name;
			});
			return cache;
		},
		businessById: function(){
			let cache = [];
			_.each(this.businessList, (b) => {
				cache[b.id] = b.name;
			});
			return cache;
		},
		npcProfessionByNpc: function(){
			return _.groupBy(this.npcProfessionList, (i) => i.npc);
		},
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
			if(!isNullOrUndefinedOrEmpty(this.sickFilter)){
				list = _.filter(list, (npc) => {
					return npc.sick == this.sickFilter;
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
		sickFilterChange: function(){
			this.$emit('sick-filter-change');
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
	props: ['businessList', 'neighbourhoodList', 'ressonanceList'],
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
	props: ['night', 'npc', 'business', 'working', 'homeList',
		'npcList', 'npcProfessionList', 'businessList', 
		'professionList', 'ressonanceList'],
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
		},
		selectedNpcHospitalizedChange: function(){
			this.$emit('selected-npc-hospitalized-change');
		},
		selectedNpcRessonanceChange: function(){
			this.$emit('selected-npc-ressonance-change');
		},
		selectedNpcSickChange: function(){
			this.$emit('selected-npc-sick-change');
		}
	}
});

Vue.component('open-closed-icon', {
	props: ['value'],
	template: '#openClosedIconTemplate',
});	

Vue.component('npc-details', {
	props: ['night','npc', 'working', 'ressonanceList', 'homeList',
		'businessList', 'professionList', 'npcProfessionList'],
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
		},
		selectedNpcHospitalizedChange: function(){
			this.$emit('selected-npc-hospitalized-change');
		},
		selectedNpcRessonanceChange: function(){
			this.$emit('selected-npc-ressonance-change', event);
		},
		selectedNpcSickChange: function(event){
			this.$emit('selected-npc-sick-change', event);	
		}
	}
});

Vue.component('business-details', {
	props: ['business', 'working', 'npcList', 'npcProfessionList'],
	template: '#businessDetailsTemplate'
});

Vue.component('business-information', {
	props: ['business', 'working', 'npcList', 'npcProfessionList'],
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
	props: ['attendance', 'businessList', 'homeList'],
	template: '#npcLocationSummary',
	computed: {
		businessNameById: function(){
			let cache = [];
			_.each(this.businessList, (b) => {
				cache[b.id] = b.name;
			});
			return cache;
		},
		businessTypeNameById: function(){
			let cache = [];
			_.each(this.businessList, (b) => {
				cache[b.id] = b.business_type;
			});
			return cache;
		},
		homeNameById: function(){
			let cache = [];
			_.each(this.homeList, (h) => {
				cache[h.id] = h.name;
			});
			return cache;
		}
	}
});

Vue.component('neighbourhood-icon', {
	props: ['neighbourhoodId', 'neighbourhoodList'],
	template: '#neighbourhoodIconTemplate'
});

Vue.component('npc-list', {
	props: ['npcList', 'neighbourhoodList', 'ressonanceList'],
	template: '#npcListTemplate',
	methods: {
		clickNpc: function(npc){
			this.$emit("click-npc", npc);
		}
	}
});

Vue.component('npc-information', {
	props: ['night', 'npc', 'working', 'ressonanceList', 
		'professionList', 'npcProfessionList', 'homeList', 'businessList',],
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
		selectedNpcSickChange: function(){
			this.$emit('selected-npc-sick-change');
		},
		selectedNpcHospitalizedChange: function(){
			this.$emit('selected-npc-hospitalized-change');
		},
		selectedNpcRessonanceChange: function(){
			this.$emit('selected-npc-ressonance-change');
		},
		saveHealthBar: function(health){
			this.$emit('save-selected-npc-health-change', {
				npc: this.npc,
				health: health
			});
		}
	},
	computed: {
		professionById: function(){
			let cache = [];
			_.each(this.professionList, (p) => {
				cache[p.id] = p.name;
			});
			return cache;
		},
		businessById: function(){
			let cache = [];
			_.each(this.businessList, (b) => {
				cache[b.id] = b.name;
			});
			return cache;
		},
		npcProfessionByNpc: function(){
			return _.groupBy(this.npcProfessionList, (i) => i.npc);
		},
		homeNameById: function(){
			let cache = [];
			_.each(this.homeList, (h) => {
				cache[h.id] = h.name;
			});
			return cache;
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
		working:false,
		selectedNpc: null,
		selectedBusiness: null,
		neighbourhoodList: [],
		familyList: [],
		ressonanceList: [],
		homeList: [],
		selectedFamily: "",
		npcNameFilter: null,
		npcHomeFilter: "",
		npcMinimunAgeFilter: null,
		npcMaximunAgeFilter: null,
		npcNeighbourhoodFilter: "",
		npcVampireFilter: null,
		npcAliveFilter: null,
		npcSickFilter: null,
		taskQueue: [],
		night: {}
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
				self.working = false;
				return;
			}
			let task = self.taskQueue.shift();
			let type = task.type;
			let data = task.data;
			TASK_EXECUTIONS[type](self, data);
		},
		addTask: function(task){
			this.taskQueue.push(task);
			if(this.working == false){
				this.working = true;
				this.runTask();
			}
		},
		log: function(text){
			this.logList.push(new Log(text));
		},
		showMainArea: function(mainArea){
			if(mainArea == NIGHT){
				if(this.working == true){
					return;
				}
				if(!confirm("Tem certeza que deseja sobreescrever a noite atual?")){
					return;
				}
				this.addTask(new Task(TASK_TYPES.GENERATE_NIGHT, {}));
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
		sickFilterChange: function(){
			if(this.npcSickFilter == null){
				this.npcSickFilter = true;
			} else if(this.npcSickFilter == true){
				this.npcSickFilter = false;
			} else if(this.npcSickFilter == false){
				this.npcSickFilter = null;
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
				let npcId = self.selectedNpc.id;
				let value = self.selectedNpc.notes;
				this.log("Saving npc "+npcId+" notes");
				this.addTask(new Task(
					TASK_TYPES.SAVE_NOTES,
					{
						id: npcId,
						notes: value
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
		selectedNpcHospitalizedChange: function(){
			let self = this;
			let npcId = self.selectedNpc.id;
			self.selectedNpc.hospitalized = !self.selectedNpc.hospitalized;
			let value = self.selectedNpc.hospitalized;
			this.log("Saving npc "+npcId+" hospitalized "+value);
			this.addTask(new Task(
				TASK_TYPES.SAVE_HOSPITALIZED,
				{
					id: npcId,
					hospitalized: value
				}
			));
		},
		selectedNpcRessonanceChange: function(){
			let self = this;
			let npcId = self.selectedNpc.id;
			let value = self.selectedNpc.ressonance;
			this.log("Saving npc "+npcId+" ressonance "+value);
			this.addTask(new Task(
				TASK_TYPES.SAVE_RESSONANCE,
				{
					id: npcId,
					ressonance: value
				}
			));
		},
		selectedNpcSickChange: function(){
			let self = this;
			let npcId = self.selectedNpc.id;
			self.selectedNpc.sick = !self.selectedNpc.sick;
			let value = self.selectedNpc.sick;
			this.log("Saving npc "+npcId+" sick "+value);
			this.addTask(new Task(
				TASK_TYPES.SAVE_SICK,
				{
					id: npcId,
					sick: value
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
			this.npcSickFilter = null;
			this.npcVampireFilter = null;
			this.mainArea = NPC;
		}
	},
	mounted: function() {
		let self = this;
		_.each(
			_.filter(_.keys(TASK_TYPES), (t) => TASK_TYPES[t].indexOf("load") == 0),
			(t) => {
				self.addTask(new Task(TASK_TYPES[t], {}));
			}
		)
	}
});


/*
const updateRessonance = function(npc){
        let seed = Math.random();
        if(npc.ressonancia == NONE){
                if(seed > 1-$scope.upToFleeting){
                        npc.ressonancia = FLEETING;
                }
        } else if(npc.ressonancia == FLEETING){
                if(seed > 1-$scope.upToIntense){
                        npc.ressonancia = INTENSE;
                } else if(seed < $scope.downToNone){
                        npc.ressonancia = NONE;
                }
        } else if(npc.ressonancia == INTENSE){
                if(seed > 1-$scope.upToDyscrasia){
                        npc.ressonancia = DYSCRASIA;
                } else if(seed < $scope.downToFleeting){
                        npc.ressonancia = FLEETING;
                }
        } else if(npc.ressonancia == DYSCRASIA){
                if(seed < $scope.downToIntense){
                        npc.ressonancia = INTENSE;
                }
        }
}

$scope.upToFleeting = 0.1;
$scope.downToNone = 0.25;
$scope.upToIntense = 0.1;
$scope.downToFleeting = 0.2;
$scope.upToDyscrasia = 0.1;
$scope.downToIntense = 0.4;

*/