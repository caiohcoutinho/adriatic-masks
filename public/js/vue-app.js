const NPC = 'npc';
const CHARACTER_SHEET = 'characterSheet';
const BUSINESS = 'business';
const NIGHT = 'night';
const CONFIG = 'config';

const AUTO_COMPLETE_FILTER_SIZE = 5;

const autoCompleteComparation = (a, b) => {
	return a.indexOf(b) != -1;
}

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

const TASK_TYPES = {
	SAVE_HEALTH: "saveHealth",
	SAVE_NOTES: "saveNotes",
	SAVE_NAME: "saveName",
	SAVE_NICKNAME: "saveNickname",
	SAVE_DESCRIPTION: "saveDescription",
	SAVE_STORY: "saveStory",
	SAVE_NATIONALITY: "saveNationality",
	SAVE_SKIN: "saveSkin",
	SAVE_EYES: "saveEyes",
	SAVE_HAIR: "saveHair",
	SAVE_NEIGHBOURHOOD: "saveNeighbourhood",
	SAVE_ALIVE: "saveAlive",
	SAVE_SICK: "saveSick",
	SAVE_HOSPITALIZED: "saveHospitalized",
	SAVE_RESSONANCE: "saveRessonance",
	SAVE_CLAN: "saveClan",
	SAVE_GENERATION: "saveGeneration",
	SAVE_PREDATOR_TYPE: "savePredatorType",
	SAVE_FAMILY: "saveFamily",
	SAVE_HOME: "saveHome",
	SAVE_INSTINCT: "saveInstinct",
	SAVE_OATH: "saveOath",
	SAVE_OATH_NATURE: "saveOathNature",
	SAVE_AGE: "saveAge",
	SAVE_F: "saveF",
	SAVE_M: "saveM",
	SAVE_S: "saveS",
	SAVE_WEALTH: "saveWealth",
	SAVE_MAX_HEALTH: "saveMaxHealth",
	SAVE_OCCUPATION: "saveOccupation",
	SAVE_VAMPIRE: "saveVampire",
	SAVE_ATTRIBUTE: "saveAttribute",
	DELETE_OCCUPATION: "deleteOccupation",
	DELETE_NPC: "deleteNpc",
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
	LOAD_NATIONALITY: "loadNationality",
	LOAD_SKIN: "loadSkin",
	LOAD_EYES: "loadEyes",
	LOAD_HAIR: "loadHair",
	LOAD_INSTINCT: "loadInstinct",
	LOAD_HUMOR: "loadHumor",
	LOAD_OATH: "loadOath",
	LOAD_OATH_NATURE: "loadOathNature",
	LOAD_DISTRIBUTION: "loadDistribution",
	LOAD_GENDER: "loadGender",
	LOAD_RANDOM_NAME: "loadRandomName",
	LOAD_CLAN: "loadClan",
	LOAD_PREDATOR_TYPE: "loadPredatorType",
	LOAD_ATTRIBUTE: "loadAttribute",
	LOAD_ATTRIBUTE_TYPE: "loadAtributeType",
	LOAD_NPC_ATTRIBUTE: "loadNpcAtribute",
	GENERATE_NIGHT: "generateNight",
	GENERATE_RESSONANCE: "generateRessonance",
	GENERATE_NEW_NPC: "generateNewNpc"
}

const createPostUrlAction = (url) => {
	return function(self, data){
		self.axios.post(url, data).then(self.thenAction).catch(self.errorAction);
	}
}

