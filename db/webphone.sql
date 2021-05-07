-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 01:54 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webphone`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Văn Doanh');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `dm_id` int(11) NOT NULL,
  `dm_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`dm_id`, `dm_name`) VALUES
(1, 'Điện Thoại'),
(2, 'Ốp Lưng'),
(3, 'Phụ Kiện');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc_tin`
--

CREATE TABLE `danhmuc_tin` (
  `danhmuctin_id` int(11) NOT NULL,
  `tendanhmuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc_tin`
--

INSERT INTO `danhmuc_tin` (`danhmuctin_id`, `tendanhmuc`) VALUES
(1, 'Điện Thoại'),
(2, 'Ốp Lưng'),
(3, 'Phụ Kiện');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `donhang_id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `mahang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tinhtrang` int(11) NOT NULL,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`donhang_id`, `sp_id`, `soluong`, `mahang`, `khachhang_id`, `ngaythang`, `tinhtrang`, `huydon`) VALUES
(20, 8, 2, '1000', 14, '2020-07-03 16:26:33', 0, 0),
(21, 3, 5, '1000', 14, '2020-07-03 16:26:33', 0, 0),
(24, 8, 2, '9746', 16, '2020-07-03 17:12:32', 0, 0),
(25, 1, 4, '9746', 16, '2020-07-03 17:12:32', 0, 0),
(26, 5, 3, '9746', 16, '2020-07-03 17:12:32', 0, 0),
(27, 13, 1, '6091', 17, '2020-07-06 15:56:34', 1, 0),
(28, 8, 1, '6091', 17, '2020-07-06 15:56:34', 1, 0),
(29, 5, 2, '6091', 17, '2020-07-06 15:56:34', 1, 0),
(30, 8, 3, '9214', 19, '2020-07-04 04:39:47', 0, 0),
(31, 13, 5, '9214', 19, '2020-07-04 04:39:47', 0, 0),
(34, 9, 1, '839', 15, '2020-07-06 17:16:01', 0, 2),
(35, 13, 1, '839', 15, '2020-07-06 17:16:01', 0, 2),
(36, 5, 1, '450', 21, '2020-11-29 07:18:28', 0, 0),
(38, 5, 1, '9533', 22, '2020-12-10 10:42:36', 1, 0),
(43, 6, 1, '7390', 21, '2020-12-10 14:17:18', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `giaodich`
--

CREATE TABLE `giaodich` (
  `giaodich_id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `tinhtrangdon` int(11) NOT NULL DEFAULT 0,
  `soluong` int(11) NOT NULL,
  `magiaodich` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giaodich`
--

INSERT INTO `giaodich` (`giaodich_id`, `sp_id`, `khachhang_id`, `tinhtrangdon`, `soluong`, `magiaodich`, `ngaythang`, `huydon`) VALUES
(5, 8, 14, 0, 2, '1000', '2020-07-03 16:26:33', 0),
(6, 3, 14, 0, 5, '1000', '2020-07-03 16:26:33', 0),
(9, 8, 16, 0, 2, '9746', '2020-07-03 17:12:32', 0),
(10, 1, 16, 0, 4, '9746', '2020-07-03 17:12:32', 0),
(11, 5, 16, 0, 3, '9746', '2020-07-03 17:12:32', 0),
(12, 13, 17, 1, 1, '6091', '2020-07-06 15:56:34', 0),
(13, 8, 17, 1, 1, '6091', '2020-07-06 15:56:34', 0),
(14, 5, 17, 1, 2, '6091', '2020-07-06 15:56:34', 0),
(15, 8, 19, 0, 3, '9214', '2020-07-04 04:39:47', 0),
(16, 13, 19, 0, 5, '9214', '2020-07-04 04:39:47', 0),
(17, 11, 15, 1, 1, '2609', '2020-07-06 17:16:51', 2),
(18, 2, 15, 1, 1, '2609', '2020-07-06 17:16:51', 2),
(19, 9, 15, 0, 1, '839', '2020-07-06 17:16:01', 2),
(20, 13, 15, 0, 1, '839', '2020-07-06 17:16:01', 2),
(21, 5, 21, 0, 1, '450', '2020-11-29 07:18:28', 0),
(22, 4, 21, 0, 3, '5294', '2020-11-29 07:32:17', 0),
(23, 5, 22, 1, 1, '9533', '2020-12-10 10:42:36', 0),
(24, 15, 21, 0, 3, '8692', '2020-12-04 01:21:09', 0),
(25, 5, 21, 0, 1, '3722', '2020-12-10 10:44:57', 0),
(26, 2, 21, 0, 1, '3722', '2020-12-10 10:44:57', 0),
(27, 5, 21, 0, 1, '9694', '2020-12-10 10:47:34', 0),
(28, 6, 21, 1, 1, '7390', '2020-12-10 14:17:18', 0),
(29, 5, 21, 0, 1, '3680', '2020-12-10 10:48:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `giohang_id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `tensanpham` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`giohang_id`, `sp_id`, `tensanpham`, `giasanpham`, `hinhanh`, `soluong`) VALUES
(47, 23, 'Ốp Lưng OPPO', 50000, 'oplung.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `giaohang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`khachhang_id`, `name`, `phone`, `address`, `note`, `email`, `password`, `giaohang`) VALUES
(14, 'Nguyễn Văn A', '0372458126', '123k/12 abc, đà nẵng', 'Giao hàng nhanh nhé', 'vana@gmal.com', '7d3e17a6469c7e53c3d906532bd0ccae', 0),
(15, 'Lê Thanh Thúy', '0899234567', '123k/12 abc, đà nẵng', 'Giao hàng nhanh nhé', 'lethanhthuy@gmail.com', '7720ab50b0739012d36de0b13db361bf', 1),
(16, 'Nam', '027654896', '123k/12 abc, đà nẵng', 'Giao hàng nhanh nhé', 'nam123@gmail.com', '54e193277215c92570bc9659bd48ff40', 1),
(17, 'Văn Lâm', '0376015458', 'k58/31 ông ích khiêm, đà nẵng', 'Giao hàng nhanh nhé', 'vanlam@gmail.com', '6f2008b2a318fa5f1a2fcdb9833e08be', 1),
(18, 'Văn Toàn', '0273482460', 'Quảng Bình', 'Giao hàng nhanh nhé', 'vantoan@gmail.com', '6685bb1ab73104770878bd25ded550c0', 1),
(19, 'Công Phượng', '037245235', 'Quảng Bình', 'Giao hàng nhanh nhé', 'congphuong@gmail.com', 'abd3562d7d9c6b0ffbb67bea9e1cd04d', 1),
(20, 'doanh', '0889166831', 'HN-QN-QB', 'k', 'doanhnguyentx@gmail.com', '71b65adf3ef1dd9a1ddddb54e81710bf', 1),
(21, 'Nguyễn Văn Doanh', '0889166831', 'quảng bình', 'không', 'doanhnguyentx@gmail.com', 'a02ea623f04d7f92e7db8027d08ac493', 1),
(22, 'Phạm Xuân Tuấn', '0889166297', 'Quảng Bình', '', 'xuantuan@gmail.com', '667c27e4fdebd9e286adf0ffe96f1d75', 1),
(23, 'Xuân Tuấn', '0889166297', 'HN-QN-QB', '', 'phamtuanpluzo@gmail.com', '0a49dd9af0104d505403a2aba1f1293a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `lienhe_id` int(11) NOT NULL,
  `lienhe_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lienhe_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `ad_phanhoi` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`lienhe_id`, `lienhe_name`, `lienhe_email`, `message`, `ad_phanhoi`) VALUES
(1, 'Phạm Xuân Tuấn', 'xuantuan@gmail.com', 'Hãy liên hệ với tôi qua email này!!!', 'Bạn cần trợ giúp gì !'),
(2, 'Quang Minh', 'quangminh@gmail.com', 'Chào Ad :)))', 'Chào anh Quang Minh!');

-- --------------------------------------------------------

--
-- Table structure for table `phukien`
--

CREATE TABLE `phukien` (
  `id_phukien` int(10) NOT NULL,
  `loaiphukien` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phukien`
--

INSERT INTO `phukien` (`id_phukien`, `loaiphukien`) VALUES
(1, 'Sạc Dự Phòng'),
(4, 'Cáp Sạc');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `sp_id` int(11) NOT NULL,
  `dm_id` int(11) NOT NULL,
  `sp_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sp_chitiet` text COLLATE utf8_unicode_ci NOT NULL,
  `sp_mota` text COLLATE utf8_unicode_ci NOT NULL,
  `sp_gia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sp_giakhuyenmai` int(100) NOT NULL,
  `sp_active` int(11) NOT NULL,
  `sp_hot` int(11) NOT NULL DEFAULT 1,
  `sp_soluong` int(11) NOT NULL,
  `sp_image` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`sp_id`, `dm_id`, `sp_name`, `sp_chitiet`, `sp_mota`, `sp_gia`, `sp_giakhuyenmai`, `sp_active`, `sp_hot`, `sp_soluong`, `sp_image`) VALUES
(1, 1, 'Samsung Galaxy J7', 'Màn hình:PLS TFT LCD, 5.5\", Full HD<br>\r\nHệ điều hành:Android 6.0 (Marshmallow)<br>\r\nCamera sau:13 MP<br>\r\nCamera trước:8 MP<br>\r\nCPU:Exynos 7870 8 nhân<br>\r\nRAM:3 GB<br>\r\nBộ nhớ trong:32 GB<br>\r\nThẻ nhớ:MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:2 Nano SIM, hỗ trợ 4G<br>', 'Vẻ ngoài của Galaxy J7 Prime hết sức trẻ trung nhờ sự kết hợp giữa lớp vỏ kim loại sang trọng, mặt kính cường lực Gorilla Glass 4 được vát cong 2.5D ở các cạnh.\r\nCác cạnh cong 2.5D tạo cảm giác thoải mái khi thao tác trên màn hình.', '5000000', 4800000, 1, 0, 10, 'dtsamsung.JPG'),
(2, 1, 'OPPO A37f', 'Màn hình:	IPS LCD, 5\", HD<br>\r\nHệ điều hành:	Android 5.1 (Lollipop)<br>\r\nCamera sau:	8 MP<br>\r\nCamera trước:	5 MP<br>\r\nCPU:	Snapdragon 410 4 nhân<br>\r\nRAM:	2 GB<br>\r\nBộ nhớ trong:	16 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 128 GB<br>\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G', 'OPPO A37 (Neo 9) là thiết bị tiếp theo của dòng OPPO Neo vốn được người dùng yêu thích với camera selfie ảo diệu cùng mức giá bán phải chăng.Thiết kế là điểm cải tiến lớn trên OPPO A37 so với các thế hệ OPPO Neo 5 và Neo 7 đi trước, vẫn được làm từ nhựa nhưng OPPO A37 đã chắc chắn và thời trang hơn các đàn anh của mình rất nhiều.', '6000000', 5500000, 1, 1, 10, 'dtoppo.JPG'),
(3, 1, 'IPhone XS MAX 265GB', 'Màn hình:	OLED, 6.5\", Super Retina<br>\r\nHệ điều hành:	iOS 12<br>\r\nCamera sau:	Chính 12 MP & Phụ 12 MP<br>\r\nCamera trước:	7 MP<br>\r\nCPU:	Apple A12 Bionic 6 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	256 GB<br>\r\nThẻ SIM:\r\n1 eSIM & 1 Nano SIM, Hỗ trợ 4G\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3174 mAh, có sạc nhanh', 'Sau 1 năm mong chờ, chiếc smartphone cao cấp nhất của Apple đã chính thức ra mắt mang tên iPhone Xs Max 256 GB. Máy các trang bị các tính năng cao cấp nhất từ chip A12 Bionic, dàn loa đa chiều cho tới camera kép tích hợp trí tuệ nhân tạo.\r\nHiệu năng đỉnh cao cùng chip Apple A12\r\niPhone Xs Max được Apple trang bị cho con chip mới toanh hàng đầu của hãng mang tên Apple A12.\r\n\r\nChip A12 Bionic được xây dựng trên tiến trình 7nm đầu tiên mà hãng sản xuất với 6 nhân đáp ứng vượt trội trong việc xử lý các tác vụ và khả năng tiết kiệm năng lượng tối ưu.', '9500000', 9200000, 1, 1, 10, 'iphone.JPG'),
(18, 1, 'Xiaomi Redmi Note 8', 'Màn hình :	6.3 inches, Full HD+, 1080 x 2340 Pixels<br>\r\nCamera trước :	13.0 MP<br>\r\nCamera sau :	48 MP+ 8 MP+ 2 MP+ 2 MP<br>\r\nRAM :	4 GB<br>\r\nBộ nhớ trong :	64 GB<br>\r\nCPU :	Qualcomm® Snapdragon™ 665, Octa-Core, 2.0 Ghz<br>\r\nGPU :	Adreno 610<br>\r\nDung lượng pin :	4000 mAh<br>\r\nHệ điều hành :	Android 9.0 (Pie)<br>\r\nThẻ SIM :	2 Sim, Nano SIM<br>\r\nXuất xứ :	Trung Quốc<br>\r\nNăm sản xuất :	2019', 'Chiếc điện thoại với 4 camera sau Redmi Note 8 mang đến cho bạn khả năng chụp ảnh tuyệt vời. Đồng thời hiệu năng và thời lượng pin cực đỉnh đúng như truyền thống từ trước đến nay của Xiaomi.', '4490000', 4290000, 0, 1, 5, 'dtrelmi.JPG'),
(21, 3, 'Sạc Dự Phòng Xiaomi', 'kích thước nhỏ gọn ,\r\npin 10000mh\r\ncó thể sử dụng 2-3 lần', 'Pin 10000mh , có chế độ sạc nhanh, có thể sạc 2-3 lần', '500000', 400000, 1, 1, 5, 'sacduphong.jpg'),
(22, 3, 'Dây Sạc Nokia', 'Dây sạc Nokia \r\ncó chế độ sạc nhanh\r\n........', 'Dây sạc Nokia', '120000', 100000, 1, 1, 20, 'daysacnokia.jpg'),
(23, 2, 'Ốp Lưng OPPO', 'Ốp Lưng OPPO trong suốt', 'Ốp lưng Oppo', '50000', 49000, 1, 1, 100, 'oplung.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_caption` text COLLATE utf8_unicode_ci NOT NULL,
  `slider_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_image`, `slider_caption`, `slider_active`) VALUES
(1, 'banner1.jpg', 'Khuyến mãi', 1),
(2, 'banner2.jpg', 'Khuyến mãi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `id_thuonghieu` varchar(10) NOT NULL,
  `tenthuonghieu` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`id_thuonghieu`, `tenthuonghieu`) VALUES
('1', 'IPhone'),
('2', 'SamSung'),
('3', 'LG'),
('4', 'Oppo'),
('5', 'Lennovo'),
('6', 'Vivo'),
('7', 'Nokia'),
('8', 'Xiaomi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`dm_id`);

--
-- Indexes for table `danhmuc_tin`
--
ALTER TABLE `danhmuc_tin`
  ADD PRIMARY KEY (`danhmuctin_id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`donhang_id`);

--
-- Indexes for table `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`giaodich_id`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`giohang_id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`lienhe_id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`sp_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `dm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `danhmuc_tin`
--
ALTER TABLE `danhmuc_tin`
  MODIFY `danhmuctin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `giaodich`
--
ALTER TABLE `giaodich`
  MODIFY `giaodich_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `lienhe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `sp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
