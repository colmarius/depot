$(document).on("ready page:change", function() {
    $('.store .entry > img').click(function() {
        $(this).parent().find(':submit').click();
    });
});
