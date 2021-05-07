<?php
		$sql_dm = mysqli_query($mysqli,"select * from danhmuc order by dm_id asc");
	?>
	<div class="navbar-inner">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="agileits-navi_search">
					<form action="#" method="post">
						<a class="nav-link" href="index.php">Trang chủ
								<span class="sr-only">(current)</span>
							</a>
					</form>
				</div>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				    aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div >
					<ul class="navbar-nav ml-auto text-center mr-xl-5">
						
						<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
						<?php 
						$sql_thuonghieu=mysqli_query($mysqli,"select * from thuonghieu order by id_thuonghieu desc");
						 ?>
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Điện Thoại
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="?quanly=dm&id=1">Xem Tất Cả</a>
								<?php 
								while($row_thuonghieu=mysqli_fetch_array($sql_thuonghieu)){
								?>
								 <a class="dropdown-item" href="?quanly=tkthuonghieu&th=<?php echo $row_thuonghieu['tenthuonghieu'] ?>"><?php echo $row_thuonghieu['tenthuonghieu']  ?></a>
								<?php
								}
								?>
							</div>
						</li>
						<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
						<?php 
						$sql_thuonghieu=mysqli_query($mysqli,"select * from thuonghieu order by id_thuonghieu desc");
						 ?>
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Ốp Lưng
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="?quanly=dm&id=2">Xem Tất Cả</a>
								<?php 
								while($row_thuonghieu=mysqli_fetch_array($sql_thuonghieu)){
								?>
								 <a class="dropdown-item" href="?quanly=oplung&ol=<?php echo $row_thuonghieu['tenthuonghieu'] ?>"><?php echo $row_thuonghieu['tenthuonghieu']  ?></a>
								<?php
								}
								?>
							</div>
						</li>
						<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
						<?php 
						$sql_thuonghieu=mysqli_query($mysqli,"select * from thuonghieu order by id_thuonghieu desc");
						 ?>
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Phụ Kiện
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="?quanly=dm&id=3">Xem Tất Cả</a>
								<?php 
								while($row_thuonghieu=mysqli_fetch_array($sql_thuonghieu)){
								?>
								 <a class="dropdown-item" href="?quanly=phukien&pk=<?php echo $row_thuonghieu['tenthuonghieu'] ?>"><?php echo $row_thuonghieu['tenthuonghieu']  ?></a>
								<?php
								}
								?>
							</div>
						</li>
						
						<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
						<?php 
						$sql_danhmuctin=mysqli_query($mysqli,"select * from danhmuc_tin order by danhmuctin_id desc");
						 ?>
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Tin tức
							</a>
							<div class="dropdown-menu">
								<?php 
								while($row_danhmuctin=mysqli_fetch_array($sql_danhmuctin)){
								?>
								 <a class="dropdown-item" href="?quanly=tintuc&id_tin=<?php echo $row_danhmuctin['danhmuctin_id'] ?>"><?php echo $row_danhmuctin['tendanhmuc']  ?></a>
								<?php
								}
								?>
							</div>
						</li>
						<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Trang
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="?quanly=sanphammoi">Sản phẩm mới</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="?quanly=giohang">Kiểm tra hàng</a>
								<a class="dropdown-item" href="?quanly=giohang">Thanh toán</a>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="?quanly=lienhe">LH & Phản Hồi</a>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->