-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2023 lúc 05:21 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `art`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhsp`
--

CREATE TABLE `anhsp` (
  `MaSP` int(11) NOT NULL,
  `Anh1` varchar(500) NOT NULL,
  `Anh2` varchar(500) DEFAULT NULL,
  `Anh3` varchar(500) DEFAULT NULL,
  `Anh4` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `anhsp`
--

INSERT INTO `anhsp` (`MaSP`, `Anh1`, `Anh2`, `Anh3`, `Anh4`) VALUES
(94, '', NULL, NULL, NULL),
(99, '', NULL, NULL, NULL),
(99, '1.jpg', '2bcc57582d4430dd4d04fcc6725c16f8.jpg_360x360q75.jpg_ - Copy.webp', '2bcc57582d4430dd4d04fcc6725c16f8.jpg_360x360q75.jpg_.webp', '2fd5f6c0b20e34bd123d516da9897992.jpg'),
(103, '1.jpg', '2bcc57582d4430dd4d04fcc6725c16f8.jpg_360x360q75.jpg_ - Copy.webp', '2bcc57582d4430dd4d04fcc6725c16f8.jpg_360x360q75.jpg_.webp', '2fd5f6c0b20e34bd123d516da9897992.jpg'),
(100, '12.png', '45aa7c071bbed90e0036d3cbee301636 - Copy - Copy.jpg', '92db67039d98e5a65bb7fe05bd223395.jpg', '5445quan-short-nike-dri-fit-academy-mens-football-AJ9995-015-(1).jpg'),
(97, '123456.jpg', NULL, NULL, NULL),
(102, '2bcc57582d4430dd4d04fcc6725c16f8.jpg_360x360q75.jpg_ - Copy.webp', '2bcc57582d4430dd4d04fcc6725c16f8.jpg_360x360q75.jpg_.webp', '2fd5f6c0b20e34bd123d516da9897992.jpg', '12.png'),
(95, '2bcc57582d4430dd4d04fcc6725c16f8.jpg_360x360q75.jpg_.webp', '47ed91746975f3b490c37cd838b67e247af2ccce_0.jpg', '92db67039d98e5a65bb7fe05bd223395.jpg', '5445quan-short-nike-dri-fit-academy-mens-football-AJ9995-015-(1).jpg'),
(113, '2fd5f6c0b20e34bd123d516da9897992.jpg', '92db67039d98e5a65bb7fe05bd223395.jpg', '5445quan-short-nike-dri-fit-academy-mens-football-AJ9995-015-(1).jpg', '123456.jpg'),
(101, '5445quan-short-nike-dri-fit-academy-mens-football-AJ9995-015-(1).jpg', NULL, NULL, NULL),
(96, '92db67039d98e5a65bb7fe05bd223395.jpg', NULL, NULL, NULL),
(94, 'Capture.PNG', NULL, NULL, NULL),
(98, 'images (3).jpg', 'images (3).jpg', 'images (3).jpg', 'images (3).jpg'),
(108, 'NikeZoomRivalFly.jpg', 'Screenshot 2023-10-06 013329.png', NULL, NULL),
(105, 'Screenshot 2023-10-06 012309.png', NULL, NULL, NULL),
(106, 'Screenshot 2023-10-06 012547.png', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBL` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `NoiDung` text NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`MaBL`, `MaSP`, `MaKH`, `NoiDung`, `ThoiGian`) VALUES
(22, 99, 19, 'sản phẩm ổn', '2023-10-06 00:40:04'),
(23, 99, 19, 'tốt\r\n', '2023-10-06 00:40:13'),
(24, 99, 19, '5 sao\r\n', '2023-10-06 00:40:20'),
(25, 99, 20, 'tuyệt\r\n', '2023-10-06 00:40:40'),
(26, 99, 23, '123335353\r\n', '2023-10-09 06:11:40'),
(27, 102, 23, 'ưdgyuggwuifhioeshf\r\n', '2023-10-11 10:27:15'),
(28, 99, 23, 'xin chào', '2023-11-08 23:01:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `ThanhTien` decimal(10,0) NOT NULL,
  `Size` int(11) NOT NULL,
  `MaMau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`, `Size`, `MaMau`) VALUES