const createDeleteUrlAction = (url) => {
	return function(self, data){
		self.axios.delete(url, {data: data}).then(self.thenAction).catch(self.errorAction);
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

// TODO: It might be worthy to make this mutable on the app.
const RESSONANCE_UPDATE_CONFIGURATION = {
	upToFleeting: 0.1,
	downToNone: 0.25,
	upToIntense: 0.1,
	downToFleeting: 0.2,
	upToDyscrasia: 0.1,
	downToIntense: 0.4
}

const TASK_EXECUTIONS = {};
TASK_EXECUTIONS[TASK_TYPES.SAVE_HEALTH] = createPostUrlAction("/health");
TASK_EXECUTIONS[TASK_TYPES.SAVE_NAME] = createPostUrlAction("/name");
TASK_EXECUTIONS[TASK_TYPES.SAVE_NICKNAME] = createPostUrlAction("/nickname");
TASK_EXECUTIONS[TASK_TYPES.SAVE_NOTES] = createPostUrlAction("/notes");
TASK_EXECUTIONS[TASK_TYPES.SAVE_STORY] = createPostUrlAction("/story");
TASK_EXECUTIONS[TASK_TYPES.SAVE_NATIONALITY] = createPostUrlAction("/nationality");
TASK_EXECUTIONS[TASK_TYPES.SAVE_FAMILY] = createPostUrlAction("/family");
TASK_EXECUTIONS[TASK_TYPES.SAVE_SKIN] = createPostUrlAction("/skin");
TASK_EXECUTIONS[TASK_TYPES.SAVE_EYES] = createPostUrlAction("/eyes");
TASK_EXECUTIONS[TASK_TYPES.SAVE_HAIR] = createPostUrlAction("/hair");
TASK_EXECUTIONS[TASK_TYPES.SAVE_HOME] = createPostUrlAction("/home");
TASK_EXECUTIONS[TASK_TYPES.SAVE_INSTINCT] = createPostUrlAction("/instinct");
TASK_EXECUTIONS[TASK_TYPES.SAVE_OATH] = createPostUrlAction("/oath");
TASK_EXECUTIONS[TASK_TYPES.SAVE_OATH_NATURE] = createPostUrlAction("/oathnature");
TASK_EXECUTIONS[TASK_TYPES.SAVE_NEIGHBOURHOOD] = createPostUrlAction("/neighbourhood");
TASK_EXECUTIONS[TASK_TYPES.SAVE_DESCRIPTION] = createPostUrlAction("/description");
TASK_EXECUTIONS[TASK_TYPES.SAVE_ALIVE] = createPostUrlAction("/alive");
TASK_EXECUTIONS[TASK_TYPES.SAVE_SICK] = createPostUrlAction("/sick");
TASK_EXECUTIONS[TASK_TYPES.SAVE_HOSPITALIZED] = createPostUrlAction("/hospitalized");
TASK_EXECUTIONS[TASK_TYPES.SAVE_AGE] = createPostUrlAction("/age");
TASK_EXECUTIONS[TASK_TYPES.SAVE_F] = createPostUrlAction("/f");
TASK_EXECUTIONS[TASK_TYPES.SAVE_M] = createPostUrlAction("/m");
TASK_EXECUTIONS[TASK_TYPES.SAVE_S] = createPostUrlAction("/s");
TASK_EXECUTIONS[TASK_TYPES.SAVE_WEALTH] = createPostUrlAction("/wealth");
TASK_EXECUTIONS[TASK_TYPES.SAVE_MAX_HEALTH] = createPostUrlAction("/maxHealth");
TASK_EXECUTIONS[TASK_TYPES.SAVE_RESSONANCE] = createPostUrlAction("/ressonance");
TASK_EXECUTIONS[TASK_TYPES.SAVE_VAMPIRE] = createPostUrlAction("/vampire");
TASK_EXECUTIONS[TASK_TYPES.SAVE_ATTRIBUTE] = createPostUrlAction("/attribute");
TASK_EXECUTIONS[TASK_TYPES.SAVE_OCCUPATION] = function(self, occupation){
	self.axios.post("/occupation", occupation).then(function(response){
		occupation.id = parseInt(response.data);
		self.thenAction();
	}).catch(self.errorAction);
};

TASK_EXECUTIONS[TASK_TYPES.DELETE_OCCUPATION] = createDeleteUrlAction("/occupation");
TASK_EXECUTIONS[TASK_TYPES.DELETE_NPC] = createDeleteUrlAction("/npc");

TASK_EXECUTIONS[TASK_TYPES.LOAD_RESSONANCE] = createLoadListUrlAction("/ressonance", "ressonanceList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_PROFESSION] = createLoadListUrlAction("/profession", "professionList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_NPC_PROFESSION] = createLoadListUrlAction("/npcProfession", "npcProfessionList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_NPC] = createLoadListUrlAction("/npc", "npcList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_NEIGHBOURHOOD] = createLoadListUrlAction("/neighbourhood", "neighbourhoodList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_FAMILY] = createLoadListUrlAction("/family", "familyList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_NATIONALITY] = createLoadListUrlAction("/nationality", "nationalityList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_SKIN] = createLoadListUrlAction("/skin", "skinList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_EYES] = createLoadListUrlAction("/eyes", "eyesList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_HAIR] = createLoadListUrlAction("/hair", "hairList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_INSTINCT] = createLoadListUrlAction("/instinct", "instinctList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_HUMOR] = createLoadListUrlAction("/humor", "humorList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_OATH] = createLoadListUrlAction("/oath", "oathList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_OATH_NATURE] = createLoadListUrlAction("/oathnature", "oathNatureList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_BUSINESS] = createLoadListUrlAction("/business", "businessList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_HEALTH] = createLoadListUrlAction("/health", "healthList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_NPC_PREFERENCES] = createLoadListUrlAction("/npcPreferences", "npcPreferencesList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_BUSINESS_RULES] = createLoadListUrlAction("/businessRules", "businessRulesList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_DISTRIBUTION] = createLoadListUrlAction("/distribution", "distributionList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_GENDER] = createLoadListUrlAction("/gender", "genderList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_HOME] = createLoadListUrlAction("/home", "homeList", (h) => h.name);
TASK_EXECUTIONS[TASK_TYPES.LOAD_RANDOM_NAME] = createLoadListUrlAction("/randomname", "randomNameList");
TASK_EXECUTIONS[TASK_TYPES.LOAD_CLAN] = createLoadListUrlAction("/clan", "clanList", (c) => c.name);
TASK_EXECUTIONS[TASK_TYPES.LOAD_PREDATOR_TYPE] = createLoadListUrlAction("/predator_type", "predatorTypeList", (pt) => pt.name);
TASK_EXECUTIONS[TASK_TYPES.LOAD_ATTRIBUTE] = createLoadListUrlAction("/attribute", "attributeList", (att) => att.name);
TASK_EXECUTIONS[TASK_TYPES.LOAD_ATTRIBUTE_TYPE] = createLoadListUrlAction("/attribute_type", "attributeTypeList", (att) => att.name);
TASK_EXECUTIONS[TASK_TYPES.LOAD_NPC_ATTRIBUTE] = createLoadListUrlAction("/npc_attribute", "npcAttributeList");

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
					self.npcProfessionList, self.professionList, self.businessRulesList, self.homeList]);
};
TASK_EXECUTIONS[TASK_TYPES.GENERATE_RESSONANCE] = function(self, data){
	if(!window.Worker){
		alert("no support for web workers.");
		self.thenAction();
	}
	let tic = new Date().getTime();
	var worker = new Worker('../js/generateRessonance.js');
	worker.onmessage = function(event){
		let tac = new Date().getTime();
		self.ressonanceUpdate = event.data;
		self.lastUpdate = new Date().toString();
		self.lastUpdateDetails = new Date().toString();
		self.log("generateRessonance took "+((tac-tic)/1000)+"s.");
		self.log("state = "+JSON.stringify(self.ressonanceUpdate));
		self.thenAction();
	}
	worker.postMessage([self.npcList, self.ressonanceList, RESSONANCE_UPDATE_CONFIGURATION]);
};

let crazyIdGeneratorDeleteMe = 9000;

let tempIdForOccupation = 10000;

