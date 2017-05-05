-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2017 at 01:19 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `safure`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `name`, `status`) VALUES
('admin', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

CREATE TABLE `advertise` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `advertise`
--

INSERT INTO `advertise` (`id`, `name`, `alias`, `image`, `url`, `cat_id`, `order`, `created`, `status`) VALUES
(1, 'Logo', 'logo', '14404698251440416444Untitled-1.png', '', 1, 1, '2015-08-25 02:30:25', 1),
(2, 'Banner', 'banner', '1441778441p_0010.jpg', '', 2, 1, '2015-09-09 06:00:41', 1),
(3, 'Slide 2', 'slide-2', '1440401856Hoaduc5.jpg', '', 2, 2, '2015-08-24 07:37:36', 1),
(4, 'Slide 3', 'slide-3', '1440395457HeattransferDISNEYBABY.jpg', '', 2, 3, '2015-08-24 05:51:02', 1),
(5, 'Banner_right_1', 'banner_right_1', '1440398474may ep chuyen nhiet.jpg', '', 3, NULL, '2015-08-24 06:41:14', 1),
(6, 'Banner_right_2', 'banner_right_2', '1440411848IMG_6013.jpg', '', 4, NULL, '2015-08-24 10:24:08', 1),
(7, 'Image_center_1', 'image_center_1', '1441774826home_h6.jpg', '', 5, 1, '2015-09-09 05:00:26', 1),
(8, 'Image_center_2', 'image_center_2', '1441774805home_h7.jpg', '', 5, 2, '2015-09-09 05:00:05', 1),
(9, 'Image_center_3', 'image_center_3', '1441774705home_h1.jpg', '', 5, 3, '2015-09-09 04:58:25', 1),
(10, 'Image_left_1', 'image_left_1', '144041158813 HVN 21143 .jpg', '', 6, 1, '2015-08-24 10:19:48', 1),
(11, 'Image_left_2', 'image_left_2', '1441773528calogue & new address.png', '', 6, 1, '2015-09-09 04:38:48', 1),
(12, 'Thương hiệu 1', 'thuong-hieu-1', '1440418153tải xuống.jpg', '', 7, 1, '2015-08-24 12:09:13', 1),
(13, 'Thương hiệu 2', 'thuong-hieu-2', '1440418040reebok-logo-for-website.jpg', '', 7, 2, '2015-08-24 12:07:20', 1),
(14, 'Thương hiệu 3', 'thuong-hieu-3', '1440417654PUMA-1.jpg', '', 7, 3, '2015-08-24 12:00:54', 1),
(15, 'Thương hiệu 4', 'thuong-hieu-4', '1440417463logo-childrens-place.jpg', '', 7, 4, '2015-08-24 11:57:43', 1),
(16, 'Thương hiệu 5', 'thuong-hieu-5', '1440417123red-nike-logo-600x390.gif', '', 7, 5, '2015-08-24 11:52:03', 1),
(17, 'Thương hiệu 6', 'thuong-hieu-6', '1440412177hangmyligi-11.jpg', '', 7, 6, '2015-08-24 10:29:37', 1),
(18, 'foil', 'foil', '1441775817Foil_Label_on_Fabric.jpg', '', 2, NULL, '2015-09-09 06:28:31', 1),
(19, 'foil 1', 'foil-1', '1441780147Foil_Heat_Transfer_Label.jpg', '', 2, NULL, '2015-09-09 06:29:07', 1),
(20, 'foil 2', 'foil-2', '1441780219Foil_Label_on_Fabric2.jpg', '', 2, NULL, '2015-09-09 06:30:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `alias`, `status`, `ordering`, `created`) VALUES
(1, 'Logo', 'logo', 1, NULL, '2015-04-20 13:31:49'),
(2, 'Slide', 'slide', 1, NULL, '2015-08-12 09:20:11'),
(3, 'Banner 1 [ Hình ảnh bên phải ]', 'banner-1-[-hinh-anh-ben-phai-]', 1, NULL, '2015-08-12 09:16:40'),
(4, 'Banner 2 [ Hình ảnh bên phải ]', 'banner-2-[-hinh-anh-ben-phai-]', 1, NULL, '2015-08-12 09:16:46'),
(5, 'Quảng cáo [ Hình ảnh chính giữa ]', 'quang-cao-[-hinh-anh-chinh-giua-]', 1, NULL, '2015-08-12 09:17:10'),
(6, 'Quảng cáo 2 [ Hình ảnh bên trái ]', 'quang-cao-2-[-hinh-anh-ben-trai-]', 1, NULL, '2015-08-12 09:17:23'),
(7, '[ Thương hiệu nỗi bật ]', '[-thuong-hieu-noi-bat-]', 1, NULL, '2015-08-12 09:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `category_pro`
--

CREATE TABLE `category_pro` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img_left` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_bottom` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_pro`
--

INSERT INTO `category_pro` (`id`, `parent_id`, `name`, `alias`, `img_left`, `img_bottom`, `hot`, `status`, `ordering`, `title`, `keyword`, `description`, `created`) VALUES
(1, 0, 'Máy lọc nước RO gia đình', 'may-loc-nuoc-ro-gia-dinh', '14939663792.png', '1493960413iphone.jpg', 1, 1, 1, 'Máy lọc nước RO gia đình', 'may loc nuoc RO gia dinh', 'Máy lọc nước RO gia đình', '2017-05-05 08:39:39'),
(2, 0, 'Máy lọc nước RO Trường học', 'may-loc-nuoc-ro-truong-hoc', '14939665832.png', '1493966583giamgia.png', 1, 1, 2, 'Máy lọc nước RO Trường học', 'Máy lọc nước RO Trường học', 'Máy lọc nước RO Trường học', '2017-05-05 08:43:03'),
(3, 0, 'Máy lọc nước RO Văn phòng', 'may-loc-nuoc-ro-van-phong', '1493966701banner-left3.png', '1493966702tainghe.png', 1, 1, 2, 'Máy lọc nước RO Văn phòng', 'Máy lọc nước RO Văn phòng', 'Máy lọc nước RO Văn phòng', '2017-05-05 08:45:01'),
(4, 0, 'Máy lọc nước RO Nhà hàng', 'may-loc-nuoc-ro-nha-hang', '1493966807banner-left4.png', '', 1, 1, 2, 'Máy lọc nước RO Nhà hàng', 'Máy lọc nước RO Nhà hàng', 'Máy lọc nước RO Nhà hàng', '2017-05-05 08:46:47'),
(5, 0, 'Dây chuyền sản xuất bình lọc nước', 'day-chuyen-san-xuat-binh-loc-nuoc', NULL, NULL, NULL, 1, 6, 'Dây chuyền sản xuất bình lọc nước', 'Dây chuyền sản xuất bình lọc nước', 'Dây chuyền sản xuất bình lọc nước', '2017-05-02 09:35:53'),
(6, 0, 'Phụ kiện máy lọc nước', 'phu-kien-may-loc-nuoc', NULL, NULL, NULL, 1, 6, 'Phụ kiện máy lọc nước', 'Phụ kiện máy lọc nước', 'Phụ kiện máy lọc nước', '2017-05-02 09:36:31'),
(7, 0, 'Máy bơm công nghiệp', 'may-bom-cong-nghiep', '', '', 0, 1, 7, 'Máy bơm công nghiệp', 'Máy bơm công nghiệp', 'Máy bơm công nghiệp', '2017-05-05 08:47:03');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `nick` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `icon` int(11) DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `lang` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `nick`, `icon`, `name`, `phone`, `lang`, `created`) VALUES
(10, 'ttvinh18', 1, 'Mr. Vinh', '0933607602', 0, '2015-08-24 13:50:25'),
(13, 'afuvietnamdisney9999', NULL, 'Mr.Phuc', '0128 6018640', 0, '2015-08-16 14:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `name`, `alias`, `description`, `content`, `image`, `order`, `status`, `created`) VALUES
(1, 'Hoa mai Bình Định', 'hoa-mai-binh-dinh', '', '<p>Hoa mai b&igrave;nh định</p>\r\n', '1403765873300x215-7.png', NULL, 1, '2014-06-26 13:58:07'),
(2, 'Hoa mai Bình Định 1', 'hoa-mai-binh-dinh-1', '', '<p>Hoa mai b&igrave;nh định 1</p>\r\n', '1403765906300x215-7.png', NULL, 1, '2014-06-26 13:58:26'),
(3, 'Hoa mai Bình Định 1', 'hoa-mai-binh-dinh-1', '', '<p>Hoa mai b&igrave;nh định 1</p>\r\n', '1403765977hoamai.jpg', NULL, 1, '2014-06-26 13:59:37'),
(4, 'Hoa mai Bình Định 2', 'hoa-mai-binh-dinh-2', '', '<p>Hoa mai b&igrave;nh định 2</p>\r\n', '1403765996300x215-7.png', NULL, 1, '2014-06-26 13:59:56'),
(5, 'b', 'b', 'a', '<p>a</p>\r\n', '1403766007hoamai.jpg', 3, 1, '2014-06-26 14:00:07'),
(6, 'test', 'test', 'abc', '<p>abc</p>\r\n', '1403766016300x215-7.png', 1, 1, '2014-06-26 14:00:16'),
(7, 'test', 'test', 'abc', '<p>abc</p>\r\n', '1403766031hoamai.jpg', 1, 1, '2014-06-26 14:00:31'),
(8, 'test 3', 'test-3', 'test 3', '<p>test 3</p>\r\n', '1403766043300x215-7.png', 1, 1, '2014-06-26 14:00:43'),
(9, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766058hoamai.jpg', NULL, 1, '2014-06-26 14:00:58'),
(10, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766070300x215-7.png', NULL, 1, '2014-06-26 14:01:10'),
(11, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766079hoamai.jpg', NULL, 1, '2014-06-26 14:01:19'),
(12, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766088300x215-7.png', NULL, 1, '2014-06-26 14:01:28'),
(13, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766099300x215-7.png', NULL, 1, '2014-06-26 14:01:39'),
(15, 'teaasdfasdf', 'teaasdfasdf', 'asdfasdf', '<p>asdf</p>\r\n', '1403766113300x215-7.png', NULL, 1, '2014-06-26 14:01:53'),
(16, 'Tam', 'tam', 'test', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg" style="height:340px; width:509px" /></p>\r\n', '1429863223x0f8e67a52271afaabe024d6d382e9998.jpg.pagespeed.ic.KCGo8SLkeSt_YQWAUd2y.jpg', NULL, 1, '2015-04-24 10:13:43'),
(17, 'Tam adf', 'tam-adf', 'test', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg" style="height:340px; width:509px" /></p>\r\n', '1429863166img.jpg', NULL, 1, '2015-04-24 10:12:46'),
(18, 'test 1', 'test-1', 'asdf', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/image1.jpeg" style="height:177px; width:284px" /></p>\r\n', '1429863148x16090109059_4bf3cbcd2a_z.jpg.pagespeed.ic.d7123OPAq8NJ-3lGr4tL.jpg', NULL, 1, '2015-04-24 10:12:28'),
(19, 'Tu van hoa mai', 'tu-van-hoa-mai', 'tu van hoa mai', '<p>Tu van hoa mai</p>\r\n', '1429862659x0f8e67a52271afaabe024d6d382e9998.jpg.pagespeed.ic.KCGo8SLkeSt_YQWAUd2y.jpg', 1, 1, '2015-04-24 10:04:19'),
(20, 'Cafe Thuy Moc', 'cafe-thuy-moc', 'cafe thuy moc\r\nkhong gian thoang mat', '<p>cafe thuy moc</p>\r\n', '1429870632x0f8e67a52271afaabe024d6d382e9998.jpg.pagespeed.ic.KCGo8SLkeSt_YQWAUd2y.jpg', NULL, 1, '2015-04-24 12:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` mediumtext COLLATE utf8_unicode_ci,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_cat`
--

CREATE TABLE `menu_cat` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` mediumtext COLLATE utf8_unicode_ci,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `ordering` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `cat1_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `masp` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `baohanh` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banchay` tinyint(1) NOT NULL DEFAULT '0',
  `noibat` tinyint(1) NOT NULL DEFAULT '0',
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `cat_id`, `cat1_id`, `tag_id`, `name`, `masp`, `alias`, `description`, `content`, `image`, `price`, `baohanh`, `banchay`, `noibat`, `hot`, `order`, `status`, `created`) VALUES
(1, 1, 0, NULL, 'Máy lọc nước Safure thông minh 8 cấp vỏ IQ', NULL, 'máy-lọc-nuóc-safure-thong-minh-8-cap-vo-iq', 'Là dòng máy cao cấp nhất hiện có trên thị trường với tính năng tích hợp vượt trội:Báo thay lõi lọc ,hiển thị các chế độ đang làm việc của máy ,Tự động rửa màng RO một cách thông minh.', '<p>-L&agrave; d&ograve;ng m&aacute;y cao cấp nhất hiện c&oacute; tr&ecirc;n thị trường với t&iacute;nh năng t&iacute;ch hợp vượt trội:B&aacute;o thay l&otilde;i lọc ,hiển thị c&aacute;c chế độ đang l&agrave;m việc của m&aacute;y ,Tự động rửa m&agrave;ng RO một c&aacute;ch th&ocirc;ng minh.</p>\r\n\r\n<p>&nbsp; +B&aacute;o thay l&otilde;i lọc :Trước kia c&aacute;c m&aacute;y lọc th&ocirc;ng thường th&igrave; kh&aacute;ch h&agrave;ng phải tự nhớ thời gian thay l&otilde;i lọc ,đ&ocirc;i khi kh&aacute;ch h&agrave;ng l&atilde;ng qu&ecirc;n kh&ocirc;ng thay l&otilde;i lọc đ&uacute;ng thời hạn sẽ ảnh hưởng đến chất lượng của m&aacute;y như chất lượng nước ,t&igrave;nh trạng m&aacute;y bơm hoạt động nhiều ,m&aacute;y kh&ocirc;ng ra nước do tắc l&otilde;i .Nay với c&ocirc;ng nghệ hiện đại n&agrave;y vấn đề thay l&otilde;i lọc định kỳ sẽ kh&ocirc;ng c&ograve;n l&agrave; vấn đề nữa .</p>\r\n\r\n<p>+Hiển thị c&aacute;c chế độ chạy của m&aacute;y:</p>\r\n\r\n<p>Bằng c&ocirc;ng nghệ m&agrave;n hinh LCD hiển thị r&otilde; r&agrave;ng c&aacute;c chức năng thực tế đang hoạt đ&ocirc;ng gi&uacute;p cho kh&aacute;ch h&agrave;ng y&ecirc;n t&acirc;m hơn khi biết m&aacute;y nh&agrave; m&igrave;nh đang hoạt động như thế n&agrave;o c&oacute; ổn định hay kh&ocirc;ng,ngo&agrave;i ra hệ thống c&ograve;n c&oacute; cảnh b&aacute;o lỗi bằng &acirc;m thanh gi&uacute;p người d&ugrave;ng dễ nhận biết hơn .</p>\r\n\r\n<p>+Rửa m&agrave;ng RO:</p>\r\n\r\n<p>M&agrave;ng RO l&agrave; l&otilde;i lọc quan trọng nhất của hệ thống lọc nước ,thiết bị rửa m&agrave;ng c&oacute; nhiệm vụ thường xuy&ecirc;n rửa m&agrave;ng trước khi m&aacute;y chạy v&agrave; sau khi m&aacute;y nghỉ gi&uacute;p cho m&agrave;ng bền hơn giảm chi ph&iacute; cho người sử dụng .</p>\r\n\r\n<p>-Th&ocirc;ng số kỹ thuật:</p>\r\n\r\n<p>+Tốc độ lọc:10-15l/h</p>\r\n\r\n<p>+K&iacute;ch thước:44x56x33(cm)</p>\r\n\r\n<p>+Thể t&iacute;ch b&igrave;nh chứa:10L</p>\r\n\r\n<p>+Nguồn nước:Nước riếng ,nước m&aacute;y ,nước mưa</p>\r\n\r\n<p>+Nguồn điện :220v/24v,220v/29v</p>\r\n\r\n<p>-Lựa chọn th&ecirc;m :</p>\r\n\r\n<p>+l&otilde;i lọc cation cho v&ugrave;ng nước cứng .</p>\r\n\r\n<p>+Th&ugrave;ng chứa m&aacute;y bằng INOX cao cấp .</p>\r\n\r\n<p>+L&otilde;i hồng ngoại 8.</p>\r\n', '1493826323fuc4521_28.jpg', NULL, NULL, 0, 0, 0, NULL, 1, '2017-05-03 17:45:23'),
(10, 1, 0, NULL, 'Máy lọc nước Safure thông minh 7 cấp vỏ IQ', NULL, 'máy-lọc-nuóc-safure-thong-minh-7-cap-vo-iq', 'Máy lọc nước Safure thông minh 7 cấp vỏ IQ', '<p>L&agrave; d&ograve;ng m&aacute;y lọc nước cao cấp của c&ocirc;ng ty tnhh điện m&aacute;y EMU Việt Nam t&iacute;ch hợp nhiều chức năng tốt như b&aacute;o &aacute;p m&aacute;y bơm ,xả m&agrave;ng tự động ,l&otilde;i Cif &quot;3 trong 1 &quot; cao cấp ,Bơm h&uacute;t s&acirc;u 2 m &nbsp;so với vị tr&iacute; bơm của m&aacute;y .</p>\r\n\r\n<p>+Đồng hồ &aacute;p dầu :l&agrave; thiết bị do &aacute;p lực đền 10 kg/cm2 thường xuy&ecirc;n kiểm tra &aacute;p lực m&aacute;y bơm nhăm gi&uacute;p ph&aacute;t hiện t&igrave;nh trạng l&otilde;i lọc bẩn v&agrave; nguồn nước bị yếu .</p>\r\n\r\n<p>+Xả m&agrave;ng tự động :L&agrave; thiết bị th&ocirc;ng minh c&oacute; t&iacute;ch hợp chức năng rửa m&agrave;ng khi m&aacute;y chạy v&agrave; m&aacute;y ngừng l&agrave;m việc gi&uacute;p bảo vệ m&agrave;ng tốt hơn ,cũng như t&iacute;ch kiệm nước thải &nbsp;giảm chi ph&iacute; cho người d&ugrave;ng .</p>\r\n\r\n<p>&nbsp;+L&otilde;i CIF &quot;3 trong 1&quot;: Đ&acirc;y l&agrave; c&ocirc;ng nghệ đột ph&aacute; trong ngh&agrave;nh lọc nước với 3 lớp lọc ,c&oacute; lớp than hoạt t&iacute;nh đạm bảo hiệu quả lọc cao.</p>\r\n\r\n<p>*Th&ocirc;ng số kỹ thuật :</p>\r\n\r\n<p>+Tốc độ lọc :10-15 l&iacute;t/h.</p>\r\n\r\n<p>+K&iacute;ch thước :44x56x33(cm)</p>\r\n\r\n<p>+Trọng lượng:15,5kg</p>\r\n\r\n<p>+Thể t&iacute;ch b&igrave;nh chứa :10L</p>\r\n\r\n<p>+Nguồn nước:Nước riếng ,nước m&aacute;y ,nước mưa .</p>\r\n\r\n<p>+Nguồn điện :220v/24v,220v/29v .</p>\r\n\r\n<p>*Lựa chọn th&ecirc;m :</p>\r\n\r\n<p>+L&otilde;i lọc nhựa cation d&ugrave;ng cho v&ugrave;ng nước cứng .</p>\r\n\r\n<p>+Th&ugrave;ng chứa m&aacute;y cao cấp bằng inox.</p>\r\n\r\n<p>+L&otilde;i lọc hồng ngoại ,l&otilde;i lọc NANO.</p>\r\n', '1493826494fuc4521_28.jpg', NULL, NULL, 0, 0, 0, NULL, 1, '2017-05-03 17:48:14'),
(11, 1, 0, NULL, 'Máy lọc nước Safure 9 cấp vỏ IQ', NULL, 'máy-lọc-nuóc-safure-9-cap-vo-iq', 'Máy lọc nước Safure 9 cấp vỏ IQ', '<p>L&agrave; d&ograve;ng sản phẩm m&aacute;y lọc nước tinh khiết chất lượng cao ,c&oacute; b&ugrave; th&ecirc;m kho&aacute;ng chất v&agrave; n&acirc;ng độ PH.</p>\r\n\r\n<p>-Th&ocirc;ng số kỹ thuật:</p>\r\n\r\n<p>+Tốc độ lọc:10-15l/h</p>\r\n\r\n<p>+K&iacute;ch thước:44x56x33(cm)</p>\r\n\r\n<p>+Thể t&iacute;ch b&igrave;nh chứa:10L</p>\r\n\r\n<p>+Nguồn nước:Nước riếng ,nước m&aacute;y ,nước mưa</p>\r\n\r\n<p>+Nguồn điện :220v/24v,220v/29v</p>\r\n\r\n<p>-Lựa chọn th&ecirc;m :</p>\r\n\r\n<p>+l&otilde;i lọc cation cho v&ugrave;ng nước cứng .</p>\r\n\r\n<p>+Th&ugrave;ng chứa m&aacute;y bằng INOX cao cấp .</p>\r\n\r\n<p>+L&otilde;i hồng ngoại 8,v&agrave; l&otilde;i na no 9</p>\r\n', '1493826574fuc4521_28.jpg', NULL, NULL, 0, 0, 0, NULL, 1, '2017-05-03 17:49:34'),
(12, 1, 0, NULL, 'Máy lọc nước safure 8 cấp lọc vỏ inox', '', 'may-loc-nuoc-safure-8-cap-loc-vo-inox', 'Máy lọc nước safure 8 cấp lọc vỏ inox', '<p>H&atilde;ng b&aacute;n h&agrave;ng: SAFURE<br />\r\npattern: SE-108 A</p>\r\n\r\n<p>Type: M&aacute;y lọc nuoc tinh Khiết Si&ecirc;u Cao cấp RO 8 l&otilde;i, 10 cấp lọc&nbsp;<br />\r\nMạng RO: 50 GDP (10-15 l&iacute;t / giờ)&nbsp;<br />\r\nNguồn điện :.&nbsp;220 Volt (50 / 60Hz)&nbsp;<br />\r\n&Aacute;p dụng hoạt động hiệu quả: 5 -125 PSI&nbsp;<br />\r\nK&iacute;ch thước (mm): 440 x 330 x 250&nbsp;&nbsp;<br />\r\nThời gian chờ bảo h&agrave;nh: 02 năm&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p><strong><em>T&iacute;nh năng v&agrave; c&aacute;c thiết bị kh&aacute;c bao gồm theo</em></strong>&nbsp;:&nbsp;<br />\r\n-. C&ocirc;ng bộ lọc hiệu suất 10-15 l&iacute;t / giờ (50 GPD)&nbsp;<br />\r\n. - B&igrave;nh &aacute;p dụng ti&ecirc;u chuẩn NSF 12 L&iacute;t (3,2 gallon)&nbsp;<br />\r\n- Văn trung b&igrave;nh được &aacute;p dụng.&nbsp;<br />\r\n- Cốc lọc ti&ecirc;u chuẩn 10 &quot;( 01 Cốc trong suốt 02 v&agrave; Cốc m&agrave;u xanh hoặc kh&ocirc;ng gian m&agrave;u).&nbsp;<br />\r\n- T&acirc;y Văn Cốc lọc.&nbsp;<br />\r\n- M&aacute;y bơm 125 PSI v&agrave; Adaptor.&nbsp;<br />\r\n- Văn th&acirc;n của bị mất tự động, Văn Th&aacute;i nuoc, van &aacute;p dụng thấp, van &aacute;p dụng cao.&nbsp;&nbsp;<br />\r\n- V&ograve;i nuớc mạ v&agrave;ng&nbsp;<br />\r\n- Cut đường ống kết nối đầu v&agrave;o nuoc.&nbsp;<br />\r\n- Van kh&oacute;a ch&iacute;nh ống Primary nuoc.&nbsp;<br />\r\n- D&acirc;y cấp v&agrave; ống nuoc.&nbsp;<br />\r\n- Hướng dẫn sử dụng, phiếu bảo h&agrave;nh.</p>\r\n', '14938267143_92.jpg', NULL, '', 0, 1, 0, NULL, 1, '2017-05-05 05:32:53'),
(13, 1, 0, NULL, 'Máy lọc nước SAFURE 7 cấp vỏ inox', 'SE-107 A', 'may-loc-nuoc-safure-7-cap-vo-inox', 'Máy lọc nước SAFURE 7 cấp vỏ inox', '<p>H&atilde;ng sản xuất: SAFURE</p>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; clear: both;">\r\n<div style="margin: 0px; padding: 0px; line-height: 21px;">\r\n<div style="margin: 0px 0px 0px auto; padding: 0px; line-height: 21px; clear: both;">\r\n<div id="ctl00_divcontent" style="margin: 0px 0px 0px auto; padding: 0px; line-height: 21px; clear: both;">\r\n<div style="margin: 0px; padding: 0px; line-height: 21px;">\r\n<p>Model: SE-107 A</p>\r\n\r\n<p>Type: M&aacute;y lọc nước tinh khiết Si&ecirc;u Cao cấp R.O 7 l&otilde;i, 7 cấp lọc<br />\r\nM&agrave;ng R.O: 50 GDP (10-15 l&iacute;t/giờ)<br />\r\nNguồn điện: 220 Volt (50/60Hz).<br />\r\n&Aacute;p lực hoạt động: 5 -125 PSI<br />\r\nK&iacute;ch thước (mm): 440 x 330 x 250&nbsp;<br />\r\nThời hạn bảo h&agrave;nh: 02 năm theo Ti&ecirc;u chuẩn của ch&iacute;nh H&atilde;ng</p>\r\n&nbsp;\r\n\r\n<p>M&aacute;y lọc nước si&ecirc;u cao cấp&nbsp; R.O&nbsp;&nbsp;với cột tạo kho&aacute;ng cung cấp nước uống an to&agrave;n, tinh khiết với c&ocirc;ng nghệ thẩm thấu ngược R.O với chi ph&iacute; thấp m&agrave; hiệu quả cao. Đ&acirc;y l&agrave; loại m&aacute;y si&ecirc;u cao cấp được sử dụng trong c&aacute;c gia đ&igrave;nh. Nước sau khi lọc qua m&aacute;y R.O&nbsp; c&oacute; tỷ lệ c&acirc;n bằng ho&agrave;n hảo của c&aacute;c kho&aacute;ng chất cần thiết cho sự ph&aacute;t triển l&agrave;nh mạnh của cơ thể con người.<br />\r\n<br />\r\nM&aacute;y lọc nước tinh khiết si&ecirc;u cao cấp RO&nbsp;07 l&otilde;i, 10 cấp lọc&nbsp;gồm L&otilde;i Nanosilver&nbsp;với c&ocirc;ng nghệ tr&aacute;ng bạc, k&iacute;ch thước nanomet cực mạnh trong t&aacute;c dụng diệt khuẩn.&nbsp;Vật liệu bạc c&oacute; khả năng kh&aacute;ng khuẩn tự nhi&ecirc;n v&agrave; khả năng kh&aacute;ng nấm, n&oacute; hoạt động như một chất x&uacute;c t&aacute;c v&ocirc; hiệu ho&aacute; chức năng của c&aacute;c loại vi sinh vật g&acirc;y hại như vi r&uacute;t, vi khuẩn v&agrave; nấm; cần thiết cho qu&aacute; tr&igrave;nh trao đổi chất oxy v&agrave; ngăn chặn việc g&acirc;y hại đối với cơ thể con ngừơi.&nbsp;C&oacute; t&aacute;c dụng l&agrave;m cho nguồn nước của bạn sạch v&agrave; v&ocirc; tr&ugrave;ng,&nbsp;cung cấp nước uống an to&agrave;n, tinh khiết&nbsp;<br />\r\nNgo&agrave;i ra, c&ocirc;ng nghệ ti&ecirc;n tiến của cột Alkaline&nbsp;hiệu quả gấp 6+ lần so với cột Alkaline th&ocirc;ng thường. M&aacute;y lọc nước tinh khiết 07 l&otilde;i lọc l&agrave; một hệ thống lọc chất lượng cao c&acirc;p 07 giai đoạn lọc vượt trội đi k&egrave;m với l&otilde;i tạo kiềm Alkaline, để cung cấp tốt nhất trong phương ph&aacute;p lọc nước v&agrave; l&agrave;m c&acirc;n bằng độ pH cho nước uống. Sử dụng c&ocirc;ng nghệ thẩm thấu ngược RO với l&otilde;i tạo kiềm Alkaline thực sự c&oacute; thể loại bỏ 99,99% c&aacute;c chất g&acirc;y &ocirc; nhiễm v&agrave; cung cấp cho con người với nước uống kiềm c&oacute; lợi cho sức khỏe. C&acirc;n bằng độ PH với gi&aacute; trị 8,0 ~ 9,5, nước Kiềm (Alkaline) tốt hơn cho sức khỏe<br />\r\nMột cơ thể kiềm l&agrave; khi cơ thể bạn đang trong trạng th&aacute;i khỏe mạnh do đ&oacute; cho ph&eacute;p cơ thể để chống bệnh truyền nhiễm do vi khuẩn v&agrave; cũng như nhiều bệnh tật kh&aacute;c.</p>\r\n<strong><em>C&aacute;c t&iacute;nh năng v&agrave; thiết bị k&egrave;m theo</em></strong>:<br />\r\n- C&ocirc;ng suất lọc 10-15 l/giờ (50 GPD).<br />\r\n- B&igrave;nh &aacute;p ti&ecirc;u chuẩn NSF 12 L&iacute;t (3,2 gallon).<br />\r\n- Van b&igrave;nh &aacute;p.<br />\r\n- Cốc lọc ti&ecirc;u chuẩn 10&rdquo; (01 cốc trong suốt v&agrave; 02 cốc m&agrave;u xanh hoặc m&agrave;u trắng).<br />\r\n- Tay vặn cốc lọc.<br />\r\n- M&aacute;y bơm 125 PSI v&agrave; Adaptor.<br />\r\n- Van đ&oacute;ng ngắt tự động, van nước thải, van &aacute;p thấp, van &aacute;p cao.&nbsp;<br />\r\n- V&ograve;i nước 03 c&aacute;nh.<br />\r\n- C&uacute;t nối ống dẫn nước đầu v&agrave;o.<br />\r\n- Van kh&oacute;a ống dẫn nước.<br />\r\n- D&acirc;y cấp v&agrave; dẫn nước.<br />\r\n- Hướng dẫn sử dụng, phiếu bảo h&agrave;nh ch&iacute;nh H&atilde;ng.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', '14938272883_92.jpg', 3850000, '2 năm', 0, 0, 0, NULL, 1, '2017-05-03 18:04:28'),
(14, 1, 0, NULL, 'Máy lọc nước Safure thông minh 8 cấp vỏ IQ', 'IRO-108 IQ', 'máy-lọc-nuóc-safure-thong-minh-8-cap-vo-iq', 'Máy lọc nước Safure thông minh 8 cấp vỏ IQ', '<div class="km-title" style="margin: 152px 0px 0px; padding: 0px; font-family: arial; font-size: 11px; color: rgb(53, 53, 53); line-height: 21px; float: left; text-align: center; width: 203px;">\r\n<h2><a href="http://safure.vn/may-loc-nuoc-safure/may-loc-nuoc-safure-07.html" style="margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(51, 51, 51); font-size: 10px;" title="Máy lọc nước Safure  thông minh 8 cấp vỏ IQ">Máy lọc nước Safure th&ocirc;ng minh 8 cấp vỏ IQ</a></h2>\r\n</div>\r\n\r\n<div class="km-masp" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(53, 53, 53); line-height: 21px; text-align: center;">M&atilde; SP:&nbsp;<strong>IRO-108 IQ</strong></div>\r\n\r\n<div class="km-baohanh" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: center;">Bảo h&agrave;nh:&nbsp;<strong>2 NĂM</strong></div>\r\n\r\n<div class="km-price" style="margin: 0px; padding: 0px; font-family: Verdana; font-size: 12px; color: rgb(53, 53, 53); line-height: 21px; text-align: center; width: 205px;">Gi&aacute;:&nbsp;<strong>4.950.000 VND</strong></div>\r\n', '1493893619fuc4521_28.jpg', 4.95, 'Bảo hành: 2 NĂM', 0, 0, 0, NULL, 1, '2017-05-04 12:26:59'),
(15, 1, 0, NULL, 'Máy lọc nước Safure thông minh 7 cấp vỏ IQ', 'IRO-107 IQ', 'máy-lọc-nuóc-safure-thong-minh-7-cap-vo-iq', 'Máy lọc nước Safure thông minh 7 cấp vỏ IQ', '<div class="km-title" style="margin: 152px 0px 0px; padding: 0px; font-family: arial; font-size: 11px; color: rgb(53, 53, 53); line-height: 21px; float: left; text-align: center; width: 203px;">\r\n<h2>&nbsp;</h2>\r\n\r\n<div class="km-title" style="margin: 152px 0px 0px; padding: 0px; font-family: arial; font-size: 11px; color: rgb(53, 53, 53); line-height: 21px; float: left; text-align: center; width: 203px;">\r\n<h2><a href="http://safure.vn/may-loc-nuoc-safure/may-loc-nuoc-safure-06.html" style="margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(51, 51, 51); font-size: 10px;" title="Máy lọc nước Safure  thông minh 7 cấp vỏ IQ">Máy lọc nước Safure th&ocirc;ng minh 7 cấp vỏ IQ</a></h2>\r\n</div>\r\n\r\n<div class="km-masp" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(53, 53, 53); line-height: 21px; text-align: center;">M&atilde; SP:&nbsp;<strong>IRO-107 IQ</strong></div>\r\n\r\n<div class="km-baohanh" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: center;">Bảo h&agrave;nh:&nbsp;<strong>2 NĂM</strong></div>\r\n\r\n<div class="km-price" style="margin: 0px; padding: 0px; font-family: Verdana; font-size: 12px; color: rgb(53, 53, 53); line-height: 21px; text-align: center; width: 205px;">Gi&aacute;:&nbsp;<strong>4.750.000 VND</strong></div>\r\n</div>\r\n', '1493893878fuc4524_77.jpg', 4.75, 'Bảo hành: 2 NĂM', 0, 0, 0, NULL, 1, '2017-05-04 12:31:18'),
(16, 1, 0, NULL, 'Máy lọc nước Safure 9 cấp vỏ IQ', 'SE-109-IQ', 'máy-lọc-nuóc-safure-9-cap-vo-iq', 'Máy lọc nước Safure 9 cấp vỏ IQ', '<div class="km-title" style="margin: 152px 0px 0px; padding: 0px; font-family: arial; font-size: 11px; color: rgb(53, 53, 53); line-height: 21px; float: left; text-align: center; width: 203px;">\r\n<div class="km-title" style="margin: 152px 0px 0px; padding: 0px; font-family: arial; font-size: 11px; color: rgb(53, 53, 53); line-height: 21px; float: left; text-align: center; width: 203px;">\r\n<h2><a href="http://safure.vn/may-loc-nuoc-safure/may-loc-nuoc-safure-05.html" style="margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(51, 51, 51); font-size: 10px;" title="Máy lọc nước Safure 9 cấp vỏ IQ">Máy lọc nước Safure 9 cấp vỏ IQ</a></h2>\r\n</div>\r\n\r\n<div class="km-masp" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(53, 53, 53); line-height: 21px; text-align: center;">M&atilde; SP:&nbsp;<strong>SE-109-IQ</strong></div>\r\n\r\n<div class="km-baohanh" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: center;">Bảo h&agrave;nh:&nbsp;<strong>2 NĂM</strong></div>\r\n</div>\r\n', '1493893801fuc4515_78.jpg', 4.65, 'Bảo hành: 2 NĂM', 0, 0, 0, NULL, 1, '2017-05-04 12:30:01'),
(17, 1, 0, NULL, 'Máy lọc nước safure 8 cấp lọc vỏ IQ', 'SE-108-IQ', 'may-loc-nuoc-safure-8-cap-loc-vo-iq', 'Máy lọc nước safure 8 cấp lọc vỏ IQ', '<div class="product-name" style="margin: 0px; padding: 0px 0px 10px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">\r\n<h1>M&aacute;y lọc nước safure 8 cấp lọc vỏ IQ</h1>\r\n</div>\r\n\r\n<div class="km-masp1" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Bảo h&agrave;nh: 2 NĂM</div>\r\n\r\n<div class="product-shop-view-detail" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; float: left;">\r\n<div class="pricedetail" style="margin: 0px; padding: 9px 0px; font-size: 16px; color: rgb(255, 0, 0); line-height: 21px; float: left; font-weight: bold; width: 516px;"><strong>4.450.000 VND</strong></div>\r\nHỗ trợ trực tuyến</div>\r\n', '1493894044fuc4515_75.jpg', 4.45, 'Bảo hành: 2 NĂM', 0, 0, 0, NULL, 1, '2017-05-04 12:34:04'),
(18, 1, 0, NULL, 'Máy lọc nước safure 7 cấp lọc vỏ IQ', 'SE-107-IQ', 'may-loc-nuoc-safure-7-cap-loc-vo-iq', 'Máy lọc nước safure 7 cấp lọc vỏ IQ', '<div class="product-name" style="margin: 0px; padding: 0px 0px 10px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">\r\n<div class="km-title" style="margin: 152px 0px 0px; padding: 0px; font-family: arial; font-size: 11px; color: rgb(53, 53, 53); line-height: 21px; float: left; text-align: center; width: 203px;">\r\n<h2><a href="http://safure.vn/may-loc-nuoc-safure/safure-01.html" style="margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(51, 51, 51); font-size: 10px;" title="Máy lọc nước safure  7 cấp lọc vỏ IQ">M&aacute;y lọc nước safure 7 cấp lọc vỏ IQ</a></h2>\r\n</div>\r\n\r\n<div class="km-masp" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(53, 53, 53); line-height: 21px; text-align: center;">M&atilde; SP:&nbsp;<strong>SE-107-IQ</strong></div>\r\n\r\n<div class="km-baohanh" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: center;">Bảo h&agrave;nh:&nbsp;<strong>2 NĂM</strong></div>\r\n\r\n<div class="km-price" style="margin: 0px; padding: 0px; font-family: Verdana; font-size: 12px; color: rgb(53, 53, 53); line-height: 21px; text-align: center; width: 205px;">Gi&aacute;:&nbsp;<strong>4.250.000 VND</strong></div>\r\n</div>\r\n\r\n<div class="product-shop-view-detail" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; float: left;">Hỗ trợ trực tuyến</div>\r\n', '1493894131fuc4517_86.jpg', 4.25, 'Bảo hành: 2 NĂM', 1, 0, 0, NULL, 1, '2017-05-05 05:33:23'),
(19, 1, 0, NULL, 'Máy lọc nước safure 8 cấp lọc vỏ inox', 'SE-108-A', 'may-loc-nuoc-safure-8-cap-loc-vo-inox', 'Máy lọc nước safure 8 cấp lọc vỏ inox', '<div class="product-name" style="margin: 0px; padding: 0px 0px 10px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">\r\n<div class="km-title" style="margin: 152px 0px 0px; padding: 0px; font-family: arial; font-size: 11px; color: rgb(53, 53, 53); line-height: 21px; float: left; text-align: center; width: 203px;">\r\n<h2>&nbsp;</h2>\r\n\r\n<div class="km-title" style="margin: 152px 0px 0px; padding: 0px; font-family: arial; font-size: 11px; color: rgb(53, 53, 53); line-height: 21px; float: left; text-align: center; width: 203px;">\r\n<h2><a href="http://safure.vn/may-loc-nuoc-safure/may-loc-nuoc-cao-cap-safure7.html" style="margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(51, 51, 51); font-size: 10px;" title="Máy lọc nước safure 8 cấp lọc  vỏ inox">M&aacute;y lọc nước safure 8 cấp lọc vỏ inox</a></h2>\r\n</div>\r\n\r\n<div class="km-masp" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(53, 53, 53); line-height: 21px; text-align: center;">M&atilde; SP:&nbsp;<strong>SE-108-A</strong></div>\r\n\r\n<div class="km-baohanh" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: center;">Bảo h&agrave;nh:&nbsp;<strong>2 năm</strong></div>\r\n\r\n<div class="km-price" style="margin: 0px; padding: 0px; font-family: Verdana; font-size: 12px; color: rgb(53, 53, 53); line-height: 21px; text-align: center; width: 205px;">Gi&aacute;:&nbsp;<strong>4.450.000 VND</strong></div>\r\n</div>\r\n</div>\r\n', '14938942183_92.jpg', 4.45, 'Bảo hành: 2 NĂM', 0, 0, 0, NULL, 1, '2017-05-04 12:36:58'),
(20, 1, 0, NULL, 'Máy lọc nước safure 8 cấp lọc vỏ IQ', 'SE-108-IQ', 'may-loc-nuoc-safure-8-cap-loc-vo-iq', 'Máy lọc nước safure 8 cấp lọc vỏ IQ', '<div class="product-name" style="margin: 0px; padding: 0px 0px 10px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">\r\n<div class="km-title" style="margin: 152px 0px 0px; padding: 0px; font-family: arial; font-size: 11px; color: rgb(53, 53, 53); line-height: 21px; float: left; text-align: center; width: 203px;">\r\n<div class="km-title" style="margin: 152px 0px 0px; padding: 0px; font-family: arial; font-size: 11px; color: rgb(53, 53, 53); line-height: 21px; float: left; text-align: center; width: 203px;">\r\n<h2><a href="http://safure.vn/may-loc-nuoc-safure/may-loc-nuoc-thong-minh.html" style="margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(51, 51, 51); font-size: 10px;" title="Máy lọc nước safure  8 cấp lọc vỏ IQ">M&aacute;y lọc nước safure 8 cấp lọc vỏ IQ</a></h2>\r\n</div>\r\n\r\n<div class="km-masp" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(53, 53, 53); line-height: 21px; text-align: center;">M&atilde; SP:&nbsp;<strong>SE-108-IQ</strong></div>\r\n\r\n<div class="km-baohanh" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: center;">Bảo h&agrave;nh:&nbsp;<strong>2 năm</strong></div>\r\n\r\n<div class="km-price" style="margin: 0px; padding: 0px; font-family: Verdana; font-size: 12px; color: rgb(53, 53, 53); line-height: 21px; text-align: center; width: 205px;">Gi&aacute;:&nbsp;<strong>4.450.000 VND</strong></div>\r\n</div>\r\n</div>\r\n', '1493894397fuc4517_26.jpg', 4.45, 'Bảo hành: 2 NĂM', 0, 0, 0, NULL, 1, '2017-05-04 12:39:57'),
(21, 1, 0, NULL, 'Máy lọc nước thông minh 9 cấp lọc vỏ IQ', 'IRO-SE-109 IQ', 'may-loc-nuoc-thong-minh-9-cap-loc-vo-iq', 'Máy lọc nước thông minh 9 cấp lọc vỏ IQ', '<div class="product-name" style="margin: 0px; padding: 0px 0px 10px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">\r\n<div class="km-title" style="margin: 152px 0px 0px; padding: 0px; font-family: arial; font-size: 11px; color: rgb(53, 53, 53); line-height: 21px; float: left; text-align: center; width: 203px;">\r\n<div class="km-title" style="margin: 152px 0px 0px; padding: 0px; font-family: arial; font-size: 11px; color: rgb(53, 53, 53); line-height: 21px; float: left; text-align: center; width: 203px;">\r\n<h2>&nbsp;</h2>\r\n\r\n<div class="km-title" style="margin: 152px 0px 0px; padding: 0px; font-family: arial; font-size: 11px; color: rgb(53, 53, 53); line-height: 21px; float: left; text-align: center; width: 203px;">\r\n<h2><a href="http://safure.vn/may-loc-nuoc-safure/may-loc-nuoc-emutech-8-cap-khong-co-vo.html" style="margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(51, 51, 51); font-size: 10px;" title="Máy lọc nước thông minh 9 cấp lọc vỏ IQ">M&aacute;y lọc nước th&ocirc;ng minh 9 cấp lọc vỏ IQ</a></h2>\r\n</div>\r\n\r\n<div class="km-masp" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(53, 53, 53); line-height: 21px; text-align: center;">M&atilde; SP:&nbsp;<strong>IRO-SE-109 IQ</strong></div>\r\n\r\n<div class="km-baohanh" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: center;">Bảo h&agrave;nh:&nbsp;<strong>2 NĂM</strong></div>\r\n\r\n<div class="km-price" style="margin: 0px; padding: 0px; font-family: Verdana; font-size: 12px; color: rgb(53, 53, 53); line-height: 21px; text-align: center; width: 205px;">Gi&aacute;:&nbsp;<strong>5.150.000 VND</strong></div>\r\n</div>\r\n</div>\r\n</div>\r\n', '1493894492fuc4521_93.jpg', 5.15, 'Bảo hành: 2 NĂM', 0, 0, 0, NULL, 1, '2017-05-04 12:41:32'),
(22, 1, 0, NULL, 'Máy lọc nước SAFURE 7 cấp vỏ inox', 'SE-107 A', 'may-loc-nuoc-safure-7-cap-vo-inox', 'Máy lọc nước SAFURE 7 cấp vỏ inox', '<div class="product-name" style="margin: 0px; padding: 0px 0px 10px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">\r\n<div class="km-title" style="margin: 152px 0px 0px; padding: 0px; font-family: arial; font-size: 11px; color: rgb(53, 53, 53); line-height: 21px; float: left; text-align: center; width: 203px;">\r\n<div class="km-title" style="margin: 152px 0px 0px; padding: 0px; font-family: arial; font-size: 11px; color: rgb(53, 53, 53); line-height: 21px; float: left; text-align: center; width: 203px;">\r\n<div class="km-title" style="margin: 152px 0px 0px; padding: 0px; font-family: arial; font-size: 11px; color: rgb(53, 53, 53); line-height: 21px; float: left; text-align: center; width: 203px;">\r\n<h2><a href="http://safure.vn/may-loc-nuoc-safure/may-loc-nuoc-safure-co-tu-inox.html" style="margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(51, 51, 51); font-size: 10px;" title="Máy lọc nước SAFURE 7 cấp  vỏ  inox">M&aacute;y lọc nước SAFURE 7 cấp vỏ inox</a></h2>\r\n</div>\r\n\r\n<div class="km-masp" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: rgb(53, 53, 53); line-height: 21px; text-align: center;">M&atilde; SP:&nbsp;<strong>SE-107 A</strong></div>\r\n\r\n<div class="km-baohanh" style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: center;">Bảo h&agrave;nh:&nbsp;<strong>2 năm</strong></div>\r\n\r\n<div class="km-price" style="margin: 0px; padding: 0px; font-family: Verdana; font-size: 12px; color: rgb(53, 53, 53); line-height: 21px; text-align: center; width: 205px;">Gi&aacute;:&nbsp;<strong>3.850.000 VND</strong></div>\r\n</div>\r\n</div>\r\n</div>\r\n', '14938945993_45.jpg', 3.85, 'Bảo hành: 2 NĂM', 0, 0, 0, NULL, 1, '2017-05-04 12:43:19'),
(23, 1, 0, NULL, 'Máy lọc nước CleveRO-01A', 'CleveRO-01A', 'may-loc-nuoc-clevero-01a', 'Máy lọc nước CleveRO-01A', '<div class="product-name" style="margin: 0px; padding: 0px 0px 10px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">L&Otilde;I LỌC CIF-ĐỘT PH&Aacute; MỚI VỀ C&Ocirc;NG NGHỆ &nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">KH&Acirc;U TIỀN XỬ L&Yacute; TRONG M&Aacute;Y LỌC NƯỚC TINH KHIẾT</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Gần đ&acirc;y trong giới kỹ thuật l&agrave;m về lọc nước ở Mỹ, Ch&acirc;u &Acirc;u v&agrave; một số nước Ch&acirc;u &Aacute; x&ocirc;n xao b&agrave;n t&aacute;n về c&ocirc;ng nghệ mới đột ph&aacute; về l&otilde;i lọc</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">tiền xử l&yacute; CIF. Vậy CIF l&agrave; g&igrave;? Nh&acirc;n chuyến viếng thăm trụ sở c&ocirc;ng ty BIBUS tại Thụy Sỹ ch&uacute;ng t&ocirc;i c&oacute; cơ hội t&igrave;m hiểu điều n&agrave;y.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Trong hệ thống m&aacute;y lọc nước d&ugrave;ng m&agrave;ng lọc RO, việc xử l&yacute; trước m&agrave;ng l&agrave; y&ecirc;u cầu quan trọng quyết định chất lượng nước sau lọc v&agrave; tuổi</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">tho m&agrave;ng RO. M&ocirc; h&igrave;nh truyền thống thường sử dụng 3 cấp lọc tiền xử l&yacute; bao gồm: l&otilde;i số 1 PP nhằm loại cặn bẩn c&oacute; k&iacute;ch thước lơn hơn 5</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">micron, l&otilde;i 2 carbon dạng hạt (GAC) nhằm loại c&aacute;c hợp chất hữu cơ, hấp thụ c&aacute;c kim loại nặng v&agrave; độc tố. Với carbon dạng hạt c&oacute; bề mặt tiếp</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">x&uacute;c lớn &nbsp;GAC được coi l&agrave; l&otilde;i quan trọng nhất khử clo dư trong nước v&agrave; c&aacute;c chất độc hại. L&otilde;i số 3 CTO l&agrave; carbon được &eacute;p chặt nhằm loại 1</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">lần nữa c&aacute;c độc tố v&agrave; chặn hạt carbon từ l&otilde;i số 2 kh&ocirc;ng cho l&ecirc;n m&agrave;ng RO. Như vậy l&otilde;i 2 v&agrave; 3 trong m&aacute;y truyền thống c&oacute; ưu nhược điểm như</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">sau:</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Ưu điểm Nhược điểm</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">L&otilde;i GAC</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Bề mặt Tx lớn, hấp phụ tốt</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Hạt &nbsp;dễ &nbsp;tr&ocirc;i &nbsp;ra &nbsp;l&agrave;m &nbsp;đen</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">nước</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Loại được hầu hết tạp chất hữu cơ</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Nhanh &nbsp;phải &nbsp;thay &nbsp;thế, &nbsp;Dễ</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">g&acirc;y e kh&iacute; hoặc tắc</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">L&otilde;i CTO K&iacute;ch thước 1 micron chặn được hạt carbon Khả năng hấp phụ k&eacute;m</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Tuổi thọ d&agrave;i Dễ tắc</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">C&acirc;u hỏi đặt ra cho c&aacute;c nh&agrave; l&agrave;m l&otilde;i lọc: một loại l&otilde;i kết hợp được ưu điểm v&agrave; tr&aacute;nh được c&aacute;c nhược điểm của 2 loại l&otilde;i tr&ecirc;n?</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Từ những nhu cầu tr&ecirc;n, năm 2010 l&otilde;i CIF (Carbon In Filter) ra đời v&agrave; được BIBUS ph&aacute;t triển ở thị trường c&aacute;c nước Ch&acirc;u &Acirc;u. Từ đầu năm</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">2011, CIF được BIBUS Việt Nam nhập khẩu nguy&ecirc;n kiện v&agrave; ph&acirc;n phối tại thị trường Việt Nam.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Cấu tạo l&otilde;i CIF (xem h&igrave;nh tr&ecirc;n): &nbsp;lớp ngo&agrave;i c&ugrave;ng l&agrave; PP 5 micron, lớp ở giữa l&agrave; hạt c&aacute;c bon rất mịn c&oacute; k&iacute;ch thước bằng 1/10 k&iacute;ch thước carbon</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">trong l&otilde;i GAC, c&ograve;n lớp l&otilde;i trong c&ugrave;ng l&agrave; PP 1 micron c&oacute; t&aacute;c dụng chặn hạt carbon v&agrave; tinh lọc.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Với cấu tạo như vậy l&otilde;i CIF c&oacute; khả năng lọc v&agrave; hấp thụ tốt hơn rất nhiều so với l&otilde;i GAC bởi lớp ngo&agrave;i c&ugrave;ng của GAC l&agrave; nhựa n&ecirc;n nước</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">kh&ocirc;ng thể thấm qua m&agrave; chỉ c&oacute; hướng lọc duy nhất từ dưới l&ecirc;n, trong khi nước c&oacute; thể thấm qua mọi hướng của l&otilde;i CIF. Ch&iacute;nh nhờ cấu tạo đặc</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">biệt n&agrave;y l&otilde;i CIF gi&uacute;p nước lọc th&ocirc;ng tho&aacute;ng hơn v&agrave; tr&aacute;ch được lỗi e kh&iacute; v&agrave; tr&aacute;nh được khả năng tắc so với l&otilde;i GAC. Hơn nữa c&aacute;c bon hạt của</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">GAC to n&ecirc;n bề mặt tiếp x&uacute;c nước k&eacute;m hơn dạng c&aacute;c bon được xay rất mịn của CIF. &nbsp;Ngo&agrave;i ra CIF cũng c&oacute; điểm giống l&otilde;i GAC l&agrave; l&otilde;i CIF c&oacute;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">khả năng hấp thụ c&aacute;c hợp chất hưu cơ, độc tố tốt hơn l&otilde;i CTO do tận dụng hết 100% bề mặt xốp của hạt m&agrave; kh&ocirc;ng cần phải d&ugrave;ng chất kết</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">d&iacute;nh như l&otilde;i CTO.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Th&ocirc;ng số kỹ thuật:</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Chiều d&agrave;i: 10&rdquo;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Tuổi thọ trung b&igrave;nh: 1 năm</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">K&iacute;ch thước hạt carbon: 0,17mm&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">(Carbon trong l&otilde;i GAC 2mm)</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Ứng dụng: D&ugrave;ng thay thế cho cả GAC v&agrave; CTO</div>\r\n</div>\r\n', '14938947041_96.jpg', 11.5, '2 năm', 0, 0, 0, NULL, 1, '2017-05-05 11:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `name`, `alias`, `description`, `content`, `image`, `order`, `status`, `created`) VALUES
(1, 'Hoa mai Bình Định', 'hoa-mai-binh-dinh', '', '<p>Hoa mai b&igrave;nh định</p>\r\n', '1403765873300x215-7.png', NULL, 1, '2014-06-26 13:58:07'),
(2, 'Hoa mai Bình Định 1', 'hoa-mai-binh-dinh-1', '', '<p>Hoa mai b&igrave;nh định 1</p>\r\n', '1403765906300x215-7.png', NULL, 1, '2014-06-26 13:58:26'),
(3, 'Hoa mai Bình Định 1', 'hoa-mai-binh-dinh-1', '', '<p>Hoa mai b&igrave;nh định 1</p>\r\n', '1403765977hoamai.jpg', NULL, 1, '2014-06-26 13:59:37'),
(4, 'Hoa mai Bình Định 2', 'hoa-mai-binh-dinh-2', '', '<p>Hoa mai b&igrave;nh định 2</p>\r\n', '1403765996300x215-7.png', NULL, 1, '2014-06-26 13:59:56'),
(5, 'b', 'b', 'a', '<p>a</p>\r\n', '1403766007hoamai.jpg', 3, 1, '2014-06-26 14:00:07'),
(6, 'test', 'test', 'abc', '<p>abc</p>\r\n', '1403766016300x215-7.png', 1, 1, '2014-06-26 14:00:16'),
(7, 'test', 'test', 'abc', '<p>abc</p>\r\n', '1403766031hoamai.jpg', 1, 1, '2014-06-26 14:00:31'),
(8, 'test 3', 'test-3', 'test 3', '<p>test 3</p>\r\n', '1403766043300x215-7.png', 1, 1, '2014-06-26 14:00:43'),
(9, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766058hoamai.jpg', NULL, 1, '2014-06-26 14:00:58'),
(10, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766070300x215-7.png', NULL, 1, '2014-06-26 14:01:10'),
(11, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766079hoamai.jpg', NULL, 1, '2014-06-26 14:01:19'),
(12, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766088300x215-7.png', NULL, 1, '2014-06-26 14:01:28'),
(13, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766099300x215-7.png', NULL, 1, '2014-06-26 14:01:39'),
(15, 'teaasdfasdf', 'teaasdfasdf', 'asdfasdf', '<p>asdf</p>\r\n', '1403766113300x215-7.png', NULL, 1, '2014-06-26 14:01:53'),
(16, 'Tam', 'tam', 'test', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg" style="height:340px; width:509px" /></p>\r\n', '1403766124hoamai.jpg', NULL, 1, '2014-06-26 14:02:11'),
(17, 'Tam adf', 'tam-adf', 'test', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg" style="height:340px; width:509px" /></p>\r\n', '1403766143300x215-7.png', NULL, 1, '2014-06-26 17:04:03'),
(18, 'test 1', 'test-1', 'asdf', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/image1.jpeg" style="height:177px; width:284px" /></p>\r\n', '1403766152hoamai.jpg', NULL, 1, '2014-06-26 14:02:32'),
(19, 'Tu van hoa mai', 'tu-van-hoa-mai', 'tu van hoa mai', '<p>Tu van hoa mai</p>\r\n', '1403841463hoamai.jpg', 1, 1, '2014-06-27 10:57:43'),
(20, 'Dich Vu cham soc hoa mai', 'dich-vu-cham-soc-hoa-mai', 'cham soc hoa mai', '<p>Dich vu cham soc hoa mai</p>\r\n', '14121525371403765977hoamai.jpg', NULL, 1, '2014-10-01 15:35:37');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions_admin`
--

CREATE TABLE `sessions_admin` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions_admin`
--

INSERT INTO `sessions_admin` (`id`, `expire`, `data`) VALUES
('hqi02ff5uldvdlvmes28r17856', 1493985704, 0x31386232656438313933636232373131326232643466653939353030356161375f5f69647c733a353a2261646d696e223b31386232656438313933636232373131326232643466653939353030356161375f5f6e616d657c733a353a2261646d696e223b31386232656438313933636232373131326232643466653939353030356161376e616d657c733a353a2241646d696e223b31386232656438313933636232373131326232643466653939353030356161375f5f7374617465737c613a313a7b733a343a226e616d65223b623a313b7d);

-- --------------------------------------------------------

--
-- Table structure for table `static`
--

CREATE TABLE `static` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `selected` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `static`
--

INSERT INTO `static` (`id`, `name`, `alias`, `content`, `status`, `selected`, `created`, `keyword`, `description`) VALUES
(1, 'Liên hệ', 'lien-he', '<p>Hymarks&nbsp;Transfer Label Co,Ltd</p>\r\n\r\n<p>Lo I 7, Duong So 6, CCN Loi Binh Nhon, Xa Loi Binh Nhon, Tp. Tan An, Long An&nbsp;</p>\r\n\r\n<p>Hot line : Mr Ph&uacute;c (Mobile : 0128 601 8640 .&nbsp;Email : phuchoaduc@gmail.com)</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Mr Vinh &nbsp;(Mobile : 0933 607 602 .&nbsp; &nbsp;Email : vinh.hoaduc@gmail.com)</p>\r\n', 1, 0, '2015-09-09 05:22:03', '', ''),
(2, 'Description', 'description', '<p>Heat Transfer Label</p>\r\n', 1, 0, '2015-08-16 13:28:27', '', ''),
(3, 'Keyword', 'keyword', '<p>heat transfer label</p>\r\n', 1, 0, '2015-08-16 13:28:47', '', ''),
(4, 'Giới thiệu', 'gioi-thieu', '<p style="text-align:justify">Trang Web đang x&acirc;y dựng</p>\r\n', 1, 0, '2015-08-24 10:09:37', '', ''),
(5, 'Địa chỉ', 'dia-chi', '<p><span style="color:rgb(0, 0, 0)">Lo I 7, Duong So 6, CCN Loi Binh Nhon, Xa loi Binh Nhon, Tp.Tan An, Long An</span></p>\r\n', 1, 0, '2015-09-09 05:48:39', '', ''),
(6, 'Điện thoại', 'dien-thoai', '<p><em><strong>&nbsp;Mr Phuc</strong>:<span style="color:rgb(0, 255, 0)"><span style="font-size:18px">&nbsp;</span></span><span style="color:rgb(255, 255, 0)"><span style="font-size:18px"><strong><span style="font-size:20px">0128 601 8640 &nbsp; &nbsp;</span>&nbsp;</strong></span></span></em></p>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<em>Mr Vinh</em></strong><em>:<span style="color:rgb(255, 160, 122)"><strong>&nbsp;</strong></span><span style="font-size:20px"><span style="color:rgb(255, 255, 0)"><strong>0933 607 602&nbsp;</strong></span></span></em></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n', 1, 0, '2015-09-09 05:58:19', '', '  '),
(7, 'Email', 'email', '<p><span style="color:#0000FF">phuchoaduc@gmail.com</span></p>\r\n\r\n<p><span style="color:#0000FF">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;vinh.hoaduc@gmail.com</span></p>\r\n', 1, 0, '2015-09-09 05:53:30', '', ''),
(8, 'Google', 'google', '<p>http://google.com.vn</p>\r\n', 1, 0, '2015-05-05 15:30:32', NULL, NULL),
(9, 'Facebook', 'facebook', '<p>https://www.facebook.com</p>\r\n', 1, 0, '2015-09-09 06:16:46', '', ''),
(10, 'Twitter', 'twitter', '<p>http://twitter.com</p>\r\n', 1, 0, '2015-05-05 15:31:06', NULL, NULL),
(12, 'Giới thiệu sản phẩm', 'gioi-thieu-san-pham', '<p style="text-align:justify">Xin giới hiệu đến qu&yacute; kh&aacute;ch h&agrave;ng một lĩnh vực in &eacute;p chuyển nhiệt m&agrave; c&ocirc;ng ty ch&uacute;ng t&ocirc;i đang sản xuất phục vụ thị trường trong v&agrave; ngo&agrave;i nước.</p>\r\n\r\n<p style="text-align:justify">Với c&ocirc;ng nghệ ti&ecirc;n tiến, thiết bị hiện đại, kỹ thuật cao gi&uacute;p cho c&ocirc;ng ty ch&uacute;ng t&ocirc;i tạo ra được sản phẩm in &eacute;p chuyển nhiệt đạt ti&ecirc;u chuẩn xuất khẩu, độ ch&iacute;nh x&aacute;c cao, an to&agrave;n khi sử dụng để phục vụ cho ng&agrave;nh may mặc, gi&agrave;y da, t&uacute;i x&aacute;ch,...Sản phẩm in &eacute;p chuyển nhiệt sẽ kh&ocirc;ng bị rạn nứt- biến m&agrave;u, kh&ocirc;ng biến dạng, độ đ&agrave;n hồi cao đồng thời kh&ocirc;ng bị bong tr&oacute;c khi thấm nước hay ở nhiệt độ cao. Với t&iacute;nh năng tr&ecirc;n, hiện c&ocirc;ng ty ch&uacute;ng t&ocirc;i l&agrave; kh&aacute;ch h&agrave;ng của nhiều thương hiệu nổi tiếng tr&ecirc;n thế giới như: adidas, nike, disney, place, jumping beans, blue exchange, motviet, debor,...</p>\r\n\r\n<p style="text-align:justify">B&ecirc;n cạnh đ&oacute;, c&ocirc;ng ty ch&uacute;ng t&ocirc;i c&oacute; đội ngũ chuy&ecirc;n nghiệp tư vấn, thiết kế mẫu in &eacute;p chuyển nhiệt phục vụ nhu cầu, &yacute; tưởng,..của Q&uacute;y kh&aacute;ch h&agrave;ng đồng thời nắm bắt xu hướng thời trang, chất lượng uy t&iacute;n, gi&aacute; cả cạnh tranh.</p>\r\n', 1, 1, '2015-09-09 05:18:29', '', ''),
(14, 'MIỄN PHÍ VẬN CHUYỂN', 'mien-phi-van-chuyen', '<p><span style="color:rgb(34, 34, 34); font-family:arial,arial,helvetica,sans-serif; font-size:12.8000001907349px">Miễn ph&iacute; vận chuyển tận nơi tr&ecirc;n phạm vi to&agrave;n quốc, chất lượng đảm bảo đến tận tay người ti&ecirc;u d&ugrave;ng</span></p>\r\n', 1, 1, '2015-08-24 03:49:44', '', ''),
(15, 'ĐỔI TRẢ HÀNG TRONG 30 NGÀY', 'doi-tra-hang-trong-30-ngay', '<p><span style="font-family:arial,arial,helvetica,sans-serif; font-size:12.8000001907349px">Được đổi trả h&agrave;ng 1 đổi 1 nếu trong 30 ng&agrave;y sử dụng gặp vấn đề về mặt kỹ thuật, chi ph&iacute; vận chuyển trả h&agrave;ng free&nbsp;</span></p>\r\n', 1, 1, '2015-08-24 03:48:48', '', ''),
(16, 'HỖ TRỢ 24/7', 'hỖ-tro-24-7', '<p><span style="font-family:arial,arial,helvetica,sans-serif; font-size:12.8000001907349px">Trung t&acirc;m chăm s&oacute;c kh&aacute;ch h&agrave;ng thường trực 24/7 hỗ trợ giải đ&aacute;p mọi thắc mắc của kh&aacute;ch h&agrave;ng trong qu&aacute; tr&igrave;nh sử dụng</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 1, '2015-09-09 04:29:27', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `selected` int(11) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`id`, `name`, `alias`, `description`, `content`, `image`, `order`, `status`, `created`, `keyword`) VALUES
(1, 'Sàn nhẹ Panen - Công nghệ mới cho xây dựng hiện đại', 'san-nhe-panen-cong-nghe-moi-cho-xay-dung-hien-dai', 'Hiện nay cùng với sự phát triển mạnh của các khu đô thị lớn, các tòa nhà cao tầng mọc lên trên khắp đất nước. Để bắt kịp xu thế phát triển đó, nhiều doanh nghiệp xây dựng ngày càng hướng tới việc sử dụng các vật liệu mới nhằm tiết kiệm chi phí, tăng ', '<p>Hiện nay c&ugrave;ng với sự ph&aacute;t triển mạnh của c&aacute;c khu đ&ocirc; thị lớn, c&aacute;c t&ograve;a nh&agrave; cao tầng mọc l&ecirc;n tr&ecirc;n khắp đất nước. Để bắt kịp xu thế ph&aacute;t triển đ&oacute;, nhiều doanh nghiệp x&acirc;y dựng ng&agrave;y c&agrave;ng hướng tới việc sử dụng c&aacute;c vật liệu mới nhằm tiết kiệm chi ph&iacute;, tăng tiến độ x&acirc;y dựng m&agrave; vẫn đảm bảo được chất lượng, t&iacute;nh thẩm mỹ của ng&ocirc;i nh&agrave; v&agrave; ph&ugrave; hợp với xu hướng thiết kế hiện đại.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/60.jpg" style="border:0px; height:500px; margin:0px; padding:0px; width:500px" /></p>\r\n\r\n<p>L&agrave; một trong những vật liệu mới v&agrave; hiện đại được &aacute;p dụng c&ocirc;ng nghệ của Ph&aacute;p, s&agrave;n b&ecirc; t&ocirc;ng nhẹ panen l&agrave; loại s&agrave;n c&oacute; nhiều ưu điểm vượt trội so với những s&agrave;n b&ecirc; t&ocirc;ng kh&aacute;c. Với kết cấu khoa học, s&agrave;n b&ecirc; t&ocirc;ng si&ecirc;u nhẹ c&oacute; sức chịu tải tốt, rất ph&ugrave; hợp với c&aacute;c c&ocirc;ng tr&igrave;nh x&acirc;y dựng nh&agrave; cao tầng, hay mở rộng cải tạo với những căn nh&agrave; c&oacute; nền m&oacute;ng yếu.</p>\r\n\r\n<p>Theo thiết kế, s&agrave;n panen si&ecirc;u nhẹ c&oacute; kết cấu đơn giản, được lắp gh&eacute;p bởi dầm chịu lực v&agrave; những vi&ecirc;n Block s&agrave;n rỗng được đ&uacute;c sẵn c&oacute; trọng lượng thấp n&ecirc;n kh&ocirc;ng cần hoặc chỉ sử dụng rất &iacute;t cốt pha hay cột chống. Thời gian thi c&ocirc;ng s&agrave;n nhanh, mặt bằng thi c&ocirc;ng gọn, sạch, hạn chế tối đa việc d&ugrave;ng c&aacute;c vật liệu rời n&ecirc;n tr&aacute;nh được bụi v&agrave; &ocirc; nhiễm m&ocirc;i trường, chi ph&iacute; giảm so với s&agrave;n đổ tại chỗ do kh&ocirc;ng cần phải sử dụng cốp pha, d&agrave;n gi&aacute;o thi c&ocirc;ng. Đặc biệt s&agrave;n m&aacute;i c&oacute; thể sử dụng ngay sau khi thi c&ocirc;ng, c&oacute; thể tiếp tục l&ecirc;n tầng sau khi đổ s&agrave;n.</p>\r\n\r\n<p>Theo anh Cường - chủ đại l&yacute; vật liệu v&agrave; chuy&ecirc;n thi c&ocirc;ng s&agrave;n b&ecirc; t&ocirc;ng panen ở Huyện Ho&agrave;i Đức cho biết, hiện nay tr&ecirc;n thị trường c&oacute; rất nhiều loại s&agrave;n b&ecirc; t&ocirc;ng, mỗi loại s&agrave;n đều c&oacute; ưu nhược điểm ri&ecirc;ng, nhưng đối với s&agrave;n b&ecirc; t&ocirc;ng panen được rất nhiều kh&aacute;ch h&agrave;ng cũng như chủ đầu tư của c&aacute;c c&ocirc;ng tr&igrave;nh quan t&acirc;m v&agrave; lựa chọn, bởi t&iacute;nh tiện dụng như c&aacute;ch &acirc;m c&aacute;ch nhiệt tốt, vận chuyển dễ d&agrave;ng, v&agrave; đặc biệt nhất ph&ugrave; hợp với hầu hết c&aacute;c kiến tr&uacute;c nh&agrave; tại Việt Nam, cho d&ugrave; l&agrave; những c&ocirc;ng tr&igrave;nh cao ốc hay đến c&aacute;c c&ocirc;ng tr&igrave;nh d&acirc;n sự, sửa chữa, mở rộng, cải tạo nh&agrave; trong ng&otilde; hay mặt phố.</p>\r\n\r\n<p>Với những ưu điểm vượt trội, s&agrave;n b&ecirc; t&ocirc;ng si&ecirc;u nhẹ panen đ&atilde; được rất nhiều quốc gia ti&ecirc;n tiến ứng dụng trong việc x&acirc;y dựng những c&ocirc;ng tr&igrave;nh lớn cũng như nh&agrave; d&acirc;n sự, v&agrave; trong tương lai loại s&agrave;n n&agrave;y sẽ được sử dụng ở mọi c&ocirc;ng tr&igrave;nh một c&aacute;ch rộng r&atilde;i v&agrave; phổ biến.</p>\r\n', '1439390488tintuc1.jpg', 1, 1, '2015-08-12 16:41:28', NULL),
(2, 'Phân loại và chọn mua bơm công nghiệp', 'phan-loai-va-chon-mua-bom-cong-nghiep', 'Nhu cầu của con người về máy bơm công nghiệp trong các lĩnh vực sản xuất công nghiệp, nông nghiệp hay trong chăn nuôi trồng trọt là vô cùng lớn. Chính vì vậy, rất nhiều người đã tìm kiếm đến những chiếc máy bơm công nghiệp để phục vụ cho công việc củ', '<p>Nhu cầu của con người về m&aacute;y bơm c&ocirc;ng nghiệp trong c&aacute;c lĩnh vực sản xuất c&ocirc;ng nghiệp, n&ocirc;ng nghiệp hay trong chăn nu&ocirc;i trồng trọt l&agrave; v&ocirc; c&ugrave;ng lớn. Ch&iacute;nh v&igrave; vậy, rất nhiều người đ&atilde; t&igrave;m kiếm đến những chiếc m&aacute;y bơm c&ocirc;ng nghiệp để phục vụ cho c&ocirc;ng việc của m&igrave;nh. Nhưng nếu bạn l&agrave; một người muốn mua m&aacute;y bơm c&ocirc;ng nghiệp v&agrave; gần như kh&ocirc;ng biết g&igrave; về ch&uacute;ng th&igrave; h&atilde;y đọc b&agrave;i viết n&agrave;y để c&oacute; thể trang bị cho m&igrave;nh được những kiến thức đủ để mua một chiếc m&aacute;y bơm c&ocirc;ng nghiệp.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_6.jpg" style="border:0px; height:359px; margin:0px; padding:0px; width:473px" /></p>\r\n\r\n<p>Trước ti&ecirc;n ch&uacute;ng ta h&atilde;y c&ugrave;ng nhau t&igrave;m hiểu về nguy&ecirc;n l&yacute; hoạt động của những chiếc m&aacute;y bơm c&ocirc;ng nghiệp. Ch&uacute;ng hoạt động dựa tr&ecirc;n nguy&ecirc;n tắc năng lượng động lực v&agrave; chuyển t&iacute;ch cực để g&acirc;y &aacute;p lực cho chất lỏng v&agrave; gi&uacute;p chất lỏng di chuyển. Hầu hết, c&aacute;c loại m&aacute;y bơm c&ocirc;ng nghiệp đều d&ugrave;ng nguồn điện để gi&uacute;p động cơ bơm c&oacute; thể hoạt động nhưng ch&uacute;ng vẫn c&oacute; thể sử dụng xăng hay dầu diesel để vận h&agrave;nh.</p>\r\n\r\n<p>M&aacute;y bơm nước c&ocirc;ng nghiệp c&oacute; thể được sử dụng ở đ&acirc;u? M&aacute;y bơm nước c&ocirc;ng nghiệp c&oacute; thể sử dụng ở rất nhiều nơi kh&aacute;c nhau như trong c&aacute;c nh&agrave; m&aacute;y c&ocirc;ng nghiệp, trong lĩnh vực sản xuất n&ocirc;ng nghiệp hay trong hệ thống cấp tho&aacute;t nước của th&agrave;nh phố hoặc cũng c&oacute; thể l&agrave; trong hộ gia đ&igrave;nh.</p>\r\n\r\n<p>V&agrave; bạn lu&ocirc;n cần phải lựa chọn cho một chiếc m&aacute;y bơm c&ocirc;ng nghiệp ph&ugrave; hợp nhất với nhu cầu sử dụng. Sau đ&acirc;y ch&uacute;ng t&ocirc;i sẽ đưa ra cho bạn những loại m&aacute;y bơm c&ocirc;ng nghiệp kh&aacute;c nhau để bạn c&oacute; thể lựa chọn.</p>\r\n\r\n<p>Bơm kh&iacute; n&acirc;ng : Đ&acirc;y l&agrave; loại bơm được sử dụng để tạo d&ograve;ng, phun nước. Nguy&ecirc;n tắc hoạt động của bơm kh&iacute; n&acirc;ng l&agrave; nước sẽ được kết hợp với kh&iacute; được bơm xuống phần th&acirc;n bơm tạo th&agrave;nh một hỗn hợp gồm kh&iacute; v&agrave; nước. Do hỗn hợp n&agrave;y nhẹ hơn nước n&ecirc;n n&oacute; tr&agrave;o l&ecirc;n v&agrave; tạo ra một &aacute;p suất gi&uacute;p nước c&oacute; thể được đưa ra b&ecirc;n ngo&agrave;i qua th&acirc;n bơm.</p>\r\n\r\n<p>Bơm điện ch&igrave;m : Đ&acirc;y l&agrave; loại bơm được đặt ch&igrave;m v&agrave; sử dụng ở b&ecirc;n dưới chất lỏng. M&aacute;y bơm n&agrave;y hoạt động theo nguy&ecirc;n tắc khi motor quay nước được h&uacute;t v&agrave;o miệng h&uacute;t v&agrave; vận chuyển ra b&ecirc;n ngo&agrave;i qua ống đẩy. Bơm điện ch&igrave;m c&oacute; ưu điểm đ&oacute; l&agrave; gọn nhẹ v&agrave; cho hiệu suất cao nhưng nhược điểm của n&oacute; lại l&agrave; kh&oacute; sửa chữa do đặt ch&igrave;m dưới nguồn chất lỏng.</p>\r\n\r\n<p>Bơm ly t&acirc;m : Loại m&aacute;y bơm c&oacute; mặt tr&ecirc;n thị trường với số lượng rất nhiều v&agrave; được sử dụng rất nhiều trong c&aacute;c hộ gia đ&igrave;nh. Nguy&ecirc;n tắc hoạt động của bơm ly t&acirc;m đ&oacute; l&agrave; dựa v&agrave;o lực ly t&acirc;m v&agrave; dưới t&aacute;c động của lực ly t&acirc;m th&igrave; lượng chất lỏng sẽ được đưa ra b&ecirc;n ngo&agrave;i, b&ecirc;n trong th&acirc;n bơm sẽ tạo ra một khoảng ch&acirc;n kh&ocirc;ng để nước c&oacute; thể được h&uacute;t v&agrave;o. Đặc điểm của việc sử dụng bơm ly t&acirc;m đ&oacute; l&agrave; phải c&oacute; qu&aacute; tr&igrave;nh mồi nước trước khi vận h&agrave;nh m&aacute;y bơm.</p>\r\n\r\n<p>Bơm phun : &nbsp;Nguy&ecirc;n tắc hoạt động của loại bơm n&agrave;y l&agrave; dựa v&agrave;o kh&iacute; n&eacute;n hoặc bơm phụ gi&uacute;p tạo được ra sự dịch chuyển l&uacute;c đầu trong th&acirc;n bơm. Sự dịch chuyển n&agrave;y sẽ tạo được một v&ugrave;ng c&oacute; &aacute;p suất thấp ph&iacute;a sau th&acirc;n bơm khiến chất lỏng được vận chuyển.</p>\r\n\r\n<p>Bơm piston : L&agrave; loại bơm được sử dụng nhiều trong sản xuất v&igrave; hiệu quả m&agrave; ch&uacute;ng mang lại l&agrave; tương đối cao. Nguy&ecirc;n tắc hoạt động l&agrave; dựa v&agrave;o h&agrave;nh tr&igrave;nh của xy-lanh trong piston để vận chuyển nước.</p>\r\n', '1439390577tintuc2.jpg', 2, 1, '2015-08-12 16:42:57', NULL),
(3, 'Hướng dẫn pha xăng nhớt cho máy cưa xích Husqvarna', 'huong-dan-pha-xang-nhot-cho-may-cua-xich-husqvarna', 'Nhằm mục đích hướng dẫn pha xăng nhớt cho máy cưa xích nói chung và máy cưa xích Husqvarna nói riêng, bài viết rất hữu ích cho những người sữ dụng. Vì vậy mong quý khách đọc hết hướng dẫn và hãy chắc chắn rằng thông tin trước khi thực hiện công việc ', '<p>Nhằm mục đ&iacute;ch hướng dẫn pha xăng nhớt cho m&aacute;y cưa x&iacute;ch n&oacute;i chung v&agrave; m&aacute;y cưa x&iacute;ch Husqvarna n&oacute;i ri&ecirc;ng, b&agrave;i viết rất hữu &iacute;ch cho những người sữ dụng. V&igrave; vậy mong qu&yacute; kh&aacute;ch đọc hết hướng dẫn v&agrave; h&atilde;y chắc chắn rằng th&ocirc;ng tin trước khi thực hiện c&ocirc;ng việc n&agrave;y để đảm bảo an to&agrave;n cho người, cho m&aacute;y v&agrave; tiết kiệm xăng v&agrave; nhớt hơn. N&acirc;ng cao hiệu quả c&ocirc;ng việc.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_8.jpg" style="border:0px; height:376px; margin:0px; padding:0px; width:695px" /></p>\r\n\r\n<p><strong>Lưu &yacute;!</strong>&nbsp;Thiết bị n&agrave;y được lắp động cơ hai th&igrave; v&agrave; phải sử dụng xăng pha với dầu hai th&igrave;. Cần phải đong ch&iacute;nh x&aacute;c lượng dầu để pha nhằm bảo đảm c&oacute; được hỗn hợp y&ecirc;u cầu. Khi pha trộn những lượng nhỏ nhi&ecirc;n liệu, những bất ch&iacute;nh x&aacute;c d&ugrave; nhỏ vẫn ảnh hưởng rất nhiều đến tỷ lệ pha.</p>\r\n\r\n<p><strong><em>CẢNH B&Aacute;O! Khi chiết r&oacute;t nhi&ecirc;n liệu phải bảo đảm ở nơi đủ th&ocirc;ng tho&aacute;ng.</em></strong></p>\r\n\r\n<p><strong>Xăng:&nbsp;</strong></p>\r\n\r\n<p>&bull; D&ugrave;ng xăng chất lượng cao c&oacute; hoặc kh&ocirc;ng c&oacute; ch&igrave;.<br />\r\n&bull; CẨN THẬN! Động cơ được trang bị c&aacute;c bộ chuyển đổi x&uacute;c t&aacute;c phải chạy bằng hỗn hợp nhi&ecirc;n liệu kh&ocirc;ng ch&igrave;.<br />\r\n&bull; Xăng c&oacute; ch&igrave; sẽ ph&aacute; bộ chuyển đổi x&uacute;c t&aacute;c l&agrave;m cho n&oacute; mất t&aacute;c dụng. Nắp nhi&ecirc;n liệu m&agrave;u xanh tr&ecirc;n cưa được lắp bộ chuyển đổi x&uacute;c t&aacute;c c&oacute; nghĩa l&agrave; chỉ được sử dụng xăng kh&ocirc;ng c&oacute; ch&igrave;.<br />\r\n&bull; Độ ốc-tan thấp nhất m&agrave; ch&uacute;ng t&ocirc;i khuyến nghị l&agrave; 90 (RON). Nếu bạn chạy m&aacute;y với nhi&ecirc;n liệu c&oacute; độ ốc-tan thấp hơn 90, th&igrave; hiện tượng gọi l&agrave; k&iacute;ch nổ sẽ xảy ra. N&oacute; sẽ l&agrave;m tăng cao nhiệt độ của động cơ, tải trọng tr&ecirc;n ổ trục gia tăng, dẫn<br />\r\ntới hư hỏng nặng động cơ.<br />\r\n&bull; Khi thao t&aacute;c với tốc độ cao li&ecirc;n tục (v&iacute; dụ khi m&eacute; c&agrave;nh c&acirc;y), n&ecirc;n sử dụng nhi&ecirc;n liệu c&oacute; độ ốc-tan cao hơn.</p>\r\n\r\n<p><strong>Nhi&ecirc;n liệu kh&ocirc;ng l&agrave;m hại m&ocirc;i trường</strong></p>\r\n\r\n<p>HUSQVARNA khuyến nghị sử dụng nhi&ecirc;n liệu alkylat, như Aspen hai th&igrave; hoặc nhi&ecirc;n liệu kh&ocirc;ng l&agrave;m hại m&ocirc;i trường d&agrave;nh cho động cơ 4 th&igrave; pha với dầu 2 th&igrave; như dưới đ&acirc;y. Lưu &yacute; c&oacute; thể cần chỉnh lại chế h&ograve;a kh&iacute; khi thay chủng loại nhi&ecirc;n liệu (xem chỉ dẫn dưới ti&ecirc;u đề Chế h&ograve;a kh&iacute;).<br />\r\nChạy r&agrave; m&aacute;y (roda m&aacute;y)<br />\r\nTr&aacute;nh vận h&agrave;nh với tốc độ qu&aacute; cao với thời gian d&agrave;i trong 10 giờ đầu.</p>\r\n\r\n<p><strong>Dầu hai th&igrave; Husqvarna</strong></p>\r\n\r\n<p>&bull; Để đạt kết quả v&agrave; năng suất tốt nhất, h&atilde;y sử dụng dầu động cơ hai th&igrave; HUSQVARNA, được điều chế đặc biệt cho c&aacute;c động cơ hai th&igrave; l&agrave;m<br />\r\nm&aacute;t bằng kh&ocirc;ng kh&iacute;.<br />\r\n&bull; Kh&ocirc;ng bao giờ được sử dụng dầu hai th&igrave; d&agrave;nh cho c&aacute;c động cơ l&agrave;m m&aacute;t bằng nước, c&oacute; khi gọi l&agrave; dầu động cơ thủy (chuẩn TCW).<br />\r\n&bull; Kh&ocirc;ng bao giờ được d&ugrave;ng dầu d&agrave;nh cho động cơ 4 th&igrave;.<br />\r\n&bull; Chất lượng dầu k&eacute;m v&agrave;/hoặc khi tỷ lệ dầu/nhi&ecirc;n liệu qu&aacute; cao c&oacute; thể l&agrave;m hại v&agrave; giảm tuổi thọ c&aacute;c bộ chuyển đổi bằng x&uacute;c t&aacute;c.</p>\r\n', '1439390644tintuc3.jpg', 3, 1, '2015-08-12 16:44:04', NULL),
(4, 'Lựa chọn phương pháp bảo trì thiết bị công nghiệp', 'lua-chon-phuong-phap-bao-tri-thiet-bi-cong-nghiep', 'Mọi người trong tổ chức từ người quản lý cao nhất đến công nhân đang làm việc tại nhà máy đều phải biết chính sách bảo trì thiết bị công nghiệp. Người sản xuất và người bảo trì phải có thể phân tích những vấn đề ba', '<div>&nbsp;</div>\r\n\r\n<div>\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_6.PNG" style="border:0px; height:285px; margin:0px; padding:0px; width:447px" /></p>\r\n\r\n<p><strong>Kh&ocirc;ng n&ecirc;n ch&acirc;́p nh&acirc;̣n và phải tránh ngừng máy kh&ocirc;ng k&ecirc;́ hoạch.</strong><br />\r\nMọi người trong t&ocirc;̉ chức từ người quản lý cao nh&acirc;́t đ&ecirc;́n c&ocirc;ng nh&acirc;n đang làm vi&ecirc;̣c tại nhà máy đ&ecirc;̀u phải bi&ecirc;́t chính sách bảo trì thiết bị c&ocirc;ng nghiệp. Người sản xu&acirc;́t và người bảo trì phải có th&ecirc;̉ ph&acirc;n tích những v&acirc;́n đ&ecirc;̀ bảo trì nảy sinh. N&ecirc;́u m&ocirc;̣t sai sót xu&acirc;́t hi&ecirc;̣n, người v&acirc;̣n hành, người bảo trì hay b&acirc;́t kỳ người nào khác phải bi&ecirc;́t đặt c&acirc;u hỏi: &quot;có th&ecirc;̉ tránh sai sót này xảy ra m&ocirc;̣t l&acirc;̀n nữa bằng cách sửa đ&ocirc;̉i, thi&ecirc;́t k&ecirc;́ lại hoặc b&acirc;́t kỳ giải pháp bảo trì thiết bị c&ocirc;ng nghiệp nào khác kh&ocirc;ng?&quot;. Có th&ecirc;̉ lựa chọn giải pháp bảo trì bằng cách n&ecirc;u m&ocirc;̣t loạt c&acirc;u hỏi và trả lời theo trình tự sau đ&acirc;y:<br />\r\n<strong>Có th&ecirc;̉ thi&ecirc;́t k&ecirc;́ lại đ&ecirc;̉ tránh hư hỏng hay kh&ocirc;ng?</strong><br />\r\nN&ecirc;́u kh&ocirc;ng th&ecirc;̉ thi&ecirc;́t k&ecirc;́ lại thì bước k&ecirc;́ ti&ecirc;́p trong chi&ecirc;́n lược bảo trì là phải c&ocirc;́ gắng kéo dài tu&ocirc;̉i thọ của chi ti&ecirc;́t thiết bị c&ocirc;ng nghiệp.<br />\r\n<strong>Có th&ecirc;̉ áp dụng giám sát tình trạng thi&ecirc;́t bị trong quá trình v&acirc;̣n hành kh&ocirc;ng?</strong><br />\r\nN&ecirc;́u kh&ocirc;ng th&ecirc;̉ kéo dài tu&ocirc;̉i tho của chi ti&ecirc;́t thì bước k&ecirc;́ ti&ecirc;́p là phải c&ocirc;́ gắng áp dụng giám sát tình trạng thi&ecirc;́t bị trong su&ocirc;́t thời gian v&acirc;̣n hành đ&ecirc;̉ sớm tìm ra những sai sót trong thời kỳ phát tri&ecirc;̉n hư hỏng và có th&ecirc;̉ l&acirc;̣p k&ecirc;́ hoạch sửa chữa đ&ecirc;̉ giảm h&acirc;̣u quả hư hỏng.<br />\r\n<strong>Có th&ecirc;̉ giám sát tình trạng thi&ecirc;́t bị trong khi ngừng máy có k&ecirc;́ hoạch kh&ocirc;ng?</strong><br />\r\nĐ&ocirc;i khi giám sát tình trạng kh&ocirc;ng th&ecirc;̉ thực hi&ecirc;̣n được trong quá trình v&acirc;̣n hành.<br />\r\n<strong>Có th&ecirc;̉ áp dụng thay th&ecirc;́ định kỳ được kh&ocirc;ng?</strong><br />\r\nN&ecirc;́u kh&ocirc;ng th&ecirc;̉ áp dụng giám sát tình trạng thiết bị c&ocirc;ng nghiệp do kh&ocirc;ng có hư hỏng nào phát tri&ecirc;̉n thì phải nghĩ đ&ecirc;́n thay th&ecirc;́ định kỳ.<br />\r\n<strong>Có th&ecirc;̉ áp dụng dự phòng được kh&ocirc;ng?</strong><br />\r\nN&ecirc;́u kh&ocirc;ng có giải pháp bảo trì nào n&ecirc;u tr&ecirc;n được áp dụng thì giải pháp dự phòng phải được xem xét trước khi quy&ecirc;́t định đi đ&ecirc;́n giải pháp bảo trì khi đã bị ngừng máy. Giải pháp này phải xem xét c&acirc;̉n th&acirc;̣n v&ecirc;̀ mặt kinh t&ecirc;́.<br />\r\n<strong>V&acirc;̣n hành đ&ecirc;́n khi hư hỏng</strong><br />\r\nChỉ cho phép sử dụng giải pháp bảo trì này khi các giải pháp bảo trì khác kh&ocirc;ng th&ecirc;̉ áp dụng được. Ví dụ khi hư hỏng mang tính ng&acirc;̃u nhi&ecirc;n và kh&ocirc;ng có thời gian phát tri&ecirc;̉n hư hỏng. Tuy nhi&ecirc;n thường thì phải xem xét h&acirc;̣u quả kinh t&ecirc;́ phát sinh. Đ&ocirc;i khi giải pháp bảo trì này là kinh t&ecirc;́ nh&acirc;́t do giá thi&ecirc;́t bị th&acirc;́p và kh&ocirc;ng tác đ&ocirc;̣ng đ&ecirc;́n t&ocirc;̉n th&acirc;́t sản xu&acirc;́t.</p>\r\n</div>\r\n', '1439390704tintuc4.jpg', 4, 1, '2015-08-12 16:45:04', NULL),
(5, 'Nông dân Việt Nam sáng chế thành công máy trộn bê tông đa năng', 'nong-dan-viet-nam-sang-che-thanh-cong-may-tron-be-tong-da-nang', 'Sau nhiều năm nghiên cứu, ông Trần Giỏi, chủ cơ sở cơ khí Quỳnh Phong ở cụm công nghiệp Quán Lát, xã Đức Chánh, huyện Mộ Đức đã cải tiến thành công máy trộn, đổ bê tông làm đường giao thông nông thôn và phục vụ cho những công trình xây dựng.', '<div>\r\n<p>Sau nhiều năm nghi&ecirc;n cứu, &ocirc;ng Trần Giỏi, chủ cơ sở cơ kh&iacute; Quỳnh Phong ở cụm c&ocirc;ng nghiệp Qu&aacute;n L&aacute;t, x&atilde; Đức Ch&aacute;nh, huyện Mộ Đức đ&atilde; cải tiến th&agrave;nh c&ocirc;ng m&aacute;y trộn, đổ b&ecirc; t&ocirc;ng l&agrave;m đường giao th&ocirc;ng n&ocirc;ng th&ocirc;n v&agrave; phục vụ cho những c&ocirc;ng tr&igrave;nh x&acirc;y dựng.</p>\r\n\r\n<p>Chiếc m&aacute;y n&agrave;y năng suất gấp 3 lần may tron be tong truyền thống v&agrave; giảm số nh&acirc;n c&ocirc;ng lao động tại c&ocirc;ng trường.</p>\r\n\r\n<p>&nbsp;Đọ sức&rdquo; với m&aacute;y trộn b&ecirc; t&ocirc;ng truyền thống<br />\r\n&Ocirc;ng Giỏi c&oacute; một xưởng cơ kh&iacute; tr&ecirc;n Đắc Lắc n&ecirc;n thường xuy&ecirc;n đi lại giữa Đắc Lắc v&agrave; Quảng Ng&atilde;i. Tr&ecirc;n đường đi, &ocirc;ng quan s&aacute;t thấy tại những c&ocirc;ng tr&igrave;nh l&agrave;m đường giao th&ocirc;ng v&agrave; những c&ocirc;ng tr&igrave;nh x&acirc;y dựng ở c&aacute;c địa phương, m&aacute;y trộn, đổ b&ecirc; t&ocirc;ng đều giống nhau một kiểu. Những c&acirc;u hỏi bắt đầu xuất hiện trong đầu &ocirc;ng Giỏi, m&aacute;y trộn đổ b&ecirc; t&ocirc;ng c&oacute; nhược điểm g&igrave;, c&oacute; thể cải tiến để tăng năng suất được kh&ocirc;ng...</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_5.jpeg" style="border:0px; height:368px; margin:0px; padding:0px; width:400px" /></p>\r\n\r\n<p>Biến &yacute; tưởng th&agrave;nh hiện thực, &ocirc;ng Giỏi c&ugrave;ng với những cộng sự tại xưởng cơ kh&iacute; Quỳnh Phong miệt m&agrave;i chế tạo ra chiếc m&aacute;y trộn đổ b&ecirc; t&ocirc;ng thế hệ mới. Cuối năm 2009, chiếc m&aacute;y đầu ti&ecirc;n xuất xưởng, được đặt t&ecirc;n l&agrave; QP &ndash; 09 (Quỳnh Phong &ndash; 2009).</p>\r\n\r\n<p>Trong gần một năm qua, m&aacute;y QP &ndash; 09 đ&atilde; tham gia thi c&ocirc;ng tại c&aacute;c c&ocirc;ng trường huyện Mộ Đức, B&igrave;nh Sơn, th&agrave;nh phố Quảng Ng&atilde;i với khối lượng gần 10.000m3 b&ecirc; t&ocirc;ng, thi c&ocirc;ng hơn 10 km đường giao th&ocirc;ng n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p>Th&ugrave;ng trộn được lắp với m&aacute;y k&eacute;o Mitsubishi của Nhật n&ecirc;n c&oacute; t&iacute;nh cơ động khi di chuyển v&agrave;o những đường c&oacute; địa h&igrave;nh xấu, đường dốc, trơn trượt. Nhờ c&oacute; trục lắp từ th&ugrave;ng trộn được nối v&agrave;o hộp số động cơ của đầu k&eacute;o, người điều khiển c&oacute; thể điều chỉnh tốc độ trộn tại vị tr&iacute; g&agrave;i số, n&ecirc;n m&aacute;y vừa di chuyển tiến, l&ugrave;i, vừa trộn được b&ecirc; t&ocirc;ng từ b&atilde;i vật liệu đến nơi đổ b&ecirc; t&ocirc;ng, giảm đ&aacute;ng kể thời gian chờ đợi tại c&ocirc;ng trường.</p>\r\n\r\n<p>M&aacute;y c&oacute; kết cấu nhỏ gọn, d&agrave;i 4,5m, bề ngang 1,5m, cao 1,2m, chiếm &iacute;t diện t&iacute;ch tr&ecirc;n mặt đường, n&ecirc;n khi thi c&ocirc;ng, kh&ocirc;ng g&acirc;y cản trở giao th&ocirc;ng. Với kết cấu b&agrave;n tay trộn kiểu ly t&acirc;m đ&atilde; gi&uacute;p b&ecirc; t&ocirc;ng được trộn đều v&agrave; thời gian trộn của m&aacute;y n&agrave;y nhanh gấp 3 lần m&aacute;y th&ocirc;ng thường.</p>\r\n\r\n<p>&Ocirc;ng Giỏi cho biết: Chiếc m&aacute;y trộn b&ecirc; t&ocirc;ng n&agrave;y dễ chế tạo v&igrave; phụ t&ugrave;ng dễ kiếm, chủ yếu l&agrave; sử dụng từ m&aacute;y m&oacute;c, &ocirc; t&ocirc; cũ, rồi gia c&ocirc;ng phục hồi. Hiện nay cơ sở Quỳnh Phong của &ocirc;ng Giỏi chưa sản xuất đại tr&agrave; loại m&aacute;y n&agrave;y, n&ecirc;n gi&aacute; th&agrave;nh hiện tại của một th&ugrave;ng trộn khoảng 40 triệu đồng. Theo ước t&iacute;nh của &ocirc;ng Giỏi, doanh thu từ chiếc m&aacute;y n&agrave;y hơn 1 tỷ đồng mỗi năm, tạo việc l&agrave;m cho 10 lao động.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_6.jpeg" style="border:0px; height:241px; margin:0px; padding:0px; width:400px" /></p>\r\n\r\n<p>Kh&ocirc;ng dừng lại ở việc cải tiến n&agrave;y, &ocirc;ng Giỏi đang nghi&ecirc;n cứu kh&acirc;u đổ vật liệu bằng m&aacute;y x&uacute;c hoặc bằng m&aacute;ng tời, n&acirc;ng c&ocirc;ng suất của m&aacute;y l&ecirc;n gấp nhiều lần phi&ecirc;n bản của m&aacute;y hiện nay.</p>\r\n\r\n<p>Từ &yacute; tưởng đến c&ocirc;ng trường</p>\r\n\r\n<p>Năm 2009, sau khi c&oacute; &yacute; tưởng cải tiến m&aacute;y trộn b&ecirc; t&ocirc;ng, &ocirc;ng Giỏi l&agrave;m những thủ tục đăng k&iacute; cần thiết đến c&aacute;c cấp thẩm quyền, đồng thời l&agrave;m thủ tục xin hỗ trợ kinh ph&iacute; khuyến c&ocirc;ng của tỉnh. Trung t&acirc;m khuyến c&ocirc;ng v&agrave; tư vấn ph&aacute;t triển c&ocirc;ng nghiệp Quảng Ng&atilde;i đ&atilde; hỗ trợ kinh ph&iacute; 80 triệu đồng cho cơ sở Quỳnh Phong triển khai đề &aacute;n chế tạo m&aacute;y.</p>\r\n\r\n<p>Hiện nay cơ sở Quỳnh Phong đ&atilde; sản xuất được 3 chiếc m&aacute;y QP &ndash; 09. Ba chiếc m&aacute;y n&agrave;y ra mắt tại những c&ocirc;ng tr&igrave;nh l&agrave;m đường giao th&ocirc;ng n&ocirc;ng th&ocirc;n trong tỉnh được người d&acirc;n đ&aacute;nh gi&aacute; cao.<br />\r\n&nbsp;<br />\r\n&Ocirc;ng Phạm Thanh T&ugrave;ng - Ph&oacute; Chủ tịch UBND huyện Mộ Đức cho biết: Chiếc m&aacute;y QP &ndash; 09 l&agrave;m đường nhanh hơn, chất lượng đảm bảo v&agrave; cũng giải ph&oacute;ng được nhiều sức lao động ch&acirc;n tay.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_7.jpeg" style="border:0px; height:266px; margin:0px; padding:0px; width:400px" /></p>\r\n\r\n<p>M&aacute;y QP &ndash; 09 đang thi c&ocirc;ng đổ nền s&acirc;n bến xe Ch&iacute;n Nghĩa. Anh Trần Thịnh, một người 7 năm l&agrave;m thợ hồ, qu&ecirc; ở x&atilde; Đức Hiệp, huyện Mộ Đức l&agrave;m việc tại c&ocirc;ng tr&igrave;nh n&agrave;y nhận x&eacute;t: &ldquo;M&aacute;y trộn b&ecirc; t&ocirc;ng truyền thống một ng&agrave;y l&agrave;m khoảng 10 khối, mỗi lần trộn được nửa bao xi măng, c&ograve;n m&aacute;y trộn đổ b&ecirc; t&ocirc;ng QP -09 mỗi ng&agrave;y trộn được khoảng 40 khối, mỗi lần trộn được từ 1 &ndash; 2 bao xi măng.</p>\r\n\r\n<p>Hiện cơ sở Quỳnh Phong đang đầu tư để sản xuất h&agrave;ng loạt loại m&aacute;y n&agrave;y cung ứng cho nhu cầu của thị trường.</p>\r\n</div>\r\n', '14393907812014121784516110.130.104.jpg', 5, 1, '2015-08-12 16:46:21', NULL),
(6, 'Tự động hóa: Triển lãm các sản phẩm thông minh của Nhật Bản', 'tu-dong-hoa-trien-lam-cac-san-pham-thong-minh-cua-nhat-ban', 'Tại triển lãm Eco Product được tổ chức tại Tokyo tuần qua, các công ty công nghệ hàng đầu Nhật Bản đã giới thiệu nhiều sản phẩm thông minh, đem lại tiện ích cho cuộc sống và điều quan trọng là mang tính thân thiện với môi trường.Sagawa sử dụng xe đạp', '<div>\r\n<p><strong>Tại triển l&atilde;m Eco Product được tổ chức tại Tokyo tuần qua, c&aacute;c c&ocirc;ng ty c&ocirc;ng nghệ h&agrave;ng đầu Nhật Bản đ&atilde; giới thiệu nhiều sản phẩm th&ocirc;ng minh, đem lại tiện &iacute;ch cho cuộc sống v&agrave; điều quan trọng l&agrave; mang t&iacute;nh th&acirc;n thiện với m&ocirc;i trường.</strong></p>\r\n\r\n<p style="text-align:center"><strong><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_1.jpg" style="border:0px; height:450px; margin:0px; padding:0px; width:600px" /></strong></p>\r\n\r\n<p style="text-align:center">Sagawa sử dụng xe đạp điện v&agrave; xe k&eacute;o chở h&agrave;ng để bảo vệ m&ocirc;i trường của cố đ&ocirc; Kyoto.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_4.jpg" style="border:0px; height:450px; margin:0px; padding:0px; width:600px" /></p>\r\n\r\n<p>C&ocirc;ng ty b&aacute;n lẻ h&agrave;ng đầu AEON đ&atilde; giới thiệu hoạt động trồng rừng được khởi xướng từ đầu những năm 1990 tại khu vực ch&acirc;u &Aacute; Th&aacute;i B&igrave;nh dương. AEON đ&atilde; trồng hơn 10 triệu c&acirc;y xanh ở L&agrave;o, Th&aacute;i Lan, Malaysia, Indonesia, Việt Nam, Campuchia, Trung Quốc, Australia v&agrave; Nhật Bản, g&oacute;p phần đem lại mảng xanh cho c&aacute;c khu vực tr&ecirc;n.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_2.jpg" style="border:0px; height:800px; margin:0px; padding:0px; width:600px" /></p>\r\n\r\n<p>C&ocirc;ng ty Daiwahouse triển l&atilde;m c&aacute;c bộ quần &aacute;o r&ocirc; bốt v&agrave; th&uacute; r&ocirc; bốt hỗ trợ người gi&agrave;C&ocirc;ng ty Daiwahouse triển l&atilde;m c&aacute;c bộ quần &aacute;o r&ocirc; bốt v&agrave; th&uacute; r&ocirc; bốt hỗ trợ người gi&agrave;</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_3.jpg" style="border:0px; height:450px; margin:0px; padding:0px; width:600px" /></p>\r\n\r\n<p>Fujitsu đ&atilde; triển lam hệ thống quan s&aacute;t động đất v&agrave; s&oacute;ng thần ở dưới đ&aacute;y biển sử dụng cảm biến c&aacute;p quang. Fujitsu đ&atilde; c&oacute; kinh nghiệm trong việc đặt c&aacute;p biển suốt 44 năm qua. Hệ thống mới đ&atilde; được Viện nghi&ecirc;n cứu động đất ở Đại học Tokyo chấp thuận v&agrave; sẽ được đắt ở đ&aacute;y biển tại v&ugrave;ng biển ngo&agrave;i khơi Sanriku, nơi đ&atilde; bị động đất s&oacute;ng thần lớn t&agrave;n ph&aacute;.</p>\r\n</div>\r\n', '14393908422014121783821364.130.104.jpg', 6, 1, '2015-08-12 16:47:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tuvan`
--

CREATE TABLE `tuvan` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tuvan`
--

INSERT INTO `tuvan` (`id`, `name`, `alias`, `description`, `content`, `image`, `order`, `status`, `created`) VALUES
(1, 'Hoa mai Bình Định', 'hoa-mai-binh-dinh', '', '<p>Hoa mai b&igrave;nh định</p>\r\n', '1403765873300x215-7.png', NULL, 1, '2014-06-26 13:58:07'),
(2, 'Hoa mai Bình Định 1', 'hoa-mai-binh-dinh-1', '', '<p>Hoa mai b&igrave;nh định 1</p>\r\n', '1403765906300x215-7.png', NULL, 1, '2014-06-26 13:58:26'),
(3, 'Hoa mai Bình Định 1', 'hoa-mai-binh-dinh-1', '', '<p>Hoa mai b&igrave;nh định 1</p>\r\n', '1403765977hoamai.jpg', NULL, 1, '2014-06-26 13:59:37'),
(4, 'Hoa mai Bình Định 2', 'hoa-mai-binh-dinh-2', '', '<p>Hoa mai b&igrave;nh định 2</p>\r\n', '1403765996300x215-7.png', NULL, 1, '2014-06-26 13:59:56'),
(5, 'b', 'b', 'a', '<p>a</p>\r\n', '1403766007hoamai.jpg', 3, 1, '2014-06-26 14:00:07'),
(6, 'test', 'test', 'abc', '<p>abc</p>\r\n', '1403766016300x215-7.png', 1, 1, '2014-06-26 14:00:16'),
(7, 'test', 'test', 'abc', '<p>abc</p>\r\n', '1403766031hoamai.jpg', 1, 1, '2014-06-26 14:00:31'),
(8, 'test 3', 'test-3', 'test 3', '<p>test 3</p>\r\n', '1403766043300x215-7.png', 1, 1, '2014-06-26 14:00:43'),
(9, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766058hoamai.jpg', NULL, 1, '2014-06-26 14:00:58'),
(10, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766070300x215-7.png', NULL, 1, '2014-06-26 14:01:10'),
(11, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766079hoamai.jpg', NULL, 1, '2014-06-26 14:01:19'),
(12, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766088300x215-7.png', NULL, 1, '2014-06-26 14:01:28'),
(13, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766099300x215-7.png', NULL, 1, '2014-06-26 14:01:39'),
(15, 'teaasdfasdf', 'teaasdfasdf', 'asdfasdf', '<p>asdf</p>\r\n', '1403766113300x215-7.png', NULL, 1, '2014-06-26 14:01:53'),
(16, 'Tam', 'tam', 'test', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg" style="height:340px; width:509px" /></p>\r\n', '1403766124hoamai.jpg', NULL, 1, '2014-06-26 14:02:11'),
(17, 'Tam adf', 'tam-adf', 'test', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg" style="height:340px; width:509px" /></p>\r\n', '1403766143300x215-7.png', NULL, 1, '2014-06-26 17:04:03'),
(18, 'test 1', 'test-1', 'asdf', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/image1.jpeg" style="height:177px; width:284px" /></p>\r\n', '1403766152hoamai.jpg', NULL, 1, '2014-06-26 14:02:32'),
(19, 'Tu van hoa mai', 'tu-van-hoa-mai', 'tu van hoa mai', '<p>Tu van hoa mai</p>\r\n', '1403841463hoamai.jpg', 1, 1, '2014-06-27 10:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `yii_app_cache`
--

CREATE TABLE `yii_app_cache` (
  `id` char(128) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `value` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `yii_app_cache`
--

INSERT INTO `yii_app_cache` (`id`, `expire`, `value`) VALUES
('c129ca845132921fb63fe29af6e8c22e', 0, 0x613a323a7b693a303b733a38383a22613a313a7b733a33343a225969692e4353656375726974794d616e616765722e76616c69646174696f6e6b6579223b733a33323a223339666236323332343562323830636431626233326635663331363564303664223b7d223b693a313b4f3a32303a224346696c654361636865446570656e64656e6379223a363a7b733a383a2266696c654e616d65223b733a35363a222f4170706c69636174696f6e732f4d414d502f6874646f63732f686f616d61692f72756e74696d655f61646d696e2f73746174652e62696e223b733a31383a227265757365446570656e64656e7444617461223b623a303b733a32333a2200434361636865446570656e64656e6379005f68617368223b4e3b733a32333a2200434361636865446570656e64656e6379005f64617461223b693a313430323937343030333b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d7d),
('d0639903250639640a47e0cb7b97ac5b', 0, 0x613a323a7b693a303b613a323a7b693a303b613a31313a7b693a303b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a31303a22736974652f6c6f67696e223b733a31303a227265666572656e636573223b613a303a7b7d733a31323a22726f7574655061747465726e223b4e3b733a373a227061747465726e223b733a31323a222f5e6c6f67696e5c2f242f75223b733a383a2274656d706c617465223b733a353a226c6f67696e223b733a363a22706172616d73223b613a303a7b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a313b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a31323a227374617469632f696e646578223b733a31303a227265666572656e636573223b613a303a7b7d733a31323a22726f7574655061747465726e223b4e3b733a373a227061747465726e223b733a32333a222f5e735c2f283f503c766965773e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a383a22732f3c766965773e223b733a363a22706172616d73223b613a313a7b733a343a2276696577223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a323b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32353a226170695f3c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34353a222f5e6170695f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a3132333a222f5e6170695c2f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f283f503c70726d313e5c772b295c2f283f503c70726d323e5c772b295c2f283f503c70726d333e5c772b295c2f283f503c70726d343e5c772b295c2f283f503c70726d353e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a36303a226170692f3c636f6e74726f6c6c65723e2f3c616374696f6e3e2f3c70726d313e2f3c70726d323e2f3c70726d333e2f3c70726d343e2f3c70726d353e223b733a363a22706172616d73223b613a353a7b733a343a2270726d31223b733a333a225c772b223b733a343a2270726d32223b733a333a225c772b223b733a343a2270726d33223b733a333a225c772b223b733a343a2270726d34223b733a333a225c772b223b733a343a2270726d35223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a333b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32353a226170695f3c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34353a222f5e6170695f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a34383a222f5e6170695c2f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a32353a226170692f3c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a363a22706172616d73223b613a303a7b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a343b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32393a22676174657761795f3c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34393a222f5e676174657761795f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a35323a222f5e676174657761795c2f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a32393a22676174657761792f3c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a363a22706172616d73223b613a303a7b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a353b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a31333a227370656369616c2f696e646578223b733a31303a227265666572656e636573223b613a303a7b7d733a31323a22726f7574655061747465726e223b4e3b733a373a227061747465726e223b733a32393a222f5e7370656369616c5c2f283f503c766965773e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a31343a227370656369616c2f3c766965773e223b733a363a22706172616d73223b613a313a7b733a343a2276696577223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a363b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34313a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a3130333a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f283f503c70726d313e5c772b295c2f283f503c70726d323e5c772b295c2f283f503c70726d333e5c772b295c2f283f503c70726d343e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a34393a223c636f6e74726f6c6c65723e2f3c616374696f6e3e2f3c70726d313e2f3c70726d323e2f3c70726d333e2f3c70726d343e223b733a363a22706172616d73223b613a343a7b733a343a2270726d31223b733a333a225c772b223b733a343a2270726d32223b733a333a225c772b223b733a343a2270726d33223b733a333a225c772b223b733a343a2270726d34223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a373b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34313a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a38383a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f283f503c70726d313e5c772b295c2f283f503c70726d323e5c772b295c2f283f503c70726d333e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a34323a223c636f6e74726f6c6c65723e2f3c616374696f6e3e2f3c70726d313e2f3c70726d323e2f3c70726d333e223b733a363a22706172616d73223b613a333a7b733a343a2270726d31223b733a333a225c772b223b733a343a2270726d32223b733a333a225c772b223b733a343a2270726d33223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a383b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34313a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a37333a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f283f503c70726d313e5c772b295c2f283f503c70726d323e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a33353a223c636f6e74726f6c6c65723e2f3c616374696f6e3e2f3c70726d313e2f3c70726d323e223b733a363a22706172616d73223b613a323a7b733a343a2270726d31223b733a333a225c772b223b733a343a2270726d32223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a393b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34313a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a35363a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f283f503c69643e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a32363a223c636f6e74726f6c6c65723e2f3c616374696f6e3e2f3c69643e223b733a363a22706172616d73223b613a313a7b733a323a226964223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a31303b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34313a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a34333a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a363a22706172616d73223b613a303a7b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d7d693a313b733a33323a223538663630636433633666333031316435653138303835653266313764633161223b7d693a313b4e3b7d);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_pro`
--
ALTER TABLE `category_pro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_cat`
--
ALTER TABLE `menu_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions_admin`
--
ALTER TABLE `sessions_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static`
--
ALTER TABLE `static`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuvan`
--
ALTER TABLE `tuvan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yii_app_cache`
--
ALTER TABLE `yii_app_cache`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertise`
--
ALTER TABLE `advertise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `category_pro`
--
ALTER TABLE `category_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu_cat`
--
ALTER TABLE `menu_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `static`
--
ALTER TABLE `static`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tuvan`
--
ALTER TABLE `tuvan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
