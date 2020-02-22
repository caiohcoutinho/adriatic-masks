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

const PORT = process.env.PORT;

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
		if(err) throw err
		client.query(
		`
		select  npc.id id,
			npc.nome nome, 
			sexo.sigla sexo, 
			nacionalidade.nome nacionalidade, 
			npc.idade idade, 
			npc.apelido apelido, 
			cor_pele.cor pele, 
			cor_olhos.cor olhos, 
			cor_cabelo.cor cabelo,
			moradia.id moradiaId, 
			moradia.nome moradia, 
			bairro.nome bairro, 
			npc.fisico F, 
			npc.social S, 
			npc.mental M, 
			familia.nome familia, 
			instinto.nome instinto, 
			obrigacao.nome obrigacao, 
			natureza_obrigacao.nome natureza_obrigacao,
			recursos recursos,
			saude,
			saude_max,
			r.nome ressonancia,
			h.nome humor
		from npc
		join sexo on npc.sexo = sexo.id
		join nacionalidade on nacionalidade.id = npc.nacionalidade
		join cor_pele on cor_pele.id = npc.pele
		join cor_olhos on cor_olhos.id = npc.olhos
		join cor_cabelo on cor_cabelo.id = npc.cabelo
		join bairro on bairro.id = npc.bairro
		left join familia on familia.id = npc.familia
		join obrigacao on obrigacao.id = npc.obrigacao
		join instinto on instinto.id = npc.instinto
		join humor h on h.id = instinto.humor
		join natureza_obrigacao on natureza_obrigacao.id = npc.natureza_obrigacao
		join moradia on moradia.id = npc.moradia
		left join ressonancia r on r.id = npc.ressonancia
		order by npc.id
		`,
		 (err, result) => {
		 	done()
			if(err){
			  res.json({error: "Error:"+err});
			} else{
			  res.json(result.rows)
			}
		  	
		});
	});
});

app.post("/saveResources", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err) throw err
		client.query("update npc set recursos = "+req.body.recursos+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  if(err){
			  res.json({error: "Error:"+err});
			} else{
			  res.json(result.rows)
			}
		  
		});
	});
});

app.post("/saveLocationDescription", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err) throw err
		client.query("update negocio set descricao = '"+req.body.descricao+"' where id = "+req.body.id,
			 (err, result) => {
		 	done()
		  if(err){
			  res.json({error: "Error:"+err});
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
		if(err) throw err
		client.query("update npc set ressonancia = (select id from ressonancia where nome = '"+update.ressonancia+"') where id = "+update.id,
			 (err, result) => {
		 	done();
		 	if(err){
			  res.json({error: "Error:"+err});
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
		if(err) throw err
		client.query("update npc set saude = "+req.body.saude+" where id = "+req.body.id,
			 (err, result) => {
			 	done()
		  if(err){
			  res.json({error: "Error:"+err});
			} else{
			  res.json(result.rows)
			}
		  
		});
	});
});

app.post("/saveDescription", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err) throw err
		client.query("update npc set descricao = "+req.body.descricao+" where id = "+req.body.id,
			 (err, result) => {
	 		done()
		  if(err){
			  res.json({error: "Error:"+err});
			} else{
			  res.json(result.rows)
			}
		  
		});
	});
});

app.get("/location", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err) throw err
		client.query(
			`
			select n.id id, n.nome nome, tn.nome tipo, b.nome bairro, n1, n2, n3, descricao
			from negocio n
			join tipo_negocio tn on tn.id = n.tipo_negocio
			join bairro b on b.id = n.bairro
			`,
			 (err, result) => {
		 	done()
		  if(err){
			  res.json({error: "Error:"+err});
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/moradias", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err) throw err
		client.query(
			`
			select m.id, m.nome, b.nome bairro
			from moradia m
			join bairro b on b.id = m.bairro
			`,
			 (err, result) => {
		 	done()
		  if(err){
			  res.json({error: "Error:"+err});
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/professions", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err) throw err
		client.query(
			`
			select *
			from profissao
			`,
			 (err, result) => {
	 		done()
		  if(err){
			  res.json({error: "Error:"+err});
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/professionsNpcs", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err) throw err
		client.query(
			`
			select *
			from profissao_npc
			`,
			 (err, result) => {
			 	done()
		  if(err){
			  res.json({error: "Error:"+err});
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/preferencias", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err) throw err
		client.query(
			`
			select npc, negocio, seed
			from preferencias_npcs 
			`,
			 (err, result) => {
			 	done()
		  if(err){
			  res.json({error: "Error:"+err});
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

app.get("/clientesNegocio", (req, res, next) => {
	pool.connect((err, client, done) => {
		if(err) throw err
		client.query(
			`
			select *
			from cliente_negocio 
			`,
			 (err, result) => {
		 	done()
		  if(err){
			  res.json({error: "Error:"+err});
			} else{
			  res.json(result.rows)
			}
		  
		})
	});
});

