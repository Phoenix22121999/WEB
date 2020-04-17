<?php

require_once('conn.php');
$user_id = $_POST['user_id'];
$username = $_POST['username'];
$pwd = $_POST['pwd_new'];
$email = $_POST['email'];
if ($pwd != "") {
    $sql = "UPDATE user
            SET username = '$username', password = '$pwd', email = '$email'
            WHERE user_id = $user_id;";
} else if ($pwd == "") {
    $sql = "UPDATE user
            SET username = '$username', email = '$email'
            WHERE user_id = $user_id;";
}
if ($conn->query($sql) === TRUE) {
    echo '1';
    $isLogin = true;
    setcookie('email', urldecode($email), time() + (86400 * 30), "/");
    setcookie('username', $username, time() + (86400 * 30), "/");
    setcookie('isLogin', $isLogin, time() + (86400 * 30), "/");
} else {
    echo "Error: " . $sql_1 . "<br>" . $conn->error;
}