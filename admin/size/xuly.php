
<?php
include_once('../../model/database.php');
	// Thêm màu
	if(isset($_GET['themsize'])){
		$masize=$_GET['masize'];
		$sql="insert into size(Masize) values(N'$masize')";
		$rs=mysqli_query($conn,$sql);
		if(isset($rs)){
			header('location:../index.php?action=size&view=themsize&thongbao=them');
		}else{
			header('location:../index.php?action=size&view=themsize&thongbao=loi');
		}
	}
	//----------------------------------------
	//Cập nhập
	if(isset($_GET['suasize'])){
		$id=$_GET['id'];
		$masize=$_GET['masize'];
		$sql="UPDATE `size` SET `Masize`=N'$masize' where Masize='$id'";
		$rs=mysqli_query($conn,$sql);
		if(isset($rs)){
			header('location:../index.php?action=size&view=themsize&thongbao=sua');
		}else{
			header('location:../index.php?action=size&view=themsize&thongbao=loi');
		}
	}

	//----------------------------------------
// xóa màu
if(isset($_GET['xoa'])){
		$masize=$_GET['masize'];
		$sql="delete  from size where Masize='$masize'";
		$rs=mysqli_query($conn,$sql);
		if(isset($rs)){
			header('location:../index.php?action=size&view=themsize&thongbao=xoa');
		}else{
			header('location:../index.php?action=size&view=themsize&thongbao=loi');
		}
	}