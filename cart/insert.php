<?php 
  include_once'include/connect.php' 
  // $select = "SELECT * from hoadon";
  // $query = mysqli_query($link,$select);
?>
<?php
if($action="insert")
{
$hoten=$_POST['hoten'];
$dienthoai=$_POST['dienthoai'];
$diachi=$_POST['diachi'];
$email=$_POST['email'];
$phuongthuc=$_POST['phuongthuc'];
$ngay=date('Y-m-d');
		if(isset($_SESSION['idnd'])){
		
		
			$sql=mysqli_query($link,"select * from nguoidung where idnd='".$_SESSION['idnd']."'");
			$row=mysqli_fetch_array($sql);
			
			$idnd=$row['idnd'];
	
$sql="INSERT INTO hoadon(idnd,hoten,diachi,dienthoai,email,ngaydathang,trangthai) VALUES 
('$idnd','$hoten', '$diachi', '$dienthoai', '$email', '$ngay','1')";

}
	else 
	$sql="INSERT INTO hoadon(hoten,diachi,dienthoai,email,ngaydathang,trangthai) VALUES 
('$hoten', '$diachi', '$dienthoai', '$email', '$ngay','1')";

	mysqli_query($link,$sql);
	
    $mahd=mysqli_insert_id($link);
	
    foreach($_SESSION['cart'] as $stt => $soluong)
            {
               $sql="select * from sanpham where idsp=$stt";
               $rows=mysqli_query($link,$sql);
               $row=mysqli_fetch_array($rows);
               //$mahd=$row['mahd'];
               $tensp=$row['tensp'];
               $idsp=$row['idsp'];
        
               $gia=$row['gia']*((100-$row['khuyenmai1'])/100);
               $sql1 ="insert into chitiethoadon(mahd,idsp,Tensp,Soluong,gia,phuongthucthanhtoan) values('$mahd','$idsp','$tensp','$soluong','$gia','$phuongthuc')";
              mysqli_query($link,$sql1);
              
            }
    foreach($_SESSION['cart'] as $stt => $soluong)
            {
               
               $sql="select * from sanpham where idsp=$stt";
               $rows=mysqli_query($link,$sql);
               $row=mysqli_fetch_array($rows);
               $ban=$row['daban']+$soluong;
               $sql="UPDATE sanpham SET daban='$ban' WHERE idsp = $stt";
               
                mysqli_query($link,$sql);
            }

unset($_SESSION['cart']);
}
?>
<font color="red" size="5"><center>Đơn hàng của bạn đã thiết lập thành công chúng tôi sẽ chuyển hàng cho bạn trong thời gian sớm nhất</center></font><br>
<?php $sqlhd = mysqli_query($link,"SELECT * FROM hoadon ORDER by mahd DESC  LIMIT 0,1"); 
while ($bien = mysqli_fetch_array($sqlhd))
        { ?>

    <center><a href="cart/xuathoadon.php?mahd=<?php echo $bien['mahd']; ?> "target="_blank"><button style="height: 30px;width: 200px; background: #5BF984;" type="button">Xem hoá đơn</button></a></center>

  <?php } ?>

<!-- <?php 
echo "
							<script language='javascript'>
								alert('Đơn hàng của bạn đã thiết lập thành công chúng tôi sẽ chuyển hàng cho bạn trong thời gian sớm nhất');
								window.open('index.php','_self',3);
							</script>
						";

?> -->
