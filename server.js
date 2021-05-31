var express = require("express");
var { Pool, Client } = require('pg');
var app = express();
var bodyParser = require('body-parser');
var _ = require('underscore');
app.use( bodyParser.json() );       
app.use(bodyParser.urlencoded({     
  extended: true
}));
app.use(express.json());       // to support JSON-encoded bodies
app.use(express.urlencoded()); // to support URL-encoded bodies

app.use(express.static('public'))

const PORT = process.env.PORT || 3000;

const pool = new Pool();

const isNullOrUndefinedOrEmpty = function(o){
	return _.isNull(o) || _.isUndefined(o) || o === "";
}

app.listen(PORT, () => {
	console.log("Server running on port "+PORT);
});

app.get("/npc", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			console.log(err);
			res.status(500);
			res.json(err);
			return;
		}
		client.query(
		`
		select  npc.id id,
			npc.name, 
			gender.symbol gender, 
			nationality, 
			npc.age, 
			npc.nickname, 
			skin, 
			eyes, 
			hair,
			home,
			npc.physical F, 
			npc.social S, 
			npc.mental M,
			family, 
			instinct, 
			oath, 
			oath_nature,
			wealth,
			alive,
			sick,
			hospitalized,
			health,
			max_health,
			ressonance,
			npc.description,
			npc.story,
			npc.notes,
			v.generation,
			v.clan,
			v.predator_type,
			seed_nickname,
			seed_age,
			seed_eyes,
			seed_hair,
			seed_neighborhood,
			seed_physical,
			seed_social,
			seed_mental,
			seed_instinct,
			seed_oath,
			seed_oath_nature
		from npc
		join gender on npc.gender = gender.id
		left join vampire v on v.id = npc.id
		order by npc.id
		`,
		 (err, result) => {
		 	done()
			if(err){
			  console.log(err);
			  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  	
		});
	});
});

app.post("/health", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		let npcId = req.body.npc;
		let index = req.body.index;
		let value = req.body.value;
		client.query("select * from health where npc = "+npcId+" and index = "+index, (err, result) => {
		  	if(err){
		  		done();
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				if(result.rows.length > 0){
					let query = "update health set value = '"+value+"' where npc = "+npcId+" and index = "+index;
					client.query(query, (err, result) => {
					  	if(err){
					  		done();
							console.log(err);
							res.status(500);
							res.json(err);
						} else{
							done();
							res.json("{message: 'ok'}");
						}
					});
				} else {
					let query = "insert into health(\"npc\", \"index\", \"value\") values ("+npcId+", "+index+", '"+value+"')";
					client.query(query, (err, result) => {
					  	if(err){
					  		done();
							console.log(err);
							res.status(500);
							res.json(err);
						} else{
							done();
							res.json("{message: 'ok'}");
						}
					});
				}
			}
		});
	});
});

app.post("/saveResources", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set recursos = "+req.body.recursos+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  
		});
	});
});

app.post("/saveLocationDescription", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update negocio set descricao = '"+req.body.descricao+"' where id = "+req.body.id,
			 (err, result) => {
		 	done()
		  	if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}
		});
	});
});

let updateList = [];

const runUpdates = function(){
	if(_.isEmpty(updateList)){
		return;
	}
	let update = updateList.shift();
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set ressonancia = (select id from ressonancia where nome = '"+update.ressonancia+"') where id = "+update.id,
			 (err, result) => {
		 	done();
		 	if(err){
		 	  console.log(err);
		 	  res.status(500);
			  res.json(err);
			}
		  ;
		  runUpdates();
		});
	});
}

app.post("/saveRessonance", (req, res, next) => {
	updateList = req.body.npcs;
	runUpdates();
	res.json("ok");
});

app.post("/notes", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set notes = '"+req.body.notes+"' where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  	if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}
		});
	});
});

app.post("/name", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set name = '"+req.body.name+"' where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  	if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}
		});
	});
});

app.post("/nickname", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set nickname = '"+req.body.nickname+"' where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  	if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}
		});
	});
});

app.post("/description", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set description = '"+req.body.description+"' where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  	if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}
		});
	});
});

app.post("/story", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set story = '"+req.body.story+"' where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  	if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}
		});
	});
});

app.post("/nationality", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set nationality = "+req.body.nationality+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  	if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}
		});
	});
});

app.post("/family", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set family = "+req.body.family+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  	if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}
		});
	});
});

app.post("/instinct", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set instinct = "+req.body.instinct+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  	if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}
		});
	});
});

app.post("/skin", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set skin = "+req.body.skin+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  	if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}
		});
	});
});

