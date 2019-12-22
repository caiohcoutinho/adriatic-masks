import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';

var express = require("express");
var app = express();
const { Client } = require('pg')
const client = new Client()

app.listen(3000, () => {
 console.log("Server running on port 3000");
});

app.get("/url", (req, res, next) => {
	client.connect()
	client.query('SELECT $1::text as message', ['Hello world!'], (err, result) => {
	  //console.log(err ? err.stack : result.rows[0].message) // Hello World!
	  res.json([result.rows[0].message])
	  client.end()
	})
});