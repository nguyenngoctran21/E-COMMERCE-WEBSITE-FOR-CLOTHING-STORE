<?php
$servername = "localhost";
$database = "art";
$username = "root";
$password = "";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Lấy giá trị tối thiểu và tối đa từ yêu cầu GET
$minPrice = $_GET['minPrice'];
$maxPrice = $_GET['maxPrice'];

// Tạo truy vấn SQL để lọc sản phẩm theo giá
$sql = "SELECT * FROM `sanpham` WHERE DonGia >= $minPrice AND DonGia <= $maxPrice";
$result = mysqli_query($conn, $sql);

$filteredProducts = array();

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $filteredProducts[] = $row;
    }
}

// Trả về danh sách sản phẩm đã lọc dưới dạng JSON
echo json_encode($filteredProducts);

mysqli_close($conn);
?>
