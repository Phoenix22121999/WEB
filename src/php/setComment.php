<?php
$user_id = $_POST['user_id'];
$movie_id = $_POST['movie_id'];
$comment = $_POST['comment'];
require_once('conn.php');
$sql = "INSERT INTO cmt (user_id,movie_id,comment) VALUES ('$user_id','$movie_id','$comment')";
if ($conn->query($sql) === TRUE) {
    echo 1;
} else {
    echo "Error: " . $sql_1 . "<br>" . $conn->error;
}