-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 04, 2024 at 11:09 PM
-- Server version: 10.3.39-MariaDB-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vietlong_tra`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_banner` varchar(120) DEFAULT NULL,
  `name_banner` varchar(120) DEFAULT NULL,
  `description_banner` text DEFAULT NULL,
  `image_banner` text DEFAULT NULL,
  `url_banner` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by_id` varchar(120) DEFAULT NULL,
  `last_modify_by_id` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `categorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code_category` varchar(120) NOT NULL,
  `name_category` varchar(120) NOT NULL,
  `url_category` varchar(120) NOT NULL,
  `image_category` text DEFAULT NULL,
  `description_category` text DEFAULT NULL,
  `keyword_seo_category` varchar(120) DEFAULT NULL,
  `title_seo_category` varchar(120) DEFAULT NULL,
  `description_seo_category` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by_id` varchar(120) DEFAULT NULL,
  `last_modify_by_id` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `code_category`, `name_category`, `url_category`, `image_category`, `description_category`, `keyword_seo_category`, `title_seo_category`, `description_seo_category`, `status`, `created_at`, `updated_at`, `create_by_id`, `last_modify_by_id`) VALUES
(8, 'TRAOLONG', 'Trà Ô Long', 'tra-o-long', '/storage/files/danhmuc/65ae3fce77e41.jpg', NULL, 'Trà Ô Long', 'Trà Ô Long', '', 1, '2024-01-22 03:14:02', '2024-01-24 08:04:51', NULL, NULL),
(9, 'TRAXANH', 'Trà Xanh', 'tra-xanh', '/storage/files/danhmuc/65af40c5d4216.jpg', NULL, 'Trà Xanh', 'Trà Xanh', '', 1, '2024-01-22 03:14:49', '2024-01-24 08:05:03', NULL, NULL),
(10, 'TRAPHONHHI', 'Trà Phổ Nhĩ', 'tra-pho-nhi', '/storage/files/danhmuc/65af40c6035a9.jpg', NULL, 'Trà Phổ Nhĩ', 'Trà Phổ Nhĩ', '', 1, '2024-01-22 03:15:24', '2024-01-24 08:05:12', NULL, NULL),
(11, 'CHENTRA', 'Chén Trà', 'chen-tra', '/storage/files/danhmuc/65b39aae103ac.jpg', NULL, NULL, 'Chén Trà', '', 1, '2024-01-26 04:43:33', '2024-01-26 04:43:38', NULL, NULL),
(12, 'AMTRA', 'Ấm Trà Tử Sa', 'am-tra-tu-sa', '/storage/files/danhmuc/65c212d05a2d9.jpg', NULL, 'Ấm trà,Tử Sa', 'Ấm Trà Tử Sa', '', 1, '2024-01-28 06:38:20', '2024-02-06 04:07:01', NULL, NULL),
(13, 'KHAYTRA', 'Khay Trà', 'khay-tra', '/storage/files/danhmuc/65c2022c820e9.jpg', NULL, 'Khay Trà', 'Khay Trà', '', 1, '2024-01-28 06:38:45', '2024-02-06 02:56:11', NULL, NULL),
(14, 'DUNGCU', 'Dụng Cụ Trà Đạo', 'dung-cu-tra-dao', '/storage/files/danhmuc/65b658b95bc0a.jpg', NULL, 'Dụng cụ', 'Dụng Cụ Trà Đạo', '', 0, '2024-01-28 06:39:17', '2024-02-06 09:10:01', NULL, NULL),
(15, 'DOCHOI', 'Đồ Chơi Bàn Trà', 'do-choi-ban-tra', '/storage/files/danhmuc/65b658b95bc0a.jpg', NULL, 'Đồ chơi,Bàn trà', 'Đồ Chơi Bàn Trà', '', 0, '2024-01-28 06:40:04', '2024-02-06 09:09:50', NULL, NULL),
(16, 'HOPQUATANG', 'Hộp Quà Tặng', 'hop-qua-tang', '/storage/files/danhmuc/65b658b95bc0a.jpg', NULL, 'Hộp quà', 'Hộp Quà Tặng', '', 0, '2024-01-28 06:40:34', '2024-02-06 09:09:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mapping_category_product`
--

CREATE TABLE `mapping_category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapping_category_product`
--

INSERT INTO `mapping_category_product` (`id`, `id_category`, `id_product`) VALUES
(87, 12, 43),
(92, 11, 45),
(93, 11, 44),
(95, 14, 47),
(97, 14, 49),
(98, 11, 50),
(99, 11, 51),
(100, 11, 52),
(116, 14, 48),
(117, 13, 48),
(158, 11, 83),
(159, 11, 84),
(166, 8, 77),
(168, 8, 16),
(170, 8, 17),
(171, 8, 15),
(172, 8, 18),
(173, 12, 89),
(174, 12, 87),
(175, 12, 88),
(176, 15, 85),
(178, 12, 90),
(180, 12, 91),
(182, 11, 19),
(183, 11, 20),
(184, 11, 21),
(185, 11, 22),
(186, 11, 23),
(187, 11, 24),
(188, 12, 93),
(189, 12, 92),
(191, 12, 94),
(192, 12, 95),
(193, 12, 96),
(195, 12, 97),
(196, 12, 98),
(197, 14, 64),
(198, 14, 54),
(199, 14, 53),
(200, 15, 71),
(201, 14, 63),
(202, 12, 60),
(203, 14, 72),
(206, 14, 99),
(207, 14, 100),
(208, 13, 101),
(209, 14, 102),
(210, 13, 103),
(211, 13, 104),
(213, 13, 105),
(214, 14, 55),
(215, 14, 56),
(216, 12, 65),
(217, 12, 57),
(218, 14, 73),
(219, 12, 61),
(220, 12, 62),
(221, 12, 58),
(222, 12, 59),
(223, 14, 75),
(224, 14, 74),
(225, 13, 70),
(226, 13, 69),
(227, 13, 68),
(228, 13, 67),
(229, 14, 76),
(230, 8, 78),
(231, 8, 82),
(232, 8, 79),
(233, 12, 42),
(234, 12, 41),
(235, 12, 40),
(236, 11, 37),
(237, 11, 36),
(238, 11, 35),
(239, 11, 34),
(240, 11, 33),
(241, 11, 32),
(242, 8, 81),
(243, 8, 80),
(244, 12, 106),
(245, 12, 107),
(246, 12, 108),
(247, 12, 109),
(248, 12, 110),
(249, 12, 111),
(250, 12, 112);

-- --------------------------------------------------------

--
-- Table structure for table `mapping_product_image`
--

CREATE TABLE `mapping_product_image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_product` int(11) NOT NULL,
  `main_image` int(11) NOT NULL DEFAULT 0,
  `url_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapping_product_image`
--

INSERT INTO `mapping_product_image` (`id`, `id_product`, `main_image`, `url_image`) VALUES
(224, 43, 1, '/storage/files/sanpham/AM_TU_SA/65e00091aa4d2.jpeg'),
(225, 43, 0, '/storage/files/sanpham/AM_TU_SA/65e00091cf79c.jpeg'),
(237, 45, 1, '/storage/files/sanpham/CHEN_SU_CANH_DUC/65e0490eb77a8.jpeg'),
(238, 45, 0, '/storage/files/sanpham/CHEN_SU_CANH_DUC/65e0490ebb833.jpeg'),
(239, 44, 1, '/storage/files/sanpham/CHEN_SU_CANH_DUC/65e0471f97ebe.jpeg'),
(240, 44, 0, '/storage/files/sanpham/CHEN_SU_CANH_DUC/65e0471f9968d.jpeg'),
(241, 44, 0, '/storage/files/sanpham/CHEN_SU_CANH_DUC/65e0471fca41c.jpeg'),
(242, 46, 1, '/storage/files/sanpham/CHEN_NON_SU/65e04bd6cf6cb.jpeg'),
(243, 46, 0, '/storage/files/sanpham/CHEN_NON_SU/65e04bd6cf55c.jpeg'),
(244, 46, 0, '/storage/files/sanpham/CHEN_NON_SU/65e04bd676d98.jpeg'),
(249, 47, 1, '/storage/files/sanpham/65e06e640ded5.jpeg'),
(250, 47, 0, '/storage/files/sanpham/65e06e641f069.jpeg'),
(251, 47, 0, '/storage/files/sanpham/65e077d8c3772.jpeg'),
(252, 47, 0, '/storage/files/sanpham/65e077d8c5455.jpeg'),
(256, 49, 1, '/storage/files/sanpham/65e088a26d212.jpg'),
(257, 49, 0, '/storage/files/sanpham/65e088a719798.jpg'),
(258, 49, 0, '/storage/files/sanpham/65e088ab4dfdc.jpg'),
(259, 50, 1, '/storage/files/sanpham/65e18517cc0a6.jpg'),
(260, 50, 0, '/storage/files/sanpham/65e185107473f.jpg'),
(261, 50, 0, '/storage/files/sanpham/65e1851f074a0.jpg'),
(262, 50, 0, '/storage/files/sanpham/65e1852329c71.jpg'),
(263, 51, 1, '/storage/files/sanpham/65e1941fa268c.jpg'),
(264, 51, 0, '/storage/files/sanpham/65e1941827fd5.jpg'),
(265, 51, 0, '/storage/files/sanpham/65e1942583691.jpg'),
(266, 51, 0, '/storage/files/sanpham/65e19428d2de7.jpg'),
(270, 52, 1, '/storage/files/sanpham/65e19b45e71b1.jpg'),
(271, 52, 0, '/storage/files/sanpham/65e19b52ba68f.jpg'),
(272, 52, 0, '/storage/files/sanpham/65e19b4acd225.jpg'),
(324, 48, 1, '/storage/files/sanpham/65e084e891630.jpg'),
(325, 48, 0, '/storage/files/sanpham/65e084ee02aed.jpg'),
(326, 48, 0, '/storage/files/sanpham/65e084f2ca54d.jpg'),
(444, 83, 1, '/storage/files/sanpham/65e2de7789e31.jpg'),
(445, 83, 0, '/storage/files/sanpham/65e2de8ba9655.jpg'),
(446, 84, 1, '/storage/files/sanpham/65e2e3f31c58e.jpg'),
(447, 84, 0, '/storage/files/sanpham/65e2e4fb30d2f.jpg'),
(466, 77, 1, '/storage/files/sanpham/TRA_OOLONG_XUAN/65e2a99ac90f4.jpeg'),
(467, 77, 0, '/storage/files/sanpham/TRA_OOLONG_XUAN/65e2a99b24843.jpeg'),
(468, 77, 0, '/storage/files/sanpham/TRA_OOLONG_XUAN/65e2a99b37d72.jpeg'),
(469, 77, 0, '/storage/files/sanpham/TRA_OOLONG_XUAN/65e2a9a55bd12.jpeg'),
(475, 16, 1, '/storage/files/sanpham/O_LONG_KIM_TUYEN/65b397498363f.jpg'),
(476, 16, 0, '/storage/files/sanpham/O_LONG_KIM_TUYEN/65e2a60b37529.jpeg'),
(477, 16, 0, '/storage/files/sanpham/O_LONG_KIM_TUYEN/65e2a60adfc89.jpeg'),
(482, 17, 1, '/storage/files/sanpham/O_LONG_NHAN_SAM/65e2a6b07e316.jpeg'),
(483, 17, 0, '/storage/files/sanpham/O_LONG_NHAN_SAM/65e2a6b00f43a.jpeg'),
(484, 17, 0, '/storage/files/sanpham/O_LONG_NHAN_SAM/65e2a6b00816d.jpeg'),
(485, 17, 0, '/storage/files/sanpham/O_LONG_NHAN_SAM/65b3981c2d35c.jpg'),
(486, 15, 1, '/storage/files/sanpham/O_LONG_BACH_LONG/65b394f93de82.jpg'),
(487, 15, 0, '/storage/files/sanpham/O_LONG_BACH_LONG/65e2a57b3fd59.jpeg'),
(488, 15, 0, '/storage/files/sanpham/O_LONG_BACH_LONG/65e2a57b861d7.jpeg'),
(489, 15, 0, '/storage/files/sanpham/O_LONG_BACH_LONG/65e2a57b11633.jpeg'),
(490, 15, 0, '/storage/files/sanpham/O_LONG_BACH_LONG/65e2a57b8629e.jpeg'),
(491, 18, 1, '/storage/files/sanpham/O_LONG_LAO/65b3990e86ac8.jpg'),
(492, 18, 0, '/storage/files/sanpham/O_LONG_LAO/65e2a7f62f1b5.jpeg'),
(493, 18, 0, '/storage/files/sanpham/O_LONG_LAO/65e2a7f651aad.jpeg'),
(494, 18, 0, '/storage/files/sanpham/O_LONG_LAO/65e2a7f656ee0.jpeg'),
(495, 18, 0, '/storage/files/sanpham/O_LONG_LAO/65e2a7f65902a.jpeg'),
(496, 89, 1, '/storage/files/sanpham/AM_TU_SA/65e314106e19f.jpg'),
(497, 89, 0, '/storage/files/sanpham/AM_TU_SA/65e314106f129.jpg'),
(498, 89, 0, '/storage/files/sanpham/AM_TU_SA/65e314106f19e.jpg'),
(499, 87, 1, '/storage/files/sanpham/AM_TU_SA/65e30b724b358.jpg'),
(500, 87, 0, '/storage/files/sanpham/AM_TU_SA/65e30b724c3b5.jpg'),
(501, 88, 1, '/storage/files/sanpham/AM_TU_SA/65e312f51b8df.jpg'),
(502, 88, 0, '/storage/files/sanpham/AM_TU_SA/65e312f51e297.jpg'),
(503, 85, 1, '/storage/files/sanpham/PET_BAN_TRA/65e306ba4c962.jpg'),
(504, 85, 0, '/storage/files/sanpham/PET_BAN_TRA/65e306ba511e5.jpg'),
(505, 85, 0, '/storage/files/sanpham/PET_BAN_TRA/65e306ba54727.jpg'),
(510, 90, 1, '/storage/files/sanpham/65e40af3a0564.jpg'),
(511, 90, 0, '/storage/files/sanpham/65e40b0391b8b.jpg'),
(512, 90, 0, '/storage/files/sanpham/65e40afb9fc38.jpg'),
(516, 91, 1, '/storage/files/sanpham/65e40fe733d23.jpg'),
(517, 91, 0, '/storage/files/sanpham/65e40fed437c9.jpg'),
(518, 91, 0, '/storage/files/sanpham/65e40ff2b289c.jpg'),
(522, 19, 1, '/storage/files/sanpham/CHEN_TU_SA_TRANG_MEN/65b39b60a4b46.jpg'),
(523, 20, 1, '/storage/files/sanpham/CHEN_TU_SA/65b39c80a1f55.jpg'),
(524, 21, 1, '/storage/files/sanpham/CHEN_SU_HOA_MEN/65c255f12b33c.jpg'),
(525, 22, 1, '/storage/files/sanpham/CHEN_SU_MEN_HOA_BIEN/65c25762aa27e.jpg'),
(526, 23, 1, '/storage/files/sanpham/CHEN_NON_MEN_HOA_BIEN_XANH/65c25982ab536.jpg'),
(527, 24, 1, '/storage/files/sanpham/CHEN_NON_MEN_HOA_BIEN_XANH/65c25a72db715.jpg'),
(528, 93, 1, '/storage/files/sanpham/65e423d9d1a48.jpg'),
(529, 93, 0, '/storage/files/sanpham/65e423eb2789d.jpg'),
(530, 93, 0, '/storage/files/sanpham/65e423e443638.jpg'),
(531, 92, 1, '/storage/files/sanpham/65e41f542d8cb.jpg'),
(532, 92, 0, '/storage/files/sanpham/65e41f5b24531.jpg'),
(533, 92, 0, '/storage/files/sanpham/65e41f606ce6d.jpg'),
(535, 94, 1, '/storage/files/sanpham/65e42a0058703.jpg'),
(536, 95, 1, '/storage/files/sanpham/65e42e25c6fc6.jpg'),
(537, 96, 1, '/storage/files/sanpham/65e433e24cde7.jpg'),
(538, 96, 0, '/storage/files/sanpham/65e433e78f730.jpg'),
(539, 97, 1, '/storage/files/sanpham/65e437b6e2a7e.jpg'),
(540, 98, 1, '/storage/files/sanpham/65e438b422cf1.jpg'),
(541, 64, 1, '/storage/files/sanpham/65e1c3b3908be.jpg'),
(542, 64, 0, '/storage/files/sanpham/65e1c3b39166d.jpg'),
(543, 64, 0, '/storage/files/sanpham/65e1c3b39459a.jpg'),
(544, 64, 0, '/storage/files/sanpham/65e1c3b39637a.jpg'),
(545, 54, 1, '/storage/files/sanpham/65e1b34feb331.jpg'),
(546, 54, 0, '/storage/files/sanpham/65e1b35006f94.jpg'),
(547, 54, 0, '/storage/files/sanpham/65e1b3500fbdd.jpg'),
(548, 53, 1, '/storage/files/sanpham/65e1b0ab3d0fd.jpg'),
(549, 53, 0, '/storage/files/sanpham/65e1b0ab506c6.jpg'),
(550, 53, 0, '/storage/files/sanpham/65e1b0ab5532b.jpg'),
(551, 71, 1, '/storage/files/sanpham/PET_BAN_TRA/65e1ce2fb7e70.jpg'),
(552, 63, 1, '/storage/files/sanpham/65e1c243c80aa.jpg'),
(553, 63, 0, '/storage/files/sanpham/65e1c243daa7a.jpg'),
(554, 63, 0, '/storage/files/sanpham/65e1c24433e99.jpg'),
(555, 63, 0, '/storage/files/sanpham/65e1c24436440.jpg'),
(556, 63, 0, '/storage/files/sanpham/65e1c244636af.jpg'),
(557, 60, 1, '/storage/files/sanpham/AM_TU_SA/65e1be8cc29fc.jpg'),
(558, 60, 0, '/storage/files/sanpham/AM_TU_SA/65e1be8e6172d.jpg'),
(559, 72, 1, '/storage/files/sanpham/ANG_TRA/65e1cf709962d.jpg'),
(560, 72, 0, '/storage/files/sanpham/ANG_TRA/65e1cf70b0087.jpg'),
(561, 72, 0, '/storage/files/sanpham/ANG_TRA/65e1cf70b0127.jpg'),
(562, 72, 0, '/storage/files/sanpham/ANG_TRA/65e1cf70b02bd.jpg'),
(563, 72, 0, '/storage/files/sanpham/ANG_TRA/65e1cf70b076a.jpg'),
(566, 99, 1, '/storage/files/sanpham/TRA_CU/65e47397a6f82.jpeg'),
(567, 100, 1, '/storage/files/sanpham/TRA_CU/65e474672ec93.jpeg'),
(568, 101, 1, '/storage/files/sanpham/KHAY_TRA/65e47822cfd36.jpeg'),
(569, 102, 1, '/storage/files/sanpham/TRA_CU/65e479f83b9e2.jpeg'),
(570, 103, 1, '/storage/files/sanpham/KHAY_TRA/65e47bbad6210.jpeg'),
(571, 104, 1, '/storage/files/sanpham/KHAY_TRA/65e47d5d73201.jpeg'),
(573, 105, 1, '/storage/files/sanpham/KHAY_TRA/65e47f76a9a36.jpeg'),
(574, 55, 1, '/storage/files/sanpham/65e1b47441e9c.jpg'),
(575, 55, 0, '/storage/files/sanpham/65e1b4745042b.jpg'),
(576, 55, 0, '/storage/files/sanpham/65e1b47457677.jpg'),
(577, 55, 0, '/storage/files/sanpham/65e1b4745ee74.jpg'),
(578, 55, 0, '/storage/files/sanpham/65e1b47468aa6.jpg'),
(579, 55, 0, '/storage/files/sanpham/65e1b47498a4c.jpg'),
(580, 55, 0, '/storage/files/sanpham/65e1b474ac9cb.jpg'),
(581, 55, 0, '/storage/files/sanpham/65e1b474cb7fa.jpg'),
(582, 56, 1, '/storage/files/sanpham/65e1b5602eaf3.jpg'),
(583, 56, 0, '/storage/files/sanpham/65e1b560304c4.jpg'),
(584, 56, 0, '/storage/files/sanpham/65e1b5603bd29.jpg'),
(585, 56, 0, '/storage/files/sanpham/65e1b560409be.jpg'),
(586, 65, 1, '/storage/files/sanpham/AM_TU_SA/65e1c4d862224.jpg'),
(587, 65, 0, '/storage/files/sanpham/AM_TU_SA/65e1c4d890a9c.jpg'),
(588, 57, 1, '/storage/files/sanpham/AM_TU_SA/65e1b994242d2.jpg'),
(589, 57, 0, '/storage/files/sanpham/AM_TU_SA/65e1b9943ed6d.jpg'),
(590, 57, 0, '/storage/files/sanpham/AM_TU_SA/65e1b99445bfe.jpg'),
(591, 73, 1, '/storage/files/sanpham/XONG_TRAM/65e1d04d86673.jpg'),
(592, 61, 1, '/storage/files/sanpham/AM_TU_SA/65e1bf86f26b1.jpg'),
(593, 61, 0, '/storage/files/sanpham/AM_TU_SA/65e1bf86eb0cb.jpg'),
(594, 61, 0, '/storage/files/sanpham/AM_TU_SA/65e1bf8719b81.jpg'),
(595, 62, 1, '/storage/files/sanpham/AM_TU_SA/65e1c137bde92.jpg'),
(596, 62, 0, '/storage/files/sanpham/AM_TU_SA/65e1c137cb24f.jpg'),
(597, 62, 0, '/storage/files/sanpham/AM_TU_SA/65e1c137e9c9a.jpg'),
(598, 58, 1, '/storage/files/sanpham/AM_TU_SA/65e1bb4e3f3a9.jpg'),
(599, 58, 0, '/storage/files/sanpham/AM_TU_SA/65e1bb4e399f2.jpg'),
(600, 58, 0, '/storage/files/sanpham/AM_TU_SA/65e1bb4e2477c.jpg'),
(601, 59, 1, '/storage/files/sanpham/AM_TU_SA/65e1bd00dc910.jpg'),
(602, 59, 0, '/storage/files/sanpham/AM_TU_SA/65e1bd00f079f.jpg'),
(603, 59, 0, '/storage/files/sanpham/AM_TU_SA/65e1bd010233b.jpg'),
(604, 75, 1, '/storage/files/sanpham/XONG_TRAM/65e1d1eca1dd2.jpg'),
(605, 74, 1, '/storage/files/sanpham/XONG_TRAM/65e1d0f21e2f9.jpg'),
(606, 74, 0, '/storage/files/sanpham/XONG_TRAM/65e1d0f224483.jpg'),
(607, 74, 0, '/storage/files/sanpham/XONG_TRAM/65e1d0f22e967.jpg'),
(608, 70, 1, '/storage/files/sanpham/KHAY_TRA/65e1cb8931f27.jpg'),
(609, 70, 0, '/storage/files/sanpham/KHAY_TRA/65e1cb8946c0b.jpg'),
(610, 70, 0, '/storage/files/sanpham/KHAY_TRA/65e1cb894d539.jpg'),
(611, 70, 0, '/storage/files/sanpham/KHAY_TRA/65e1cb894e205.jpg'),
(612, 70, 0, '/storage/files/sanpham/KHAY_TRA/65e1cb8989a52.jpg'),
(613, 70, 0, '/storage/files/sanpham/KHAY_TRA/65e1cb894e20e.jpg'),
(614, 70, 0, '/storage/files/sanpham/KHAY_TRA/65e1cb89c072e.jpg'),
(615, 69, 1, '/storage/files/sanpham/KHAY_TRA/65e1caa93712d.jpg'),
(616, 68, 1, '/storage/files/sanpham/KHAY_TRA/65e1c9f14ca61.jpg'),
(617, 67, 1, '/storage/files/sanpham/KHAY_TRA/65e1c7954263d.jpg'),
(618, 67, 0, '/storage/files/sanpham/KHAY_TRA/65e1c7959496c.jpg'),
(619, 76, 1, '/storage/files/sanpham/XONG_TRAM/65e1d296b78d0.jpg'),
(620, 76, 0, '/storage/files/sanpham/XONG_TRAM/65e1d296b8473.jpg'),
(621, 76, 0, '/storage/files/sanpham/XONG_TRAM/65e1d296e0b75.jpg'),
(622, 76, 0, '/storage/files/sanpham/XONG_TRAM/65e1d296e792f.jpg'),
(623, 78, 1, '/storage/files/sanpham/HONG_Diep-Tra/65e2aa8983ac1.jpeg'),
(624, 78, 0, '/storage/files/sanpham/HONG_Diep-Tra/65e2aabc1264c.jpeg'),
(625, 78, 0, '/storage/files/sanpham/HONG_Diep-Tra/65e2aabbcb165.jpeg'),
(626, 78, 0, '/storage/files/sanpham/HONG_Diep-Tra/65e2aa8ad32a3.jpeg'),
(627, 78, 0, '/storage/files/sanpham/HONG_Diep-Tra/65e2aabc12656.jpeg'),
(628, 78, 0, '/storage/files/sanpham/HONG_Diep-Tra/65e2aabc12681.jpeg'),
(629, 82, 1, '/storage/files/sanpham/Oolong-tu-quy/65e2b7fad1c00.jpeg'),
(630, 82, 0, '/storage/files/sanpham/Oolong-tu-quy/65e2b7fb43d39.jpeg'),
(631, 82, 0, '/storage/files/sanpham/Oolong-tu-quy/65e2b7fb3276b.jpeg'),
(632, 82, 0, '/storage/files/sanpham/Oolong-tu-quy/65e2b7fb35b40.jpeg'),
(633, 82, 0, '/storage/files/sanpham/Oolong-tu-quy/65e2b7fb43c92.jpeg'),
(634, 79, 1, '/storage/files/sanpham/DONG_PHUONG_MY_NHAN/65e2aeb0a2df7.jpeg'),
(635, 79, 0, '/storage/files/sanpham/DONG_PHUONG_MY_NHAN/65e2ae4e741cf.jpeg'),
(636, 79, 0, '/storage/files/sanpham/DONG_PHUONG_MY_NHAN/65e2ae4e48dc1.jpeg'),
(637, 79, 0, '/storage/files/sanpham/DONG_PHUONG_MY_NHAN/65e2ae2f18469.jpeg'),
(638, 79, 0, '/storage/files/sanpham/DONG_PHUONG_MY_NHAN/65e2ae4ff087c.jpeg'),
(639, 79, 0, '/storage/files/sanpham/DONG_PHUONG_MY_NHAN/65e2ae4fc12db.png'),
(640, 42, 1, '/storage/files/sanpham/AM_TU_SA/65dffe471e212.jpeg'),
(641, 42, 0, '/storage/files/sanpham/AM_TU_SA/65dffe47202f7.jpeg'),
(642, 41, 1, '/storage/files/sanpham/AM_TU_SA/65dffc1f4366a.jpeg'),
(643, 41, 0, '/storage/files/sanpham/AM_TU_SA/65dffc1f2cac9.jpeg'),
(644, 41, 0, '/storage/files/sanpham/AM_TU_SA/65dffc1f78f8f.jpeg'),
(645, 40, 1, '/storage/files/sanpham/AM_TU_SA/65dff7670969f.jpeg'),
(646, 40, 0, '/storage/files/sanpham/AM_TU_SA/65dff76710ad2.jpeg'),
(647, 40, 0, '/storage/files/sanpham/AM_TU_SA/65dff7671afa3.jpeg'),
(648, 37, 1, '/storage/files/sanpham/CHEN_SU_MEN_HOA_BIEN/65c266135062c.jpg'),
(649, 36, 1, '/storage/files/sanpham/CHEN_SU_MEN_HOA_BIEN/65c26591d16ca.jpg'),
(650, 35, 1, '/storage/files/sanpham/CHEN_SU_MEN_HOA_BIEN/65c264fb1c514.jpg'),
(651, 35, 0, '/storage/files/sanpham/CHEN_SU_MEN_HOA_BIEN/65e2b16aa81cb.jpeg'),
(652, 35, 0, '/storage/files/sanpham/CHEN_SU_MEN_HOA_BIEN/65e2b16abf5fd.jpeg'),
(653, 34, 1, '/storage/files/sanpham/CHEN_SU_MEN_HOA_BIEN/65c264428d227.jpg'),
(654, 34, 0, '/storage/files/sanpham/CHEN_SU_MEN_HOA_BIEN/65e2b16ab18b0.jpeg'),
(655, 34, 0, '/storage/files/sanpham/CHEN_SU_MEN_HOA_BIEN/65e2b16ab7ebb.jpeg'),
(656, 33, 1, '/storage/files/sanpham/CHEN_SU_MEN_HOA_BIEN/65c2629c68d22.jpg'),
(657, 33, 0, '/storage/files/sanpham/CHEN_SU_MEN_HOA_BIEN/65e2b16ab7ee2.jpeg'),
(658, 32, 1, '/storage/files/sanpham/CHEN_SU_CANH_DUC/65c26183542cb.jpg'),
(659, 32, 0, '/storage/files/sanpham/CHEN_SU_CANH_DUC/65e2b0a5bd023.jpeg'),
(660, 81, 1, '/storage/files/sanpham/Thiet-quan-am/65e2b67663c87.jpeg'),
(661, 81, 0, '/storage/files/sanpham/Thiet-quan-am/65e2b6766a10f.jpeg'),
(662, 81, 0, '/storage/files/sanpham/Thiet-quan-am/65e2b6769c45b.jpeg'),
(663, 81, 0, '/storage/files/sanpham/Thiet-quan-am/65e2b676b1b00.jpeg'),
(664, 81, 0, '/storage/files/sanpham/Thiet-quan-am/65e2b6768c8f1.jpeg'),
(665, 81, 0, '/storage/files/sanpham/Thiet-quan-am/65e2b67696a22.jpeg'),
(666, 80, 1, '/storage/files/sanpham/Oolong-sua/65e2b4fe7c821.jpeg'),
(667, 80, 0, '/storage/files/sanpham/Oolong-sua/65e2b4fe09c35.jpeg'),
(668, 80, 0, '/storage/files/sanpham/Oolong-sua/65e2b4fe23a90.jpeg'),
(669, 80, 0, '/storage/files/sanpham/Oolong-sua/65e2b4fe827c8.jpeg'),
(670, 80, 0, '/storage/files/sanpham/Oolong-sua/65e2b4fe7c012.jpeg'),
(673, 106, 1, '/storage/files/sanpham/65e53a3ce564c.jpg'),
(674, 106, 0, '/storage/files/sanpham/65e53a41df834.jpg'),
(675, 107, 1, '/storage/files/sanpham/65e53c4095be3.jpg'),
(676, 108, 1, '/storage/files/sanpham/65e53e11f2b65.jpg'),
(677, 109, 1, '/storage/files/sanpham/65e54158b2199.jpg'),
(678, 110, 1, '/storage/files/sanpham/65e5734d40f38.jpg'),
(679, 110, 0, '/storage/files/sanpham/65e573584c65b.jpg'),
(680, 111, 1, '/storage/files/sanpham/65e57715c80c7.jpg'),
(681, 112, 1, '/storage/files/sanpham/65e5794956742.jpg'),
(682, 112, 0, '/storage/files/sanpham/65e57951c4e25.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mapping_role_user`
--

CREATE TABLE `mapping_role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_role` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mapping_room_category`
--

CREATE TABLE `mapping_room_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_room` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code_post` varchar(120) NOT NULL,
  `name_post` varchar(120) NOT NULL,
  `url_post` varchar(120) NOT NULL,
  `image_post` text DEFAULT NULL,
  `description_post` text DEFAULT NULL,
  `content_post` text DEFAULT NULL,
  `keyword_seo_post` varchar(120) DEFAULT NULL,
  `title_seo_post` varchar(120) DEFAULT NULL,
  `description_seo_post` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 3 COMMENT '3- Blog, 1- Info, 2- Contact',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by_id` varchar(120) DEFAULT NULL,
  `last_modify_by_id` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `code_post`, `name_post`, `url_post`, `image_post`, `description_post`, `content_post`, `keyword_seo_post`, `title_seo_post`, `description_seo_post`, `status`, `type`, `created_at`, `updated_at`, `create_by_id`, `last_modify_by_id`) VALUES
(1, 'info', 'info', 'info', NULL, '<p>C&ocirc;ng ty ch&uacute;ng t&ocirc;i l&agrave; nh&agrave; cung cấp số 1 c&aacute;c sản phẩm tr&agrave; tốt nhất. Ch&uacute;ng t&ocirc;i đảm bảo kinh nghiệm uống tr&agrave; tốt nhất!</p>\n<h4 style=\"text-align: center;\">Nhiệm vụ của ch&uacute;ng t&ocirc;i</h4>\n<p style=\"text-align: center;\">Nh&oacute;m ch&uacute;ng t&ocirc;i mong muốn mang đến cho bạn thế giới những t&aacute;ch tr&agrave; tốt nhất thế giới v&agrave; chia sẻ cuộc sống tr&agrave; m&agrave; ch&uacute;ng t&ocirc;i y&ecirc;u th&iacute;ch.</p>\n<h4 style=\"text-align: center;\">Đội chuy&ecirc;n nghiệp</h4>\n<p>Trong những năm qua, ch&uacute;ng t&ocirc;i đ&atilde; tập hợp đội ngũ chuy&ecirc;n gia tr&agrave; chuy&ecirc;n dụng.</p>\n<h4 style=\"text-align: center;\">Phạm vi sản phẩm của ch&uacute;ng t&ocirc;i</h4>\n<p>Ch&uacute;ng t&ocirc;i cung cấp một loạt c&aacute;c loại tr&agrave; sản xuất của ch&uacute;ng t&ocirc;i v&agrave; bởi c&aacute;c nh&agrave; sản xuất kh&aacute;c.</p>\n<p>Tại Trung t&acirc;m b&aacute;n h&agrave;ng tr&agrave; của ch&uacute;ng t&ocirc;i, bạn kh&ocirc;ng chỉ được chọn trong số c&aacute;c thương hiệu tr&agrave; tốt nhất v&agrave; rộng nhất m&agrave; c&ograve;n c&oacute; thể thấy sự đa dạng v&agrave; đa dạng trong tất cả c&aacute;c loại tr&agrave; phổ biến.</p>', NULL, 'Giới thiệu,About', 'Giới thiệu Trà Việt Long', 'C&ocirc;ng ty ch&uacute;ng t&ocirc;i l&agrave; nh&agrave; cung cấp số 1 c&aacute;c sản phẩm tr&agrave; tốt nhất. Ch&uacute;ng t&ocirc;i đảm bảo kinh nghiệm uống tr&agrave; tốt nhất! Ch&uacute;ng t&ocirc;i l&agrave; một cửa h&agrave;ng tr&agrave; trực tuyến cung cấp cho kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n thế giới c&aacute;c loại tr&agrave; chất lượng cao v&agrave; gi&aacute; cả phải chăng do ch&iacute;nh ch&uacute;ng t&ocirc;i sản xuất. Nhiệm vụ của ch&uacute;ng t&ocirc;i Nh&oacute;m ch&uacute;ng t&ocirc;i mong muốn mang đến cho bạn thế giới những t&aacute;ch tr&agrave; tốt nhất thế giới v&agrave; chia sẻ cuộc sống tr&agrave; m&agrave; ch&uacute;ng t&ocirc;i y&ecirc;u th&iacute;ch. Đội chuy&ecirc;n nghiệp Trong những năm qua, ch&uacute;ng t&ocirc;i đ&atilde; tập hợp đội ngũ chuy&ecirc;n gia tr&agrave; chuy&ecirc;n dụng. Phạm vi sản phẩm của ch&uacute;ng t&ocirc;i Ch&uacute;ng t&ocirc;i cung cấp một loạt c&aacute;c loại tr&agrave; sản xuất của ch&uacute;ng t&ocirc;i v&agrave; bởi c&aacute;c nh&agrave; sản xuất kh&aacute;c. Tại Trung t&acirc;m b&aacute;n h&agrave;ng tr&agrave; của ch&uacute;ng t&ocirc;i, bạn kh&ocirc;ng chỉ được chọn trong số c&aacute;c thương hiệu tr&agrave; tốt nhất v&agrave; rộng nhất m&agrave; c&ograve;n c&oacute; thể thấy sự đa dạng v&agrave; đa dạng trong tất cả c&aacute;c loại tr&agrave; phổ biến.', 1, 1, '2022-08-08 02:49:01', '2024-01-26 04:11:34', NULL, NULL),
(2, 'contacst', 'contacst', 'contacst', NULL, NULL, NULL, 'Liên hệ,Contact', 'Liên hệ Việt Long Trà', '', 1, 2, '2022-08-08 02:49:02', '2024-01-23 23:59:43', NULL, NULL),
(9, '00a624ffX43bfX43a2', 'Cao atiso tốt cho người cao tuổi như thế nào?', 'cao-atiso-tot-cho-nguoi-cao-tuoi-nhu-the-nao', '/storage/files/blogs/65afd8d38a1d2.jpg', '<h5><u>1. T&Aacute;C DỤNG CỦA CAO ATISO</u></h5>\n<p>&nbsp;</p>\n<p>Cao Atiso chứa nhiều dưỡng chất thực vật chẳng hạn như quercetin, rutin, axit gallic v&agrave; cynarin, tất cả ch&uacute;ng đều c&oacute; chức năng bảo vệ v&agrave; chống lại nhiều nguy cơ sức khỏe như ung thư, bệnh tim, rối loạn chức năng gan, cholesterol cao v&agrave; bệnh tiểu đường.</p>\n<p>Gi&uacute;p cải thiện chức năng gan: Hai chất chống oxy h&oacute;a được t&igrave;m thấy trong l&aacute; Atiso tươi nguy&ecirc;n liệu ch&iacute;nh l&agrave;m cao Atiso l&agrave; Cynarin v&agrave; Silymarin gi&uacute;p cải thiện tổng thể chức năng hoạt động b&agrave;i tiết độc tố của gan, hai hợp chất chống oxy h&oacute;a hoạt động t&iacute;ch cực t&aacute;i tạo c&aacute;c tế b&agrave;o gan đ&atilde; bị hư hỏng.</p>\n<div class=\"row\">\n<div class=\"col-3\">&nbsp;</div>\n<img class=\"img-responsive  col-6\" src=\"http://3.115.24.250/layouts/images_news/Cao-Atiso_1%20(1).jpg\" alt=\"Image\" />\n<div class=\"col-3\">&nbsp;</div>\n</div>\n<p>Được d&ugrave;ng trong qu&aacute; tr&igrave;nh ph&ograve;ng chống v&agrave; chữa trị ung thư: trong Atiso c&oacute; chứa chất chống oxy h&oacute;a cao nhất trong số tất cả c&aacute;c loại rau. Những chất chống oxy h&oacute;a c&oacute; chứa trong Atiso l&agrave; th&agrave;nh phần ch&iacute;nh để tăng cường hệ thống miễn dịch chống lại t&aacute;c động của c&aacute;c gốc tự do, gốc tự do l&agrave; sản phẩm của qu&aacute; tr&igrave;nh chuyển h&oacute;a tế b&agrave;o tự nhi&ecirc;n c&oacute; thể dẫn đến một số bệnh l&yacute; nguy hiểm trong cơ thể, bao gồm cả ung thư, bệnh tim.</p>\n<p>Hỗ trợ điều trị bệnh cao huyết &aacute;p: Cao Atiso c&oacute; t&aacute;c dụng như một loại thuốc gi&atilde;n mạch, đặc biệt hữu &iacute;ch cho những người đang d&ugrave;ng thuốc chữa bệnh cao huyết &aacute;p để giảm thiểu ảnh hưởng của t&igrave;nh trạng thiếu hụt Kali</p>\n<p>Giảm t&aacute;c hại của rượu bia: Atiso c&oacute; thể l&agrave;m hạ men gan tăng cường lưu th&ocirc;ng m&aacute;u, cũng như thải độc trong m&aacute;u bằng c&aacute;ch loại bỏ độc tố ra khỏi cơ thể.</p>\n<p>Gi&uacute;p ph&ograve;ng chống bệnh lo&atilde;ng xương: Trong Cao Atiso t&igrave;m thấy một lượng Magie v&agrave; Mangan, cả hai chất n&agrave;y đều tham gia v&agrave;o qu&aacute; tr&igrave;nh trao đổi chất trong cơ thể. Trong qu&aacute; tr&igrave;nh tổng hợp protein v&agrave; tối ưu h&oacute;a lượng canxi trong cơ thể rất cần c&oacute; sự tham gia của Magie để tăng cường sức khỏe xương. Chức năng của Mangan th&igrave; c&oacute; ch&uacute;t phức tạp hơn, n&oacute; t&aacute;c động đến tỷ lệ trao đổi chất của Cholesterol, axit amin, v&agrave; carbohydrate.</p>\n<p>Gi&uacute;p tăng cường chức năng n&atilde;o bộ: Atiso c&oacute; lợi &iacute;ch đối với sức khỏe n&atilde;o bộ nhờ t&aacute;c dụng như một loại thuốc gi&atilde;n mạch, cho ph&eacute;p cung cấp th&ecirc;m oxi đến n&atilde;o bộ gi&uacute;p n&acirc;ng cao nhận thức.</p>\n<p>&nbsp;</p>\n<h5><u>2. TẠI SAO CAO ATISO TỐT CHO SỨC KHỎE NGƯỜI CAO TUỔI</u></h5>\n<p>&nbsp;</p>\n<div class=\"row\">\n<div class=\"col-3\">&nbsp;</div>\n<img class=\"img-responsive  col-6\" src=\"http://3.115.24.250/layouts/images_news/Cao-Atiso%20(1).jpg\" alt=\"Image\" />\n<div class=\"col-3\">&nbsp;</div>\n</div>\n<p>Những bệnh l&yacute; như lẫn, cao huyết &aacute;p, tiểu đường, lo&atilde;ng xương hay được gọi l&agrave; bệnh của tuổi gi&agrave;, khi c&aacute;c bộ phận trong cơ thể hoạt động kh&ocirc;ng ổn định dẫn đến qu&aacute; tr&igrave;nh trao đổi chất bị gi&aacute;n đoạn c&aacute;c cơ quan kh&ocirc;ng đủ dưỡng chất hoạt động sẽ g&acirc;y ra bệnh l&yacute;. Chức năng n&atilde;o bộ kh&ocirc;ng tốt g&acirc;y ra mất tr&iacute; nhớ, lượng canxi cung cấp cho xương kh&ocirc;ng đủ sẽ g&acirc;y ra t&igrave;nh trạng lo&atilde;ng xương&hellip; Bạn đang lo cho sức khỏe của cha mẹ người th&acirc;n của bạn h&atilde;y để Cao Atiso gi&uacute;p bạn giải quyết mối lo n&agrave;y.</p>\n<p>Với những c&ocirc;ng dụng đ&atilde; t&igrave;m hiểu ở tr&ecirc;n, Cao Atiso thật sự tốt cho sức khỏe người cao tuổi. Cao Atiso gi&uacute;p tăng cường chức năng của n&atilde;o bộ, cải thiện t&igrave;nh trạng lo&atilde;ng xương, ph&ograve;ng chống cao huyết &aacute;p v&agrave; những biến chứng của bệnh tiểu đường, v&agrave; c&oacute; t&aacute;c dụng rất lớn đối với 1 căn bệnh m&agrave; ở mọi lứa tuổi m&agrave; ai cũng lo sợ đ&oacute; l&agrave; Ung thư.</p>\n<p>H&atilde;y uống Cao Atiso h&agrave;ng ng&agrave;y để c&oacute; 1 cơ thể khỏe mạnh. Để mua sản phẩm, vui l&ograve;ng truy cập v&agrave;o website: https://traphusy.com/ để được tư vấn nh&eacute;!</p>', '<p>Từ l&acirc;u Cao Atiso được biết với việc mang lại rất nhiều lợi &iacute;ch sức khỏe kh&aacute;c nhau đặc biệt l&agrave; cho người cao tuổi. C&ugrave;ng Tr&agrave; Ph&uacute; Sỹ t&igrave;m hiểu những t&aacute;c dụng của Cao Atiso mang lại cho sức khỏe người cao tuổi nh&eacute;.</p>', 'atiso,người cao tuổi', 'Cao atiso tốt cho người cao tuổi như thế nào?', 'Từ l&acirc;u Cao Atiso được biết với việc mang lại rất nhiều lợi &iacute;ch sức khỏe kh&aacute;c nhau đặc biệt l&agrave; cho người cao tuổi. C&ugrave;ng Tr&agrave; Ph&uacute; Sỹ t&igrave;m hiểu những t&aacute;c dụng của Cao Atiso mang lại cho sức khỏe người cao tuổi nh&eacute;.', 1, 3, '2024-01-22 21:39:24', '2024-01-24 07:55:13', NULL, NULL),
(10, '520538e1X513dX46b2', 'Bật mí 7 lý do tại sao trà xanh hoa nhài lại tốt cho cơ thể bạn', 'bat-mi-7-ly-do-tai-sao-tra-xanh-hoa-nhai-lai-tot-cho-co-the-ban', '/storage/files/blogs/65afd8d3c68a8.jpg', '<h5>1. CHỨA C&Aacute;C CHẤT CHỐNG OXY H&Oacute;A<u></u></h5>\n<p>&nbsp;</p>\n<p>Tr&agrave; Xanh Hoa Nh&agrave;i c&oacute; chứa c&aacute;c hợp chất mạnh mẽ từ thực vật được gọi l&agrave; polyphenol. Ch&uacute;ng hoạt động như chất chống oxy h&oacute;a trong cơ thể v&agrave; bảo vệ c&aacute;c tế b&agrave;o chống lại sự ph&aacute; hủy của gốc tự do. C&aacute;c nghi&ecirc;n cứu đ&atilde; chỉ ra sự li&ecirc;n kết giữa c&aacute;c gốc tự do với bệnh tim v&agrave; một số loại ung thư.</p>\n<div class=\"row\">\n<div class=\"col-3\">&nbsp;</div>\n<img class=\"img-responsive  col-6\" src=\"http://3.115.24.250/layouts/images_news/Tra-Xanh-Hoa-Nhai_1%20(1).jpg\" alt=\"Image\" />\n<div class=\"col-3\">&nbsp;</div>\n</div>\n<p>Tr&agrave; hoa nh&agrave;i l&agrave;m từ tr&agrave; xanh c&oacute; nhiều polyphenol được gọi l&agrave; catechin. Một hợp chất catechin đặc biệt mạnh mẽ trong tr&agrave; xanh l&agrave; epigallocatechin gallate (EGCG) - c&oacute; nhiều lợi &iacute;ch, bao gồm giảm c&acirc;n v&agrave; kiểm so&aacute;t lượng đường trong m&aacute;u, cũng như sức khỏe của tim v&agrave; răng miệng. Hơn nữa, c&aacute;c catechin tr&agrave; xanh như EGCG đ&atilde; được chứng minh l&agrave; c&oacute; t&aacute;c dụng chống vi&ecirc;m v&agrave; hạ lipid m&aacute;u, c&oacute; thể l&agrave;m giảm nguy cơ mắc bệnh tim.</p>\n<p>&nbsp;</p>\n<h5>2. C&Oacute; THỂ HỖ TRỢ GIẢM C&Acirc;N<u></u></h5>\n<p>&nbsp;</p>\n<p>Uống tr&agrave; hoa nh&agrave;i c&oacute; thể gi&uacute;p bạn giảm c&acirc;n bằng c&aacute;ch tăng tốc độ trao đổi chất. C&aacute;c đặc t&iacute;nh đốt ch&aacute;y chất b&eacute;o của tr&agrave; hoa nh&agrave;i c&oacute; li&ecirc;n quan đến h&agrave;m lượng caffeine v&agrave; EGCG của polyphenol. C&aacute;c hợp chất n&agrave;y cũng c&oacute; thể tăng cường hiệu quả đốt ch&aacute;y chất b&eacute;o của nhau.</p>\n<p>&nbsp;</p>\n<h5>3. C&Oacute; THỂ BẢO VỆ SỨC KHỎE TIM MẠCH<u></u></h5>\n<p>&nbsp;</p>\n<p>Tr&agrave; hoa nh&agrave;i c&oacute; nhiều polyphenol, c&oacute; thể gi&uacute;p bảo vệ chống lại bệnh tim. Polyphenol trong tr&agrave; đ&atilde; được chứng minh l&agrave; bảo vệ cholesterol LDL (c&oacute; hại) khỏi qu&aacute; tr&igrave;nh oxy h&oacute;a - một qu&aacute; tr&igrave;nh l&agrave;m tăng nguy cơ mắc bệnh tim. Cholesterol LDL bị oxy h&oacute;a c&oacute; khả năng g&acirc;y hại, v&igrave; n&oacute; c&oacute; nguy cơ d&iacute;nh v&agrave;o th&agrave;nh động mạch v&agrave; h&igrave;nh th&agrave;nh c&aacute;c mảng b&aacute;m. Điều n&agrave;y c&oacute; thể thu hẹp hoặc l&agrave;m tắc nghẽn mạch m&aacute;u.</p>\n<p>&nbsp;</p>\n<h5>4. KHẢ NĂNG TH&Uacute;C ĐẨY BẢO VỆ SỨC KHỎE RĂNG MIỆNG<u></u></h5>\n<p>&nbsp;</p>\n<p>Tr&agrave; Xanh Hoa Nh&agrave;i c&oacute; chứa catechin. Catechin l&agrave; một nh&oacute;m polyphenol c&oacute; thể gi&uacute;p bảo vệ chống s&acirc;u răn bằng c&aacute;ch ti&ecirc;u diệt vi khuẩn h&igrave;nh th&agrave;nh mảng b&aacute;m như Streptococcus mutans. Trong một nghi&ecirc;n cứu ở 15 người, một dung dịch chứa catechin tr&agrave; xanh đ&atilde; ngăn chặn Streptococcus mutans sản xuất axit khi b&ocirc;i l&ecirc;n răng. Qu&aacute; nhiều axit c&oacute; thể l&agrave;m m&ograve;n men răng.</p>\n<div class=\"row\">\n<div class=\"col-3\">&nbsp;</div>\n<img class=\"img-responsive  col-6\" src=\"http://3.115.24.250/layouts/images_news/Tra-Xanh-Hoa-Nhai%20(1).jpg\" alt=\"Image\" />\n<div class=\"col-3\">&nbsp;</div>\n</div>\n<p>&nbsp;</p>\n<h5>5. C&Oacute; THỂ TĂNG CƯỜNG CHỨC NĂNG N&Atilde;O<u></u></h5>\n<p>&nbsp;</p>\n<p>Tr&agrave; hoa nh&agrave;i c&oacute; một số t&iacute;nh chất c&oacute; thể gi&uacute;p tăng cường chức năng n&atilde;o. Caffeine c&oacute; trong tr&agrave; k&iacute;ch th&iacute;ch hệ thống thần kinh của bạn bằng c&aacute;ch ngăn chặn chất dẫn truyền thần kinh ức chế adenosine - một h&oacute;a chất cung cấp t&iacute;n hiệu giữa n&atilde;o v&agrave; cơ thể của bạn. Th&ocirc;ng thường, adenosine gi&uacute;p cơ thể bạn thư gi&atilde;n.</p>\n<p>Ngo&agrave;i ra, caffeine gi&uacute;p tăng cường hoạt động của n&atilde;o v&agrave; hỗ trợ giải ph&oacute;ng c&aacute;c chất dẫn truyền thần kinh gi&uacute;p cải thiện t&acirc;m trạng kh&aacute;c như dopamine v&agrave; serotonin, l&agrave;m cho bạn cảm thấy tỉnh t&aacute;o v&agrave; tr&agrave;n đầy năng lượng hơn v&agrave; cải thiện tr&iacute; nhớ ngắn hạn.</p>\n<p>&nbsp;</p>\n<h5>6. C&Oacute; THỂ BẢO VỆ CHỐNG LẠI BỆNH ALZHEIMER V&Agrave; PARKINSON<u></u></h5>\n<p>&nbsp;</p>\n<p>Tr&agrave; hoa nh&agrave;i chứa c&aacute;c polyphenol mạnh mẽ, c&oacute; thể l&agrave;m giảm nguy cơ mắc bệnh Alzheimer v&agrave; Parkinson. Đặc biệt, Tr&agrave; Xanh Hoa Nh&agrave;i c&oacute; h&agrave;m lượng EGCG cao, c&oacute; thể ức chế vi&ecirc;m v&agrave; trung h&ograve;a c&aacute;c tổn thương từ gốc tự do - hai yếu tố ch&iacute;nh li&ecirc;n quan đến sự tiến triển của bệnh Alzheimer v&agrave; Parkinson.</p>\n<p>&nbsp;</p>\n<h5>7. C&Oacute; THỂ L&Agrave;M GIẢM NGUY CƠ MẮC BỆNH TIỂU ĐƯỜNG LOẠI 2<u></u></h5>\n<p>&nbsp;</p>\n<p>Tr&agrave; Xanh Hoa Nh&agrave;i c&oacute; thể l&agrave;m giảm nguy cơ mắc bệnh tiểu đường loại 2. N&oacute; chứa hợp chất EGCG, c&oacute; thể gi&uacute;p cơ thể bạn sử dụng insulin hiệu quả hơn v&agrave; giảm lượng đường trong m&aacute;u.</p>\n<p>Sau tất cả, Tr&agrave; Xanh Hoa Nh&agrave;i l&agrave; thứ tr&agrave; ngon v&agrave; dễ d&agrave;ng c&oacute; thể bổ sung v&agrave;o chế độ ăn uống của bạn, chắc chắn tr&agrave; hoa nh&agrave;i sẽ gi&uacute;p bạn gặt h&aacute;i những lợi &iacute;ch sức khỏe ấn tượng.</p>', '<p>Tr&agrave; Xanh Hoa Nh&agrave;i l&agrave; một loại tr&agrave; c&oacute; m&ugrave;i thơm của hoa từ c&acirc;y hoa nh&agrave;i. M&ugrave;i thơm lan tỏa từ hoa nh&agrave;i hoặc nụ nh&agrave;i khi ủ hoặc pha c&ugrave;ng c&aacute;c l&aacute; tr&agrave; xanh mang lại một hương vị v&ocirc; c&ugrave;ng thanh tao, ngọt ng&agrave;o v&agrave; dễ chịu. Hoa nh&agrave;i được ướp với tr&agrave; xanh trở th&agrave;nh thức tr&agrave; ngon, mang đến nhiều lợi &iacute;ch sức khỏe dựa tr&ecirc;n kết hợp giữa t&aacute;c dụng của tr&agrave; xanh v&agrave; hoa nh&agrave;i.</p>\n<p>Dưới đ&acirc;y l&agrave; 7 l&yacute; do tại sao uống Tr&agrave; Xanh Hoa Nh&agrave;i rất tốt cho sức khỏe.</p>', NULL, 'Bật mí 7 lý do tại sao trà xanh hoa nhài lại tốt cho cơ thể bạn', 'Tr&agrave; Xanh Hoa Nh&agrave;i l&agrave; một loại tr&agrave; c&oacute; m&ugrave;i thơm của hoa từ c&acirc;y hoa nh&agrave;i. M&ugrave;i thơm lan tỏa từ hoa nh&agrave;i hoặc nụ nh&agrave;i khi ủ hoặc pha c&ugrave;ng c&aacute;c l&aacute; tr&agrave; xanh mang lại một hương vị v&ocirc; c&ugrave;ng thanh tao, ngọt ng&agrave;o v&agrave; dễ chịu. Hoa nh&agrave;i được ướp với tr&agrave; xanh trở th&agrave;nh thức tr&agrave; ngon, mang đến nhiều lợi &iacute;ch sức khỏe dựa tr&ecirc;n kết hợp giữa t&aacute;c dụng của tr&agrave; xanh v&agrave; hoa nh&agrave;i. Dưới đ&acirc;y l&agrave; 7 l&yacute; do tại sao uống Tr&agrave; Xanh Hoa Nh&agrave;i rất tốt cho sức khỏe.', 1, 3, '2024-01-22 21:44:27', '2024-01-24 07:57:08', NULL, NULL),
(11, 'b5d16641X3675X4751', 'Lợi ích của polyphenol trong trà ô long đỏ', 'loi-ich-cua-polyphenol-trong-tra-o-long-do', '/storage/files/blogs/65afd8d55d35d.jpg', '<div class=\"row\"><img class=\"img-responsive  col-6\" src=\"http://3.115.24.250/layouts/images_news/Tra-O-Long-Do_2.jpg\" alt=\"Image\" />\n<div class=\"col-3\">&nbsp;</div>\n</div>\n<p>Ri&ecirc;ng đối Tr&agrave; &Ocirc; Long Đỏ, ngo&agrave;i những th&agrave;nh phần như ở tr&agrave; xanh, nhờ v&agrave;o quy tr&igrave;nh sản xuất b&aacute;n l&ecirc;n men, lượng Polyphenol trong tr&agrave; rất dồi d&agrave;o v&agrave; c&oacute; t&aacute;c dụng rất cao đối với sức khoẻ như theo c&aacute;c kết quả nghi&ecirc;n cứu dưới d&acirc;y.</p>\n<p>&nbsp;</p>\n<h5>ENZYM SOD V&Agrave; POLYPHENOL TRONG TR&Agrave; &Ocirc; LONG:</h5>\n<p>&nbsp;</p>\n<p>Cơ thể ch&uacute;ng ta được trang bị một hệ thống để hạn chế tối đa t&aacute;c hại của c&aacute;c gốc h&oacute;a học g&acirc;y b&ecirc;nh do những t&aacute;c hại của c&aacute;c yếu tố m&ocirc;i trường cũng như th&oacute;i quen sinh hoạt g&acirc;y ra. Đ&oacute; l&agrave; nhờ v&agrave;o enzym mang t&ecirc;n SOD (superoxide dismutate). Khi c&aacute;c enzym n&agrave;y thực hiện đầy đủ c&aacute;c chức năng th&igrave; c&oacute; thể loại bỏ ho&agrave;n to&agrave;n c&aacute;c gốc ho&aacute; học g&acirc;y hại h&igrave;nh th&agrave;nh trong cơ thể. Tuy nhi&ecirc;n, lượng enzym n&agrave;y chỉ tồn tại với số lượng nhất định trong cơ thể v&agrave; kh&ocirc;ng thể đựơc bổ sung giống như c&aacute;c kho&aacute;ng tố kh&aacute;c (VD: vitamine, Fe, Ca). C&aacute;ch duy nhất l&agrave; d&ugrave;ng yếu tố x&uacute;c t&aacute;c để tăng cường khả năng hoạt động của ch&uacute;ng. V&agrave; polyphenol (c&aacute;c chất c&oacute; chứa tổ hợp hydroxyl trong ph&acirc;n tử) trong tr&agrave; &Ocirc; Long đ&atilde; được chứng minh đ&oacute;ng một vai tr&ograve; quan trọng trong lĩnh vực n&agrave;y.</p>\n<p>&nbsp;</p>\n<h5>LỢI &Iacute;CH CỦA POLYPHENOL:</h5>\n<p>&nbsp;</p>\n<p>Qua c&aacute;c cuộc thử nghiệm, c&aacute;c nh&agrave; khoa học đ&atilde; khẳng định được lợi &iacute;ch của polyphenol trong Tr&agrave; &Ocirc; Long Đỏ, đ&oacute; l&agrave; tăng cường hoạt động của enzym SOD v&agrave; loại bỏ c&aacute;c gốc ho&aacute; học g&acirc;y hại. Trong cuộc thử nghiệm n&agrave;y, c&aacute;c nh&agrave; khoa học y&ecirc;u cầu những người tham gia uống Tr&agrave; &Ocirc; Long Đỏ đều đặn 2 lần mỗi ng&agrave;y trong v&ograve;ng 3 th&aacute;ng v&agrave; theo d&otilde;i s&aacute;t sự thay đổi c&aacute;c chức năng enzym SOD của trước v&agrave; sau khi uống tr&agrave;. Kết quả được t&oacute;m lược như sau:</p>\n<p>&nbsp;</p>\n<ul>\n<li>1. Uống &Ocirc; Long Đỏ thường xuy&ecirc;n rất c&oacute; t&aacute;c dụng đối với tăng cường hiệu quả của enzym SOD trong cơ thể.</li>\n<li>2. Uống &Ocirc; Long Đỏ thường xuy&ecirc;n l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a da, ngăn ngừa h&igrave;nh th&agrave;nh nếp nhăn, n&aacute;m v&agrave; t&agrave;n nhang, bằng c&aacute;ch th&uacute;c đẩy hoạt động của enzym SOD-đồng-kẽm hoạt động trong c&aacute;c tế b&agrave;o da.</li>\n<li>3. Tr&agrave; &Ocirc; Long Đỏ cũng rất hữu hiệu trong ph&ograve;ng chống chứng suy thận v&agrave; suy l&aacute; l&aacute;ch</li>\n<li>Theo nghi&ecirc;n cứu của Trường Đại Học Osaka - Nhật Bản, uống tr&agrave; &Ocirc; Long g&iacute;&uacute;p giảm đ&aacute;ng kể bệnh s&acirc;u răng v&agrave; c&aacute;c bệnh về răng miệng.</li>\n<li>4. Cũng theo kết quả nghi&ecirc;n cứu của Đại Học Shiga - Nhật Bản, tr&agrave; &Ocirc; Long c&ograve;n rất hữu hiệu trong việc trị vi&ecirc;m da (khả năng l&agrave; 70%).</li>\n<li>5. Đặc biệt &Ocirc; Long rất hiệu quả trong việc giảm tỉ lệ b&eacute;o ph&igrave;. Điều n&agrave;y đ&atilde; được chứng minh trong s&aacute;ch Bencao Shiyi (The Compendium of Materia Medica) v&agrave; trong c&aacute;c cuộc th&iacute; nghiệm của Đại Học Dược Shiga - Nhật Bản.</li>\n</ul>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h5>TR&Agrave; &Ocirc; LONG ĐỎ V&Agrave; BỆNH B&Eacute;O PH&Igrave;:</h5>\n<p>&nbsp;</p>\n<div class=\"row\">\n<div class=\"col-3\">&nbsp;</div>\n<img class=\"img-responsive  col-6\" src=\"http://3.115.24.250/layouts/images_news/Tra-O-Long-Do_1%20(1).jpg\" alt=\"Image\" />\n<div class=\"col-3\">&nbsp;</div>\n</div>\n<p>Trong y học đương đại th&igrave; b&eacute;o ph&igrave; kh&ocirc;ng chỉ đơn thuần l&agrave; \"qu&aacute; khổ\" m&agrave; b&eacute;o ph&igrave; xảy ra khi lượng mỡ trong cơ thể t&iacute;ch tụ qu&aacute; giới hạn cho ph&eacute;p (tỉ lệ mỡ so với trọng lượng cơ thể kh&ocirc;ng vượt qu&aacute; 15 - 20% ở nam giới v&agrave; 20 - 25% ở nữ giới). Trong qu&aacute; tr&igrave;nh chuyển ho&aacute; năng lượng của cơ thể, c&aacute;c chất đường v&agrave; b&eacute;o được tổng hợp th&agrave;nh triglyceride trong gan v&agrave; ruột non sau đ&oacute; theo m&aacute;u đi khắp cơ thể để cung cấp năng lượng cho duy tr&igrave; sự sống cũng như c&aacute;c vận động của cơ thể. Lượng triglyceride kh&ocirc;ng được chuyển h&oacute;a (c&ograve;n thừa) sẽ t&iacute;ch tụ lại trong tế b&agrave;o mỡ v&agrave; khi vượt qu&aacute; giới hạn sẽ g&acirc;y n&ecirc;n chứng b&eacute;o ph&igrave;. Polyphenol trong Tr&agrave; &Ocirc; Long Đỏ qua c&aacute;c cuộc th&iacute; nghiệm đ&atilde; cho thấy c&oacute; khả năng th&uacute;c đẩy sự hoạt động của c&aacute;c enzym c&oacute; chức năng ph&acirc;n giải triglyceride do đ&oacute; rất c&oacute; hiệu quả trong ngăn chặn v&agrave; kiểm so&aacute;t chứng b&eacute;o ph&igrave;.</p>\n<p>Như vậy, nhờ c&oacute; nguồn polyphenol dồi d&agrave;o, Tr&agrave; &Ocirc; Long Đỏ kh&ocirc;ng chỉ chống c&aacute;c bệnh ung thư, vi&ecirc;m kh&oacute;p, tim mạch, ti&ecirc;u chảy ... như ở tr&agrave; xanh m&agrave; c&ograve;n c&oacute; thể chống suy thận, suy l&aacute; l&aacute;ch, s&acirc;u răng, đồng thời gi&uacute;p giữ l&agrave;n da tươi trẻ v&agrave; hạn chế chứng b&eacute;o ph&igrave;. C&ograve;n chần chừ g&igrave; nữa h&atilde;y mang Tr&agrave; &Ocirc; Long Đỏ về nh&agrave; ngay đi n&agrave;o.</p>', '<p>Ngo&agrave;i lượng caffeinee vừa đủ trong tr&agrave; gi&uacute;p tinh thần sảng kho&aacute;i v&agrave; tỉnh t&aacute;o, qua kinh nghiệm d&acirc;n gian v&agrave; c&aacute;c t&agrave;i liệu nghi&ecirc;n cứu của c&aacute;c trường Đại Học ở Mỹ v&agrave; Nhật Bản, Trung Quốc, Tr&agrave; &Ocirc; Long Đỏ c&ograve;n l&agrave; phương thuốc kỳ diệu cho sức khỏe con người nhờ polyphenol trong tr&agrave;. Vậy lợi &iacute;ch thật sự của polyphenol l&agrave; g&igrave;? C&ugrave;ng Tr&agrave; Ph&uacute; Sỹ t&igrave;m hiểu nh&eacute;!</p>', NULL, 'Lợi ích của polyphenol trong trà ô long đỏ', 'Ngo&agrave;i lượng caffeinee vừa đủ trong tr&agrave; gi&uacute;p tinh thần sảng kho&aacute;i v&agrave; tỉnh t&aacute;o, qua kinh nghiệm d&acirc;n gian v&agrave; c&aacute;c t&agrave;i liệu nghi&ecirc;n cứu của c&aacute;c trường Đại Học ở Mỹ v&agrave; Nhật Bản, Trung Quốc, Tr&agrave; &Ocirc; Long Đỏ c&ograve;n l&agrave; phương thuốc kỳ diệu cho sức khỏe con người nhờ polyphenol trong tr&agrave;. Vậy lợi &iacute;ch thật sự của polyphenol l&agrave; g&igrave;? C&ugrave;ng Tr&agrave; Ph&uacute; Sỹ t&igrave;m hiểu nh&eacute;!', 1, 3, '2024-01-22 22:25:22', '2024-01-24 07:57:22', NULL, NULL),
(12, 'b3abf18fXed22X406b', 'Cách pha trà ô long cho người thưởng trà chuyên nghiệp', 'cach-pha-tra-o-long-cho-nguoi-thuong-tra-chuyen-nghiep', '/storage/files/blogs/65afda4c89147.jpg', '<h6>Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n g&igrave;?</h6>\n<p>&nbsp;</p>\n<p>Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n c&oacute; t&ecirc;n gọi l&agrave; Jin Xuan &Ocirc; Long (hoặc Golden Lily) l&agrave; loại tr&agrave; mới được người Đ&agrave;i Loan ph&aacute;t triển v&agrave;o năm 1980 từ giống &Ocirc; long cổ điển tốt nhất mang sang từ Trung Quốc, l&agrave; chị cả của gia đ&igrave;nh &ldquo;The Three Daughters of Taiwan&rdquo;.</p>\n<div class=\"row\">\n<div class=\"col-3\">&nbsp;</div>\n<img class=\"img-responsive  col-6\" src=\"http://3.115.24.250/layouts/images_news/Tra-O-Long-Kim-Tuyen_1.jpg\" alt=\"Image\" />\n<div class=\"col-3\">&nbsp;</div>\n</div>\n<p>Nổi tiếng với hương vị đặc biệt của n&oacute; &ndash; &ldquo;hương thơm sữa&rdquo;, mang đến cho tr&agrave; một hương vị sữa đặc biệt. N&oacute; hiển thị một m&agrave;u v&agrave;ng-xanh s&acirc;u trong cốc v&agrave; hương vị bơ mịn trong miệng đ&atilde; trở th&agrave;nh một dấu hiệu của truyền thuyết tr&agrave; Đ&agrave;i Loan.</p>\n<p>&nbsp;</p>\n<h6>C&aacute;c bước pha tr&agrave; cho người thưởng tr&agrave; chuy&ecirc;n nghiệp:</h6>\n<p>&nbsp;</p>\n<p>&ndash; Bước 1: Chuẩn bị c&aacute;c dụng cụ cần thiết: ấm, ch&eacute;n tr&agrave;, ch&eacute;n tống, lọc tr&agrave;&hellip;; tr&agrave; cụ phải được thật sạch thật tinh khiết, n&ecirc;n d&ugrave;ng ấm đất hoặc ấm s&agrave;nh sứ, kh&ocirc;ng d&ugrave;ng ấm kim loại để pha tr&agrave;</p>\n<p>&ndash; Bước 2: Đổ nước s&ocirc;i v&agrave;o ấm, l&ecirc;n đến 70% ấm để l&agrave;m n&oacute;ng ấm v&agrave; đổ đi sau 20 gi&acirc;y</p>\n<p>&ndash; Bước 3: Cho Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n v&agrave;o ấm (d&ugrave;ng x&uacute;c tr&agrave; bằng tre hoặc gỗ, kh&ocirc;ng d&ugrave;ng tay hoặc muỗng kim loại để x&uacute;c tr&agrave;), số lượng vừa đủ t&ugrave;y theo khẩu vị, th&ocirc;ng thường l&agrave; 1gram tr&agrave; tương ứng với 20ml nước.</p>\n<p>&ndash; Bước 4: Cho nước s&ocirc;i v&agrave;o ấm (khoảng 50% ấm), xoay ấm rồi đổ nước tr&aacute;ng n&agrave;y v&agrave;o ch&eacute;n tống. Thao t&aacute;c n&agrave;y mục đ&iacute;ch để đ&aacute;nh thức l&aacute; tr&agrave;, cần thực hiện nhanh tay (khoảng dưới 7 gi&acirc;y), sau khi r&oacute;t nước đi để nguy&ecirc;n ấm tr&agrave; vậy khoảng 15 gi&acirc;y cho tr&agrave; ngấm nước, trong thời gian n&agrave;y d&ugrave;ng nước tr&aacute;ng trong ch&eacute;n tống để l&agrave;m n&oacute;ng ch&eacute;n qu&acirc;n</p>\n<p>&ndash; Bước 5: H&atilde;m tr&agrave;: ch&acirc;m nước s&ocirc;i đầy ấm v&agrave; đậy nắp lại (n&ecirc;n ch&acirc;m qu&aacute; tay một ch&uacute;t để nước tr&agrave;n ra ngo&agrave;i v&agrave; khi đậy nắp v&agrave;o, nước lại tr&agrave;o ra một lần nữa). Tiếp tục r&oacute;t nước s&ocirc;i quanh ấm để h&atilde;m tr&agrave; trong v&ograve;ng 30 gi&acirc;y cho lần pha đầu ti&ecirc;n (nước n&agrave;y gọi l&agrave; nước hương-chủ yếu để thưởng thức hương tr&agrave;), thời gian h&atilde;m Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n giữ ở mức 20 đến 30 gi&acirc;y cho lần pha thứ 2,3,4 v&agrave; c&oacute; thể tăng l&ecirc;n một ch&uacute;t cho những lần pha tiếp theo (c&oacute; thể điều chỉnh t&ugrave;y thuộc v&agrave;o khẩu vị v&agrave; kinh nghiệm)</p>\n<div class=\"row\">\n<div class=\"col-3\">&nbsp;</div>\n<img class=\"img-responsive  col-6\" src=\"http://3.115.24.250/layouts/images_news/Tra-O-Long-Kim-Tuyen.jpg\" alt=\"Image\" />\n<div class=\"col-3\">&nbsp;</div>\n</div>\n<p>&ndash; Bước 6: R&oacute;t tr&agrave; ra ch&eacute;n tống (n&ecirc;n d&ugrave;ng một phễu lọc để giữ lại những x&aacute;c tr&agrave; nhỏ v&agrave; gi&uacute;p cho nước được trong thuần khiết), rồi từ ch&eacute;n tống chia nước tr&agrave; ra nhiều ch&eacute;n qu&acirc;n để mời mọi người thưởng thức</p>\n<p>Khi thưởng thức Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n, trước ti&ecirc;n ta ngửi hương thơm trong ch&eacute;n, nh&igrave;n m&agrave;u nước v&agrave;ng s&aacute;nh rồi uống từng ngụm để thưởng thức c&aacute;i th&uacute; uống tr&agrave; &Ocirc; Long. Ngụm đầu ti&ecirc;n chỉ uống một ngụm b&eacute; ở đầu lưỡi để ngửi hương tr&agrave;; thở hơi ra v&agrave; uống v&agrave;o ngụm lớn thứ hai gần hết ch&eacute;n tr&agrave; để tr&agrave; tr&agrave;n đầy trong miệng, nuốt xuống rồi đẩy hơi ra để hương tr&agrave; chạy ngược l&ecirc;n mũi c&oacute; thể cảm nhận đầy đủ hương vị của tr&agrave;; ngụm thứ nhỏ thứ ba uống hết phần tr&agrave; c&ograve;n lại để kiểm lại vị v&agrave; hậu tr&agrave;; sau khi uống, hương lưu trong miệng, vị c&ograve;n giữ m&atilde;i.</p>\n<p>Tr&ecirc;n đ&acirc;y l&agrave; c&aacute;ch pha Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n chuy&ecirc;n nghiệp, hy vọng ch&uacute;ng sẽ gi&uacute;p bạn c&oacute; thể thưởng thức được như ly tr&agrave; ngon hơn. Để mua Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n cũng như c&aacute;c loại tr&agrave; &Ocirc; Long kh&aacute;c.</p>', '<p>Đối với phong c&aacute;ch thưởng tr&agrave; hiện đại, c&aacute;ch pha Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n c&oacute; đ&ocirc;i ch&uacute;t kh&aacute;c biệt so với c&aacute;c loại tr&agrave; kh&aacute;c do mức độ oxy h&oacute;a của l&aacute; tr&agrave;. Vậy l&agrave;m sao để pha tr&agrave; ngon nhất? B&agrave;i viết dưới đ&acirc;y sẽ hướng dẫn cho c&aacute;c bạn c&aacute;c bước cơ bản để pha Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n cho những người thưởng tr&agrave; chuy&ecirc;n nghiệp.</p>', NULL, 'Cách pha trà ô long cho người thưởng trà chuyên nghiệp', 'Đối với phong c&aacute;ch thưởng tr&agrave; hiện đại, c&aacute;ch pha Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n c&oacute; đ&ocirc;i ch&uacute;t kh&aacute;c biệt so với c&aacute;c loại tr&agrave; kh&aacute;c do mức độ oxy h&oacute;a của l&aacute; tr&agrave;. Vậy l&agrave;m sao để pha tr&agrave; ngon nhất? B&agrave;i viết dưới đ&acirc;y sẽ hướng dẫn cho c&aacute;c bạn c&aacute;c bước cơ bản để pha Tr&agrave; &Ocirc; Long Kim Tuy&ecirc;n cho những người thưởng tr&agrave; chuy&ecirc;n nghiệp.', 1, 3, '2024-01-22 22:25:44', '2024-01-24 07:57:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code_product` varchar(120) NOT NULL,
  `name_product` varchar(120) NOT NULL,
  `url_product` varchar(120) NOT NULL,
  `image_product` text DEFAULT NULL,
  `description_product` text DEFAULT NULL,
  `specifications` text DEFAULT NULL COMMENT 'Thông số kĩ thuật',
  `warranty` varchar(120) DEFAULT NULL COMMENT 'Bảo hành',
  `time_warranty` varchar(120) DEFAULT NULL COMMENT 'Thời gian Bảo hành',
  `note` text DEFAULT NULL COMMENT 'Lưu Ý',
  `gift` text DEFAULT NULL COMMENT 'Quà tặng',
  `price` varchar(120) DEFAULT '0' COMMENT 'Giá bán',
  `cost` varchar(120) DEFAULT '0' COMMENT 'Giá gốc',
  `element_product` text DEFAULT NULL,
  `shopee_url` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by_id` varchar(120) DEFAULT NULL,
  `last_modify_by_id` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code_product`, `name_product`, `url_product`, `image_product`, `description_product`, `specifications`, `warranty`, `time_warranty`, `note`, `gift`, `price`, `cost`, `element_product`, `shopee_url`, `status`, `created_at`, `updated_at`, `create_by_id`, `last_modify_by_id`) VALUES
(15, 'OLONG01', 'TRÀ Ô LONG BẠCH LONG THANH MỘC - Organic Tea - 100g', 'tra-o-long-bach-long-thanh-moc-organic-tea-100g', NULL, '<p>Tr&agrave; BẠCH LONG :</p>\n<p>☀ Oolong bạch long l&agrave; một trong những giống tr&agrave; QU&Yacute; HIẾM, KH&Oacute; TRỒNG nhất hiện nay v&agrave; c&ocirc;ng nghệ để chăm s&oacute;c cũng kh&aacute;c hẳn,c&acirc;y tr&agrave; Oolong bạch long trồng ở độ cao hơn 1200m so với mực nước biển.</p>\n<p>Gồm một b&uacute;p hai-ba l&aacute; được chọn khắt khe theo ti&ecirc;u chuẩn ri&ecirc;ng của sản phẩm, chu kỳ h&aacute;i khoảng 45 - 50 ng&agrave;y/lần.</p>\n<p>☕ Vị: ch&aacute;t nhẹ, thanh mộc khi mới uống v&agrave;o. Sau đ&oacute;, hậu NGỌT, THANH như bốc hơi trong cổ họng, KH&Ocirc;NG g&acirc;y vị gắt nơi cổ khi sử dụng nhiều.</p>\n<p>☕ Sắc: Sau khi pha nước c&oacute; M&Agrave;U XANH,V&Agrave;NG trong, kh&ocirc;ng c&oacute; cặn tr&agrave; đọng lại khi r&oacute;t ra.</p>\n<p>☕ Hương: Hương THƠM TỰ NHI&Ecirc;N nhờ qu&aacute; tr&igrave;nh l&ecirc;n men. KH&Ocirc;NG sử dụng chất liệu v&agrave; hương h&oacute;a học.</p>\n<p>⚡ Ngoại h&igrave;nh: Hạt tr&ograve;n v&agrave; đồng đều. Khi pha ra, tr&agrave; giữ nguy&ecirc;n h&igrave;nh dạng,1 B&Uacute;P 2 L&Aacute; XANH, đầy đặn, KH&Ocirc;NG n&aacute;t, KH&Ocirc;NG đỏ.</p>\n<p>☀ Gi&aacute; :150k/100g</p>\n<p>☀ Miễn ph&iacute; vận chuyển, giao h&agrave;ng tận nơi. KH&Ocirc;NG G&Acirc;Y X&Oacute;T RUỘT KHI D&Ugrave;NG V&Agrave;O S&Aacute;NG SỚM HOẶC L&Uacute;C Đ&Oacute;I! Sản xuất tại nh&agrave; m&aacute;y tr&agrave; PS, 166 L&yacute; Th&aacute;i Tổ, Đambri, Bảo lộc. Ng&agrave;y sản xuất in tr&ecirc;n bao b&igrave;, hạn sử dụng 2 năm sau khi đ&oacute;ng g&oacute;i. LI&Ecirc;N HỆ: 0939222522</p>', NULL, NULL, NULL, '<p>Oolong bạch long l&agrave; một trong những giống tr&agrave; QU&Yacute; HIẾM, KH&Oacute; TRỒNG nhất hiện nay v&agrave; c&ocirc;ng nghệ để chăm s&oacute;c cũng kh&aacute;c hẳn,c&acirc;y tr&agrave; Oolong bạch long trồng ở độ cao hơn 1200m so với mực nước biển.</p>', NULL, '150,000', '140,000', NULL, NULL, 1, '2024-01-26 04:18:27', '2024-03-02 21:36:32', NULL, NULL),
(16, 'OLONG02', 'TRÀ Ô LONG KIM TUYÊN - Organic Tea - 250G', 'tra-o-long-kim-tuyen-organic-tea-250g', NULL, '<p>Tr&agrave; KIM TUY&Ecirc;N</p>\n<p>☀ Oolong kim tuy&ecirc;n l&agrave; một trong những giống tr&agrave; phổ biến nhất hiện nay, trồng ở độ cao hơn 600m so với mực nước biển.</p>\n<p>☕ Vị: ch&aacute;t nhẹ, ngọt nhẹ, đậm vị tr&agrave;.</p>\n<p>☕ Sắc: Sau khi pha nước c&oacute; M&Agrave;U V&Agrave;NG trong, kh&ocirc;ng c&oacute; cặn tr&agrave; đọng lại khi r&oacute;t ra.</p>\n<p>☕ Hương: Hương thơm đặc trưng giống tr&agrave; kim tuy&ecirc;n, nhẹ nh&agrave;ng.</p>\n<p>⚡ Ngoại h&igrave;nh: Hạt tr&ograve;n được vo vi&ecirc;n theo chuẩn xuất khẩu.</p>\n<p>☀ Gi&aacute; :35k/100g KH&Ocirc;NG G&Acirc;Y X&Oacute;T RUỘT KHI D&Ugrave;NG V&Agrave;O S&Aacute;NG SỚM HOẶC L&Uacute;C Đ&Oacute;I.</p>\n<p>Ng&agrave;y sản xuất in tr&ecirc;n bao b&igrave;, hạn sử dụng 2 năm sau khi đ&oacute;ng g&oacute;i. Li&ecirc;n hệ: 0939222522</p>', NULL, NULL, NULL, '<p>☀ Oolong kim tuy&ecirc;n l&agrave; một trong những giống tr&agrave; phổ biến nhất hiện nay, trồng ở độ cao hơn 600m so với mực nước biển.</p>', NULL, NULL, '90,000', NULL, NULL, 1, '2024-01-26 04:29:03', '2024-03-02 21:35:35', NULL, NULL),
(17, 'OLONG03', 'TRÀ Ô LONG NHÂN SÂM ĐÀI LOAN - ORGANIC TEA - 100g', 'tra-o-long-nhan-sam-dai-loan-organic-tea-100g', NULL, '<p>Tr&agrave; &Ocirc; Long Nh&acirc;n S&acirc;m được l&agrave;m từ những l&aacute; tr&agrave; &ocirc; long, c&oacute; xuất xứ từ v&ugrave;ng n&uacute;i Nghi Lan, Đ&agrave;i Loan, nơi c&oacute; kh&iacute; hậu trong l&agrave;nh, m&aacute;t mẻ quanh năm.<span style=\"font-size: 14pt;\">Những l&aacute; tr&agrave; được xử l&iacute; theo c&aacute;ch truyền thống, l&agrave; định h&igrave;nh th&agrave;nh những vi&ecirc;n tr&agrave; tr&ograve;n nhỏ, sau đ&oacute; được trộn lẫn với hoa Mộc (t&ecirc;n khoa học l&agrave; osmanthus) để tr&agrave; hấp thụ được hương thơm của hoa.</span>Sau khi đ&atilde; ướp hoa, tr&agrave; được sấy kh&ocirc; v&agrave; được bọc ngo&agrave;i bằng một hỗn hợp gồm bột nh&acirc;n s&acirc;m v&agrave; cam thảo.</p>\n<p>Tr&agrave; &Ocirc; Long Nh&acirc;n S&acirc;m l&agrave; sự kết hợp của Tr&agrave; &Ocirc; Long v&agrave; Nh&acirc;n S&acirc;m n&ecirc;n c&oacute; hương thơm rất đặc trưng, phảng phất hương hoa mộc v&agrave; c&oacute; vị ngọt đượm rất dễ chịu, v&agrave; lưu vị ngọt n&agrave;y rất l&acirc;u.</p>\n<p>Tr&agrave; &Ocirc; Long Nh&acirc;n S&acirc;m rất th&iacute;ch hợp để thưởng thức v&agrave;o buổi chiều tối, sau bữa ăn hoặc trong l&uacute;c nghỉ ngơi. Đối với sức khỏe, uống Tr&agrave; &Ocirc; Long Nh&acirc;n S&acirc;m thường xuy&ecirc;n, gi&uacute;p cơ thể giải nhiệt, thanh độc, ph&ograve;ng chống c&aacute;c bệnh về sốt, cảm nắng.</p>\n<p>Một ng&agrave;y đi nắng về, mệt mỏi, bạn uống ngay một cốc Tr&agrave; &Ocirc; Long Nh&acirc;n S&acirc;m, t&igrave;nh trạng say nắng sẽ giảm đi nhanh ch&oacute;ng. Kh&ocirc;ng chỉ dừng lại ở đ&oacute;, Tr&agrave; &Ocirc; Long Nh&acirc;n S&acirc;m c&ograve;n c&oacute; c&ocirc;ng dụng lợi tiểu, chống vi&ecirc;m, l&agrave;m dịu cơn mệt, tăng sức đề kh&aacute;ng cho cơ thể, rất tốt cho người gi&agrave; v&agrave; người c&oacute; sức khỏe yếu.</p>\n<p>Trong l&aacute; tr&agrave; c&ograve;n c&oacute; th&agrave;nh phần caffein n&acirc;ng cao tinh thần, giảm mệt mỏi.</p>\n<p>Quan trọng nhất, Tr&agrave; &Ocirc; Long Nh&acirc;n S&acirc;m c&ograve;n c&oacute; thể điều h&ograve;a huyết &aacute;p, tăng cường tr&iacute; nhớ, ph&ograve;ng chống ung thư c&ugrave;ng c&aacute;c bệnh về tim mạch, vi&ecirc;m khớp. Cuối c&ugrave;ng, Tr&agrave; &Ocirc; Long Nh&acirc;n S&acirc;m c&ograve;n d&ugrave;ng như một phương thuốc chống s&acirc;u răng, h&ocirc;i miệng v&agrave; lo&atilde;ng xương.</p>\n<p>Đối với l&agrave;m đẹp, uống Tr&agrave; &Ocirc; Long Nh&acirc;n S&acirc;m ngăn ngừa t&igrave;nh trạng l&atilde;o h&oacute;a, gi&uacute;p chị em c&oacute; một l&agrave;n da trắng s&aacute;ng, mịn m&agrave;ng, &iacute;t nếp nhăn. Th&agrave;nh phần trong l&aacute; tr&agrave;, l&agrave;m chậm tốc độ của c&aacute;c tế b&agrave;o gốc, ngăn ngừa t&igrave;nh trạng c&aacute;c hắc sắc tố melanin hội tụ, l&agrave;n da của bạn sẽ giảm đến 80% c&aacute;c nguy cơ th&acirc;m n&aacute;m, đen sạm. Hơn nữa, d&ugrave;ng l&aacute; tr&agrave; đắp trực tiếp l&ecirc;n da c&ograve;n c&oacute; thể trị th&acirc;m quầng mắt, l&agrave;m mịn v&agrave; l&agrave;m trắng da.</p>\n<p class=\"p1\"><span class=\"s1\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng</span></p>\n<p class=\"p1\"><span class=\"s1\">_____ _____ _____</span></p>\n<p class=\"p1\"><span class=\"s1\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng</span></p>\n<p class=\"p1\"><span class=\"s1\">Sdt/Zalo: 0939 222 522</span></p>\n<p class=\"p1\"><span class=\"s1\">Website: https://vietlongtra.com</span></p>\n<p class=\"p1\"><span class=\"s1\">Hoạt động: 9h00am-21:00pm</span></p>\n<p class=\"p1\"><span class=\"s1\">#trangontaidanang<span class=\"Apple-converted-space\">&nbsp; </span>#amtratusataidanang #traquatangtaidanang #traoolongtaidanang </span></p>\n<p class=\"p1\"><span class=\"s1\">#vietlongtradanang<span class=\"Apple-converted-space\">&nbsp; &nbsp;</span></span></p>', NULL, NULL, NULL, '<p>Tr&agrave; &Ocirc; Long Nh&acirc;n S&acirc;m được l&agrave;m từ những l&aacute; tr&agrave; &ocirc; long, c&oacute; xuất xứ từ v&ugrave;ng n&uacute;i Nghi Lan, Đ&agrave;i Loan, nơi c&oacute; kh&iacute; hậu trong l&agrave;nh, m&aacute;t mẻ quanh năm.</p>', NULL, NULL, '100,000', NULL, NULL, 1, '2024-01-26 04:33:56', '2024-03-02 21:36:23', NULL, NULL),
(18, 'OLONG04', 'TRÀ Ô LONG LÃO - ORGANIC TEA - 100g', 'tra-o-long-lao-organic-tea-100g', NULL, '<p>L&Atilde;O TR&Agrave; L&atilde;o tr&agrave; l&agrave; 1 d&ograve;ng tr&agrave; olong ORGANIC hảo hạng với hương v&agrave; vị rất đặc biệt.Được l&agrave;m thủ c&ocirc;ng,h&aacute;i bằng tay v&agrave; l&ecirc;n men để khử độ ch&aacute;t v&agrave; tăng độ d&agrave;y vị ngọt L&atilde;o tr&agrave; c&oacute; m&agrave;u cam,hạt tr&agrave; m&agrave;u đen &aacute;nh đỏ,tr&agrave; bền nước.</p>\n<p>Uống trong l&uacute;c đ&oacute;i bụng kh&ocirc;ng g&acirc;y cồn c&agrave;o m&agrave; c&ograve;n gi&uacute;p ngủ s&acirc;u giấc hơn L&atilde;o tr&agrave; c&oacute; rất nhiều loại kho&aacute;ng chất rất c&oacute; lợi cho hệ tim mạch,tăng sức đề kh&aacute;ng cho cơ thể l&agrave; chất x&uacute;c t&aacute;c thải độc tố trong cơ thể.</p>\n<p class=\"p1\"><span class=\"s1\">______ ______ ______</span></p>\n<p class=\"p2\">&nbsp;</p>\n<p class=\"p1\"><span class=\"s1\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng</span></p>\n<p class=\"p1\"><span class=\"s1\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng</span></p>\n<p class=\"p1\"><span class=\"s1\">Sdt/Zalo: 0939 222 522</span></p>\n<p class=\"p1\"><span class=\"s1\">Website: https://vietlongtra.com</span></p>\n<p class=\"p1\"><span class=\"s1\">Hoạt động: 9h00am-21:00pm</span></p>\n<p class=\"p1\"><span class=\"s1\">#trangontaidanang<span class=\"Apple-converted-space\">&nbsp; </span>#amtratusataidanang #traquatangtaidanang #traoolongtaidanang </span></p>\n<p class=\"p1\"><span class=\"s1\">#vietlongtradanang<span class=\"Apple-converted-space\">&nbsp; &nbsp;</span></span></p>', NULL, NULL, NULL, '<p>L&Atilde;O TR&Agrave; L&atilde;o tr&agrave; l&agrave; 1 d&ograve;ng tr&agrave; olong ORGANIC hảo hạng với hương v&agrave; vị rất đặc biệt.Được l&agrave;m thủ c&ocirc;ng,h&aacute;i bằng tay v&agrave; l&ecirc;n men để khử độ ch&aacute;t v&agrave; tăng độ d&agrave;y vị ngọt L&atilde;o tr&agrave; c&oacute; m&agrave;u cam,hạt tr&agrave; m&agrave;u đen &aacute;nh đỏ,tr&agrave; bền nước.</p>', NULL, NULL, '200,000', NULL, 'https://shopee.vn/TR%C3%80-%C3%94-LONG-L%C3%83O-ORGANIC-TEA-100g-VI%E1%BB%86T-LONG-TR%C3%80-i.254019972.16676964898?sp_atk=4b8bb5c7-1316-4625-812d-978119e310b3&xptdk=4b8bb5c7-1316-4625-812d-978119e310b3', 1, '2024-01-26 04:38:04', '2024-03-02 21:37:30', NULL, NULL),
(19, 'CHENTRA', 'Chén tử sa tráng men trong - Trà cụ - Dung tích 40ml', 'chen-tu-sa-trang-men-trong-tra-cu-dung-tich-40ml', NULL, '<p>Ch&eacute;n tử sa tr&aacute;ng men trong</p>\n<p>K&iacute;ch thước: 6cm x 3.3cm ( Đường k&iacute;nh x Cao) Dung t&iacute;ch: 40ml&nbsp;</p>', NULL, NULL, NULL, '<p>Ch&eacute;n tử sa tr&aacute;ng men trong</p>', NULL, NULL, '15,000', NULL, NULL, 1, '2024-01-26 04:47:51', '2024-03-03 00:08:46', NULL, NULL),
(20, 'CHENTRA01', 'Chén tử sa Chu Nê - Dung tích 120ml', 'chen-tu-sa-chu-ne---dung-tich-120ml', NULL, '<p>Chiếc ch&eacute;n sẽ &ldquo;sống&rdquo; theo thời gian khi gặp nhiệt độ cao, m&agrave;u sắc sẽ chuyển biến dần dần mang lại cho người thưởng tr&agrave; một người bạn, một tri kỷ</p>', NULL, NULL, NULL, '<p>Ch&eacute;n tử sa chu n&ecirc;</p>', NULL, NULL, '85,000', NULL, NULL, 1, '2024-01-26 04:53:12', '2024-03-03 00:09:13', NULL, NULL),
(21, 'CHENSUMEN', 'Chén sứ men hoả biến - Chén thiên mục cao cấp - 120ml', 'chen-su-men-hoa-bien-chen-thien-muc-cao-cap-120ml', NULL, '<p>Ch&eacute;n sứ men hoả biến Ch&eacute;n thi&ecirc;n mục cao cấp Dung t&iacute;ch: 120ml</p>\n<p>Ch&eacute;n thi&ecirc;n mục c&oacute; c&ocirc;ng dụng l&agrave; l&agrave;m cho nước mềm hơn. Gi&uacute;p tr&agrave; ch&eacute;n lưu giữ hương thơm l&acirc;u hơn v&agrave; giữ nhiệt tốt hơn.</p>\n<p>Kh&aacute;ch h&agrave;ng c&oacute; thể đổi trả sản phẩm trong v&ograve;ng 7 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng, tiền vận chuyển sẽ do người mua h&agrave;ng chi trả. Cửa h&agrave;ng chỉ chịu tr&aacute;ch nhiệm khi giao nhầm sản phẩm v&agrave; sản phẩm bị hư hỏng trong qu&aacute; tr&igrave;nh vận chuyển. Việt Long Tr&agrave; Xin cảm ơn. Mọi chi tiết xin li&ecirc;n hệ</p>\n<p>164a Nguyễn Ch&iacute; Thanh - Tp Đ&agrave; Nẵng</p>\n<p>0939222522</p>', NULL, NULL, NULL, '<p>Ch&eacute;n sứ men hoả biến</p>\n<p>Ch&eacute;n thi&ecirc;n mục cao cấp&nbsp;</p>', NULL, NULL, '100,000', NULL, NULL, 1, '2024-02-06 08:56:26', '2024-03-03 00:09:33', NULL, NULL),
(22, 'CHENSUMEN01', 'Chén sứ men hoả biến - Chén chủ - Chén thiên mục cao cấp - 150ml', 'chen-su-men-hoa-bien-chen-chu-chen-thien-muc-cao-cap-150ml', NULL, '<p>Ch&eacute;n sứ men hoả biến Ch&eacute;n thi&ecirc;n mục cao cấp Ch&eacute;n chủ Dung t&iacute;ch: 100ml</p>\n<p>Ch&eacute;n thi&ecirc;n mục c&oacute; c&ocirc;ng dụng l&agrave; l&agrave;m cho nước mềm hơn. Gi&uacute;p tr&agrave; ch&eacute;n lưu giữ hương thơm l&acirc;u hơn v&agrave; giữ nhiệt tốt hơn.</p>\n<p>Kh&aacute;ch h&agrave;ng c&oacute; thể đổi trả sản phẩm trong v&ograve;ng 7 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng, tiền vận chuyển sẽ do người mua h&agrave;ng chi trả. Cửa h&agrave;ng chỉ chịu tr&aacute;ch nhiệm khi giao nhầm sản phẩm v&agrave; sản phẩm bị hư hỏng trong qu&aacute; tr&igrave;nh vận chuyển. Việt Long Tr&agrave; Xin cảm ơn. Mọi chi tiết xin li&ecirc;n hệ</p>\n<p>164a Nguyễn Ch&iacute; Thanh - Tp Đ&agrave; Nẵng</p>\n<p>0939222522</p>', NULL, NULL, NULL, '<p>Ch&eacute;n sứ men hoả biến</p>\n<p>Ch&eacute;n thi&ecirc;n mục cao cấp</p>\n<p>Ch&eacute;n chủ</p>', NULL, NULL, '100,000', NULL, NULL, 1, '2024-02-06 09:00:09', '2024-03-03 00:09:57', NULL, NULL),
(23, 'CHENSUMEN02', 'Chén nón men hoả biến - Chén thiên mục độc đáo - 100ml', 'chen-non-men-hoa-bien-chen-thien-muc-doc-dao-100ml', NULL, '<p>Ch&eacute;n n&oacute;n men hoả biến Dung t&iacute;ch: 100ml&nbsp;</p>\n<p>164a Nguyễn Ch&iacute; Thanh - Tp Đ&agrave; Nẵng</p>\n<p>0939222522</p>\n<p>Thi&ecirc;n Mục hay Tenmoku l&agrave; chất men nổi tiếng của Trung Quốc v&agrave; Nhật Bản. Kh&aacute;c với c&aacute;c loại men th&ocirc;ng thường khi c&oacute; m&agrave;u s&aacute;ng như trắng hay xanh ngọc b&iacute;ch, men Thi&ecirc;n Mục thường l&agrave; kết hợp của những mảng m&agrave;u tối của đất v&agrave; kim loại bị nung ở nhiệt độ rất cao. Thi&ecirc;n Mục được người Nhật đặt theo t&ecirc;n một ngọn n&uacute;i ở Ph&uacute;c Kiến, theo t&agrave;i liệu ghi nhận th&igrave; c&aacute;c nh&agrave; sư Nhật Bản gh&eacute; qua đền tr&ecirc;n n&uacute;i Thi&ecirc;n Mục v&agrave; thấy c&aacute;c nh&agrave; sư nơi đ&acirc;y sử dụng ch&eacute;n tr&agrave; l&agrave;m từ chất men lạ, n&ecirc;n khi đưa đồ gốm tr&aacute;ng men n&agrave;y về nước cũng gọi theo t&ecirc;n ngọn n&uacute;i n&agrave;y. C&ograve;n ở Trung Quốc người ta gọi loại men n&agrave;y l&agrave; Kiến Trản. Đồ gốm tr&aacute;ng men Thi&ecirc;n Mục rất được ưa chuộng v&agrave;o thời nh&agrave; Tống (960-1279) v&agrave; Bắc cũng như Nam Tống sau n&agrave;y. V&agrave;o giai đoạn n&agrave;y th&igrave; gốm tr&aacute;ng men Thi&ecirc;n Mục cũng được xuất sang cả Nhật Bản v&agrave; được giới quan lại v&agrave; thương gia nước n&agrave;y rất ưa chuộng v&igrave; sở hữu loại đồ gốm n&agrave;y ch&iacute;nh l&agrave; biểu hiện cho sự gi&agrave;u c&oacute;. Sau n&agrave;y người Nhật đưa phong c&aacute;ch tr&aacute;ng men n&agrave;y về nước để tự sản xuất men Thi&ecirc;n Mục v&agrave; bảo tồn phong c&aacute;ch n&agrave;y cho đến tận b&acirc;y giờ.</p>', NULL, NULL, NULL, '<p>Ch&eacute;n n&oacute;n men hoả biến</p>', NULL, NULL, '100,000', NULL, 'https://shopee.vn/Ch%C3%A9n-n%C3%B3n-men-ho%E1%BA%A3-bi%E1%BA%BFn-Ch%C3%A9n-thi%C3%AAn-m%E1%BB%A5c-%C4%91%E1%BB%99c-%C4%91%C3%A1o-100ml-Vi%E1%BB%87t-Long-Tr%C3%A0-i.254019972.20924420236?sp_atk=f20b608f-3cfb-4018-8708-9debc8584617&xptdk=f20b608f-3cfb-4018-8708-9debc8584617', 1, '2024-02-06 09:09:13', '2024-03-03 00:10:36', NULL, NULL),
(24, 'CHENSUMEN02', 'Chén nón men hoả biến - Chén thiên mục độc đáo - 100ml', 'chen-non-men-hoa-bien-chen-thien-muc-doc-dao-100ml-', NULL, '<p>Ch&eacute;n n&oacute;n men hoả biến Dung t&iacute;ch: 100ml</p>\n<p>164a Nguyễn Ch&iacute; Thanh - Tp Đ&agrave; Nẵng</p>\n<p>0939222522</p>\n<p>Thi&ecirc;n Mục hay Tenmoku l&agrave; chất men nổi tiếng của Trung Quốc v&agrave; Nhật Bản. Kh&aacute;c với c&aacute;c loại men th&ocirc;ng thường khi c&oacute; m&agrave;u s&aacute;ng như trắng hay xanh ngọc b&iacute;ch, men Thi&ecirc;n Mục thường l&agrave; kết hợp của những mảng m&agrave;u tối của đất v&agrave; kim loại bị nung ở nhiệt độ rất cao. Thi&ecirc;n Mục được người Nhật đặt theo t&ecirc;n một ngọn n&uacute;i ở Ph&uacute;c Kiến, theo t&agrave;i liệu ghi nhận th&igrave; c&aacute;c nh&agrave; sư Nhật Bản gh&eacute; qua đền tr&ecirc;n n&uacute;i Thi&ecirc;n Mục v&agrave; thấy c&aacute;c nh&agrave; sư nơi đ&acirc;y sử dụng ch&eacute;n tr&agrave; l&agrave;m từ chất men lạ, n&ecirc;n khi đưa đồ gốm tr&aacute;ng men n&agrave;y về nước cũng gọi theo t&ecirc;n ngọn n&uacute;i n&agrave;y. C&ograve;n ở Trung Quốc người ta gọi loại men n&agrave;y l&agrave; Kiến Trản. Đồ gốm tr&aacute;ng men Thi&ecirc;n Mục rất được ưa chuộng v&agrave;o thời nh&agrave; Tống (960-1279) v&agrave; Bắc cũng như Nam Tống sau n&agrave;y. V&agrave;o giai đoạn n&agrave;y th&igrave; gốm tr&aacute;ng men Thi&ecirc;n Mục cũng được xuất sang cả Nhật Bản v&agrave; được giới quan lại v&agrave; thương gia nước n&agrave;y rất ưa chuộng v&igrave; sở hữu loại đồ gốm n&agrave;y ch&iacute;nh l&agrave; biểu hiện cho sự gi&agrave;u c&oacute;. Sau n&agrave;y người Nhật đưa phong c&aacute;ch tr&aacute;ng men n&agrave;y về nước để tự sản xuất men Thi&ecirc;n Mục v&agrave; bảo tồn phong c&aacute;ch n&agrave;y cho đến tận b&acirc;y giờ.</p>', NULL, NULL, NULL, '<p>Ch&eacute;n n&oacute;n men hoả biến&nbsp;</p>', NULL, NULL, '100,000', NULL, 'https://shopee.vn/Ch%C3%A9n-n%C3%B3n-men-ho%E1%BA%A3-bi%E1%BA%BFn-Ch%C3%A9n-thi%C3%AAn-m%E1%BB%A5c-%C4%91%E1%BB%99c-%C4%91%C3%A1o-100ml-Vi%E1%BB%87t-Long-Tr%C3%A0-i.254019972.21424421246?sp_atk=ef194330-343b-4b7a-9d09-0327dfa18f6a&xptdk=ef194330-343b-4b7a-9d09-0327dfa18f6a', 1, '2024-02-06 09:13:45', '2024-03-03 00:10:57', NULL, NULL),
(32, 'CHENSUMEN02', 'Chén sứ Cảnh Đức - Chén miệng rộng - 80ml', 'chen-su-canh-duc-chen-mieng-rong-80ml', NULL, '<p>&nbsp;</p>\n<p>Cảnh Đức Trấn l&agrave; một trung t&acirc;m sản xuất sứ quan trọng của Trung Quốc. Đ&oacute; l&agrave; l&ograve; gốm sứ c&oacute; tuổi thọ l&acirc;u nhất so với c&aacute;c l&ograve; sứ tr&ecirc;n đất Trung Quốc. Sản phẩm gốm sứ của l&ograve; thường c&oacute; những đặc trưng ri&ecirc;ng. L&ograve; Cảnh Đức sản xuất nhiều loại sứ như sứ trắng, sứ xanh. Nhưng nổi bật v&agrave; đặc biệt hơn cả l&agrave; \"thanh bạch xứ\" hay c&ograve;n gọi l&agrave; sứ trắng xanh. M&agrave;u men nằm giữa hai m&agrave;u trắng v&agrave; m&agrave;u xanh, trong xanh c&oacute; trắng, trong trắng c&oacute; xanh.</p>\n<p class=\"p1\"><span class=\"s1\">______ ______ ______</span></p>\n<p class=\"p2\">&nbsp;</p>\n<p class=\"p1\"><span class=\"s1\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng</span></p>\n<p class=\"p1\"><span class=\"s1\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng</span></p>\n<p class=\"p1\"><span class=\"s1\">Sdt/Zalo: 0939 222 522</span></p>\n<p class=\"p1\"><span class=\"s1\">Website: https://vietlongtra.com</span></p>\n<p class=\"p1\"><span class=\"s1\">Hoạt động: 9h00am-21:00pm</span></p>\n<p class=\"p1\"><span class=\"s1\">#trangontaidanang<span class=\"Apple-converted-space\">&nbsp; </span>#amtratusataidanang #traquatangtaidanang #traoolongtaidanang </span></p>\n<p class=\"p1\"><span class=\"s1\">#vietlongtradanang<span class=\"Apple-converted-space\">&nbsp; &nbsp;</span></span></p>', NULL, NULL, NULL, '<p>Ch&eacute;n sứ Cảnh Đức Ch&eacute;n miệng rộng</p>\n<p>Dung t&iacute;ch: 80ml</p>\n<p>K&iacute;ch thước: 8x8x3.5 (D&agrave;i x Rộng x Cao)</p>', NULL, NULL, '55,000', NULL, 'https://shopee.vn/Ch%C3%A9n-s%E1%BB%A9-C%E1%BA%A3nh-%C4%90%E1%BB%A9c-Ch%C3%A9n-mi%E1%BB%87ng-r%E1%BB%99ng-80ml-Vi%E1%BB%87t-Long-Tr%C3%A0-i.254019972.20724322942?sp_atk=02967bc7-7f00-4e62-bda0-412b3dc64e89&xptdk=02967bc7-7f00-4e62-bda0-412b3dc64e89', 1, '2024-02-06 09:43:20', '2024-03-03 08:11:35', NULL, NULL),
(33, 'CHENSUMEN02', 'Chén nón men hoả biến - Chén thiên mục cao cấp - Chén ngọc đà - 70ml', 'chen-non-men-hoa-bien-chen-thien-muc-cao-cap--hen-ngoc-da-70ml', NULL, '<p>Ch&eacute;n n&oacute;n men hoả biến - Ch&eacute;n ngọc đ&agrave;</p>\n<p>Ch&eacute;n thi&ecirc;n mục cao cấp Dung t&iacute;ch: 70ml</p>\n<p>Ch&eacute;n thi&ecirc;n mục c&oacute; c&ocirc;ng dụng l&agrave; l&agrave;m cho nước mềm hơn. Gi&uacute;p tr&agrave; ch&eacute;n lưu giữ hương thơm l&acirc;u hơn v&agrave; giữ nhiệt tốt hơn.</p>\n<p>Kh&aacute;ch h&agrave;ng c&oacute; thể đổi trả sản phẩm trong v&ograve;ng 7 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng, tiền vận chuyển sẽ do người mua h&agrave;ng chi trả. Cửa h&agrave;ng chỉ chịu tr&aacute;ch nhiệm khi giao nhầm sản phẩm v&agrave; sản phẩm bị hư hỏng trong qu&aacute; tr&igrave;nh vận chuyển. Việt Long Tr&agrave; Xin cảm ơn. Mọi chi tiết xin li&ecirc;n hệ</p>\n<p class=\"p1\"><span class=\"s1\">______ ______ ______</span></p>\n<p class=\"p2\">&nbsp;</p>\n<p class=\"p1\"><span class=\"s1\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng</span></p>\n<p class=\"p1\"><span class=\"s1\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng</span></p>\n<p class=\"p1\"><span class=\"s1\">Sdt/Zalo: 0939 222 522</span></p>\n<p class=\"p1\"><span class=\"s1\">Website: https://vietlongtra.com</span></p>\n<p class=\"p1\"><span class=\"s1\">Hoạt động: 9h00am-21:00pm</span></p>\n<p class=\"p1\"><span class=\"s1\">#trangontaidanang<span class=\"Apple-converted-space\">&nbsp; </span>#amtratusataidanang #traquatangtaidanang #traoolongtaidanang </span></p>\n<p class=\"p1\"><span class=\"s1\">#vietlongtradanang<span class=\"Apple-converted-space\">&nbsp; &nbsp;</span></span></p>', NULL, NULL, NULL, '<p>Ch&eacute;n n&oacute;n men hoả biến - Ch&eacute;n ngọc đ&agrave;</p>\n<p>Ch&eacute;n thi&ecirc;n mục cao cấp Dung t&iacute;ch: 70ml</p>\n<p>Ch&eacute;n thi&ecirc;n mục c&oacute; c&ocirc;ng dụng l&agrave; l&agrave;m cho nước mềm hơn. Gi&uacute;p tr&agrave; ch&eacute;n lưu giữ hương thơm l&acirc;u hơn v&agrave; giữ nhiệt tốt hơn.</p>', NULL, NULL, '200,000', NULL, 'https://shopee.vn/Ch%C3%A9n-n%C3%B3n-men-ho%E1%BA%A3-bi%E1%BA%BFn-Ch%C3%A9n-thi%C3%AAn-m%E1%BB%A5c-cao-c%E1%BA%A5p-Ch%C3%A9n-ng%E1%BB%8Dc-%C4%91%C3%A0-70ml-Vi%E1%BB%87t-Long-Tr%C3%A0-i.254019972.19924707142?sp_atk=381ada60-ea59-4090-884f-fa34045ae18a&xptdk=381ada60-ea59-4090-884f-fa34045ae18a', 1, '2024-02-06 09:48:06', '2024-03-03 08:11:23', NULL, NULL),
(34, 'CHENSUMEN02', 'Chén nón men hoả biến - Chén thiên mục cao cấp - Chén ngọc đỏ - 70ml', 'chen-non-men-hoa-bien---chen-thien-muc-cao-cap---chen-ngoc-do---70ml', NULL, '<p>Ch&eacute;n n&oacute;n men hoả biến - Ch&eacute;n ngọc đỏ</p>\n<p>Ch&eacute;n thi&ecirc;n mục cao cấp Dung t&iacute;ch: 70ml</p>\n<p>Ch&eacute;n thi&ecirc;n mục c&oacute; c&ocirc;ng dụng l&agrave; l&agrave;m cho nước mềm hơn. Gi&uacute;p tr&agrave; ch&eacute;n lưu giữ hương thơm l&acirc;u hơn v&agrave; giữ nhiệt tốt hơn.</p>\n<p>Kh&aacute;ch h&agrave;ng c&oacute; thể đổi trả sản phẩm trong v&ograve;ng 7 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng, tiền vận chuyển sẽ do người mua h&agrave;ng chi trả. Cửa h&agrave;ng chỉ chịu tr&aacute;ch nhiệm khi giao nhầm sản phẩm v&agrave; sản phẩm bị hư hỏng trong qu&aacute; tr&igrave;nh vận chuyển. Việt Long Tr&agrave; Xin cảm ơn. Mọi chi tiết xin li&ecirc;n hệ</p>\n<p class=\"p1\"><span class=\"s1\">______ ______ ______</span></p>\n<p class=\"p2\">&nbsp;</p>\n<p class=\"p1\"><span class=\"s1\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng</span></p>\n<p class=\"p1\"><span class=\"s1\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng</span></p>\n<p class=\"p1\"><span class=\"s1\">Sdt/Zalo: 0939 222 522</span></p>\n<p class=\"p1\"><span class=\"s1\">Website: https://vietlongtra.com</span></p>\n<p class=\"p1\"><span class=\"s1\">Hoạt động: 9h00am-21:00pm</span></p>\n<p class=\"p1\"><span class=\"s1\">#trangontaidanang<span class=\"Apple-converted-space\">&nbsp; </span>#amtratusataidanang #traquatangtaidanang #traoolongtaidanang </span></p>\n<p class=\"p1\"><span class=\"s1\">#vietlongtradanang<span class=\"Apple-converted-space\">&nbsp; &nbsp;</span></span></p>', NULL, NULL, NULL, '<p>Ch&eacute;n n&oacute;n men hoả biến - Ch&eacute;n ngọc đỏ</p>\n<p>Ch&eacute;n thi&ecirc;n mục cao cấp Dung t&iacute;ch: 70ml</p>\n<p>Ch&eacute;n thi&ecirc;n mục c&oacute; c&ocirc;ng dụng l&agrave; l&agrave;m cho nước mềm hơn. Gi&uacute;p tr&agrave; ch&eacute;n lưu giữ hương thơm l&acirc;u hơn v&agrave; giữ nhiệt tốt hơn.</p>', NULL, NULL, '200,000', NULL, 'https://shopee.vn/Ch%C3%A9n-n%C3%B3n-men-ho%E1%BA%A3-bi%E1%BA%BFn-Ch%C3%A9n-thi%C3%AAn-m%E1%BB%A5c-cao-c%E1%BA%A5p-Ch%C3%A9n-ng%E1%BB%8Dc-%C4%91%E1%BB%8F-70ml-Vi%E1%BB%87t-Long-Tr%C3%A0-i.254019972.19624703814?sp_atk=9ee06848-6ec7-4756-b74c-0346b8505a84&xptdk=9ee06848-6ec7-4756-b74c-0346b8505a84', 1, '2024-02-06 09:54:55', '2024-03-03 08:11:08', NULL, NULL),
(35, 'CHENSUMEN02', 'Chén nón men hoả biến - Chén thiên mục cao cấp - Chén ngọc xanh - 70ml', 'chen-non-men-hoa-bien---chen-thien-muc-cao-cap---chen-ngoc-xanh---70ml', NULL, '<p>Ch&eacute;n n&oacute;n men hoả biến - Ch&eacute;n ngọc xanh</p>\n<p>Ch&eacute;n thi&ecirc;n mục cao cấp Dung t&iacute;ch: 70ml</p>\n<p>Ch&eacute;n thi&ecirc;n mục c&oacute; c&ocirc;ng dụng l&agrave; l&agrave;m cho nước mềm hơn. Gi&uacute;p tr&agrave; ch&eacute;n lưu giữ hương thơm l&acirc;u hơn v&agrave; giữ nhiệt tốt hơn.&nbsp;</p>\n<p>Kh&aacute;ch h&agrave;ng c&oacute; thể đổi trả sản phẩm trong v&ograve;ng 7 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng, tiền vận chuyển sẽ do người mua h&agrave;ng chi trả. Cửa h&agrave;ng chỉ chịu tr&aacute;ch nhiệm khi giao nhầm sản phẩm v&agrave; sản phẩm bị hư hỏng trong qu&aacute; tr&igrave;nh vận chuyển. Việt Long Tr&agrave; Xin cảm ơn. Mọi chi tiết xin li&ecirc;n hệ</p>\n<p class=\"p1\"><span class=\"s1\">______ ______ ______</span></p>\n<p class=\"p2\">&nbsp;</p>\n<p class=\"p1\"><span class=\"s1\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng</span></p>\n<p class=\"p1\"><span class=\"s1\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng</span></p>\n<p class=\"p1\"><span class=\"s1\">Sdt/Zalo: 0939 222 522</span></p>\n<p class=\"p1\"><span class=\"s1\">Website: https://vietlongtra.com</span></p>\n<p class=\"p1\"><span class=\"s1\">Hoạt động: 9h00am-21:00pm</span></p>\n<p class=\"p1\"><span class=\"s1\">#trangontaidanang<span class=\"Apple-converted-space\">&nbsp; </span>#amtratusataidanang #traquatangtaidanang #traoolongtaidanang </span></p>\n<p class=\"p1\"><span class=\"s1\">#vietlongtradanang<span class=\"Apple-converted-space\">&nbsp; &nbsp;</span></span></p>', NULL, NULL, NULL, '<p>Ch&eacute;n n&oacute;n men hoả biến - Ch&eacute;n ngọc xanh</p>\n<p>Ch&eacute;n thi&ecirc;n mục cao cấp Dung t&iacute;ch: 70ml</p>\n<p>Ch&eacute;n thi&ecirc;n mục c&oacute; c&ocirc;ng dụng l&agrave; l&agrave;m cho nước mềm hơn. Gi&uacute;p tr&agrave; ch&eacute;n lưu giữ hương thơm l&acirc;u hơn v&agrave; giữ nhiệt tốt hơn.&nbsp;</p>', NULL, NULL, '200,000', NULL, NULL, 1, '2024-02-06 09:58:04', '2024-03-03 08:10:53', NULL, NULL),
(36, 'CHENSUMEN02', 'Chén sứ men hoả biến - Chén chủ - Chén thiên mục cao cấp - Phượng hoàng lửa - 100ml', 'chen-su-men-hoa-bien---chen-chu---chen-thien-muc-cao-cap---phuong-hoang-lua---100ml', NULL, '<p>Ch&eacute;n sứ men hoả biến</p>\n<p>Ch&eacute;n thi&ecirc;n mục cao cấp</p>\n<p>Ch&eacute;n chủ Ch&eacute;n phượng ho&agrave;ng lửa Dung t&iacute;ch: 100ml</p>\n<p>Ch&eacute;n thi&ecirc;n mục c&oacute; c&ocirc;ng dụng l&agrave; l&agrave;m cho nước mềm hơn. Gi&uacute;p tr&agrave; ch&eacute;n lưu giữ hương thơm l&acirc;u hơn v&agrave; giữ nhiệt tốt hơn.</p>\n<p>Kh&aacute;ch h&agrave;ng c&oacute; thể đổi trả sản phẩm trong v&ograve;ng 7 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng, tiền vận chuyển sẽ do người mua h&agrave;ng chi trả. Cửa h&agrave;ng chỉ chịu tr&aacute;ch nhiệm khi giao nhầm sản phẩm v&agrave; sản phẩm bị hư hỏng trong qu&aacute; tr&igrave;nh vận chuyển. Việt Long Tr&agrave; Xin cảm ơn. Mọi chi tiết xin li&ecirc;n hệ</p>\n<p class=\"p1\"><span class=\"s1\">______ ______ ______</span></p>\n<p class=\"p2\">&nbsp;</p>\n<p class=\"p1\"><span class=\"s1\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng</span></p>\n<p class=\"p1\"><span class=\"s1\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng</span></p>\n<p class=\"p1\"><span class=\"s1\">Sdt/Zalo: 0939 222 522</span></p>\n<p class=\"p1\"><span class=\"s1\">Website: https://vietlongtra.com</span></p>\n<p class=\"p1\"><span class=\"s1\">Hoạt động: 9h00am-21:00pm</span></p>\n<p class=\"p1\"><span class=\"s1\">#trangontaidanang<span class=\"Apple-converted-space\">&nbsp; </span>#amtratusataidanang #traquatangtaidanang #traoolongtaidanang </span></p>\n<p class=\"p1\"><span class=\"s1\">#vietlongtradanang<span class=\"Apple-converted-space\">&nbsp; &nbsp;</span></span></p>', NULL, NULL, NULL, '<p>Ch&eacute;n sứ men hoả biến</p>\n<p>Ch&eacute;n thi&ecirc;n mục cao cấp</p>\n<p>Ch&eacute;n chủ Ch&eacute;n phượng ho&agrave;ng lửa Dung t&iacute;ch: 100ml</p>', NULL, NULL, '100,000', NULL, 'https://shopee.vn/Ch%C3%A9n-s%E1%BB%A9-men-ho%E1%BA%A3-bi%E1%BA%BFn-Ch%C3%A9n-ch%E1%BB%A7-Ch%C3%A9n-thi%C3%AAn-m%E1%BB%A5c-cao-c%E1%BA%A5p-Ph%C6%B0%E1%BB%A3ng-ho%C3%A0ng-l%E1%BB%ADa-100ml-Vi%E1%BB%87t-Long-Tr%C3%A0-i.254019972.21824784198?sp_atk=89efb414-3b8c-4406-aeb4-7eb7356fd19b&xptdk=89efb414-3b8c-4406-aeb4-7eb7356fd19b', 1, '2024-02-06 10:00:57', '2024-03-03 08:10:39', NULL, NULL),
(37, 'CHENSUMEN02', 'Chén sứ men hoả biến - Chén thiên mục cao cấp - 150ml', 'chen-su-men-hoa-bien---chen-thien-muc-cao-cap---150ml', NULL, '<p>Ch&eacute;n sứ men hoả biến</p>\n<p>Ch&eacute;n thi&ecirc;n mục cao cấp Dung t&iacute;ch: 150ml</p>\n<p>Ch&eacute;n thi&ecirc;n mục c&oacute; c&ocirc;ng dụng l&agrave; l&agrave;m cho nước mềm hơn. Gi&uacute;p tr&agrave; ch&eacute;n lưu giữ hương thơm l&acirc;u hơn v&agrave; giữ nhiệt tốt hơn.</p>\n<p>Kh&aacute;ch h&agrave;ng c&oacute; thể đổi trả sản phẩm trong v&ograve;ng 7 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng, tiền vận chuyển sẽ do người mua h&agrave;ng chi trả. Cửa h&agrave;ng chỉ chịu tr&aacute;ch nhiệm khi giao nhầm sản phẩm v&agrave; sản phẩm bị hư hỏng trong qu&aacute; tr&igrave;nh vận chuyển. Việt Long Tr&agrave; Xin cảm ơn. Mọi chi tiết xin li&ecirc;n hệ</p>\n<p class=\"p1\"><span class=\"s1\">______ ______ ______</span></p>\n<p class=\"p2\">&nbsp;</p>\n<p class=\"p1\"><span class=\"s1\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng</span></p>\n<p class=\"p1\"><span class=\"s1\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng</span></p>\n<p class=\"p1\"><span class=\"s1\">Sdt/Zalo: 0939 222 522</span></p>\n<p class=\"p1\"><span class=\"s1\">Website: https://vietlongtra.com</span></p>\n<p class=\"p1\"><span class=\"s1\">Hoạt động: 9h00am-21:00pm</span></p>\n<p class=\"p1\"><span class=\"s1\">#trangontaidanang<span class=\"Apple-converted-space\">&nbsp; </span>#amtratusataidanang #traquatangtaidanang #traoolongtaidanang </span></p>\n<p class=\"p1\"><span class=\"s1\">#vietlongtradanang<span class=\"Apple-converted-space\">&nbsp; &nbsp;</span></span></p>', NULL, NULL, NULL, '<p>Ch&eacute;n sứ men hoả biến</p>\n<p>Ch&eacute;n thi&ecirc;n mục cao cấp Dung t&iacute;ch: 150ml</p>\n<p>Ch&eacute;n thi&ecirc;n mục c&oacute; c&ocirc;ng dụng l&agrave; l&agrave;m cho nước mềm hơn. Gi&uacute;p tr&agrave; ch&eacute;n lưu giữ hương thơm l&acirc;u hơn v&agrave; giữ nhiệt tốt hơn.</p>', NULL, NULL, '200,000', NULL, 'https://shopee.vn/Ch%C3%A9n-s%E1%BB%A9-men-ho%E1%BA%A3-bi%E1%BA%BFn-Ch%C3%A9n-thi%C3%AAn-m%E1%BB%A5c-cao-c%E1%BA%A5p-150ml-Vi%E1%BB%87t-Long-Tr%C3%A0-i.254019972.12795094216?sp_atk=4547abc9-2b02-48f7-a969-6cef9e9a65e9&xptdk=4547abc9-2b02-48f7-a969-6cef9e9a65e9', 1, '2024-02-06 10:02:41', '2024-03-03 08:10:23', NULL, NULL),
(40, 'A94', 'Ấm Lê Hình Đại Hồng Bào - Nghệ nhân Hứa Ngọc Phong', 'am-le-hinh-dai-hong-bao---nghe--hua-ngoc-phong', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng.</p>\n<p>Địa chỉ: 164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<p>Ấm L&ecirc; H&igrave;nh Đại Hồng b&agrave;o&nbsp;</p>\n<p>Nghệ nh&acirc;n: Hứa Ngọc Phong&nbsp;</p>\n<p>Lọc: hoa mai</p>\n<p>Dung t&iacute;ch: 110 ml</p>', NULL, NULL, '1,100,000', NULL, NULL, 1, '2024-02-28 20:23:31', '2024-03-03 08:10:10', NULL, NULL),
(41, 'A90', 'Ấm Bào Tôn Tử Nê - Nghệ nhân Từ Phong', 'am-bao-ton-tu-ne---nghe--tu-phong', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng.</p>\n<p>Địa chỉ: 164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<p>Ấm B&agrave;o T&ocirc;n Tử N&ecirc;&nbsp;</p>\n<p>Nghệ nh&acirc;n: Từ Phong</p>\n<p>Dung t&iacute;ch: 165ml</p>\n<p>Lọc: tổ ong&nbsp;</p>', NULL, NULL, '1,000,000', NULL, NULL, 1, '2024-02-28 20:39:55', '2024-03-03 08:09:56', NULL, NULL),
(42, 'A91', 'Tiêu Anh Đại Hồng bào - Nghệ nhân Hứa Ngọc Phong', 'tieu-anh-dai-hong-bao---nghe--hua-ngoc-phong', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng.</p>\n<p>Địa chỉ: 164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<p>Ấm Ti&ecirc;u Anh Đại Hồng B&agrave;o&nbsp;</p>\n<p>Nghệ nh&acirc;n: Hứa Ngọc Phong</p>\n<p>Dung t&iacute;ch: 125ml</p>\n<p>Lọc: hoa mai</p>\n<p>&nbsp;</p>', NULL, NULL, '1,100,000', NULL, NULL, 1, '2024-02-28 20:49:10', '2024-03-03 08:09:42', NULL, NULL),
(43, 'A102', 'Tây Thi Tử Nê - Nghệ nhân Từ Hạ', 'tay-thi-tu-ne---nghe-nhan-tu-ha', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng.</p>\n<p>Địa chỉ: 164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng</p>\n<p>Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<p>T&acirc;y Thi Tử N&ecirc;&nbsp;</p>\n<p>Nghệ nh&acirc;n : Từ Hạ</p>\n<p>Lọc: 9 lỗ</p>\n<p>Dung t&iacute;ch: 175 ml</p>', NULL, NULL, '1,100,000', NULL, NULL, 1, '2024-02-28 20:58:21', '2024-03-01 01:10:53', NULL, NULL),
(44, 'CHENSUCD', 'Chén sứ Cảnh Đức chim xanh - Dung tích 80ml', 'chen-su-canh-duc-chim-xanh---dung-tich-80ml', NULL, '<p>&nbsp;Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />Địa chỉ: 164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<p>Ch&eacute;n sứ Cảnh Đức<br />Dung t&iacute;ch 80ml<br />Mỗi chiếc ch&eacute;n l&agrave; những đường n&eacute;t tỉ mỉ v&agrave; tinh tế m&agrave; t&aacute;c giả gửi gắm v&agrave;o chiếc ch&eacute;n tạo ra cảm gi&aacute;c thư th&aacute;i v&agrave; thoải m&aacute;i cho người xem.&nbsp;</p>', NULL, NULL, '55,000', NULL, NULL, 1, '2024-02-29 02:00:20', '2024-03-01 01:10:48', NULL, NULL),
(45, 'CHENSUCD', 'Chén sứ Cảnh Đức hoa Sen - Dung tích 80 ml', 'chen-su-canh-duc-hoa-sen---dung-tich-80-ml', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />Địa chỉ: 164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<p>Ch&eacute;n sứ Cảnh Đức Hoa Sen<br />Dung t&iacute;ch 80ml<br />Mỗi chiếc ch&eacute;n l&agrave; những đường n&eacute;t tỉ mỉ v&agrave; tinh tế m&agrave; t&aacute;c giả gửi gắm v&agrave;o chiếc ch&eacute;n tạo ra cảm gi&aacute;c thư th&aacute;i v&agrave; thoải m&aacute;i cho người xem.&nbsp;</p>', NULL, NULL, '55,000', NULL, NULL, 1, '2024-02-29 02:08:37', '2024-03-01 01:10:43', NULL, NULL),
(46, 'CHENNON', 'Chén nón men lam - Dung tích 70ml', 'chen-non-men-lam---dung-tich-70ml', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />Địa chỉ: 164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>\n<p>&nbsp;</p>', NULL, NULL, NULL, '<p>Ch&eacute;n n&oacute;n men lam</p>\n<p>Dung &nbsp;t&iacute;ch: 70 ml</p>\n<p>Họa tiết c&aacute; v&agrave; hoa sen rất sống động.&nbsp;</p>', NULL, NULL, '35,000', NULL, NULL, 1, '2024-02-29 02:38:45', '2024-03-01 01:10:39', NULL, NULL),
(47, 'TONGTUDAOHOASEN', 'TỐNG TỬ ĐÀO KHẮC SEN', 'tong-tu-dao-khac-sen', NULL, '<div dir=\"auto\">Tống Tử Đ&agrave;o Kiến Thủy khắc Li&ecirc;n Hoa:</div>\n<div dir=\"auto\">\"Tử Đ&agrave;o\" đang được thị trường ưa chuộng bởi h&igrave;nh d&aacute;ng bắt mắt, hoa văn tinh xảo sắc n&eacute;t</div>\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\">Tống</span>&nbsp;được l&agrave;m thủ c&ocirc;ng, được nghệ nh&acirc;n trau chuốt một c&aacute;ch tỉ mỉ, cẩn thận.</div>\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\">Tống cầm chắc tay v&agrave; ngắt d&ograve;ng nước tốt</span></div>\n<div dir=\"auto\">Ngo&agrave;i c&ocirc;ng dụng điều h&ograve;a nhiệt độ của tr&agrave; khi d&ugrave;ng n&oacute; c&ograve;n được d&ugrave;ng như đồ trang tr&iacute; cho b&agrave;n tr&agrave; th&ecirc;m bắt mắt&nbsp;</div>\n<div dir=\"auto\">&nbsp;</div>\n<div dir=\"auto\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng</div>\n<div dir=\"auto\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng</div>\n<div dir=\"auto\">Sdt/Zalo: 0939 222 522</div>\n<div dir=\"auto\">Website: <a>https://vietlongtra.com</a></div>\n<div dir=\"auto\">Hoạt động: 9h00am-21:00pm</div>', NULL, NULL, NULL, '<div dir=\"auto\">Tống nung hoả biến chạm khắc hoa sen&nbsp;</div>\n<div dir=\"auto\">K&iacute;ch thước: 7,5cm x 7cm ( cao x đường k&iacute;nh)</div>\n<div dir=\"auto\">Dung t&iacute;ch: 255ml</div>', NULL, NULL, '350,000', NULL, NULL, 1, '2024-02-29 05:43:01', '2024-03-01 01:10:35', NULL, NULL),
(48, 'KHAYTRAKHACHAC', 'KHAY TRÀ TRE HUN KHÓI-KHẮC HẠC', 'khay-tra-tre-hun-khoi-khac-hac', NULL, '<div dir=\"auto\">Khay tr&agrave; tre hun kh&oacute;i Đ&agrave;i Loan được nhiều qu&yacute; tr&agrave; hữu lựa chọn bởi những điểm nổi trội:</div>\n<div dir=\"auto\">=&gt;D&agrave;y dặn, được đ&oacute;ng chắc chắn, tỉ mỉ.</div>\n<div dir=\"auto\">=&gt;Khay tr&agrave; đ&atilde; được xử l&iacute; chống mối mọt, cong v&ecirc;nh.</div>\n<div dir=\"auto\">=&gt;Khay d&ugrave;ng bền, thời gian sử dụng l&acirc;u d&agrave;i, tiết kiệm.</div>\n<div dir=\"auto\">H&igrave;nh thật do shop tự chụp, tất cả đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng:</div>\n<div dir=\"auto\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng</div>\n<div dir=\"auto\">Sdt/Zalo: 0939 222 522</div>\n<div dir=\"auto\">Website: <a>https://vietlongtra.com</a></div>\n<div dir=\"auto\">Hoạt động: 9h00am-21:00pm</div>', NULL, NULL, NULL, '<p>Khay tr&agrave; tre hun kh&oacute;i - Khắc hạc</p>\n<p>K&iacute;ch thước: 50cm x32,5cm x5,2cm</p>', NULL, NULL, '1,000,000', NULL, NULL, 1, '2024-02-29 06:29:42', '2024-03-01 05:11:46', NULL, NULL),
(49, 'HUTRASUNUIRUNG', 'HŨ ĐỰNG TRÀ SỨ HỌA TIẾT NÚI RỪNG -2200ML', 'hu-dung-tra-su-hoa-tiet-nui-rung--2200ml', NULL, '<div dir=\"auto\">Hủ đựng tr&agrave; sứ men rạn</div>\n<div dir=\"auto\">Hoạ tiết: n&uacute;i rừng</div>\n<div dir=\"auto\">K&iacute;ch thước: 16cm x 18cm ( Cao x Rộng )</div>\n<div dir=\"auto\">Dung t&iacute;ch: 2200ml</div>\n<div dir=\"auto\">Đựng được khoảng 1kg tr&agrave; oolong ngon&nbsp;</div>\n<div dir=\"auto\"><span class=\"x3nfvp2 x1j61x8r x1fcty0u xdj266r xhhsvwb xat24cr xgzva0m xxymvpz xlup9mm x1kky2od\">Chất liệu sứ d&agrave;y dặn, chắc tay. Phần nắp được thiết vừa vặn &ocirc;m kh&iacute;t miệng hũ tr&agrave;, từ đ&oacute; gi&uacute;p tr&agrave; giữ được nguy&ecirc;n m&ugrave;i vị l&acirc;u hơn. Họa tiết tỉ mỉ bắt mắt, ngo&agrave;i ra c&ograve;n được d&ugrave;ng như một vật để trang tr&iacute; b&agrave;n tr&agrave;.</span></div>\n<div dir=\"auto\">Khi d&ugrave;ng xong nắp cần đậy k&iacute;n, tr&aacute;nh bị ẩm mốc v&agrave; lưu giữ đ&uacute;ng hương vị nguy&ecirc;n bản tr&agrave;.</div>\n<div dir=\"auto\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</div>', NULL, NULL, NULL, '<p>Hũ đựng tr&agrave; sứ men rạn họa tiết n&uacute;i rừng size L</p>\n<p>Dung t&iacute;ch: 220ml</p>\n<p>&nbsp;</p>', NULL, NULL, '580,000', NULL, NULL, 1, '2024-02-29 06:48:27', '2024-03-01 01:10:26', NULL, NULL),
(50, 'CHENSULONGTUYEN', 'CHÉN SỨ LONG TUYỀN- 105ML', 'chen-su-long-tuyen--105ml', NULL, '<div dir=\"auto\">Ch&eacute;n sứ Long Tuyền&nbsp;</div>\n<div dir=\"auto\"><strong>Long Tuyền (龍泉 &ndash; &nbsp;Longquan Celadon)</strong>&nbsp;l&agrave; t&ecirc;n gọi của một d&ograve;ng gốm sứ Trung Hoa với m&agrave;u sắc điển h&igrave;nh như m&agrave;u xanh của ngọc, xanh &ldquo;green&rdquo;. Người Trung Quốc xếp ch&uacute;ng v&agrave;o nh&oacute;m &ldquo;&rdquo;thanh từ&rdquo;&rdquo; 青瓷, tức l&agrave; gốm sứ m&agrave;u xanh.</div>\n<div dir=\"auto\">M&agrave;u sắc tựa ngọc b&iacute;ch gợi l&ecirc;n vẻ đẹp dịu nhẹ v&agrave; thanh tho&aacute;t.</div>\n<div dir=\"auto\">Sử dụng ch&eacute;n Long Tuyền khi uống tr&agrave; nhận được sự y&ecirc;u th&iacute;ch của rất nhiều qu&yacute; tr&agrave; hữu.</div>\n<div dir=\"auto\">Chiếc ch&eacute;n kh&ocirc;ng chỉ l&agrave; người bạn m&agrave; c&ograve;n l&agrave; hiện th&acirc;n của nguồn năng lượng thuần khiết, sự c&acirc;n bằng, tĩnh lặng.</div>\n<div dir=\"auto\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</div>', NULL, NULL, NULL, '<p>Ch&eacute;n tr&agrave; sứ Long Tuyền</p>\n<p>Dung t&iacute;ch: 105ml</p>\n<p>&nbsp;</p>', NULL, NULL, '100,000', NULL, NULL, 1, '2024-03-01 00:36:26', '2024-03-01 01:10:21', NULL, NULL),
(51, 'CHENNONMENLAM', 'CHÉN NÓN MEN LAM HỌA TIẾT SEN-CÁ', 'chen-non-men-lam-hoa-tiet-sen-ca', NULL, '<p>D&ugrave; ch&eacute;n hay ấm men lam để lại dấu ấn s&acirc;u sắc trong l&ograve;ng những người chơi ấm v&agrave; thưởng tr&agrave;. Bởi vậy, mỗi chiếc ch&eacute;n men lam đều được chế t&aacute;c tỉ mỉ thể hiện vẻ trang trọng, chất lam vĩnh cửu với thời gian v&agrave; tạo ra vị tr&agrave; thơm ngon tuyệt đối. Nếu bạn đang cần t&igrave;m một trong những mẫu ch&eacute;n men lam đang được ưa chuộng, bạn c&oacute; thể tham khảo sản phẩm ch&eacute;n n&oacute;n men lam của Việt Long Tr&agrave;.</p>\n<p>Ngo&agrave;i ra, ch&eacute;n đ&aacute;y nhỏ, miệng rộng n&ecirc;n d&ugrave;ng chiếc ch&eacute;n n&oacute;n khi thưởng tr&agrave; v&agrave;o m&ugrave;a h&egrave; l&agrave; một sự lựa chọn s&aacute;ng suốt. Với h&igrave;nh d&aacute;ng đặc th&ugrave; n&oacute; gi&uacute;p điều h&ograve;a lượng nhiệt tr&agrave; kh&ocirc;ng qu&aacute; n&oacute;ng, tho&aacute;t nhiệt nhanh hơn so với c&aacute;c dạng ch&eacute;n kh&aacute;c, từ đ&oacute; gi&uacute;p qu&yacute; tr&agrave; hữu sớm được thưởng thức hương vị thơm ngon của tr&agrave; d&ugrave; trong m&ugrave;a h&egrave; n&oacute;ng bức.</p>\n<p>164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<p>Ch&eacute;n n&oacute;n men lam họa tiết sen-c&aacute;</p>\n<p>Dung t&iacute;ch: 70ml</p>\n<p>&nbsp;</p>', NULL, NULL, '35,000', NULL, NULL, 1, '2024-03-01 01:52:50', '2024-03-01 01:53:01', NULL, NULL),
(52, 'CHENSUMENRAN', 'CHÉN SỨ MEN RẠN-150ML', 'chen-su-men-ran-150ml', NULL, '<div dir=\"auto\">Ch&eacute;n chủ sứ men rạn</div>\n<div dir=\"auto\">Dung t&iacute;ch: 170ml</div>\n<div dir=\"auto\">Được bọc b&ecirc;n ngo&agrave;i lớp đất nung v&ocirc; c&ugrave;ng chắc chắn tạo n&ecirc;n một lớp m&agrave;ng bảo vệ v&agrave; sự cứng rắn cho chiếc ch&eacute;n.</div>\n<div dir=\"auto\">Ngo&agrave;i ra&nbsp; rạn l&agrave; d&ograve;ng men độc đ&aacute;o c&oacute; nhiều vết rạn được tạo ra do sự ch&ecirc;nh lệch về độ co gi&atilde;n giữa xương gốm v&agrave; men. Nhờ đ&oacute; tạo n&ecirc;n những h&igrave;nh rạn tam gi&aacute;c, tứ gi&aacute;c. Hay kể cả những h&igrave;nh xo&aacute;y tr&ograve;n ốc v&ocirc; c&ugrave;ng độc đ&aacute;o. Những vết rạn n&agrave;y đa dạng k&iacute;ch thước lớn nhỏ. Đặc biệt ch&eacute;n chủ sứ men rạn c&ograve;n đem lại cảm gi&aacute;c rất chắc tay khi cầm, chất d&agrave;y dặn n&ecirc;n sẽ tr&aacute;nh bị qu&aacute; n&oacute;ng tay khi cầm. Nhưng vẫn sẽ giữ được hương thơm, giữ nhiệt độ v&agrave; hương vị ngon nguy&ecirc;n bản của tr&agrave; l&acirc;u hơn.</div>\n<div dir=\"auto\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</div>', NULL, NULL, NULL, '<p>Ch&eacute;n sứ men rạn</p>\n<p>Dung t&iacute;ch: 150ml</p>\n<p>&nbsp;</p>', NULL, NULL, '200,000', NULL, NULL, 1, '2024-03-01 02:29:18', '2024-03-01 02:37:17', NULL, NULL),
(53, 'chenkhai', 'CHÉN KHẢI SỨ MEN RẠN', 'chen-khai-su-men-ran', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Ch&eacute;n khải gần như th&iacute;ch hợp để pha mọi loại tr&agrave;, hữu &iacute;ch với những tr&agrave; hữu thường hay t&igrave;m kiếm nhiều chiều hương vị mới trong thế giới tr&agrave; rộng lớn!</div>\n<div dir=\"auto\">Ưu điểm của ch&eacute;n khải l&agrave; khả năng kiểm so&aacute;t thời gian bằng c&aacute;ch quan s&aacute;t độ nở của l&aacute; tr&agrave; trong ch&eacute;n khải.</div>\n<div dir=\"auto\">B&ecirc;n cạnh đ&oacute; ch&eacute;n khải dễ d&agrave;ng vệ sinh, đổ bả tr&agrave; nhanh ch&oacute;ng.</div>\n<div dir=\"auto\">Một mẫu ch&eacute;n khải kết hợp với ch&eacute;n tr&agrave;, hủ tr&agrave; v&agrave; thuyền tr&agrave; bằng sứ. Mời qu&yacute; tr&agrave; hữu tham khảo nh&eacute;!</div>', NULL, NULL, '400,000', NULL, NULL, 1, '2024-03-01 03:47:11', '2024-03-03 02:55:34', NULL, NULL),
(54, 'botracu', 'BỘ TRÀ CỤ 5 MÓN', 'bo-tra-cu-5-mon', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Bộ tr&agrave; cụ 5 chi tiết k&egrave;m đế l&oacute;t ly cao cấp!</div>\n<div dir=\"auto\">Chất liệu: gỗ bọc đồng</div>\n<div dir=\"auto\">Set 5 m&oacute;n gồm: th&igrave;a x&uacute;c tr&agrave;, chuyền ch&eacute;n mời tr&agrave;, gậy gắp ch&eacute;n, dao t&aacute;ch tr&agrave;, chổi qu&eacute;t</div>\n<div dir=\"auto\">Đế l&oacute;t ly: 6 c&aacute;i, giữa c&aacute;c đế l&oacute;t ly c&oacute; nam ch&acirc;m h&uacute;t với nhau cực k&igrave; tiện lợi</div>\n<div dir=\"auto\">K&iacute;ch thước: 17.5cm x 7.5cm x 12cm (D&agrave;i x Rộng x Cao)</div>', NULL, NULL, '650,000', NULL, NULL, 1, '2024-03-01 03:52:19', '2024-03-03 02:53:54', NULL, NULL),
(55, 'delotly', 'ĐẾ LÓT LY GỖ MUN TỰ NHIÊN CAO CẤP', 'de-lot-ly-go-mun-tu-nhien-cao-cap', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Đế l&oacute;t ly gỗ mun tự nhi&ecirc;n từ gỗ nguy&ecirc;n khối</div>\n<div dir=\"auto\">Dụng cụ tr&agrave; đạo cao cấp</div>\n<div dir=\"auto\">K&iacute;ch thước: 6.8cmx6.8cm</div>\n<div dir=\"auto\">Đường k&iacute;nh: 1cm</div>', NULL, NULL, '250,000', NULL, NULL, 1, '2024-03-01 03:57:44', '2024-03-03 08:01:00', NULL, NULL),
(56, 'loctratusa', 'LỌC TRÀ TỬ SA', 'loc-tra-tu-sa', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Lọc tử sa tổ ong</div>\n<div dir=\"auto\">C&oacute; sẵn 3 m&agrave;u</div>', NULL, NULL, '180,000', NULL, NULL, 1, '2024-03-01 04:01:23', '2024-03-03 08:01:49', NULL, NULL),
(57, 'A73', 'THỦY BÌNH HẮC SA', 'thuy-binh-hac-sa', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Ấm tử sa Thủy B&igrave;nh</div>\n<div dir=\"auto\">Dung t&iacute;ch ấm 250ml</div>\n<div dir=\"auto\">Chất đất nguy&ecirc;n kho&aacute;ng hắc sa</div>\n<div dir=\"auto\">Xuất nước 9 lỗ</div>\n<div dir=\"auto\">Ấm c&oacute; giấy chứng nhận nghệ nh&acirc;n &amp; ấn, triện đầy đủ, hộp đựng sang trọng. Mời qu&yacute; tr&agrave; hữu tham khảo!</div>', NULL, NULL, '1,100,000', NULL, NULL, 1, '2024-03-01 04:21:28', '2024-03-03 08:02:59', NULL, NULL);
INSERT INTO `products` (`id`, `code_product`, `name_product`, `url_product`, `image_product`, `description_product`, `specifications`, `warranty`, `time_warranty`, `note`, `gift`, `price`, `cost`, `element_product`, `shopee_url`, `status`, `created_at`, `updated_at`, `create_by_id`, `last_modify_by_id`) VALUES
(58, 'A74', 'ẤM TÂY THI ĐẠI HỒNG BÀO PHƯỢNG HOÀNG', 'am-tay-thi-dai-hong-bao-phuong-hoang', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Ấm tử sa T&acirc;y Thi Phượng Ho&agrave;ng&nbsp;</div>\n<div dir=\"auto\">Chất đất: Đại Hồng B&agrave;o</div>\n<div dir=\"auto\">Dung t&iacute;ch: 150ml</div>\n<div dir=\"auto\">Lọc: Đa khổng</div>\n<div dir=\"auto\">Nghệ nh&acirc;n: Lưu Đ&agrave;o</div>\n<div dir=\"auto\">Ấm khắc ch&igrave;m Phượng Ho&agrave;ng ngậm hoa, gi&uacute;p chiếc ấm trở lệ đặc biệt hơn, ấm d&aacute;ng đẹp c&ocirc;ng năng tốt mời c&aacute;c b&aacute;c tham khảo!</div>', NULL, NULL, '1,600,000', NULL, NULL, 1, '2024-03-01 04:26:29', '2024-03-03 08:04:59', NULL, NULL),
(59, 'A75', 'NGƯU CÁI LIÊN TỬ CHU NÊ', 'nguu-cai-lien-tu-chu-ne', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Ấm tử sa Ngưu C&aacute;i Li&ecirc;n Tử Chu N&ecirc;</div>\n<div dir=\"auto\">Dung t&iacute;ch 240ml</div>\n<div dir=\"auto\">Lọc 9 lỗ</div>\n<div dir=\"auto\">Ấm ngoại h&igrave;nh đẹp v&agrave; c&ograve;n ngắt nước tốt nữa ạ!</div>', NULL, NULL, '1,700,000', NULL, NULL, 1, '2024-03-01 04:33:43', '2024-03-03 08:05:16', NULL, NULL),
(60, 'B10', 'ẤM TỬ SA CỦA NGHỆ NHÂN HỒ ĐÔNG LỊCH', 'am-tu-sa-cua-nghe-nhan-ho-dong-lich', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Một chiếc ấm rất độc đ&aacute;o của nghệ nh&acirc;n Hồ Đ&ocirc;ng Lịch</div>\n<div dir=\"auto\">Dung t&iacute;ch 150ml</div>\n<div dir=\"auto\">Lọc 9 lỗ</div>\n<div dir=\"auto\">Mời qu&yacute; tr&agrave; hữu tham khảo!</div>', NULL, NULL, '2,500,000', NULL, NULL, 1, '2024-03-01 04:40:18', '2024-03-03 02:57:25', NULL, NULL),
(61, 'A47', 'ẤM CUNG XUÂN ĐOÀN SA', 'am-cung-xuan-doan-sa', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Ấm Cung Xu&acirc;n Đo&agrave;n Sa</div>\n<div dir=\"auto\">Dung t&iacute;ch 130ml</div>\n<div dir=\"auto\">Lọc 9 lỗ</div>\n<div dir=\"auto\">Mời c&aacute;c b&aacute;c chi&ecirc;m ngưỡng em ấm thủ c&ocirc;ng to&agrave;n chế, d&ograve;ng chảy mạnh dứt kho&aacute;t, rất th&iacute;ch hợp pha c&aacute;c d&ograve;ng tr&agrave; olong!</div>', NULL, NULL, '2,000,000', NULL, NULL, 1, '2024-03-01 04:44:34', '2024-03-03 08:03:47', NULL, NULL),
(62, 'A78', 'ẤM PHỎNG CỔ ĐOÀN SA', 'am-phong-co-doan-sa', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Ấm Tử Sa Phỏng Cổ</div>\n<div dir=\"auto\">Chất đất: Đo&agrave;n Sa</div>\n<div dir=\"auto\">Dung t&iacute;ch: 220ml</div>\n<div dir=\"auto\">Lọc: 9 lỗ</div>\n<div dir=\"auto\">Ấm c&ocirc;ng năng tốt, ngoại h&igrave;nh đẹp, th&iacute;ch hợp pha c&aacute;c d&ograve;ng olong. Ấm sẵn tại shop, b&aacute;c n&agrave;o cần th&igrave; li&ecirc;n hệ cửa h&agrave;ng ạ!</div>', NULL, NULL, '1,500,000', NULL, NULL, 1, '2024-03-01 04:51:43', '2024-03-03 08:04:15', NULL, NULL),
(63, 'boamtrasonthuy', 'BỘ PHA TRÀ SỨ MEN RẠN SƠN THỦY', 'bo-pha-tra-su-men-ran-son-thuy', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Set ấm ch&eacute;n vali Sơn Thuỷ</div>\n<div dir=\"auto\">Chất liệu: sứ men rạn</div>\n<div dir=\"auto\">Set bao gồm: 1 ấm, 1 tống, 1 lọc, 1 đế lọc, 6 ch&eacute;n</div>\n<div dir=\"auto\">Bộ ấm với hoạ tiết v&agrave; m&agrave;u sắc thanh lịch, thuần khiết, phong c&aacute;ch v&agrave; độc đ&aacute;o rất th&iacute;ch hợp l&agrave;m qu&agrave; tặng v&agrave; pha tr&agrave; mời kh&aacute;ch</div>', NULL, NULL, '900,000', NULL, NULL, 1, '2024-03-01 04:56:54', '2024-03-03 02:56:40', NULL, NULL),
(64, 'hudungtra', 'HỦ ĐỰNG TRÀ SỨ HỌA TIẾT SƠN THỦY', 'hu-dung-tra-su-hoa-tiet-son-thuy', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Hủ đựng tr&agrave; sứ hoạ tiết sơn thuỷ</div>\n<div dir=\"auto\">Mẫu phong cảnh tươi mới, thanh lịch v&agrave; sống động</div>\n<div dir=\"auto\">Hủ đựng tr&agrave; mang vẻ đẹp cổ điển kết hợp với hiện đại - sự h&agrave;i ho&agrave; giữa thi&ecirc;n nhi&ecirc;n v&agrave; con người cũng l&agrave; một c&aacute;ch thưởng tr&agrave;!</div>', NULL, NULL, '320,000', NULL, NULL, 1, '2024-03-01 05:02:20', '2024-03-03 02:53:16', NULL, NULL),
(65, 'amcaocapso4', 'ẤM TỬ SA PHỎNG CỔ TỬ NÊ', 'am-tu-sa-phong-co-tu-ne', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Ấm tử sa Phỏng Cổ Tử N&ecirc;</div>\n<div dir=\"auto\">Một chiếc ấm tử sa cao cấp của cửa h&agrave;ng!</div>\n<div dir=\"auto\">Dung t&iacute;ch: 270 ml</div>\n<div dir=\"auto\">Lọc: hoa mai</div>\n<div dir=\"auto\">&nbsp;</div>', NULL, NULL, '7,000,000', NULL, NULL, 1, '2024-03-01 05:07:08', '2024-03-03 08:02:29', NULL, NULL),
(67, 'khaytragodanhuongM2', 'KHAY TRÀ GỖ ĐÀN HƯƠNG', 'khay-tra-go-dan-huong', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Khay tr&agrave; gỗ Đ&agrave;n Hương</div>\n<div dir=\"auto\">K&iacute;ch thước 57,5cm x 35cm x 7cm</div>\n<div dir=\"auto\">Khay c&oacute; bệ chưa nước dung t&iacute;ch lớn k&egrave;m ống dẫn tho&aacute;t nước thừa</div>\n<div dir=\"auto\">Rất th&iacute;ch hợp để nơi văn ph&ograve;ng, b&agrave;n l&agrave;m việc, b&agrave;n tiếp kh&aacute;ch</div>', NULL, NULL, '1,200,000', NULL, NULL, 1, '2024-03-01 05:18:55', '2024-03-03 08:06:57', NULL, NULL),
(68, 'khaytra', 'KHAY TRÀ GỖ ĐƠN NHỎ', 'khay-tra-go-don-nho', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Khay tr&agrave; gỗ đơn nhỏ</div>\n<div dir=\"auto\">Chất liệu: gỗ</div>\n<div dir=\"auto\">Khay c&oacute; bệ đỡ b&ecirc;n dưới dễ d&agrave;ng vệ sinh, dễ d&agrave;ng th&aacute;o lắp v&agrave; dễ d&agrave;ng di chuyển</div>', NULL, NULL, '400,000', NULL, NULL, 1, '2024-03-01 05:28:45', '2024-03-03 08:06:43', NULL, NULL),
(69, 'khaytragodanhuongM3', 'KHAY TRÀ GỖ ĐÀN HƯƠNG', 'khay-tra-go-dan-huong-', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Khay tr&agrave; gỗ Đ&agrave;n Hương</div>\n<div dir=\"auto\">K&iacute;ch thước 57,5cm x 35cm x 7cm</div>\n<div dir=\"auto\">Khay c&oacute; bệ chưa nước dung t&iacute;ch lớn k&egrave;m ống dẫn tho&aacute;t nước thừa</div>\n<div dir=\"auto\">Rất th&iacute;ch hợp để nơi văn ph&ograve;ng, b&agrave;n l&agrave;m việc, b&agrave;n tiếp kh&aacute;ch</div>', NULL, NULL, '1,200,000', NULL, NULL, 1, '2024-03-01 05:31:48', '2024-03-03 08:06:28', NULL, NULL),
(70, 'khaytragodontron', 'KHAY TRÀ GỖ ĐƠN TRÒN NHỎ', 'khay-tra-go-don-tron-nho', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Khay tr&agrave; gỗ đơn</div>\n<div dir=\"auto\">Chất liệu gỗ</div>\n<div dir=\"auto\">H&igrave;nh d&aacute;ng tr&ograve;n</div>\n<div dir=\"auto\">Khay tr&agrave; nhỏ gọn với đầy đủ c&aacute;c c&ocirc;ng năng</div>\n<div dir=\"auto\">Sắc loang của gỗ tr&ocirc;ng như d&ograve;ng nước đang tr&ocirc;i l&ecirc;nh đ&ecirc;nh v&agrave; nhẹ nh&agrave;ng</div>\n<div dir=\"auto\">C&oacute; 3 k&iacute;ch thước nhỏ - trung - lớn</div>', NULL, NULL, '400,000', NULL, NULL, 1, '2024-03-01 05:35:49', '2024-03-03 08:06:14', NULL, NULL),
(71, 'tieucanh', 'CU TÝ CƯỠI TRÂU', 'cu-ty-cuo', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Cu T&yacute; cưỡi tr&acirc;u</div>\n<div dir=\"auto\">Đồ chơi b&agrave;n tr&agrave;, trang tr&iacute;, tiểu cảnh</div>\n<div dir=\"auto\">Chất liệu: đất tử sa</div>', NULL, NULL, '350,000', NULL, NULL, 1, '2024-03-01 05:48:12', '2024-03-03 02:56:05', NULL, NULL),
(72, 'angtra', 'ANG TRÀ SỨ HOA SEN', 'ang-tra-su-hoa-sen', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Ang tr&agrave; sứ tiểu cảnh hoa sen</div>\n<div dir=\"auto\">Xuất sứ: Cảnh Đức Trấn (M&agrave;u sứ trắng tinh, kh&ocirc;ng bị đục m&agrave;u )</div>\n<div dir=\"auto\">Hoạ tiết: Vườn sen</div>\n<div dir=\"auto\">K&iacute;ch thước: 21cm x 7.5cm ( Đường k&iacute;nh x Cao)</div>\n<div dir=\"auto\">Dung t&iacute;ch: 1800ml</div>', NULL, NULL, '600,000', NULL, NULL, 1, '2024-03-01 05:52:17', '2024-03-03 02:58:11', NULL, NULL),
(73, 'xongtram', 'XÔNG TRẦM BÀN TAY HOA TRẮNG', 'xong-tram-ban-tay-hoa-trang', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">X&ocirc;ng trầm b&agrave;n tay</div>\n<div dir=\"auto\">Chất liệu: Đất nung</div>\n<div dir=\"auto\">Chi tiết: Hoa sen (Trắng)</div>\n<div dir=\"auto\">D&ugrave;ng để trang tr&iacute;, tiểu cảnh, đặt nơi l&agrave;m việc, b&agrave;n tr&agrave; v&agrave; ph&ograve;ng thờ</div>\n<div dir=\"auto\">K&iacute;ch thước: 14.5cm x 8cm x 18cm (D x R x C)</div>', NULL, NULL, '250,000', NULL, NULL, 1, '2024-03-01 05:56:28', '2024-03-03 08:03:19', NULL, NULL),
(74, 'xongtramthacla', 'XÔNG TRẦM THÁC LÁ XANH', 'xong-tram-thac-la-xanh', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">X&ocirc;ng Trầm Th&aacute;c L&aacute;&nbsp;</div>\n<div dir=\"auto\">Hương trầm rất tốt trong việc điều ho&agrave; kh&iacute; huyết trong cơ thể, gi&uacute;p lưu th&ocirc;ng kinh lạc, giữ cho tinh thần con người lu&ocirc;n tỉnh t&aacute;o, điềm tĩnh, an lạc.</div>\n<div dir=\"auto\">Ngo&agrave;i ra, x&ocirc;ng trầm c&ograve;n c&oacute; t&aacute;c dụng lọc sạch tạp kh&iacute;, diệt khuẩn, gi&uacute;p mang đến bầu kh&ocirc;ng kh&iacute; th&ocirc;ng tho&aacute;ng.</div>\n<div dir=\"auto\">Việt Long Tr&agrave; c&oacute; sẵn những sản phẩm về x&ocirc;ng trầm, c&aacute;c b&aacute;c c&oacute; nhu cầu li&ecirc;n hệ hoặc gh&eacute; cửa h&agrave;ng nh&eacute;!</div>', NULL, NULL, '205,000', NULL, NULL, 1, '2024-03-01 05:59:11', '2024-03-03 08:05:59', NULL, NULL),
(75, 'xongtramthackhoiquanam', 'XÔNG TRẦM THÁC KHÓI QUAN ÂM', 'xong-tram-thac-khoi-quan-am', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Hương trầm rất tốt trong việc điều ho&agrave; kh&iacute; huyết trong cơ thể, gi&uacute;p lưu th&ocirc;ng kinh lạc, giữ cho tinh thần con người lu&ocirc;n tỉnh t&aacute;o, điềm tĩnh, an lạc.</div>\n<div dir=\"auto\">Ngo&agrave;i ra, x&ocirc;ng trầm c&ograve;n c&oacute; t&aacute;c dụng lọc sạch tạp kh&iacute;, diệt khuẩn, gi&uacute;p mang đến bầu kh&ocirc;ng kh&iacute; th&ocirc;ng tho&aacute;ng.</div>\n<div dir=\"auto\">Việt Long Tr&agrave; c&oacute; sẵn những sản phẩm về x&ocirc;ng trầm, c&aacute;c b&aacute;c c&oacute; nhu cầu li&ecirc;n hệ hoặc gh&eacute; cửa h&agrave;ng nh&eacute;!</div>', NULL, NULL, '340,000', NULL, NULL, 1, '2024-03-01 06:02:49', '2024-03-03 08:05:36', NULL, NULL),
(76, 'xongtramphatthungoc', 'XÔNG TRẦM PHẬT THỦ NGỌC', 'xong-tram-phat-thu-ngoc', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">X&ocirc;ng trầm phật thủ ngọc</div>\n<div dir=\"auto\">Kh&ocirc;ng thể rời mắt trước vẻ đẹp tinh tế v&agrave; sắc xảo của bộ x&ocirc;ng trầm cộng hưởng với th&aacute;c kh&oacute;i chảy xuống b&agrave;n tay tạo cảm giảm nhẹ nh&agrave;ng, thư th&aacute;i cho người nh&igrave;n</div>', NULL, NULL, '340,000', NULL, NULL, 1, '2024-03-01 06:06:28', '2024-03-03 08:07:12', NULL, NULL),
(77, 'TRAOOLONG05', 'TRÀ OOLONG THUẦN VỤ XUÂN - ORGANIC TEA - 100G', 'tra-oolong-thuan-vu-xuan---organic-tea---100g', NULL, '<p>TR&Agrave; OOLONG XU&Acirc;N<br />Tr&agrave; Oolong xu&acirc;n được l&agrave;m 1 vụ duy nhất trong năm, vườn tr&agrave; biệt lập, được chăm bằng đậu n&agrave;nh, hương vị đặc trưng, thơm ngon, nước trong xanh, hậu bền.&nbsp;<br />☀ Nguy&ecirc;n liệu từ c&acirc;y tr&agrave; Oolong mang từ Đ&agrave;i Loan sang Việt Nam từ những ng&agrave;y đầu v&agrave; c&ocirc;ng nghệ để chăm s&oacute;c cũng kh&aacute;c hẳn,c&acirc;y tr&agrave; Oolong cổ trồng ở độ cao hơn 1000m so với mực nước biển. Gồm một b&uacute;p hai l&aacute; được chọn khắt khe.<br />☕ Vị ngọt m&aacute;t, kh&ocirc;ng ch&aacute;t, hậu ngọt cam, ngọt từ ch&acirc;n răng.&nbsp;<br />☕Sắc sau khi pha nước c&oacute; M&Agrave;U XANH,V&Agrave;NG trong, kh&ocirc;ng c&oacute; cặn tr&agrave; đọng lại khi r&oacute;t ra.&nbsp;<br />☕Hương thơm mạnh v&agrave; ho&agrave;n to&agrave;n tự nhi&ecirc;n nhờ qu&aacute; tr&igrave;nh l&ecirc;n men, nội chất của c&acirc;y tr&agrave;. KH&Ocirc;NG sử dụng chất liệu v&agrave; hương h&oacute;a học.&nbsp;<br />⚡ Ngoại h&igrave;nh: Hạt tr&ograve;n v&agrave; đồng đều. Khi pha ra, tr&agrave; giữ nguy&ecirc;n h&igrave;nh dạng,1 B&Uacute;P 2 L&Aacute; XANH, đầy đặn, KH&Ocirc;NG n&aacute;t, KH&Ocirc;NG đỏ.&nbsp;<br />☀ KH&Ocirc;NG G&Acirc;Y X&Oacute;T RUỘT KHI D&Ugrave;NG V&Agrave;O S&Aacute;NG SỚM HOẶC L&Uacute;C Đ&Oacute;I!</p>\n<p class=\"p1\"><span class=\"s1\">______ ______ ______</span></p>\n<p class=\"p2\">&nbsp;</p>\n<p class=\"p1\"><span class=\"s1\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng</span></p>\n<p class=\"p1\"><span class=\"s1\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng</span></p>\n<p class=\"p1\"><span class=\"s1\">Sdt/Zalo: 0939 222 522</span></p>\n<p class=\"p1\"><span class=\"s1\">Website: https://vietlongtra.com</span></p>\n<p class=\"p1\"><span class=\"s1\">Hoạt động: 9h00am-21:00pm</span></p>\n<p class=\"p1\"><span class=\"s1\">#trangontaidanang<span class=\"Apple-converted-space\">&nbsp; </span>#amtratusataidanang #traquatangtaidanang #traoolongtaidanang </span></p>\n<p class=\"p1\"><span class=\"s1\">#vietlongtradanang<span class=\"Apple-converted-space\">&nbsp; &nbsp;</span></span></p>', NULL, NULL, NULL, '<p>TR&Agrave; OOLONG XU&Acirc;N<br />Tr&agrave; Oolong xu&acirc;n được l&agrave;m 1 vụ duy nhất trong năm, vườn tr&agrave; biệt lập, được chăm bằng đậu n&agrave;nh, hương vị đặc trưng, thơm ngon, nước trong xanh, hậu bền.&nbsp;<br /><br /></p>', NULL, NULL, '300,000', NULL, NULL, 1, '2024-03-01 21:23:22', '2024-03-02 21:30:07', NULL, NULL),
(78, 'TRAOOLONG06', 'HỒNG TRÀ OOLONG - HỒNG DIỆP TRÀ - ORGANIC TEA - 100G - VIỆT LONG TRÀ', 'hong-tra-oolong---hong-diep-tra---organic-tea---100g---viet-long-tra', NULL, '<p>HỒNG DIỆP TR&Agrave;</p>\n<p>Nguy&ecirc;n liệu của hồng diệp tr&agrave; từ đọt v&agrave; l&aacute; tr&agrave; olong, uống thơm, ngon, 8/10 với đ&ocirc;ng phương mỹ nh&acirc;n, nhưng gi&aacute; chỉ bằng 1/3 th&ocirc;i&nbsp;<br />&nbsp;Hồng tr&agrave; c&oacute; vị ngọt mật đậm, thơm đượm, kh&ocirc;ng đắng, kh&ocirc;ng ch&aacute;t.&nbsp;<br />Gi&uacute;p ph&ograve;ng ngừa c&aacute;c bệnh tim mạch, đ&aacute;i th&aacute;o đường. Hỗ trợ ti&ecirc;u h&oacute;a, tăng cường hệ miễn dịch (nhờ chất tannin).&nbsp;<br />Lợi tiểu, giảm nhiệt, giải độc, s&aacute;t tr&ugrave;ng. Diệt khuẩn, ngăn ngừa s&acirc;u răng, cung cấp vitamin chống l&atilde;o h&oacute;a, đẹp da, nu&ocirc;i dưỡng v&agrave; bảo vệ dạ d&agrave;y.&nbsp;<br />Ti&ecirc;u lượng mỡ thừa gi&uacute;p giảm c&acirc;n (nhờ chất axit), ph&ograve;ng ngừa ung thư (nhờ chất chống oxy h&oacute;a EGCG). Tốt cho việc dưỡng t&oacute;c.</p>\n<p class=\"p1\"><span class=\"s1\">______ ______ ______</span></p>\n<p class=\"p2\">&nbsp;</p>\n<p class=\"p1\"><span class=\"s1\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng</span></p>\n<p class=\"p1\"><span class=\"s1\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng</span></p>\n<p class=\"p1\"><span class=\"s1\">Sdt/Zalo: 0939 222 522</span></p>\n<p class=\"p1\"><span class=\"s1\">Website: https://vietlongtra.com</span></p>\n<p class=\"p1\"><span class=\"s1\">Hoạt động: 9h00am-21:00pm</span></p>\n<p class=\"p1\"><span class=\"s1\">#trangontaidanang<span class=\"Apple-converted-space\">&nbsp; </span>#amtratusataidanang #traquatangtaidanang #traoolongtaidanang </span></p>\n<p class=\"p1\"><span class=\"s1\">#vietlongtradanang<span class=\"Apple-converted-space\">&nbsp; &nbsp;</span></span></p>', NULL, NULL, NULL, '<p>Hồng diệp tr&agrave;&nbsp;<br />Nguy&ecirc;n liệu từ đọt v&agrave; l&aacute; tr&agrave; oolong<br />M&agrave;u sắc: c&oacute; m&agrave;u đỏ đặc trưng, kh&ocirc;ng cặn<br />Hương vị: ngọt mật, thơm đượm, kh&ocirc;ng đắng v&agrave; kh&ocirc;ng ch&aacute;t<br />C&ocirc;ng dụng: gi&uacute;p thanh lọc cơ thể, cải thiện sức khoẻ v&agrave; gi&uacute;p giấc ngủ s&acirc;u hơn.<br /><br /></p>', NULL, NULL, '100,000', NULL, NULL, 1, '2024-03-01 21:31:14', '2024-03-03 08:07:30', NULL, NULL),
(79, 'TRAOOLONG06', 'HỒNG TRÀ ĐÔNG PHƯƠNG MỸ NHÂN - ORGANIC TEA - 100g - VIỆT LONG TRÀ', 'hong-tra-dong-phuong-my-nhan---organic-tea---100g---viet-long-tra', NULL, '<p>Hồng tr&agrave; \"Đ&ocirc;ng phương mỹ nh&acirc;n\" , sản phẩm hữu cơ ho&agrave;n to&agrave;n. Rầy xanh l&agrave; loại con tr&ugrave;ng gậy hại cho c&acirc;y tr&agrave;, khi rầy xanh ch&iacute;ch v&agrave;o l&aacute;, đọt tr&agrave; sẽ kh&ocirc;ng ph&aacute;t triển được v&agrave; teo nhỏ dần dần, từ đ&oacute; c&acirc;y tr&agrave; bị chết đi, nhưng khi h&aacute;i những đọt tr&agrave; n&agrave;y đ&uacute;ng thời điểm, l&agrave;m đ&uacute;ng c&aacute;ch th&igrave; sẽ cho hương vị rất đặc trưng v&agrave; kh&oacute; thể qu&ecirc;n được. V&igrave; vậy, chỉ c&oacute; những vườn hữu cơ mới c&oacute; thể l&agrave;m được v&agrave; 1 năm chỉ l&agrave;m 1 lần, nếu để rầy xanh ph&aacute;t triển th&igrave; c&acirc;y tr&agrave; sẽ chết dần. Nguy&ecirc;n liệu của Hồng tr&agrave; \"Đ&ocirc;ng phương mỹ nh&acirc;n\" l&agrave; những b&uacute;p tr&agrave; non (1 t&ocirc;m-1 l&aacute;),loại b&uacute;p tr&agrave; &ocirc; long cao cấp nhất, được rầy xanh ch&iacute;ch v&agrave;o l&aacute; v&agrave; hữu cơ ho&agrave;n to&agrave;n. Nếu kh&ocirc;ng c&oacute; rầy xanh ch&iacute;ch th&igrave; sẽ kh&ocirc;ng c&oacute; hương vị đặc trưng của d&ograve;ng tr&agrave; n&agrave;y. Quy tr&igrave;nh l&agrave;m tr&agrave; Đ&ocirc;ng Phương Mỹ Nh&acirc;n k&eacute;o d&agrave;i trong 72 tiếng, được l&ecirc;n men 80%-90%. Hồng tr&agrave; Đ&ocirc;ng phương mỹ nh&acirc;n hương vị đặc trưng do dịch m&agrave; rầy xanh ch&iacute;ch v&agrave;o l&aacute;, tr&agrave; thơm rất mạnh v&agrave; vị ngọt, b&ugrave;i, hậu s&acirc;u. Nước rất su&ocirc;n v&agrave; kh&ocirc;ng ch&aacute;t. &ldquo;Hồng tr&agrave; ĐPMN l&agrave; một trong những d&ograve;ng tr&agrave; đỉnh nhất,tuyệt nhất, tr&agrave; thơm, ngọt mạnh mẽ v&agrave; ho&agrave;n to&agrave;n tự nhi&ecirc;n, qu&yacute; kh&aacute;ch sẽ kh&ocirc;ng qu&ecirc;n hương vị n&agrave;y&rdquo;</p>\n<p class=\"p1\"><span class=\"s1\">______ ______ ______</span></p>\n<p class=\"p2\">&nbsp;</p>\n<p class=\"p1\"><span class=\"s1\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng</span></p>\n<p class=\"p1\"><span class=\"s1\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng</span></p>\n<p class=\"p1\"><span class=\"s1\">Sdt/Zalo: 0939 222 522</span></p>\n<p class=\"p1\"><span class=\"s1\">Website: https://vietlongtra.com</span></p>\n<p class=\"p1\"><span class=\"s1\">Hoạt động: 9h00am-21:00pm</span></p>\n<p class=\"p1\"><span class=\"s1\">#trangontaidanang<span class=\"Apple-converted-space\">&nbsp; </span>#amtratusataidanang #traquatangtaidanang #traoolongtaidanang </span></p>\n<p class=\"p1\"><span class=\"s1\">#vietlongtradanang<span class=\"Apple-converted-space\">&nbsp; &nbsp;</span></span></p>\n<p>&nbsp;</p>', NULL, NULL, NULL, '<p>Hồng tr&agrave; \"Đ&ocirc;ng phương mỹ nh&acirc;n\" , sản phẩm hữu cơ ho&agrave;n to&agrave;n. Rầy xanh l&agrave; loại con tr&ugrave;ng gậy hại cho c&acirc;y tr&agrave;, khi rầy xanh ch&iacute;ch v&agrave;o l&aacute;, đọt tr&agrave; sẽ kh&ocirc;ng ph&aacute;t triển được v&agrave; teo nhỏ dần dần, từ đ&oacute; c&acirc;y tr&agrave; bị chết đi, nhưng khi h&aacute;i những đọt tr&agrave; n&agrave;y đ&uacute;ng thời điểm, l&agrave;m đ&uacute;ng c&aacute;ch th&igrave; sẽ cho hương vị rất đặc trưng v&agrave; kh&oacute; thể qu&ecirc;n được</p>', NULL, NULL, '450,000', NULL, NULL, 1, '2024-03-01 21:46:32', '2024-03-03 08:09:25', NULL, NULL),
(80, 'TRAOOLONG07', 'TRÀ OOLONG HƯƠNG SỮA - ORGANICTEA - 100G - VIỆT LONG TRÀ', 'tra-oolong-huong-sua---organictea---100g---viet-long-tra', NULL, '<p>Tr&agrave; Oolong hương sữa&nbsp;<br />☀️M&agrave;u nước: xanh, v&agrave;ng trong, kh&ocirc;ng cặn, bền nước<br />☀️Hương vị: thanh, thơm m&ugrave;i sữa, kh&ocirc;ng ngậy, thanh khiết, hậu ngọt<br />☀️ Tr&agrave; oolong sữa gi&uacute;p giải nhiệt, thanh lọc cơ thể, tốt cho sức khoẻ v&agrave; kh&ocirc;ng g&acirc;y x&oacute;t ruột<br />1000k/1kg ( đ&oacute;ng g&oacute;i t&uacute;i 100g)</p>\n<p class=\"p1\"><span class=\"s1\">______ ______ ______</span></p>\n<p class=\"p1\"><span class=\"s1\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng</span></p>\n<p class=\"p1\"><span class=\"s1\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng</span></p>\n<p class=\"p1\"><span class=\"s1\">Sdt/Zalo: 0939 222 522</span></p>\n<p class=\"p1\"><span class=\"s1\">Website: https://vietlongtra.com</span></p>\n<p class=\"p1\"><span class=\"s1\">Hoạt động: 9h00am-21:00pm</span></p>\n<p class=\"p1\"><span class=\"s1\">#trangontaidanang<span class=\"Apple-converted-space\">&nbsp; </span>#amtratusataidanang #traquatangtaidanang #traoolongtaidanang </span></p>\n<p class=\"p1\"><span class=\"s1\">#vietlongtradanang<span class=\"Apple-converted-space\">&nbsp; &nbsp;</span></span></p>', NULL, NULL, NULL, '<p>Tr&agrave; Oolong hương sữa&nbsp;<br />☀️M&agrave;u nước: xanh, v&agrave;ng trong, kh&ocirc;ng cặn, bền nước<br />☀️Hương vị: thanh, thơm m&ugrave;i sữa, kh&ocirc;ng ngậy, thanh khiết, hậu ngọt<br />☀️ Tr&agrave; oolong sữa gi&uacute;p giải nhiệt, thanh lọc cơ thể, tốt cho sức khoẻ v&agrave; kh&ocirc;ng g&acirc;y x&oacute;t ruột<br />1000k/1kg ( đ&oacute;ng g&oacute;i t&uacute;i 100g)</p>', NULL, NULL, '100,000', NULL, NULL, 1, '2024-03-01 22:14:40', '2024-03-03 08:12:23', NULL, NULL),
(81, 'TRAOOLONG08', 'THIẾT QUAN ÂM - THẬP ĐẠI DANH TRÀ - ORGANIC TEA - 100G - VIỆT LONG TRÀ', 'thiet-quan-am---thap-dai-danh-tra---organic-tea---100g---viet-long-tra', NULL, '<p>Tr&agrave; Thiết Quan &Acirc;m thoạt nh&igrave;n th&igrave; c&oacute; vẻ kh&aacute; giống với Tr&agrave; &Ocirc; Long v&agrave; thường bị nhầm lẫn với Tr&agrave; &Ocirc; Long.&nbsp;<br />☀ Nguy&ecirc;n liệu của Thiết Quan &Acirc;m từ những l&aacute; tr&agrave; tươi.&nbsp;<br />☕M&agrave;u nước: Tr&agrave; khi pha ra c&oacute; m&agrave;u nước xanh rất trong.<br />☕Hương vị: Tr&agrave; khi pha sẽ tỏa ra m&ugrave;i thơm như hoa lan, c&ograve;n c&oacute; cả m&ugrave;i hạt dẻ nh&egrave; nhẹ.<br />⚡ C&ocirc;ng dụng: gi&uacute;p cho tinh thần nhẹ nh&agrave;ng, sảng kho&aacute;i. C&oacute; hơn 30 loại kho&aacute;ng chất, trong đ&oacute; c&oacute; Kali, Flo, đặc biệt h&agrave;m lượng nguy&ecirc;n tố Selen cao nhất. Những kho&aacute;ng chất n&agrave;y c&oacute; thể th&uacute;c đẩy việc sản sinh kh&aacute;ng thể v&agrave; miễn dịch. Tăng cường khả năng ngừa bệnh của cơ thể, c&oacute; t&aacute;c dụng trị bệnh mạch v&agrave;nh. Ngo&agrave;i ra, m&ugrave;i thơm của loại tr&agrave; n&agrave;y rất c&oacute; &iacute;ch cho việc dưỡng sinh, chăm s&oacute;c sức khỏe khiến cho t&acirc;m trạng vui tươi sảng kho&aacute;i</p>\n<p><span class=\"s1\">______ ______ ______</span></p>\n<p class=\"p1\"><span class=\"s1\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng</span></p>\n<p class=\"p1\"><span class=\"s1\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng</span></p>\n<p class=\"p1\"><span class=\"s1\">Sdt/Zalo: 0939 222 522</span></p>\n<p class=\"p1\"><span class=\"s1\">Website: https://vietlongtra.com</span></p>\n<p class=\"p1\"><span class=\"s1\">Hoạt động: 9h00am-21:00pm</span></p>\n<p class=\"p1\"><span class=\"s1\">#trangontaidanang<span class=\"Apple-converted-space\">&nbsp; </span>#amtratusataidanang #traquatangtaidanang #traoolongtaidanang </span></p>\n<p class=\"p1\"><span class=\"s1\">#vietlongtradanang<span class=\"Apple-converted-space\">&nbsp; &nbsp;</span></span></p>', NULL, NULL, NULL, '<p>Tr&agrave; Thiết Quan &Acirc;m&nbsp;<br />☀️ L&agrave; 1 trong 10 thập đại danh tr&agrave;<br />&nbsp;⭐️M&agrave;u nước xanh, trong&nbsp;<br />✨ Hương thơm đặc trưng của thiết quan &acirc;m<br />⚡️ C&ocirc;ng dụng: Tr&agrave; gi&uacute;p thanh lọc cơ thể, cải thiện sức khoẻ, gi&uacute;p cho tinh thần nhẹ nh&agrave;ng v&agrave; sảng kho&aacute;i&nbsp;<br /><br /><br /></p>', NULL, NULL, '100,000', NULL, NULL, 1, '2024-03-01 22:20:30', '2024-03-03 08:12:10', NULL, NULL),
(82, 'TRAOOLONG09', 'TRÀ OOLONG TỨ QUÝ ĐẶC BIỆT - ORGANIC TEA - 250G - VIỆT LONG TRÀ', 'tra-oolong-tu-quy-dac-biet---organic-tea---250g---viet-long-tra', NULL, '<p>Tr&agrave; Oolong tứ qu&yacute; l&agrave; một trong những giống tr&agrave; c&oacute; hương vị đậm trồng ở độ cao hơn 800m so với mực nước biển. Nguy&ecirc;n liệu h&aacute;i tay từ đọt tr&agrave; tứ qu&yacute; gồm một b&uacute;p hai-ba l&aacute;.&nbsp;<br />Vị đậm đ&agrave; c&oacute; ch&uacute;t ch&aacute;t l&agrave; đặc trưng của giống tr&agrave; tứ qu&yacute;, hậu tr&agrave; ngọt bền.<br />Sắc sau khi pha nước c&oacute; M&Agrave;U V&Agrave;NG đậm.<br />Hương: Hương thơm mạnh v&agrave; đặc trưng của giống tr&agrave; tứ qu&yacute;.&nbsp;<br />Ngoại h&igrave;nh: Hạt tr&ograve;n, khi pha ra tr&agrave; giữ nguy&ecirc;n h&igrave;nh dạng đọt tr&agrave;. TR&Agrave; OLONG TỨ QU&Yacute; PH&Ugrave; HỢP VỚI TR&Agrave; HỮU TH&Iacute;CH VỊ ĐẬM, CH&Aacute;T V&Agrave; CHUYỂN TỪ TR&Agrave; ĐẮNG SANG &Ocirc;LONG. KH&Ocirc;NG G&Acirc;Y X&Oacute;T RUỘT KHI D&Ugrave;NG V&Agrave;O S&Aacute;NG SỚM HOẶC L&Uacute;C Đ&Oacute;I!</p>\n<p class=\"p1\"><span class=\"s1\">______ ______ ______</span></p>\n<p class=\"p1\"><span class=\"s1\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng</span></p>\n<p class=\"p1\"><span class=\"s1\">164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng</span></p>\n<p class=\"p1\"><span class=\"s1\">Sdt/Zalo: 0939 222 522</span></p>\n<p class=\"p1\"><span class=\"s1\">Website: https://vietlongtra.com</span></p>\n<p class=\"p1\"><span class=\"s1\">Hoạt động: 9h00am-21:00pm</span></p>\n<p class=\"p1\"><span class=\"s1\">#trangontaidanang<span class=\"Apple-converted-space\">&nbsp; </span>#amtratusataidanang #traquatangtaidanang #traoolongtaidanang </span></p>\n<p class=\"p1\"><span class=\"s1\">#vietlongtradanang<span class=\"Apple-converted-space\">&nbsp; &nbsp;</span></span></p>', NULL, NULL, NULL, '<p>&nbsp;Tr&agrave; Oolong tứ qu&yacute;<br />Nguy&ecirc;n liệu gồm một b&uacute;p hai-ba l&aacute;<br />M&agrave;u nước v&agrave;ng đậm - Hương thơm đặc trưng của giống tr&agrave; tứ qu&yacute;<br />Vị đậm đ&agrave;, hậu tr&agrave; ngọt, bền nước<br /><br /></p>', NULL, NULL, '175,000', NULL, NULL, 1, '2024-03-01 22:27:18', '2024-03-03 08:07:46', NULL, NULL),
(83, 'CHENNGOCCANHDUCTRAN', 'CHÉN NGỌC SEN TRÀ CẢNH ĐỨC TRẤN -130ML', 'chen-ngoc-sen-tra-canh-duc-tran--130ml', NULL, '<p>Cảnh Đức Trấn thuộc tỉnh Giang T&acirc;y, Trung Quốc. Nơi đ&acirc;y được mệnh danh l&agrave; \"thủ phủ gốm sứ của thế giới\", c&aacute;c sản phẩm từ sứ Cảnh Đức Trấn lu&ocirc;n được mọi người săn đ&oacute;n, đặc biệt l&agrave; thường xuy&ecirc;n xuất hiện tr&ecirc;n b&agrave;n tr&agrave;.</p>\n<p>Chiếc ch&eacute;n với hoạ tiết hoa sen thanh lịch v&agrave; thuần khiết, với dung t&iacute;ch 130ml sẽ l&agrave; lựa chọn th&iacute;ch hợp cho qu&yacute; tr&agrave; hữu n&agrave;o đang ph&acirc;n v&acirc;n lựa chọn ch&eacute;n uống tr&agrave; từ sứ Cảnh Đức. Ngo&agrave;i những họa tiết tỉ mỉ, tinh tế m&agrave; t&aacute;c giả gửi gắm, ch&eacute;n c&ograve;n c&oacute; c&ocirc;ng dụng gi&uacute;p lưu giữu hương vị thơm ngon của tr&agrave; được l&acirc;u hơn.</p>\n<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang</p>', NULL, NULL, NULL, '<p>Ch&eacute;n ngọc sen tr&agrave; Cảnh Đức Trấn</p>\n<p>Dung t&iacute;ch: 130ml</p>\n<p>K&iacute;ch thước 7.7cm x 5.7cm (D&agrave;i x Cao)</p>', NULL, NULL, '275,000', NULL, NULL, 1, '2024-03-02 01:21:41', '2024-03-02 01:21:51', NULL, NULL),
(84, 'CHENNONMAITIET', 'CHÉN NÓN CẢNH ĐỨC- MAI TIẾT- 50ML', 'chen-non-canh-duc--mai-tiet--50ml', NULL, '<p>Ch&eacute;n n&oacute;n Cảnh Đức họa tiết hoa mai với dung t&iacute;ch 50ml. Cảnh Đức Trấn nổi tiếng v&agrave; th&agrave;nh phố n&agrave;y được mệnh danh l&agrave; \"thủ đ&ocirc; gốm sứ\" do ở đ&acirc;y l&agrave; nơi sản xuất gốm sứ c&oacute; chất lượng với lịch sử 1700 năm. B&ecirc;n cạnh đ&oacute; uống tr&agrave; kh&ocirc;ng chỉ để thưởng thức hương vị thơm ngon của tr&agrave; m&agrave; c&ograve;n chi&ecirc;m ngưỡng vẻ đẹp của tr&agrave; cụ tr&ecirc;n b&agrave;n tr&agrave;. Ch&eacute;n c&oacute; họa tiết tỉ mỉ, m&agrave;u sắc r&otilde; n&eacute;t. C&ugrave;ng với h&igrave;nh dạng n&oacute;n đặc th&ugrave;: đ&aacute;y nhỏ, miệng rộng, từ đ&oacute; gi&uacute;p tr&agrave; tỏa nhiệt tốt hơn nhưng d&aacute;ng ch&eacute;n kh&aacute;c khi uống tr&agrave; v&agrave;o m&ugrave;a h&egrave; n&oacute;ng bức. Ch&eacute;n n&oacute;n Cảnh Đức họa tiết hoa mai được chụp trực tiếp tại Showroom Việt Long Tr&agrave;.</p>\n<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang</p>', NULL, NULL, NULL, '<p>Ch&eacute;n n&oacute;n Cảnh Đức họa tiết hoa mai</p>\n<p>Cao 3.3cm</p>\n<p>B&aacute;n k&iacute;nh 8.3cm</p>\n<div dir=\"auto\">Dung t&iacute;ch 50ml</div>', NULL, NULL, '30,000', NULL, NULL, 1, '2024-03-02 01:44:08', '2024-03-02 01:44:16', NULL, NULL),
(85, 'chutieu', 'CHÚ TIỂU XÁCH NƯỚC/CHÚ TIỂU NGỦ GẬT', 'chu-tieu-xach-nuocchu-tieu-ngu-gat', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div class=\"xdj266r x11i5rnm xat24cr x1mh8g0r x1vvkbs x126k92a\">\n<div dir=\"auto\">CH&Uacute; TIỂU X&Aacute;CH NƯỚC &amp; CH&Uacute; TIỂU NGỦ GẬT</div>\n</div>\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\">\n<div dir=\"auto\">Bộ đ&ocirc;i với c&aacute;c đường n&eacute;t tinh nghịch, l&eacute;m lĩnh nhưng kh&ocirc;ng k&eacute;m phần đ&aacute;ng y&ecirc;u. Ch&uacute; tiểu được chạm khắc tỉ mỉ c&agrave;ng tăng th&ecirc;m sự năng động, hoạt b&aacute;t. Chất liệu từ nhựa đ&uacute;c cao cấp (kh&ocirc;ng rỗng ruột), cầm rất nặng tay.</div>\n</div>', NULL, NULL, '175,000', NULL, NULL, 1, '2024-03-02 04:01:53', '2024-03-02 22:05:32', NULL, NULL),
(87, 'A64', 'ẤM TỬ SA THẠCH BIỂU HOA MAI', 'am-tu-sa-thach-bieu-hoa-mai', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Thạch Biều Mai Hoa</div>\n<div dir=\"auto\">Chất đất: thanh kh&ocirc;i n&ecirc;</div>\n<div dir=\"auto\">Dung t&iacute;ch: 180ml</div>\n<div dir=\"auto\">Nghệ nh&acirc;n: Hứa Đ&igrave;nh Đ&igrave;nh</div>', NULL, NULL, '2,000,000', NULL, NULL, 1, '2024-03-02 04:20:33', '2024-03-02 22:04:19', NULL, NULL),
(88, 'B16', 'BỘ ẤM CHUYẾT CHỈ ĐOÀN SA', 'bo-am-chuyet-chi-doan-sa', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<p>Bộ ấm Chuyết Chỉ Đo&agrave;n Sa<br />Dung t&iacute;ch 240ml <br />Nghệ nh&acirc;n: Tăng L&acirc;m Quy&ecirc;n<br />Bộ ấm k&egrave;m hộp đựng, mời cả nh&agrave; tham khảo!</p>', NULL, NULL, '2,500,000', NULL, NULL, 1, '2024-03-02 04:52:38', '2024-03-02 22:04:58', NULL, NULL),
(89, 'A61', 'NHẤT LẠC CHÂU TỬ NÊ', 'nhat-lac-chau-tu-ne', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<div dir=\"auto\">Ấm Nhất Lạc Ch&acirc;u Tử N&ecirc;</div>\n<div dir=\"auto\">Dung t&iacute;ch 230ml</div>\n<div dir=\"auto\">Lọc 9 lỗ</div>', NULL, NULL, '1,500,000', NULL, NULL, 1, '2024-03-02 04:57:23', '2024-03-02 21:38:17', NULL, NULL),
(90, '81', 'ẤM TRÀ THẠCH BIỀU ĐOÀN SA- 200ML', 'am-tra-thach-bieu-doan-sa--200ml', NULL, '<p>Để c&oacute; một ch&eacute;n tr&agrave; ngon ngo&agrave;i những hương liệu, vị tr&agrave; được chọn lọc kỹ lưỡng nhất, c&aacute;ch pha đ&uacute;ng chuẩn nhất th&igrave; ấm pha tr&agrave; cũng cần được đảm bảo c&aacute;c yếu tố ti&ecirc;u chuẩn.</p>\n<div class=\"xdj266r x11i5rnm xat24cr x1mh8g0r x1vvkbs x126k92a\">\n<div dir=\"auto\">Ấm Thạch Biều - Đo&agrave;n Sa với ngoại h&igrave;nh đẹp, ngắt nước tốt</div>\n<div dir=\"auto\"><span style=\"font-size: 14pt;\">--&gt;&gt; Th&acirc;n ấm 1 b&ecirc;n khắc đồng tiền, 1 b&ecirc;n khắc chữ.</span></div>\n</div>\n<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\">\n<div dir=\"auto\">B&ecirc;n cạnh đ&oacute; nắp ấm cực kh&iacute;t từ đ&oacute; gi&uacute;p hương vị tr&agrave; được thơm ngon bền vị hơn. Nhiều người khi uống tr&agrave;, thưởng thắc mắc rằng tại sao tr&agrave; kh&ocirc;ng thấy c&oacute; vị v&agrave; m&ugrave;i hương. T&igrave;m hiểu ra mới biết nắp ấm bị hở từ đ&oacute; kh&iacute; mới tho&aacute;t hơi ra ngo&agrave;i l&agrave;m mất đi hương vị của tr&agrave;. Nếu qu&yacute; tr&agrave; hữu đang ph&acirc;n v&acirc;n chưa biết lựa chọn ấm để thưởng tr&agrave; th&igrave; chiếc ấm th&igrave; ấm biều đo&agrave;n sa với dung t&iacute;ch 200ml tr&ecirc;n ch&iacute;nh l&agrave; một gợi &yacute; ho&agrave;n hảo.</div>\n<div dir=\"auto\">&nbsp;</div>\n<div dir=\"auto\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang</div>\n<div dir=\"auto\">&nbsp;</div>\n</div>', NULL, NULL, NULL, '<p>Ấm tr&agrave; thạch biều - đo&agrave;n sa</p>\n<p>Dung t&iacute;ch: 200ml</p>\n<p>Lọc: 9 lỗ</p>', NULL, NULL, '2,000,000', NULL, NULL, 1, '2024-03-02 22:41:09', '2024-03-02 22:41:19', NULL, NULL),
(91, 'B19', 'ẤM TỬ ĐÀO CHÚC - 150ML', 'am-tu-dao-chuc-doan--150ml', NULL, '<p>Ấm được chế t&aacute;c từ chất liệu tử đ&agrave;o cao cấp, được nghiền mịn qua b&agrave;n tay kh&eacute;o l&eacute;o của nghệ nh&acirc;n. Tạo ra t&aacute;c phẩm ấm tử đ&agrave;o với họa tiết sắc n&eacute;t, tỉ mỉ.&nbsp;</p>\n<p>Ấm với dung t&iacute;ch 150ml cũng rất th&iacute;ch hợp khi muốn nh&acirc;m nhi ly tr&agrave; c&ugrave;ng tr&agrave; hữu của m&igrave;nh.Chất ấm d&agrave;y, cầm chắc tay gi&uacute;p t&agrave; mềm v&agrave; lưu giữ hương vị thơm ngon của tr&agrave; l&acirc;u hơn. Uống tr&agrave; kh&ocirc;ng chỉ l&agrave; thưởng thức vị tr&agrave;, m&agrave; c&ograve;n thưởng thức vẻ đẹp của khung cảnh xung quanh cũng như chi&ecirc;m ngưỡng c&aacute;c t&aacute;c phẩm ấm tr&agrave;, tr&agrave; cụ của c&aacute;c nghệ nh&acirc;n. V&agrave; đ&acirc;y ch&iacute;nh l&agrave; t&aacute;c phẩm kh&ocirc;ng thể bỏ qua đến từ nghệ nh&acirc;n Hồ Đ&ocirc;ng Lịch.</p>\n<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang&nbsp;</p>', NULL, NULL, NULL, '<p>Ấm tr&agrave; Tử đ&agrave;o ch&uacute;c đoạn</p>\n<p>Dung t&iacute;ch: 150ml</p>\n<p>Nghệ nh&acirc;n: Hồ Đ&ocirc;ng Lịch</p>\n<p>Lọc: 14 lỗ</p>', NULL, NULL, '2,500,000', NULL, NULL, 1, '2024-03-02 23:04:43', '2024-03-02 23:49:32', NULL, NULL),
(92, 'B9', 'ẤM TỬ ĐÀO CHU BÀN- 250ML', 'am-tu-dao-chu-ban--250ml', NULL, '<p>Tr&ecirc;n thị trường tr&agrave; đạo hiện nay, sản phẩm Tử đ&agrave;o cũng đang được ưa chuộng v&igrave; c&ocirc;ng năng tốt v&agrave; h&igrave;nh thức ấm hết sức bắt mắt, được nghệ nh&acirc;n trau truốt một c&aacute;ch tỉ mỉ, cẩn thận. C&aacute;ch trộn đất, vuốt ấm đều v&ocirc; c&ugrave;ng h&agrave;i h&ograve;a, c&acirc;n đối v&agrave; ch&iacute;nh x&aacute;c. Nguy&ecirc;n liệu tự nhi&ecirc;n v&agrave; tốt cho sức khỏe, kỹ thuật thủ c&ocirc;ng độc đ&aacute;o, c&ocirc;ng năng pha tr&agrave; tốt v&agrave; h&igrave;nh thức tuyệt vời cho c&aacute;c sản phẩm từ đất Tử Đ&agrave;o khiến ch&uacute;ng đang được giới s&agrave;nh tr&agrave; săn đ&oacute;n.</p>\n<p>Sản phẩm ấm tử đ&agrave;o của nghệ nh&acirc;n M&atilde; Vũ Hồng với tr&ecirc;n l&agrave; gợi &yacute; cho qu&yacute; tr&agrave; hữu n&agrave;o c&ograve;n ph&acirc;n v&acirc;n muốn t&igrave;m cho m&igrave;nh 1 ấm tr&agrave; cao cấp l&agrave;m từ chất tử đ&agrave;o. Đặc biệt, ấm với dung t&iacute;ch 250ml rất ph&ugrave; hợp cho ai kh&ocirc;ng th&iacute;ch c&ocirc; đơn m&agrave; c&oacute; thể c&ugrave;ng qu&acirc;y quần thưởng tr&agrave; với những tr&agrave; hữu kh&aacute;c.</p>\n<p>Ấm với khả năng ngắt nước cực k&igrave; tốt, nắp kh&iacute;t, cầm chắc tay sẽ tự tin đ&aacute;p ứng những y&ecirc;u cầu d&ugrave; l&agrave; khắt khe nhất của mọi người.</p>\n<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang&nbsp;</p>', NULL, NULL, NULL, '<p>Ấm tử đ&agrave;o</p>\n<p>Dung t&iacute;ch: 250ml</p>\n<p>Nghệ nh&acirc;n: M&atilde; Vũ Hồng</p>\n<p>Lọc: Hoa mai&nbsp;</p>', NULL, NULL, '6,500,000', NULL, NULL, 1, '2024-03-03 00:08:20', '2024-03-03 00:40:13', NULL, NULL),
(93, 'A32', 'ẤM XUYẾT CHỈ CHU NÊ- 220ML', 'am-xuyet-chi-chu-ne--220ml', NULL, '<p>Ấm xuyết chỉ chu n&ecirc; tr&ecirc;n l&agrave; t&aacute;c phẩm của nghệ nh&acirc;n Tăng L&acirc;m Quy&ecirc;n</p>\n<p>Dung t&iacute;ch: 220ml</p>\n<p>Lọc: 9 lỗ</p>\n<p>T&aacute;c phẩm c&ograve;n được chế t&aacute;c từ kho&aacute;ng chu n&ecirc;. C&aacute;c chất kho&aacute;ng Chu N&ecirc; vi lượng n&agrave;y c&oacute; trong đất l&agrave;m, n&oacute; bền bỉ v&agrave; được giải ph&oacute;ng v&agrave;o nước tr&agrave; trong mỗi lần pha tr&agrave; chứ kh&ocirc;ng dễ d&agrave;ng mất đi như c&aacute;c chất hữu cơ trong l&aacute; tr&agrave;. Ch&iacute;nh v&igrave; vậy m&agrave; việc d&ugrave;ng để pha tr&agrave; sẽ gi&uacute;p tăng hương vị, gi&uacute;p cho nước tr&agrave; được thơm ngon, đậm đ&agrave; hương vị hơn.&nbsp;</p>\n<p>T&aacute;c phẩm ấm xuyết chỉ chu n&ecirc; được ho&agrave;n thiện c&ocirc;ng phu, tỉ mỉ. Đường n&eacute;t tinh tế, tay cầm v&agrave; miệng ấm được kết nối tự nhi&ecirc;n, đường n&eacute;t gọn g&agrave;ng, phần v&ograve;i được thiết kế ngắt d&ograve;ng nước rất tốt.</p>\n<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang</p>\n<p>Ấm c&oacute; h&igrave;nh d&aacute;ng thanh tho&aacute;t, ưa nh&igrave;n, c&aacute;c bộ phận th&acirc;n, nắp, miệng, v&ograve;i, quai ấm,&hellip; c&acirc;n đối, m&agrave;u sắc tương đồng. Khi r&oacute;t nước, nước tr&agrave; chảy thẳng, đều, kh&ocirc;ng bị bắn ra ngo&agrave;i.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', NULL, NULL, NULL, '<p>Ấm xuyết chỉ chu n&ecirc;</p>\n<p>Kho&aacute;ng chu n&ecirc;</p>\n<p>Dung t&iacute;ch: 220ml</p>\n<p>Nghệ Nh&acirc;n Tăng L&acirc;m Quy&ecirc;n</p>\n<p>Lọc: 9 lỗ</p>', NULL, NULL, '1,800,000', NULL, NULL, 1, '2024-03-03 00:35:10', '2024-03-03 00:35:18', NULL, NULL),
(94, 'AMTINHLAN', 'ẤM TỈNH LAN- DUNG TÍCH 200ML', 'am-tinh-lan--dung-tich-200ml', NULL, '<p>Chiếc ấm Tỉnh Lan l&agrave; t&aacute;c phẩm được chế t&aacute;c tỉ mỉ, tinh xảo của nghệ nh&acirc;n Dương Đo&agrave;n.</p>\n<p>Ấm được sử dụng chất liệu l&agrave; Ho&agrave;ng Kim Đo&agrave;n (hay c&ograve;n gọi l&agrave; ho&agrave;ng kim đoạn n&ecirc;)- Đ&acirc;y l&agrave; loại đất s&eacute;t tinh khiết nhất trong d&ograve;ng đất s&eacute;t Đoạn N&ecirc;.</p>\n<p>M&agrave;u của ấm gần giống với kim loại v&agrave;ng tinh khiết. Được coi l&agrave; loại đất s&eacute;t tốt nhất trong c&aacute;c loại đất s&eacute;t. Ch&iacute;nh v&igrave; thế n&oacute; lu&ocirc;n được giới s&agrave;ng tr&agrave; săn đ&oacute;n.&nbsp;</p>\n<p>Về độ ngắt nước, v&ograve;i ấm được thiết kế đặc biệt, tỉ mỉ n&ecirc;n khả năng ngắt d&ograve;ng nước cực kỳ cao, kiểm so&aacute;t trong qu&aacute; tr&igrave;nh r&oacute;t kh&ocirc;ng khiến tr&agrave; văng ra ngo&agrave;i. Ngo&agrave;i ra, với dung t&iacute;ch 200ml, qu&yacute; tr&agrave; hữu c&oacute; thể qu&acirc;y quần thưởng tr&agrave; c&ugrave;ng 2-4 người.</p>\n<div dir=\"auto\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang</div>\n<p>&nbsp;</p>', NULL, NULL, NULL, '<div dir=\"auto\">Ấm Tỉnh Lan</div>\n<div dir=\"auto\">Nghệ nh&acirc;n Dương Đ&agrave;o</div>\n<div dir=\"auto\">Kho&aacute;ng Ho&agrave;ng kim đo&agrave;n</div>\n<div dir=\"auto\">Dung t&iacute;ch 200ml.</div>', NULL, NULL, '6,440,000', NULL, NULL, 1, '2024-03-03 00:54:10', '2024-03-03 00:55:06', NULL, NULL),
(95, 'A100', 'ẤM TIÊU ANH CHU SA- DUNG TÍCH 210ML', 'am-tieu-anh-chu-sa--dung-tich-210ml', NULL, '<p>Ấm chuẩn chất đất. Ch&iacute;nh v&igrave; thế, khi pha tr&agrave; sẽ giữ được nguy&ecirc;n vị của tr&agrave;, gi&uacute;p lưu giữ hương thơm của tr&agrave; l&acirc;u hơn.</p>\n<p>Được chế t&aacute;c tỉ mỉ, phần nắp kh&iacute;t c&ugrave;ng thiết kế đầu v&ograve;i ấm đặc biệt gi&uacute;p ngắt d&ograve;ng nước tốt. Kh&ocirc;ng chỉ l&agrave; sự lựa chọn th&iacute;ch hợp cho qu&yacute; tr&agrave; hữu khi thưởng tr&agrave; m&agrave; c&ograve;n l&agrave; m&oacute;n qu&agrave; đặc biệt c&oacute; thể đem tặng đồng nghiệp, đối t&aacute;c v&agrave; những người đặc biệt.</p>\n<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang</p>', NULL, NULL, NULL, '<p>Ấm&nbsp; Ti&ecirc;u Anh<br />Chất đất: l&atilde;o chu n&ecirc;<br />Dung t&iacute;ch: 210ml<br />Nghệ nh&acirc;n: Tăng L&acirc;m Quy&ecirc;n</p>', NULL, NULL, '1,700,000', NULL, NULL, 1, '2024-03-03 01:04:59', '2024-03-03 01:05:09', NULL, NULL),
(96, 'A15', 'ẤM THẠCH BIỀU RỒNG-  250ML', 'am-thach-bieu-rong---250ml', NULL, '<p>Ấm thạch biều rồng hỏa biến với dung t&iacute;ch 250ml rất th&iacute;ch hợp quần ẩm, c&ugrave;ng thưởng tr&agrave; v&agrave; giao lưu với tr&agrave; hữu kh&aacute;c, ph&ugrave; hợp với b&agrave;n tr&agrave; 3-5 người.</p>\n<p>V&ograve;i nước với khả năng ngắt d&ograve;ng nước rất tốt, nắp kh&iacute;t v&agrave; chất liệu d&agrave;y dặn cầm rất chắc tay. Ấm kh&ocirc;ng chỉ gi&uacute;p tr&agrave; mềm, lưu giữ hương vị tr&agrave; được nguy&ecirc;n bản l&acirc;u hơn m&agrave; c&ograve;n thỏa m&atilde;n tr&agrave; hữu y&ecirc;u c&aacute;i đẹp. Chi tết rồng được chế tạo tinh xảo, sắc n&eacute;t. Hơn nữa, từ xa xưa h&igrave;nh tượng rồng đ&atilde; mang &yacute; nghĩa cầu mong sự ph&aacute;t đạt, thịnh vượng. Từ đ&oacute; gi&uacute;p cho người sở hữu thu h&uacute;t được nhiều t&agrave;i lộc v&agrave; may mắn hơn.</p>\n<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang</p>\n<p>&nbsp;</p>', NULL, NULL, NULL, '<p>Ấm thạch biều rồng hỏa biến</p>\n<p>Dung t&iacute;ch: 250ml</p>\n<p>Bộ lọc: 9 lỗ</p>', NULL, NULL, '6,000,000', NULL, NULL, 1, '2024-03-03 01:34:46', '2024-03-03 01:34:54', NULL, NULL);
INSERT INTO `products` (`id`, `code_product`, `name_product`, `url_product`, `image_product`, `description_product`, `specifications`, `warranty`, `time_warranty`, `note`, `gift`, `price`, `cost`, `element_product`, `shopee_url`, `status`, `created_at`, `updated_at`, `create_by_id`, `last_modify_by_id`) VALUES
(97, '43', 'ẤM CÀ ĐOẠN TỬ SA- 200ML', 'am-ca-doan-tu-sa--200ml', NULL, '<p>D&aacute;ng ấm n&agrave;y được lấy &yacute; tưởng từ quả c&agrave; hiện nay. Ch&uacute;ng được thiết kế kh&aacute; kh&eacute;o l&eacute;o với tỉ lệ v&agrave;ng tinh tế. C&acirc;n đối v&agrave; bắt mắt gi&uacute;p cho mang tới sản phẩm đẹp hơn. Phần nắp ấm tựa như phần vỏ bao bọc quả ấm tr&ocirc;ng rất giống c&aacute;c loại c&agrave; hiện nay.</p>\n<p>Chiếc ấm tinnh tế được l&agrave;m từ chất tử sa nh&igrave;n bắt mắt. Ch&uacute;ng th&iacute;ch hợp khi sử dụng để l&agrave;m ấm uống tr&agrave; hoặc đơn giản l&agrave; l&agrave;m đồ vật trang tr&iacute; b&agrave;n tr&agrave;. D&aacute;ng ấm tinh xảo được l&agrave;m từ những nghệ nh&acirc;n nhiều năm kinh nghiệm mang tới gi&aacute; trị cao cho ấm. Bổ xung mẫu ấm C&agrave; Đoạn v&agrave;o bộ sưu tập của m&igrave;nh nh&eacute;.</p>\n<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang</p>', NULL, NULL, NULL, '<p>Ấm c&agrave; đoạn tử sa</p>\n<p>Dung t&iacute;ch: 200ml</p>\n<p>Lọc: hoa mai&nbsp;</p>', NULL, NULL, '1,200,000', NULL, NULL, 1, '2024-03-03 01:39:42', '2024-03-03 01:41:38', NULL, NULL),
(98, 'A88', 'TƯ ĐÌNH LONG PHỤNG ĐẠI HỒNG BÀO', 'tu-dinh-long-phung-dai-hong-bao', NULL, '<p>T&ecirc;n gọi đại hồng b&agrave;o ch&iacute;nh l&agrave; &aacute;m chỉ m&agrave;u sắc của ch&uacute;ng. Đại hồng b&agrave;o c&oacute; gam m&agrave;u chủ đạo l&agrave; m&agrave;u đỏ gạch rất dễ nhận biết. Kh&ocirc;ng chỉ m&agrave;u sắc của ấm đại hồng b&agrave;o m&agrave; chất đất để tạo n&ecirc;n ấm cũng kh&aacute; đặc biệt. V&igrave; thế m&agrave; ch&uacute;ng được nhiều người lựa chọn.</p>\n<p>B&ecirc;n cạnh đ&oacute;, chất đất đặc biệt cũng l&agrave; yếu tố m&agrave; nhiều tr&agrave; hữu săn đ&oacute;n chiếc ấm n&agrave;y. B&ecirc;n cạnh đ&oacute;, chi tiết bao xung quanh ấm được chế t&aacute;c tỉ mỉ, sắc n&eacute;t n&ecirc;n ngo&agrave;i c&ocirc;ng dụng gi&uacute;p giữ được nguy&ecirc;n bản của hương vị tr&agrave; được l&acirc;u hơn, chiếc ấm n&agrave;y c&ograve;n l&agrave; vật trang tr&iacute; th&ecirc;m cho b&agrave;n tr&agrave; của qu&yacute; tr&agrave; hữu.</p>\n<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang</p>', NULL, NULL, NULL, '<p>Ấm tư đ&igrave;nh long phụng đại hồng b&agrave;o</p>\n<p>Dung t&iacute;ch: 180ml</p>\n<p>Nghệ nh&acirc;n: Tăng L&acirc;m Quy&ecirc;n</p>\n<p>Lọc: 9 lỗ</p>', NULL, NULL, '1,550,000', NULL, NULL, 1, '2024-03-03 01:52:57', '2024-03-03 01:53:06', NULL, NULL),
(99, 'CUNGNHANTRA', 'CUNG NHÃN TRÀ SỨ', 'cung-nhan-tra-su', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />Địa chỉ: 164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<p>Cung nh&atilde;n tr&agrave; sứ&nbsp;<br />Cung nh&atilde;n tr&agrave; l&agrave; một dụng cụ kh&ocirc;ng thể thiếu tr&ecirc;n b&agrave;n tr&agrave;. Gi&uacute;p cho người pha tr&agrave; nh&igrave;n r&otilde; được m&agrave;u sắc, m&ugrave;i hương của vi&ecirc;n tr&agrave; trước khi pha v&agrave; ước lượng được lượng tr&agrave; vừa đủ để pha một ấm tr&agrave; ngon. Ngo&agrave;i ra khi d&ugrave;ng mu&ocirc;i để gạt tr&agrave; v&agrave;o ấm sẽ hạn chế được việc tiếp x&uacute;c trực tiếp tay với vi&ecirc;n tr&agrave;, tr&aacute;nh l&agrave;m ảnh hưởng đến hương vị thơm ngon của tr&agrave;.</p>', NULL, NULL, '120,000', NULL, NULL, 1, '2024-03-03 05:57:57', '2024-03-03 08:08:33', NULL, NULL),
(100, 'TONGTT', 'TỐNG THỦY TINH CHỊU NHIỆT TỐT', 'tong-thuy-tinh-chiu-nhiet-tot', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />Địa chỉ: 164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<p>Tống thuỷ tinh loại cao cấp nhiều h&igrave;nh d&aacute;ng.&nbsp;<br />Thuỷ tinh trong suốt, đường k&iacute;nh d&agrave;y v&agrave; chịu nhiệt tốt&nbsp;</p>', NULL, NULL, '210,000', NULL, NULL, 1, '2024-03-03 06:01:35', '2024-03-03 08:08:37', NULL, NULL),
(101, 'Khaytratrekhacchu', 'KHAY TRÀ TRE HUN KHÓI - KHẮC CHỮ', 'khay-tra-tre-hun-khoi---khac-chu', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />Địa chỉ: 164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<p>Khay tr&agrave; tre hun kh&oacute;i khắc h&igrave;nh Chữ</p>\n<p>K&iacute;ch thước: 37cm x 25cm x 5,5cm</p>\n<p>Khay tr&agrave; tre hun kh&oacute;i Đ&agrave;i Loan<br />Khay tr&agrave; đ&atilde; được xử l&iacute; chống mối mọt, cong v&ecirc;nh. Khay d&ugrave;ng rất bền, rất được l&ograve;ng c&aacute;c qu&yacute; tr&agrave; hữu&nbsp;</p>', NULL, NULL, '550,000', NULL, NULL, 1, '2024-03-03 06:18:41', '2024-03-03 08:08:42', NULL, NULL),
(102, 'KEGACCHENGO', 'KỆ GÁC CHÉN GỖ MUN', 'ke-gac-chen-go-mun', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />Địa chỉ: 164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<p>Khay g&aacute;c ch&eacute;n<br />Chất liệu: gỗ mun<br />K&iacute;ch thước: 40cm x 6.5cm x 2.5cm ( D x R x C)<br />M&agrave;u sắc: đen v&agrave; đỏ<br /><br /></p>', NULL, NULL, '300,000', NULL, NULL, 1, '2024-03-03 06:25:12', '2024-03-03 08:08:47', NULL, NULL),
(103, 'KHAYTRA', 'KHAY TRÀ TRE HUN KHÓI SEN CHUỒNG - SIZE NHỎ', 'khay-tra-tre-hun-khoi-sen-chuong---size-nho', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />Địa chỉ: 164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<p>Khay tr&agrave; tre Nghi hưng<br />Chất liệu: tre gi&agrave; nặng tay rất chắc chắn<br />Khay c&oacute; bệ đỡ nước dung t&iacute;ch lớn tiện nghi</p>\n<p><span style=\"font-size: 14pt;\">Khay chịu nhiệt v&agrave; chịu lực tốt</span></p>\n<p>K&iacute;ch thước: 32cm x 15cm x 4cm ( D&agrave;i x Rộng x Cao<br />&nbsp;</p>', NULL, NULL, '450,000', NULL, NULL, 1, '2024-03-03 06:32:55', '2024-03-03 08:08:50', NULL, NULL),
(104, 'KHAYTRA', 'KHAY TRÀ TRE KHẮC SƠN THUỶ', 'khay-tra-tre-khac-son-thuy-', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />Địa chỉ: 164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<p>Khay tre gi&agrave; hun kh&oacute;i mặt khắc sơn thuỷ<br />Khay được l&agrave;m bằng tre gi&agrave;, chống ẩm, chống mốc. Khay c&oacute; m&aacute;ng nước tiện lợi trong qu&aacute; tr&igrave;nh sử dụng&nbsp;<br />K&iacute;ch thước: 38cm x 23cm x 4cm<br /><br /></p>', NULL, NULL, '650,000', NULL, NULL, 1, '2024-03-03 06:43:35', '2024-03-03 08:08:56', NULL, NULL),
(105, 'KHAYTRA', 'KHAY TRÀ GỖ CÁNH GÀ', 'khay-tra-go-canh-ga', NULL, '<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />Địa chỉ: 164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Sdt/Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />Hoạt động: 9h00am-21:00pm</p>', NULL, NULL, NULL, '<p>KHAY TR&Agrave;. Chất liệu th&acirc;n bằng gỗ c&aacute;nh g&agrave; tự nhi&ecirc;n&nbsp;<br /><br />Thiết kế tinh tế, đơn giản, thanh nh&atilde; kết hợp với vẻ đẹp tự nhi&ecirc;n của v&acirc;n gỗ, đa c&ocirc;ng năng, độ bền cao, l&agrave; một khay tr&agrave; tốt tr&ecirc;n b&agrave;n tr&agrave;.<br />Gỗ c&aacute;nh g&agrave; nổi tiếng bởi đặc điểm nhận dạng độc đ&aacute;o l&agrave; những đường v&acirc;n tinh tế h&igrave;nh c&aacute;nh g&agrave;. Đặc biệt, nh&igrave;n từ mặt cắt gỗ c&aacute;nh g&agrave;, bạn sẽ thấy c&aacute;c đường v&acirc;n gỗ rất mảnh dường như đang chuyển động, biến h&oacute;a kh&ocirc;ng ngừng. Đường v&acirc;n tự nhi&ecirc;n tạo th&agrave;nh đủ c&aacute;c loại h&igrave;nh dạng độc đ&aacute;o, c&oacute; chỗ như h&igrave;nh s&ocirc;ng thế n&uacute;i, c&oacute; chỗ mang d&aacute;ng dấp con người, kh&ocirc;ng c&aacute;i n&agrave;o giống c&aacute;i n&agrave;o. So với c&aacute;c loại gỗ như gỗ hoa l&ecirc;, gỗ tử đ&agrave;n th&igrave; sản lượng gỗ c&aacute;nh g&agrave; kh&aacute; &iacute;t, v&acirc;n gỗ d&agrave;y đặc m&agrave; tinh tế, c&oacute; một kh&ocirc;ng hai. C&aacute;c m&agrave;u sắc đậm nhạt đan xen, biến h&ograve;a v&ocirc; c&ugrave;ng, lại c&oacute; độ b&oacute;ng tự nhi&ecirc;n hiếm c&oacute;.<br />K&iacute;ch thước: 38cm x 27cm x 5.1</p>\n<p>&nbsp;</p>', NULL, NULL, '700,000', NULL, NULL, 1, '2024-03-03 06:50:30', '2024-03-03 08:09:00', NULL, NULL),
(106, 'A31', 'ẤM VIÊN CHÂU HỎA BIẾN- HỌA TIẾT SƠN THỦY- 400ML', 'am-vien-chau-hoa-bien--hoa-tiet-son-thuy--400ml', NULL, '<p>Chiếc ấm với họa tiết sơn thủy được chế t&aacute;c tỉ mỉ, sắc sảo. T&aacute;c phẩm kh&ocirc;ng chỉ gi&uacute;p tr&agrave; mềm, giữ được hương vị thơm ngon của l&aacute; tr&agrave;, m&agrave; c&ograve;n l&agrave; sản phẩm c&oacute; thể th&ecirc;m v&agrave;o bộ sưu tập ấm tr&agrave; của qu&yacute; tr&agrave; hữu. Khả năng ngắt nước được đ&aacute;nh gi&aacute; ở mức rất cao.</p>\n<p>Ngo&agrave;i ra, kh&aacute;c với c&aacute;c d&ograve;ng ấm tử sa đối ẩm v&agrave; độc ẩm, Ấm vi&ecirc;n ch&acirc;u hỏa biến sơn&nbsp; với dung t&iacute;ch 400ml th&iacute;ch hợp để tụ họp bạn b&egrave;, đồng nghiệp c&ugrave;ng thưởng tr&agrave;. Gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; thể đảm bảo trong một lần pha tr&agrave; đủ phục vụ 1 lượt cho to&agrave;n bộ người tham gia.</p>\n<p>Phần tay cầm cần chắc chắn v&agrave; dễ cầm nắm.&nbsp;</p>\n<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang</p>', NULL, NULL, NULL, '<p>Ấm vi&ecirc;n ch&acirc;u hỏa biến</p>\n<p>Họa tiết: Sơn thủy</p>\n<p>Dung t&iacute;ch: 400ml</p>\n<p>Lọc: tổ ong</p>\n<p>&nbsp;</p>', NULL, NULL, '4,000,000', NULL, NULL, 1, '2024-03-03 20:11:42', '2024-03-03 20:12:10', NULL, NULL),
(107, 'A34', 'ẤM THẠCH BIỀU ĐOÀN SA- 230ML', 'am-thach-bieu-doan-sa--230ml', NULL, '<p>Thạch Biều l&agrave; loại ấm kinh điển truyền thống tử sa, h&igrave;nh d&aacute;ng y&ecirc;u kiều ưu t&uacute;, mạnh mẽ ki&ecirc;n cường, đoan trang lại vững v&agrave;ng. Những yếu tố cơ bản cấu th&agrave;nh l&ecirc;n thạch biều như tổng thể h&igrave;nh tam gi&aacute;c, đế ấm 3 ch&acirc;n, nắp ấm cong h&igrave;nh c&acirc;y cầu th&igrave; kh&ocirc;ng đổi.</p>\n<p>Ấm được l&agrave;m từ chất đất đo&agrave;n n&ecirc; - m&agrave;u v&agrave;ng (thuộc d&ograve;ng đất tử sa) v&agrave; được chế tạo tỉ mỉ bởi c&aacute;c nghệ nh&acirc;n.&nbsp;Đ&acirc;y l&agrave; loại đất&nbsp;một loại đất c&oacute; lượng hạt tinh thể tương đối lớn, kết cấu thưa thể hiện lỗ tho&aacute;ng kh&iacute; k&eacute;p, kh&ocirc;ng kh&iacute; dễ d&agrave;ng lưu th&ocirc;ng. Điều n&agrave;y gi&uacute;p việc thẩm thấu hương tr&agrave; tốt v&agrave; nhanh hơn.&nbsp;</p>\n<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang</p>', NULL, NULL, NULL, '<p>Ấm thạch biều đo&agrave;n sa&nbsp;</p>\n<p>Dung t&iacute;ch: 230ml</p>\n<p>Lọc: 14 lỗ</p>\n<p>&nbsp;</p>', NULL, NULL, '1,700,000', NULL, NULL, 1, '2024-03-03 20:18:20', '2024-03-03 20:18:30', NULL, NULL),
(108, 'A49', 'ẤM CHUYẾT CHỈ THANH KHÔI - DUNG TÍCH 150ML', 'am-chuyet-chi-thanh-khoi---dung-tich-150ml', NULL, '<p>Sản phẩm Ấm xuyết chỉ thanh kh&ocirc;i n&ecirc; với dung t&iacute;ch 150ml được thiết kế v&agrave; chế t&aacute;c bởi nghệ nh&acirc;n gốm sứ với kỹ thuật tinh xảo mang đến cho sản phẩm vẻ đẹp trang nh&atilde;, tinh tế, v&agrave; sang trọng. Ấm c&oacute; thể sử dụng như một m&oacute;n qu&agrave; trong những dịp đặc biệt như sinh nhật, kỉ niệm, t&acirc;n gia hay dịp lễ Tết. Ch&uacute;ng lu&ocirc;n mang gi&aacute; trị thẩm mỹ cao v&agrave; &yacute; nghĩa, c&ograve;n được ưa chuộng trong việc trang tr&iacute; nội thất v&agrave; tạo kh&ocirc;ng gian sống cho những người &ldquo;s&agrave;nh&rdquo; về văn h&oacute;a tr&agrave; đạo.</p>\n<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang</p>', NULL, NULL, NULL, '<p>Ấm chuyết chỉ thanh kh&ocirc;i n&ecirc;</p>\n<p>Dung t&iacute;ch: 150ml</p>\n<p>Lọc: hoa mai&nbsp;</p>', NULL, NULL, '1,700,000', NULL, NULL, 1, '2024-03-03 20:27:36', '2024-03-03 20:27:46', NULL, NULL),
(109, 'A12', 'ẤM TÂY THI HỎA BIẾN HỒ LÔ - 110ML', 'am-tay-thi-hoa-bien-ho-lo---110ml', NULL, '<p>Ấm T&acirc;y Thi vốn c&oacute; t&ecirc;n gọi ấm Văn đ&aacute;n. Được c&aacute;ch điệu tao nh&atilde; trở th&agrave;nh ấm &ldquo;T&acirc;y thi Nhũ&rdquo;, điển h&igrave;nh với v&ograve;i ngắn xinh xắn, quai lớn dần từ tr&ecirc;n xuống dưới. Ấm tử sa T&acirc;y Thi l&agrave; d&ograve;ng ấm kinh điển, rất nổi tiếng trong những d&aacute;ng ấm tử sa. Hầu hết những tr&agrave; nh&acirc;n chơi ấm tử sa ai cũng sắm cho m&igrave;nh một chiếc ấm kiểu d&aacute;ng n&agrave;y.&nbsp;</p>\n<p>Ấm được chế t&aacute;c đảm bảo đầy đủ c&aacute;c yếu tố đặc điểm cần c&oacute; ở một chiếc ấm T&acirc;y Thi m&agrave; gi&aacute; cả lại v&ocirc; c&ugrave;ng phải chăng. Với dung t&iacute;ch 110ml rất ph&ugrave; hợp cho qu&yacute; tr&agrave; hữu n&agrave;o y&ecirc;u th&iacute;ch độc ẩm. Khả năng ngắt nước tốt, họa tiết hồn l&ocirc; được nghệ nh&acirc;n chế t&aacute;c tỉ mỉ, sắc n&eacute;t.&nbsp;</p>\n<p>Khi mua kh&aacute;ch h&agrave;ng sẽ được nhận chứng nhận ấm v&agrave; triện ấm được đ&oacute;ng dấu một c&aacute;ch cẩn thận v&agrave; r&otilde; n&eacute;t.</p>\n<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang</p>', NULL, NULL, NULL, '<p>Ấm t&acirc;y thi hỏa biến</p>\n<p>Dung t&iacute;ch: 110ml</p>\n<p>Họa tiết: hồ l&ocirc;</p>\n<p>Lọc: 9 lỗ&nbsp;</p>', NULL, NULL, '1,700,000', NULL, NULL, 1, '2024-03-03 20:39:34', '2024-03-03 20:39:44', NULL, NULL),
(110, 'B24', 'ẤM TỬ ĐÀO TAY NGANG- DUNG TÍCH 220ML', 'am-tu-dao-tay-ngang--dung-tich-220ml', NULL, '<p>Tr&ecirc;n thị trường tr&agrave; đạo hiện nay, sản phẩm Tử đ&agrave;o cũng đang được ưa chuộng v&igrave; c&ocirc;ng năng tốt v&agrave; h&igrave;nh thức ấm hết sức bắt mắt, được nghệ nh&acirc;n trau truốt một c&aacute;ch tỉ mỉ, cẩn thận. C&aacute;ch trộn đất, vuốt ấm đều v&ocirc; c&ugrave;ng h&agrave;i h&ograve;a, c&acirc;n đối v&agrave; ch&iacute;nh x&aacute;c. Đ&oacute; ch&iacute;nh l&agrave; l&yacute; do m&agrave; c&aacute;c t&aacute;c phẩm đều được thị trường đ&aacute;nh gi&aacute; cao.</p>\n<p>Nguy&ecirc;n liệu tự nhi&ecirc;n v&agrave; tốt cho sức khỏe, kỹ thuật thủ c&ocirc;ng độc đ&aacute;o, c&ocirc;ng năng pha tr&agrave; tốt v&agrave; h&igrave;nh thức tuyệt vời cho c&aacute;c sản phẩm từ đất Tử Đ&agrave;o khiến ch&uacute;ng đang được &nbsp;trở n&ecirc;n phổ biến v&agrave; rất được y&ecirc;u th&iacute;ch đối với c&aacute;c bậc thầy tr&agrave; cao cấp v&agrave; người ti&ecirc;u d&ugrave;ng tr&agrave; l&acirc;u đời.</p>\n<p>B&ecirc;n cạnh đ&oacute;, ấm c&oacute; thiết kế tay cầm ngang độc đ&aacute;o, kết hợp c&ugrave;ng v&ograve;i ấm được chế t&aacute;c tỉ mỉ gi&uacute;p ngắt d&ograve;ng nước rất tốt.</p>\n<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang</p>', NULL, NULL, NULL, '<p>Ấm tử đ&agrave;o tay ngang&nbsp;</p>\n<p>Dung t&iacute;ch: 220ml</p>\n<p>Lọc: 14 lỗ</p>', NULL, NULL, '2,500,000', NULL, NULL, 1, '2024-03-04 00:16:30', '2024-03-04 00:16:37', NULL, NULL),
(111, 'B25', 'ẤM THẠCH BIỀU HOA SEN HỎA BIẾN- 250ML', 'am-thach-bieu-hoa-sen-hoa-bien--250ml', NULL, '<p>Thạch Biều l&agrave; loại ấm kinh điển truyền thống tử sa, h&igrave;nh d&aacute;ng y&ecirc;u kiều ưu t&uacute;, mạnh mẽ ki&ecirc;n cường, đoan trang lại vững v&agrave;ng. Những yếu tố cơ bản cấu th&agrave;nh l&ecirc;n thạch biều như tổng thể h&igrave;nh tam gi&aacute;c, đế ấm 3 ch&acirc;n, nắp ấm cong h&igrave;nh c&acirc;y cầu th&igrave; kh&ocirc;ng đổi. Điểm nhấn của chiếc ấm c&ograve;n nằm ở họa tiết hoa sen:</p>\n<div dir=\"auto\">\"Hoa g&igrave; m&agrave; đẹp bằng sen</div>\n<div dir=\"auto\">Đ&agrave;o thua sắc thắm, hồng ghen k&eacute;m t&igrave;nh</div>\n<div dir=\"auto\">Từ trong b&ugrave;n đất vươn m&igrave;nh</div>\n<div dir=\"auto\">Thanh tao tỏa s&aacute;ng lung linh sắc m&agrave;u.\"</div>\n<div dir=\"auto\">Từ xa xưa, hoa sen lu&ocirc;n l&agrave; biểu tượng của sắc đẹp tao nh&atilde;. Từ đ&oacute; việc uống tr&agrave; kh&ocirc;ng chỉ l&agrave; để thưởng thức hương vị thơm ngon của tr&agrave;, m&agrave; c&ograve;n để thưởng vẻ đẹp hiện tr&ecirc;n b&agrave;n tr&agrave;.</div>\n<div dir=\"auto\">V&ograve;i v&agrave; nắp ấm được thiết kế tỉ mỉ gi&uacute;p tr&agrave; kh&ocirc;ng bị d&acirc;y ra ngo&agrave;i trong qu&aacute; tr&igrave;nh r&oacute;t. Đ&acirc;y sẽ l&agrave; sản phẩm d&agrave;nh cho qu&yacute; tra hữu n&agrave;o vừa muốn một chiếc ấm đẹp, thẩm mỹ m&agrave; vẫn đem lại c&ocirc;ng năng tốt.</div>\n<div dir=\"auto\">&nbsp;</div>\n<div dir=\"auto\">Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang</div>', NULL, NULL, NULL, '<p>Ấm thạch biều hỏa biến&nbsp;</p>\n<p>Họa tiết: Hoa sen</p>\n<p>Dung t&iacute;ch: 250ml</p>\n<p>&nbsp;</p>', NULL, NULL, '3,500,000', NULL, NULL, 1, '2024-03-04 00:29:45', '2024-03-04 00:29:53', NULL, NULL),
(112, 'B5', 'ẤM TỬ ĐÀO- NGHỆ NHÂN HỒ ĐÔNG LỊCH', 'am-tu-dao--nghe-nhan-ho-dong-lich', NULL, '<p>Ấm tr&agrave; Tử Đ&agrave;o l&agrave; một trong những d&ograve;ng ấm tr&agrave; đang nổi l&ecirc;n trong những năm gần đ&acirc;y. Tr&ecirc;n thị trường tr&agrave; đạo hiện nay, sản phẩm Tử đ&agrave;o cũng đang được ưa chuộng v&igrave; c&ocirc;ng năng tốt v&agrave; h&igrave;nh thức ấm hết sức bắt mắt, được nghệ nh&acirc;n trau truốt một c&aacute;ch tỉ mỉ, cẩn thận. C&aacute;ch trộn đất, vuốt ấm đều v&ocirc; c&ugrave;ng h&agrave;i h&ograve;a, c&acirc;n đối v&agrave; ch&iacute;nh x&aacute;c.&nbsp;</p>\n<p>Chiếc ấm với dung t&iacute;ch 250ml th&iacute;ch hợp cho độc ẩm v&agrave; cả thưởng tr&agrave; c&ugrave;ng 2-3 người bạn.&nbsp;</p>\n<p>Phần nắp thiết kế kh&iacute;t c&ugrave;ng với quai cầm chắc chắn gi&uacute;p qu&aacute; tr&igrave;nh pha tr&agrave; thuận tiện hơn, v&agrave; hơn nữa l&agrave; vẫn giữ được hương vị thơm ngon nguy&ecirc;n bản của tr&agrave;.</p>\n<p>Đ&acirc;y c&ograve;n l&agrave; m&oacute;n qu&agrave; th&iacute;ch hợp để tặng người th&acirc;n, đồng nghiệp v&agrave; đối t&aacute;c trong những dịp đặc biệt.</p>\n<p>Tất cả sản phẩm đều c&oacute; sẵn v&agrave; được trưng b&agrave;y tại cửa h&agrave;ng<br />164a Nguyễn Ch&iacute; Thanh - Đ&agrave; Nẵng<br />Zalo: 0939 222 522<br />Website: https://vietlongtra.com<br />&nbsp;Hoạt động: 9h00am-21:00pm<br />#trangontaidanang &nbsp;#amtratusataidanang #traquatangtaidanang #traoolongtaidanang&nbsp;<br />#vietlongtradanang</p>', NULL, NULL, NULL, '<p>Ấm tr&agrave; tử đ&agrave;o</p>\n<p>Dung t&iacute;ch: 250ml</p>\n<p>Nghệ nh&acirc;n: Hồ Đ&ocirc;ng Lịch&nbsp;</p>\n<p>&nbsp;</p>', NULL, NULL, '2,500,000', NULL, NULL, 1, '2024-03-04 00:41:04', '2024-03-04 00:41:14', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_role` varchar(120) NOT NULL,
  `route` varchar(120) NOT NULL,
  `description_role` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code_room` varchar(120) NOT NULL,
  `name_room` varchar(120) NOT NULL,
  `url_room` varchar(120) NOT NULL,
  `image_room` text DEFAULT NULL,
  `description_room` text DEFAULT NULL,
  `keyword_seo_room` varchar(120) DEFAULT NULL,
  `title_seo_room` varchar(120) DEFAULT NULL,
  `description_seo_room` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by_id` varchar(120) DEFAULT NULL,
  `last_modify_by_id` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_website` varchar(120) DEFAULT NULL,
  `facebook_social_website` varchar(120) DEFAULT NULL,
  `googleanaly_social_website` varchar(120) DEFAULT NULL,
  `messenger_social_website` varchar(120) DEFAULT NULL,
  `color_general_website` varchar(120) DEFAULT NULL,
  `zalo_website` varchar(120) DEFAULT NULL,
  `facebook_website` varchar(120) DEFAULT NULL,
  `fanpage_website` varchar(120) DEFAULT NULL,
  `group_website` varchar(120) DEFAULT NULL,
  `youtube_website` varchar(120) DEFAULT NULL,
  `tiktok_website` varchar(120) DEFAULT NULL,
  `phone_website` varchar(120) DEFAULT NULL,
  `fontsize_general_website` varchar(120) DEFAULT NULL,
  `icon_general_website` text DEFAULT NULL,
  `logo_general_website` text DEFAULT NULL,
  `colorbg_general_website` varchar(120) DEFAULT NULL,
  `keyword_seo_website` varchar(120) DEFAULT NULL,
  `title_seo_website` varchar(120) DEFAULT NULL,
  `description_seo_website` text DEFAULT NULL,
  `image_seo_website` text DEFAULT NULL,
  `address_website` varchar(123) DEFAULT NULL,
  `email_website` varchar(123) DEFAULT NULL,
  `shoppe_website` varchar(120) DEFAULT NULL,
  `google_site_verification` varchar(120) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by_id` varchar(120) DEFAULT NULL,
  `last_modify_by_id` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title_website`, `facebook_social_website`, `googleanaly_social_website`, `messenger_social_website`, `color_general_website`, `zalo_website`, `facebook_website`, `fanpage_website`, `group_website`, `youtube_website`, `tiktok_website`, `phone_website`, `fontsize_general_website`, `icon_general_website`, `logo_general_website`, `colorbg_general_website`, `keyword_seo_website`, `title_seo_website`, `description_seo_website`, `image_seo_website`, `address_website`, `email_website`, `shoppe_website`, `google_site_verification`, `created_at`, `updated_at`, `create_by_id`, `last_modify_by_id`) VALUES
(1, 'VIỆT LONG TRÀ - ĐẬM ĐÀ HƯƠNG VỊ TRÀ Ô LONG VIỆT', NULL, 'G-M3Z47YXN7T', NULL, '#109412', 'https://zalo.me/0939222522', 'https://www.facebook.com/traoolongtaidanang', 'https://www.facebook.com/traoolongtaidanang', 'https://www.facebook.com/traoolongtaidanang', NULL, NULL, '0939222522', '3', '/storage/files/logo/65b1256ecdaa4.ico', '/storage/files/logo/65ae46808fdee.jpg', NULL, 'Trà,Việt Long Trà,Trà Ô Long', 'VIỆT LONG TRÀ - ĐẬM ĐÀ HƯƠNG VỊ TRÀ Ô LONG VIỆT', 'Chuy&ecirc;n cung cấp tr&agrave; oolong, tr&agrave; xanh, tr&agrave; phổ nhĩ.\nshowroom c&aacute;c loại tr&agrave; ngon tại đ&agrave; nẵng\nẤm tử sa tại đ&agrave; nẵng\nTr&agrave; oolong tại đ&agrave; nẵng\n&nbsp;', '/storage/files/logo/65c380d66cb32.jpg', '164A Nguyễn Chí Thanh, Phước Ninh, Hải Châu, Đà Nẵng, Vietnam', 'vietlongtra@gmail.com', 'https://shopee.vn/vietlongtradanang', 'lO0j89nkETGOImDmXPfbYFLlqWS7Ry7Y77ednElzYpo', '2022-08-21 01:10:08', '2024-03-01 04:19:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keyword_slider` text DEFAULT NULL,
  `description_slider` text DEFAULT NULL,
  `image_slider` text DEFAULT NULL,
  `tbutton_slider` varchar(120) DEFAULT NULL,
  `cbutton_slider` varchar(120) DEFAULT NULL,
  `url_slider` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `location_slider` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by_id` varchar(120) DEFAULT NULL,
  `last_modify_by_id` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `keyword_slider`, `description_slider`, `image_slider`, `tbutton_slider`, `cbutton_slider`, `url_slider`, `status`, `location_slider`, `created_at`, `updated_at`, `create_by_id`, `last_modify_by_id`) VALUES
(5, '<h1><span style=\"font-size: 48pt; color: #463034;\">VIỆT LONG TR&Agrave;</span></h1>', '<h4 data-caption-animate=\"fadeGel\" data-caption-delay=\"300\"><span style=\"color: #017d03;\">ĐẬM Đ&Agrave; HƯƠNG VỊ TR&Agrave; &Ocirc; LONG VIỆT</span></h4>', '/storage/files/slider/65b0b391cb10d.png', 'Mua ngay', NULL, 'https://shopee.vn/vietlongtradanang', 1, 1, '2022-08-23 21:33:54', '2024-02-08 10:17:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `name_user` varchar(120) NOT NULL,
  `sex_user` varchar(120) NOT NULL,
  `email_user` varchar(120) NOT NULL,
  `phone_user` varchar(120) NOT NULL,
  `position_user` varchar(120) NOT NULL,
  `users_active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by_id` varchar(120) DEFAULT NULL,
  `last_modify_by_id` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `name_user`, `sex_user`, `email_user`, `phone_user`, `position_user`, `users_active`, `created_at`, `updated_at`, `create_by_id`, `last_modify_by_id`) VALUES
(1, 'Admin', '$2y$10$ynIbrBEY5N/A2g.vj6CEWeM/beKHc.EMc.IUujXAJFhUSEyiUcnFe', 'Admin', '1', 'Admin@gmail.com', '012563256211', 'Giám đốc', 1, '2021-08-16 20:08:39', '2024-02-26 08:11:37', '1', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mapping_category_product`
--
ALTER TABLE `mapping_category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapping_product_image`
--
ALTER TABLE `mapping_product_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapping_role_user`
--
ALTER TABLE `mapping_role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapping_room_category`
--
ALTER TABLE `mapping_room_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mapping_category_product`
--
ALTER TABLE `mapping_category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `mapping_product_image`
--
ALTER TABLE `mapping_product_image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=683;

--
-- AUTO_INCREMENT for table `mapping_role_user`
--
ALTER TABLE `mapping_role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mapping_room_category`
--
ALTER TABLE `mapping_room_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
