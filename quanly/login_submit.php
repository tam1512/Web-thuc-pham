<?php
include("../conection.php");
session_start();

if (isset($_POST['login'])) {
	$username   =$_POST['username'];
	$password   =$_POST['password'];
	$sql_getName="SELECT * FROM quanly WHERE TenDangNhap = '$username' LIMIT 1";
	$query_getName=mysqli_query($mysqli,$sql_getName);
	$row_getName=mysqli_fetch_array($query_getName);
	if($username==''||$password==''){
		echo '<p>Xin nhập đủ!!</p>';
	}else{
		$sql_login=mysqli_query($mysqli,"SELECT * FROM quanly WHERE 
			TenDangNhap = '$username' AND MatKhau = '$password' LIMIT 1");
		$count = mysqli_num_rows($sql_login);
		$sql_name=mysqli_query($mysqli,"SELECT HoVaTen FROM quanly WHERE TenDangNhap= '$username'LIMIT 1");
		$countname= mysqli_num_rows($sql_name);
		if ($count >0) {
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