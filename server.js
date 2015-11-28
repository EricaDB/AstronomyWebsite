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
    database: "company",
    port:     3821
});
var port = 5791;

con.connect();
server.listen(port);

app.get("/test", spill_data);
app.use(express.static(__dirname));

function spill_data(req, res) {
console.log("got into spill data");
	var rows = con.query("SELECT * from employee;", function (err, rows) {
	if (!err) {
            var fnames = [];
            for (var row in rows) {
                console.log(rows[row]);
                fnames.push(rows[row].fname); 
            }
            console.log(fnames);
            res.json(fnames);
	} else {
            console.log("query error");
	} 
    });
}

