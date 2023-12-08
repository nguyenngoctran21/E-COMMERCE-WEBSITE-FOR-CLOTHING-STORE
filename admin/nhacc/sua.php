<?php 
    $maNCC=$_GET['maNCC'];
    $sql_sua="SELECT * FROM `nhacc` WHERE MaNCC='$maNCC'";
    $rs_sua=mysqli_query($conn,$sql_sua);
    $kq_sua=mysqli_fetch_array($rs_sua)?>
  <form class="form-row " method="GET" action="nhacc/xuly.php" enctype="multipart/form-data">
	 <div class="form-group col-sm-4"></div><input hidden name="maNCC" value="<?php echo $kq_sua['MaNCC'];?>">
    <div class="form-group col-sm-3"><label class="m-auto" for="">Tên Danh Mục</label>
    	<input type="text" class="form-control" name="tenNCC" autofocus value="<?php echo $kq_sua['TenNCC'];?>"></div>
    <div class="form-group col-sm-5"></div> <div class="form-group col-sm-4"></div>
    <div class="form-group col-sm-3"><label for="masv">&emsp;</label><input type="submit" class="form-control badge-info" name="suaNCC" value="Cập Nhập"></div>
    <hr>	
 </form><hr class=" badge-danger">
