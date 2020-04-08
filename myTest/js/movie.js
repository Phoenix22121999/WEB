$(document).ready(function () {

    //alert(getCookie('id'))
    $.ajax({
        type: "post",
        url: "../php/getLink.php",
        data: {
            'id': getCookie('id')
        },
        success: function (response) {
            var obj = JSON.parse(response)
            $('iframe').attr('src', obj.link);
        }
    });

    $.ajax({
        type: "post",
        url: "../php/getComment.php",
        data: {
            'id': getCookie('id')
        },
        success: function (response) {
            var obj = JSON.parse(response)
            for(let i =1; i <= Object.keys(obj).length; i++){
                var name = $('<p>',{
                    'class': 'name',
                    text: obj[i].username
                })
                var comment = $('<p>',{
                    'class': 'comment',
                    text: obj[i].comment
                })
                var item=$('<div>',{
                    'class': 'commentItem'
                })
                $(name).appendTo(item);
                $(comment).appendTo(item);
                $(item).appendTo(".commentBox");
            }
            
        }
    });
    
    function getCookie(cname) {
        var name = cname + "=";
        var ca = document.cookie.split(';');
        for(var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') {
                c = c.substring(1);
            }
            if (c.indexOf(name) == 0) {
                return c.substring(name.length, c.length);
            }
        }
        return "";
    } 
});