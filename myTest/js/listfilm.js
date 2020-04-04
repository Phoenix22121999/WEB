$(document).ready(function () {


    for (let i = 0; i < array.length; i++) {
        var a = $('<a>',{
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
        
    }
    
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