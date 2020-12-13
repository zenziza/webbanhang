<?php 
   session_start();
   if(!isset($_SESSION['username'])   or ($_SESSION['phanquyen']==1))
   {
		
		header('location:login.php');
		exit();
   }
?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script language="javascript" src="ckeditor/ckeditor.js"></script>
<title> Bán Điện Thoại </title>
<link rel="stylesheet" type="text/css" href="css/index.css">




</head>
<?php 
	include("../include/connect.php");
?>
<body>
<div id="wapper">
	<div id="header">
		<div id="lg-header">
			<h1><a href="../index.php">logo</a></h1>
		</div><!-- End .bg-lg-header -->
		<div id="bg-header">
		</div><!-- End .bg-header -->
	</div><!-- End .header -->
	<div id="content">
		<div id="top-content">
						<p>Chào bạn <font color="green"><b><u><?= $_SESSION['username']?></u></b></font><a href="logout.php"> | Thoát</a></p>
		</div>
		<div id="main-content">
			<div id="left-content">
				<div class="danhmucsp">
					<div class="center">
					<h4>Quản lý</h4>
						<ul>
							<a href="admin.php"><li>Trang chủ</li></a>
							<a href="?admin=hienthisp"><li> Quản lý sản phẩm</li></a>
							<a href="?admin=hienthidm"><li> Quản lý danh mục</li></a>
							<a href="?admin=hienthihd"><li> Quản lý hóa đơn</li></a>
							<a href="?admin=hienthind"><li> Quản lý người dùng</li></a>
							<a href="?admin=hienthitt"><li> Quản lý tin tức</li></a>
							<a href="?admin=hienthiht"><li> Quản lý hỗ trợ</li></a>
						</ul>
					</div><!-- End .center -->
				</div>	<!-- End .menu-left -->
			</div><!-- End .left-content -->
			<!---------------- Hiển trị content-admin------------------->
			
			
			<div id="center-content">
                <?php
                    include("content_admin.php");
                ?>
			</div>
		</div><!-- End .main-content -->
	</div><!-- End .content -->
	
</div><!-- End .wapper -->
</body>
</html>
