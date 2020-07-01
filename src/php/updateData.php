<?php

require_once('conn.php');
$title = $_POST["title"];
$time = $_POST["time"];
$description = $_POST["description"];
$date = $_POST["date"];
$rate = $_POST["rate"];
$genre = $_POST["genre"];
$link = $_POST["link"];
$id = $_COOKIE['edit_id'];
$date_format = explode('-', $_POST['date']);
$mysqldate = $date_format[0] . '-' . $date_format[1] . '-' . $date_format[2];
echo $date . "<br>";
echo "y:" . $date_format[0] . "<br>";
echo "m:" . $date_format[1] . "<br>";
echo "d:" . $date_format[2] . "<br>";
echo $mysqldate . "<br>";
echo $genre . "<br>";
$sql = "UPDATE movies
        SET title = '$title', description = '$description', runtime = $time , release_date = '$mysqldate', rating = $rate, link = '$link'
        WHERE movie_id =$id;";
if ($conn->query($sql) === TRUE) {
    header('Location: ../php/list.php');
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}