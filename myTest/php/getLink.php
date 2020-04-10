<?php
$id = $_POST['id'];
require_once('conn.php');
$sql = "SELECT movie_id, link
        FROM movies
        WHERE movie_id = $id;";

$result = mysqli_query($conn, $sql);
if ($result) {
    // Hàm `mysql_fetch_row()` sẽ chỉ fetch dữ liệu một record mỗi lần được gọi
    // do đó cần sử dụng vòng lặp While để lặp qua toàn bộ dữ liệu trên bảng posts
    //echo "d";
    while ($row = mysqli_fetch_row($result)) {
        $data = array('id' => $row[0], 'link' => $row[1]);
        //echo $target_dir . "-" .$row[1]. "-" 
    }
    $data_json = json_encode($data);
    echo $data_json;
    //mysqli_free_result($result);
}
$conn->close();