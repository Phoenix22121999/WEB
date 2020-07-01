<?php
$id = $_POST['id'];
$genre = $_POST['genre'];
require_once('conn.php');
$sql = "SELECT movie_id, link, description
        FROM movies
        WHERE movie_id = $id;";
$data_tmp = array();
$result = mysqli_query($conn, $sql);
if ($result) {
    // Hàm `mysql_fetch_row()` sẽ chỉ fetch dữ liệu một record mỗi lần được gọi
    // do đó cần sử dụng vòng lặp While để lặp qua toàn bộ dữ liệu trên bảng posts
    //echo "d";
    while ($row = mysqli_fetch_row($result)) {
        $data['main'] = array('id' => $row[0], 'link' => $row[1], 'description' => $row[2]);
        //echo $target_dir . "-" .$row[1]. "-" 
    }
    //$data_json = json_encode($data);
    //echo $data_json;
    mysqli_free_result($result);
}
$sql_2 = "SELECT movies.movie_id ,movies.description
        FROM movies,movie_genre 
        WHERE movies.movie_id = movie_genre.movie_id AND movie_genre.genre_id = $genre  AND movies.movie_id != $id
        ORDER BY movie_id DESC 
        LIMIT 3;";
$result = mysqli_query($conn, $sql_2);
if ($result) {
    // Hàm `mysql_fetch_row()` sẽ chỉ fetch dữ liệu một record mỗi lần được gọi
    // do đó cần sử dụng vòng lặp While để lặp qua toàn bộ dữ liệu trên bảng posts
    //echo "d";
    $i = 1;
    while ($row = mysqli_fetch_row($result)) {
        $data{
            'movie_' . $i} = array('id' => $row[0], 'description' => $row[1]);
        //echo $target_dir . "-" .$row[1]. "-" 
        $i++;
    }
    $data_json = json_encode($data);
    echo $data_json;
    mysqli_free_result($result);
}
$conn->close();