app.post("/hair", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set hair = "+req.body.hair+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  	if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}
		});
	});
});

app.post("/eyes", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set eyes = "+req.body.eyes+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  	if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}
		});
	});
});

app.post("/oath", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set oath = "+req.body.oath+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  	if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}
		});
	});
});

app.post("/oathnature", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set oath_nature = "+req.body.oath_nature+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  	if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}
		});
	});
});

app.post("/home", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set home = "+req.body.home+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  	if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}
		});
	});
});

app.post("/ressonance", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set ressonance = '"+req.body.ressonance+"' where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  	if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}
		});
	});
});

app.post("/alive", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set alive = "+req.body.alive+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
			if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}		  
		});
	});
});

app.post("/sick", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set sick = "+req.body.sick+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
			if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}		  
		});
	});
});

app.post("/hospitalized", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set hospitalized = "+req.body.hospitalized+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
			if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}		  
		});
	});
});

app.post("/age", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set age = "+req.body.age+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
			if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}		  
		});
	});
});

app.post("/f", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set physical = "+req.body.f+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
			if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}		  
		});
	});
});

app.post("/m", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set mental = "+req.body.m+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
			if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}		  
		});
	});
});

app.post("/s", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set social = "+req.body.s+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
			if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}		  
		});
	});
});

app.post("/wealth", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set wealth = "+req.body.wealth+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
			if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}		  
		});
	});
});

app.post("/maxHealth", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set max_health = "+req.body.max_health+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
			if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}		  
		});
	});
});

app.post("/saveDescription", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set descricao = "+req.body.descricao+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  
		});
	});
});

app.post("/occupation", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		let occupation = req.body;
		if(isNullOrUndefinedOrEmpty(occupation.id)){
			client.query("insert into npc_profession(npc, profession, business) values ("+occupation.npc+", "+occupation.profession+", "+(isNullOrUndefinedOrEmpty(occupation.business)?"null":occupation.business)+") returning id",
			 (err, result) => {
		 		done()
			  if(err){
			  	  console.log(err);
			  	  res.status(500);
				  res.json(err);
				} else{
				  res.json(result.rows[0].id)
				}
			  
			});
		} else {
			client.query("update npc_profession set profession = "+occupation.profession+", business = "+(isNullOrUndefinedOrEmpty(occupation.business)?"null":occupation.business)+" where id = "+occupation.id,
			 (err, result) => {
		 		done()
			  if(err){
			  	  console.log(err);
			  	  res.status(500);
				  res.json(err);
				} else{
				  res.json(occupation.id)
				}			  
			});
		}
	});
});

app.post("/npc", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		let npc = req.body;

		let theQuery = "insert into npc(name, gender, nationality, age, nickname, skin, eyes, hair, physical, social, mental, family, home, instinct, oath, oath_nature, seed_nickname, seed_age, seed_eyes, seed_hair, seed_neighborhood, seed_physical, seed_social, seed_mental, seed_instinct, seed_oath, seed_oath_nature, notes, wealth, max_health, ressonance, description, alive, sick, hospitalized, story) values ('"+npc.name+"', (select id from gender where symbol = '"+npc.gender+"'), "+npc.nationality+", "+npc.age+", "+(isNullOrUndefinedOrEmpty(npc.nickname) ? "null": "'"+npc.nickname+"'" )+", "+npc.skin+", "+npc.eyes+", "+npc.hair+", "+npc.f+", "+npc.s+", "+npc.m+", "+(isNullOrUndefinedOrEmpty(npc.family) ? "null": ""+npc.family+"" )+", "+npc.home+", "+npc.instinct+", "+npc.oath+", "+npc.oath_nature+", "+npc.seed_nickname+", "+npc.seed_age+", "+npc.seed_eyes+", "+npc.seed_hair+", "+npc.seed_neighborhood+", "+npc.seed_physical+", "+npc.seed_social+", "+npc.seed_mental+", "+npc.seed_instinct+", "+npc.seed_oath+", "+npc.seed_oath_nature+", "+(isNullOrUndefinedOrEmpty(npc.notes) ? "null": "'"+npc.notes+"'" )+", "+npc.wealth+", "+npc.max_health+", "+(isNullOrUndefinedOrEmpty(npc.ressonance) ? "null": npc.ressonance)+", "+(isNullOrUndefinedOrEmpty(npc.description) ? "null": "'"+npc.description+"'" )+", "+npc.alive+", "+npc.sick+", "+npc.hospitalized+", "+(isNullOrUndefinedOrEmpty(npc.story) ? "null": "'"+npc.story+"'" )+") returning id";
		
		client.query(theQuery, (err, result) => {
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
				let npcId = result.rows[0].id;
				client.query("insert into npc_preferences(npc, business, seed) (select "+npcId+", b.id, random() from business b);", (err, result) => {
	 				done();
	 				if(err){
				  	  console.log(err);
				  	  res.status(500);
					  res.json(err);
					} else{
					  res.json(npcId);
					}
				});
			}
		});
		
	});
});

