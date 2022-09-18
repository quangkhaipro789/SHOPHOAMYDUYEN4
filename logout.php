<?php
session_start();
unset($_SESSION['dangnhap_home']);
session_destroy();
header("Location:index.php");
?>