$(document).ready(function () {
    $.ajax({
        type: "Post",
        url: "../php/loadPage.php",
        success: function (response) {
            var arr = response.split("-")
            $('.action_1').attr({
                'src': arr[0]
            });
            $('.test').html(arr[1]);
        }
    });;
});