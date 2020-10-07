importScripts("underscore.js");

const findRessonanceByName = (ressonanceList, name) => {
	return _.findWhere(ressonanceList, {name: name});
}

const generateRessonance = function(npcList, ressonanceList, configurations){
    let updates = [];
    let none = findRessonanceByName(ressonanceList, "NONE");
    let fleeting = findRessonanceByName(ressonanceList, "FLEETING");
    let intense = findRessonanceByName(ressonanceList, "INTENSE");
    let dyscrasia = findRessonanceByName(ressonanceList, "DYSCRASIA");
    _.each(npcList, (npc) => {
    	let seed = Math.random();
    	let result = null;
    	let currentRessonance = npc.ressonance;
		if(currentRessonance == none.id){
	        if(seed > 1-configurations.upToFleeting){
	            result = fleeting.id;
	        }
	    } else if(currentRessonance == fleeting.id){
	        if(seed > 1-configurations.upToIntense){
	            result = intense.id;
	        } else if(seed < configurations.downToNone){
	            result = none.id;
	        }
	    } else if(currentRessonance == intense.id){
	        if(seed > 1-configurations.upToDyscrasia){
	            result = dyscrasia.id;
	        } else if(seed < configurations.downToFleeting){
	            result = fleeting.id;
	        }
	    } else if(currentRessonance == dyscrasia.id){
	        if(seed < configurations.downToIntense){
	            result = intense.id;
	        }
	    }
	    updates[npc.id] = result;
    });
    return updates;
}

onmessage = function(e){
	let args = e.data;
	let updates = generateRessonance(args[0], args[1], args[2]);
	postMessage(updates);
}