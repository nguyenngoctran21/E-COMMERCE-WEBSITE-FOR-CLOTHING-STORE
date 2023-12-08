<?php
// Kết nối đến cơ sở dữ liệu
$servername = "localhost";
$database = "art";
$username = "root";
$password = "";

// Tạo kết nối
$conn = mysqli_connect($servername, $username, $password, $database);

// Kiểm tra kết nối
if (!$conn) {
    die("Kết nối thất bại: " . mysqli_connect_error());
}

// Câu truy vấn SQL
$sql = "SELECT * FROM sanpham WHERE DonGia  ORDER BY DonGia DESC";

// Thực hiện truy vấn SQL
$result = mysqli_query($conn, $sql);
?>
<div class="colorlib-intro">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 text-center">
        <ul class="list-unstyled d-flex">
            <li class="mr-2 mb-2"><a href="?view=min" class="btn submit-search text-center" style="background-color: #88C8BC; color: white;">Giá từ thấp đến cao</a></li>
            <li class="mb-2"><a href="?view=max" class="btn submit-search text-center" style="background-color: #88C8BC; color: white;">Giá từ cao đến thấp</a></li>
        </ul>
    </div>
</div>

<div class="container ">
  <div class="row wrapper-dt">
      <div class="col-12">
        <div class="row pad-dt">
          <div class="row pad-dt">
                        <?php while ($row = mysqli_fetch_assoc($result)) {?>
                <div class="col-3 col-dt">
                    <a href="?view=product-detail&id=<?php echo $row['MaSP'] ?>">
                        <div class="item">
                        <div class="product-lable">
                            <?php $price_sale=price_sale($row['MaSP'],$row['DonGia']); if($price_sale < $row['DonGia']) { 
                            echo '<span>Giảm '.number_format( $row['DonGia'] - $price_sale).'đ </span>';}?>
                        </div>
                        <div><img src="webroot/image/sanpham/<?php echo $row['AnhNen']; ?>"></div>
                        <div class="item-name"><p> <?php echo $row['TenSP']; ?> </p></div>
                        <div class="item-price">
                            <p> <?php echo number_format($price_sale,0).'đ'; ?> </p>
                            <h6> <?php if(number_format($row['DonGia']) !== number_format($price_sale)) {echo number_format($row['DonGia']).'đ';} ;  ?> </h6> 
                        </div>
                        </div>
                    </a>
                    </div><?php }  ?>
                    <div id="data_sp" ></div>
                </div>
                </div>
            </div>
            <div id="loading" style="display:none">
                <img src="webroot/image/loader.gif" alt="Loading..."/>
            </div>
            
            <form id="load_sp" class="row">
                <input type="text" name="page" id="page" value="1" hidden="true">
                <input type="text" name="rowCount" id="rowCount" value="10" hidden="true">
                <button type="button" id="xemthem" class="btn btn-outline-secondary xemthem mx-auto col-2">xem thêm</button>
            </form>
</div>
         </div>
?>


                  
                
                
                