const app = angular.module("app", []);
app.controller("controller", function($scope, $http) {  
	$http.get('/location').then(function(response, status){
		$scope.locations = _.sortBy(response.data, (l) => {return l.id;});
		$http.get('/professions').then(function(response, status){
			$scope.professions = response.data;
			$http.get('/professionsNpcs').then(function(response, status){
				$scope.professionsNpcs = response.data;
				$http.get('/npc').then(function(response, status){
					$scope.npcs = response.data;
					$scope.npcs = _.map($scope.npcs, (npc) => {
						let jobs = _.filter($scope.professionsNpcs, (prof) => {
							return prof.npc == npc.id;
						});
						let professions = _.map(jobs, (job) => {
							return {
								profissao: _.find($scope.professions, (profession) => {return profession.id == job.profissao;}),
								negocio: _.find($scope.locations, (l) => {return l.id == job.negocio;})
							}
						});
						return {...npc, professions: professions};
					});
					$scope.selectedNpc = $scope.npcs[0];
					console.log("done");
				}, function(){
					alert("error");
				});
			}, function(){
				alert("error");
			});
		}, function(){
			alert("error");
		});
	}, function(){
		alert("error");
	});
	$http.get('/clientesNegocio').then(function(response, status){
		$scope.locationPreferences = response.data;
	}, function(){
		alert("error");
	});
	$http.get('/moradias').then(function(response, status){
		$scope.moradias = response.data;
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

	$scope.showN1 = true;

	$scope.showNpc = function(){
		$scope.showNpcTab = true;
		$scope.showLocationTab = false;
	}

	$scope.showLocation = function(){
		$scope.showNpcTab = false;
		$scope.showLocationTab = true;
	}

	$scope.showNpc();

	const NONE = "NONE";
	const FLEETING = "FLEETING";
	const INTENSE = "INTENSE";
	const DYSCRASIA = "DYSCRASIA";

	$scope.upToFleeting = 0.1;
	$scope.downToNone = 0.25;
	$scope.upToIntense = 0.1;
	$scope.downToFleeting = 0.2;
	$scope.upToDyscrasia = 0.1;
	$scope.downToIntense = 0.4;

	$scope.selectNpc = function(npc){
		$scope.selectedNpc = npc;
	}

	$scope.selectNpcById = function(id){
		$scope.selectedNpc = _.find($scope.npcs, (npc) => {return npc.id == id;});
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

	const generateFinalLocation = function(npc, period, isSick){
		let professions = _.filter($scope.professionsNpcs, (prof) => {
			let location = _.find($scope.locations, (l) => {return l.id == prof.negocio});
			return prof.npc == npc.id && (location == null || location["n"+period]);
		});
		if(npc.idade <= 6){
			return {
				location: {
						nome: "Com os pais",
						bairro: npc.bairro
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
					&& job.profissao != 2 // Aposentado
					&& job.profissao != 9 // Detetive
					&& job.profissao != 17 // Faxineiro de rua
					&& job.profissao != 28 // Guarda do Tráfico
					&& job.profissao != 33 // Morador de Rua
					&& job.profissao != 24 // Piloto de Táxi
					&& job.profissao != 37 // Policial
					&& job.profissao != 42 // Transporte de Drogas
					&& job.profissao != 43 // Turista
					&& job.profissao != 46 // Vendedor de Drogas
					){ 
					let finalLocation = _.find($scope.locations, (l) => {return l.id == job.negocio;});
					if(finalLocation != null){
						finalLocation["npcListN"+period].push({...npc, working: true});
					}
					return {
						location: finalLocation,
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
					location: {
						nome: npc.moradia,
						bairro: npc.bairro
					},
					working: false,
					sleeping: true,
					sick: isSick
				}
			}
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
								&& ( _.isUndefined(locationPref.idademenor) || _.isNull(locationPref.idademenor) || npc.idade <= locationPref.idademenor)
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
					seed: Math.pow(pref.seed, 4) * locationPrefModifier * (location["n"+period] ? 1 : 0.05)
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
		finalLocation["npcListN"+period].push({...npc, working: false});
		return {
			location: finalLocation,
			working: false,
			sleeping: false,
			sick: isSick
		}
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
			updateRessonance(npc);
			let sickSeed = Math.random();
			let isSick = sickSeed < 0.05;
			if(isSick){
				let doctorCheck = Math.random();
				let goesToDockor = doctorCheck < 0.5*_.find($scope.npcPreferences, (pref) => {
				return pref.npc == npc.id && pref.negocio == hospital.id}).seed;
				if(goesToDockor){
					npc.l1 = {
						location: hospital,
						working: false,
						sleeping: false,
						sick: true,
					};
					npc.l2 = {
						location: hospital,
						working: false,
						sleeping: false,
						sick: true,
					};
					npc.l3 = {
						location: hospital,
						working: false,
						sleeping: false,
						sick: true,
					};
					return;
				}
			}
			let l1 = generateFinalLocation(npc, 1, isSick);
			let l2 = generateFinalLocation(npc, 2, isSick);
			let l3 = generateFinalLocation(npc, 3, isSick);
			npc.l1 = l1;
			npc.l2 = l2;
			npc.l3 = l3;
		});
		saveRessonance();
	}

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

	$scope.clearFilter = function(){
		$scope.npcNameFilter = undefined;
		$scope.npcSexFilter = undefined;
		$scope.npcAgeMoreFilter = undefined;
		$scope.npcAgeLessFilter = undefined;
		$scope.npcBairroFilter = undefined;
		$scope.npcMoradiaFilter = undefined;
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
		if(!_.isUndefined($scope.npcMoradiaFilter)){
			if(npc.moradiaid != parseInt($scope.npcMoradiaFilter)){
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

	$scope.saveSelectedNpcResources = function(){
		$http.post('/saveResources', {id: $scope.selectedNpc.id, recursos: $scope.selectedNpc.recursos})
			.then(function(response, status){

		}, function(){
			alert("error");
		});
	}

	$scope.saveLocationDescription = function(location){
		$http.post('/saveLocationDescription', {id: location.id, descricao: location.descricao})
			.then(function(response, status){

		}, function(){
			alert("error");
		});	
	}

	const saveRessonance = function(){
		$http.post('/saveRessonance', 
			{npcs: _.map($scope.npcs, (npc) => ({
				id: npc.id, ressonancia: npc.ressonancia
			}))}
		).then(function(response, status){

		}, function(){
			alert("error");
		});
	}

	$scope.saveSelectedNpcHealth = function(){
		$http.post('/saveHealth', {id: $scope.selectedNpc.id, saude: $scope.selectedNpc.saude}).then(function(response, status){

		}, function(){
			alert("error");
		});
	}

	$scope.saveSelectedNpcHealth = function(){
		$http.post('/saveDescription', {id: $scope.selectedNpc.id, descricao: $scope.selectedNpc.descricao}).then(function(response, status){

		}, function(){
			alert("error");
		});
	}

	$scope.selectedNpcRelatives = function(){
		if($scope.selectedNpc.familia == null){
			return [];
		}
		let result = _.filter($scope.npcs, (npc) => {
			return npc.familia == $scope.selectedNpc.familia && npc.id != $scope.selectedNpc.id
		});
		return result;
	}

});