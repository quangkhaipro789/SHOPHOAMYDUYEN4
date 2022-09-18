<?php
	include('../db/connect.php');
?>
<?php
	if(isset($_POST['themdanhmuc'])){
		$tendanhmuc = $_POST['danhmuc'];
		$sql_insert = mysqli_query($con,"INSERT INTO tbl_category(category_name) values ('$tendanhmuc')");
	}elseif(isset($_POST['capnhatdanhmuc'])){
		$id_post = $_POST['id_danhmuc'];
		$tendanhmuc = $_POST['danhmuc'];
		$sql_update = mysqli_query($con,"UPDATE tbl_category SET category_name='$tendanhmuc' WHERE category_id='$id_post'");
		header('Location:xulydanhmuc.php');
	}
	if(isset($_GET['xoa'])){
		$id= $_GET['xoa'];
		$sql_xoa = mysqli_query($con,"DELETE FROM tbl_category WHERE category_id='$id'");
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Danh mục</title>
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
			if(isset($_GET['quanly'])=='capnhat'){
				$id_capnhat = $_GET['id'];
				$sql_capnhat = mysqli_query($con,"SELECT * FROM tbl_category WHERE category_id='$id_capnhat'");
				$row_capnhat = mysqli_fetch_array($sql_capnhat);
				?>
				<div class="col-md-4 mb-4">
				<h4>Cập nhật danh mục</h4>
				<label>Tên danh mục</label>
				<form action="" method="POST" class="d-flex align-items-center">
					<input type="text" class="form-control mr-2" name="danhmuc" value="<?php echo $row_capnhat['category_name'] ?>"><br>
					<input type="hidden" class="form-control" name="id_danhmuc" value="<?php echo $row_capnhat['category_id'] ?>">

					<input type="submit" name="capnhatdanhmuc" value="Cập nhật danh mục" class="btn btn-success">
				</form>
				</div>
			<?php
			}else{
				?>
				<div class="col-md-4 mb-4">
				<h4>Thêm danh mục</h4>
				<label>Tên danh mục</label>
				<form action="" method="POST" class="d-flex align-items-center">
					<input type="text" class="form-control mr-2" name="danhmuc" placeholder="Tên danh mục"><br>
					<input type="submit" name="themdanhmuc" value="Thêm danh mục" class="btn btn-primary">
				</form>
				</div>
				<?php
			} 
			
				?>
			<div class="col-md-12">
				<div class="card">
				  <h5 class="card-header">
				    Liệt kê danh mục
				  </h5>
				  <div class="card-body">
				    <?php
					$sql_select = mysqli_query($con,"SELECT * FROM tbl_category ORDER BY category_id DESC"); 
					?>
					<table class="table table-bordered table-striped">
						<tr>
							<th>Thứ tự</th>
							<th>Tên danh mục</th>
							<th>Quản lý</th>
						</tr>
						<?php
						$i = 0;
						while($row_category = mysqli_fetch_array($sql_select)){ 
							$i++;
						?>
						<tr>
							<td><?php echo $i; ?></td>
							<td><?php echo $row_category['category_name'] ?></td>
							<td>
								<a href="?xoa=<?php echo $row_category['category_id'] ?>" class="btn btn-warning">Xóa</a>
								<a href="?quanly=capnhat&id=<?php echo $row_category['category_id'] ?>" class="btn btn-success">Cập nhật</a></td>
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