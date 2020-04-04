<?php
    /*$dataReceive = file_get_contents('php://input');
    echo var_dump($dataReceive);
    $data = json_decode($dataReceive,true);
    echo var_dump($data);
    echo $dataReceive;
    echo $data['genre'];*/
    require('conn.php');
    //echo "kết nối thành công";
    $sql = "SELECT movies.movie_id, movies.title 
            FROM movies,movie_genre 
            WHERE movies.movie_id = movie_genre.movie_id AND movie_genre.genre_id = 1
            ORDER BY movie_id DESC 
            LIMIT 5;"; 
    $result = mysqli_query($conn, $sql);    
    $data=array();
    $data_tmp=array();
    //echo "lấy đc kết quả";
    if ($result) {
        // Hàm `mysql_fetch_row()` sẽ chỉ fetch dữ liệu một record mỗi lần được gọi
        // do đó cần sử dụng vòng lặp While để lặp qua toàn bộ dữ liệu trên bảng posts
        //echo "d";

        while ($row = mysqli_fetch_row($result)) {
            $target_dir = "picture/poster/HanhDong/" . $row[0] .".jpg";
            $data_tmp{'movie_'.$row[0]} = array( 'link'=>$target_dir,'title' =>$row[1]);
            //echo $target_dir . "-" .$row[1]. "-" ;
        }
        $data["HanhDong"]=$data_tmp;
        $data_json = json_encode($data);
        //echo $data_json;
        //mysqli_free_result($result);
    }
    $sql = "SELECT movies.movie_id, movies.title 
    FROM movies,movie_genre 
    WHERE movies.movie_id = movie_genre.movie_id AND movie_genre.genre_id = 2
    ORDER BY movie_id DESC 
    LIMIT 5;"; 
    $result = mysqli_query($conn, $sql);    
    $data_tmp=array();
    //echo "lấy đc kết quả";
    if ($result) {
    // Hàm `mysql_fetch_row()` sẽ chỉ fetch dữ liệu một record mỗi lần được gọi
    // do đó cần sử dụng vòng lặp While để lặp qua toàn bộ dữ liệu trên bảng posts
    //echo "d";

    while ($row = mysqli_fetch_row($result)) {
        $target_dir = "picture/poster/KinhDi/" . $row[0] .".jpg";
        $data_tmp{'movie_'.$row[0]} = array( 'link'=>$target_dir,'title' =>$row[1]);
        //echo $target_dir . "-" .$row[1]. "-" ;
    }
    $data["KinhDi"]=$data_tmp;
   
    $data_json = json_encode($data);
    echo $data_json;
    mysqli_free_result($result);
    }
    $conn->close();
?>