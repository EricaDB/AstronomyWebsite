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
    database: "astronomy",
    port:     3821
});
var port = 5791;

con.connect();
server.listen(port);

app.get("/test", spill_data);
app.get("/table", spill_data);
app.get("/timeline", make_timeline);
app.use(express.static(__dirname));

console.log("working");

function spill_data(req, res) {
    if (req.query.table === null) {
        console.log("server got query with no table specified");
        return;
    }

    // using prepared statement to avoid SQL injection
    var query = "SELECT * from (" + trim(con.escape(req.query.table)) + ");";
	var rows = con.query(query, function (err, rows) {
        if (!err) {
            var rows_array = [];
            for (var row in rows) {
                rows_array.push(rows[row]);
            }
            var keys = Object.keys(rows[0]);
            res.json(build_table(rows_array, keys));
        } else {
            console.log("query error");
        }
    });
}

function build_table(rows, keys) {
    var table = "";

    // add the header
    table += "<tr>";
    for (var i = 0; i < keys.length; i++) {
        table += "<td>";
        table += keys[i];
        table += "</td>";
    }
    table += "</tr>";

    // add the rows
    for (i = 0; i < rows.length; i++) {
        table += "<tr>";
        for (var j = 0; j < keys.length; j++) {
            table += "<td>";
            table += rows[i][keys[j]];
            table += "</td>";
        }
        table += "</tr>";
    }

    return table;
}


function trim(string) {
    var trimmed_string = "";
    for (var i = 1; i < string.length - 1; i++) {
        trimmed_string += string[i];
    }
    return trimmed_string;
}

function make_timeline() {
    var query = "SELECT year_discovered, designation AS name" +
                "FROM asteroid WHERE year_discovered IS NOT NULL" +
                "union all" +
                "SELECT year_discovered, name" +
                "FROM comet WHERE year_discovered IS NOT NULL" +
                "union all" +
                "SELECT year_discovered, name" +
                "FROM galaxy WHERE year_discovered IS NOT NULL" +
                "union all" +
                "SELECT year_discovered, name" +
                "FROM moon WHERE year_discovered IS NOT NULL" +
                "union all" +
                "SELECT year_discovered, name" +
                "FROM nebula WHERE year_discovered IS NOT NULL" +
                "union all" +
                "SELECT year_discovered, name" +
                "FROM planet WHERE year_discovered IS NOT NULL" +
                "union all" +
                "SELECT year_discovered, name" +
                "FROM star WHERE year_discovered IS NOT NULL" +
                "ORDER BY year_discovered;";
    var rows = con.query(query, function (err, rows) {
        if (!err) {
            var rows_array = [];
            for (var row in rows) {
                rows_array.push(rows[row]);
            }
            var keys = ["Year", "Discovery"];
            res.json(build_table(rows_array, keys));
        } else {
            console.log("query error");
        }
    });
}
