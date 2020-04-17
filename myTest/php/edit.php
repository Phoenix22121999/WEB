<?php
require_once('conn.php');
$id = $_POST['id'];
$sql = "SELECT movies.*, genres.genre 
        FROM movies, genres, movie_genre 
        WHERE movies.movie_id = $id 
            AND movies.movie_id = movie_genre.movie_id 
            AND genres.genre_id = movie_genre.genre_id;";
$result = mysqli_query($conn, $sql);
if ($result) {
    // Hàm `mysql_fetch_row()` sẽ chỉ fetch dữ liệu một record mỗi lần được gọi
    // do đó cần sử dụng vòng lặp While để lặp qua toàn bộ dữ liệu trên bảng posts
    //echo "d";
    while ($row = mysqli_fetch_row($result)) {
        $data = array(
            'id' => $row[0],
            'title' => $row[1],
            'description' => $row[2],
            'runtime' => $row[3],
            'release_date' => $row[4],
            'rating' => $row[5],
            'link' => $row[6],
            'poster' => '../picture/poster/' . $row[7] . '/' . $row[0] . '.jpg',
            'genre' => $row[7]

        );
        //echo $target_dir . "-" .$row[1]. "-" 
    }
    $data_json = json_encode($data);
    echo $data_json;
    mysqli_free_result($result);
}