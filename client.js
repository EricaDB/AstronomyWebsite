function get_table(table) {
    $.get("/table", {"table": table}, display_table_handler);
}

function display_table_handler(resp) {
    document.getElementById("table").innerHTML = resp;
}

$(document).ready(get_table("constellation"));
