﻿<link rel="stylesheet" href="css/hienthi_sp.css">
<script type="text/javascript" src="js/checkbox.js"></script>
<?php
	include ('../include/connect.php');
	
    $select = "select * from hoadon";
    $query = mysqli_query($link,$select);
    $dem = mysqli_num_rows($query);
?>
<div class="quanlysp">
	<h3>QUẢN LÝ HÓA ĐƠN</h3>
	
	<p>Có tổng <font color=red><b><?php echo $dem ?></b></font> hóa đơn</p><br>
	<form action="admin.php?admin=xulyhd" method="post">
		<div id="check">
			<p>
				<input type="submit" name="giaohang" value="Đã giao hàng" />
				<input type="submit" name="huy" value="Hủy" />
				<input type="submit" name="xoa" value="Xóa" />
			</p>
		</div>
	
</div>
<table>
    
    <tr class='tieude_hienthi_sp'>
        <td width="30"><input type="checkbox" name="check"  class="checkbox" onclick="checkall('item', this)"></td>
        <td>Mã HD</td>
        <td>Họ Tên</td>
        <td>Địa Chỉ</td>
        <td>Điện Thoại</td>
        <td>Email</td>
        <td>Trạng thái</td>
        <td colspan=2>Active</td>
    </tr>

    <?php
	
	/*------------Phan trang------------- */
		// Nếu đã có sẵn số thứ tự của trang thì giữ nguyên (ở đây tôi dùng biến $page) 
		// nếu chưa có, đặt mặc định là 1!   

		if(!isset($_GET['page'])){  
		$page = 1;  
		} else {  
		$page = $_GET['page'];  
		}  

		// Chọn số kết quả trả về trong mỗi trang mặc định là 10 
		$max_results = 10;  

		// Tính số thứ tự giá trị trả về của đầu trang hiện tại 
		$from = (($page * $max_results) - $max_results);  

		// Chạy 1 mysqli query để hiện thị kết quả trên trang hiện tại  

		$sql = mysqli_query($link,"SELECT * FROM hoadon ORDER by mahd DESC  LIMIT $from, $max_results"); 



								
    if($dem > 0)
        while ($bien = mysqli_fetch_array($sql))
        {
?>
            <tr class='noidung_hienthi_sp'>
                <td class="masp_hienthi_sp"><input type="checkbox" name="id[]" class="item" class="checkbox" value="<?=$bien['mahd']?>"/></td>
                <td class="masp_hienthi_sp"><?php  echo $bien['mahd'] ?></td>
                <td class="stt_hienthi_sp"><?php echo $bien['hoten'] ?></td>
				<td class="sl_hienthi_sp"><?php echo $bien['diachi'] ?></td>
				<td class="sl_hienthi_sp">0<?php echo $bien['dienthoai'] ?></td>
				<td class="sl_hienthi_sp"><?php echo $bien['email'] ?></td>
				<td class="sl_hienthi_sp"><?php if($bien['trangthai']==1) echo "Đang xử lý"; else if($bien['trangthai']==2) echo"Đã giao hàng"; else echo"Đã hủy đơn hàng";?></td>
				<td class="active_hienthi_sp" style="width:70px;"><a href="admin.php?admin=chitiethoadon&mahd=<?php echo $bien['mahd']; ?> " style="float:left;">Chi tiết</a>
					
				</td>
            </tr>
<?php 
    }
	
    else echo "<tr><td colspan='6'>Không có sản phẩm trong CSDL</td></tr>";
	
?>
</table>
</form>
			<form action="phpexcel/export.php" method="POST">
				<div id="check" style="margin-top: 20px; padding-left: 650px;">
					<p>
						<input type="submit" name="btnExport" value="Xuất Excel" />
					</p>
				</div>
				
			</form>

	<div id="phantrang_sp">
	
	<?php
			// Tính tổng kết quả trong toàn DB:  
			$result = mysqli_query($link,"select count(*) as total from hoadon");
			$array = mysqli_fetch_array($result);
    		$total_results = $array['total'];  

			// Tính tổng số trang. Làm tròn lên sử dụng ceil()  
			$total_pages = ceil($total_results / $max_results);  


			// Tạo liên kết đến trang trước trang đang xem 
			if($page > 1){  
			$prev = ($page - 1);  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?admin=hienthihd&page=$prev\"><button class='trang'>Trang trước</button></a>&nbsp;";  
			}  

			//Hiển thị trang hiện tại
			for($i = 1; $i <= $total_pages; $i++){  
			if(($page) == $i){  
				if($i>1) {
						echo "$i&nbsp;";  } 
				
			} else {  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?admin=hienthihd&page=$i\"><button class='so'>$i</button></a>&nbsp;";  
			}  
			} 

			// Tạo liên kết đến trang tiếp theo  
			if($page < $total_pages){  
			$next = ($page + 1);  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?admin=hienthihd&page=$next\"><button class='trang'>Trang sau</button></a>";  
			}  
			echo "</center>";  		
		
	?>
	</div>
