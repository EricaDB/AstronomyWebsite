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
