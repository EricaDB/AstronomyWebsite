function display_table_handler(resp) {
    document.getElementById("table").innerHTML = resp;
}

function display_append_handler(resp) {
    document.getElementById("table").innerHTML += resp;
}

function get_table(table) {
    $.get("/table", {"table": table}, display_table_handler);
}

function get_timeline() {
    $.get("/timeline", {}, display_table_handler);
}

function get_extremes() {
    document.getElementById("table").innerHTML = "";
    $.get("/largest_star", {}, display_append_handler);
    $.get("/smallest_star", {}, display_append_handler);
    $.get("/brightest_star_cluster", {}, display_append_handler);
    $.get("/most_faint_star_cluster", {}, display_append_handler);
    $.get("/oldest_star_cluster", {}, display_append_handler);
    $.get("/newest_star_cluster", {}, display_append_handler);
    $.get("/planet_max_period", {}, display_append_handler);
    $.get("/planet_min_period", {}, display_append_handler);
    $.get("/farthest_from_earth", {}, display_append_handler);
}

function get_images() {
    $.get("/images", {}, display_table_handler);
}

function get_objects_by_researcher() {
    $.get("/researchers", {}, display_table_handler);
}

function get_planets_to_stars() {
    $.get("/planets_to_stars", {}, display_table_handler);
}

function get_random_object() {
    $.get("/random_object", {}, display_table_handler);
}

function get_insert_planet() {
    document.getElementById("table").innerHTML =
        "<br>Planet Name:&nbsp;&nbsp;" +
        "<input id=\"planet_name\" type=\"text\" name=\"name\">" +
        "<br><br>The star the planet orbits:&nbsp;&nbsp;" +
        "<input id=\"star_name\" type=\"text\" name=\"star_name\">" +
        "<br><br>Orbital Period:&nbsp;&nbsp;" +
        "<input id=\"orbital_period\" type=\"text\" name=\"orbital_period\">" +
        "<br><br>Researcher:&nbsp;&nbsp;" +
        "<input id=\"researcher_name\" type=\"text\" name=\"researcher_name\" value=\"null\">" +
        "<br><br>Year Discovered:&nbsp;&nbsp;" +
        "<input id=\"year_discovered\" type=\"text\" name=\"year_discovered\">" +
        "<br><br>Mass in Earth Units:&nbsp;&nbsp;" +
        "<input id=\"mass_earth_units\" type=\"text\" name=\"mass_earth_units\">" +
        "<br><br>" +
        "<button type=\"button\" onclick=\"insert_planet()\">" +
        "Insert Planet</button><br><br>";
}

function insert_planet() {
    var name = $('#planet_name').val();
    var star = $('#star_name').val();
    var orbital_period = $('#orbital_period').val();
    var researcher = $('#researcher_name').val();
    var year_discovered = $('#year_discovered').val();
    var mass_earth_units = $('#mass_earth_units').val();
    $.get("/insert_planet",
        {
            name: name,
            star: star,
            orbital_period: orbital_period,
            researcher: researcher,
            year_discovered: year_discovered,
            mass_earth_units: mass_earth_units
        },
        function() {
            $("#table").innerHTML = "<h3>Planet Inserted</h3>";
        });
}

function get_search_results() {
    var button = $('input[name="search"]:checked').val();
    var input = $('#search_box').val();
    switch (button) {
        case "search_by_constellation":
            $.get("/search_by_constellation",
                  {"input": input},
                  display_table_handler);
            break;
        case "search_by_name":
            $.get("/search_by_name",
                  {"input": input},
                  display_table_handler);
            break;
        case "search_entire_database":
            $.get("/search_entire_database",
                  {"input": input},
                  display_table_handler);
            break;
    }
}

$(document).ready(get_table("constellation"));
