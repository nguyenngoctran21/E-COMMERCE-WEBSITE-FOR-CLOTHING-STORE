
	<footer id="colorlib-footer" role="contentinfo">
		<div class="container">
			<div class="row row-pb-md">
				<div class="col footer-col colorlib-widget">
					<h4>About Footwear</h4>
					<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p>
					<p>
						<ul class="colorlib-social-icons">
							<li><a href="https://www.facebook.com/"><i class="fa-brands fa-facebook"></i></i></a></li>
							<li><a href="https://www.instagram.com/"><i class="fa-brands fa-instagram"></i></i></a></li>
							<li><a href="https://twitter.com/"><i class="fa-brands fa-twitter"></i></i></a></li>
							<li><a href="https://www.youtube.com/"><i class="fa-brands fa-youtube"></i></a></li>
						</ul>
					</p>
				</div>
				<div class="col footer-col colorlib-widget">
					<h4>Customer Care</h4>
					<p>
						<ul class="colorlib-footer-links">
							<li><a href="#">Contact</a></li>
							<li><a href="#">Returns/Exchange</a></li>
							<li><a href="#">Gift Voucher</a></li>
							<li><a href="#">Wishlist</a></li>
							<li><a href="#">Special</a></li>
							<li><a href="#">Customer Services</a></li>
							<li><a href="#">Site maps</a></li>
						</ul>
					</p>
				</div>
				<div class="col footer-col colorlib-widget">
					<h4>Information</h4>
					<p>
						<ul class="colorlib-footer-links">
							<li><a href="#">About us</a></li>
							<li><a href="#">Delivery Information</a></li>
							<li><a href="#">Privacy Policy</a></li>
							<li><a href="#">Support</a></li>
							<li><a href="#">Order Tracking</a></li>
						</ul>
					</p>
				</div>

				<div class="col footer-col">
					<h4>News</h4>
					<ul class="colorlib-footer-links">
						<li><a href="blog.html">Blog</a></li>
						<li><a href="#">Press</a></li>
						<li><a href="#">Exhibitions</a></li>
					</ul>
				</div>

				<div class="col footer-col">
					<h4>Contact Information</h4>
					<ul class="colorlib-footer-links">
						<li>ĐAI HOC CAN THO, <br> 3/2 STREET , CAN THO CITY</li>
						<li><a href="tel://1234567920">+ 84 12345678</a></li>
						<li><a href="mailto:info@yoursite.com">nienluancs@yoursite.com</a></li>
						<li><a href="#">nienluancs.com</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="copy">
			<div class="row">
				<div class="col-sm-12 text-center">
					<p>
						<span><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made by B2012048 NLCS
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></span> 
					</p>
				</div>
			</div>
		</div>
	</footer>
</div>
<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
	</div>
	<!-- loc gia -->
	<script>
		$(function () {
			function updateMaxValue($id) {
				$.ajax({
					url: 'view/get_max.php',
					method: 'GET',
					dataType: 'json',
					success: function (data) {
						$("#slider-range").slider("option", "max", data.maxValue);
						console.log(data.maxValue);
					},
					error: function (xhr, status, error) {
						console.error('Lỗi khi tải giá trị max từ PHP: ' + error);
					}
				});
			}
			function updateMinValue($id) {
				$.ajax({
					url: 'view/get_min.php',
					method: 'GET',
					dataType: 'json',
					success: function (data) {
						$("#slider-range").slider("option", "min", data.minValue);
						console.log(data.minValue);
					},
					error: function (xhr, status, error) {
						console.error('Lỗi khi tải giá trị max từ PHP: ' + error);
					}
				});
			}
			

			function formatCurrency(value) {
				return value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
			}

			$("#slider-range").slider({
				range: true,
				min: <? echo $price_min ?>,
				max: <? echo $price_max ?>, // Giá trị ban đầu
				values: [<? echo $price_min ?>, <? echo $price_max ?>], // Giá trị ban đầu
				slide: function (event, ui) {
					var minVal = formatCurrency(ui.values[0]) + "đ";
					var maxVal = formatCurrency(ui.values[1]) + "đ";
					$("#amount").val(minVal + " - " + maxVal);
				}
			});
			
			
			updateMinValue();
			updateMaxValue();
		});
	
	</script>
	
	<!-- jQuery -->
	<script src="./webroot/js/jquery.min.js"></script>
   <!-- popper -->
   <script src="./webroot/js/popper.min.js"></script>
   <!-- bootstrap 4.1 -->
   <script src="./webroot/js/bootstrap.min.js"></script>
   <!-- jQuery easing -->
   <script src="./webroot/js/jquery.easing.1.3.js"></script>
	<!-- Waypoints -->
	<script src="./webroot/js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="./webroot/js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="./webroot/js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="./webroot/js/jquery.magnific-popup.min.js"></script>
	<script src="./webroot/js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="./webroot/js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="./webroot/js/jquery.stellar.min.js"></script>
	<!-- Main -->
	<script src="./webroot/js/main.js"></script>
	<!-- my style -->
	<script src="./webroot/js/style.js"></script>
	<!-- gia -->
  	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<link rel="stylesheet" href="/resources/demos/style.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	</body>
</html>