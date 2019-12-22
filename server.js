var express = require("express");
var { Client } = require('pg');
var app = express();
const client = new Client()



app.listen(3000, () => {
 console.log("Server running on port 3000");
});

app.get("/npc", (req, res, next) => {
	client.connect()
	client.query('SELECT * from npc', (err, result) => {
	  res.json(result.rows)
	  client.end()
	})
});

app.get("*", (req, res, next) => {
	client.connect()
	client.query('SELECT * from npc', (err, result) => {
	  res.json(result.rows)
	  client.end()
	})
});