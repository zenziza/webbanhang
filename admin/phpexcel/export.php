<?php

require('Classes/PHPExcel.php');
require('connect/db_connect.php');

if(isset($_POST['btnExport'])){
	$objExcel = new PHPExcel;
	$objExcel->setActiveSheetIndex(0);
	$sheet = $objExcel->getActiveSheet()->setTitle('Hoá đơn');

	$stt=0;
	$rowCount = 1;
	$sheet->setCellValue('A'.$rowCount,'STT');
	$sheet->setCellValue('B'.$rowCount,'Họ tên');
	$sheet->setCellValue('C'.$rowCount,'Địa chỉ');
	$sheet->setCellValue('D'.$rowCount,'Điện Thoại');
	$sheet->setCellValue('E'.$rowCount,'Email');
	$sheet->setCellValue('F'.$rowCount,'Ngày đặt hàng');
	$sheet->setCellValue('G'.$rowCount,'Tên sản phẩm');
	$sheet->setCellValue('H'.$rowCount,'Số lượng');
	$sheet->setCellValue('I'.$rowCount,'Giá');
	$sheet->setCellValue('J'.$rowCount,'Phương thức thanh toán');

	// $result = $mysqli->query("SELECT diem.name,toan,ly,hoa FROM diem INNER JOIN lop ON lop.id=diem.id_lop WHERE lop.name='10A1'");
	$result = $mysqli->query("SELECT hoadon.hoten, hoadon.diachi, hoadon.dienthoai,hoadon.email, hoadon.ngaydathang,hoadon.trangthai, chitiethoadon.tensp,chitiethoadon.soluong,chitiethoadon.gia, chitiethoadon.phuongthucthanhtoan from hoadon,chitiethoadon WHERE hoadon.mahd = chitiethoadon.mahd");
	while($row = mysqli_fetch_array($result)){
		$rowCount++;
		$stt +=1;
		// $sheet->setCellValue('A'.$rowCount,$stt);
		$sheet->setCellValue('B'.$rowCount,$row['hoten']);
		$sheet->setCellValue('C'.$rowCount,$row['diachi']);
		$sheet->setCellValue('D'.$rowCount,$row['dienthoai']);
		$sheet->setCellValue('E'.$rowCount,$row['email']);
		$sheet->setCellValue('F'.$rowCount,$row['ngaydathang']);
		$sheet->setCellValue('G'.$rowCount,$row['tensp']);
		$sheet->setCellValue('H'.$rowCount,$row['soluong']);
		$sheet->setCellValue('I'.$rowCount,$row['gia']);
		$sheet->setCellValue('J'.$rowCount,$row['phuongthucthanhtoan']);
	}

	$objWriter = new PHPExcel_Writer_Excel2007($objExcel);
	$filename = 'export.xlsx';
	$objWriter->save($filename);

	header('Content-Disposition: attachment; filename="' . $filename . '"');  
	header('Content-Type: application/vnd.openxmlformatsofficedocument.spreadsheetml.sheet');  
	header('Content-Length: ' . filesize($filename));  
	header('Content-Transfer-Encoding: binary');  
	header('Cache-Control: must-revalidate');  
	header('Pragma: no-cache');  
	readfile($filename);  
	return;

}


?>
<!-- <!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Export data</title>
	<link rel="stylesheet" href="">
</head>
<body>
	<form method="POST">
		<button name="btnExport" type="submit">Xuất file</button>
	</form>
</body>
</html> -->