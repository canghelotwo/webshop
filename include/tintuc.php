<?php
if(isset($_GET['id_tin'])){
    $id_danhmuc=$_GET['id_tin'];
}else{
    $id_danhmuc='';
}
?>
<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container" style="margin-top:120px">
				<ul class="w3_short">
					<li>
						<a href="index.php">Trang chủ</a>
						<i>|</i>
						<span>TIN TỨC</span>
                    </li>
                    <?php 
                    $sql_tendanhmuc=mysqli_query($mysqli,"select * from danhmuc_tin where  danhmuctin_id='$id_danhmuc'");
                    $row_danh=mysqli_fetch_array($sql_tendanhmuc);
                    ?>
					<li><?php echo $row_danh['tendanhmuc'] ?></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->

	<!-- about -->
	<div class="welcome py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
            <!-- tittle heading -->
            <?php 
                $sql_tendanhmuc1=mysqli_query($mysqli,"select * from danhmuc_tin where  danhmuctin_id='$id_danhmuc'");
                $row_danh1=mysqli_fetch_array($sql_tendanhmuc1);
            ?>
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
            <?php echo $row_danh1['tendanhmuc'] ?></h3>
			<!-- //tittle heading -->
            <div class="row">
                    
                
                <div class="col-lg-8 welcome-left">
                    <h5>k có gì :))</h5>
					
					
				</div>
				
            </div><br>
            
		</div>
	</div>
	<!-- //about -->
