<!-- <?php 
//   date_default_timezone_set('Asia/Ho_Chi_Minh');
//   $date=getdate();
//   $thang=$date['year'].'-'.$date['mon'];
//   $nam=$date['year'];
//   $sql_dtt="SELECT * FROM hoadon WHERE TinhTrang='hoàn thành' and (NgayGiao BETWEEN '".$thang."-00' AND'".$thang."-31')";
//   $rs=mysqli_query($conn,$sql_dtt);
//   $danhthuthang=0;
//   while ( $row=mysqli_fetch_array($rs)) {
//         $danhthuthang=$danhthuthang+$row['TongTien'];
//   }
//   $order=mysqli_num_rows($rs);
//   $sql_dtn="SELECT * FROM hoadon WHERE TinhTrang='hoàn thành' and NgayGiao LIKE '".$nam."-%-%'";
//   $rsn=mysqli_query($conn,$sql_dtn);
//   $danhthunam=0;
//   while ( $rown=mysqli_fetch_array($rsn)) {
//         $danhthunam=$danhthunam+$rown['TongTien'];
//   }
?> 		 -->
<!DOCTYPE html>
<html>
<head>
  <title>Biểu đồ Doanh thu</title>
  <script src="https://d3js.org/d3.v6.min.js"></script>
</head>
<body>
  <h1>Biểu đồ Doanh thu</h1>
  <div id="chart"></div>

  <script>
    // Dữ liệu mẫu về doanh thu theo tháng
    const data = [
      { month: 'Tháng 1', revenue: 1000 },
      { month: 'Tháng 2', revenue: 1500 },
      { month: 'Tháng 3', revenue: 1200 },
      { month: 'Tháng 4', revenue: 1800 },
      { month: 'Tháng 5', revenue: 2000 },
      { month: 'Tháng 6', revenue: 2500 },
    ];

    // Kích thước biểu đồ
    const width = 600;
    const height = 400;

    // Tạo biểu đồ
    const svg = d3.select("#chart")
      .append("svg")
      .attr("width", width)
      .attr("height", height);

    // Thiết lập định dạng cho trục x
    const x = d3.scaleBand()
      .domain(data.map(d => d.month))
      .range([0, width])
      .padding(0.2);

    // Thiết lập định dạng cho trục y
    const y = d3.scaleLinear()
      .domain([0, d3.max(data, d => d.revenue)])
      .range([height, 0]);

    // Vẽ các cột biểu đồ
    svg.selectAll("rect")
      .data(data)
      .enter()
      .append("rect")
      .attr("x", d => x(d.month))
      .attr("y", d => y(d.revenue))
      .attr("width", x.bandwidth())
      .attr("height", d => height - y(d.revenue))
      .attr("fill", "steelblue");

    // Thêm trục x
    svg.append("g")
      .attr("transform", `translate(0, ${height})`)
      .call(d3.axisBottom(x));

    // Thêm trục y
    svg.append("g")
      .call(d3.axisLeft(y));
  </script>
</body>
</html>

