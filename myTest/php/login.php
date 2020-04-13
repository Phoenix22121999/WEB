<?php
require_once('conn.php');
if (isset($_POST['pwd']) && isset($_POST['email'])) {
    $pwd = $_POST['pwd'];
    $email = $_POST['email'];
    $sql  =  "SELECT *
            FROM user
            WHERE email = '$email' ";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        // Hàm `mysql_fetch_row()` sẽ chỉ fetch dữ liệu một record mỗi lần được gọi
        // do đó cần sử dụng vòng lặp While để lặp qua toàn bộ dữ liệu trên bảng posts
        $row = mysqli_fetch_row($result);
        if ($row) {

            if ($row[2] == $pwd) {
                echo '1';
                $isLogin = true;
                setcookie('email', $email, time() + (86400 * 30), "/");
                setcookie('username', $row[1], time() + (86400 * 30), "/");
                setcookie('isLogin', $isLogin, time() + (86400 * 30), "/");
                setcookie('user_id', $row[0], time() + (86400 * 30), "/");
                setcookie('role', $row[4], time() + (86400 * 30), "/");
            } else
                echo 'Sai Mật Khẩu';
        } else {
            echo "Sai Email";
        }
    }
} else {
    echo 'Chưa Điền Đầy Đủ Thông Tin';
}