(122, 99, 1, 4000000, 4000000, 1, 'Đen '),
(123, 100, 1, 5600000, 5600000, 1, 'Đen '),
(124, 100, 2, 5600000, 11200000, 1, 'Đen '),
(124, 100, 1, 5600000, 5600000, 2, 'Đen '),
(125, 113, 1, 4940899, 4940899, 1, 'Đen '),
(126, 99, 1, 4000000, 4000000, 1, 'Đen ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `MaSP` int(11) NOT NULL,
  `MaSize` int(11) NOT NULL,
  `MaMau` varchar(50) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`MaSP`, `MaSize`, `MaMau`, `SoLuong`) VALUES
(99, 1, 'Đen ', 1999988),
(99, 1, 'none', 0),
(99, 1, 'Trắng', 0),
(100, 1, 'Đen ', 999997),
(100, 1, 'none', 0),
(100, 2, 'Đen ', 999999),
(100, 2, 'none', 0),
(100, 3, 'Đen ', 2000000),
(100, 3, 'none', 0),
(101, 1, 'none', 0),
(101, 1, 'Vàng', 0),
(101, 1, 'Xanh', 0),
(101, 2, 'none', 0),
(101, 2, 'Vàng', 0),
(101, 2, 'Xanh', 0),
(101, 3, 'none', 0),
(101, 3, 'Vàng', 0),
(101, 3, 'Xanh', 0),
(102, 1, 'Đen ', 0),
(102, 1, 'none', 0),
(102, 1, 'Trắng', 0),
(103, 1, 'Đen - Trắng', 0),
(103, 1, 'Vàng', 0),
(103, 3, 'Đen - Trắng', 0),
(103, 3, 'Vàng', 0),
(104, 1, 'Đen ', 0),
(105, 1, 'Đen ', 0),
(105, 1, 'Trắng', 0),
(106, 1, 'Đen ', 0),
(106, 1, 'none', 0),
(106, 1, 'Trắng', 0),
(108, 2, 'Đen ', 0),
(108, 2, 'none', 0),
(113, 1, 'Đen ', 999999),
(113, 2, 'Đen ', 1000000),
(113, 3, 'Đen ', 1000000),
(113, 5, 'Đen ', 1000000);

--
-- Bẫy `chitietsanpham`
--
DELIMITER $$
CREATE TRIGGER `tongsl` AFTER UPDATE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_del` AFTER DELETE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = OLD.MaSP) WHERE MaSP = OLD.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_insert` AFTER INSERT ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Sản Phẩm Nổi Bật'),
(2, 'Sản Phẩm Mới'),
(3, 'Sản Phẩm bán chạy'),
(7, 'okSản Phẩm Nổi Bật');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaNV` int(11) DEFAULT NULL,
  `NgayDat` datetime DEFAULT current_timestamp(),
  `NgayGiao` datetime DEFAULT NULL,
  `TinhTrang` varchar(20) DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `MaNVGH` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaKH`, `MaNV`, `NgayDat`, `NgayGiao`, `TinhTrang`, `TongTien`, `MaNVGH`) VALUES
(122, 23, 3, '2023-11-08 22:57:43', '2023-11-09 23:23:41', 'hoàn thành', 4000000, '3'),
(123, 23, 3, '2023-11-08 23:02:04', NULL, 'Hủy Bỏ', 5600000, NULL),
(124, 23, 3, '2023-11-08 23:04:41', '2023-11-09 23:06:20', 'hoàn thành', 16800000, '7'),
(125, 23, NULL, '2023-11-08 23:23:54', NULL, 'chưa duyệt', 4940899, NULL),
(126, 23, NULL, '2023-11-11 00:01:32', NULL, 'chưa duyệt', 4000000, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `TenKH` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `SDT` bigint(12) NOT NULL,
  `DiaChi` text NOT NULL,
  `MatKhau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `Email`, `SDT`, `DiaChi`, `MatKhau`) VALUES
(21, 'tran', 'giaohang12@gmail.com', 98765432, 'srtyfuy', '123'),
(19, 'nart', 'nguyenngoctran261002@gmail.com', 0, 'gfd', '123'),
(20, 'GIFT STORE', 'nnt2610ntdn@gmail.com', 9876543, 'ppp', '123'),
(23, 'NGUYEN NGOC TRAN', 'tranb2012048@student.ctu.edu.vn', 999999999, '3/2 thanh pho can tho', '1234567890');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(50) DEFAULT NULL,
  `MoTa` varchar(11) DEFAULT NULL,
  `KM_PT` int(5) DEFAULT NULL,
  `TienKM` decimal(10,0) DEFAULT NULL,
  `NgayBD` date DEFAULT NULL,
  `NgayKT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `MoTa`, `KM_PT`, `TienKM`, `NgayBD`, `NgayKT`) VALUES
