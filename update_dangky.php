<?php 
include 'include/connect.php';
include 'admin/function/function.php';

if(isset($_POST['submit']))
{
	$tennd=$_POST['tennd'];
	$user=$_POST['user'];
	$pass=MD5($_POST['pass']);
	$email=$_POST['email'];
	$ngaysinh=$_POST['ngaysinh'];
	$gioitinh=$_POST['gioitinh'];
	$dienthoai=$_POST['dienthoai'];
	$diachi=$_POST['diachi'];


		//Check mail + username đã tồn tại chưa
		$checkMail = "SELECT *FROM nguoidung where email='$email'";
		$queryMail = mysqli_query($link, $checkMail);
		$countMail = mysqli_num_rows($queryMail);

		
		if ($countMail==1) {
			$errosMail = "Email đã tồn tại";
		}

		$checkUser = "SELECT *FROM nguoidung where username='$user'";
		$queryUser = mysqli_query($link, $checkUser);
		$countUser = mysqli_num_rows($queryUser);

		if ($countUser==1) {
			$errosUser = "Username đã tồn tại";
		}

		
	
	//Lay gio cua he thong
		$dmyhis= date("Y").date("m").date("d").date("H").date("i").date("s");
		//Lay ngay cua he thong
		$ngay=date("Y").":".date("m").":".date("d").":".date("H").":".date("i").":".date("s");
	
		if ($countMail==0&&$countSdt==0) {
			$insert="INSERT INTO nguoidung VALUES('','$tennd', '$user', '$pass','$ngaysinh','$gioitinh', '$email','$dienthoai', '$diachi','$ngay', '1')";
			$query=mysqli_query($link,$insert);
			if($query) {
				header('location: dangnhap.php');
				$_SESSION['username']= $username;

				//redirect("index.php", "Bạn đã đăng ký thành công.", 2 );
				//echo "<p align = center>Đăng ký thành công!</p>";
				//echo '<meta http-equiv="refresh" content="1;url=index.php">';
			}else {
					header('location: dangky.php');
				}
		}			
	}
?>
