
<?php
include_once('../../model/database.php');
	// Thêm màu
	if(isset($_GET['themNCC'])){
		$tenNCC=$_GET['tenNCC'];
		$sql="insert into nhacc(TenNCC) values(N'$tenNCC')";
		$rs=mysqli_query($conn,$sql);
		if(isset($rs)){
			header('location:../index.php?action=nhacc&view=themNCC&thongbao=them');
		}else{
			header('location:../index.php?action=nhacc&view=themNCC&thongbao=loi');
		}
	}
	//----------------------------------------
	//Cập nhập
	if(isset($_GET['suaNCC'])){
		$maNCC=$_GET['maNCC'];
		$tenNCC=$_GET['tenNCC'];
		$sql="UPDATE `nhacc` SET `TenNCC`= N'$tenNCC' where MaNCC=$maNCC";
		$rs=mysqli_query($conn,$sql);
		if(isset($rs)){
			header('location:../index.php?action=nhacc&view=themNCC&thongbao=sua');
		}else{
			header('location:../index.php?action=nhacc&view=themNCC&thongbao=loi');
		}
	}

	//----------------------------------------
// xóa ncc
if(isset($_GET['xoa'])){
		$maNCC=$_GET['maNCC'];
		$sql="delete  from nhacc where MaNCC='$maNCC'";
		$rs=mysqli_query($conn,$sql);
		if(isset($rs)){
			header('location:../index.php?action=nhacc&view=themNCC&thongbao=xoa');
		}else{
			header('location:../index.php?action=nhacc&view=themNCC&thongbao=loi');
		}
	}