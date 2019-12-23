const app = angular.module("app", []);
app.controller("controller", function($scope, $http) {  
	$http.get('/npc').then(function(response, status){
		$scope.npcs = response.data;
	}, function(){
		alert("error");
	});
	$http.get('/location').then(function(response, status){
		$scope.locations = response.data;
	}, function(){
		alert("error");
	});
	$http.get('/preferencias').then(function(response, status){
		$scope.npcPreferences = _.map(response.data, (d) => ({
			npc: d.npc,
			negocio: d.negocio,
			seed: parseFloat(d.seed)
		}));
	}, function(){
		alert("error");
	});
	$scope.night = null;

	$scope.generateNight = function(){
		/*
		$scope.night = _.sortBy(_.map($scope.npcs, (npc) => {
			const pref = _.max(_.filter($scope.npcPreferences, (pref) => {return pref.npc == npc.id;}), "seed");
			return {
				npc: npc.nome,
				location: _.find($scope.locations, (l) => {return l.id == pref.negocio;}).nome,
				seed: pref.seed
			}
		}), "location")
		*/

		// Etapas
		// Está doente?
		const hospital = _.find($scope.locations, (l) => {
			return l.tipo == 'Hospital';
		});
		$scope.night = _.sortBy(_.map($scope.npcs, (npc) => {
			let sickSeed = Math.random();
			let isSick = sickSeed < 0.05;
			if(isSick){
				let doctorCheck = Math.random();
				let goesToDockor = doctorCheck < 0.5*_.find($scope.npcPreferences, (pref) => {
				return pref.npc == npc.id && pref.negocio == hospital.id}).seed;
				if(goesToDockor){
					return {
						npc: npc.nome,
						sick: isSick,
						location: hospital.nome
					}
				}
			}
			let locationSeed = Math.random();
			let sum = 0;
			let npcPrefs = _.filter($scope.npcPreferences, (pref) => {return pref.npc == npc.id});
			let totalChance = _.reduce(npcPrefs, (memo, pref) => {return memo+pref.seed}, 0);
			let locationId = _.find(npcPrefs, (pref) => {
				let seed = pref.seed;
				sum += seed;
				return locationSeed < sum/totalChance;
			}).negocio;
			return {
				npc: npc.nome,
				sick: isSick,
				location: _.find($scope.locations, (l) => {return l.id == locationId}).nome
			}
		}), "location");


	}
});