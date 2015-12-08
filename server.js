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

var TABLES = [
    "asteroid",
    "comet",
    "constellation",
    "galaxy",
    "galaxy_group",
    "moon",
    "nebula",
    "planet",
    "researcher",
    "star",
    "star_cluster",
    "supernova",
    "telescope",
];

con.connect();
server.listen(port);

app.get("/test", spill_data);
app.get("/table", spill_data);
app.get("/timeline", make_timeline);
app.get("/random_object", get_random_object);
app.get("/search", get_search_results);
app.use(express.static(__dirname));

console.log("working");

function random_int(n) {
    return Math.floor(Math.random() * n);
}

function trim(string) {
    var trimmed_string = "";
    for (var i = 1; i < string.length - 1; i++) {
        trimmed_string += string[i];
    }
    return trimmed_string;
}

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

function make_timeline(req, res) {
    var query = "SELECT year_discovered, designation AS name " +
                "FROM asteroid WHERE year_discovered IS NOT NULL " +
                "union all " +
                "SELECT year_discovered, name " +
                "FROM comet WHERE year_discovered IS NOT NULL " +
                "union all " +
                "SELECT year_discovered, name " +
                "FROM galaxy WHERE year_discovered IS NOT NULL " +
                "union all " +
                "SELECT year_discovered, name " +
                "FROM moon WHERE year_discovered IS NOT NULL " +
                "union all " +
                "SELECT year_discovered, name " +
                "FROM nebula WHERE year_discovered IS NOT NULL " +
                "union all " +
                "SELECT year_discovered, name " +
                "FROM planet WHERE year_discovered IS NOT NULL " +
                "union all " +
                "SELECT year_discovered, name " +
                "FROM star WHERE year_discovered IS NOT NULL " +
                "ORDER BY year_discovered;";
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

function get_random_object(req, res) {
    var table = TABLES[random_int(TABLES.length)];
    var query = "SELECT COUNT(*) AS count FROM " + table + ";";

    var rows  = con.query(query, function (err, rows) {
        if (!err) {
            var id = random_int(rows[0].count) + 1; // + 1 since ids start at 1
            var query = "SELECT * FROM " + table + " WHERE " + table +
                        "_id = " + id;
            var random_object = con.query(query, function (err, random_object) {
                if (!err) {
                    var keys = Object.keys(random_object[0]);
                    var rows_array = build_rows_array(random_object);
                    res.json(build_table(rows_array, keys));
                } else {
                    console.log("query error");
                }
            });

        } else {
            console.log("query error");
        }
    });
}

function get_search_results(req, res) {
    console.log(req.query);
    var result;
    switch(req.query.button) {
        case "search_by_constellation":
            if (req.query.input === "") {
                res.json("");
            } else {
                res.json(search_by_constellation(req.query.input));
            }
            break;
        case "search_by_name":
            result = search_by_name(req.query.input);
            break;
        case "search_entire_database":
            result = search_entire_database(req.query.input);
            break;
        default:
            result = "";
    }
}

function search_by_constellation(con_name) {
    // using prepared statement to avoid SQL injection
    var constellation_query = "SELECT * FROM constellation WHERE name LIKE '" +
                               trim(con.escape(con_name)) + "';";
    var con_table;
    var con_rows = con.query(constellation_query, function (err, rows) {
       if (!err) {
           var con_rows_array = build_rows_array(rows);
           var keys = Object.keys(rows[0]);
           var con_table = build_table(con_rows_array, keys);
           console.log(con_table);
           return con_table;
       } else {
           console.log("query error");
           return "";
       }
    });
}

function search_by_name(name) {
    return "";
}

function search_entire_database(string) {
    return "";
}

function build_rows_array(rows) {
    var rows_array = [];
    for (var row in rows) {
        rows_array.push(rows[row]);
    }
    return rows_array;
}
