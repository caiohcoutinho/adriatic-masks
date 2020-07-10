var express = require("express");
var { Pool } = require('pg');
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

const PORT = 3000;

const pool = new Pool()

pool.on('error', (err, client) => {
  console.error('Unexpected error on idle client', err)
  process.exit(-1)
})

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
			nationality.id nationalityId, 
			nationality.name nationality, 
			npc.age, 
			npc.nickname, 
			skin_color.color skin, 
			eye_color.color eyes, 
			hair_color.color hair,
			home.id home_id, 
			home.name home, 
			neighbourhood.name neighbourhood, 
			neighbourhood.id neighbourhoodId, 
			npc.physical F, 
			npc.social S, 
			npc.mental M,
			family.id family_id,
			family.name family_name, 
			instinct.name instinct, 
			oath.name oath, 
			oath_nature.name oath_nature,
			wealth,
			health,
			max_health,
			r.name ressonance,
			h.name humor,
			npc.description,
			npc.notes,
			v.generation,
			clan.name clan,
			pt.name predator_type
		from npc
		join gender on npc.gender = gender.id
		join nationality on nationality.id = npc.nationality
		join skin_color on skin_color.id = npc.skin
		join eye_color on eye_color.id = npc.eyes
		join hair_color on hair_color.id = npc.hair
		join neighbourhood on neighbourhood.id = npc.neighbourhood
		left join family on family.id = npc.family
		join oath on oath.id = npc.oath
		join instinct on instinct.id = npc.instinct
		join humor h on h.id = instinct.humor
		join oath_nature on oath_nature.id = npc.oath_nature
		join home on home.id = npc.home
		left join ressonance r on r.id = npc.ressonance
		left join vampire v on v.id = npc.id
		left join clan on clan.id = v.clan
		left join predator_type pt on pt.id = v.predator_type
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

app.post("/saveHealth", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err){
			res.json(err);
			return;
		}
		client.query("update npc set saude = "+req.body.saude+" where id = "+req.body.id,
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


app.post("/npc", (req, res, next) => {
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
			res.json(err);
			return;
		}
		client.query(
			`
			select h.id, h.name, n.name neighbourhood
			from home h
			join neighbourhood n on n.id = h.neighbourhood
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