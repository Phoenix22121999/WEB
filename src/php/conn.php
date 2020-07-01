<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "cayphim";
    //echo " đã vào file-";
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    if (!$conn) {
        exit('Kết nối không thành công!');
    }
?>