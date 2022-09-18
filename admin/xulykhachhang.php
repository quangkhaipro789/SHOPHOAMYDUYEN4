<?php
	include('../db/connect.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Khách hàng</title>
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-primary">
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav">
	      <li class="nav-item active">
	        <a class="nav-link text-white" href="xulydonhang.php">Đơn hàng <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link text-white" href="xulydanhmuc.php">Danh mục</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link text-white" href="xulysanpham.php">Sản phẩm</a>
	      </li>
	       <li class="nav-item">
	        <a class="nav-link text-white" href="xulydanhmucbaiviet.php">Danh mục Bài viết</a>
	      </li>
	         <li class="nav-item">
	        <a class="nav-link text-white" href="xulybaiviet.php">Bài viết</a>
	      </li>
	       <li class="nav-item">
	         <a class="nav-link text-white" href="xulykhachhang.php">Khách hàng</a>
	      </li>
	      
	    </ul>
	  </div>
	</nav><br><br>
	<div class="container-fluid">
		<div class="row">
			
			<div class="col-sm-12 col-md-12 col-lg-12">
				<div class="card">
				  <h5 class="card-header">
				    Khách hàng
				  </h5>
				  <div class="card-body">
				    <?php
						$sql_select_khachhang = mysqli_query($con,"SELECT * FROM tbl_khachhang,tbl_giaodich WHERE tbl_khachhang.khachhang_id=tbl_giaodich.khachhang_id GROUP BY tbl_giaodich.magiaodich ORDER BY tbl_khachhang.khachhang_id DESC"); 
						?> 
						<table class="table table-bordered table-striped">
							<tr>
								<th>Thứ tự</th>
								<th>Tên khách hàng</th>
								<th>Số điện thoại</th>
								<th>Địa chỉ</th>
								<th>Email</th>
								<th>Ngày mua</th>
								<th>Quản lý</th>
							</tr>
							<?php
							$i = 0;
							while($row_khachhang = mysqli_fetch_array($sql_select_khachhang)){ 
								$i++;
							?> 
							<tr>
								<td><?php echo $i; ?></td>
								
								<td><?php echo $row_khachhang['name']; ?></td>
								<td><?php echo $row_khachhang['phone']; ?></td>
								<td><?php echo $row_khachhang['address']; ?></td>
								
								<td><?php echo $row_khachhang['email'] ?></td>
								<td><?php echo $row_khachhang['ngaythang'] ?></td>
								<td><a class="btn btn-primary" href="?quanly=xemgiaodich&khachhang=<?php echo $row_khachhang['magiaodich'] ?>">Xem giao dịch</a></td>
							</tr>
							 <?php
							} 
							?> 
						</table>
				  </div>
				</div>
				
			</div>

			<div class="col-sm-12 col-md-12 col-lg-12 mt-4">
				<div class="card">
				  <h5 class="card-header">
				    Liệt kê lịch sử đơn hàng
				  </h5>
				  <div class="card-body">
				    <?php
						if(isset($_GET['khachhang'])){
							$magiaodich = $_GET['khachhang'];
						}else{
							$magiaodich = '';
						}
						$sql_select = mysqli_query($con,"SELECT * FROM tbl_giaodich,tbl_khachhang,tbl_sanpham WHERE tbl_giaodich.sanpham_id=tbl_sanpham.sanpham_id AND tbl_khachhang.khachhang_id=tbl_giaodich.khachhang_id AND tbl_giaodich.magiaodich='$magiaodich' ORDER BY tbl_giaodich.giaodich_id DESC"); 
						?> 
						<table class="table table-bordered table-striped">
							<tr>
								<th>Thứ tự</th>
								<th>Mã giao dịch</th>
								<th>Tên sản phẩm</th>
								<th>Ngày đặt</th>
								
							</tr>
							<?php
							$i = 0;
							while($row_donhang = mysqli_fetch_array($sql_select)){ 
								$i++;
							?> 
							<tr>
								<td><?php echo $i; ?></td>
								
								<td><?php echo $row_donhang['magiaodich']; ?></td>
							
								<td><?php echo $row_donhang['sanpham_name']; ?></td>
								
								<td><?php echo $row_donhang['ngaythang'] ?></td>
							
							
							</tr>
							 <?php
							} 
							?> 
						</table>
				  </div>
				</div>
				
			</div>
		</div>
	</div>
	
</body>
</html>