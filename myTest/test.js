$(document).ready(function () {
    /*var data = {
        name : user
    };
    var sendData = JSON.stringify(data);*/
    //console.log("sendData");
    /*for (let i = 1; i <= 5 ; i++) {
        //$('#test').html(tmp_id); film_hanhDong a:nth-child(2)
        console.log('.film_hanhDong div:nth-child('+ (i+1) +') a');
        $('.film_hanhDong div:nth-child('+ (i+1) +') a img').attr({
            'src': './picture/HanhDong/1.jpg'
        });
        //$('.film:nth-child('+ (i+1) +')').html("");
        $('.film_hanhDong div:nth-child('+ (i+1) +') p').html('dat');
    }*/

    //khai báo biến submit form lấy đối tượng nút submit
    /* var submit = $("button[type='submit']");

       //khi nút submit được click
     
         //khai báo các biến dữ liệu gửi lên server
         var user = $("input[name='user']").val(); //lấy giá trị trong input user
         //Kiểm tra xem trường đã được nhập hay chưa
         if(user == ''){
             alert('Vui lòng nhập Tên người dùng');
             return false;
         }*/

    //Lấy toàn bộ dữ liệu trong Form

    /*$.ajax({
        type : 'POST', //Sử dụng kiểu gửi dữ liệu POST
        url : 'test.php', //gửi dữ liệu sang trang data.php
        data : sendData, //dữ liệu sẽ được gửi
        dataType: 'JSON',
        success : function(data)  // Hàm thực thi khi nhận dữ liệu được từ server
        { 
        
        if(data == 'false') 
        {
            alert('Không có người dùng');
        }else{
            var sendData = JSON.stringify(data);
            var obj = JSON.parse(sendData);
            console.log(obj.name)
            $('#content1').html(obj.name);
        }
        }
    });
        return false;
    */
    //     var a = $('<a>',{
    //     href:"#"
    //     })
    //     $('<img>',{
    //         'class': 'poster',
    //         attr:{
    //             src:"./picture/poster/HanhDong/1.jpg"           
    //         },
    //         css:{
    //             'width': '100px',
    //             'height': '200px'
    //         }
    //     }).appendTo(a)
    //     var p = $('<p>',{
    //         'class': 'title',
    //         text: "title"
    //     })
    //     var div = $('<div>')
    //     $(a).appendTo(div);
    //     $(p).appendTo(div);
    //    $(div).appendTo(".film_hanhDong");
    // $.ajax({
    //     type: "Post",
    //     url: "./php/loadPage12.php",
    //     success: function (response) {
    //         var obj = JSON.parse(response);
    //         console.log(obj)
    //         let count = 0;
    //         for (let i = 1; i <= 3; i++) {
    //             for (let z = 1; z <= 4; z++) {
    //                 count++;
    //                 if (count <= Object.keys(obj).length) {
    //                     var tmp_str = 'movie_' + count;
    //                     $('.carousel-inner .carousel-item:nth-child(' + i + ') .img:nth-child(' + z + ') img ').attr(
    //                         'src', './' + obj[tmp_str].link
    //                     );
    //                 }
    //             }
    //         }
    //     }
    // });;

    

    
        console.log(localStorage.getItem('genre_id'))
        $.ajax({
            type: "post",
            url: "./php/loadPage20.php",
            data: {
                'genre': localStorage.getItem('genre_id')
            },
            success: function (response) {
                var obj = JSON.parse(response);
                console.log(obj)
                var l = Object.keys(obj).length;
                if(localStorage.getItem('genre_id')==1){
                    var genre="HanhDong"
                }else if(localStorage.getItem('genre_id')==2){
                    var genre="KinhDi"
                }
                for (let i = 1; i <= l; i++) {
                    var tmp_str = 'movie_'+i;
                    var tmp_link = './picture/poster/'+genre+"/"+obj[tmp_str].link;
                    var a = $('<a>',{
                        href:"#"
                        })
                    $('<img>',{
                        'class': 'poster',
                        attr:{
                            src: tmp_link       
                        },
                    }).appendTo(a)
                    var p = $('<p>',{
                        'class': 'title',
                        text: obj[tmp_str].title
                    })
                    var div = $('<div>',{
                        'class': 'movie'
                    })
                    $(a).appendTo(div);
                    $(p).appendTo(div);
                    $(div).appendTo(".body_web");
                    
                }
            }
        })
    
        
        /*var a = $('<a>',{
            href:"#"
            })
            $('<img>',{
                'class': 'poster',
                attr:{
                    src:"./picture/poster/HanhDong/1.jpg"           
                },
                css:{
                    'width': '100px',
                    'height': '200px'
                }
            }).appendTo(a)
            var p = $('<p>',{
                'class': 'title',
                text: "title"
            })
            var div = $('<div>')
            $(a).appendTo(div);
            $(p).appendTo(div);
            $(div).appendTo(".body_web");
            console.log("dat")*/
    
});