-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 24, 2024 at 07:30 AM
-- Server version: 8.2.0
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vietlongtra`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_banner` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name_banner` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description_banner` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `image_banner` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `url_banner` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by_id` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_modify_by_id` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `type_banner`, `name_banner`, `description_banner`, `image_banner`, `url_banner`, `status`, `created_at`, `updated_at`, `create_by_id`, `last_modify_by_id`) VALUES
(0, 'banner', '11112', '<p>11112</p>', 'http://localhost:8000/storage/files/banner/65af557479f37.jpg', NULL, 1, NULL, '2024-01-23 10:15:52', NULL, NULL),
(1, 'banner', '2', NULL, 'http://localhost:8000/storage/files/banner/65af557479f37.jpg', NULL, 1, NULL, '2024-01-22 22:58:35', NULL, NULL),
(2, 'banner', '3', NULL, 'http://localhost:8000/storage/files/banner/65af557479f37.jpg', NULL, 1, NULL, '2024-01-22 22:59:06', NULL, NULL),
(3, 'banner', '4', NULL, 'http://localhost:8000/storage/files/banner/65af557479f37.jpg', NULL, 1, NULL, '2024-01-22 22:59:06', NULL, NULL),
(4, 'banner', '5', NULL, 'http://localhost:8000/storage/files/banner/65af557479f37.jpg', NULL, 1, NULL, '2024-01-22 22:59:06', NULL, NULL),
(15, 'banner', '6', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(16, 'banner', '7', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(17, 'banner', '8', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

DROP TABLE IF EXISTS `categorys`;
CREATE TABLE IF NOT EXISTS `categorys` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `code_category` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_category` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_category` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_category` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description_category` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keyword_seo_category` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_seo_category` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_seo_category` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_modify_by_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `code_category`, `name_category`, `url_category`, `image_category`, `description_category`, `keyword_seo_category`, `title_seo_category`, `description_seo_category`, `status`, `created_at`, `updated_at`, `create_by_id`, `last_modify_by_id`) VALUES
(8, 'TRAOLONG', 'Trà Ô Long', 'tra-o-long', 'http://localhost:8000/storage/files/danhmuc/65ae3fce77e41.jpg', NULL, 'Trà Ô Long', 'Trà Ô Long', '', 1, '2024-01-22 03:14:02', '2024-01-22 03:14:07', NULL, NULL),
(9, 'TRAXANH', 'Trà Xanh', 'tra-xanh', 'http://localhost:8000/storage/files/danhmuc/65af40c5d4216.jpg', NULL, 'Trà Xanh', 'Trà Xanh', '', 1, '2024-01-22 03:14:49', '2024-01-22 21:30:01', NULL, NULL),
(10, 'TRAPHONHHI', 'Trà Phổ Nhĩ', 'tra-pho-nhi', 'http://localhost:8000/storage/files/danhmuc/65af40c6035a9.jpg', NULL, 'Trà Phổ Nhĩ', 'Trà Phổ Nhĩ', '', 1, '2024-01-22 03:15:24', '2024-01-22 21:30:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
CREATE TABLE IF NOT EXISTS `discounts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mapping_category_product`
--

DROP TABLE IF EXISTS `mapping_category_product`;
CREATE TABLE IF NOT EXISTS `mapping_category_product` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_category` int NOT NULL,
  `id_product` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapping_category_product`
--

INSERT INTO `mapping_category_product` (`id`, `id_category`, `id_product`) VALUES
(42, 8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `mapping_product_image`
--

DROP TABLE IF EXISTS `mapping_product_image`;
CREATE TABLE IF NOT EXISTS `mapping_product_image` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `main_image` int NOT NULL DEFAULT '0',
  `url_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapping_product_image`
--

INSERT INTO `mapping_product_image` (`id`, `id_product`, `main_image`, `url_image`) VALUES
(145, 9, 1, 'http://localhost:8000/storage/files/sanpham/65ae3a8d62e3e.jpg'),
(146, 9, 0, 'http://localhost:8000/storage/files/sanpham/65ae3a8d88181.jpg'),
(147, 9, 0, 'http://localhost:8000/storage/files/sanpham/65ae3a8dde15a.jpg'),
(148, 9, 0, 'http://localhost:8000/storage/files/sanpham/65ae3a8e69269.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mapping_role_user`
--

DROP TABLE IF EXISTS `mapping_role_user`;
CREATE TABLE IF NOT EXISTS `mapping_role_user` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_role` int NOT NULL,
  `id_user` int NOT NULL,
  `active` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mapping_room_category`
--

DROP TABLE IF EXISTS `mapping_room_category`;
CREATE TABLE IF NOT EXISTS `mapping_room_category` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_room` int NOT NULL,
  `id_category` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapping_room_category`
--

INSERT INTO `mapping_room_category` (`id`, `id_room`, `id_category`) VALUES
(12, 2, 2),
(14, 5, 4),
(15, 2, 5),
(16, 2, 3),
(18, 1, 1),
(19, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(154, '2014_10_12_000000_create_users_table', 1),
(155, '2014_10_12_100000_create_password_resets_table', 1),
(156, '2019_08_19_000000_create_failed_jobs_table', 1),
(157, '2022_07_17_065048_create_rooms_table', 1),
(158, '2022_07_17_065126_create_categorys_table', 1),
(159, '2022_07_17_065204_create_products_table', 1),
(160, '2022_07_17_065244_create_contacts_table', 1),
(161, '2022_07_17_065310_create_discounts_table', 1),
(162, '2022_07_20_124904_mapping_room_category', 1),
(163, '2022_07_20_124925_mapping_category_product', 1),
(164, '2022_07_21_061022_create_posts_table', 1),
(165, '2022_07_23_105322_mapping_product_image', 1),
(166, '2022_07_25_042812_settings', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `code_post` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_post` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_post` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_post` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description_post` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_post` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keyword_seo_post` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_seo_post` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_seo_post` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '3' COMMENT '3- Blog, 1- Info, 2- Contact',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_modify_by_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `code_post`, `name_post`, `url_post`, `image_post`, `description_post`, `content_post`, `keyword_seo_post`, `title_seo_post`, `description_seo_post`, `status`, `type`, `created_at`, `updated_at`, `create_by_id`, `last_modify_by_id`) VALUES
(1, 'info', 'info', 'info', NULL, '<p>C&ocirc;ng ty ch&uacute;ng t&ocirc;i l&agrave; nh&agrave; cung cấp số 1 c&aacute;c sản phẩm tr&agrave; tốt nhất. Ch&uacute;ng t&ocirc;i đảm bảo kinh nghiệm uống tr&agrave; tốt nhất!</p>\n<h4>Nhiệm vụ của ch&uacute;ng t&ocirc;i</h4>\n<p>Nh&oacute;m ch&uacute;ng t&ocirc;i mong muốn mang đến cho bạn thế giới những t&aacute;ch tr&agrave; tốt nhất thế giới v&agrave; chia sẻ cuộc sống tr&agrave; m&agrave; ch&uacute;ng t&ocirc;i y&ecirc;u th&iacute;ch.</p>\n<h4>Đội chuy&ecirc;n nghiệp</h4>\n<p>Trong những năm qua, ch&uacute;ng t&ocirc;i đ&atilde; tập hợp đội ngũ chuy&ecirc;n gia tr&agrave; chuy&ecirc;n dụng.</p>\n<h4>Phạm vi sản phẩm của ch&uacute;ng t&ocirc;i</h4>\n<p>Ch&uacute;ng t&ocirc;i cung cấp một loạt c&aacute;c loại tr&agrave; sản xuất của ch&uacute;ng t&ocirc;i v&agrave; bởi c&aacute;c nh&agrave; sản xuất kh&aacute;c.</p>\n<p>Tại Trung t&acirc;m b&aacute;n h&agrave;ng tr&agrave; của ch&uacute;ng t&ocirc;i, bạn kh&ocirc;ng chỉ được chọn trong số c&aacute;c thương hiệu tr&agrave; tốt nhất v&agrave; rộng nhất m&agrave; c&ograve;n c&oacute; thể thấy sự đa dạng v&agrave; đa dạng trong tất cả c&aacute;c loại tr&agrave; phổ biến.</p>', NULL, 'Giới thiệu,About', 'Giới thiệu Trà Việt Long', 'C&ocirc;ng ty ch&uacute;ng t&ocirc;i l&agrave; nh&agrave; cung cấp số 1 c&aacute;c sản phẩm tr&agrave; tốt nhất. Ch&uacute;ng t&ocirc;i đảm bảo kinh nghiệm uống tr&agrave; tốt nhất!\nCh&uacute;ng t&ocirc;i l&agrave; một cửa h&agrave;ng tr&agrave; trực tuyến cung cấp cho kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n thế giới c&aacute;c loại tr&agrave; chất lượng cao v&agrave; gi&aacute; cả phải chăng do ch&iacute;nh ch&uacute;ng t&ocirc;i sản xuất.\nNhiệm vụ của ch&uacute;ng t&ocirc;i\nNh&oacute;m ch&uacute;ng t&ocirc;i mong muốn mang đến cho bạn thế giới những t&aacute;ch tr&agrave; tốt nhất thế giới v&agrave; chia sẻ cuộc sống tr&agrave; m&agrave; ch&uacute;ng t&ocirc;i y&ecirc;u th&iacute;ch.\nĐội chuy&ecirc;n nghiệp\nTrong những năm qua, ch&uacute;ng t&ocirc;i đ&atilde; tập hợp đội ngũ chuy&ecirc;n gia tr&agrave; chuy&ecirc;n dụng.\nPhạm vi sản phẩm của ch&uacute;ng t&ocirc;i\nCh&uacute;ng t&ocirc;i cung cấp một loạt c&aacute;c loại tr&agrave; sản xuất của ch&uacute;ng t&ocirc;i v&agrave; bởi c&aacute;c nh&agrave; sản xuất kh&aacute;c.\nTại Trung t&acirc;m b&aacute;n h&agrave;ng tr&agrave; của ch&uacute;ng t&ocirc;i, bạn kh&ocirc;ng chỉ được chọn trong số c&aacute;c thương hiệu tr&agrave; tốt nhất v&agrave; rộng nhất m&agrave; c&ograve;n c&oacute; thể thấy sự đa dạng v&agrave; đa dạng trong tất cả c&aacute;c loại tr&agrave; phổ biến.', 1, 1, '2022-08-08 02:49:01', '2024-01-23 07:19:43', NULL, NULL),
(2, 'contacst', 'contacst', 'contacst', NULL, NULL, NULL, 'Liên hệ,Contact', 'Liên hệ Việt Long Trà', '', 1, 2, '2022-08-08 02:49:02', '2024-01-23 23:59:43', NULL, NULL),
(9, '00a624ffX43bfX43a2', 'Cao atiso tốt cho người cao tuổi như thế nào?', 'cao-atiso-tot-cho-nguoi-cao-tuoi-nhu-the-nao', 'http://localhost:8000/storage/files/blogs/65afd8d38a1d2.jpg', '<h5><u>1. T&Aacute;C DỤNG CỦA CAO ATISO</u></h5>\n<p>&nbsp;</p>\n<p>Cao Atiso chứa nhiều dưỡng chất thực vật chẳng hạn như quercetin, rutin, axit gallic v&agrave; cynarin, tất cả ch&uacute;ng đều c&oacute; chức năng bảo vệ v&agrave; chống lại nhiều nguy cơ sức khỏe như ung thư, bệnh tim, rối loạn chức năng gan, cholesterol cao v&agrave; bệnh tiểu đường.</p>\n<p>Gi&uacute;p cải thiện chức năng gan: Hai chất chống oxy h&oacute;a được t&igrave;m thấy trong l&aacute; Atiso tươi nguy&ecirc;n liệu ch&iacute;nh l&agrave;m cao Atiso l&agrave; Cynarin v&agrave; Silymarin gi&uacute;p cải thiện tổng thể chức năng hoạt động b&agrave;i tiết độc tố của gan, hai hợp chất chống oxy h&oacute;a hoạt động t&iacute;ch cực t&aacute;i tạo c&aacute;c tế b&agrave;o gan đ&atilde; bị hư hỏng.</p>\n<div class=\"row\">\n<div class=\"col-3\">&nbsp;</div>\n<img class=\"img-responsive  col-6\" src=\"http://3.115.24.250/layouts/images_news/Cao-Atiso_1%20(1).jpg\" alt=\"Image\" />\n<div class=\"col-3\">&nbsp;</div>\n</div>\n<p>Được d&ugrave;ng trong qu&aacute; tr&igrave;nh ph&ograve;ng chống v&agrave; chữa trị ung thư: trong Atiso c&oacute; chứa chất chống oxy h&oacute;a cao nhất trong số tất cả c&aacute;c loại rau. Những chất chống oxy h&oacute;a c&oacute; chứa trong Atiso l&agrave; th&agrave;nh phần ch&iacute;nh để tăng cường hệ thống miễn dịch chống lại t&aacute;c động của c&aacute;c gốc tự do, gốc tự do l&agrave; sản phẩm của qu&aacute; tr&igrave;nh chuyển h&oacute;a tế b&agrave;o tự nhi&ecirc;n c&oacute; thể dẫn đến một số bệnh l&yacute; nguy hiểm trong cơ thể, bao gồm cả ung thư, bệnh tim.</p>\n<p>Hỗ trợ điều trị bệnh cao huyết &aacute;p: Cao Atiso c&oacute; t&aacute;c dụng như một loại thuốc gi&atilde;n mạch, đặc biệt hữu &iacute;ch cho những người đang d&ugrave;ng thuốc chữa bệnh cao huyết &aacute;p để giảm thiểu ảnh hưởng của t&igrave;nh trạng thiếu hụt Kali</p>\n<p>Giảm t&aacute;c hại của rượu bia: Atiso c&oacute; thể l&agrave;m hạ men gan tăng cường lưu th&ocirc;ng m&aacute;u, cũng như thải độc trong m&aacute;u bằng c&aacute;ch loại bỏ độc tố ra khỏi cơ thể.</p>\n<p>Gi&uacute;p ph&ograve;ng chống bệnh lo&atilde;ng xương: Trong Cao Atiso t&igrave;m thấy một lượng Magie v&agrave; Mangan, cả hai chất n&agrave;y đều tham gia v&agrave;o qu&aacute; tr&igrave;nh trao đổi chất trong cơ thể. Trong qu&aacute; tr&igrave;nh tổng hợp protein v&agrave; tối ưu h&oacute;a lượng canxi trong cơ thể rất cần c&oacute; sự tham gia của Magie để tăng cường sức khỏe xương. Chức năng của Mangan th&igrave; c&oacute; ch&uacute;t phức tạp hơn, n&oacute; t&aacute;c động đến tỷ lệ trao đổi chất của Cholesterol, axit amin, v&agrave; carbohydrate.</p>\n<p>Gi&uacute;p tăng cường chức năng n&atilde;o bộ: Atiso c&oacute; lợi &iacute;ch đối với sức khỏe n&atilde;o bộ nhờ t&aacute;c dụng như một loại thuốc gi&atilde;n mạch, cho ph&eacute;p cung cấp th&ecirc;m oxi đến n&atilde;o bộ gi&uacute;p n&acirc;ng cao nhận thức.</p>\n<p>&nbsp;</p>\n<h5><u>2. TẠI SAO CAO ATISO TỐT CHO SỨC KHỎE NGƯỜI CAO TUỔI</u></h5>\n<p>&nbsp;</p>\n<div class=\"row\">\n<div class=\"col-3\">&nbsp;</div>\n<img class=\"img-responsive  col-6\" src=\"http://3.115.24.250/layouts/images_news/Cao-Atiso%20(1).jpg\" alt=\"Image\" />\n<div class=\"col-3\">&nbsp;</div>\n</div>\n<p>Những bệnh l&yacute; như lẫn, cao huyết &aacute;p, tiểu đường, lo&atilde;ng xương hay được gọi l&agrave; bệnh của tuổi gi&agrave;, khi c&aacute;c bộ phận trong cơ thể hoạt động kh&ocirc;ng ổn định dẫn đến qu&aacute; tr&igrave;nh trao đổi chất bị gi&aacute;n đoạn c&aacute;c cơ quan kh&ocirc;ng đủ dưỡng chất hoạt động sẽ g&acirc;y ra bệnh l&yacute;. Chức năng n&atilde;o bộ kh&ocirc;ng tốt g&acirc;y ra mất tr&iacute; nhớ, lượng canxi cung cấp cho xương kh&ocirc;ng đủ sẽ g&acirc;y ra t&igrave;nh trạng lo&atilde;ng xương&hellip; Bạn đang lo cho sức khỏe của cha mẹ người th&acirc;n của bạn h&atilde;y để Cao Atiso gi&uacute;p bạn giải quyết mối lo n&agrave;y.</p>\n<p>Với những c&ocirc;ng dụng đ&atilde; t&igrave;m hiểu ở tr&ecirc;n, Cao Atiso thật sự tốt cho sức khỏe người cao tuổi. Cao Atiso gi&uacute;p tăng cường chức năng của n&atilde;o bộ, cải thiện t&igrave;nh trạng lo&atilde;ng xương, ph&ograve;ng chống cao huyết &aacute;p v&agrave; những biến chứng của bệnh tiểu đường, v&agrave; c&oacute; t&aacute;c dụng rất lớn đối với 1 căn bệnh m&agrave; ở mọi lứa tuổi m&agrave; ai cũng lo sợ đ&oacute; l&agrave; Ung thư.</p>\n<p>H&atilde;y uống Cao Atiso h&agrave;ng ng&agrave;y để c&oacute; 1 cơ thể khỏe mạnh. Để mua sản phẩm, vui l&ograve;ng truy cập v&agrave;o website: https://traphusy.com/ để được tư vấn nh&eacute;!</p>', '<p>Từ l&acirc;u Cao Atiso được biết với việc mang lại rất nhiều lợi &iacute;ch sức khỏe kh&aacute;c nhau đặc biệt l&agrave; cho người cao tuổi. C&ugrave;ng Tr&agrave; Ph&uacute; Sỹ t&igrave;m hiểu những t&aacute;c dụng của Cao Atiso mang lại cho sức khỏe người cao tuổi nh&eacute;.</p>', 'atiso,người cao tuổi', 'Cao atiso tốt cho người cao tuổi như thế nào?', 'Từ l&acirc;u Cao Atiso được biết với việc mang lại rất nhiều lợi &iacute;ch sức khỏe kh&aacute;c nhau đặc biệt l&agrave; cho người cao tuổi. C&ugrave;ng Tr&agrave; Ph&uacute; Sỹ t&igrave;m hiểu những t&aacute;c dụng của Cao Atiso mang lại cho sức khỏe người cao tuổi nh&eacute;.', 1, 3, '2024-01-22 21:39:24', '2024-01-23 08:19:52', NULL, NULL),
(10, '520538e1X513dX46b2', 'Bật mí 7 lý do tại sao trà xanh hoa nhài lại tốt cho cơ thể bạn', 'bat-mi-7-ly-do-tai-sao-tra-xanh-hoa-nhai-lai-tot-cho-co-the-ban', 'http://localhost:8000/storage/files/blogs/65afd8d3c68a8.jpg', '<h5>1. CHỨA C&Aacute;C CHẤT CHỐNG OXY H&Oacute;A<u></u></h5>\n<p>&nbsp;</p>\n<p>Tr&agrave; Xanh Hoa Nh&agrave;i c&oacute; chứa c&aacute;c hợp chất mạnh mẽ từ thực vật được gọi l&agrave; polyphenol. Ch&uacute;ng hoạt động như chất chống oxy h&oacute;a trong cơ thể v&agrave; bảo vệ c&aacute;c tế b&agrave;o chống lại sự ph&aacute; hủy của gốc tự do. C&aacute;c nghi&ecirc;n cứu đ&atilde; chỉ ra sự li&ecirc;n kết giữa c&aacute;c gốc tự do với bệnh tim v&agrave; một số loại ung thư.</p>\n<div class=\"row\">\n<div class=\"col-3\">&nbsp;</div>\n<img class=\"img-responsive  col-6\" src=\"http://3.115.24.250/layouts/images_news/Tra-Xanh-Hoa-Nhai_1%20(1).jpg\" alt=\"Image\" />\n<div class=\"col-3\">&nbsp;</div>\n</div>\n<p>Tr&agrave; hoa nh&agrave;i l&agrave;m từ tr&agrave; xanh c&oacute; nhiều polyphenol được gọi l&agrave; catechin. Một hợp chất catechin đặc biệt mạnh mẽ trong tr&agrave; xanh l&agrave; epigallocatechin gallate (EGCG) - c&oacute; nhiều lợi &iacute;ch, bao gồm giảm c&acirc;n v&agrave; kiểm so&aacute;t lượng đường trong m&aacute;u, cũng như sức khỏe của tim v&agrave; răng miệng. Hơn nữa, c&aacute;c catechin tr&agrave; xanh như EGCG đ&atilde; được chứng minh l&agrave; c&oacute; t&aacute;c dụng chống vi&ecirc;m v&agrave; hạ lipid m&aacute;u, c&oacute; thể l&agrave;m giảm nguy cơ mắc bệnh tim.</p>\n<p>&nbsp;</p>\n<h5>2. C&Oacute; THỂ HỖ TRỢ GIẢM C&Acirc;N<u></u></h5>\n<p>&nbsp;</p>\n<p>Uống tr&agrave; hoa nh&agrave;i c&oacute; thể gi&uacute;p bạn giảm c&acirc;n bằng c&aacute;ch tăng tốc độ trao đổi chất. C&aacute;c đặc t&iacute;nh đốt ch&aacute;y chất b&eacute;o của tr&agrave; hoa nh&agrave;i c&oacute; li&ecirc;n quan đến h&agrave;m lượng caffeine v&agrave; EGCG của polyphenol. C&aacute;c hợp chất n&agrave;y cũng c&oacute; thể tăng cường hiệu quả đốt ch&aacute;y chất b&eacute;o của nhau.</p>\n<p>&nbsp;</p>\n<h5>3. C&Oacute; THỂ BẢO VỆ SỨC KHỎE TIM MẠCH<u></u></h5>\n<p>&nbsp;</p>\n<p>Tr&agrave; hoa nh&agrave;i c&oacute; nhiều polyphenol, c&oacute; thể gi&uacute;p bảo vệ chống lại bệnh tim. Polyphenol trong tr&agrave; đ&atilde; được chứng minh l&agrave; bảo vệ cholesterol LDL (c&oacute; hại) khỏi qu&aacute; tr&igrave;nh oxy h&oacute;a - một qu&aacute; tr&igrave;nh l&agrave;m tăng nguy cơ mắc bệnh tim. Cholesterol LDL bị oxy h&oacute;a c&oacute; khả năng g&acirc;y hại, v&igrave; n&oacute; c&oacute; nguy cơ d&iacute;nh v&agrave;o th&agrave;nh động mạch v&agrave; h&igrave;nh th&agrave;nh c&aacute;c mảng b&aacute;m. Điều n&agrave;y c&oacute; thể thu hẹp hoặc l&agrave;m tắc nghẽn mạch m&aacute;u.</p>\n<p>&nbsp;</p>\n<h5>4. KHẢ NĂNG TH&Uacute;C ĐẨY BẢO VỆ SỨC KHỎE RĂNG MIỆNG<u></u></h5>\n<p>&nbsp;</p>\n<p>Tr&agrave; Xanh Hoa Nh&agrave;i c&oacute; chứa catechin. Catechin l&agrave; một nh&oacute;m polyphenol c&oacute; thể gi&uacute;p bảo vệ chống s&acirc;u răn bằng c&aacute;ch ti&ecirc;u diệt vi khuẩn h&igrave;nh th&agrave;nh mảng b&aacute;m như Streptococcus mutans. Trong một nghi&ecirc;n cứu ở 15 người, một dung dịch chứa catechin tr&agrave; xanh đ&atilde; ngăn chặn Streptococcus mutans sản xuất axit khi b&ocirc;i l&ecirc;n răng. Qu&aacute; nhiều axit c&oacute; thể l&agrave;m m&ograve;n men răng.</p>\n<div class=\"row\">\n<div class=\"col-3\">&nbsp;</div>\n<img class=\"img-responsive  col-6\" src=\"http://3.115.24.250/layouts/images_news/Tra-Xanh-Hoa-Nhai%20(1).jpg\" alt=\"Image\" />\n<div class=\"col-3\">&nbsp;</div>\n</div>\n<p>&nbsp;</p>\n<h5>5. C&Oacute; THỂ TĂNG CƯỜNG CHỨC NĂNG N&Atilde;O<u></u></h5>\n<p>&nbsp;</p>\n<p>Tr&agrave; hoa nh&agrave;i c&oacute; một số t&iacute;nh chất c&oacute; thể gi&uacute;p tăng cường chức năng n&atilde;o. Caffeine c&oacute; trong tr&agrave; k&iacute;ch th&iacute;ch hệ thống thần kinh của bạn bằng c&aacute;ch ngăn chặn chất dẫn truyền thần kinh ức chế adenosine - một h&oacute;a chất cung cấp t&iacute;n hiệu giữa n&atilde;o v&agrave; cơ thể của bạn. Th&ocirc;ng thường, adenosine gi&uacute;p cơ thể bạn thư gi&atilde;n.</p>\n<p>Ngo&agrave;i ra, caffeine gi&uacute;p tăng cường hoạt động của n&atilde;o v&agrave; hỗ trợ giải ph&oacute;ng c&aacute;c chất dẫn truyền thần kinh gi&uacute;p cải thiện t&acirc;m trạng kh&aacute;c như dopamine v&agrave; serotonin, l&agrave;m cho bạn cảm thấy tỉnh t&aacute;o v&agrave; tr&agrave;n đầy năng lượng hơn v&agrave; cải thiện tr&iacute; nhớ ngắn hạn.</p>\n<p>&nbsp;</p>\n<h5>6. C&Oacute; THỂ BẢO VỆ CHỐNG LẠI BỆNH ALZHEIMER V&Agrave; PARKINSON<u></u></h5>\n<p>&nbsp;</p>\n<p>Tr&agrave; hoa nh&agrave;i chứa c&aacute;c polyphenol mạnh mẽ, c&oacute; thể l&agrave;m giảm nguy cơ mắc bệnh Alzheimer v&agrave; Parkinson. Đặc biệt, Tr&agrave; Xanh Hoa Nh&agrave;i c&oacute; h&agrave;m lượng EGCG cao, c&oacute; thể ức chế vi&ecirc;m v&agrave; trung h&ograve;a c&aacute;c tổn thương từ gốc tự do - hai yếu tố ch&iacute;nh li&ecirc;n quan đến sự tiến triển của bệnh Alzheimer v&agrave; Parkinson.</p>\n<p>&nbsp;</p>\n<h5>7. C&Oacute; THỂ L&Agrave;M GIẢM NGUY CƠ MẮC BỆNH TIỂU ĐƯỜNG LOẠI 2<u></u></h5>\n<p>&nbsp;</p>\n<p>Tr&agrave; Xanh Hoa Nh&agrave;i c&oacute; thể l&agrave;m giảm nguy cơ mắc bệnh tiểu đường loại 2. N&oacute; chứa hợp chất EGCG, c&oacute; thể gi&uacute;p cơ thể bạn sử dụng insulin hiệu quả hơn v&agrave; giảm lượng đường trong m&aacute;u.</p>\n<p>Sau tất cả, Tr&agrave; Xanh Hoa Nh&agrave;i l&agrave; thứ tr&agrave; ngon v&agrave; dễ d&agrave;ng c&oacute; thể bổ sung v&agrave;o chế độ ăn uống của bạn, chắc chắn tr&agrave; hoa nh&agrave;i sẽ gi&uacute;p bạn gặt h&aacute;i những lợi &iacute;ch sức khỏe ấn tượng.</p>', '<p>Tr&agrave; Xanh Hoa Nh&agrave;i l&agrave; một loại tr&agrave; c&oacute; m&ugrave;i thơm của hoa từ c&acirc;y hoa nh&agrave;i. M&ugrave;i thơm lan tỏa từ hoa nh&agrave;i hoặc nụ nh&agrave;i khi ủ hoặc pha c&ugrave;ng c&aacute;c l&aacute; tr&agrave; xanh mang lại một hương vị v&ocirc; c&ugrave;ng thanh tao, ngọt ng&agrave;o v&agrave; dễ chịu. Hoa nh&agrave;i được ướp với tr&agrave; xanh trở th&agrave;nh thức tr&agrave; ngon, mang đến nhiều lợi &iacute;ch sức khỏe dựa tr&ecirc;n kết hợp giữa t&aacute;c dụng của tr&agrave; xanh v&agrave; hoa nh&agrave;i.</p>\n<p>Dưới đ&acirc;y l&agrave; 7 l&yacute; do tại sao uống Tr&agrave; Xanh Hoa Nh&agrave;i rất tốt cho sức khỏe.</p>', NULL, 'Bật mí 7 lý do tại sao trà xanh hoa nhài lại tốt cho cơ thể bạn', 'Tr&agrave; Xanh Hoa Nh&agrave;i l&agrave; một loại tr&agrave; c&oacute; m&ugrave;i thơm của hoa từ c&acirc;y hoa nh&agrave;i. M&ugrave;i thơm lan tỏa từ hoa nh&agrave;i hoặc nụ nh&agrave;i khi ủ hoặc pha c&ugrave;ng c&aacute;c l&aacute; tr&agrave; xanh mang lại một hương vị v&ocirc; c&ugrave;ng thanh tao, ngọt ng&agrave;o v&agrave; dễ chịu. Hoa nh&agrave;i được ướp với tr&agrave; xanh trở th&agrave;nh thức tr&agrave; ngon, mang đến nhiều lợi &iacute;ch sức khỏe dựa tr&ecirc;n kết hợp giữa t&aacute;c dụng của tr&agrave; xanh v&agrave; hoa nh&agrave;i. Dưới đ&acirc;y l&agrave; 7 l&yacute; do tại sao uống Tr&agrave; Xanh Hoa Nh&agrave;i rất tốt cho sức khỏe.', 1, 3, '2024-01-22 21:44:27', '2024-01-23 08:22:20', NULL, NULL),
(11, 'b5d16641X3675X4751', 'Lợi ích của polyphenol trong trà ô long đỏ', 'loi-ich-cua-polyphenol-trong-tra-o-long-do', 'http://localhost:8000/storage/files/blogs/65afd8d55d35d.jpg', '<div class=\"row\"><img class=\"img-responsive  col-6\" src=\"http://3.115.24.250/layouts/images_news/Tra-O-Long-Do_2.jpg\" alt=\"Image\" />\n<div class=\"col-3\">&nbsp;</div>\n</div>\n<p>Ri&ecirc;ng đối Tr&agrave; &Ocirc; Long Đỏ, ngo&agrave;i những th&agrave;nh phần như ở tr&agrave; xanh, nhờ v&agrave;o quy tr&igrave;nh sản xuất b&aacute;n l&ecirc;n men, lượng Polyphenol trong tr&agrave; rất dồi d&agrave;o v&agrave; c&oacute; t&aacute;c dụng rất cao đối với sức khoẻ như theo c&aacute;c kết quả nghi&ecirc;n cứu dưới d&acirc;y.</p>\n<p>&nbsp;</p>\n<h5>ENZYM SOD V&Agrave; POLYPHENOL TRONG TR&Agrave; &Ocirc; LONG:</h5>\n<p>&nbsp;</p>\n<p>Cơ thể ch&uacute;ng ta được trang bị một hệ thống để hạn chế tối đa t&aacute;c hại của c&aacute;c gốc h&oacute;a học g&acirc;y b&ecirc;nh do những t&aacute;c hại của c&aacute;c yếu tố m&ocirc;i trường cũng như th&oacute;i quen sinh hoạt g&acirc;y ra. Đ&oacute; l&agrave; nhờ v&agrave;o enzym mang t&ecirc;n SOD (superoxide dismutate). Khi c&aacute;c enzym n&agrave;y thực hiện đầy đủ c&aacute;c chức năng th&igrave; c&oacute; thể loại bỏ ho&agrave;n to&agrave;n c&aacute;c gốc ho&aacute; học g&acirc;y hại h&igrave;nh th&agrave;nh trong cơ thể. Tuy nhi&ecirc;n, lượng enzym n&agrave;y chỉ tồn tại với số lượng nhất định trong cơ thể v&agrave; kh&ocirc;ng thể đựơc bổ sung giống như c&aacute;c kho&aacute;ng tố kh&aacute;c (VD: vitamine, Fe, Ca). C&aacute;ch duy nhất l&agrave; d&ugrave;ng yếu tố x&uacute;c t&aacute;c để tăng cường khả năng hoạt động của ch&uacute;ng. V&agrave; polyphenol (c&aacute;c chất c&oacute; chứa tổ hợp hydroxyl trong ph&acirc;n tử) trong tr&agrave; &Ocirc; Long đ&atilde; được chứng minh đ&oacute;ng một vai tr&ograve; quan trọng trong lĩnh vực n&agrave;y.</p>\n<p>&nbsp;</p>\n<h5>LỢI &Iacute;CH CỦA POLYPHENOL:</h5>\n<p>&nbsp;</p>\n<p>Qua c&aacute;c cuộc thử nghiệm, c&aacute;c nh&agrave; khoa học đ&atilde; khẳng định được lợi &iacute;ch của polyphenol trong Tr&agrave; &Ocirc; Long Đỏ, đ&oacute; l&agrave; tăng cường hoạt động của enzym SOD v&agrave; loại bỏ c&aacute;c gốc ho&aacute; học g&acirc;y hại. Trong cuộc thử nghiệm n&agrave;y, c&aacute;c nh&agrave; khoa học y&ecirc;u cầu những người tham gia uống Tr&agrave; &Ocirc; Long Đỏ đều đặn 2 lần mỗi ng&agrave;y trong v&ograve;ng 3 th&aacute;ng v&agrave; theo d&otilde;i s&aacute;t sự thay đổi c&aacute;c chức năng enzym SOD của trước v&agrave; sau khi uống tr&agrave;. Kết quả được t&oacute;m lược như sau:</p>\n<p>&nbsp;</p>\n<ul>\n<li>1. Uống &Ocirc; Long Đỏ thường xuy&ecirc;n rất c&oacute; t&aacute;c dụng đối với tăng cường hiệu quả của enzym SOD trong cơ thể.</li>\n<li>2. Uống &Ocirc; Long Đỏ thường xuy&ecirc;n l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a da, ngăn ngừa h&igrave;nh th&agrave;nh nếp nhăn, n&aacute;m v&agrave; t&agrave;n nhang, bằng c&aacute;ch th&uacute;c đẩy hoạt động của enzym SOD-đồng-kẽm hoạt động trong c&aacute;c tế b&agrave;o da.</li>\n<li>3. Tr&agrave; &Ocirc; Long Đỏ cũng rất hữu hiệu trong ph&ograve;ng chống chứng suy thận v&agrave; suy l&aacute; l&aacute;ch</li>\n<li>Theo nghi&ecirc;n cứu của Trường Đại Học Osaka - Nhật Bản, uống tr&agrave; &Ocirc; Long g&iacute;&uacute;p giảm đ&aacute;ng kể bệnh s&acirc;u răng v&agrave; c&aacute;c bệnh về răng miệng.</li>\n<li>4. Cũng theo kết quả nghi&ecirc;n cứu của Đại Học Shiga - Nhật Bản, tr&agrave; &Ocirc; Long c&ograve;n rất hữu hiệu trong việc trị vi&ecirc;m da (khả năng l&agrave; 70%).</li>\n<li>5. Đặc biệt &Ocirc; Long rất hiệu quả trong việc giảm tỉ lệ b&eacute;o ph&igrave;. Điều n&agrave;y đ&atilde; được chứng minh trong s&aacute;ch Bencao Shiyi (The Compendium of Materia Medica) v&agrave; trong c&aacute;c cuộc th&iacute; nghiệm của Đại Học Dược Shiga - Nhật Bản.</li>\n</ul>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h5>TR&Agrave; &Ocirc; LONG ĐỎ V&Agrave; BỆNH B&Eacute;O PH&Igrave;:</h5>\n<p>&nbsp;</p>\n<div class=\"row\">\n<div class=\"col-3\">&nbsp;</div>\n<img class=\"img-responsive  col-6\" src=\"http://3.115.24.250/layouts/images_news/Tra-O-Long-Do_1%20(1).jpg\" alt=\"Image\" />\n<div class=\"col-3\">&nbsp;</div>\n</div>\n<p>Trong y học đương đại th&igrave; b&eacute;o ph&igrave; kh&ocirc;ng chỉ đơn thuần l&agrave; \"qu&aacute; khổ\" m&agrave; b&eacute;o ph&igrave; xảy ra khi lượng mỡ trong cơ thể t&iacute;ch tụ qu&aacute; giới hạn cho ph&eacute;p (tỉ lệ mỡ so với trọng lượng cơ thể kh&ocirc;ng vượt qu&aacute; 15 - 20% ở nam giới v&agrave; 20 - 25% ở nữ giới). Trong qu&aacute; tr&igrave;nh chuyển ho&aacute; năng lượng của cơ thể, c&aacute;c chất đường v&agrave; b&eacute;o được tổng hợp th&agrave;nh triglyceride trong gan v&agrave; ruột non sau đ&oacute; theo m&aacute;u đi khắp cơ thể để cung cấp năng lượng cho duy tr&igrave; sự sống cũng như c&aacute;c vận động của cơ thể. Lượng triglyceride kh&ocirc;ng được chuyển h&oacute;a (c&ograve;n thừa) sẽ t&iacute;ch tụ lại trong tế b&agrave;o mỡ v&agrave; khi vượt qu&aacute; giới hạn sẽ g&acirc;y n&ecirc;n chứng b&eacute;o ph&igrave;. Polyphenol trong Tr&agrave; &Ocirc; Long Đỏ qua c&aacute;c cuộc th&iacute; nghiệm đ&atilde; cho thấy c&oacute; khả năng th&uacute;c đẩy sự hoạt động của c&aacute;c enzym c&oacute; chức năng ph&acirc;n giải triglyceride do đ&oacute; rất c&oacute; hiệu quả trong ngăn chặn v&agrave; kiểm so&aacute;t chứng b&eacute;o ph&igrave;.</p>\n<p>Như vậy, nhờ c&oacute; nguồn polyphenol dồi d&agrave;o, Tr&agrave; &Ocirc; Long Đỏ kh&ocirc;ng chỉ chống c&aacute;c bệnh ung thư, vi&ecirc;m kh&oacute;p, tim mạch, ti&ecirc;u chảy ... như ở tr&agrave; xanh m&agrave; c&ograve;n c&oacute; thể chống suy thận, suy l&aacute; l&aacute;ch, s&acirc;u răng, đồng thời gi&uacute;p giữ l&agrave;n da tươi trẻ v&agrave; hạn chế chứng b&eacute;o ph&igrave;. C&ograve;n chần chừ g&igrave; nữa h&atilde;y mang Tr&agrave; &Ocirc; Long Đỏ về nh&agrave; ngay đi n&agrave;o.</p>', '<p>Ngo&agrave;i lượng caffeinee vừa đủ trong tr&agrave; gi&uacute;p tinh thần sảng kho&aacute;i v&agrave; tỉnh t&aacute;o, qua kinh nghiệm d&acirc;n gian v&agrave; c&aacute;c t&agrave;i liệu nghi&ecirc;n cứu của c&aacute;c trường Đại Học ở Mỹ v&agrave; Nhật Bản, Trung Quốc, Tr&agrave; &Ocirc; Long Đỏ c&ograve;n l&agrave; phương thuốc kỳ diệu cho sức khỏe con người nhờ polyphenol trong tr&agrave;. Vậy lợi &iacute;ch thật sự của polyphenol l&agrave; g&igrave;? C&ugrave;ng Tr&agrave; Ph&uacute; Sỹ t&igrave;m hiểu nh&eacute;!</p>', NULL, 'Lợi ích của polyphenol trong trà ô long đỏ', 'Ngo&agrave;i lượng caffeinee vừa đủ trong tr&agrave; gi&uacute;p tinh thần sảng kho&aacute;i v&agrave; tỉnh t&aacute;o, qua kinh nghiệm d&acirc;n gian v&agrave; c&aacute;c t&agrave;i liệu nghi&ecirc;n cứu của c&aacute;c trường Đại Học ở Mỹ v&agrave; Nhật Bản, Trung Quốc, Tr&agrave; &Ocirc; Long Đỏ c&ograve;n l&agrave; phương thuốc kỳ diệu cho sức khỏe con người nhờ polyphenol trong tr&agrave;. Vậy lợi &iacute;ch thật sự của polyphenol l&agrave; g&igrave;? C&ugrave;ng Tr&agrave; Ph&uacute; Sỹ t&igrave;m hiểu nh&eacute;!', 1, 3, '2024-01-22 22:25:22', '2024-01-23 08:23:58', NULL, NULL),
(12, 'b3abf18fXed22X406b', 'Cách pha trà ô long cho người thưởng trà chuyên nghiệp', 'cach-pha-tra-o-long-cho-nguoi-thuong-tra-chuyen-nghiep', 'http://localhost:8000/storage/files/blogs/65afda4c89147.jpg', '<h6>Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n g&igrave;?</h6>\n<p>&nbsp;</p>\n<p>Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n c&oacute; t&ecirc;n gọi l&agrave; Jin Xuan &Ocirc; Long (hoặc Golden Lily) l&agrave; loại tr&agrave; mới được người Đ&agrave;i Loan ph&aacute;t triển v&agrave;o năm 1980 từ giống &Ocirc; long cổ điển tốt nhất mang sang từ Trung Quốc, l&agrave; chị cả của gia đ&igrave;nh &ldquo;The Three Daughters of Taiwan&rdquo;.</p>\n<div class=\"row\">\n<div class=\"col-3\">&nbsp;</div>\n<img class=\"img-responsive  col-6\" src=\"http://3.115.24.250/layouts/images_news/Tra-O-Long-Kim-Tuyen_1.jpg\" alt=\"Image\" />\n<div class=\"col-3\">&nbsp;</div>\n</div>\n<p>Nổi tiếng với hương vị đặc biệt của n&oacute; &ndash; &ldquo;hương thơm sữa&rdquo;, mang đến cho tr&agrave; một hương vị sữa đặc biệt. N&oacute; hiển thị một m&agrave;u v&agrave;ng-xanh s&acirc;u trong cốc v&agrave; hương vị bơ mịn trong miệng đ&atilde; trở th&agrave;nh một dấu hiệu của truyền thuyết tr&agrave; Đ&agrave;i Loan.</p>\n<p>&nbsp;</p>\n<h6>C&aacute;c bước pha tr&agrave; cho người thưởng tr&agrave; chuy&ecirc;n nghiệp:</h6>\n<p>&nbsp;</p>\n<p>&ndash; Bước 1: Chuẩn bị c&aacute;c dụng cụ cần thiết: ấm, ch&eacute;n tr&agrave;, ch&eacute;n tống, lọc tr&agrave;&hellip;; tr&agrave; cụ phải được thật sạch thật tinh khiết, n&ecirc;n d&ugrave;ng ấm đất hoặc ấm s&agrave;nh sứ, kh&ocirc;ng d&ugrave;ng ấm kim loại để pha tr&agrave;</p>\n<p>&ndash; Bước 2: Đổ nước s&ocirc;i v&agrave;o ấm, l&ecirc;n đến 70% ấm để l&agrave;m n&oacute;ng ấm v&agrave; đổ đi sau 20 gi&acirc;y</p>\n<p>&ndash; Bước 3: Cho Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n v&agrave;o ấm (d&ugrave;ng x&uacute;c tr&agrave; bằng tre hoặc gỗ, kh&ocirc;ng d&ugrave;ng tay hoặc muỗng kim loại để x&uacute;c tr&agrave;), số lượng vừa đủ t&ugrave;y theo khẩu vị, th&ocirc;ng thường l&agrave; 1gram tr&agrave; tương ứng với 20ml nước.</p>\n<p>&ndash; Bước 4: Cho nước s&ocirc;i v&agrave;o ấm (khoảng 50% ấm), xoay ấm rồi đổ nước tr&aacute;ng n&agrave;y v&agrave;o ch&eacute;n tống. Thao t&aacute;c n&agrave;y mục đ&iacute;ch để đ&aacute;nh thức l&aacute; tr&agrave;, cần thực hiện nhanh tay (khoảng dưới 7 gi&acirc;y), sau khi r&oacute;t nước đi để nguy&ecirc;n ấm tr&agrave; vậy khoảng 15 gi&acirc;y cho tr&agrave; ngấm nước, trong thời gian n&agrave;y d&ugrave;ng nước tr&aacute;ng trong ch&eacute;n tống để l&agrave;m n&oacute;ng ch&eacute;n qu&acirc;n</p>\n<p>&ndash; Bước 5: H&atilde;m tr&agrave;: ch&acirc;m nước s&ocirc;i đầy ấm v&agrave; đậy nắp lại (n&ecirc;n ch&acirc;m qu&aacute; tay một ch&uacute;t để nước tr&agrave;n ra ngo&agrave;i v&agrave; khi đậy nắp v&agrave;o, nước lại tr&agrave;o ra một lần nữa). Tiếp tục r&oacute;t nước s&ocirc;i quanh ấm để h&atilde;m tr&agrave; trong v&ograve;ng 30 gi&acirc;y cho lần pha đầu ti&ecirc;n (nước n&agrave;y gọi l&agrave; nước hương-chủ yếu để thưởng thức hương tr&agrave;), thời gian h&atilde;m Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n giữ ở mức 20 đến 30 gi&acirc;y cho lần pha thứ 2,3,4 v&agrave; c&oacute; thể tăng l&ecirc;n một ch&uacute;t cho những lần pha tiếp theo (c&oacute; thể điều chỉnh t&ugrave;y thuộc v&agrave;o khẩu vị v&agrave; kinh nghiệm)</p>\n<div class=\"row\">\n<div class=\"col-3\">&nbsp;</div>\n<img class=\"img-responsive  col-6\" src=\"http://3.115.24.250/layouts/images_news/Tra-O-Long-Kim-Tuyen.jpg\" alt=\"Image\" />\n<div class=\"col-3\">&nbsp;</div>\n</div>\n<p>&ndash; Bước 6: R&oacute;t tr&agrave; ra ch&eacute;n tống (n&ecirc;n d&ugrave;ng một phễu lọc để giữ lại những x&aacute;c tr&agrave; nhỏ v&agrave; gi&uacute;p cho nước được trong thuần khiết), rồi từ ch&eacute;n tống chia nước tr&agrave; ra nhiều ch&eacute;n qu&acirc;n để mời mọi người thưởng thức</p>\n<p>Khi thưởng thức Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n, trước ti&ecirc;n ta ngửi hương thơm trong ch&eacute;n, nh&igrave;n m&agrave;u nước v&agrave;ng s&aacute;nh rồi uống từng ngụm để thưởng thức c&aacute;i th&uacute; uống tr&agrave; &Ocirc; Long. Ngụm đầu ti&ecirc;n chỉ uống một ngụm b&eacute; ở đầu lưỡi để ngửi hương tr&agrave;; thở hơi ra v&agrave; uống v&agrave;o ngụm lớn thứ hai gần hết ch&eacute;n tr&agrave; để tr&agrave; tr&agrave;n đầy trong miệng, nuốt xuống rồi đẩy hơi ra để hương tr&agrave; chạy ngược l&ecirc;n mũi c&oacute; thể cảm nhận đầy đủ hương vị của tr&agrave;; ngụm thứ nhỏ thứ ba uống hết phần tr&agrave; c&ograve;n lại để kiểm lại vị v&agrave; hậu tr&agrave;; sau khi uống, hương lưu trong miệng, vị c&ograve;n giữ m&atilde;i.</p>\n<p>Tr&ecirc;n đ&acirc;y l&agrave; c&aacute;ch pha Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n chuy&ecirc;n nghiệp, hy vọng ch&uacute;ng sẽ gi&uacute;p bạn c&oacute; thể thưởng thức được như ly tr&agrave; ngon hơn. Để mua Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n cũng như c&aacute;c loại tr&agrave; &Ocirc; Long kh&aacute;c.</p>', '<p>Đối với phong c&aacute;ch thưởng tr&agrave; hiện đại, c&aacute;ch pha Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n c&oacute; đ&ocirc;i ch&uacute;t kh&aacute;c biệt so với c&aacute;c loại tr&agrave; kh&aacute;c do mức độ oxy h&oacute;a của l&aacute; tr&agrave;. Vậy l&agrave;m sao để pha tr&agrave; ngon nhất? B&agrave;i viết dưới đ&acirc;y sẽ hướng dẫn cho c&aacute;c bạn c&aacute;c bước cơ bản để pha Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n cho những người thưởng tr&agrave; chuy&ecirc;n nghiệp.</p>', NULL, 'Cách pha trà ô long cho người thưởng trà chuyên nghiệp', 'Đối với phong c&aacute;ch thưởng tr&agrave; hiện đại, c&aacute;ch pha Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n c&oacute; đ&ocirc;i ch&uacute;t kh&aacute;c biệt so với c&aacute;c loại tr&agrave; kh&aacute;c do mức độ oxy h&oacute;a của l&aacute; tr&agrave;. Vậy l&agrave;m sao để pha tr&agrave; ngon nhất? B&agrave;i viết dưới đ&acirc;y sẽ hướng dẫn cho c&aacute;c bạn c&aacute;c bước cơ bản để pha Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n cho những người thưởng tr&agrave; chuy&ecirc;n nghiệp.', 1, 3, '2024-01-22 22:25:44', '2024-01-23 08:25:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `code_product` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_product` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_product` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_product` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description_product` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `specifications` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Thông số kĩ thuật',
  `warranty` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Bảo hành',
  `time_warranty` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Thời gian Bảo hành',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Lưu Ý',
  `gift` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Quà tặng',
  `price` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'Giá bán',
  `cost` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'Giá gốc',
  `element_product` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_modify_by_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code_product`, `name_product`, `url_product`, `image_product`, `description_product`, `specifications`, `warranty`, `time_warranty`, `note`, `gift`, `price`, `cost`, `element_product`, `status`, `created_at`, `updated_at`, `create_by_id`, `last_modify_by_id`) VALUES
(9, 'TRA01', 'Trà Ô Long', 'tra-o-long', NULL, '<h2>Tr&agrave; &Ocirc; Long l&agrave; g&igrave;?</h2>\n<p>Trong h&igrave;nh dung của rất nhiều người Việt Nam, tr&agrave; &Ocirc; Long c&oacute; h&igrave;nh vi&ecirc;n tr&ograve;n, ho&agrave;n to&agrave;n kh&aacute;c với c&aacute;c loại tr&agrave; phổ biến tại Việt Nam c&oacute; h&igrave;nh l&aacute; cuộn, m&ugrave;i thơm nồng, nước xanh v&agrave;ng, vị dịu nhẹ dễ uống. V&agrave; &ldquo;nghe n&oacute;i&rdquo; c&oacute; t&aacute;c dụng giảm b&eacute;o.</p>\n<p>Nhưng một c&aacute;ch ch&iacute;nh x&aacute;c, tr&agrave; &Ocirc; Long l&agrave; một nh&oacute;m tr&agrave; c&oacute; độ oxy ho&aacute; từ 8-80%. Tr&agrave; c&oacute; thể được định h&igrave;nh th&agrave;nh sợi rời (chủ yếu theo c&aacute;ch l&agrave;m tr&agrave; của Trung Quốc), hoặc th&agrave;nh vi&ecirc;n tr&ograve;n nhỏ như c&uacute;c &aacute;o (theo c&aacute;ch l&agrave;m của Đ&agrave;i Loan).</p>\n<p>Tr&agrave; &Ocirc; Long ở Việt Nam hầu hết l&agrave; &Ocirc; Long xanh.</p>\n<p>Tr&agrave; &Ocirc; Long c&ograve;n được biết đến với nhiều t&ecirc;n gọi kh&aacute;c nhau như: tr&agrave; olong, tr&agrave; oolong, tr&agrave; wulong&hellip;</p>\n<div id=\"attachment_30\" class=\"wp-caption aligncenter\"><img class=\"wp-image-30 size-large\" src=\"https://www.traviet.com/wp-content/uploads/2015/06/tra-o-long-3-1024x1024.jpg.webp\" sizes=\"(max-width: 900px) 100vw, 900px\" srcset=\"https://www.traviet.com/wp-content/uploads/2015/06/tra-o-long-3-1024x1024.jpg.webp 1024w, https://www.traviet.com/wp-content/uploads/2015/06/tra-o-long-3-600x600.jpg.webp 600w, https://www.traviet.com/wp-content/uploads/2015/06/tra-o-long-3-100x100.jpg.webp 100w, https://www.traviet.com/wp-content/uploads/2015/06/tra-o-long-3-150x150.jpg.webp 150w, https://www.traviet.com/wp-content/uploads/2015/06/tra-o-long-3-300x300.jpg.webp 300w, https://www.traviet.com/wp-content/uploads/2015/06/tra-o-long-3-570x570.jpg.webp 570w, https://www.traviet.com/wp-content/uploads/2015/06/tra-o-long-3.jpg 1600w\" alt=\"c&ocirc;ng dụng của tr&agrave; - tr&agrave; &Ocirc; Long\" width=\"900\" height=\"900\" loading=\"lazy\" aria-describedby=\"caption-attachment-30\" />\n<p id=\"caption-attachment-30\" class=\"wp-caption-text\">Tr&agrave; &Ocirc; Long được định h&igrave;nh th&agrave;nh những vi&ecirc;n tr&ograve;n, nhỏ, chắc.</p>\n</div>\n<h2><span id=\"huong-vi-tra-o-long-chat-nhe-vi-thanh-ngot-hau\" class=\"ez-toc-section\"></span><span id=\"huong-vi-chat-nhe-vi-thanh-ngot-hau\">Hương vị tr&agrave; &Ocirc; Long: ch&aacute;t nhẹ, vị thanh, ngọt hậu</span></h2>\n<p>Tr&agrave; được ủ l&ecirc;n men khoảng 30% đồng nghĩa với việc độ ch&aacute;t trong tr&agrave; sẽ giảm xuống, kh&ocirc;ng c&ograve;n vị ch&aacute;t đượm như những loại tr&agrave;&nbsp;<a href=\"https://www.traviet.com/product/tra-thai-nguyen/\" target=\"_blank\" rel=\"noopener\">Th&aacute;i Nguy&ecirc;n</a>, tr&agrave;&nbsp;<a href=\"https://www.traviet.com/product/tra-co-thu/\" target=\"_blank\" rel=\"noopener\">Cổ thụ</a>&nbsp;hay&nbsp;<a href=\"https://www.traviet.com/product/tra-shan-tuyet/\">Tr&agrave; Shan Tuyết</a>&hellip; Khi nhấp ngụm tr&agrave; đầu ti&ecirc;n, bạn sẽ cảm nhận được m&ugrave;i thơm như hoa nở, k&egrave;m theo đ&oacute; l&agrave; vị ch&aacute;t nhẹ, hơi b&eacute;o ngậy.</p>\n<p>Sau đ&oacute; l&agrave;&nbsp;<strong>hậu vị</strong>, hương vị tr&agrave; lưu l&acirc;u d&agrave;i trong khoang miệng, b&aacute;m khắp v&ograve;m họng v&agrave; một vị ngọt hậu k&eacute;o d&agrave;i. Đ&acirc;y ch&iacute;nh l&agrave; những yếu tố khiến cho bạn cảm thấy th&iacute;ch th&uacute; khi thưởng thức loại tr&agrave; n&agrave;y.</p>\n<div id=\"attachment_1719\" class=\"wp-caption aligncenter\"><img class=\"wp-image-1719 size-large\" src=\"https://www.traviet.com/wp-content/uploads/2015/07/cach-pha-tra-o-long-8-1200x800.jpg.webp\" sizes=\"(max-width: 900px) 100vw, 900px\" srcset=\"https://www.traviet.com/wp-content/uploads/2015/07/cach-pha-tra-o-long-8-1200x800.jpg.webp 1200w, https://www.traviet.com/wp-content/uploads/2015/07/cach-pha-tra-o-long-8-600x400.jpg.webp 600w, https://www.traviet.com/wp-content/uploads/2015/07/cach-pha-tra-o-long-8-620x413.jpg.webp 620w, https://www.traviet.com/wp-content/uploads/2015/07/cach-pha-tra-o-long-8-570x380.jpg.webp 570w, https://www.traviet.com/wp-content/uploads/2015/07/cach-pha-tra-o-long-8.jpg.webp 1980w\" alt=\"C&aacute;ch pha tr&agrave; &Ocirc; Long - h&atilde;m tr&agrave; lần tiếp theo\" width=\"900\" height=\"600\" loading=\"lazy\" aria-describedby=\"caption-attachment-1719\" />\n<p id=\"caption-attachment-1719\" class=\"wp-caption-text\">Tr&agrave; &Ocirc; Long c&oacute; hương thơm ngọt của hoa, vị tr&agrave; ch&aacute;t nhẹ, dịu, b&eacute;o, hậu vị ngọt k&eacute;o d&agrave;i</p>\n</div>\n<h2><span id=\"phan-loai-tra-o-long\" class=\"ez-toc-section\"></span><span id=\"ten-goi-phan-loai-tra-o-long\">Ph&acirc;n loại Tr&agrave; &Ocirc; Long</span></h2>\n<p>Nhiều người hay nhầm lẫn &Ocirc; Long l&agrave; t&ecirc;n một loại tr&agrave;. Thật ra n&oacute; l&agrave; một nh&oacute;m tr&agrave; (cũng giống như nh&oacute;m tr&agrave; xanh, nh&oacute;m tr&agrave; đen&hellip;) gồm bất cứ loại tr&agrave; n&agrave;o oxy ho&aacute; một phần từ &nbsp;8% đến 80%. Độ oxy h&oacute;a được phản &aacute;nh qua m&agrave;u sắc của nước tr&agrave;, từ v&agrave;ng hổ ph&aacute;ch tới n&acirc;u đỏ. Dưới đ&acirc;y l&agrave; một v&agrave;i đặc trưng của d&ograve;ng tr&agrave; n&agrave;y :</p>\n<ul>\n<li><strong><a href=\"https://www.traviet.com/tea-school/tra-o-long-la-gi/\" target=\"_blank\" rel=\"noopener\">&Ocirc; Long Cao Sơn</a></strong>&nbsp;&nbsp;l&agrave; loại tr&agrave; &Ocirc; Long phổ biến nhất tại Đ&agrave;i Loan v&agrave; nổi tiếng to&agrave;n thế giới. Hầu hết tr&agrave; &Ocirc; Long ở Việt Nam l&agrave; loại tr&agrave; n&agrave;y.</li>\n<li><strong><a href=\"https://www.traviet.com/product/tra-thiet-quan-am/\" target=\"_blank\" rel=\"noopener\">Thiết Quan &Acirc;m</a>&nbsp;</strong>hoặc Đại Hồng B&agrave;o, Đ&ocirc;ng Phương Mỹ Nh&acirc;n&hellip; cũng được xếp v&agrave;o loại tr&agrave; &Ocirc; long.</li>\n<li><a href=\"https://www.traviet.com/product/tra-o-long-nhan-sam/\" target=\"_blank\" rel=\"noopener\"><strong>Tr&agrave; &Ocirc; Long Nh&acirc;n S&acirc;m</strong></a>&nbsp;l&agrave; loại tr&agrave; &Ocirc; Long được tăng dược t&iacute;nh v&agrave; hương vị bằng c&aacute;ch trộn với hỗn hợp c&aacute;c vị thảo mộc kh&aacute;c như nh&acirc;n s&acirc;m, cam thảo, hoa mộc&hellip;</li>\n</ul>\n<div id=\"attachment_13917\" class=\"wp-caption alignnone\"><img class=\"size-full wp-image-13917\" src=\"https://www.traviet.com/wp-content/uploads/2023/08/chen-tra-16.webp\" sizes=\"(max-width: 1200px) 100vw, 1200px\" srcset=\"https://www.traviet.com/wp-content/uploads/2023/08/chen-tra-16.webp 1200w, https://www.traviet.com/wp-content/uploads/2023/08/chen-tra-16-620x620.webp 620w, https://www.traviet.com/wp-content/uploads/2023/08/chen-tra-16-400x400.webp 400w, https://www.traviet.com/wp-content/uploads/2023/08/chen-tra-16-768x768.webp 768w, https://www.traviet.com/wp-content/uploads/2023/08/chen-tra-16-600x600.webp 600w, https://www.traviet.com/wp-content/uploads/2023/08/chen-tra-16-100x100.webp 100w\" alt=\"Tr&agrave; &ocirc; long c&oacute; m&agrave;u nước v&agrave;ng hổ ph&aacute;ch \" width=\"1200\" height=\"1200\" loading=\"lazy\" aria-describedby=\"caption-attachment-13917\" />\n<p id=\"caption-attachment-13917\" class=\"wp-caption-text\">Tr&agrave; &ocirc; long c&oacute; m&agrave;u nước v&agrave;ng hổ ph&aacute;ch</p>\n</div>\n<h2><span id=\"tac-dung-cua-tra-o-long\" class=\"ez-toc-section\"></span><span id=\"cong-dung-ho-tro-trao-doi-chat-va-giam-can\">T&aacute;c dụng của tr&agrave; &Ocirc; Long</span></h2>\n<p>Tr&agrave; &Ocirc; Long đang dần trở n&ecirc;n phổ biến tr&ecirc;n to&agrave;n thế giới, được đ&aacute;nh gi&aacute; cao bởi hương vị phong ph&uacute;, chất lượng cao v&agrave; nhiều lợi &iacute;ch cho sức khoẻ.</p>\n<p>Tuy nhi&ecirc;n, trong v&ocirc; v&agrave;n những lợi &iacute;ch của tr&agrave; &Ocirc; Long th&igrave; c&oacute; một lợi &iacute;ch nổi bật hơn cả đ&oacute; l&agrave;&nbsp;<strong>gi&uacute;p tăng cường trao đổi chất&nbsp;</strong>v&agrave;<strong>&nbsp;hỗ trợ việc giảm c&acirc;n</strong>. Tr&agrave; &Ocirc; Long gi&uacute;p bạn đốt ch&aacute;y mỡ thừa nhanh hơn bằng c&aacute;ch tăng cường trao đổi chất k&eacute;o d&agrave;i 2 giờ sau khi sử dụng tr&agrave;. Việc uống tr&agrave; &Ocirc; Long thường xuy&ecirc;n kết hợp việc tập luyện v&agrave; ăn uống b&agrave;i bản sẽ cho bạn một v&oacute;c d&aacute;ng c&acirc;n đối v&agrave; thon gọn.</p>\n<p><strong>Dưới đ&acirc;y l&agrave; 10 t&aacute;c dụng của Tr&agrave; &Ocirc; Long</strong>:</p>\n<ol>\n<li>Tăng cường trao đổi chất, gi&uacute;p giảm c&acirc;n</li>\n<li>L&agrave;m giảm cholesterol v&agrave; tăng cường sức khoẻ tim mạch.</li>\n<li>Tăng sự tỉnh t&aacute;o</li>\n<li>Bảo vệ đường ti&ecirc;u ho&aacute;, gi&uacute;p kiềm ho&aacute; đường ti&ecirc;u ho&aacute;, giảm vi&ecirc;m với những bạn bị tăng lượng axit g&acirc;y lo&eacute;t dạ d&agrave;y</li>\n<li>L&agrave;m t&oacute;c chắc khỏe, ngăn ngừa sự rụng t&oacute;c, gi&uacute;p t&oacute;c bạn d&agrave;y, mềm v&agrave; b&oacute;ng.</li>\n<li>Cải thiện t&igrave;nh trạng của da, gi&uacute;p da đ&agrave;n hồi v&agrave; trẻ trung, l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o ho&aacute;</li>\n<li>Ổn định lượng đường trong m&aacute;u</li>\n<li>Ngừa s&acirc;u răng, ức chế vi khuẩn v&agrave; ngăn ngừa mảng b&aacute;m.</li>\n<li>Ngừa lo&atilde;ng xương v&agrave; gi&uacute;p xương chắc khoẻ</li>\n<li>Tăng cường hệ thống miễn dịch, hỗ trợ bạn duy tr&igrave; một hệ miễn dịch khoẻ mạnh, ngăn ngừa tổn thương tế b&agrave;o.</li>\n</ol>\n<p><em>Tham khảo</em>&nbsp;:&nbsp;<a href=\"https://www.traviet.com/tea-school/10-cong-dung-tuyet-voi-cua-tra-o-long/\" target=\"_blank\" rel=\"noopener\"><em>C&ocirc;ng dụng của tr&agrave; &Ocirc; Long</em></a></p>\n<div id=\"attachment_1720\" class=\"wp-caption aligncenter\"><img class=\"wp-image-1720\" title=\"TRAVIET Premium Tea Gift Set - 2 tea boxes 2\" src=\"https://www.traviet.com/wp-content/uploads/2015/07/cach-pha-tra-o-long-9-1200x800.jpg.webp\" sizes=\"(max-width: 1200px) 100vw, 1200px\" srcset=\"https://www.traviet.com/wp-content/uploads/2015/07/cach-pha-tra-o-long-9-1200x800.jpg.webp 1200w, https://www.traviet.com/wp-content/uploads/2015/07/cach-pha-tra-o-long-9-600x400.jpg.webp 600w, https://www.traviet.com/wp-content/uploads/2015/07/cach-pha-tra-o-long-9-620x413.jpg.webp 620w, https://www.traviet.com/wp-content/uploads/2015/07/cach-pha-tra-o-long-9-570x380.jpg.webp 570w, https://www.traviet.com/wp-content/uploads/2015/07/cach-pha-tra-o-long-9.jpg.webp 1980w\" alt=\"C&aacute;ch pha tr&agrave; &ocirc; long chuy&ecirc;n nghiệp - c&aacute;ch pha tr&agrave; &ocirc; long ngon \" width=\"1200\" height=\"800\" loading=\"lazy\" aria-describedby=\"caption-attachment-1720\" />\n<p id=\"caption-attachment-1720\" class=\"wp-caption-text\">Tr&agrave; &Ocirc; Long l&agrave; một loại tr&agrave; rất gi&agrave;u hương vị v&agrave; c&oacute; nhiều t&aacute;c dụng tốt cho sức khoẻ</p>\n</div>\n<h2><span id=\"cach-pha-tra-o-long\" class=\"ez-toc-section\"></span><span id=\"cach-pha-de-pha-de-ngon\">C&aacute;ch pha tr&agrave; &Ocirc; Long</span></h2>\n<p>Tr&agrave; Olong l&agrave; những sợi&nbsp;tr&agrave; c&oacute; h&igrave;nh dạng vo tr&ograve;n, chắc, nặng. N&ecirc;n khi pha tr&agrave;, phải sử dụng nước c&oacute; nhiệt độ cao, tầm 90-95 độ để ph&aacute;t huy hết được hương v&agrave; vị của tr&agrave;. Nếu d&ugrave;ng nước c&oacute; nhiệt độ thấp sẽ l&agrave;m cho tr&agrave; kh&ocirc;ng nở bung ra được, nước tr&agrave; sẽ nhạt v&agrave; trơ vị.</p>\n<ul>\n<li>Bước 1 :&nbsp;<strong>L&agrave;m n&oacute;ng ấm ch&eacute;n</strong>&nbsp;&ndash; r&oacute;t nước s&ocirc;i v&agrave;o đảo đều trong ấm v&agrave; r&oacute;t ra c&aacute;c ch&eacute;n để l&agrave;m n&oacute;ng ấm ch&eacute;n.</li>\n<li>Bước 2 :&nbsp;<strong>Đ&aacute;nh thức tr&agrave;</strong>&nbsp;&ndash; Cho tr&agrave; v&agrave;o ấm, lượng tr&agrave; bao nhi&ecirc;u l&agrave; t&ugrave;y theo khẩu vị của bạn. R&oacute;t nước s&ocirc;i v&agrave;o ấm tr&agrave;, l&agrave;m sao để nước vừa đủ sấp mặt tr&agrave;, lắc nhẹ ấm rồi r&oacute;t ra liền v&agrave; bỏ nước n&agrave;y đi.</li>\n<li>Bước 3 :&nbsp;<strong>Pha Tr&agrave;</strong>&nbsp;&ndash; bạn tiếp tục r&oacute;t nước s&ocirc;i v&agrave;o trong ấm tr&agrave;, lượng nước tuỳ thuộc v&agrave;o số ch&eacute;n tr&agrave; bạn muốn r&oacute;t. H&atilde;m tr&agrave; trong khoảng 20-25 gi&acirc;y, sau đ&oacute; r&oacute;t to&agrave;n bộ tr&agrave; trong ấm v&agrave;o chuy&ecirc;n, rồi r&oacute;t ra c&aacute;c ch&eacute;n tr&agrave;. Sau khi đ&atilde; r&oacute;t hết tr&agrave; trong ấm ra, mở nắp ấm để x&aacute;c tr&agrave; nguội bớt. Khi n&agrave;o uống lần tiếp theo th&igrave; lại tiếp tục ch&acirc;m th&ecirc;m nước v&agrave;o ấm.</li>\n<li>Bước 4 :&nbsp;<strong>Thưởng tr&agrave; &ndash;</strong>&nbsp;&nbsp;giờ tr&agrave; của bạn đ&atilde; sẵn s&agrave;ng, bạn c&oacute; thể thưởng thức ch&uacute;ng.</li>\n</ul>\n<p>C&ugrave;ng xem video c&aacute;ch pha tr&agrave; &Ocirc; Long của Tr&agrave; Việt nh&eacute;.</p>\n<div class=\"video-container responsive-embed widescreen\"><iframe title=\"HOW TO BREW \" src=\"https://www.youtube.com/embed/3teQmWs_HGc?feature=oembed\" width=\"900\" height=\"506\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" loading=\"lazy\" data-mce-fragment=\"1\"></iframe></div>\n<p><em>Tham khảo :&nbsp;<a href=\"https://www.traviet.com/blog/cach-pha-tra-o-long/\">C&aacute;ch pha tr&agrave; &Ocirc; Long chuy&ecirc;n nghiệp&nbsp;</a></em></p>\n<h2><span id=\"cach-bao-quan-de-giu-tra-o-long-ngon-lau\" class=\"ez-toc-section\"></span><span id=\"bao-quan-de-giu-tra-ngon-lau\">C&aacute;ch bảo quản để giữ tr&agrave; &Ocirc; Long ngon l&acirc;u</span></h2>\n<p>Tr&agrave; l&agrave; loại sản phẩm rất nhạy cảm với kh&ocirc;ng kh&iacute; v&agrave; dễ bị mất m&ugrave;i, mất vị khi bảo quản kh&ocirc;ng tốt.</p>\n<ul>\n<li>Nếu chưa d&ugrave;ng đến, bạn c&oacute; thể bảo quản n&oacute; ở ngăn đ&ocirc;ng tủ lạnh khi n&oacute; c&ograve;n t&uacute;i h&uacute;t ch&acirc;n kh&ocirc;ng.</li>\n<li>Nếu bạn đ&atilde; mở ra, tốt nhất, h&atilde;y d&ugrave;ng n&oacute; trong v&ograve;ng 15 ng&agrave;y. Sau mỗi lần d&ugrave;ng, h&atilde;y đậy k&iacute;n hoặc buộc chặt miệng t&uacute;i để tr&aacute;nh &aacute;nh s&aacute;ng v&agrave; kh&ocirc;ng kh&iacute; tr&agrave;n v&agrave;o.</li>\n<li>Kh&ocirc;ng để tr&agrave; nơi ẩm ướt, hoặc gần c&aacute;c gia vị c&oacute; m&ugrave;i mạnh như c&agrave; ph&ecirc;, thuốc l&aacute;, bột c&agrave; ri&hellip;</li>\n</ul>\n<div id=\"attachment_4691\" class=\"wp-caption aligncenter\"><img class=\"wp-image-4691 size-large\" src=\"https://www.traviet.com/wp-content/uploads/2018/08/tra-olong-8g-1200x1200.jpg.webp\" sizes=\"(max-width: 900px) 100vw, 900px\" srcset=\"https://www.traviet.com/wp-content/uploads/2018/08/tra-olong-8g-1200x1200.jpg.webp 1200w, https://www.traviet.com/wp-content/uploads/2018/08/tra-olong-8g-600x600.jpg.webp 600w, https://www.traviet.com/wp-content/uploads/2018/08/tra-olong-8g-100x100.jpg.webp 100w, https://www.traviet.com/wp-content/uploads/2018/08/tra-olong-8g-400x400.jpg.webp 400w, https://www.traviet.com/wp-content/uploads/2018/08/tra-olong-8g-620x620.jpg.webp 620w, https://www.traviet.com/wp-content/uploads/2018/08/tra-olong-8g-768x768.jpg.webp 768w, https://www.traviet.com/wp-content/uploads/2018/08/tra-olong-8g-570x570.jpg.webp 570w, https://www.traviet.com/wp-content/uploads/2018/08/tra-olong-8g.jpg.webp 1600w\" alt=\"Tr&agrave; &ocirc; long hộp 10 t&eacute;p 8g\" width=\"900\" height=\"900\" loading=\"lazy\" aria-describedby=\"caption-attachment-4691\" />\n<p id=\"caption-attachment-4691\" class=\"wp-caption-text\">Tr&agrave; &Ocirc; Long của Tr&agrave; Việt được đ&oacute;ng g&oacute;i nhỏ 8g, h&uacute;t ch&acirc;n kh&ocirc;ng, tiện lợi cho việc bảo quản v&agrave; sử dụng</p>\n</div>\n<p><em>Tham khảo :<a href=\"https://www.traviet.com/?p=8098&amp;preview=true\" target=\"_blank\" rel=\"noopener\">C&aacute;ch bảo quản tr&agrave; &Ocirc; Long</a></em></p>\n<h2><span id=\"nhung-dieu-thu-vi-ve-tra-o-long-co-the-ban-chua-biet\" class=\"ez-toc-section\"></span>Những điều th&uacute; vị về Tr&agrave; &Ocirc; Long c&oacute; thể bạn chưa biết</h2>\n<p>Tr&agrave; &Ocirc; Long l&agrave; loại tr&agrave; cao cấp, phẩm chất tốt, hương vị phong ph&uacute;, l&agrave; một loại tr&agrave; chỉ mới xuất hiện ở Việt Nam hơn chục năm nay nhưng đ&atilde; được đ&aacute;nh gi&aacute; rất cao v&agrave; c&oacute; tốc độ phổ biến nhanh nhất Việt Nam. C&oacute; nhiều điều rất th&uacute; vị về loại tr&agrave; n&agrave;y m&agrave; c&oacute; thể bạn chưa biết. H&atilde;y c&ugrave;ng t&igrave;m hiểu nh&eacute;.</p>\n<h3><span id=\"nguon-goc-ten-goi-tra-o-long\" class=\"ez-toc-section\"></span><span id=\"nguon-goc-tra-o-long-bat-nguon-tu-dau\">Nguồn gốc t&ecirc;n gọi Tr&agrave; &Ocirc; Long</span></h3>\n<p>C&oacute; rất nhiều truyền thuyết kể về c&aacute;i t&ecirc;n tr&agrave; &Ocirc; Long, trong đ&oacute; c&oacute; c&acirc;u chuyện sau:</p>\n<p>Từ rất l&acirc;u rồi, ở v&ugrave;ng n&uacute;i s&acirc;u An Kh&ecirc; Ph&uacute;c Kiến, c&oacute; người thợ săn t&ecirc;n l&agrave; Hồ Lương. Một ng&agrave;y trở về nh&agrave; sau khi săn th&uacute;, mặt trời l&ecirc;n cao, thời tiết n&oacute;ng nực. Hồ Lương sợ thịt &ocirc;i hỏng, b&egrave;n tiện tay ngắt v&agrave;i l&aacute; c&acirc;y ven đường che đậy. Sau lại thấy nh&agrave; m&igrave;nh c&oacute; m&ugrave;i hương thơm ng&aacute;t. T&igrave;m quanh quẩn trong ngo&agrave;i, mới biết hương thơm tỏa ra từ l&aacute; c&acirc;y đ&atilde; ngắt. Anh d&ugrave;ng l&aacute; c&acirc;y ng&acirc;m v&agrave;o nước, uống thấy tinh thần sảng kho&aacute;i.</p>\n<p>Hồ Lương kh&ocirc;ng quản đường xa, t&igrave;m tới nơi, đ&agrave;o c&acirc;y mang về trồng. Nhưng m&ugrave;i vị pha kh&ocirc;ng giống như trước. Anh suy nghĩ m&ocirc;ng lung, rồi hiểu rằng, l&aacute; tr&agrave; phải phơi nắng, gia c&ocirc;ng rồi mới c&oacute; hương thơm. &rdquo;Hồ Lương&rdquo; ph&aacute;t &acirc;m ng&ocirc;n ngữ địa phương gần giống &rdquo;&Ocirc; Long&rdquo;. Người d&acirc;n trong v&ugrave;ng ghi nhớ c&ocirc;ng lao Hồ Lương liền gọi loại tr&agrave; n&agrave;y l&agrave; &rdquo;Tr&agrave; &Ocirc; Long&rdquo;.</p>\n<div id=\"attachment_1510\" class=\"wp-caption aligncenter\"><img class=\"size-large wp-image-1510\" src=\"https://www.traviet.com/wp-content/uploads/2015/07/doi-tra-bao-loc26-1024x683.jpg.webp\" sizes=\"(max-width: 900px) 100vw, 900px\" srcset=\"https://www.traviet.com/wp-content/uploads/2015/07/doi-tra-bao-loc26-1024x683.jpg.webp 1024w, https://www.traviet.com/wp-content/uploads/2015/07/doi-tra-bao-loc26-600x400.jpg.webp 600w, https://www.traviet.com/wp-content/uploads/2015/07/doi-tra-bao-loc26-300x200.jpg.webp 300w, https://www.traviet.com/wp-content/uploads/2015/07/doi-tra-bao-loc26-570x380.jpg.webp 570w, https://www.traviet.com/wp-content/uploads/2015/07/doi-tra-bao-loc26.jpg 1980w\" alt=\"Đồi tr&agrave; &ocirc; Long Bảo Lộc - h&aacute;i tr&agrave;\" width=\"900\" height=\"600\" loading=\"lazy\" aria-describedby=\"caption-attachment-1510\" />\n<p id=\"caption-attachment-1510\" class=\"wp-caption-text\">B&uacute;p tr&agrave; &ocirc; long đến ng&agrave;y được thu h&aacute;i</p>\n</div>\n<p><em>Tham khảo :&nbsp;<a href=\"https://www.traviet.com/tea-school/tra-o-long-la-gi/\" target=\"_blank\" rel=\"noopener\">Tr&agrave; &Ocirc; Long l&agrave; g&igrave; ?</a></em></p>\n<h3><span id=\"tra-o-long-bao-loc-%e2%80%93-thien-duong-cua-cac-loai-tra-o-long-dai-loan\" class=\"ez-toc-section\"></span><span id=\"vung-nguyen-lieu-tu-bao-loc-lam-dong\">Tr&agrave; &Ocirc; Long Bảo Lộc &ndash; thi&ecirc;n đường của c&aacute;c loại Tr&agrave; &Ocirc; Long Đ&agrave;i Loan</span></h3>\n<p>Tỉnh L&acirc;m Đồng được biết đến l&agrave; v&ugrave;ng tr&agrave; rộng lớn v&agrave; cho sản lượng tr&agrave; cao nhất cả nước. Đ&acirc;y cũng l&agrave; v&ugrave;ng sản xuất ra tr&agrave; &Ocirc; Long ngon nhất Việt Nam, đặc biệt với những đồn điền trồng tr&agrave; rộng lớn ở th&ocirc;n Cầu Đất v&agrave; th&agrave;nh phố&nbsp;<a href=\"https://vi.wikipedia.org/wiki/B%E1%BA%A3o_L%E1%BB%99c\" target=\"_blank\" rel=\"noreferrer noopener\">Bảo Lộc</a>. Nằm ở độ cao tr&ecirc;n 900m so với mực nước biển, kh&iacute; hậu m&aacute;t mẻ quanh năm n&ecirc;n Bảo Lộc trở th&agrave;nh mảnh đất tr&ugrave; ph&uacute; v&agrave; ph&ugrave; hợp cho việc trồng tr&agrave;.</p>\n<p>Tại Bảo Lộc &ndash; thủ phủ của tr&agrave; &Ocirc; Long, bạn sẽ dễ d&agrave;ng nh&igrave;n thấy những n&ocirc;ng trường tr&agrave; &ocirc; long trải d&agrave;i h&uacute;t tầm mắt. Những quả đồi nối tiếp nhau, xanh mướt, mượt m&agrave;. Hầu hết c&aacute;c đồn điền v&agrave; nh&agrave; m&aacute;y tr&agrave; &Ocirc; Long đều mang dấu ấn của người Đ&agrave;i Loan.</p>\n<p>Theo hiểu biết của m&igrave;nh, 90% tr&agrave; &Ocirc; Long được sản xuất tại Việt Nam được xuất khẩu qua Đ&agrave;i Loan. V&agrave; cũng 90% c&aacute;c nh&agrave; m&aacute;y, đồn điền sản xuất tr&agrave; &Ocirc; Long Việt Nam đều c&oacute; đầu tư từ Đ&agrave;i Loan. Nhu cầu tại Đ&agrave;i Loan lu&ocirc;n ở mức cao, diện t&iacute;ch tr&ecirc;n đảo Đ&agrave;i Loan hạn chế l&agrave; l&yacute; do họ đến Việt Nam. Họ cũng l&agrave; những người giỏi nhất thế giới về tr&agrave; &Ocirc; Long. N&ecirc;n bạn cũng c&oacute; thể dễ d&agrave;ng t&igrave;m được những loại tr&agrave; &Ocirc; Long Đ&agrave;i Loan tại v&ugrave;ng đất n&agrave;y.</p>\n<figure class=\"wp-block-image size-large\"></figure>\n<div id=\"attachment_1493\" class=\"wp-caption alignnone\"><img class=\"size-large wp-image-1493\" src=\"https://www.traviet.com/wp-content/uploads/2015/07/doi-tra-bao-loc9-1024x683.jpg.webp\" sizes=\"(max-width: 900px) 100vw, 900px\" srcset=\"https://www.traviet.com/wp-content/uploads/2015/07/doi-tra-bao-loc9-1024x683.jpg.webp 1024w, https://www.traviet.com/wp-content/uploads/2015/07/doi-tra-bao-loc9-600x400.jpg 600w, https://www.traviet.com/wp-content/uploads/2015/07/doi-tra-bao-loc9-300x200.jpg 300w, https://www.traviet.com/wp-content/uploads/2015/07/doi-tra-bao-loc9-570x380.jpg 570w, https://www.traviet.com/wp-content/uploads/2015/07/doi-tra-bao-loc9.jpg 1980w\" alt=\"Đồi tr&agrave; &ocirc; Long Bảo Lộc - đồi tr&agrave;\" width=\"900\" height=\"600\" loading=\"lazy\" aria-describedby=\"caption-attachment-1493\" /></div>', NULL, NULL, NULL, '<p>B&igrave;nh tr&agrave; loại uống tr&agrave;</p>', NULL, '40,000', '30,000', NULL, 1, '2024-01-15 22:27:32', '2024-01-22 03:36:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_role` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `route` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description_role` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `code_room` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_room` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_room` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_room` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description_room` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keyword_seo_room` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_seo_room` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_seo_room` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_modify_by_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `code_room`, `name_room`, `url_room`, `image_room`, `description_room`, `keyword_seo_room`, `title_seo_room`, `description_seo_room`, `status`, `created_at`, `updated_at`, `create_by_id`, `last_modify_by_id`) VALUES
(1, 'PA', 'Phòng Ăn', 'phong-an', 'storage/files/Banner/19529bd4316cf332aa7d.jpg', '<p>Ph&ograve;ng ăn</p>', 'Phòng,phòng ăn', 'Phòng Ăn', 'Ph&ograve;ng ăn', 1, '2022-08-08 03:21:56', '2022-08-19 01:26:02', NULL, NULL),
(2, 'PK', 'Phòng khách', 'phong-khach', '/storage/files/Banner/8d2d86ab2c13ee4db702.jpg', '<p>Ph&ograve;ng kh&aacute;ch</p>', 'phòng,phòng khách', 'Phòng khách', 'Ph&ograve;ng kh&aacute;ch', 1, '2022-08-08 03:22:36', '2022-08-13 17:12:26', NULL, NULL),
(5, 'PKT', 'Phòng học', 'phong-hoc', '/storage/files/Banner/19529bd4316cf332aa7d.jpg', '<p>Ph&ograve;ng học</p>', NULL, 'Phòng học', '', 1, '2022-08-13 17:58:20', '2022-08-13 17:58:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title_website` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `facebook_social_website` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `googleanaly_social_website` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `messenger_social_website` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `color_general_website` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `zalo_website` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `facebook_website` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `fanpage_website` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `group_website` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `youtube_website` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tiktok_website` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone_website` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `fontsize_general_website` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `icon_general_website` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `logo_general_website` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `colorbg_general_website` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `keyword_seo_website` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `title_seo_website` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description_seo_website` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `image_seo_website` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `address_website` varchar(123) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email_website` varchar(123) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shoppe_website` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by_id` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_modify_by_id` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title_website`, `facebook_social_website`, `googleanaly_social_website`, `messenger_social_website`, `color_general_website`, `zalo_website`, `facebook_website`, `fanpage_website`, `group_website`, `youtube_website`, `tiktok_website`, `phone_website`, `fontsize_general_website`, `icon_general_website`, `logo_general_website`, `colorbg_general_website`, `keyword_seo_website`, `title_seo_website`, `description_seo_website`, `image_seo_website`, `address_website`, `email_website`, `shoppe_website`, `created_at`, `updated_at`, `create_by_id`, `last_modify_by_id`) VALUES
(1, 'VIỆT LONG TRÀ - ĐẬM ĐÀ HƯƠNG VỊ TRÀ Ô LONG VIỆT', '635714974759161', 'G-FQ16KHMWCB', '841329056038914', '#109412', 'https://zalo.me/0939222522', 'https://www.facebook.com/traoolongtaidanang', 'https://www.facebook.com/traoolongtaidanang', 'https://www.facebook.com/traoolongtaidanang', NULL, NULL, '0939222522', '3', '/storage/files/Logo/LOGOPN.png', 'http://localhost:8000/storage/files/logo/65ae46808fdee.jpg', NULL, 'Trà,Trà Ô Long,Việt Long Trà', 'VIỆT LONG TRÀ - ĐẬM ĐÀ HƯƠNG VỊ TRÀ Ô LONG VIỆT', 'Ch&uacute;ng t&ocirc;i l&agrave; một cửa h&agrave;ng tr&agrave; trực tuyến cung cấp cho kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n thế giới c&aacute;c loại tr&agrave; chất lượng cao v&agrave; gi&aacute; cả phải chăng do ch&iacute;nh ch&uacute;ng t&ocirc;i sản xuất.', 'http://localhost:8000/storage/files/sanpham/65ae3a8e69269.jpg', '164A Nguyễn Chí Thanh, Phước Ninh, Hải Châu, Đà Nẵng, Vietnam', 'vietlongtra@gmail.com', 'https://shopee.vn/vietlongtradanang', '2022-08-21 01:10:08', '2024-01-24 00:02:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `keyword_slider` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `description_slider` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `image_slider` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `tbutton_slider` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `cbutton_slider` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `url_slider` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `location_slider` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by_id` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_modify_by_id` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `keyword_slider`, `description_slider`, `image_slider`, `tbutton_slider`, `cbutton_slider`, `url_slider`, `status`, `location_slider`, `created_at`, `updated_at`, `create_by_id`, `last_modify_by_id`) VALUES
(5, '<h1><span style=\"font-size: 48pt; color: #463034;\">VIỆT LONG TR&Agrave;</span></h1>', '<h4 data-caption-animate=\"fadeGel\" data-caption-delay=\"300\"><span style=\"color: #017d03;\">ĐẬM Đ&Agrave; HƯƠNG VỊ TR&Agrave; &Ocirc; LONG VIỆT</span></h4>', 'http://localhost:8000/storage/files/slider/65b0b391cb10d.png', 'Mua ngay', NULL, 'https://shopee.vn/vietlongtradanang', 1, 1, '2022-08-23 21:33:54', '2024-01-24 00:04:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name_user` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sex_user` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email_user` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone_user` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `position_user` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `users_active` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by_id` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_modify_by_id` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `name_user`, `sex_user`, `email_user`, `phone_user`, `position_user`, `users_active`, `created_at`, `updated_at`, `create_by_id`, `last_modify_by_id`) VALUES
(1, 'Admin', '$2y$10$5DLGJh9S2hhl.CPu/oSBueFYuqPihRRsT.7GffHnc5IoodnPUaq.a', 'Admin', '1', 'Admin@gmail.com', '012563256211', 'Giám đốc', 1, '2021-08-16 20:08:39', '2024-01-15 22:03:19', '1', '2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
