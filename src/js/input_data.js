$(document).ready(function () {
    if (getCookie('edit_id')!="") {
        console.log(getCookie('edit_id'))
        $.ajax({
            type: "post",
            url: "../php/edit.php",
            data: {
                id : getCookie('edit_id')
            },
            success: function (response) {
                var obj = JSON.parse(response)
                console.log(obj)
                $('#title').val(obj.title);
                $('#time').val(obj.runtime);
                $('#link').val(obj.link);
                $('#description').val(obj.description);
                $('#rate').val(obj.rating);
                $('#date').val(obj.release_date.substr(0, 10));
                
                $('<img>',{
                    'class': 'poster',
                    attr:{
                        src: obj.poster       
                    },
                }).appendTo('#poster')
                $('h2').html("Edit Movie");
                $('#submit').html("Save");
                $('form').attr('action', '../php/updateData.php');
                $( "#fileUpload" ).prop( "disabled", true );
            }
        });
    }
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