function test() {
    $("#test").text("so far so good");
    $.get("/test", {}, test_handler);
}

function test_handler(resp) {
    $("#test").text(resp);
}

$(document).ready(test);
