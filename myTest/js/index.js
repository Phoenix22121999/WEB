$(document).ready(function () {
    $.ajax({
        type: "Post",
        url: "../php/loadPage.php",
        success: function (response) {
            var arr = response.split("-")
            var tmp = '../'+arr[0]
            for (let i = 0; i < 5 ; i++) {
                var tmp_link = '../'+arr[i]
                var tmp_id ='#action_' + (i+1)
                //$('#test').html(tmp_id);
                $(tmp_id).attr({
                    'src': tmp_link
                });
            }
            
            //$('#test').html(arr[0]);
        }
    });;
    $.ajax({
        type: "Post",
        url: "../php/loadPageTitle.php",
        success: function (response) {
            var arr = response.split("-")       
            $('#test1').html(arr[0]);
            $('#test2').html(arr[1]);
            $('#test3').html(arr[2]);
            $('#test4').html(arr[3]);
            $('#test5').html(arr[4]);
            for (var x = 0; x < 5; x++) {
                var a = x+1
                var tmpID= '#title_' +a
                var tmp = '#testf' + a;
                
                $(tmpID).html(arr[x]);
                $(tmp).html(tmpID + arr[x]);
            }
        }
    });;
});