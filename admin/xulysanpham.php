<?php
	include('../db/connect.php');
?>
<?php
	if(isset($_POST['themsanpham'])){
		$tensanpham = $_POST['tensanpham'];
		$hinhanh = $_FILES['hinhanh']['name'];
		
		$soluong = $_POST['soluong'];
		$gia = $_POST['giasanpham'];
		$giakhuyenmai = $_POST['giakhuyenmai'];
		$danhmuc = $_POST['danhmuc'];
		$chitiet = $_POST['chitiet'];
		$mota = $_POST['mota'];
		$path = '../uploads/';
		
		$hinhanh_tmp = $_FILES['hinhanh']['tmp_name'];
		$sql_insert_product = mysqli_query($con,"INSERT INTO tbl_sanpham(sanpham_name,sanpham_chitiet,sanpham_mota,sanpham_gia,sanpham_giakhuyenmai,sanpham_soluong,sanpham_image,category_id) values ('$tensanpham','$chitiet','$mota','$gia','$giakhuyenmai','$soluong','$hinhanh','$danhmuc')");
		move_uploaded_file($hinhanh_tmp,$path.$hinhanh);
	}elseif(isset($_POST['capnhatsanpham'])) {
		$id_update = $_POST['id_update'];
		$tensanpham = $_POST['tensanpham'];
		$hinhanh = $_FILES['hinhanh']['name'];
		$hinhanh_tmp = $_FILES['hinhanh']['tmp_name'];
		$soluong = $_POST['soluong'];
		$gia = $_POST['giasanpham'];
		$giakhuyenmai = $_POST['giakhuyenmai'];
		$danhmuc = $_POST['danhmuc'];
		$chitiet = $_POST['chitiet'];
		$mota = $_POST['mota'];
		$path = '../uploads/';
		if($hinhanh==''){
			$sql_update_image = "UPDATE tbl_sanpham SET sanpham_name='$tensanpham',sanpham_chitiet='$chitiet',sanpham_mota='$mota',sanpham_gia='$gia',sanpham_giakhuyenmai='$giakhuyenmai',sanpham_soluong='$soluong',category_id='$danhmuc' WHERE sanpham_id='$id_update'";
		}else{
			move_uploaded_file($hinhanh_tmp,$path.$hinhanh);
			$sql_update_image = "UPDATE tbl_sanpham SET sanpham_name='$tensanpham',sanpham_chitiet='$chitiet',sanpham_mota='$mota',sanpham_gia='$gia',sanpham_giakhuyenmai='$giakhuyenmai',sanpham_soluong='$soluong',sanpham_image='$hinhanh',category_id='$danhmuc' WHERE sanpham_id='$id_update'";
		}
		mysqli_query($con,$sql_update_image);
	}
	