TASK_EXECUTIONS[TASK_TYPES.GENERATE_NEW_NPC] = function(self, task){
	if(!window.Worker){
		alert("no support for web workers.");
		self.thenAction();
	}
	let isVampire = task.isVampire;

	let tic = new Date().getTime();
	var worker = new Worker('../js/generateNewNpc.js');
	worker.onmessage = function(event){
		let tac = new Date().getTime();
		let data = event.data;
		let npc = data.npc;
		let profession = data.professionId;
		let business = data.businessId;

		self.axios.post("/npc", npc).then(function(response){
			let npcId = parseInt(response.data);
			npc.id = npcId;

			let occupation = {
				npc: npcId,
				business: business,
				profession: profession
			};

			self.npcProfessionList.push(occupation);

			self.addTask(new Task(
				TASK_TYPES.SAVE_OCCUPATION, occupation
			));

			if(isVampire){
				self.addTask(new Task(
					TASK_TYPES.SAVE_VAMPIRE, {
						id: npcId,
						generation: npc.generation,
						clan: npc.clan,
						predator_type: npc.predator_type
					}
				));				
			}

			self.selectedCharacterSheetNpc = npc.id;
			self.npcList.push(npc);

			self.lastUpdate = new Date().toString();
			self.lastUpdateDetails = new Date().toString();

			self.log("generateNewNpc took "+((tac-tic)/1000)+"s.");

			self.thenAction();
		}).catch(self.errorAction);
	}

	let args = [self.distributionList, self.genderList, self.nationalityList, 
 		self.skinList, self.eyesList, self.hairList, 
 		self.neighbourhoodList, self.homeList, self.instinctList, 
 		self.oathList, self.oathNatureList, self.ressonanceList, 
 		self.professionList, self.businessList, self.randomNameList, 
 		self.clanList, self.predatorTypeList, isVampire];

	worker.postMessage(args);
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
	props: ['warningList', 'working', 'darkTheme'],
	computed: {
		warningListSize: function(){
			return _.size(this.warningList);
		}
	},
	methods: {
		clickNpc: function(){
			this.$emit('click-link', NPC);
		},
		clickCharacterSheet: function(){
			this.$emit('click-link', CHARACTER_SHEET);
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
	props: ['clan', 'darkTheme', 'clanList'],
	computed: {
		clanNameById: function(){
			let cache = [];
			_.each(this.clanList, (c) => {
				cache[c.id] = c.name;
			});
			return cache;
		},
	}
});

Vue.component('main-area', {
	template: '#mainAreaTemplate',
	props: [ 'night', 'mainArea', 'npcNameFilter', 'npcHomeFilter', 
			'npcMinimunAgeFilter', 'npcMaximunAgeFilter',
			'npcNeighbourhoodFilter', 'npcVampireFilter',
			'npcAliveFilter', 'npcSickFilter', 'logList',
			'warningList', 'npcProfessionList', 'professionList',
			'npcList', 'neighbourhoodList', 'familyList', 'homeList', 'nationalityList',
			'ressonanceList', 'healthList', 'darkTheme', 'working',
			'ressonanceUpdate', 'selectedCharacterSheetNpc',
			'selectedFamily', 'businessList', 'lastUpdate', 'lastUpdateDetails',
			'skinList', 'eyesList', 'hairList',
			'instinctList', 'humorList', 'oathList', 'oathNatureList',
			'clanList', 'predatorTypeList',
			'attributeTypeList', 'attributeList', 'npcAttributeList'],
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
		},
		showNight: function(){
			return this.mainArea == NIGHT;
		},
		showCharacterSheet: function(){
			return this.mainArea == CHARACTER_SHEET;	
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
		},
		changeDarkTheme: function(){
			this.$emit('change-dark-theme');
		},
		generateNight: function(){
			this.$emit('generate-night');
		},
		generateRessonance: function(){
			this.$emit('generate-ressonance');	
		},
		generateNewNpc: function(event){
			this.$emit('generate-new-npc', event);	
		},
		saveBatchRessonanceUpdate: function(){
			this.$emit('save-batch-ressonance-update');	
		},
		selectedCharacterSheetNpcChange: function(event){
			this.$emit("selected-character-sheet-npc-change", event);
		},
		characterSheetNameInputChange: function(event){
			this.$emit("character-sheet-name-change", event);
		},
		characterSheetNicknameInputChange: function(){
			this.$emit("character-sheet-nickname-change");
		},
		characterSheetDescriptionChange: function(){
			this.$emit("character-sheet-description-change");
		},
		characterSheetNotesChange: function(){
			this.$emit("character-sheet-notes-change");
		},
		characterSheetStoryChange: function(){
			this.$emit("character-sheet-story-change");
		},
		characterSheetNationalityChange: function(event){
			this.$emit("character-sheet-nationality-change", event);
		},
		characterSheetSkinChange: function(event){
			this.$emit("character-sheet-skin-change", event);
		},
		characterSheetEyesChange: function(event){
			this.$emit("character-sheet-eyes-change", event);
		},
		characterSheetHairChange: function(event){
			this.$emit("character-sheet-hair-change", event);
		},
		characterSheetFamilyChange: function(event){
			this.$emit("character-sheet-family-change", event);
		},
		characterSheetHomeChange: function(event){
			this.$emit("character-sheet-home-change", event);
		},
		characterSheetInstinctChange: function(event){
			this.$emit("character-sheet-instinct-change", event);
		},
		characterSheetOathChange: function(event){
			this.$emit("character-sheet-oath-change", event);
		},
		characterSheetOathNatureChange: function(event){
			this.$emit("character-sheet-oath-nature-change", event);
		},
		characterSheetAliveChange: function(event){
			this.$emit("character-sheet-alive-change", event);
		},
		characterSheetSickChange: function(event){
			this.$emit("character-sheet-sick-change", event);
		},
		characterSheetHospitalizedChange: function(event){
			this.$emit("character-sheet-hospitalized-change", event);
		},
		characterSheetAgeChange: function(event){
			this.$emit("character-sheet-age-change", event);
		},
		characterSheetFChange: function(event){
			this.$emit("character-sheet-f-change", event);
		},
		characterSheetMChange: function(event){
			this.$emit("character-sheet-m-change", event);
		},
		characterSheetSChange: function(event){
			this.$emit("character-sheet-s-change", event);
		},
		characterSheetWealthChange: function(event){
			this.$emit("character-sheet-wealth-change", event);
		},
		characterSheetMaxHealthChange: function(event){
			this.$emit("character-sheet-max-health-change", event);
		},
		characterSheetRessonanceChange: function(event){
			this.$emit("character-sheet-ressonance-change", event);
		},
		characterSheetClanChange: function(event){
			this.$emit("character-sheet-clan-change", event);
		},
		characterSheetGenerationChange: function(event){
			this.$emit("character-sheet-generation-change", event);
		},
		characterSheetPredatorTypeChange: function(health){
			this.$emit('character-sheet-predator-type-change', event);
		},
		characterSheetOccupationChange: function(occupation){
			this.$emit("character-sheet-occupation-change", occupation);
		},
		characterSheetHealthBarChange: function(event){
			this.$emit("character-sheet-health-bar-change", event);
		},
		characterSheetDeleteOccupation: function(occupation){
			this.$emit("character-sheet-delete-occupation", occupation);
		},
		characterSheetAddOccupation: function(npcId){
			this.$emit("character-sheet-add-occupation", npcId);
		},
		characterSheetDeleteNpc: function(){
			this.$emit("character-sheet-delete-npc");
		},
		characterSheetAttributeChange: function(event){
			this.$emit("character-sheet-attribute-change", event);
		},
		characterSheetSelectNpc: function(){
			this.$emit("character-sheet-select-npc");
		}
	}
});

Vue.component('main-area-night', {
	template: '#mainAreaNightTemplate',
	props: ['working', 'ressonanceUpdate', 'npcList', 'ressonanceList'],
	data: function(){
		return {};
	},
	computed: {
		npcNameById: function(){
			let cache = [];
			_.each(this.npcList, (npc) => {
				cache[npc.id] = npc.name;
			});
			return cache;
		},
		npcRessonanceById: function(){
			let cache = [];
			_.each(this.npcList, (npc) => {
				cache[npc.id] = npc.ressonance;
			});
			return cache;
		},
		ressonanceNameById: function(){
			let cache = [];
			_.each(this.ressonanceList, (r) => {
				cache[r.id] = r.name;
			});
			return cache;
		},
		updateCount: function(){
			return _.size(
				_.filter(
					this.ressonanceUpdate, 
					(r) => !isNullOrUndefinedOrEmpty(r))
				);
		},
		ressonanceCount: function(){
			return _.countBy(this.npcList, "ressonance");
		},
		nonVampireCount: function(){
			return _.size(
				_.filter(this.npcList, 
					(npc) => isNullOrUndefinedOrEmpty(npc.clan)
				)
			);
		}
	},
	methods: {
		generateNight: function(){
			if(this.working == true){
				return;
			}
			if(!confirm("Tem certeza que deseja sobreescrever a noite atual?")){
				return;
			}
			this.$emit('generate-night');
		},
		generateRessonance: function(){
			this.$emit('generate-ressonance');	
		},
		generateNewNpc: function(){
			this.$emit('generate-new-npc', {isVampire: false});	
		},
		generateNewVampire: function(){
			this.$emit('generate-new-npc', {isVampire: true});	
		},
		saveBatchRessonanceUpdate: function(){
			this.$emit('save-batch-ressonance-update');	
		}
	}
});

