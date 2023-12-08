<?php
	$sql="select * from khuyenmai ";
	$rs=mysqli_query($conn,$sql);
	
?>

		
		<div class="row">
			<table class="table table-hover m-auto text-center" >
				<thead class="badge-info" style="font-size: 14px;">
					<tr>
						<th>Mã KM</th><th>Tên khuyến mãi</th><th>%</th><th> Giá</th><th>Mô Tả</th><th>Ngày bắt đầu</th><th>Ngày kết thúc </th><th>Sửa</th><th>Xóa</th><th>Chọn</th></th>
					</tr>
				</thead>
				<tbody  style="font-size: 12px;">
			 <?php $so=0;
				 while ($row=mysqli_fetch_array($rs)) { ?>
					<tr>
						<td><?php echo $row['MaKM']; ?></td>
						<td><?php echo $row['TenKM']; ?></td>
						<td><?php echo $row['KM_PT'].' %'; ?></td>
						<td><?php echo number_format($row['TienKM']).' đ'; ?></td>
						<td><?php echo $row['MoTa']; ?></td>
						<td><?php echo $row['NgayBD']; ?></td>
						<td><?php echo $row['NgayKT']; ?></td>
						<td><a href="index.php?action=khuyenmai&view=sua&makm=<?php echo $row['MaKM']; ?>" ><i class="mdi mdi-dns"></i></a></td> <!-- sửa-->		
						
						<td><a href="khuyenmai/xuly.php?xoa=xoa&makm=<?php echo $row['MaKM']; ?>" ><i class="mdi mdi-dns"></i></a></td><!-- xóa-->
						<td><a href="index.php?action=khuyenmai&view=apply&makm=<?php echo $row['MaKM']; ?>" >APPLY</a></td>	
					</tr>
			 <?php	} ?>
					
				</tbody>
			</table>
		</div>
	</div>
</div>
