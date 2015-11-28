"use strict";
/*jslint vars: true, plusplus: true, devel: true, nomen: true*/
/*global define */

var express = require("express");
var http    = require("http");
var mysql   = require("mysql");

var app     = express();
var server  = http.createServer(app);

var con = mysql.createConnection({
    host:     "ix.cs.uoregon.edu",
    user:     "sberg",
    password: "7dell7",
    database: "sakila.db"
});
var port = 3000;

//con.connect();
server.listen(port);

app.use(express.static(__dirname));
