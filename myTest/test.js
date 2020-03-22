$(document).ready(function()
{ 
    /*var data = {
        name : user
    };
    var sendData = JSON.stringify(data);*/
    console.log("sendData");
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
});