(9, 'Khuyến mãi tháng 10', 'giảm giá', 0, 1000000, '2023-10-01', '2023-12-30'),
(10, 'KHUYẾN MÃI SỐC', 'OKLA', 10, 100000, '2023-11-01', '2023-11-30'),
(11, 'mkl', '123', 0, 100000, '2023-11-08', '2023-11-24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau`
--

CREATE TABLE `mau` (
  `MaMau` varchar(50) NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `mau`
--

INSERT INTO `mau` (`MaMau`) VALUES
('Đen '),
('Đen - Trắng'),
('Đỏ'),
('Hồng'),
('KHÓI XANH'),
('lam'),
('none'),
('Trắng'),
('Vàng'),
('Xanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoinhan`
--

CREATE TABLE `nguoinhan` (
  `MaHD` int(11) NOT NULL,
  `TenNN` varchar(50) NOT NULL,
  `DiaChiNN` text NOT NULL,
  `SDTNN` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoinhan`
--

INSERT INTO `nguoinhan` (`MaHD`, `TenNN`, `DiaChiNN`, `SDTNN`) VALUES
(122, 'NGUYEN NGOC TRAN', '3/2 thanh pho can tho', 999999999),
(123, 'NGUYEN NGOC TRAN', '3/2 thanh pho can tho', 999999999),
(124, 'NGUYEN NGOC TRAN', '3/2 thanh pho can tho', 999999999),
(125, 'NGUYEN NGOC TRAN', '3/2 thanh pho can tho', 999999999),
(126, 'NGUYEN NGOC TRAN', '3/2 thanh pho can tho', 999999999);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacc`
--

CREATE TABLE `nhacc` (
  `MaNCC` int(11) NOT NULL,
  `TenNCC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacc`
--

INSERT INTO `nhacc` (`MaNCC`, `TenNCC`) VALUES
(1, 'Nike'),
(2, 'Adidas'),
(3, 'Converse'),
(4, 'Balenciaga'),
(7, 'Gucci');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int(11) NOT NULL,
  `TenNV` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `SDT` int(12) NOT NULL,
  `DiaChi` text NOT NULL,
  `MatKhau` varchar(50) NOT NULL,
  `Quyen` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `Email`, `SDT`, `DiaChi`, `MatKhau`, `Quyen`) VALUES
(3, 'Admin', 'admin@gmail.com', 905027527, 'Số 451', '123', 1),
(7, 'giao hàng', 'giaohang@gmail.com', 1234567890, '1234', '123', 5),
(4, 'KHO', 'kho@gmail.com', 132465798, 'Số 451', '123', 3),
(2, 'Nhân Viên Bán Hàng ', 'NVBH@gmail.com', 123456789, 'cần thơ', '123', 4),
(1, 'Quản Lý', 'quanly@gmail.com', 778923743, 'cần thơ', '123', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieugiamgia`
--

CREATE TABLE `phieugiamgia` (
  `id` varchar(200) NOT NULL,
  `TenPhieu` varchar(200) NOT NULL,
  `SoTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieugiamgia`
--

INSERT INTO `phieugiamgia` (`id`, `TenPhieu`, `SoTien`) VALUES
('ngoctran', 'phiếu của ngoctran', 100000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPN` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `NgayNhap` datetime NOT NULL DEFAULT current_timestamp(),
  `Note` varchar(100) DEFAULT NULL,
  `Size` int(11) NOT NULL,
  `Mau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`MaPN`, `MaNV`, `MaSP`, `SoLuong`, `DonGia`, `TongTien`, `NgayNhap`, `Note`, `Size`, `Mau`) VALUES
(200, 3, 99, 1000000, 123445, 9999999999, '2023-10-04 20:13:10', '', 1, 'Đen'),
(201, 3, 100, 1000000, 123445, 9999999999, '2023-10-04 21:30:34', '', 1, 'Đen'),
(202, 3, 100, 1000000, 123445, 9999999999, '2023-10-04 21:30:34', '', 2, 'Đen'),
(203, 3, 100, 1000000, 123445, 9999999999, '2023-10-04 21:30:34', '', 3, 'Đen'),
(204, 3, 99, 1000000, 123445, 9999999999, '2023-10-06 08:17:42', '', 1, 'Đen'),
(205, 3, 99, 1000000, 123445, 9999999999, '2023-10-06 08:18:38', '', 1, 'Đen'),
(206, 3, 99, 1000000, 2222232, 9999999999, '2023-10-06 08:19:39', '', 1, 'Đen'),
(207, 3, 100, 0, 1, 0, '2023-10-07 16:59:38', '', 0, 'Đen'),
(208, 3, 100, 0, 1, 0, '2023-10-07 16:59:49', '', 0, 'Đen'),
(209, 3, 100, 1000000, 123445, 9999999999, '2023-10-07 17:13:52', '', 1, 'Đen'),
(210, 3, 100, 1000000, 123445, 9999999999, '2023-10-07 17:13:52', '', 2, 'Đen'),
(211, 3, 100, 1000000, 123445, 9999999999, '2023-10-07 17:13:52', '', 3, 'Đen'),
(212, 3, 100, 1000000, 123445, 9999999999, '2023-10-07 17:19:55', '', 1, 'Đen'),
(213, 3, 100, 1000000, 123445, 9999999999, '2023-10-07 17:19:55', '', 2, 'Đen'),
(214, 3, 100, 1000000, 123445, 9999999999, '2023-10-07 17:20:16', '', 1, 'Đen'),
(215, 3, 100, 1000000, 123445, 9999999999, '2023-10-07 17:20:16', '', 2, 'Đen'),
(216, 3, 100, 1000000, 123445, 9999999999, '2023-10-09 06:13:10', '', 1, 'Đen'),
(217, 3, 100, 1000000, 123445, 9999999999, '2023-10-09 06:13:10', '', 2, 'Đen'),
(218, 3, 100, 1000000, 123445, 9999999999, '2023-10-09 06:13:10', '', 3, 'Đen'),
(219, 3, 113, 1000000, 123445, 9999999999, '2023-11-08 23:17:27', 'SGDG', 1, 'Đen'),
(220, 3, 113, 1000000, 123445, 9999999999, '2023-11-08 23:17:27', 'SGDG', 2, 'Đen'),
(221, 3, 113, 1000000, 123445, 9999999999, '2023-11-08 23:17:27', 'SGDG', 3, 'Đen'),
(222, 3, 113, 1000000, 123445, 9999999999, '2023-11-08 23:17:27', 'SGDG', 5, 'Đen');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `MaPX` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `Mau` varchar(100) NOT NULL,
  `Size` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `Note` varchar(500) NOT NULL,
  `NgayXuat` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `id` int(11) NOT NULL,
  `Ten` varchar(100) NOT NULL,
  `MoTa` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`id`, `Ten`, `MoTa`) VALUES
(1, 'Manager', 'chủ cửa hàng'),
(2, 'Project Manager', 'quản trị viên'),
(3, 'Quản lý Kho', ''),
(4, 'Nhân viên Bán Hàng', ''),
(5, 'Nhân viên giao hàng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(50) NOT NULL,
  `MaDM` int(11) DEFAULT NULL,
  `MaNCC` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT 0,
  `MoTa` text DEFAULT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `AnhNen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MaDM`, `MaNCC`, `SoLuong`, `MoTa`, `DonGia`, `AnhNen`) VALUES
(99, 'Áo Thun Adidas Oversize Classics Adicolor - White', 1, 2, 1999988, 'Nike Free Metcon 2 UT mang đến một lớp hỗ trợ khác cho một loạt các bài tập huấn luyện. Dây đai bền giúp giữ bàn chân của bạn, trong khi bọt linh hoạt giúp bạn di chuyển tự nhiên từ trọng lượng đến máy khoan nhanh nhẹn.', 4000000, '1.jpg'),
(100, 'Áo Nike Free Metcon', 1, 1, 3999996, '123', 5600000, '92db67039d98e5a65bb7fe05bd223395.jpg'),
(101, 'quần Nike Adicolor - White', 1, 1, 0, '4567', 6600000, 'NikeSBSolarsoftPortmoreII.jpg'),
(102, 'ÁO THUN ADIDAS Z.N.E.', 1, 2, 0, 'Sản phẩm này có chứa tối thiểu 70% hỗn hợp các chất liệu tái chế và có thể tái tạo.', 3200000, '12.png'),
(103, 'QUẦN SHORT ADIDAS PREMIUM Z.N.E.', 2, 2, 0, 'Bộ sưu tập adidas Z.N.E. biến hóa các item must-have thường ngày trở thành các sản phẩm cao cấp. Với thiết kế nhã nhặn và phối màu trung tính hơn, mẫu quần short này mang đến nét đơn giản mà bạn cần để tìm lại sự cân bằng. Đáy thấp và kiểu dáng suông rộng cho cảm giác thoải mái. Công nghệ AEROREADY thấm hút ẩm đảm bảo cho bạn luôn khô ráo, cùng logo Z.N.E. hoàn thiện thiết kế.', 1200000, 'Screenshot 2023-10-06 011827.png'),
(104, 'Áo Polo Nam Converse Ss Polo Shirt 10024739-A02 Mà', 1, 3, 0, '123', 3000000, '47ed91746975f3b490c37cd838b67e247af2ccce_0.jpg'),
(105, 'Áo DECONSTRUCTED JACKET IN BLACK', 1, 4, 0, '1234', 9000000, 'Screenshot 2023-10-06 012309.png'),
(106, 'Áo POLITICAL CAMPAIGN COCOON PUFFER GILET', 1, 4, 0, '123', 8900000, 'Screenshot 2023-10-06 012547.png'),
(108, 'Áo GUCCI CARDIGAN COTTON ', 1, 7, 0, '1234567', 9999000, 'Screenshot 2023-10-06 013329.png'),
(113, 'ÁO ĐẸP', 1, 1, 3999999, '12345698OHG', 5600999, '2fd5f6c0b20e34bd123d516da9897992.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamkhuyenmai`
--

CREATE TABLE `sanphamkhuyenmai` (
  `MaSP` int(11) NOT NULL,
  `MaKM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphamkhuyenmai`
--

INSERT INTO `sanphamkhuyenmai` (`MaSP`, `MaKM`) VALUES
(103, 9),
(105, 9),
(106, 9),
(108, 9),
(108, 11),
(113, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `MaSize` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`MaSize`) VALUES
(1),
(2),
(3),
(5);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  ADD PRIMARY KEY (`Anh1`,`MaSP`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBL`,`MaSP`,`MaKH`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaHD`,`MaSP`,`Size`,`MaMau`),
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `Size` (`Size`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`MaSP`,`MaSize`,`MaMau`),
  ADD KEY `MaSize` (`MaSize`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaKH` (`MaKH`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Chỉ mục cho bảng `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`MaMau`);

--
-- Chỉ mục cho bảng `nguoinhan`
--
ALTER TABLE `nguoinhan`
  ADD PRIMARY KEY (`MaHD`);

--
-- Chỉ mục cho bảng `nhacc`
--
ALTER TABLE `nhacc`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaNV` (`MaNV`),
  ADD KEY `Quyen` (`Quyen`);

--
-- Chỉ mục cho bảng `phieugiamgia`
--
ALTER TABLE `phieugiamgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`MaPX`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MauSP` (`MaSP`),
  ADD KEY `Mau` (`Mau`),
  ADD KEY `Size` (`Size`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaNCC` (`MaNCC`),
  ADD KEY `MaDM` (`MaDM`);

--
-- Chỉ mục cho bảng `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD PRIMARY KEY (`MaSP`,`MaKM`),
  ADD KEY `MaKH` (`MaKM`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`MaSize`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaBL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `MaDM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `nhacc`
--
ALTER TABLE `nhacc`
  MODIFY `MaNCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `MaPN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `MaPX` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `chitiethoadon_ibfk_3` FOREIGN KEY (`Size`) REFERENCES `size` (`MaSize`),
  ADD CONSTRAINT `chitiethoadon_ibfk_4` FOREIGN KEY (`MaMau`) REFERENCES `mau` (`MaMau`);

--
-- Các ràng buộc cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `chitietsanpham_ibfk_1` FOREIGN KEY (`MaSize`) REFERENCES `size` (`MaSize`),
  ADD CONSTRAINT `chitietsanpham_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `chitietsanpham_ibfk_3` FOREIGN KEY (`MaMau`) REFERENCES `mau` (`MaMau`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `nguoinhan`
--
ALTER TABLE `nguoinhan`
  ADD CONSTRAINT `nguoinhan_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`Quyen`) REFERENCES `quyen` (`id`);

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `phieuxuat_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `phieuxuat_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `phieuxuat_ibfk_3` FOREIGN KEY (`Mau`) REFERENCES `mau` (`MaMau`),
  ADD CONSTRAINT `phieuxuat_ibfk_4` FOREIGN KEY (`Size`) REFERENCES `size` (`MaSize`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacc` (`MaNCC`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`);

--
-- Các ràng buộc cho bảng `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD CONSTRAINT `sanphamkhuyenmai_ibfk_1` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`),
  ADD CONSTRAINT `sanphamkhuyenmai_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
