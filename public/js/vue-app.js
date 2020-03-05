const NPC = 'npc';
const LOCATION = 'location';
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
		clickLocation: function(){
			this.$emit('click-link', LOCATION);
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
	props: ['mainArea', 'warningList', 'npc-list', 'neighbourhoodList', 'familyList'],
	computed: {
		showNpc: function(){
			return this.mainArea == NPC;
		},
		showLocation: function(){
			return this.mainArea == LOCATION;
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
	props: ['npcList', 'neighbourhoodList', 'familyList'],
	data: function(){
		return {
			'nameFilter': null,
			'minimunAgeFilter': null,
			'maximunAgeFilter': null,
			'neighbourhoodFilter': "",
			'familyFilter': "",
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
				list = _.filter(list, (npc) => {return _.any(this.nameFilter.split(" "), (term) => {return npc.name.indexOf(term) > -1;});});
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
		}
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
		}
	}
});

Vue.component('main-area-location', {
	template: '#mainAreaLocationTemplate'
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
	template: '#npcDetailsTemplate'
});

Vue.component('neighbourhood-icon', {
	props: ['neighbourhoodId', 'neighbourhoodList'],
	template: '#neighbourhoodIconTemplate'
});

Vue.component('npc-information', {
	props: ['npc'],
	template: '#npcInformationTemplate'
});

var app = new Vue({
	el: '#app',
	data: {
		mainArea: NPC,
		npcList: null,
		warningList: [],
		selectedNpc: null,
		neighbourhoodList: [],
		familyList: []
	},
	methods: {
		showMainArea: function(mainArea){
			this.mainArea = mainArea;
		},
		clearWarnings: function(){
			this.warningList = [];
		},
		selectNpc: function(npc){
			this.selectedNpc = npc;
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

		this.axios.get('/business').then(locationResponse => {
			self.locationList = locationResponse.data;
			this.axios.get('/profession').catch(errorHandler).then(professionsResponse => {
				self.professionList = professionsResponse.data;
				this.axios.get('/npcProfession').catch(errorHandler).then(npcProfessionResponse => {
					self.npcProfessionList = npcProfessionResponse.data;
					this.axios.get('/npc').catch(errorHandler).then(function(npcResponse){
						self.npcList = npcResponse.data;
						this.axios.get('/neighbourhood').catch(errorHandler).then(function(neighbourhoodResponse){
							self.neighbourhoodList = neighbourhoodResponse.data;
							this.axios.get('/family').catch(errorHandler).then(function(familyResponse){
								self.familyList = familyResponse.data;
							});
						});
					});
				});
			});
		}).catch(errorHandler);
	}
});
