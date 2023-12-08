<?php 
    $masize=$_GET['masize'];
    $sql_sua="SELECT * FROM `size` WHERE Masize='$masize'";
    $rs_sua=mysqli_query($conn,$sql_sua);
    $kq_sua=mysqli_fetch_array($rs_sua)?>
  <form class="form-row " method="GET" action="size/xuly.php" enctype="multipart/form-data">
	 <div class="form-group col-sm-4"></div><input hidden name="id" value="<?php echo $kq_sua['MaSize'];?>">
    <div class="form-group col-sm-3"><label class="m-auto" for="masize">Tên Màu</label>
    	<input type="text" class="form-control" name="masize" autofocus value="<?php echo $kq_sua['MaSize'];?>"></div>
    <div class="form-group col-sm-5"></div> <div class="form-group col-sm-4"></div>
    <div class="form-group col-sm-3"><label for="masv">&emsp;</label><input type="submit" class="form-control badge-info" name="suasize" value="Cập Nhập"></div>
    <hr>	
 </form><hr class=" badge-danger2">
