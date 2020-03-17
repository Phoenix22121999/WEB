<?php
$title = $_POST["title"];
$time = $_POST["time"];
$description = $_POST["description"];
$date = $_POST["date"];
$rate = $_POST["rate"];
$date_format = explode('-', $_POST['date']);
$mysqldate = $date_format[0] . '-' . $date_format[1] . '-' . $date_format[2];
echo $date . "<br>";
echo "y:" . $date_format[0] . "<br>";
echo "m:" . $date_format[1] . "<br>";
echo "d:" . $date_format[2] . "<br>";
echo $mysqldate . "<br>";

/*$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["fileUpload"]["name"]);

if (move_uploaded_file($_FILES["fileUpload"]["tmp_name"], $target_file)) {
    echo "The file " . basename($_FILES["fileUpload"]["name"]) . " has been uploaded.";
} else {
    echo "Sorry, there was an error uploading your file.";
}
echo "<br>";
*/
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cayphim";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql_1 = "INSERT INTO movies (title, description, runtime, release_date, rating) VALUES ('$title', '$description', $time, '$mysqldate', $rate)";
if ($conn->query($sql_1) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_1 . "<br>" . $conn->error;
}

$sql_2 = "SELECT * FROM movies WHERE title ='$title'";
$result = mysqli_query($conn, $sql_2);

if ($result) {
    // Hàm `mysql_fetch_row()` sẽ chỉ fetch dữ liệu một record mỗi lần được gọi
    // do đó cần sử dụng vòng lặp While để lặp qua toàn bộ dữ liệu trên bảng posts
    $row = mysqli_fetch_row($result);

    $target_dir = "picture/poster/";
    $arr = explode(".", $_FILES["fileUpload"]["name"]);
    $target_file = $target_dir . $row[0] . "." . end($arr);
    if (move_uploaded_file($_FILES["fileUpload"]["tmp_name"], $target_file)) {
        echo "The file " . basename($_FILES["fileUpload"]["name"]) . " has been uploaded.";
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
    echo "<br>";

    // Máy tính sẽ lưu kết quả từ việc truy vấn dữ liệu bảng
    // Do đó chúng ta nên giải phóng bộ nhớ sau khi hoàn tất đọc dữ liệu
    mysqli_free_result($result);
}
$conn->close();