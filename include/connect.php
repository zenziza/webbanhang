<?php
	$link=@mysqli_connect("localhost","root","","dienthoai2") or die("Cannot connect to the localhost");
	//mysqli_select_db("dienthoai2",$link) or die("Cannot connect to the database");
	mysqli_set_charset($link,"utf8");


?>