Vue.component('main-area-npc', {
	template: '#mainAreaNpcTemplate',
	props: ['npcList', 'nameFilter', 'homeFilter', 'minimunAgeFilter', 
	'maximunAgeFilter', 'neighbourhoodFilter', 'vampireFilter',
	'aliveFilter', 'sickFilter', 'ressonanceList', 'darkTheme',
	'professionList', 'npcProfessionList', 'healthList', 'nationalityList',
	'businessList', 'neighbourhoodList', 'familyList', 'familyFilter', 'homeList',
	'clanList', 'predatorTypeList'],
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
		nationalityById: function(){
			let cache = [];
			_.each(this.nationalityList, (n) => {
				cache[n.id] = n.name;
			});
			return cache;
		},
		neighbourhoodById: function(){
			let cache = [];
			_.each(this.neighbourhoodList, (n) => {
				cache[n.id] = n.name;
			});
			return cache;
		},
		homeNeighbourhoodIdById: function(){
			let cache = [];
			_.each(this.homeList, (h) => {
				cache[h.id] = h.neighbourhood;
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
					return npc.family == this.familyFilter;
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
					return npc.home == this.homeFilter;
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
	props: ['night', 'businessList', 'neighbourhoodList', 
			'professionList', 'ressonanceList', 'npcList', 'darkTheme',
			'clanList', 'predatorTypeList'],
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

Vue.component('main-area-character-sheet', {
	template: '#mainAreaCharacterSheetTemplate',
	props: ['npcList', 'selectedCharacterSheetNpc', 
			'healthList', 'nationalityList', 'neighbourhoodList',
			'skinList', 'eyesList', 'hairList', 'homeList', 'familyList',
			'instinctList', 'humorList', 'oathList', 'oathNatureList',
			'ressonanceList', 'healthList', 'npcProfessionList', 'professionList',
			'businessList', 'darkTheme',
			'clanList', 'predatorTypeList',
			'attributeTypeList', 'attributeList', 'npcAttributeList'],
	data: function(){
		return {
			advancedCollapsed: true,
			newVersion: true
		}
	},
	methods: {
		selectedCharacterSheetNpcChange: function(npcId){
			this.$emit("selected-character-sheet-npc-change", npcId);
		},
		characterSheetNameInputChange: function(){
			this.$emit("character-sheet-name-change");
		},
		characterSheetNicknameInputChange: function(){
			this.$emit("character-sheet-nickname-change");
		},
		characterSheetDescriptionChange: function(){
			this.$emit("character-sheet-description-change");
		},
		characterSheetNotesChange: function(){
			this.$emit("character-sheet-notes-change");
		},
		characterSheetStoryChange: function(){
			this.$emit("character-sheet-story-change");
		},
		characterSheetNationalityChange: function(event){
			this.$emit("character-sheet-nationality-change", event);
		},
		characterSheetSkinChange: function(event){
			this.$emit("character-sheet-skin-change", event);
		},
		characterSheetEyesChange: function(event){
			this.$emit("character-sheet-eyes-change", event);
		},
		characterSheetHairChange: function(event){
			this.$emit("character-sheet-hair-change", event);
		},
		characterSheetFamilyChange: function(event){
			this.$emit("character-sheet-family-change", event);
		},
		characterSheetHomeChange: function(event){
			this.$emit("character-sheet-home-change", event);
		},
		characterSheetInstinctChange: function(event){
			this.$emit("character-sheet-instinct-change", event);
		},
		characterSheetOathChange: function(event){
			this.$emit("character-sheet-oath-change", event);
		},
		characterSheetOathNatureChange: function(event){
			this.$emit("character-sheet-oath-nature-change", event);
		},
		characterSheetAliveChange: function(event){
			this.$emit("character-sheet-alive-change", event);
		},
		characterSheetSickChange: function(event){
			this.$emit("character-sheet-sick-change", event);
		},
		characterSheetHospitalizedChange: function(event){
			this.$emit("character-sheet-hospitalized-change", event);
		},
        characterSheetHealthBarChange: function(health){
            this.$emit('character-sheet-health-bar-change', {
                    npc: this.selectedCharacterSheetNpc,
                    health: health
    		});
		},
		characterSheetAgeChange: function(event){
			this.$emit("character-sheet-age-change", event);
		},
		characterSheetFChange: function(event){
			this.$emit("character-sheet-f-change", event);
		},
		characterSheetMChange: function(event){
			this.$emit("character-sheet-m-change", event);
		},
		characterSheetSChange: function(event){
			this.$emit("character-sheet-s-change", event);
		},
		characterSheetWealthChange: function(event){
			this.$emit("character-sheet-wealth-change", event);
		},
		characterSheetMaxHealthChange: function(event){
			this.$emit("character-sheet-max-health-change", event);
		},
		characterSheetRessonanceChange: function(event){
			this.$emit("character-sheet-ressonance-change", event);
		},
		characterSheetClanChange: function(event){
			this.$emit("character-sheet-clan-change", event);
		},
		characterSheetGenerationChange: function(event){
			this.$emit("character-sheet-generation-change", event);
		},
		characterSheetPredatorTypeChange: function(health){
			this.$emit('character-sheet-predator-type-change', event);
		},
		characterSheetOccupationProfessionChange: function(event, occupation){
			let value = event.target.value;
			occupation.profession = value;
			if(!isNullOrUndefinedOrEmpty(occupation) &&
				!isNullOrUndefinedOrEmpty(occupation.npc) &&
				!isNullOrUndefinedOrEmpty(occupation.profession)){
				this.$emit("character-sheet-occupation-change", occupation);
			}
		},
		characterSheetOccupationBusinessChange: function(event, occupation){
			let value = event.target.value;
			occupation.business = value;
			if(!isNullOrUndefinedOrEmpty(occupation) &&
				!isNullOrUndefinedOrEmpty(occupation.npc) &&
				!isNullOrUndefinedOrEmpty(occupation.profession)){
				this.$emit("character-sheet-occupation-change", occupation);
			}
		},
		characterSheetDeleteOccupation: function(occupation){
			this.$emit("character-sheet-delete-occupation", occupation);
		},
		characterSheetAddOccupation: function(npcId){
			this.$emit("character-sheet-add-occupation", npcId);
		},
		characterSheetDeleteNpc: function(){
			this.$emit("character-sheet-delete-npc");
		},
		characterSheetSelectNpc: function(){
			this.$emit("character-sheet-select-npc");
		},
		characterSheetAttributeChange: function(event){
			this.$emit("character-sheet-attribute-change", event);
		}
	},
	computed: {
		orderedNpcList: function(){
			return _.sortBy(this.npcList, "name");
		},
		selectedNpc: function(){
			if(isNullOrUndefinedOrEmpty(this.selectedCharacterSheetNpc)){
				return null;
			}
			return _.findWhere(this.npcList, {id: this.selectedCharacterSheetNpc});
		},
		homeNeighbourhoodIdById: function(){
			let cache = [];
			_.each(this.homeList, (h) => {
				cache[h.id] = h.neighbourhood;
			});
			return cache;
		},
		neighbourhoodById: function(){
			let cache = [];
			_.each(this.neighbourhoodList, (h) => {
				cache[h.id] = h.name;
			});
			return cache;
		},
		occupationByNpcId: function(){
			return _.groupBy(this.npcProfessionList, (occ) => occ.npc);
		},
		orderedBusinessList: function(){
			return _.sortBy(this.businessList, "name");
		}
	}
})

Vue.component('portrait', {
	template: '#portraitTemplate',
	props: ['npc', 'skinList', 'eyesList', 'hairList'],
	computed: {
		eyesColorById: function(){
			let cache = [];
			_.each(this.eyesList, (h) => {
				cache[h.id] = h.color;
			});
			return cache;
		},
		skinColorById: function(){
			let cache = [];
			_.each(this.skinList, (h) => {
				cache[h.id] = h.color;
			});
			return cache;
		},
		hairColorById: function(){
			let cache = [];
			_.each(this.hairList, (h) => {
				cache[h.id] = h.color;
			});
			return cache;
		}
	},
	methods: {
		eyeColor: function(npc){
			return EYES[this.eyesColorById[npc.eyes]];
		},
		skinColor: function(npc){
			return SKIN[this.skinColorById[npc.skin]];
		},
		hairColor: function(npc){
			return HAIR[this.hairColorById[npc.hair]];
		},
	}
});

Vue.component('sorting-arrow', {
	props: ['condition'],
	template: '#sortingArrowTemplate'
});

Vue.component('main-area-config', {
	template: '#mainAreaConfigTemplate',
	props: ['warningList', 'logList', 'darkTheme'],
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
		},
		changeDarkTheme: function(){
			this.$emit('change-dark-theme');	
		}
	}
});

Vue.component('side-details', {
	props: ['night', 'npc', 'business', 'working', 'homeList', 'nationalityList',
		'npcList', 'npcProfessionList', 'businessList', 'healthList',
		'professionList', 'ressonanceList', 'darkTheme', 'familyList',
		'skinList', 'eyesList', 'hairList', 'neighbourhoodList',
		'instinctList', 'humorList', 'oathList', 'oathNatureList', 
		'clanList', 'predatorTypeList'],
	template: '#sideDetailsTemplate',
	methods: {
		clickFamily: function(familyId){
			this.$emit('click-family', familyId);
		},
		saveSelectedNpcNotes: function(){
			this.$emit('save-selected-npc-notes');
		},
		saveSelectedNpcDescription: function(){
			this.$emit('save-selected-npc-description');
		},
		saveSelectedNpcStory: function(){
			this.$emit('save-selected-npc-story');
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
		},
		selectedNpcShowCharacterSheet: function(event){
			this.$emit('selected-npc-show-character-sheet', event);	
		}
	}
});

Vue.component('auto-complete', {
	props: ['list', 'propertyName'],
	data: function(){
		return {
			filter: ""
		}
	},
	template: '#autoCompleteTemplate',
	method: {
		selectItem: function(){
			alert("TODO item selected");
		}
	},
	computed: {
		filteredList: function(){
			if(this.filter == ""){
				return [];
			}
			return 
				_.sortBy(
					_.first(
						_.filter(
							this.list, 
							(item) => autoCompleteComparation(item[this.propertyName], this.filter)
						),
						AUTO_COMPLETE_FILTER_SIZE
					),
					this.propertyName
				);
		}
	}
});

Vue.component('open-closed-icon', {
	props: ['value'],
	template: '#openClosedIconTemplate',
});	

Vue.component('npc-details', {
	props: ['night','npc', 'working', 'ressonanceList', 'homeList',
		'healthList', 'darkTheme', 'nationalityList', 'familyList',
		'businessList', 'professionList', 'npcProfessionList',
		'skinList', 'eyesList', 'hairList', 'neighbourhoodList', 
		'instinctList', 'humorList', 'oathList', 'oathNatureList',
		'clanList', 'predatorTypeList'],
	template: '#npcDetailsTemplate',
	methods: {
		clickFamily: function(familyId){
			this.$emit('click-family', familyId);
		},
		saveSelectedNpcNotes: function(){
			this.$emit('save-selected-npc-notes');
		},
		saveSelectedNpcDescription: function(){
			this.$emit('save-selected-npc-description');
		},
		saveSelectedNpcStory: function(){
			this.$emit('save-selected-npc-story');
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
		},
		selectedNpcShowCharacterSheet: function(event){
			this.$emit('selected-npc-show-character-sheet', event);	
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
	props: ['npcList', 'neighbourhoodList', 'darkTheme',
		'ressonanceList', 'businessActivity', 'professionList',
		'clanList', 'predatorTypeList'],
	template: '#npcListTemplate',
	methods: {
		clickNpc: function(npcId){
			this.$emit("click-npc", npcId);
		}
	},
	computed: {
		npcById: function(){
			let cache = [];
			_.each(this.npcList, (npc) => {
				cache[npc.id] = npc;
			});
			return cache;
		},
		professionNameById: function(){
			let cache = [];
			_.each(this.professionList, (p) => {
				cache[p.id] = p.name;
			});
			return cache;
		},
		orderedBusinessActivity: function(){
			return _.sortBy(this.businessActivity, (attendance) =>{
				let job = attendance.job;
				if(!isNullOrUndefinedOrEmpty(job)){
					if(job.business == attendance.location){
						return -1;
					}
					return 1;
				}
				if(attendance.sleeping) return 2;
				return 0;
			});
		}
	}
});

Vue.component('npc-information', {
	props: ['night', 'npc', 'working', 'ressonanceList', 'healthList',
		'darkTheme', 'neighbourhoodList', 'nationalityList',
		'professionList', 'npcProfessionList', 'homeList', 'businessList',
		'skinList', 'eyesList', 'hairList', 'familyList',
		'instinctList', 'humorList', 'oathList', 'oathNatureList',
		'clanList', 'predatorTypeList'],
	template: '#npcInformationTemplate',
	methods: {
		clickFamily: function(familyId){
			this.$emit('click-family', familyId);
		},
		saveSelectedNpcNotes: function(){
			this.$emit('save-selected-npc-notes');
		},
		saveSelectedNpcDescription: function(){
			this.$emit('save-selected-npc-description');
		},
		saveSelectedNpcStory: function(){
			this.$emit('save-selected-npc-story');
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
		predatorTypeById: function(){
			let cache = [];
			_.each(this.predatorTypeList, (p) => {
				cache[p.id] = p.name;
			});
			return cache;
		},
		clanNameById: function(){
			let cache = [];
			_.each(this.clanList, (p) => {
				cache[p.id] = p.name;
			});
			return cache;
		},
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
		neighbourhoodById: function(){
			let cache = [];
			_.each(this.neighbourhoodList, (b) => {
				cache[b.id] = b.name;
			});
			return cache;
		},
		oathById: function(){
			let cache = [];
			_.each(this.oathList, (b) => {
				cache[b.id] = b.name;
			});
			return cache;
		},
		oathNatureById: function(){
			let cache = [];
			_.each(this.oathNatureList, (b) => {
				cache[b.id] = b.name;
			});
			return cache;
		},
		instinctById: function(){
			let cache = [];
			_.each(this.instinctList, (b) => {
				cache[b.id] = b.name;
			});
			return cache;
		},
		instinctHumorIdById: function(){
			let cache = [];
			_.each(this.instinctList, (b) => {
				cache[b.id] = b.humor;
			});
			return cache;
		},
		humorById: function(){
			let cache = [];
			_.each(this.humorList, (b) => {
				cache[b.id] = b.name;
			});
			return cache;
		},
		nationalityById: function(){
			let cache = [];
			_.each(this.nationalityList, (n) => {
				cache[n.id] = n.name;
			});
			return cache;
		},
		familyNameById: function(){
			let cache = [];
			_.each(this.familyList, (n) => {
				cache[n.id] = n.name;
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
		},
		homeNeighbourhoodIdById: function(){
			let cache = [];
			_.each(this.homeList, (h) => {
				cache[h.id] = h.neighbourhood;
			});
			return cache;
		},
		eyesColorById: function(){
			let cache = [];
			_.each(this.eyesList, (h) => {
				cache[h.id] = h.color;
			});
			return cache;
		},
		skinColorById: function(){
			let cache = [];
			_.each(this.skinList, (h) => {
				cache[h.id] = h.color;
			});
			return cache;
		},
		hairColorById: function(){
			let cache = [];
			_.each(this.hairList, (h) => {
				cache[h.id] = h.color;
			});
			return cache;
		}
	}
});

Vue.component('health-bar', {
	props: ['npc', 'healthList'],
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
		healthBarByNpcId: function(){
			let maxHealth = this.npc.max_health;
			let npcHealth = _.where(this.healthList, {npc: this.npc.id});
			return _.map(_.range(maxHealth), (index) => {
				let value = _.findWhere(npcHealth, {index: index});
				if(isNullOrUndefinedOrEmpty(value)){
					return {index: index, value: DAMAGE_CLEAN};
				}
				return value;
			});
		}
	}
});

Vue.component('attribute-type-section', {
	props: ['npcId', 'attributeTypeName', 
			'attributeTypeList', 'attributeList', 'npcAttributeList'],
	template: '#attributeTypeSection',
	methods: {
		characterSheetAttributeChange: function(event, attributeId){
			this.$emit('character-sheet-attribute-change', {
				npcId: this.npcId,
				attributeId: attributeId,
				value: parseInt(event.target.value)
			});
		}
	},
	computed: {
		filteredAttributeList: function(){
			let thisAttributeTypeName = this.attributeTypeName;
			let attributeTypeId = _.findWhere(this.attributeTypeList, {name: thisAttributeTypeName}).id;
			return _.filter(this.attributeList, att => att.type == attributeTypeId);
		},
		npcAttributeByAttributeId: function(){
			let thisNpcId = this.npcId;
			let filterdNpcAttributeList = _.filter(this.npcAttributeList, att => att.npc == thisNpcId);
			let cache = [];
			_.each(filterdNpcAttributeList, (att) => {
				cache[att.attribute] = att.value;
			});
			return cache;
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
		darkTheme: true,
		lastUpdateDetails: new Date().toString(),
		lastUpdate: new Date().toString(),
		mainArea: NPC,
		npcList: null,
		healthList: null,
		professionList: [],
		npcProfessionList: [],
		businessList: [],
		warningList: [],
		logList: [],
		working:false,
		selectedNpc: null,
		selectedCharacterSheetNpc: null,
		selectedBusiness: null,
		neighbourhoodList: [],
		familyList: [],
		ressonanceList: [],
		homeList: [],
		nationalityList: [],
		skinList: [],
		eyesList: [],
		hairList: [],
		oathList: [],
		oathNatureList: [],
		instinctList: [],
		humorList: [],
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
		night: {},
		distributionList: [],
		randomNameList: [],
		ressonanceUpdate: [],
		clanList: [],
		predatorTypeList: [],
		attributeList: [],
		attributeTypeList: [],
		npcAttributeList: []
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
		generateNight: function(){
			this.addTask(new Task(TASK_TYPES.GENERATE_NIGHT, {}));
		},
		generateRessonance: function(){
			this.addTask(new Task(TASK_TYPES.GENERATE_RESSONANCE, {}));
		},
		generateNewNpc: function(event){
			this.addTask(new Task(TASK_TYPES.GENERATE_NEW_NPC, event));	
		},
		showMainArea: function(mainArea){
			this.mainArea = mainArea;
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
		selectNpc: function(npcId){
			this.selectedBusiness = null;
			this.selectedNpc = _.findWhere(this.npcList, {id: npcId});
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
		saveSelectedNpcStory: (function(){
			return _.debounce(function(){
				let self = this;
				let npcId = self.selectedNpc.id;
				let value = self.selectedNpc.story;
				this.log("Saving npc "+npcId+" story");
				this.addTask(new Task(
					TASK_TYPES.SAVE_STORY,
					{
						id: npcId,
						story: value
					}
				));
			}, 1500);
		})(),
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
		saveSelectedNpcDescription: (function(){
			return _.debounce(function(){
				let self = this;
				let npcId = self.selectedNpc.id;
				let value = self.selectedNpc.description;
				this.log("Saving npc "+npcId+" description");
				this.addTask(new Task(
					TASK_TYPES.SAVE_DESCRIPTION,
					{
						id: npcId,
						description: value
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
		saveBatchRessonanceUpdate: function(){
			let self = this;
			let tasks = [];
			_.each(this.ressonanceUpdate, (newRessonance, npcId) => {
				if(npcId <= 0){
					return; // Ignore npcId == 0
				}
				let npc = _.findWhere(self.npcList, {id: npcId});
				if(!isNullOrUndefinedOrEmpty(npc.clan)){
					return; // Do not change vampires's ressonance.
				}
				if(!npc.alive){
					return; // Do not change dead npc ressonance.
				}
				if(isNullOrUndefinedOrEmpty(newRessonance)){
					return; // Do not change this npc ressonance.
				}
				// Now we are good to go.
				npc.ressonance = newRessonance;
				this.log("Saving npc "+npcId+" ressonance "+newRessonance);
				this.addTask(new Task(
					TASK_TYPES.SAVE_RESSONANCE,
					{
						id: npcId,
						ressonance: newRessonance
					}
				));
			});
		},
		saveSelectedNpcHealthChange: function(event){
			let self = this;
			let i = event.health.index;
			let npcId = self.selectedNpc.id;
			let h = _.findWhere(this.healthList, {npc: npcId, index: i});
			if(isNullOrUndefinedOrEmpty(h)){
				h = {
					npc: npcId,
					index: i,
					value: DAMAGE_CLEAN
				};
				this.healthList.push(h);
			}
			if(h.value == DAMAGE_CLEAN){
				h.value = DAMAGE_SUPERFICIAL;
			} else if(h.value == DAMAGE_AGGRAVATED){
				h.value = DAMAGE_CLEAN;
			} else if(h.value == DAMAGE_SUPERFICIAL){
				h.value = DAMAGE_AGGRAVATED;
			}
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
		characterSheetHealthBarChange: function(event){
			let self = this;
			let i = event.health.index;
			let npcId = self.selectedCharacterSheetNpc;
			let h = _.findWhere(this.healthList, {npc: npcId, index: i});
			if(isNullOrUndefinedOrEmpty(h)){
				h = {
					npc: npcId,
					index: i,
					value: DAMAGE_CLEAN
				};
				this.healthList.push(h);
			}
			if(h.value == DAMAGE_CLEAN){
				h.value = DAMAGE_SUPERFICIAL;
			} else if(h.value == DAMAGE_AGGRAVATED){
				h.value = DAMAGE_CLEAN;
			} else if(h.value == DAMAGE_SUPERFICIAL){
				h.value = DAMAGE_AGGRAVATED;
			}
			this.log("Saving npc "+npcId+" health "+i+" value "+h.value+" (characte sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_HEALTH,
				{
					npc: npcId,
					index: i,
					value: h.value
				}
			));
		},
		characterSheetNameInputChange: (function(){
			return _.debounce(function(){
				let self = this;
				let npcId = this.selectedCharacterSheetNpc;
				let newName = _.findWhere(this.npcList, {id: npcId}).name;
				this.log("Saving npc "+npcId+" name change");
				this.addTask(new Task(
					TASK_TYPES.SAVE_NAME,
					{
						id: npcId,
						name: newName
					}
				));
			}, 1500);
		})(),
		characterSheetNicknameInputChange: (function(){
			return _.debounce(function(){
				let self = this;
				let npcId = this.selectedCharacterSheetNpc;
				let newNickname = _.findWhere(this.npcList, {id: npcId}).nickname;
				this.log("Saving npc "+npcId+" nickname change");
				this.addTask(new Task(
					TASK_TYPES.SAVE_NICKNAME,
					{
						id: npcId,
						nickname: newNickname
					}
				));
			}, 1500);
		})(),
		characterSheetDescriptionChange: (function(){
			return _.debounce(function(){
				let self = this;
				let npcId = this.selectedCharacterSheetNpc;
				let newDescription = _.findWhere(this.npcList, {id: npcId}).description;
				this.log("Saving npc "+npcId+" description change (character sheet)");
				this.addTask(new Task(
					TASK_TYPES.SAVE_DESCRIPTION,
					{
						id: npcId,
						description: newDescription
					}
				));
			}, 1500);
		})(),
		characterSheetNotesChange: (function(){
			return _.debounce(function(){
				let self = this;
				let npcId = this.selectedCharacterSheetNpc;
				let newNotes = _.findWhere(this.npcList, {id: npcId}).notes;
				this.log("Saving npc "+npcId+" notes change (character sheet)");
				this.addTask(new Task(
					TASK_TYPES.SAVE_NOTES,
					{
						id: npcId,
						notes: newNotes
					}
				));
			}, 1500);
		})(),
		characterSheetStoryChange: (function(){
			return _.debounce(function(){
				let self = this;
				let npcId = this.selectedCharacterSheetNpc;
				let newStory = _.findWhere(this.npcList, {id: npcId}).story;
				this.log("Saving npc "+npcId+" story change (character sheet)");
				this.addTask(new Task(
					TASK_TYPES.SAVE_STORY,
					{
						id: npcId,
						story: newStory
					}
				));
			}, 1500);
		})(),
		characterSheetNationalityChange: function(event){
			let self = this;
			let npcId = this.selectedCharacterSheetNpc;
			let newNationalityId = parseInt(event.target.value);
			_.findWhere(this.npcList, {id: npcId}).nationality = newNationalityId;
			this.log("Saving npc "+npcId+" nationality change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_NATIONALITY,
				{
					id: npcId,
					nationality: newNationalityId
				}
			));
		},
		characterSheetFamilyChange: function(event){
			let self = this;
			let npcId = this.selectedCharacterSheetNpc;
			let newFamilyId = parseInt(event.target.value);
			_.findWhere(this.npcList, {id: npcId}).family = newFamilyId;
			this.log("Saving npc "+npcId+" family change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_FAMILY,
				{
					id: npcId,
					family: newFamilyId
				}
			));
		},
		characterSheetSkinChange: function(event){
			let self = this;
			let npcId = this.selectedCharacterSheetNpc;
			let newSkinId = parseInt(event.target.value);
			_.findWhere(this.npcList, {id: npcId}).skin = newSkinId;
			this.log("Saving npc "+npcId+" skin change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_SKIN,
				{
					id: npcId,
					skin: newSkinId
				}
			));
		},
		characterSheetEyesChange: function(event){
			let self = this;
			let npcId = this.selectedCharacterSheetNpc;
			let newEyesId = parseInt(event.target.value);
			_.findWhere(this.npcList, {id: npcId}).eyes = newEyesId;
			this.log("Saving npc "+npcId+" eyes change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_EYES,
				{
					id: npcId,
					eyes: newEyesId
				}
			));
		},
		characterSheetHairChange: function(event){
			let self = this;
			let npcId = this.selectedCharacterSheetNpc;
			let newHairId = parseInt(event.target.value);
			_.findWhere(this.npcList, {id: npcId}).hair = newHairId;
			this.log("Saving npc "+npcId+" hair change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_HAIR,
				{
					id: npcId,
					hair: newHairId
				}
			));
		},
		characterSheetHomeChange: function(event){
			let self = this;
			let npcId = this.selectedCharacterSheetNpc;
			let newHomeId = parseInt(event.target.value);
			_.findWhere(this.npcList, {id: npcId}).home = newHomeId;
			this.log("Saving npc "+npcId+" home change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_HOME,
				{
					id: npcId,
					home: newHomeId
				}
			));
		},
		characterSheetInstinctChange: function(event){
			let self = this;
			let npcId = this.selectedCharacterSheetNpc;
			let newInstinctId = parseInt(event.target.value);
			_.findWhere(this.npcList, {id: npcId}).instinct = newInstinctId;
			this.log("Saving npc "+npcId+" instinct change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_INSTINCT,
				{
					id: npcId,
					instinct: newInstinctId
				}
			));
		},
		characterSheetOathChange: function(event){
			let self = this;
			let npcId = this.selectedCharacterSheetNpc;
			let newOathId = parseInt(event.target.value);
			_.findWhere(this.npcList, {id: npcId}).oath = newOathId;
			this.log("Saving npc "+npcId+" oath change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_OATH,
				{
					id: npcId,
					oath: newOathId
				}
			));
		},
		characterSheetOathNatureChange: function(event){
			let self = this;
			let npcId = this.selectedCharacterSheetNpc;
			let newOathNatureId = parseInt(event.target.value);
			_.findWhere(this.npcList, {id: npcId}).oath_nature = newOathNatureId;
			this.log("Saving npc "+npcId+" oath nature change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_OATH_NATURE,
				{
					id: npcId,
					oath_nature: newOathNatureId
				}
			));
		},
		characterSheetAliveChange: function(event){
			let self = this;
			let npcId = self.selectedCharacterSheetNpc;
			let npc = _.findWhere(this.npcList, {id: npcId});
			npc.alive = !npc.alive;
			let value = npc.alive;
			this.log("Saving npc "+npcId+" alive "+value+" change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_ALIVE,
				{
					id: npcId,
					alive: value
				}
			));
		},
		characterSheetSickChange: function(event){
			let self = this;
			let npcId = self.selectedCharacterSheetNpc;
			let npc = _.findWhere(this.npcList, {id: npcId});
			npc.sick = !npc.sick;
			let value = npc.sick;
			this.log("Saving npc "+npcId+" sick "+value+" change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_SICK,
				{
					id: npcId,
					sick: value
				}
			));
		},
		characterSheetHospitalizedChange: function(event){
			let self = this;
			let npcId = self.selectedCharacterSheetNpc;
			let npc = _.findWhere(this.npcList, {id: npcId});
			npc.hospitalized = !npc.hospitalized;
			let value = npc.hospitalized;
			this.log("Saving npc "+npcId+" hospitalized "+value+" change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_HOSPITALIZED,
				{
					id: npcId,
					hospitalized: value
				}
			));
		},
		characterSheetAgeChange: function(event){
			let self = this;
			let npcId = self.selectedCharacterSheetNpc;
			let npc = _.findWhere(this.npcList, {id: npcId});
			npc.age = parseInt(event.target.value);
			let value = npc.age;
			this.log("Saving npc "+npcId+" age "+value+" change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_AGE,
				{
					id: npcId,
					age: value
				}
			));
		},
		characterSheetFChange: function(event){
			let self = this;
			let npcId = self.selectedCharacterSheetNpc;
			let npc = _.findWhere(this.npcList, {id: npcId});
			npc.f = parseInt(event.target.value);
			let value = npc.f;
			this.log("Saving npc "+npcId+" f "+value+" change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_F,
				{
					id: npcId,
					f: value
				}
			));
		},
		characterSheetMChange: function(event){
			let self = this;
			let npcId = self.selectedCharacterSheetNpc;
			let npc = _.findWhere(this.npcList, {id: npcId});
			npc.m = parseInt(event.target.value);
			let value = npc.m;
			this.log("Saving npc "+npcId+" m "+value+" change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_M,
				{
					id: npcId,
					m: value
				}
			));
		},
		characterSheetSChange: function(event){
			let self = this;
			let npcId = self.selectedCharacterSheetNpc;
			let npc = _.findWhere(this.npcList, {id: npcId});
			npc.s = parseInt(event.target.value);
			let value = npc.s;
			this.log("Saving npc "+npcId+" s "+value+" change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_S,
				{
					id: npcId,
					s: value
				}
			));
		},
		characterSheetWealthChange: function(event){
			let self = this;
			let npcId = self.selectedCharacterSheetNpc;
			let npc = _.findWhere(this.npcList, {id: npcId});
			npc.wealth = parseInt(event.target.value);
			let value = npc.wealth;
			this.log("Saving npc "+npcId+" wealth "+value+" change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_WEALTH,
				{
					id: npcId,
					wealth: value
				}
			));
		},
		characterSheetMaxHealthChange: function(event){
			let self = this;
			let npcId = self.selectedCharacterSheetNpc;
			let npc = _.findWhere(this.npcList, {id: npcId});
			npc.max_health = parseInt(event.target.value);
			let value = npc.max_health;
			this.log("Saving npc "+npcId+" max_health "+value+" change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_MAX_HEALTH,
				{
					id: npcId,
					max_health: value
				}
			));
		},
		characterSheetRessonanceChange: function(event){
			let self = this;
			let npcId = self.selectedCharacterSheetNpc;
			let npc = _.findWhere(this.npcList, {id: npcId});
			npc.ressonance = parseInt(event.target.value);
			let value = npc.ressonance;
			this.log("Saving npc "+npcId+" ressonance "+value+" change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_RESSONANCE,
				{
					id: npcId,
					ressonance: value
				}
			));
		},
		characterSheetClanChange: function(event){
			let self = this;
			let npcId = self.selectedCharacterSheetNpc;
			let npc = _.findWhere(this.npcList, {id: npcId});
			if(isNullOrUndefinedOrEmpty(event.target.value)){
				npc.clan = null;
			} else {
				npc.clan = parseInt(event.target.value);
			}
			let value = npc.clan;
			this.log("Saving npc "+npcId+" clan "+value+" change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_VAMPIRE,
				{
					id: npcId,
					clan: value,
					generation: npc.generation,
					predator_type: npc.predator_type
				}
			));
		},
		characterSheetGenerationChange: function(event){
			let self = this;
			let npcId = self.selectedCharacterSheetNpc;
			let npc = _.findWhere(this.npcList, {id: npcId});
			if(isNullOrUndefinedOrEmpty(event.target.value)){
				npc.generation = null;
			} else {
				npc.generation = parseInt(event.target.value);
			}
			let value = npc.generation;
			this.log("Saving npc "+npcId+" generation "+value+" change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_VAMPIRE,
				{
					id: npcId,
					clan: npc.clan,
					generation: value,
					predator_type: npc.predator_type
				}
			));
		},
		characterSheetPredatorTypeChange: function(health){
			let self = this;
			let npcId = self.selectedCharacterSheetNpc;
			let npc = _.findWhere(this.npcList, {id: npcId});
			if(isNullOrUndefinedOrEmpty(event.target.value)){
				npc.predator_type = null;
			} else {
				npc.predator_type = parseInt(event.target.value);
			}
			let value = npc.predator_type;
			this.log("Saving npc "+npcId+" predator_type "+value+" change (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_VAMPIRE,
				{
					id: npcId,
					clan: npc.clan,
					generation: npc.generation,
					predator_type: value
				}
			));
		},
		characterSheetOccupationChange: function(occupation){
			let self = this;
			this.log("Saving occupation "+JSON.stringify(occupation)+" (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_OCCUPATION, occupation
			));
		},
		selectedCharacterSheetNpcChange: function(event){
			let npcIdText = event.target.value;
			if(isNullOrUndefinedOrEmpty(npcIdText)){
				return;
			}
			this.selectedCharacterSheetNpc = parseInt(npcIdText);
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
		},
		changeDarkTheme: function(){
			this.darkTheme = !this.darkTheme;
		},
		characterSheetDeleteOccupation: function(occupation){
			if(isNullOrUndefinedOrEmpty(occupation.id)){
				let index = _.findIndex(this.npcProfessionList, (occ) => {
					return occ.tempId == occupation.tempId;
				});
				if(index != -1){
					this.npcProfessionList.splice(index, 1);
				}
			} else{
				this.addTask(new Task(
					TASK_TYPES.DELETE_OCCUPATION, occupation
				));
				let index = _.findIndex(this.npcProfessionList, (occ) => {
					return occ.id == occupation.id;
				});
				if(index != -1){
					this.npcProfessionList.splice(index, 1);
				}
			}
		},
		characterSheetAddOccupation: function(npcId){
			this.npcProfessionList.push({
				npc: npcId,
				tempId: tempIdForOccupation++
			});
		},
		characterSheetDeleteNpc: function(){
			let self = this;
			let npcId = self.selectedCharacterSheetNpc;
			let npc = _.findWhere(this.npcList, {id: npcId});
			let npcName = npc.name;
			if(!confirm("Você tem certeza que deseja remover permanentemente "+npcName+"?")){
				return;
			}
			let promptedNpcId = parseInt(prompt("Para confirmar, por favor digite o id do npc ("+npcId+")."));
			if(promptedNpcId != npcId){
				alert("O valor do id digitado ("+promptedNpcId+") não confere com o id do npc selecionado ("+npcId+").")
				return;
			}
			_.each(_.filter(self.npcProfessionList, (occ) => occ.npc == npcId), (occ) => {
				this.addTask(new Task(
					TASK_TYPES.DELETE_OCCUPATION, occ
				));
				let index = _.findIndex(this.npcProfessionList, (occ) => {
					return occ.npc == npcId;
				});
				if(index != -1){
					this.npcProfessionList.splice(index, 1);
				}
			});
			this.addTask(new Task(
				TASK_TYPES.DELETE_NPC, npc
			));
			self.selectedCharacterSheetNpc = null;
			if(!isNullOrUndefinedOrEmpty(self.selectedNpc) && self.selectedNpc.id == npcId){
				self.selectedNpc = null;
			}
			let index = _.findIndex(this.npcList, (npc) => {
				return npc.id == npcId;
			});
			if(index != -1){
				this.npcList.splice(index, 1);
			}
		},
		characterSheetSelectNpc: function(){
			if(!isNullOrUndefinedOrEmpty(this.selectedCharacterSheetNpc)){
				let npcId = this.selectedCharacterSheetNpc;
				this.selectedNpc = _.findWhere(this.npcList, {id: npcId});
			}
		},
		characterSheetAttributeChange: function(event){
			let self = this;
			let npcId = self.selectedCharacterSheetNpc;

			this.log("Saving attribute "+JSON.stringify(event)+" (character sheet)");
			this.addTask(new Task(
				TASK_TYPES.SAVE_ATTRIBUTE, event
			));
		},
		selectedNpcShowCharacterSheet: function(event){
			if(!isNullOrUndefinedOrEmpty(this.selectedNpc)){
				this.selectedCharacterSheetNpc = this.selectedNpc.id;
				this.showMainArea(CHARACTER_SHEET);
			}
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


