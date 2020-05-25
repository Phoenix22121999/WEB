<?php
$search = $_POST['search'];

require_once('conn.php');

$sql = "SELECT movies.movie_id, movies.title ,movie_genre.genre_id
    FROM movies,movie_genre
    WHERE movies.title LIKE '%$search%' AND movies.movie_id = movie_genre.movie_id
    ORDER BY movie_id DESC ";
$result = mysqli_query($conn, $sql);
$data = array();
$data_tmp = array();
//echo "lấy đc kết quả";
if ($result) {
    // Hàm `mysql_fetch_row()` sẽ chỉ fetch dữ liệu một record mỗi lần được gọi
    // do đó cần sử dụng vòng lặp While để lặp qua toàn bộ dữ liệu trên bảng posts
    //echo "d";
    $i = 1;
    while ($row = mysqli_fetch_row($result)) {
        $target_dir =  $row[0] . ".jpg";
        $data{
            'movie_' . $i} = array('id' => $row[0], 'link' => $target_dir, 'title' => $row[1], "genre" => $row[2]);
        //echo $target_dir . "-" .$row[1]. "-" ;
        $i++;
    }

    //echo $data_json;
    //mysqli_free_result($result);
}
$data_json = json_encode($data);
echo $data_json;
$conn->close();