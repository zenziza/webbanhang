-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2020 at 07:08 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dienthoai2`
--

CREATE DATABASE DIENTHOAI2

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `mahd` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `phuongthucthanhtoan` int(11) NOT NULL,
  `id_hdct` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`mahd`, `idsp`, `tensp`, `soluong`, `gia`, `phuongthucthanhtoan`, `id_hdct`) VALUES
(212, 94, 'Iphone 7 Plus', 1, 5600000, 0, 75),
(213, 100, 'Iphone 8 Plus', 5, 9000000, 1, 76),
(213, 101, 'Iphone X', 3, 8550000, 1, 77),
(213, 103, 'Samsung galaxy S9', 5, 16000000, 1, 78),
(214, 107, 'Oppo A7', 5, 11000000, 1, 79),
(214, 103, 'Samsung galaxy S9', 1, 16000000, 1, 80);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `madm` int(11) NOT NULL,
  `tendm` varchar(50) NOT NULL,
  `dequi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`madm`, `tendm`, `dequi`) VALUES
(1, 'Điện thoại', 0),
(2, 'Phụ kiện', 0),
(3, 'Sam sung', 1),
(5, 'Sony', 1),
(7, 'Pin', 2),
(8, 'Bao da - Ốp lưng', 2),
(9, 'Tai nghe', 2),
(11, 'Nokia', 1),
(13, 'Apple', 1),
(14, 'Sạc', 2),
(15, 'Huaway', 1),
(16, 'Oppo', 1),
(17, 'Xiaomi', 1),
(18, 'Loa Bluetoot', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` int(11) NOT NULL,
  `idnd` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngaydathang` date NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `idnd`, `hoten`, `diachi`, `dienthoai`, `email`, `ngaydathang`, `trangthai`) VALUES
