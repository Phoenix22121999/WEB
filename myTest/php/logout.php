<?php
$isLogin = false;
setcookie('email', ' ', time() + (86400 * 30), "/");
setcookie('username', ' ', time() + (86400 * 30), "/");
setcookie('isLogin', $isLogin, time() + (86400 * 30), "/");
setcookie('role', ' ', time() + (86400 * 30), "/");
header('Location: ../html/index.html');