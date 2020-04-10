<?php
require_once('conn.php');
$username = $_POST['username'];
$pwd = $_POST['pwd'];
$email = $_POST['email'];
$sql_1  =  "INSERT INTO user (username,password,email,role) VALUES ('$username','$pwd','$email',2)";
if ($conn->query($sql_1) === TRUE) {
    echo "New record created successfully";
    header('Location: ../html/login.html');
} else {
    echo "Error: " . $sql_1 . "<br>" . $conn->error;
}