(212, 3, 'mnadz', 'Thanh hoá', 123456789, 'manhdz@gmail.com', '2020-11-13', 1),
(213, 3, 'messi', 'an thuong', 123456789, 'messi@gmail.com', '2020-11-13', 1),
(214, 3, 'Administrator', 'an thuong', 123456789, 'admin@gmail.com', '2020-11-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotro`
--

CREATE TABLE `hotro` (
  `idht` int(11) NOT NULL,
  `chude` varchar(255) NOT NULL,
  `noidung` text NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngaygui` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotro`
--

INSERT INTO `hotro` (`idht`, `chude`, `noidung`, `hoten`, `dienthoai`, `email`, `ngaygui`) VALUES
(2, 'Điện thoại', 'Làm ăn uy tín, chất lượng. Cảm ơn website rất nhiều.', 'Nguyễn Thành Đạt', 978164307, 'thanhdat21293@gmail.com', '2020-05-20'),
(3, 'tfdgdfg', 'abcsdewyggzfdgtysersefd fsfdf', 'nguyenmanh', 865455415, 'khacmanh@gmail.com', '2020-11-13');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `idnd` int(11) NOT NULL,
  `tennd` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `ngaydangky` date NOT NULL,
  `phanquyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`idnd`, `tennd`, `username`, `password`, `ngaysinh`, `gioitinh`, `email`, `dienthoai`, `diachi`, `ngaydangky`, `phanquyen`) VALUES
(3, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-10-22', 'nam', 'admin@gmail.com', 123456789, 'an thuong', '2020-05-15', 0),
(5, 'nguyễn khắc mạnh', 'nguyenmanh', '99349d99167034abf0e0d3ec9a85a93f', '2020-11-19', 'nam', 'khacmanh@gmail.com', 865455415, 'Thanh Hoá', '2020-11-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhasx`
--

CREATE TABLE `nhasx` (
  `idnsx` int(11) NOT NULL,
  `tennsx` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhasx`
--

INSERT INTO `nhasx` (`idnsx`, `tennsx`, `diachi`, `dienthoai`) VALUES
(1, 'Công ty Apple\r\n', 'Hoa Kỳ', 1235460058);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `idsp` int(11) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `madm` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `mau` varchar(20) NOT NULL,
  `chitiet` text NOT NULL,
  `soluong` int(11) NOT NULL,
  `daban` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `khuyenmai1` int(11) NOT NULL,
  `khuyenmai2` varchar(255) NOT NULL,
  `ngaycapnhat` date NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `tensp`, `madm`, `hinhanh`, `mau`, `chitiet`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `ngaycapnhat`, `trangthai`) VALUES
(94, 'Iphone 7 Plus', 13, '20201113105235iphone-7-plus-32gb-hh-400x400.jpg', 'Đen', '<p>Ịphone 7 Plus 32 Gb</p>\r\n', 50, 41, 7000000, 20, 'Ốp lưng', '2020-11-13', 0),
(95, 'Ịphone 6', 13, '20201113154145iphone-6-32gb-gold-hh-600x600-600x600-400x400.jpg', 'Hồng', '<p><strong>Iphone 6 32 GB</strong></p>\r\n', 23, 4, 3000000, 5, '', '2020-11-13', 0),
(96, 'Iphone 6s Plus', 13, '20201113154357iphone-6s-plus-32gb-vang-hong-400x400.png', 'Hồng', '<p><strong>Iphone 6s Plus 32 GB</strong></p>\r\n', 35, 4, 6000000, 22, '', '2020-11-13', 0),
(97, 'Iphone 7', 13, '20201113154629iphone-7-hh-400x400.jpg', 'Đen', '<p><strong>Iphone 7</strong></p>\r\n', 12, 0, 6500000, 0, '', '2020-11-13', 0),
(98, 'Iphone 8 ', 13, '20201113154735iphone-8-64gb-hh-400x400.jpg', 'Đen', '<p><strong>64GB</strong></p>\r\n', 22, 1, 8000000, 0, '', '2020-11-13', 0),
(99, 'Iphone 8 ', 13, '20201113154824iphone-8-256gb-hh-400x400.jpg', 'Đen', '<p><strong>256GB</strong></p>\r\n', 41, 1, 8350000, 0, '', '2020-11-13', 0),
(100, 'Iphone 8 Plus', 13, '20201113154921iphone-8-plus-hh-400x400.jpg', 'Đen', '', 12, 12, 9000000, 0, '', '2020-11-13', 0),
(101, 'Iphone X', 13, '20201113155007iphone-x-64gb-21-400x400.jpg', 'Đen', '<p><em><strong>64GB</strong></em></p>\r\n', 20, 3, 9000000, 5, '', '2020-11-13', 0),
(102, 'Iphone XS', 13, '20201113155149iphone-xs-256gb-white-400x400.jpg', '', '<p><strong>256GB</strong></p>\r\n', 33, 4, 15000000, 2, '', '2020-11-13', 0),
(103, 'Samsung galaxy S9', 3, '20201113155324samsung-galaxy-s9-plus-128gb-600x600-600x600-400x400.jpg', 'Xám', '<p><strong>128GB</strong></p>\r\n', 14, 12, 16000000, 0, '', '2020-11-13', 0),
(104, 'loa-bluetooth-esaver-u220b', 9, '20201113160814loa-bluetooth-esaver-u220b-9-600x600.jpg', 'Đen', '', 5, 0, 3000000, 10, '', '2020-11-13', 0),
(105, 'Samsung Note 9', 3, '20201113193123samsung-galaxy-note-9-512gb-blue-400x400.jpg', 'Hồng', '<p><strong>128 GB</strong></p>\r\n', 52, 0, 15000000, 5, 'Ốp lưng', '2020-11-13', 0),
(106, 'Huawei-mate-20-pro', 15, '20201115183618huawei-mate-20-pro-green-400x400.jpg', 'Xanh', '<p><em>128 GB</em></p>\r\n', 55, 0, 12000000, 3, '', '2020-11-15', 0),
(107, 'Oppo A7', 16, '20201115183822oppo-a7-green-400x400.jpg', 'Xanh', '<p>128 GB</p>\r\n', 42, 5, 11000000, 0, '', '2020-11-15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `matt` int(11) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `ndngan` text NOT NULL,
  `noidung` text NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `ngaydangtin` date NOT NULL,
  `tacgia` varchar(50) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`matt`, `tieude`, `ndngan`, `noidung`, `hinhanh`, `ngaydangtin`, `tacgia`, `trangthai`) VALUES
(1, 'Lumia 1020 tiếp tục giảm giá, chỉ còn dưới 10 triệu đồng', 'Chỉ với 10 triệu đồng, chúng ta đã có thể sở hữu chiếc điện thoại chụp hình tốt nhất hiện nay - Lumia 1020.', '<p><a class=\"auto-link\" href=\"http://www.techz.vn/topic/nokia-lumia-1020-146.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">Lumia 1020</a>&nbsp;- chiếc si&ecirc;u di động chụp h&igrave;nh đẹp nhất tr&ecirc;n thế giới thời điểm hiện tại - đang được b&aacute;n với gi&aacute; 10 triệu đồng tại một số đại l&yacute; lớn. C&aacute;c si&ecirc;u thị điện m&aacute;y,&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/C/dien-thoai\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">điện thoại</a>&nbsp;cũng đang b&aacute;n Lumia 1020 với gi&aacute; thấp hơn 12 triệu đồng, như Nguyễn Kim (11 triệu), Viễn Th&ocirc;ng A v&agrave; Viettel Store (10 triệu đồng).</p>\r\n\r\n<p>Đ&acirc;y tiếp tục l&agrave; những động th&aacute;i giảm gi&aacute; kh&ocirc;ng ch&iacute;nh thức từ ph&iacute;a đại l&yacute; nhằm th&uacute;c đẩy doanh số sản phẩm. Cho đến thời điểm hiện tại, gi&aacute; b&aacute;n của Nokia 1020 vẫn được ni&ecirc;m yết ở mức 14,99 triệu đồng tr&ecirc;n website ch&iacute;nh thức của Nokia Việt Nam.</p>\r\n\r\n<p><img alt=\"Lumia 1020 tiếp tục giảm giá, chỉ còn dưới 10 triệu đồng\" src=\"http://cache.media.techz.vn/upload/2014/05/20/image-1400559926-lumia-1020-giam-gia.JPG\" style=\"background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Lumia 1020 tiếp tục giảm giá, chỉ còn dưới 10 triệu đồng\" /></p>\r\n\r\n<p>Trao đổi với một chủ&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/dia-chi-cong-nghe.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">cửa h&agrave;ng</a>&nbsp;tại H&agrave; Nội, gi&aacute; b&aacute;n của Lumia 1020 đ&atilde; được điều chỉnh giảm khoảng một tuần nay. Doanh số của sản phẩm nhờ đ&oacute; c&oacute; tăng nhưng kh&ocirc;ng đ&aacute;ng kể, trong khi lượng h&agrave;ng c&ograve;n trong kho cũng kh&ocirc;ng qu&aacute; nhiều.</p>\r\n\r\n<p>Theo nhận định chung của giới kinh doanh, Lumia 1020 l&agrave; một sản phẩm tốt nhưng kh&ocirc;ng hot. &ldquo;Lumia 1020 c&oacute; thiết kế đẹp, cấu h&igrave;nh phần cứng kh&ocirc;ng qu&aacute; mạnh nhưng vẫn cho trải nghiệm mượt m&agrave;, trong khi camera của m&aacute;y xứng đ&aacute;ng l&agrave; vua tr&ecirc;n thị trường. Tuy nhi&ecirc;n, ngoại trừ giai đoạn mới về Việt Nam, sản phẩm n&agrave;y &iacute;t khi nằm trong top b&aacute;n chạy, ngay cả khi c&oacute; gi&aacute; b&aacute;n tốt&rdquo;, một chủ đại l&yacute; nhận định.</p>\r\n\r\n<p>Tr&ecirc;n thực tế, c&aacute;c sản phẩm cao cấp của Nokia d&ugrave; tốt vẫn chưa tạo được ưu thế so với&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/topic/dien-thoai-iphone-126.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">iPhone</a>&nbsp;v&agrave; d&ograve;ng Galaxy S của Samsung. Những sản phẩm b&aacute;n chạy của Nokia chủ yếu nằm ở ph&acirc;n kh&uacute;c tầm thấp như&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/tag/Lumia-520\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">Lumia 520</a>, 525 hay 620.</p>\r\n\r\n<p><img alt=\"Lumia 1020 tiếp tục giảm giá, chỉ còn dưới 10 triệu đồng\" src=\"http://cache.media.techz.vn/upload/2014/05/20/image-1400559927-lumia-1020-giam-gia-2.JPG\" style=\"background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Lumia 1020 tiếp tục giảm giá, chỉ còn dưới 10 triệu đồng\" /></p>\r\n\r\n<p>&ldquo;Kh&aacute;ch mua sản phẩm tầm thấp c&oacute; thể h&agrave;i l&ograve;ng với trải nghiệm tr&ecirc;n&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/tag/Windows-Phone\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">Windows Phone</a>&nbsp;8, bởi m&aacute;y chạy mượt, c&oacute; đủ c&aacute;c&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/C/ung-dung\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">ứng dụng</a>&nbsp;cơ bản, nhưng với c&aacute;c sản phẩm cao cấp như Lumia 1020, họ cần nhiều hơn thế, đặc biệt l&agrave; yếu tố t&ugrave;y biến như giao diện, c&aacute;c phần mềm lạ v&agrave; hay. Đ&acirc;y cũng l&agrave; một phần nguy&ecirc;n nh&acirc;n dẫn đến việc, một số người ch&ecirc; Lumia 1020 hay 1520 nh&agrave;m ch&aacute;n&rdquo;, nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng tại một si&ecirc;u thị cho hay.</p>\r\n\r\n<p>Hiện, chưa c&oacute; một smartphone n&agrave;o được trang bị tối t&acirc;n hơn Lumia 1020 tr&ecirc;n lĩnh vực camera. M&aacute;y d&ugrave;ng camera 41 megapixel, k&iacute;ch thước cảm biến 1/1,5 inch, ống k&iacute;nh quang học 6 th&agrave;nh phần Carl Zeiss khẩu độ f/2.2 v&agrave; đ&egrave;n flash Xenon, kết hợp với phần mềm chụp ảnh Nokia Camera, cho ph&eacute;p t&ugrave;y chỉnh dễ d&agrave;ng những th&ocirc;ng số như c&acirc;n bằng trắng, khả năng phơi s&aacute;ng, ISO.</p>\r\n', '20140520083240image-1400560084-lumia-1020-giam-gia-3.JPG', '2014-05-20', 'Zing', 0),
(2, 'Samsung quay lại sản xuất điện thoại nắp gập cao cấp với G9098', 'Chiếc điện thoại có tên G9098 của Samsung dành riêng cho nhà mạng China Mobile', '<p>Điện thoại nắp trượt (slide) hay gập kiểu vỏ s&ograve; (flip) từng l&agrave; những sản phẩm thời thượng của thập ni&ecirc;n trước. Nhưng khi m&agrave; kỷ nguy&ecirc;n của&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/C/dien-thoai\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">điện thoại</a>&nbsp;m&agrave;n h&igrave;nh cảm ứng lớn l&ecirc;n ng&ocirc;i, c&aacute;c nh&agrave; sản xuất cũng kh&ocirc;ng c&ograve;n tung ra những mẫu điện thoại c&oacute; thiết kế độc đ&acirc;&oacute; n&agrave;y nữa.</p>\r\n\r\n<p>Mặc d&ugrave; kh&ocirc;ng được ưa chuộng nhiều nhưng kh&ocirc;ng phải n&oacute; kh&ocirc;ng c&ograve;n được y&ecirc;u th&iacute;ch v&agrave; điện thoại gập cũng c&oacute; những ưu điểm ri&ecirc;ng. Samsung được cho l&agrave; đang quay trở lại sản xuất một chiếc điện thoại nắp gập d&agrave;nh ri&ecirc;ng cho nh&agrave; mạng lớn nhất thế giới China Mobile. Sản phẩm c&oacute; t&ecirc;n m&atilde;n G9098, c&oacute; thiết kế mặt trược vu&ocirc;ng vắn vốn đ&atilde; kh&ocirc;ng xuất hiện tr&ecirc;n c&aacute;c sản phẩm của Samsung từ sau chiếc Galaxy SII, mặt sau bằng nhựa giả da như tr&ecirc;n chiếc Note III.</p>\r\n\r\n<p><img alt=\"Samsung quay lại sản xuất điện thoại nắp gập cao cấp với G9098\" src=\"http://cache.media.techz.vn/upload/2014/05/20/image-1400556669-Samsung-G9098.jpg\" style=\"background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Samsung quay lại sản xuất điện thoại nắp gập cao cấp với G9098\" /></p>\r\n\r\n<p>Điểm độc đ&aacute;o của chiếc điện thoại n&agrave;y ở chỗ, n&oacute; c&oacute; 2 m&agrave;n h&igrave;nh 3,67 inch b&ecirc;n trong v&agrave; b&ecirc;n ngo&agrave;i, đều l&agrave; Super AMOLED độ ph&acirc;n giải 480 x 800 pixel. M&aacute;y được trang bị vi xử l&yacute; l&otilde;i tứ 2,3GHz (c&oacute; thể l&agrave; Snapdragon 800), RAM 2GB, camera ch&iacute;nh 13MP, phụ 2MP, c&oacute; khe cắm thẻ nhớ v&agrave; đi k&egrave;m vi&ecirc;n pin 1900mAh.</p>\r\n\r\n<p>Với cấu h&igrave;nh tr&ecirc;n th&igrave; Samsung G9098 kh&ocirc;ng phải l&agrave; một sản phẩm b&igrave;nh d&acirc;n, v&agrave; chắc chắn l&agrave; cao cấp nhất trong c&aacute;c d&ograve;ng điện thoại nắp gập hiện nay. M&aacute;y sẽ chỉ được b&aacute;n tại thị trường Trung Quốc v&agrave; gi&aacute; cả vẫn chưa được tiết lộ.</p>\r\n', '20140520083543image-1400556662-Samsung-G9098-2.jpg', '2014-05-20', 'Techz', 0),
(3, 'HTC One M8 Prime có khả năng chống nước, cấu hình siêu khủng', 'Khả năng rất cao, chúng ta sẽ có 2 mẫu smartphone siêu cao cấp ‘Prime’ đến từ 2 nhà sản xuất khác nhau...', '<p>Sau những th&ocirc;ng tin v&agrave; h&igrave;nh ảnh kh&aacute; chi tiết về&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/topic/samsung-galaxy-s5-162.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">Samsung Galaxy S5</a>&nbsp;Prime bằng vỏ kim loại. Trang tin chuy&ecirc;n r&ograve; rỉ @evleaks lại tiếp tục tiết lộ mẫu flagship tiếp theo của&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/topic/htc-65.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">HTC</a>, thật th&uacute; vị l&agrave; m&aacute;y cũng c&oacute; t&ecirc;n m&atilde; &lsquo;Prime&rsquo;.</p>\r\n\r\n<p><img alt=\"HTC One M8 Prime có khả năng chống nước, cấu hình siêu khủng\" src=\"http://cache.media.techz.vn/upload/2014/05/20/image-1400543309-HTC-One-M8-Prime-features-01.png\" style=\"background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"HTC One M8 Prime có khả năng chống nước, cấu hình siêu khủng\" /></p>\r\n\r\n<p>Những th&ocirc;ng tin n&agrave;y được đăng tải kh&aacute; cụ thể tr&ecirc;n trang tweet của @evleaks, đặc biệt chất liệu h&igrave;nh th&agrave;nh ch&iacute;nh&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/topic/htc-m8-213.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">HTC M8</a>&nbsp;Prime sẽ được kết tinh từ &ldquo;nh&ocirc;m v&agrave; silicon lỏng&rdquo;. Kh&ocirc;ng những thế M8 Prime c&ograve;n c&oacute; thể chống thấm nước, m&agrave;n h&igrave;nh 5.5 inch độ ph&acirc;n giải l&ecirc;n tới Quad HD (1440<a class=\"auto-link\" href=\"http://www.techz.vn/topic/moto-x2-214.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">x2</a>560 pixels), vi xử l&yacute; 4 nh&acirc;n Snapdragon 805 tốc độ 2.5GHz, 3GB RAM, hỗ trợ mạng kết nối &lsquo;si&ecirc;u tốc&rsquo; LTE-A Cat. 6.</p>\r\n\r\n<p><img alt=\"HTC One M8 Prime có khả năng chống nước, cấu hình siêu khủng\" src=\"http://cache.media.techz.vn/upload/2014/05/20/image-1400543391-HTC-One-M8-3-700x393.jpg\" style=\"background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"HTC One M8 Prime có khả năng chống nước, cấu hình siêu khủng\" /></p>\r\n\r\n<p>Thời điểm Qualcomm tr&igrave;nh l&agrave;ng loại chipset Snapdragon 805 c&oacute; thể phải chờ đến sự kiện&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/su-kien-cong-nghe/15/mwc-2014-mobile-world-congress-2014.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">MWC 2014</a>diễn ra v&agrave;o th&aacute;ng 2, v&igrave; vậy vẫn c&ograve;n kh&aacute; l&acirc;u để ch&uacute;ng ta được chi&ecirc;m ngưỡng dung nhan ch&iacute;nh thức từ M8 Prime. Ngo&agrave;i ra, mạng kết nối LTE-A Cat. 6. c&oacute; khả năng download l&ecirc;n đến 300Mbps, chắc hẳn đ&acirc;y l&agrave; thiết bị đầu ti&ecirc;n của HTC đạt đến &#39;cảnh giới&#39; n&agrave;y.</p>\r\n\r\n<p>Mặc d&ugrave; trang bị nhiều&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">c&ocirc;ng nghệ</a>&nbsp;v&agrave; cải tiến vượt trội như vậy, nhưng v&oacute;c d&aacute;ng của One M8 Prime hứa hẹn sẽ kh&ocirc;ng mấy đổi kh&aacute;c so với mẫu M8 hiện tại (v&agrave;&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/tag/HTC-One-mini\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">One Mini</a>&nbsp;2).</p>\r\n', '20140520083628image-1400543386-HTC-One-M8-Harman-Kardon-Edition-rear.jpg', '2014-05-20', 'Techz', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_hdct`),
  ADD KEY `mahd` (`mahd`),
  ADD KEY `idsp` (`idsp`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`madm`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `idnd` (`idnd`);

--
-- Indexes for table `hotro`
--
ALTER TABLE `hotro`
  ADD PRIMARY KEY (`idht`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`idnd`);

--
-- Indexes for table `nhasx`
--
ALTER TABLE `nhasx`
  ADD PRIMARY KEY (`idnsx`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsp`),
  ADD KEY `madm` (`madm`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`matt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_hdct` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `madm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `hotro`
--
ALTER TABLE `hotro`
  MODIFY `idht` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `idnd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `nhasx`
--
ALTER TABLE `nhasx`
  MODIFY `idnsx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `matt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`mahd`) REFERENCES `hoadon` (`mahd`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`idsp`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`idnd`) REFERENCES `nguoidung` (`idnd`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`madm`) REFERENCES `danhmuc` (`madm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
