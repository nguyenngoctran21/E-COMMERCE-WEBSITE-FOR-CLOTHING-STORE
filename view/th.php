<!DOCTYPE html>
<html>
<head>
    <title>Lọc sản phẩm theo giá</title>
    <script>
        function filterProducts() {
            var minPrice = document.getElementById("minPrice").value;
            var maxPrice = document.getElementById("maxPrice").value;

            // Lọc sản phẩm dựa trên giá
            var products = document.getElementsByClassName("product");
            for (var i = 0; i < products.length; i++) {
                var product = products[i];
                var price = parseFloat(product.getAttribute("data-price"));
                
                if (price >= minPrice && price <= maxPrice) {
                    product.style.display = "block";
                } else {
                    product.style.display = "none";
                }
            }
        }
    </script>
</head>
<body>
    <h1>Lọc sản phẩm theo giá</h1>
    <label for="minPrice">Giá tối thiểu:</label>
    <input type="number" id="minPrice" min="0" step="10" value="0">
    <label for="maxPrice">Giá tối đa:</label>
    <input type="number" id="maxPrice" min="0" step="10" value="200">
    <button onclick="filterProducts()">Lọc</button>

    <!-- <div class="product" data-price="100" style="display:block;">
        <h2>Sản phẩm 1</h2>
        <p>Giá: $100</p>
    </div>

    <div class="product" data-price="150" style="display:block;">
        <h2>Sản phẩm 2</h2>
        <p>Giá: $150</p>
    </div>

    <div class="product" data-price="200" style="display:block;">
        <h2>Sản phẩm 3</h2>
        <p>Giá: $200</p>
    </div> -->
</body>
</html>