?> 
<?php
	if(isset($_GET['xoa'])){
		$id= $_GET['xoa'];
		$sql_xoa = mysqli_query($con,"DELETE FROM tbl_sanpham WHERE sanpham_id='$id'");
	} 
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>S???n ph???m</title>
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-primary">
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav">
	      <li class="nav-item active">
	        <a class="nav-link text-white" href="xulydonhang.php">????n h??ng <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link text-white" href="xulydanhmuc.php">Danh m???c</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link text-white" href="xulysanpham.php">S???n ph???m</a>
	      </li>
	       <li class="nav-item">
	        <a class="nav-link text-white" href="xulydanhmucbaiviet.php">Danh m???c B??i vi???t</a>
	      </li>
	         <li class="nav-item">
	        <a class="nav-link text-white" href="xulybaiviet.php">B??i vi???t</a>
	      </li>
	       <li class="nav-item">
	         <a class="nav-link text-white" href="xulykhachhang.php">Kh??ch h??ng</a>
	      </li>
	      
	    </ul>
	  </div>
	</nav><br><br>
	<div class="container-fluid">
		<div class="row">
		<?php
			if(isset($_GET['quanly'])=='capnhat'){
				$id_capnhat = $_GET['capnhat_id'];
				$sql_capnhat = mysqli_query($con,"SELECT * FROM tbl_sanpham WHERE sanpham_id='$id_capnhat'");
				$row_capnhat = mysqli_fetch_array($sql_capnhat);
				$id_category_1 = $row_capnhat['category_id'];
				?>
				<div class="col-md-12">
				<h4>C???p nh???t s???n ph???m</h4>
				
				<form action="" method="POST" enctype="multipart/form-data">
					<div class="row">
						<div class="col-sm-12 col-md-6 col-lg-4">
							<label>T??n s???n ph???m</label>
							<input type="text" class="form-control" name="tensanpham" value="<?php echo $row_capnhat['sanpham_name'] ?>"><br>
							<input type="hidden" class="form-control" name="id_update" value="<?php echo $row_capnhat['sanpham_id'] ?>">
						</div>
						<div class="col-sm-12 col-md-6 col-lg-4">
							<label>H??nh ???nh</label>
							<input type="file" class="form-control" name="hinhanh"><br>
							<img src="../uploads/<?php echo $row_capnhat['sanpham_image'] ?>" height="80" width="80"><br>
						</div>
						<div class="col-sm-12 col-md-6 col-lg-4">
							<label>Gi??</label>
							<input type="text" class="form-control" name="giasanpham" value="<?php echo $row_capnhat['sanpham_gia'] ?>"><br>
						</div>
						<div class="col-sm-12 col-md-6 col-lg-4">
							<label>Gi?? khuy???n m??i</label>
							<input type="text" class="form-control" name="giakhuyenmai" value="<?php echo $row_capnhat['sanpham_giakhuyenmai'] ?>"><br>
						</div>
						<div class="col-sm-12 col-md-6 col-lg-4">
							<label>S??? l?????ng</label>
							<input type="text" class="form-control" name="soluong" value="<?php echo $row_capnhat['sanpham_soluong'] ?>"><br>
						</div>
						<div class="col-sm-12 col-md-6 col-lg-4">
							<label>M?? t???</label>
							<textarea class="form-control" rows="10" name="mota"><?php echo $row_capnhat['sanpham_mota'] ?></textarea><br>
						</div>
						<div class="col-sm-12 col-md-6 col-lg-4">
							<label>Chi ti???t</label>
							<textarea class="form-control" rows="10" name="chitiet"><?php echo $row_capnhat['sanpham_chitiet'] ?></textarea><br>
						</div>
						<div class="col-sm-12 col-md-6 col-lg-4">
							<label>Danh m???c</label>
							<?php
							$sql_danhmuc = mysqli_query($con,"SELECT * FROM tbl_category ORDER BY category_id DESC"); 
							?>
							<select name="danhmuc" class="form-control">
								<option value="0">-----Ch???n danh m???c-----</option>
								<?php
								while($row_danhmuc = mysqli_fetch_array($sql_danhmuc)){
									if($id_category_1==$row_danhmuc['category_id']){
								?>
								<option selected value="<?php echo $row_danhmuc['category_id'] ?>"><?php echo $row_danhmuc['category_name'] ?></option>
								<?php 
									}else{
								?>
								<option value="<?php echo $row_danhmuc['category_id'] ?>"><?php echo $row_danhmuc['category_name'] ?></option>
								<?php
									}
								}
								?>
							</select><br>
						</div>
					</div>
					<input type="submit" name="capnhatsanpham" value="C???p nh???t s???n ph???m" class="btn btn-default">
				</form>
				</div>
			<?php
			}else{
				?> 
				<div class="col-md-12">
				<h4>Th??m s???n ph???m</h4>
				
				<form action="" method="POST" enctype="multipart/form-data">
					<div class="row">
						<div class="col-sm-12 col-md-6 col-lg-4">
							<label>T??n s???n ph???m</label>
							<input type="text" class="form-control" name="tensanpham" placeholder="T??n s???n ph???m"><br>
						</div>
						<div class="col-sm-12 col-md-6 col-lg-4">
							<label>H??nh ???nh</label>
							<input type="file" class="form-control" name="hinhanh"><br>
						</div>
						<div class="col-sm-12 col-md-6 col-lg-4">
							<label>Gi??</label>
							<input type="text" class="form-control" name="giasanpham" placeholder="Gi?? s???n ph???m"><br>
						</div>
						<div class="col-sm-12 col-md-6 col-lg-4">
							<label>Gi?? khuy???n m??i</label>
							<input type="text" class="form-control" name="giakhuyenmai" placeholder="Gi?? khuy???n m??i"><br>
						</div>
						<div class="col-sm-12 col-md-6 col-lg-4">
							<label>S??? l?????ng</label>
							<input type="text" class="form-control" name="soluong" placeholder="S??? l?????ng"><br>
						</div>
						<div class="col-sm-12 col-md-6 col-lg-4">
							<label>Danh m???c</label>
								<?php
								$sql_danhmuc = mysqli_query($con,"SELECT * FROM tbl_category ORDER BY category_id DESC"); 
								?>
								<select name="danhmuc" class="form-control">
									<option value="0">-----Ch???n danh m???c-----</option>
									<?php
									while($row_danhmuc = mysqli_fetch_array($sql_danhmuc)){
									?>
									<option value="<?php echo $row_danhmuc['category_id'] ?>"><?php echo $row_danhmuc['category_name'] ?></option>
									<?php 
									}
									?>
								</select><br>
						</div>
						<div class="col-sm-12 col-md-6 col-lg-6">
							<label>M?? t???</label>
							<textarea class="form-control" name="mota"></textarea><br>
						</div>
						<div class="col-sm-12 col-md-6 col-lg-6">
							<label>Chi ti???t</label>
							<textarea class="form-control" name="chitiet"></textarea><br>
						</div>
						
						<div class="col-sm-12 col-md-6 col-lg-4">
							<input type="submit" name="themsanpham" value="Th??m s???n ph???m" class="btn btn-primary mb-3">
						</div>
					</div>
					
				</form>
				</div>
				<?php
			} 
			
				?>
			<div class="col-md-12">
				<div class="card">
				  <h5 class="card-header">
				    Li???t k?? s???n ph???m
				  </h5>
				  <div class="card-body">
				    <?php
						$sql_select_sp = mysqli_query($con,"SELECT * FROM tbl_sanpham,tbl_category WHERE tbl_sanpham.category_id=tbl_category.category_id ORDER BY tbl_sanpham.sanpham_id DESC"); 
						?> 
						<table class="table table-bordered table-striped">
							<tr>
								<th>Th??? t???</th>
								<th>T??n s???n ph???m</th>
								<th>H??nh ???nh</th>
								<th>S??? l?????ng</th>
								<th>Danh m???c</th>
								<th>Gi?? s???n ph???m</th>
								<th>Gi?? khuy???n m??i</th>
								<th>Qu???n l??</th>
							</tr>
							<?php
							$i = 0;
							while($row_sp = mysqli_fetch_array($sql_select_sp)){ 
								$i++;
							?> 
							<tr>
								<td><?php echo $i ?></td>
								<td><?php echo $row_sp['sanpham_name'] ?></td>
								<td><img src="../uploads/<?php echo $row_sp['sanpham_image'] ?>" height="100" width="80"></td>
								<td><?php echo $row_sp['sanpham_soluong'] ?></td>
								<td><?php echo $row_sp['category_name'] ?></td>
								<td><?php echo number_format($row_sp['sanpham_gia']).' vn??' ?></td>
								<td><?php echo number_format($row_sp['sanpham_giakhuyenmai']).' vn??' ?></td>
								<td><a class="btn btn-warning" href="?xoa=<?php echo $row_sp['sanpham_id'] ?>" class="mr-3">X??a</a>
									<a class="btn btn-success" href="xulysanpham.php?quanly=capnhat&capnhat_id=<?php echo $row_sp['sanpham_id'] ?>">C???p nh???t</a></td>
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