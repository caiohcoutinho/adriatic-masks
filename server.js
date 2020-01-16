var express = require("express");
var { Client } = require('pg');
var app = express();
var bodyParser = require('body-parser');
app.use( bodyParser.json() );       
app.use(bodyParser.urlencoded({     
  extended: true
}));
app.use(express.json());       // to support JSON-encoded bodies
app.use(express.urlencoded()); // to support URL-encoded bodies

app.use(express.static('public'))

app.listen(3000, () => {
	console.log("Server running on port 3000");
});

app.get("/npc", (req, res, next) => {
	const client = new Client()
	client.connect()
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
			saude_max
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
		join natureza_obrigacao on natureza_obrigacao.id = npc.natureza_obrigacao
		join moradia on moradia.id = npc.moradia
		order by npc.id
		`,
		 (err, result) => {
	  res.json(result.rows)
	  client.end()
	});
});

app.post("/saveResources", (req, res, next) => {
	const client = new Client()
	client.connect()
	client.query("update npc set recursos = "+req.body.recursos+" where id = "+req.body.id,
		 (err, result) => {
	  res.json(result.rows)
	  client.end()
	});
});

app.post("/saveHealth", (req, res, next) => {
	const client = new Client()
	client.connect()
	client.query("update npc set saude = "+req.body.saude+" where id = "+req.body.id,
		 (err, result) => {
	  res.json(result.rows)
	  client.end()
	});
});

app.get("/location", (req, res, next) => {
	const client = new Client()
	client.connect()
	client.query(
		`
		select n.id id, n.nome nome, tn.nome tipo, b.nome bairro, n1, n2, n3
		from negocio n
		join tipo_negocio tn on tn.id = n.tipo_negocio
		join bairro b on b.id = n.bairro
		`,
		 (err, result) => {
	  res.json(result.rows)
	  client.end()
	})
});

app.get("/moradias", (req, res, next) => {
	const client = new Client()
	client.connect()
	client.query(
		`
		select m.id, m.nome, b.nome bairro
		from moradia m
		join bairro b on b.id = m.bairro
		`,
		 (err, result) => {
	  res.json(result.rows)
	  client.end()
	})
});

app.get("/professions", (req, res, next) => {
	const client = new Client()
	client.connect()
	client.query(
		`
		select *
		from profissao
		`,
		 (err, result) => {
	  res.json(result.rows)
	  client.end()
	})
});

app.get("/professionsNpcs", (req, res, next) => {
	const client = new Client()
	client.connect()
	client.query(
		`
		select *
		from profissao_npc
		`,
		 (err, result) => {
	  res.json(result.rows)
	  client.end()
	})
});

app.get("/preferencias", (req, res, next) => {
	const client = new Client()
	client.connect()
	client.query(
		`
		select npc, negocio, seed
		from preferencias_npcs 
		`,
		 (err, result) => {
	  res.json(result.rows)
	  client.end()
	})
});

app.get("/clientesNegocio", (req, res, next) => {
	const client = new Client()
	client.connect()
	client.query(
		`
		select *
		from cliente_negocio 
		`,
		 (err, result) => {
	  res.json(result.rows)
	  client.end()
	})
});

