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
				//header('location: dangnhap.php');
				$_SESSION['username']= $username;

				redirect("index.php", "Bạn đã đăng ký thành công.", 2 );
				//echo "<p align = center>Đăng ký thành công!</p>";
				//echo '<meta http-equiv="refresh" content="1;url=index.php">';
			}else {
					header('location: dangky.php');
				}
		}			
	}
?>

<form action="" method="POST" name="frm" onsubmit="return dangky()">
	<div class="dangky">
		<h2>Đăng ký</h2>
		<table>
		<tr>
			<td>Tên đăng nhập  <font color="red">*<span style="color: red">
			<?php if (isset($errosUser)) {
				echo $errosUser;
			} ?>
		</span></font> </td><td class="input"> <input type="text" name="user" size="40" value="<?php if(isset($user)){ echo $user; } ?>"></td>
		</tr>
		<tr>
			<td>Tên người dùng <font color="red">*</font> </td><td class="input"><input type="text" name="tennd" size="40" value="<?php if(isset($tennd)){ echo $tennd; } ?>"></td>
		</tr>
		<tr>
			<td>Mật khẩu <font color="red">*</font> </td><td class="input"><input type="password" name="pass" size="40" ></td>
		</tr>
		<tr>
			<td>Nhập lại mật khẩu <font color="red">*</font> </td><td class="input"><input type="password" name="pass1" size="40"></td>
		</tr>
		<tr>
			<td>Ngày sinh </td><td class="input"><input type="date" name="ngaysinh" value="<?php if(isset($ngaysinh)){ echo $ngaysinh; } ?>"></td>
		</tr>
		<tr>
			<td>Giới tính </td><td class="input">
				<select name="gioitinh">
					<option value="<?php if(isset($gioitinh)){ echo $gioitinh; }?>"><?php if(isset($gioitinh)){ echo $gioitinh; } else echo '-Chọn giới tính-'?></option>
					<option value="Nam">Nam</option>
					<option value="Nữ">Nữ</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>Email <font color="red">*<span style="color: red">
			<?php if (isset($errosMail)) {
				echo $errosMail;
			} ?>
		</span></font> </td><td class="input"><input type="text" name="email" size="40" value="<?php if(isset($_SESSION['email'])){
			echo $_SESSION['email'];} ?>"></td>
		</tr>
		<tr>
			<td>Điện thoại <font color="red">*</font> </td><td class="input"><input type="text" name="dienthoai" size="40" value="<?php if(isset($dienthoai)){ echo $dienthoai; } ?>"></td>
		</tr>
		<tr>
			<td>Địa chỉ  </td><td class="input"><textarea name="diachi" ></textarea></td>
		</tr>
		<tr>
			<td>Mã xác nhận: </td><td></td>
		</tr>
		<tr>
			<td colspan=2 class="btndangky">
				<button type="submit" name="submit">Đăng ký</button>
				<button type="reset">Hủy</button>
			</td>
		</tr>
		</table>
	</div>
</form>

<script language="javascript">
 	function  dangky()
	{
	    if(frm.tennd.value=="")
		{
			alert("Bạn chưa nhập tên. Vui lòng kiểm tra lại");
			frm.tennd.focus();
			return false;	
		}
		if(frm.tennd.value.length<6)
		{
			alert("Tên quá ngắn. Vui lòng điền đầy đủ tên");
			frm.tennd.focus();
			return false;	
		}
		if(frm.user.value=="")
	 	{
			alert("Bạn chưa nhập tên đăng nhập . Vui lòng kiểm tra lại");
			frm.user.focus();
			return false;	
		}
		if(frm.user.value.length<6)
	 	{
			alert("Tên đăng nhập phải lớn hơn 6 ký tự");
			frm.user.focus();
			return false;	
		}
		if(frm.pass.value=="")
		{
			alert("Bạn chưa nhập password");	
			frm.pass.focus();
			return false;
		}
		if(frm.pass.value.length<6)
		{
			alert("Mật khẩu phải lớn hơn 6 ký tự");	
			frm.pass.focus();
			return false;
		}
	   dt=/^[0-9]+$/;
	   dienthoai=frm.dienthoai.value;
	   if(!dt.test(dienthoai))
	   {
		    alert("Bạn chưa nhập điện thoại. Vui lòng kiểm tra lại.");
		    frm.dienthoai.focus();
		    return false;
	   }
	   	dd=frm.dienthoai.value;
		if(10>dd.length || dd.length>11)
		{
			alert("Số điện thoại không đủ độ dài. Vui lòng nhập lại");
			frm.dienthoai.focus();
			return false;	
		}
		if(frm.email.value=="")
		{
			alert("Bạn chưa nhập email");	
			frm.email.focus();
			return false;
		}
		mail=frm.email.value;
		m=/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
		if(!m.test(mail))
		{
			alert("Bạn nhập sai email");	
			frm.email.focus();
			return false;
		}
		
		if(frm.pass1.value=="")
		{
			alert("Bạn chưa nhập lại password");	
			frm.pass1.focus();
			return false;
		}
		mk=frm.pass.value;
		mk1=frm.pass1.value;
		if(pass!=pass1)
		{
			alert("Password chưa đúng");	
			frm.pass1.focus();
			return false;
		}
	}
 </script>