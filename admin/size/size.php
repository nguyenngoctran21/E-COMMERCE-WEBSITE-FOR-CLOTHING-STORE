<?php
	$sql="select * from size ";
	$rs=mysqli_query($conn,$sql);
	
?>
<div class="container-fluid">
	<div class=" alert alert-primary">
	  <h4 class="page-title">
	    <span class="page-title-icon bg-gradient-primary text-white mr-2">
	    </span> ADMIN - ART &#160;<i class="fas fa-chevron-right" style="font-size: 18px"></i>&#160; Sản Phẩm&#160;<i class="fas fa-chevron-right" style="font-size: 18px"></i>&#160;Size </h4>
	</div><br>
<div class="card">
		<div class="card-body">
<?php include_once('main.php')?>
<table class="table table-hover m-auto text-center" style="font-size: 13px;">
	<thead class="badge-info">
		<tr>
			<th>Tên Size</th><th>Sửa Size</th><th>Xóa Size</th><th colspan="2"></th>
		</tr>
	</thead>
	<tbody>
 <?php $so=0;
	 while ($row=mysqli_fetch_array($rs)) { ?>
		<tr>
			<td><?php echo $row['MaSize']; ?></td>
			<td><a href="index.php?action=size&view=suasize&masize=<?php echo $row['MaSize']; ?>" ><i class="mdi mdi-dns"></i></a></td> <!-- sửa-->		
			<td><a href="size/main.php?view=xoasize&masize=<?php echo $row['MaSize']; ?>" ><i class="mdi mdi-dns"></i></a></td><!-- xóa-->	
		</tr>
 <?php	} ?>
		
	</tbody>
</table>

</div></div></div>
<?php 


?>