app.post("/vampire", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		let vampire = req.body;

		let theQuery = "insert into vampire(id, generation, clan, predator_type) values ("+vampire.id+", "+vampire.generation+", "+vampire.clan+", "+vampire.predator_type+")";
		
		client.query(theQuery, (err, result) => {
	 		done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json("ok");
			}
		});
		
	});
});


app.delete("/npc", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		let npcId = req.body.id;
		
		let theVampireQuery = "delete from vampire where id = "+npcId;
		let thePreferencesQuery = "delete from npc_preferences where npc = "+npcId;
		let theQuery = "delete from npc where id = "+npcId;
		client.query(theVampireQuery, (err, result) => {
			if(err){
				done();
	  	  console.log(err);
	  	  res.status(500);
			  res.json(err);
			} else{
				client.query(thePreferencesQuery, (err, result) => {
				  if(err){
				  	done();
			  	  console.log(err);
			  	  res.status(500);
					  res.json(err);
					} else{
					  client.query(theQuery, (err, result) => {
				 		done();
					  if(err){
					  	  console.log(err);
					  	  res.status(500);
						  res.json(err);
						} else{
						  res.json("ok");
						}
					});
					}
				});
			}
		});
	});
});


app.delete("/occupation", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		let occupation = req.body;
		client.query("delete from npc_profession where id = "+occupation.id,
		 (err, result) => {
	 		done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json("ok");
			}
		});
	});
});

app.get("/health", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			console.log(err);
			res.status(500);
			res.json(err);
			return;
		}
		client.query(
			`
			select *
			from health
			order by npc, index
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		})
	});
});

app.get("/business", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			console.log(err);
			res.status(500);
			res.json(err);
			return;
		}
		client.query(
			`
			select b.id id, 
				   b.name, 
				   bt.name business_type, 
				   n.id neighbourhoodid,
				   n.name neighbourhood, 
				   n1, 
				   n2, 
				   n3, 
				   description
			from business b
			join business_type bt on bt.id = b.business_type
			join neighbourhood n on n.id = b.neighbourhood
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/home", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			console.log("Error: "+JSON.stringify(err));
			res.json(err);
			return;
		}
		client.query(
			`
			select *
			from home h
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		})
	});
});

app.get("/clan", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			console.log("Error: "+JSON.stringify(err));
			res.json(err);
			return;
		}
		client.query(
			`
			select *
			from clan c
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		})
	});
});

app.get("/predator_type", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			console.log("Error: "+JSON.stringify(err));
			res.json(err);
			return;
		}
		client.query(
			`
			select *
			from predator_type pt
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		})
	});
});

app.get("/nationality", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select n.id, n.name
			from nationality n
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/skin", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select n.id, n.color
			from skin_color n
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/eyes", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select n.id, n.color
			from eye_color n
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/hair", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select n.id, n.color
			from hair_color n
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/ressonance", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select *
			from ressonance
			`,
			 (err, result) => {
		 	done()
		  	if(err){
				console.log(err);
				res.status(500);
				res.json(err);
			} else{
				res.json(result.rows)
			}
		})
	});
});

app.get("/profession", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select *
			from profession
			`,
			 (err, result) => {
	 		done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/npcProfession", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select *
			from npc_profession
			`,
			 (err, result) => {
			 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/npcPreferences", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select id, npc, business, seed
			from npc_preferences 
			`,
			 (err, result) => {
			 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/businessRules", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select *
			from business_rules 
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/neighbourhood", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select *
			from neighbourhood 
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/family", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select *
			from family 
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/instinct", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select *
			from instinct 
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/humor", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select *
			from humor 
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/oath", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select *
			from oath 
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/oathnature", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select *
			from oath_nature 
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/distribution", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select *
			from distribution 
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		})
	});
});

app.get("/gender", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select *
			from gender 
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		})
	});
});

app.get("/randomname", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query(
			`
			select *
			from random_name 
			`,
			 (err, result) => {
		 	done()
		  if(err){
		  	  console.log(err);
		  	  res.status(500);
			  res.json(err);
			} else{
			  res.json(result.rows)
			}
		})
	});
});

