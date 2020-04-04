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
        success: function (response) {
                var obj = JSON.parse(response);
                console.log(obj)
            for (let i = 1; i <= Object.keys(obj.HanhDong).length ; i++) {
                var tmp_str = 'movie_'+i;

                var tmp_link = '../'+obj.HanhDong[tmp_str].link;
                var tmp_id_poster ='#action_' + i
                var tmp_id_title= '#title_' +i
                $('.film_hanhDong div:nth-child('+ (i+1) +') a img').attr({
                    'src': '../'+obj.HanhDong[tmp_str].link
                });
                $('.film_hanhDong div:nth-child('+ (i+1) +') p').html(obj.HanhDong[tmp_str].title);
            }
            for (let i = 1; i <= Object.keys(obj.KinhDi).length ; i++) {
                var tmp_str = 'movie_'+i;
                var tmp_id_poster ='#action_' + i
                var tmp_id_title= '#title_' +i
                $('.film_KinhDi div:nth-child('+ (i+1) +') a img').attr({
                    'src': '../'+obj.KinhDi[tmp_str].link
                });
                $('.film_KinhDi div:nth-child('+ (i+1) +') p').html(obj.KinhDi[tmp_str].title);
            }
            
        }
    });;
});
