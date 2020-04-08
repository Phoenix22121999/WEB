$(document).ready(function () {

    
    console.log(localStorage.getItem('genre_id'))
    $.ajax({
        type: "post",
        url: "../php/loadPage20.php",
        data: {
            'genre': localStorage.getItem('genre_id')
        },
        success: function (response) {
            var obj = JSON.parse(response);
            console.log(obj)
            var l = Object.keys(obj).length;
            for (let i = 1; i <= l; i++) {
                var tmp_str = 'movie_'+i;
                var tmp_link = '../'+obj[tmp_str].link;
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
                var div = $('<div>')
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