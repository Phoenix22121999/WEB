<?php
$id = $_POST['id'];
require_once('conn.php');
$sql = "SELECT user.username, cmt.comment
        FROM cmt,user
        WHERE movie_id = $id and user.user_id = cmt.user_id;";
$result = mysqli_query($conn, $sql);
if ($result) {
    // Hàm `mysql_fetch_row()` sẽ chỉ fetch dữ liệu một record mỗi lần được gọi
    // do đó cần sử dụng vòng lặp While để lặp qua toàn bộ dữ liệu trên bảng posts
    //echo "d";
    $i = 1;
    while ($row = mysqli_fetch_row($result)) {
        $data{
        $i} = array('username' => $row[0], 'comment' => $row[1]);
        //echo $target_dir . "-" .$row[1]. "-" 
        $i++;
    }
    $data_json = json_encode($data);
    echo $data_json;
    //mysqli_free_result($result);
}