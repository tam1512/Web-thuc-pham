<?php
include("../conection.php");
session_start();

if (isset($_POST['submit'])) {
	$TenDangNhap   =$_POST['TenDangNhap'];
	$MatKhau   =$_POST['MatKhau'];
	$sql_getName="SELECT * FROM quanly WHERE TenDangNhap = '$TenDangNhap' LIMIT 1";
	$query_getName=mysqli_query($mysqli,$sql_getName);
	$row_getName=mysqli_fetch_array($query_getName);
	if($TenDangNhap==''||$MatKhau==''){
		echo '<p>Xin nhập đủ!!</p>';
	}else{
		$sql_login=mysqli_query($mysqli,"SELECT * FROM quanly WHERE 
			TenDangNhap = '$TenDangNhap' AND MatKhau = '$MatKhau' LIMIT 1");
		$count = mysqli_num_rows($sql_login);
		$sql_name=mysqli_query($mysqli,"SELECT HoVaTen FROM quanly WHERE TenDangNhap= '$TenDangNhap'LIMIT 1");
		$countname= mysqli_num_rows($sql_name);
		if ($count >0) {
			$_SESSION['Admin']=$TenDangNhap;
		
			header("location:index.php");
		}else{
			echo '<p>Tài khoản hoặc mật khẩu sai</p>';
			?>
			 <a href="login.php">Quay lại trang đăng nhập</a> 
			<?php
		}
	}
}	
?> 

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Lumino - Login</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Đăng Nhập Quản Trị</div>
				<div class="panel-body">
					<form role="form" action="" method="POST">
				
							<div class="form-group">
								<input class="form-control" placeholder="Tên Đăng nhập" name="TenDangNhap" type="text">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Mật khẩu" name="MatKhau" type="password" >
							</div>
							<input style="margin-top: -10px" type="submit" class="btn btn-info btn-md" name="submit" value="ĐĂNG NHẬP"></td>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
	

<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
