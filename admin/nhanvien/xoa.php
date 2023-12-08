<?php
include_once('../../model/database.php');
if(isset($_GET['xoa'])){
		$manv=$_GET['manv'];
		$sql="delete  from nhanvien where MaNV='$manv'";
		$rs=mysqli_query($conn,$sql);
		if(isset($rs)){
			header('location:../index.php?action=nhanvien&thongbao=xoa');
		}else{
			header('location:../index.php?action=nhanvien&thongbao=loi');
		}
	}   