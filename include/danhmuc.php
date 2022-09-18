<?php
	if(isset($_GET['id'])){
		$id = $_GET['id'];
	}else{
		$id = '';
	}
	$sql_cate = mysqli_query($con,"SELECT * FROM tbl_category,tbl_sanpham WHERE tbl_category.category_id=tbl_sanpham.category_id AND tbl_sanpham.category_id='$id' ORDER BY tbl_sanpham.sanpham_id DESC");	
	$sql_category = mysqli_query($con,"SELECT * FROM tbl_category,tbl_sanpham WHERE tbl_category.category_id=tbl_sanpham.category_id AND tbl_sanpham.category_id='$id' ORDER BY tbl_sanpham.sanpham_id DESC");		

	$row_title = mysqli_fetch_array($sql_category);
	$title = $row_title['category_name'];		
	?>
<!-- top Products -->
	<div class="ads-grid py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3"><?php echo $title ?></h3>
			<!-- //tittle heading -->
			<div class="row">
				<!-- product left -->
				<div class="agileinfo-ads-display col-lg-9">
					<div class="wrapper">
						<!-- first section -->
						<div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
							<div class="row">
								<?php
								while($row_sanpham = mysqli_fetch_array($sql_cate)){ 
								?>
								<div class="col-md-4 product-men mt-5">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item text-center">
											<img src="images/<?php echo $row_sanpham['sanpham_image'] ?>" alt="">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="?quanly=chitietsp&id=<?php echo $row_sanpham['sanpham_id'] ?>" class="link-product-add-cart">Xem sản phẩm</a>
												</div>
											</div>
										</div>
										<div class="item-info-product text-center border-top mt-4">
											<h4 class="pt-1">
												<a href="?quanly=chitietsp&id=<?php echo $row_sanpham['sanpham_id'] ?>"><?php echo $row_sanpham['sanpham_name'] ?></a>
											</h4>
											<div class="info-product-price my-2">
												<span class="item_price"><?php echo number_format($row_sanpham['sanpham_giakhuyenmai']).'vnđ' ?></span>
												<del><?php echo number_format($row_sanpham['sanpham_gia']).'vnđ' ?></del>
											</div>
											<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
												<form action="?quanly=giohang" method="post">
												<fieldset>
													<input type="hidden" name="tensanpham" value="<?php echo $row_sanpham['sanpham_name'] ?>" />
													<input type="hidden" name="sanpham_id" value="<?php echo $row_sanpham['sanpham_id'] ?>" />
													<input type="hidden" name="giasanpham" value="<?php echo $row_sanpham['sanpham_gia'] ?>" />
													<input type="hidden" name="hinhanh" value="<?php echo $row_sanpham['sanpham_image'] ?>" />
													<input type="hidden" name="soluong" value="1" />			
													<input type="submit" name="themgiohang" value="Thêm giỏ hàng" class="button" />
												</fieldset>
											</form>
											</div>
										</div>
									</div>
								</div>
								<?php
								} 
								?>
							</div>
						</div>
						<!-- //first section -->
					</div>
				</div>
				<!-- //product left -->
				<!-- product right -->
				<div class="col-lg-3 mt-lg-0 mt-4 p-lg-0">
					<div class="side-bar p-sm-4 p-3">
						<div class="search-hotel border-bottom py-2">
							<h3 class="agileits-sear-head mb-3">Hoa Mỹ Duyên</h3>
							<form action="#" method="post">
								<input type="search" placeholder="Search Brand..." name="search" required="">
								<input type="submit" value="">
							</form>
							<div class="left-side py-2">
								<ul>
									<li>
										<input type="checkbox" class="checked">
										<span class="span">Hoa tết</span>
									</li>
									<li>
										<input type="checkbox" class="checked">
										<span class="span">Hoa chúc mừng</span>
									</li>
									<li>
										<input type="checkbox" class="checked">
										<span class="span">Hoa khai trương</span>
									</li>
									<li>
										<input type="checkbox" class="checked">
										<span class="span">Hoa chia buồn</span>
									</li>
									<li>
										<input type="checkbox" class="checked">
										<span class="span">Hoa bó</span>
									</li>
									<li>
										<input type="checkbox" class="checked">
										<span class="span">Quà tặng</span>
									</li>
								</ul>
							</div>
						</div>
						
						<div class="range border-bottom py-2">
							<h3 class="agileits-sear-head mb-3">Giá</h3>
							<div class="w3l-range">
								<ul>
									<li>
										<a href="#">dưới 500K</a>
									</li>
									<li class="my-1">
										<a href="#">500K-999K</a>
									</li>
									<li>
										<a href="#">1triệu-1,5triệu</a>
									</li>
									<li class="my-1">
										<a href="#">1,5triệu-2triệu</a>
									</li>
									<li>
										<a href="#">2triệu-3triệu</a>
									</li>
									<li class="mt-1">
										<a href="#">trên 3triệu</a>
									</li>
								</ul>
							</div>
						</div>
						<!-- //price -->
						<!-- discounts -->
						<div class="left-side border-bottom py-2">
							<h3 class="agileits-sear-head mb-3">Giảm giá</h3>
							<ul>
								<li>
									<input type="checkbox" class="checked">
									<span class="span">5% trở lên</span>
								</li>
								<li>
									<input type="checkbox" class="checked">
									<span class="span">10% trở lên</span>
								</li>
								<li>
									<input type="checkbox" class="checked">
									<span class="span">20% trở lên</span>
								</li>
								<li>
									<input type="checkbox" class="checked">
									<span class="span">30% trở lên</span>
								</li>
								<li>
									<input type="checkbox" class="checked">
									<span class="span">50% trở lên</span>
								</li>
								<li>
									<input type="checkbox" class="checked">
									<span class="span">60% trở lên</span>
								</li>
							</ul>
						</div>
						<!-- //discounts -->
						<!-- offers -->
						<div class="left-side border-bottom py-2">
							<h3 class="agileits-sear-head mb-3">Ưu đãi</h3>
							<ul>
								<li>
									<input type="checkbox" class="checked">
									<span class="span">Phiếu mua hàng</span>
								</li>
								<li>
									<input type="checkbox" class="checked">
									<span class="span">ưu đãi giảm giá</span>
								</li>
								<li>
									<input type="checkbox" class="checked">
									<span class="span">Giá đặc biệt</span>
								</li>
							</ul>
						</div>
						<!-- //offers -->
						<!-- delivery -->
						<div class="left-side border-bottom py-2">
							<h3 class="agileits-sear-head mb-3">Thanh toán khi nhận hàng</h3>
							<ul>
								<li>
									<input type="checkbox" class="checked">
									<span class="span">Đủ điều kiện nhận tiền mặt khi giao</span>
								</li>
							</ul>
						</div>
						<!-- //delivery -->
						
					</div>
					<!-- //product right -->
				</div>
			</div>
		</div>
	</div>
	<!-- //top products -->