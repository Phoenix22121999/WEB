<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "cayphim";
    echo " đã vào file-";
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    if (!$conn) {
        exit('Kết nối không thành công!');
    }
    echo "kết nối thành công";
    $sql = "SELECT movies_id FROM movies 
            ORDER BY movies_id DESC 
            LIMIT 5;";
    $result = mysqli_query($conn, $sql);
    
    
    if ($result) {
        echo "lấy đc kết quả";
        // Hàm `mysql_fetch_row()` sẽ chỉ fetch dữ liệu một record mỗi lần được gọi
        // do đó cần sử dụng vòng lặp While để lặp qua toàn bộ dữ liệu trên bảng posts
        echo "d";
        while ($row = mysqli_fetch_row($result)) {
            $target_dir = "picture/poster/" . $row[0] ."jpg";
            //echo $target_dir . "-";
        }
        $target_dir = "picture/poster/";
        $arr = explode(".", $_FILES["fileUpload"]["name"]);
        $target_file = $target_dir . $row[0] . "." . end($arr);
        mysqli_free_result($result);
    }else{
        echo "ko lấy đc kết quả";
    }
    $conn->close();
?>