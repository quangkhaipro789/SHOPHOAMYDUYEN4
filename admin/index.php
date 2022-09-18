<?php
	session_start();
 include('../db/connect.php'); 
?>
<?php
	// session_destroy();
	// unset('dangnhap');
	if(isset($_POST['dangnhap'])) {
		$taikhoan = $_POST['taikhoan'];
		$matkhau = md5($_POST['matkhau']);
		if($taikhoan=='' || $matkhau ==''){
			echo '<p>Xin nhập đủ</p>';
		}else{
			$sql_select_admin = mysqli_query($con,"SELECT * FROM tbl_admin WHERE email='$taikhoan' AND password='$matkhau' LIMIT 1");
			$count = mysqli_num_rows($sql_select_admin);
			$row_dangnhap = mysqli_fetch_array($sql_select_admin);
			if($count>0){
				$_SESSION['dangnhap'] = $row_dangnhap['admin_name'];
				$_SESSION['admin_id'] = $row_dangnhap['admin_id'];
				header('Location: dashboard.php');
			}else{
				echo '<p class="text-center text-white">Tài khoản hoặc mật khẩu sai</p>';
			}
		}
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Đăng nhập Admin</title>
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<style type="text/css">
		body{
			background:
			linear-gradient(
				rgba(0,0,0, 0.5), 
				rgba(0,0,0, 0.5)
				),
			url(img/bg-login.jpg);
			background-size: cover;
			background-position: center;
			background-repeat: no-repeat;
		}
	</style>
</head>
<body>
	<div class="d-flex align-items-center justify-content-center" style="height: 100vh;">
		<div class="container w-100">
			<div class="row">
				<div class="col-sm-12 col-md-6 col-lg-5 mx-auto w-100">
					<div class="p-4 bg-white shadow" style="border-radius: 12px;">
						<h2 align="center"> Đăng nhập</h2>
						<form action="" method="POST">
							<label>Tài khoản</label>
							<input type="text" name="taikhoan" placeholder="Email" class="form-control"><br>
							<label>Mật khẩu</label>
							<input type="password" name="matkhau" placeholder="Mật khẩu" class="form-control"><br>
							<input type="submit" name="dangnhap" class="btn btn-primary btn-block text-center" value="Đăng nhập">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>