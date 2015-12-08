function get_table(table) {
    $.get("/table", {"table": table}, display_table_handler);
}

function display_table_handler(resp) {
    document.getElementById("table").innerHTML = resp;
}

function get_timeline() {
    $.get("/timeline", {}, display_table_handler);
}

function get_search_results() {
    var button = $('input[name="search"]:checked').val();
    var input = $('#search_box').val();
    $.get("/search",
          {"button": button, "input": input},
          display_table_handler);
}

$(document).ready(get_table("constellation"));
