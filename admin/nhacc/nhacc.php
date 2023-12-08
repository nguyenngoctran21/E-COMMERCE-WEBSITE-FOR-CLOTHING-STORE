<?php
	include_once('../model/database.php');
	$sql="select *from nhacc ";
	$rs=mysqli_query($conn,$sql);
	
?>
<div class="container-fluid">
	<div class=" alert alert-primary">
	  <h4 class="page-title">
	    <span class="page-title-icon bg-gradient-primary text-white mr-2">
	      
	    </span> ADMIN - ART &#160;<i class="fas fa-chevron-right" style="font-size: 18px"></i>&#160; Nhà Cung Cấp</h4>
	</div><br>

<?php include_once('nhacc/main.php');?>
	<div class="card card-body">
		<div class="row">
			<table class="table table-hover m-auto text-center" style="font-size: 13px;">
		<thead class="badge-info">
			<tr>
				<th>Mã Danh Mục</th> <th>Tên Danh Mục</th> <th>Sửa Thông Tin</th> <th>Xóa Thông Tin</th>
				<!-- <th colspan ="2" class="badge-danger"></th> -->
			</tr>
		</thead>
		<tbody>
	 <?php $so=0;
		 while ($row=mysqli_fetch_array($rs)) { ?>
			<tr>
				<td><?php echo $row['MaNCC']; ?></td><td><?php echo $row['TenNCC']; ?></td>
				<td><a href="index.php?action=nhacc&view=suaNCC&maNCC=<?php echo $row['MaNCC']; ?>" ><i class="mdi mdi-dns"></i></a></td>
				<td><a href="nhacc/main.php?view=xoaNCC&maNCC=<?php echo $row['MaNCC']; ?>" ><i class="mdi mdi-dns"></i></a></td>
			</tr>
	 <?php	} ?>
			
		</tbody>
	</table>
		</div>
	</div>
	
</div>

<?php 


?>