<!-- <div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col">
                <p class="bread"><span><a href="?view">Trang Chủ</a></span> / <span>Tất cả sản phẩm</span></p> -->
            <!-- </div>
        </div>
    </div>
</div> --> 

<?php
 $product=productAll();
?> 
<!--  gia -->
<!-- <div class="container">
    <div class="col-md-6">
        <ul>
            <button<li><a href="?view=min" class="btn btn-primary submit-search text-center">Giá từ cao đến thấp</a></li></button>
            <button<li><a href="?view=max" class="btn btn-primary submit-search text-center">Giá từ cao đến thấp</a></li></button>
 
        </ul>
    </div>
</div> -->

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
          <div class="row pad-dt"><?php while( $row=mysqli_fetch_array($product)){ ?>
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



                  
                
                
                
               