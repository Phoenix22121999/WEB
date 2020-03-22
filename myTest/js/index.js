$(document).ready(function () {
    //console.log("dat");
    // var data ={
    //    genre: 1,
    //    name: 'dat1',
    //}
    //var sendData = JSON.stringify(data);
    //    console.log(sendData);
    $.ajax({
        type: "Post",
        url: "../php/loadPage.php",
        //data: sendData,
        success: function (response) {
                var obj = JSON.parse(response);
                console.log(obj)
                $('#content1').html(obj.name);
            for (let i = 1; i <= 5 ; i++) {
                var tmp_str = 'movie_'+i;
                console.log(obj.HanhDong[tmp_str].link)
                var tmp_link = '../'+obj.HanhDong[tmp_str].link;
                var tmp_id_poster ='#action_' + i
                var tmp_id_title= '#title_' +i
                //$('#test').html(tmp_id);
                $(tmp_id_poster).attr({
                    'src': tmp_link
                });
                $(tmp_id_title).html(obj.HanhDong[tmp_str].title);
            }
            
            //$('#test').html(arr[0]);
        }
    });;
    /*$.ajax({
        type: "Post",
        url: "../php/loadPageTitle.php",
        success: function (response) {
            var arr = response.split("-")       
            for (var x = 0; x < 5; x++) {
                var a = x+1
                var tmpID= '#title_' +a
                var tmp = '#testf' + a;
                
                //$(tmpID).html(arr[x]);
                $(tmp).html(tmpID + arr[x]);
            }
        }
    });;*/
});
