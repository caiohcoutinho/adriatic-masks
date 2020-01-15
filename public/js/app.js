const app = angular.module("app", []);
app.controller("controller", function($scope, $http) {  
	$http.get('/npc').then(function(response, status){
		$scope.npcs = response.data;
		$scope.selectedNpc = $scope.npcs[0];
	}, function(){
		alert("error");
	});
	$http.get('/location').then(function(response, status){
		$scope.locations = _.sortBy(response.data, (l) => {return l.id;});
	}, function(){
		alert("error");
	});
	$http.get('/professions').then(function(response, status){
		$scope.professions = response.data;
	}, function(){
		alert("error");
	});
	$http.get('/professionsNpcs').then(function(response, status){
		$scope.professionsNpcs = response.data;
	}, function(){
		alert("error");
	});
	$http.get('/clientesNegocio').then(function(response, status){
		$scope.locationPreferences = response.data;
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
	$scope.sortNightByNpc = function(){
		$scope.night = _.sortBy($scope.night, "npc")
	}

	$scope.sortNightByProfession = function(){
		$scope.night = _.sortBy($scope.night, "profession")
	}

	$scope.sortNightBySick = function(){
		$scope.night = _.sortBy($scope.night, "sick")
	}

	$scope.sortNightByL1 = function(){
		$scope.night = _.sortBy($scope.night, "l1")
	}

	$scope.sortNightByL2 = function(){
		$scope.night = _.sortBy($scope.night, "l2")
	}

	$scope.sortNightByL3 = function(){
		$scope.night = _.sortBy($scope.night, "l3")
	}

	$scope.showNpc = function(){
		$scope.showNpcTab = true;
		$scope.showLocationTab = false;
		$scope.showGeneratorTab = false;
	}

	$scope.showLocation = function(){
		$scope.showNpcTab = false;
		$scope.showLocationTab = true;
		$scope.showGeneratorTab = false;
	}

	$scope.showGenerator = function(){
		$scope.showNpcTab = false;
		$scope.showLocationTab = false;
		$scope.showGeneratorTab = true;
	}

	$scope.showNpc();

	$scope.selectNpc = function(npc){
		$scope.selectedNpc = npc;
	}

	const skin = {
		"Branco": "#dec6c6",
		"Marrom": "#58473c",
		"Mediterrâneo": "#a77e63"
	};

	const eyes = {
		"Esquerdo Marrom, Direito Verde": "url(#eyeGradient)",
		"Vermelho": "#710000",
		"Cinza": "#737070",
		"Azul": "#5e8dec",
		"Verde": "#6ab567",
		"Castanho": "#523b3b"
	};

	const hair = {
		"Branco": "#9a9898",
		"Preto": "#171616",
		"Loiro": "#e5f19b",
		"Marrom": "#271d00",
		"Vermelho": "#652525"
	}

	$scope.eyeColor = function(npc){
		return eyes[npc.olhos];
	}

	$scope.skinColor = function(npc){
		return skin[npc.pele];
	}

	$scope.hairColor = function(npc){
		return hair[npc.cabelo];
	}

	const generateFinalLocation = function(npc, period){
		let professions = _.filter($scope.professionsNpcs, (prof) => {
			let location = _.find($scope.locations, (l) => {return l.id == prof.negocio});
			return prof.npc == npc.id && location["n"+period];
		});
		if(!_.isEmpty(professions)){
			let workingSeed = Math.random();
			let isWorking = workingSeed > 0.95;

		}

		let locationSeed = Math.random();
		let sum = 0;
		let npcPrefsWithCorrections = _.map(
			_.filter(
				$scope.npcPreferences, 
				(pref) => {return pref.npc == npc.id}
			), 
			(pref) => {
				let location = _.find($scope.locations, (l) => {return l.id == pref.negocio});
				let locationPrefModifier = _.reduce(
					_.filter(
						$scope.locationPreferences, 
						(locationPref) => {
							return 1==1
								&& locationPref.negocio == pref.negocio
								&& ( _.isUndefined(locationPref.comprofissao) || _.isNull(locationPref.comprofissao) || false /* TODO */)
								&& ( _.isUndefined(locationPref.semprofissao) || _.isNull(locationPref.semprofissao) || false /* TODO */)
								&& ( _.isUndefined(locationPref.idademaior) || _.isNull(locationPref.idademaior) || npc.idade >= locationPref.idademaior)
								&& ( _.isUndefined(locationPref.idademenor) || _.isNull(locationPref.idademenor) || npc.idade <= locationPref.idademaior)
								&& ( _.isUndefined(locationPref.riquezamaior) || _.isNull(locationPref.riquezamaior) || false /* TODO */)
								&& ( _.isUndefined(locationPref.riquezamenor) || _.isNull(locationPref.riquezamenor) || false /* TODO */)
								&& ( _.isUndefined(locationPref.comsexo) || _.isNull(locationPref.comsexo) || npc.sexo == locationPref.comsexo)
								&& ( _.isUndefined(locationPref.semsexo) || _.isNull(locationPref.semsexo) || npc.sexo != locationPref.semsexo)
								//&& ( _.isUndefined(locationPref.mesmobairro) ||  false /* TODO */)
								;
						}
					), 
					(memo, value) => {return memo*parseFloat(value.modificador)}, 
					1
				);
				return {
					id: pref.id,
					npc: pref.npc,
					negocio: pref.negocio,
					seed: pref.seed * locationPrefModifier * (location["n"+period] ? 1 : 0.05)
				}
			}
		);
		let totalChance = _.reduce(npcPrefsWithCorrections, (memo, pref) => {return memo+pref.seed}, 0);
		let locationId = _.find(npcPrefsWithCorrections, (pref) => {
			let seed = pref.seed;
			sum += seed;
			return seed > 0 ? locationSeed < sum/totalChance : false;
		}).negocio;
		let finalLocation = _.find($scope.locations, (l) => {return l.id == locationId});
		finalLocation["npcListN"+period].push({...npc, totalChance: totalChance});
		return finalLocation;
	}

	$scope.generateNight = function(){
		if(!confirm("Tem certeza que deseja sobreescrever a noite atual?")){
			return;
		}
		const hospital = _.find($scope.locations, (l) => {
			return l.tipo == 'Hospital';
		});
		_.each($scope.locations, (location) => {
			location.npcListN1 = [];
			location.npcListN2 = [];
			location.npcListN3 = [];
		});
		_.each($scope.npcs, (npc) => {
			let sickSeed = Math.random();
			let isSick = sickSeed < 0.05;
			if(isSick){
				let doctorCheck = Math.random();
				let goesToDockor = doctorCheck < 0.5*_.find($scope.npcPreferences, (pref) => {
				return pref.npc == npc.id && pref.negocio == hospital.id}).seed;
				if(goesToDockor){
					npc.l1 = hospital;
					npc.l2 = hospital;
					npc.l3 = hospital;
					return;
				}
			}
			let l1 = generateFinalLocation(npc, 1);
			let l2 = generateFinalLocation(npc, 2);
			let l3 = generateFinalLocation(npc, 3);
			npc.l1 = l1;
			npc.l2 = l2;
			npc.l3 = l3;
			npc.trabalhando = true;
		});
	}

	$scope.clearFilter = function(){
		$scope.npcNameFilter = undefined;
		$scope.npcSexFilter = undefined;
		$scope.npcAgeMoreFilter = undefined;
		$scope.npcAgeLessFilter = undefined;
		$scope.npcBairroFilter = undefined;
	}

	$scope.matchFilter = function(npc){
		if(!_.isUndefined($scope.npcNameFilter)){
			if(!_.any(npc.nome.split('\ '), (part) => {return part.toLowerCase().indexOf($scope.npcNameFilter.toLowerCase()) != -1;})){
				return false;
			}
		}
		if(!_.isUndefined($scope.npcSexFilter) && !_.isEmpty($scope.npcSexFilter)){
			if(npc.sexo != $scope.npcSexFilter){
				return false;
			}
		}
		if(!_.isUndefined($scope.npcAgeMoreFilter)){
			if(npc.idade < $scope.npcAgeMoreFilter){
				return false;
			}
		}
		if(!_.isUndefined($scope.npcAgeLessFilter)){
			if(npc.idade > $scope.npcAgeLessFilter){
				return false;
			}
		}
		if(!_.isUndefined($scope.npcBairroFilter) && !_.isEmpty($scope.npcBairroFilter)){
			if(npc.bairro != $scope.npcBairroFilter){
				return false;
			}
		}
		return true;
	}

	$scope.clearLocationFilter = function(){
		$scope.locationNameFilter = undefined;
		$scope.locationN1Filter = undefined;
		$scope.locationN2Filter = undefined;
		$scope.locationN3Filter = undefined;
		$scope.locationBairroFilter = undefined;
	}

	$scope.matchLocationFilter = function(location){
		if(!_.isUndefined($scope.locationNameFilter)){
			if(!_.any(location.nome.split('\ '), (part) => {return part.toLowerCase().indexOf($scope.locationNameFilter.toLowerCase()) != -1;})){
				return false;
			}
		}
		if(!_.isUndefined($scope.locationN1Filter) && !_.isEmpty($scope.locationN1Filter)){
			if(location.n1 != ("true" == $scope.locationN1Filter)){
				return false;
			}
		}
		if(!_.isUndefined($scope.locationN2Filter) && !_.isEmpty($scope.locationN2Filter)){
			if(location.n2 != ("true" == $scope.locationN2Filter)){
				return false;
			}
		}
		if(!_.isUndefined($scope.locationN3Filter) && !_.isEmpty($scope.locationN3Filter)){
			if(location.n3 != ("true" == $scope.locationN3Filter)){
				return false;
			}
		}
		if(!_.isUndefined($scope.locationBairroFilter) && !_.isEmpty($scope.locationBairroFilter)){
			if(location.bairro != $scope.locationBairroFilter){
				return false;
			}
		}
		return true;
	}
});