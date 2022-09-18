<?php
	include('../db/connect.php');
?>
<?php 
if(isset($_POST['capnhatdonhang'])){
	$xuly = $_POST['xuly'];
	$mahang = $_POST['mahang_xuly'];
	$sql_update_donhang = mysqli_query($con,"UPDATE tbl_donhang SET tinhtrang='$xuly' WHERE mahang='$mahang'");
	$sql_update_giaodich = mysqli_query($con,"UPDATE tbl_giaodich SET tinhtrangdon='$xuly' WHERE magiaodich='$mahang'");
}

?>
<?php
	if(isset($_GET['xoadonhang'])){
		$mahang = $_GET['xoadonhang'];
		$sql_delete = mysqli_query($con,"DELETE FROM tbl_donhang WHERE mahang='$mahang'");
		header('Location:xulydonhang.php');
	} 
	if(isset($_GET['xacnhanhuy'])&& isset($_GET['mahang'])){
		$huydon = $_GET['xacnhanhuy'];
		$magiaodich = $_GET['mahang'];
	}else{
		$huydon = '';
		$magiaodich = '';
	}
	$sql_update_donhang = mysqli_query($con,"UPDATE tbl_donhang SET huydon='$huydon' WHERE mahang='$magiaodich'");
	$sql_update_giaodich = mysqli_query($con,"UPDATE tbl_giaodich SET huydon='$huydon' WHERE magiaodich='$magiaodich'");

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Đơn hàng</title>
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
			 <?php
			if(isset($_GET['quanly'])=='xemdonhang'){
				$mahang = $_GET['mahang'];
				$sql_chitiet = mysqli_query($con,"SELECT * FROM tbl_donhang,tbl_sanpham WHERE tbl_donhang.sanpham_id=tbl_sanpham.sanpham_id AND tbl_donhang.mahang='$mahang'");
				?>
				<div class="col-md-12">
				<p>Xem chi tiết đơn hàng</p>
			<form action="" method="POST">
				<table class="table table-bordered ">
					<tr>
						<th>Thứ tự</th>
						<th>Mã hàng</th>
						<th>Tên sản phẩm</th>
						<th>Số lượng</th>
						<th>Giá</th>
						<th>Tổng tiền</th>
						<th>Ngày đặt</th>

						
						<!-- <th>Quản lý</th> -->
					</tr>
					<?php
					$i = 0;
					while($row_donhang = mysqli_fetch_array($sql_chitiet)){ 
						$i++;
					?> 
					<tr>
						<td><?php echo $i; ?></td>
						<td><?php echo $row_donhang['mahang']; ?></td>
						
						<td><?php echo $row_donhang['sanpham_name']; ?></td>
						<td><?php echo $row_donhang['soluong']; ?></td>
						<td><?php echo $row_donhang['sanpham_giakhuyenmai']; ?></td>
						<td><?php echo number_format($row_donhang['soluong']*$row_donhang['sanpham_giakhuyenmai']).'vnđ'; ?></td>
						
						<td><?php echo $row_donhang['ngaythang'] ?></td>
						<input type="hidden" name="mahang_xuly" value="<?php echo $row_donhang['mahang'] ?>">

						<!-- <td><a href="?xoa=<?php echo $row_donhang['donhang_id'] ?>">Xóa</a> || <a href="?quanly=xemdonhang&mahang=<?php echo $row_donhang['mahang'] ?>">Xem đơn hàng</a></td> -->
					</tr>
					 <?php
					} 
					?> 
				</table>

				<select class="form-control" name="xuly">
					<option value="1">Đã xử lý | Giao hàng</option>
					<option value="0">Chưa xử lý</option>
				</select><br>

				<input type="submit" value="Cập nhật đơn hàng" name="capnhatdonhang" class="btn btn-success">
			</form>
				</div>  
			<?php
			}else{
				?> 
				
				<div class="col-md-12">
					<div class="card">
					  <div class="card-header">
					    <h5>Đơn hàng</h5>
					  </div>
					  <div class="card-body">
					    <?php
							$sql_select = mysqli_query($con,"SELECT * FROM tbl_sanpham,tbl_khachhang,tbl_donhang WHERE tbl_donhang.sanpham_id=tbl_sanpham.sanpham_id AND tbl_donhang.khachhang_id=tbl_khachhang.khachhang_id GROUP BY mahang "); 
							?> 
							<table class="table table-bordered table-striped">
								<tr>
									<th>Thứ tự</th>
									<th>Mã hàng</th>
									<th>Tình trạng đơn hàng</th>
									<th>Tên khách hàng</th>
									<th>Ngày đặt</th>
									<th>Ghi chú</th>
									<th>Hủy đơn</th>
									<th>Quản lý</th>
								</tr>
								<?php
								$i = 0;
								while($row_donhang = mysqli_fetch_array($sql_select)){ 
									$i++;
								?> 
								<tr>
									<td><?php echo $i; ?></td>
									
									<td><?php echo $row_donhang['mahang']; ?></td>
									<td><?php
										if($row_donhang['tinhtrang']==0){
											echo 'Chưa xử lý';
										}else{
											echo 'Đã xử lý';
										}
									?></td>
									<td><?php echo $row_donhang['name']; ?></td>
									
									<td><?php echo $row_donhang['ngaythang'] ?></td>
									<td><?php echo $row_donhang['note'] ?></td>
									<td><?php if($row_donhang['huydon']==0){ }elseif($row_donhang['huydon']==1){
										echo '<a class="btn btn-light" href="xulydonhang.php?quanly=xemdonhang&mahang='.$row_donhang['mahang'].'&xacnhanhuy=2">Xác nhận hủy đơn</a>';
									}else{
										echo 'Đã hủy';
									} 
									?></td>

									<td>
										<a href="?xoadonhang=<?php echo $row_donhang['mahang'] ?>" class="btn btn-warning">Xóa</a>
										<a href="?quanly=xemdonhang&mahang=<?php echo $row_donhang['mahang'] ?>" class="btn btn-primary">Xem </a>
									</td>
								</tr>
								 <?php
								} 
								?> 
							</table>
					  </div>
					</div>
				</div>  
				<?php
			} 
			
				?> 
		</div>
	</div>
	
</body>
</html>