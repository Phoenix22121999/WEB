$(document).ready(function () {
    //console.log('vao')
    $('#form').submit(function () { 
        console.log('dat')
        alert( {
            email : $('#email').val(),
            pwd : $('pwd').val(),
        })
        $.ajax({
            type: "post",
            url: "../php/login.php",
            data: {
                email : $('#email').val(),
                pwd : $('pwd').val(),
            },
            success: function (response) {
                alert(response)
            }
        });
        
    });
});