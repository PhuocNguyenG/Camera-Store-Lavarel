-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 27, 2021 lúc 05:12 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `websitelaptop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(36, '2014_10_12_000000_create_users_table', 1),
(37, '2014_10_12_100000_create_password_resets_table', 1),
(38, '2019_08_19_000000_create_failed_jobs_table', 1),
(39, '2021_01_10_073810_create_tbl_admin_table', 1),
(40, '2021_01_10_125826_create_tbl_category_product', 1),
(41, '2021_01_11_131730_create_tbl_brand_product', 1),
(42, '2021_01_11_141023_create_tbl_product', 1),
(43, '2021_01_16_132438_create_tbl_news', 1),
(44, '2021_01_16_132504_create_tbl_contact', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'HuGear', '0888188818', '2021-01-16 13:32:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'MSI', 'MSI', 1, NULL, NULL),
(2, 'ACER', 'ACER', 1, NULL, NULL),
(3, 'DELL', 'DELL', 1, NULL, NULL),
(4, 'MACBOOK', 'MACBOOK', 1, NULL, NULL),
(5, 'LENOVO', 'LENOVO', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Laptop MSI', 'MSI', 1, NULL, NULL),
(2, 'Laptop ACER', 'ACER', 1, NULL, NULL),
(3, 'Laptop Dell', 'DELL', 1, NULL, NULL),
(4, 'Laptop Macbook', 'MACBOOK', 1, NULL, NULL),
(5, 'Laptop Lenovo', 'LENOVO', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(10) UNSIGNED NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_contact`
--

INSERT INTO `tbl_contact` (`contact_id`, `contact_name`, `contact_phone`, `contact_email`, `contact_address`, `created_at`, `updated_at`) VALUES
(3, 'HuGear', '0188188818', 'hugear@gmail.com', '475A Điện Biên Phủ, Phường 25, Bình Thạnh, Thành phố Hồ Chí Minh', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(10) UNSIGNED NOT NULL,
  `news_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `news_title`, `news_content`, `news_image`, `news_status`, `created_at`, `updated_at`) VALUES
(22, 'MSI ra mắt laptop chuyên game GE76 Raider Dragon Edition Tiamat, thay thế series GT Titan', '<h2><span style=\"font-size:18px\"><strong>T</strong></span><span style=\"font-size:14px\"><strong>ại sự kiện MSIology, MSI đ&atilde; v&eacute;n m&agrave;n GE76 Raider Dragon Edition Tiamat với thiết kế mang hơi hướng&nbsp;sử thi Babylon.</strong></span></h2>\r\n\r\n<p>GE76 Raider c&oacute; hai phi&ecirc;n bản: phi&ecirc;n bản SKU c&oacute; thiết kế tối giản, về cơ bản l&agrave; mẫu GE66 Raider ra mắt năm 2020, nhưng c&oacute; k&iacute;ch thước lớn hơn; v&agrave; phi&ecirc;n bản Dragon Edition Tiamat (DET), được đặt t&ecirc;n theo một vị nữ thần quyền năng của Babylon. Cả hai phi&ecirc;n bản đều sở hữu hệ thống khung sườn t&iacute;ch hợp đ&egrave;n RGB SteelSeries độc quyền của MSI.</p>\r\n\r\n<p>Về cấu h&igrave;nh, GE76 Raider v&agrave; GE76 Raider DET được trang bị CPU Core i9-10980HK, GPU RTX 3080 Mobile (biến thể 10UH) hoặc RTX 3070 Mobile (biến thể 10UG). Khi mua m&aacute;y, kh&aacute;ch h&agrave;ng c&oacute; thể chọn m&agrave;n h&igrave;nh 17.3-inch độ ph&acirc;n giải UHD hoặc FHD, trong đ&oacute; độ ph&acirc;n giải FHD sẽ c&oacute; hai tấm nền 240Hz hoặc 300Hz.</p>\r\n\r\n<p>Đi k&egrave;m với CPU Core i9-10980HK l&agrave; RAM DDR4-3200 l&ecirc;n đến 64GB v&agrave; 2 SSD NVMe PCIe Gen3. GE76 Raider c&ograve;n c&oacute; kết nối mạng si&ecirc;u nhanh nhờ card LAN Killer E3100 2.5G v&agrave; module WLAN Intel Wi-Fi 6E AX210.</p>\r\n\r\n<p>Đ&aacute;p ứng mọi kỳ vọng đối với một mẫu laptop chuy&ecirc;n game flagship, c&aacute;c mẫu MSI GE76 c&oacute; đầy đủ c&aacute;c loại cổng USB cần thiết. D&ugrave; kh&ocirc;ng c&oacute; cổng Thunderbolt 3 như GE66 Raider năm ngo&aacute;i, nhưng đổi lại, GE76 Raider c&oacute; một cổng USB 3.2 Gen2x2 20Gbps. M&aacute;y được trang bị một cục pin 4-cell 99Whr, cho ph&eacute;p bạn thoải m&aacute;i chiến game khi mang ra ngo&agrave;i m&agrave; kh&ocirc;ng phải t&igrave;m nguồn sạc.</p>', 'msi39.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `brand_id`, `product_name`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Laptop MSI GE66 Raider', '<p>Test Thử th&ocirc;i</p>', '<p>Test thử</p>', '53900000', 'ge66raider63.png', 1, NULL, NULL),
(2, 2, 2, 'Laptop Acer Nitro 5', '<p>Brand</p>', '<p><span style=\"font-size:20px\"><strong>Th&ocirc;ng số kỹ thuật:</strong></span></p>\r\n\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>CPU</strong></span></td>\r\n			<td><span style=\"font-size:20px\">Intel Core i5-10300H 2.5GHz up to 4.5GHz 8MB</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>RAM</strong></span></td>\r\n			<td><span style=\"font-size:20px\">8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>Ổ cứng</strong></span></td>\r\n			<td><span style=\"font-size:20px\">512GB SSD M.2 PCIE&nbsp;(C&ograve;n trống 1 khe SSD M.2 PCIE v&agrave; 1 khe&nbsp;2.5&quot; SATA)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>Card đồ họa</strong></span></td>\r\n			<td><span style=\"font-size:20px\">NVIDIA GeForce GTX 1650Ti 4GB GDDR6 + Intel UHD Graphics</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>M&agrave;n h&igrave;nh</strong></span></td>\r\n			<td><span style=\"font-size:20px\">15.6&quot; FHD (1920 x 1080) IPS, 144Hz, Anti-Glare</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>Cổng giao tiếp</strong></span></td>\r\n			<td><span style=\"font-size:20px\">3x USB 3.1 Gen 1, 1x USB 3.2 Gen 2 Type C, 1x HDMI, RJ45</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>Ổ quang</strong></span></td>\r\n			<td><span style=\"font-size:20px\">None</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>Audio</strong></span></td>\r\n			<td><span style=\"font-size:20px\">Waves MaxxAudio&reg;, Acer TrueHarmony&trade;</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>B&agrave;n ph&iacute;m</strong></span></td>\r\n			<td><span style=\"font-size:20px\">RGB 4 v&ugrave;ng</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>Đọc thẻ nhớ</strong></span></td>\r\n			<td><span style=\"font-size:20px\">None</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>Chuẩn LAN</strong></span></td>\r\n			<td><span style=\"font-size:20px\">10/100/1000/Gigabits Base T</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>Chuẩn WIFI</strong></span></td>\r\n			<td><span style=\"font-size:20px\">802.11AX (2x2)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>Bluetooth</strong></span></td>\r\n			<td><span style=\"font-size:20px\">v5.0</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>Webcam</strong></span></td>\r\n			<td><span style=\"font-size:20px\">HD Webcam</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>Hệ điều h&agrave;nh</strong></span></td>\r\n			<td><span style=\"font-size:20px\">Windows 10 Home</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>Pin</strong></span></td>\r\n			<td><span style=\"font-size:20px\">4 Cell 57.5WHr</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>Trọng lượng</strong></span></td>\r\n			<td><span style=\"font-size:20px\">2.30 kg</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>M&agrave;u sắc</strong></span></td>\r\n			<td><span style=\"font-size:20px\">Đen</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\"><strong>K&iacute;ch thước</strong></span></td>\r\n			<td><span style=\"font-size:20px\">363.4 x 255 x 23.9 mm</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '22000000', 'acernitro580.png', 1, NULL, NULL),
(3, 1, 1, 'Laptop Gaming MSI GS66 Stealth', '<p>Laptop Gaming MSI GP66 Leopard 10UE 206VN</p>', '<h3><span style=\"font-size:20px\"><strong><strong>Th&ocirc;ng số kĩ thuật</strong></strong></span></h3>\r\n\r\n<table id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">CPU</span></td>\r\n			<td><span style=\"font-size:20px\">Intel Core i7-10750H 2.6GHz up to 5.0GHz 12MB</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">RAM</span></td>\r\n			<td>\r\n			<p><span style=\"font-size:20px\">16GB (8GBx2) DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">&Ocirc;̉ cứng</span></td>\r\n			<td>\r\n			<p><span style=\"font-size:20px\">512GB SSD PCIE G3X4 (C&ograve;n trống 1 khe SSD M.2 PCIE/ SATA3)</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Card đồ họa</span></td>\r\n			<td>\r\n			<p><span style=\"font-size:20px\">NVIDIA GeForce RTX 2060 6GB GDDR6</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;n h&igrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">15.6&quot; FHD (1920 x 1080) IPS with Anti-Glare, 240Hz, 3ms, Thin Bezel, 100% sRGB</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Cổng giao tiếp</span></td>\r\n			<td>\r\n			<p><span style=\"font-size:20px\">1x Type-C (USB3.2 Gen2 / DP / Thunderbolt&trade;3) with PD charging</span></p>\r\n\r\n			<p><span style=\"font-size:20px\">1x Type-C USB3.2 Gen2</span></p>\r\n\r\n			<p><span style=\"font-size:20px\">3x Type-A USB3.2 Gen2</span></p>\r\n\r\n			<p><span style=\"font-size:20px\">1x RJ-45 1x HDMI</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Audio</span></td>\r\n			<td><span style=\"font-size:20px\">Sound by Dynaudio and High-Resolution Audio ready (2x 2W Speaker)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">B&agrave;n ph&iacute;m</span></td>\r\n			<td><span style=\"font-size:20px\">Led</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Chu&acirc;̉n LAN</span></td>\r\n			<td><span style=\"font-size:20px\">Killer Gb LAN</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Chuẩn WIFI</span></td>\r\n			<td><span style=\"font-size:20px\">Intel&nbsp;Wi-fi 6 AX201 (2x2)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Bluetooth</span></td>\r\n			<td><span style=\"font-size:20px\">v5.1</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Webcam</span></td>\r\n			<td><span style=\"font-size:20px\">HD type (30fps@720p)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Hệ điều h&agrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">4 Cell 99.9WHr</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Pin</span></td>\r\n			<td><span style=\"font-size:20px\">3 Cell 48WHr</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Trọng lượng</span></td>\r\n			<td><span style=\"font-size:20px\">2.1 kg</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;u sắc</span></td>\r\n			<td><span style=\"font-size:20px\">Black</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Kích thước</span></td>\r\n			<td><span style=\"font-size:20px\">358.3 x 248 x 18.3-19.8 (mm)</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '43999000', 'gs6614.png', 1, NULL, NULL),
(4, 1, 1, 'Laptop MSI Stealth 15M A11SDK 060VN', '<h1>Laptop MSI Stealth 15M A11SDK 060VN</h1>', '<h2><span style=\"font-size:20px\"><strong>TH&Ocirc;NG SỐ KĨ THUẬT</strong></span></h2>\r\n\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">CPU</span></td>\r\n			<td><span style=\"font-size:20px\">Intel Core i7-1185G7 3.0GHz up to 4.8GHz 12MB</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">RAM</span></td>\r\n			<td><span style=\"font-size:20px\">16GB (8GBx2) DDR4 3200MHz&nbsp;(2x SO-DIMM socket, up to 64GB SDRAM)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Ổ cứng</span></td>\r\n			<td><span style=\"font-size:20px\">512GB SSD PCIE G3X4</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Card đồ họa</span></td>\r\n			<td><span style=\"font-size:20px\">NVIDIA GeForce GTX 1660Ti 6GB GDDR6</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;n h&igrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">15.6&quot; FHD (1920*1080), IPS-Level 144Hz 45%NTSC Thin Bezel</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Cổng giao tiếp</span></td>\r\n			<td>\r\n			<p><span style=\"font-size:20px\">1x Type-C (USB4 / DP / Thunderbolt&trade;4) with PD charging<br />\r\n			2x Type-A USB3.2 Gen1<br />\r\n			1x (4K @ 60Hz) HDMI</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Audio</span></td>\r\n			<td><span style=\"font-size:20px\">NAHIMIC 3 (2x 2W Speaker)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">B&agrave;n ph&iacute;m</span></td>\r\n			<td><span style=\"font-size:20px\">RGB Backlight Keyboard</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Đọc thẻ nhớ</span></td>\r\n			<td><span style=\"font-size:20px\">1x Micro SD Card Reader</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Chuẩn Lan</span></td>\r\n			<td><span style=\"font-size:20px\">Killer Gb LAN</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Chuẩn WIFI</span></td>\r\n			<td><span style=\"font-size:20px\">Intel Wi-Fi 6 AX201 (2x2)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Bluetooth</span></td>\r\n			<td><span style=\"font-size:20px\">v5.1</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Webcam</span></td>\r\n			<td><span style=\"font-size:20px\">HD type (30fps@720p)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Hệ điều h&agrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">Windows 10 Home</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Pin</span></td>\r\n			<td><span style=\"font-size:20px\">3 Cell 52WHr</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Trọng lượng</span></td>\r\n			<td><span style=\"font-size:20px\">1.69 kg</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;u sắc</span></td>\r\n			<td><span style=\"font-size:20px\">PureWhite</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">K&iacute;ch thước</span></td>\r\n			<td><span style=\"font-size:20px\">358 x 248 x 15.95 (mm)</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '34999000', 'stealth19.png', 1, NULL, NULL),
(5, 3, 3, 'Laptop Dell G3 3500 G3500A', '<h1>Laptop Dell G3 3500 G3500A</h1>', '<h2><span style=\"font-size:20px\"><strong>TH&Ocirc;NG SỐ KĨ THUẬT :&nbsp;</strong></span></h2>\r\n\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">CPU</span></td>\r\n			<td><span style=\"font-size:20px\">Intel Core&nbsp;i7-10750H 2.6GHz up to 5.0GHz 12MB</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">RAM</span></td>\r\n			<td><span style=\"font-size:20px\">8GB (4GB x2) DDR4 3200MHz&nbsp;(2x SO-DIMM socket, up to 32GB SDRAM)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Ổ lưu trữ:</span></td>\r\n			<td><span style=\"font-size:20px\">512GB SSD M.2 PCIE&nbsp;(1 khe&nbsp;2.5&quot; SATA)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Card đồ họa</span></td>\r\n			<td><span style=\"font-size:20px\">NVIDIA GeForce GTX 1650Ti 4GB GDDR6 + Intel UHD Graphics</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;n h&igrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">15.6&quot; FHD (1920 x 1080) IPS, 120Hz, Wide View, 250nits, Narrow Bezel, Non-Glare with&nbsp;45% NTSC, 63% sRGB</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">B&agrave;n ph&iacute;m</span></td>\r\n			<td><span style=\"font-size:20px\">Blue Backlit Keyboard</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Audio</span></td>\r\n			<td><span style=\"font-size:20px\">Waves MaxxAudio</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Đọc thẻ nhớ</span></td>\r\n			<td><span style=\"font-size:20px\">MicroSD Card Reader</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Kết nối c&oacute; d&acirc;y (LAN)</span></td>\r\n			<td><span style=\"font-size:20px\">Killer Networks 2500V2 Gigabit Ethernet</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Kết nối kh&ocirc;ng d&acirc;y</span></td>\r\n			<td><span style=\"font-size:20px\">802.11 AC (2x2), Bluetooth v4.2</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Webcam</span></td>\r\n			<td><span style=\"font-size:20px\">Widescreen HD (720p)&nbsp;</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Cổng giao tiếp</span></td>\r\n			<td>\r\n			<p><span style=\"font-size:20px\">1x USB 3.1</span></p>\r\n\r\n			<p><span style=\"font-size:20px\">2x USB 2.0</span></p>\r\n\r\n			<p><span style=\"font-size:20px\">1x USB Type C HDMI</span></p>\r\n\r\n			<p><span style=\"font-size:20px\">RJ-45</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Hệ điều h&agrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">Windows 10 Home</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Pin</span></td>\r\n			<td><span style=\"font-size:20px\">3 Cell 56Whr</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Trọng lượng</span></td>\r\n			<td><span style=\"font-size:20px\">2.34 kg</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Kích thước</span></td>\r\n			<td><span style=\"font-size:20px\">21.6 (H) x 365.5 (W) x 254 (D) (mm)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;u sắc</span></td>\r\n			<td><span style=\"font-size:20px\">Đen</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Bảo mật</span></td>\r\n			<td><span style=\"font-size:20px\">Finger Print</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '27999000', 'dell11.png', 1, NULL, NULL),
(6, 2, 2, 'Laptop gaming Acer Predator Helios 300', '<h1>Laptop gaming Acer Predator Helios 300 PH315 53 70U6</h1>', '<h2><span style=\"font-size:20px\"><strong>TH&Ocirc;NG SỐ KĨ THUẬT :&nbsp;</strong></span></h2>\r\n\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">H&atilde;ng sản xuất</span></td>\r\n			<td><span style=\"font-size:20px\">Acer</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Bảo h&agrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">12</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">CPU</span></td>\r\n			<td><span style=\"font-size:20px\">Intel Core&nbsp;i7-10750H 2.6GHz up to 5.0GHz 12MB</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">RAM</span></td>\r\n			<td><span style=\"font-size:20px\">16GB (8GBx2) DDR4 2933MHz&nbsp;(2x SO-DIMM socket, up to 32GB SDRAM)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">&Ocirc;̉ cứng</span></td>\r\n			<td><span style=\"font-size:20px\">512GB SSD M.2 PCIE G3X4&nbsp;(Support RAID 0) (C&ograve;n trống 1 khe SSD M.2 PCIE v&agrave; 1 khe&nbsp;2.5&quot; SATA)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Card đồ họa</span></td>\r\n			<td><span style=\"font-size:20px\">NVIDIA GeForce RTX 2060 6GB&nbsp;GDDR6</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;n h&igrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">15.6&quot; FHD (1920 x 1080) IPS,&nbsp;Anti-Glare with 72% NTSC, 100% sRGB, 240Hz, 3ms, 300nits</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Audio</span></td>\r\n			<td><span style=\"font-size:20px\">DTS&reg; X:Ultra Audio</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Cổng giao tiếp</span></td>\r\n			<td><span style=\"font-size:20px\">1x USB 3.2 Gen 2 port featuring power-off USB charging<br />\r\n			2x USB 3.2 Gen 1 ports<br />\r\n			1x Ethernet (RJ-45) port<br />\r\n			1x HDMI&reg;2.0 port with HDCP support<br />\r\n			1x Mini DisplayPortTM 1.4</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Đọc thẻ nhớ</span></td>\r\n			<td><span style=\"font-size:20px\">None</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Chu&acirc;̉n LAN</span></td>\r\n			<td><span style=\"font-size:20px\">Killer&trade; Ethernet E2600</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Chuẩn WIFI</span></td>\r\n			<td><span style=\"font-size:20px\">Killer&trade; Wi-Fi 6 AX1650i&nbsp;</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Bluetooth</span></td>\r\n			<td><span style=\"font-size:20px\">v5.1</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Webcam</span></td>\r\n			<td><span style=\"font-size:20px\">Acer Crystal Eye 720p</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Hệ điều h&agrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">Windows 10 Home</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Pin</span></td>\r\n			<td><span style=\"font-size:20px\">4 Cell 59 WHr</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Trọng lượng</span></td>\r\n			<td><span style=\"font-size:20px\">2.2 kg</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;u sắc</span></td>\r\n			<td><span style=\"font-size:20px\">Abyssal Black; Led RGB 4 Zone Keyboard</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Kích thước</span></td>\r\n			<td><span style=\"font-size:20px\">363.4 x 255 x 22.9 (mm)</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '43499000', 'predator7.png', 1, NULL, NULL),
(7, 2, 2, 'Laptop Gaming ACER Predator Helios', '<h1>Laptop Gaming ACER Predator Helios PH315 53 770L</h1>', '<p><span style=\"font-size:16px\"><strong>Th&ocirc;ng số kỹ thuật:</strong></span></p>\r\n\r\n<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><span style=\"font-size:16px\"><strong>D&ograve;ng sản xuất&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Acer Helios 300</strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><span style=\"font-size:16px\"><strong>T&ecirc;n sản phẩm&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Predator Helios PH315-53-770L NH.Q7XSV.002</strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><span style=\"font-size:16px\"><strong>Bộ vi xử l&yacute;</strong>&nbsp;</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Bộ vi xử l&yacute;</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Intel&reg; Core&trade; i7-10750H</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Tốc độ</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">2.6 upto 5.0GHz, 6 nh&acirc;n 12 luồng</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Bộ nhớ đệm</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">12MB Cache</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><span style=\"font-size:16px\"><strong>Bộ nhớ trong&nbsp;</strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Dung lượng</span></p>\r\n			</td>\r\n			<td><span style=\"font-size:16px\">8GB DDR4 2933MHz (2x SO-DIMM socket, up to 32GB SDRAM)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Số khe cắm</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">&nbsp;2</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><span style=\"font-size:16px\"><strong>Ổ cứng&nbsp;</strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Dung lượng</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">512GB SSD M2 PCIe NVMe</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Tốc độ v&ograve;ng quay</span></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\"><strong>Ổ đĩa quang (ODD)&nbsp;</strong></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">&nbsp;Kh&ocirc;ng</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><span style=\"font-size:16px\"><strong>Hiển thị&nbsp;</strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">M&agrave;n h&igrave;nh</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">15.6&quot; display with IPS (In-Plane Switching) technology, Full HD 1920 x 1080, high-brightness (300 nits) Acer ComfyViewTM LED-backlit TFT LCD, supporting 144Hz, 3 ms Overdrive</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Độ ph&acirc;n giải</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">1920x1080</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><span style=\"font-size:16px\"><strong>Đồ Họa (VGA)&nbsp;</strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Card m&agrave;n h&igrave;nh</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">NVIDIA GeForce GTX 1660Ti 6GB&nbsp;GDDR6</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><span style=\"font-size:16px\"><strong>Kết nối (Network)&nbsp;</strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Wireless</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Killer&trade; Wi-Fi 6 AX1650i</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Lan</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Killer&trade; Ethernet E2600</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Bluetooth</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Bluetooth 5.0</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><span style=\"font-size:16px\"><strong>B&agrave;n ph&iacute;m , Chuột&nbsp;</strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Kiểu b&agrave;n ph&iacute;m</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">B&agrave;n ph&iacute;m ti&ecirc;u chuẩn, c&oacute; b&agrave;n ph&iacute;m số - Đ&egrave;n nền b&agrave;n ph&iacute;m RGB 4 Zone</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Chuột</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Cảm ứng đa điểm</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><span style=\"font-size:16px\"><strong>Giao tiếp mở rộng&nbsp;</strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Kết nối USB</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">1x USB Type C (đọc ghi 50GBps)</span></p>\r\n\r\n			<p><span style=\"font-size:16px\">1x USB 3.2 Gen 2 (đọc ghi 10GBps)</span></p>\r\n\r\n			<p><span style=\"font-size:16px\">2x USB 3.2 Gen 1 (đọc ghi 5GBps)</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Kết nối HDMI/VGA</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">1x HDMI&reg; 2.0 port with HDCP support</span></p>\r\n\r\n			<p><span style=\"font-size:16px\">1x Mini DisplayPortTM 1.4 1x Ethernet (RJ-45)</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Khe cắm thẻ nhớ</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">kh&ocirc;ng</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Tai nghe</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">1 x Headset/speaker jack</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Camera</span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">HD webcam with 1280 x 720 resolution, 720p HD audio/video recording and Super high dynamic range imaging (SHDR)</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\"><strong>Dung lượng pin</strong></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">4 Cell 59 WHrs</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\"><strong>Sạc pin</strong></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Đi k&egrave;m</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\"><strong>Hệ điều h&agrave;nh đi k&egrave;m</strong></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Windows 10 Home</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\"><strong>Trọng Lượng</strong></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">2.4kg</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\"><strong>M&agrave;u sắc</strong></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Đen</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '33999000', 'predator167.png', 1, NULL, NULL),
(8, 4, 4, 'Macbook Pro 13 2020 MYD82SA', '<p>Macbook Pro 13 2020 MYD82SA /A Touchbar M1/8GB/256GB/GPU 8-core</p>', '<h2><span style=\"font-size:20px\"><strong>TH&Ocirc;NG SỐ KĨ THUẬT :&nbsp;</strong></span></h2>\r\n\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">CPU</span></td>\r\n			<td><span style=\"font-size:20px\">Apple M1 chip with 8-core CPU and 8-core GPU</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">RAM</span></td>\r\n			<td><span style=\"font-size:20px\">8GB</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Ổ lưu trữ:</span></td>\r\n			<td><span style=\"font-size:20px\">256GB SSD</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Card đồ họa</span></td>\r\n			<td><span style=\"font-size:20px\">Apple M1 GPU 8 cores</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;n h&igrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">Retina 13.3 inch (2560x1600) IPS Led Backlit True Tone</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">B&agrave;n ph&iacute;m</span></td>\r\n			<td><span style=\"font-size:20px\">Magic Keyboard, Touchbar, c&oacute; LED</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Audio</span></td>\r\n			<td><span style=\"font-size:20px\">Stereo speakers</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Đọc thẻ nhớ</span></td>\r\n			<td><span style=\"font-size:20px\">None</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Kết nối c&oacute; d&acirc;y (LAN)</span></td>\r\n			<td><span style=\"font-size:20px\">None</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Kết nối kh&ocirc;ng d&acirc;y</span></td>\r\n			<td><span style=\"font-size:20px\">Wifi 802.11ac - Bluetooth 5.0</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Webcam</span></td>\r\n			<td><span style=\"font-size:20px\">720p HD</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Cổng giao tiếp</span></td>\r\n			<td>\r\n			<p><span style=\"font-size:20px\"><strong>2 Thunderbolt / USB 4 ports with support for:</strong><br />\r\n			* Charging<br />\r\n			* DisplayPort<br />\r\n			* Thunderbolt 3 (up to 40Gb/s)<br />\r\n			* USB 3.1 Gen 2 (up to 10Gb/s)</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Hệ điều h&agrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">Mac OS</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Pin</span></td>\r\n			<td><span style=\"font-size:20px\">Built in Polymer, 58.2Whr<br />\r\n			Up to 17 hours wireless web; Up to 20 hours Apple TV app movie playback</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Trọng lượng</span></td>\r\n			<td><span style=\"font-size:20px\">1.4 kg</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Kích thước</span></td>\r\n			<td><span style=\"font-size:20px\">304 x 212 x 156 mm</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;u sắc</span></td>\r\n			<td><span style=\"font-size:20px\">X&aacute;m</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Bảo mật</span></td>\r\n			<td><span style=\"font-size:20px\">Bảo mật dấu v&acirc;n tay</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '32900000', 'mac42.png', 1, NULL, NULL),
(9, 4, 4, 'Macbook Pro 13 2020 MYDC2SA', '<h1>Macbook Pro 13 2020 MYDC2SA</h1>', '<h2><span style=\"font-size:20px\"><strong>TH&Ocirc;NG SỐ KĨ THUẬT :&nbsp;</strong></span></h2>\r\n\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">CPU</span></td>\r\n			<td><span style=\"font-size:20px\">Apple M1 chip with 8-core CPU and 8-core GPU</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">RAM</span></td>\r\n			<td><span style=\"font-size:20px\">8GB</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Ổ lưu trữ:</span></td>\r\n			<td><span style=\"font-size:20px\">512GB SSD</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Card đồ họa</span></td>\r\n			<td><span style=\"font-size:20px\">Apple M1 GPU 8 cores</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;n h&igrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">Retina 13.3 inch (2560x1600) IPS Led Backlit True Tone</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">B&agrave;n ph&iacute;m</span></td>\r\n			<td><span style=\"font-size:20px\">Magic Keyboard, Touchbar, c&oacute; LED</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Audio</span></td>\r\n			<td><span style=\"font-size:20px\">Stereo speakers</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Đọc thẻ nhớ</span></td>\r\n			<td><span style=\"font-size:20px\">None</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Kết nối c&oacute; d&acirc;y (LAN)</span></td>\r\n			<td><span style=\"font-size:20px\">None</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Kết nối kh&ocirc;ng d&acirc;y</span></td>\r\n			<td><span style=\"font-size:20px\">Wifi 802.11ac - Bluetooth 5.0</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Webcam</span></td>\r\n			<td><span style=\"font-size:20px\">720p HD</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Cổng giao tiếp</span></td>\r\n			<td>\r\n			<p><span style=\"font-size:20px\"><strong>2 Thunderbolt / USB 4 ports with support for:</strong><br />\r\n			* Charging<br />\r\n			* DisplayPort<br />\r\n			* Thunderbolt 3 (up to 40Gb/s)<br />\r\n			* USB 3.1 Gen 2 (up to 10Gb/s)</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Hệ điều h&agrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">Mac OS</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Pin</span></td>\r\n			<td><span style=\"font-size:20px\">Built in Polymer, 58.2Whr<br />\r\n			Up to 17 hours wireless web; Up to 20 hours Apple TV app movie playback</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Trọng lượng</span></td>\r\n			<td><span style=\"font-size:20px\">1.4 kg</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Kích thước</span></td>\r\n			<td><span style=\"font-size:20px\">304 x 212 x 156 mm</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;u sắc</span></td>\r\n			<td><span style=\"font-size:20px\">Bạc</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Bảo mật</span></td>\r\n			<td><span style=\"font-size:20px\">Bảo mật dấu v&acirc;n tay</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '37590000', 'mac10.png', 1, NULL, NULL),
(10, 4, 4, 'Macbook Air 13 2020 MGND3SA', '<h1>Macbook Air 13 2020 MGND3SA</h1>', '<h2><span style=\"font-size:20px\"><strong>TH&Ocirc;NG SỐ KĨ THUẬT :&nbsp;</strong></span></h2>\r\n\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">CPU</span></td>\r\n			<td><span style=\"font-size:20px\">Apple M1 chip with 8‑core CPU</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">RAM</span></td>\r\n			<td><span style=\"font-size:20px\">8GB</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Ổ lưu trữ:</span></td>\r\n			<td><span style=\"font-size:20px\">256GB SSD</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Card đồ họa</span></td>\r\n			<td><span style=\"font-size:20px\">Apple M1 GPU 7 cores</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;n h&igrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">Retina 13.3 inch (2560x1600) IPS Led Backlit True Tone</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">B&agrave;n ph&iacute;m</span></td>\r\n			<td><span style=\"font-size:20px\">Magic Keyboard, Touchbar, c&oacute; LED</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Audio</span></td>\r\n			<td><span style=\"font-size:20px\">Stereo speakers</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Đọc thẻ nhớ</span></td>\r\n			<td><span style=\"font-size:20px\">None</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Kết nối c&oacute; d&acirc;y (LAN)</span></td>\r\n			<td><span style=\"font-size:20px\">None</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Kết nối kh&ocirc;ng d&acirc;y</span></td>\r\n			<td><span style=\"font-size:20px\">Wifi 802.11ac - Bluetooth 5.0</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Webcam</span></td>\r\n			<td><span style=\"font-size:20px\">720p HD</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Cổng giao tiếp</span></td>\r\n			<td>\r\n			<p><span style=\"font-size:20px\">* Two Thunderbolt / USB 4 ports with support for::<br />\r\n			* Charging, DisplayPort, Thunderbolt 3 (up to 40 Gbps)<br />\r\n			* USB-C 3.1 Gen 2 (up to 10 Gbps)</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Hệ điều h&agrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">Mac OS</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Pin</span></td>\r\n			<td><span style=\"font-size:20px\">* Up to 15 hours wireless web<br />\r\n			* Up to 18 hours Apple TV app movie playback<br />\r\n			* Built-in 49.9‑watt‑hour lithium‑polymer battery<br />\r\n			* 30W USB-C Power Adapter;&nbsp;</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Trọng lượng</span></td>\r\n			<td><span style=\"font-size:20px\">1.4 kg</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Kích thước</span></td>\r\n			<td><span style=\"font-size:20px\">304 x 212 x 4.1 mm</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;u sắc</span></td>\r\n			<td><span style=\"font-size:20px\">V&agrave;ng</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Bảo mật</span></td>\r\n			<td><span style=\"font-size:20px\">Bảo mật dấu v&acirc;n tay</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '27000000', 'mac236.png', 1, NULL, NULL),
(11, 5, 5, 'Laptop gaming Lenovo Legion 5', '<h1>Laptop gaming Lenovo Legion 5 15IMH05 82AU004YVN</h1>', '<h3><span style=\"font-size:20px\">Th&ocirc;ng số kĩ thuật:</span></h3>\r\n\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">CPU</span></td>\r\n			<td><span style=\"font-size:20px\">Intel Core i7-10750H</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">RAM</span></td>\r\n			<td><span style=\"font-size:20px\">8GB DDR4 2933MHz&nbsp;(2x SO-DIMM socket, up to 16GB SDRAM)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Ổ cứng</span></td>\r\n			<td><span style=\"font-size:20px\">512GB SSD M.2 NVMe,&nbsp;x1 slot 2.5&quot; SATA (HDD/SSD)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Card đồ họa</span></td>\r\n			<td><span style=\"font-size:20px\">NVIDIA GeForce GTX 1650 4GB GDDR6 + Intel UHD Graphics</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;n h&igrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">15.6&quot; FHD (1920x1080), IPS, anti-glare, 120Hz, LED backlight, 250 nits, 16:9 aspect ratio, 45% NTSC</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Cổng giao tiếp</span></td>\r\n			<td><span style=\"font-size:20px\">4x USB 3.1 Gen 1 (Always On)<br />\r\n			2x USB 3.1 Gen 2<br />\r\n			1x USB 3.1 Type-C Gen 1 (with the function of DisPlay 1.4)<br />\r\n			1x USB 3.1 Type-C Gen 2 / Thunderbolt 3 (with the function of DP 1.4)<br />\r\n			1x HDMI 2.0<br />\r\n			1x Ethernet (RJ-45)<br />\r\n			1x headphone / microphone combo jack</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Audio</span></td>\r\n			<td><span style=\"font-size:20px\">Harman&reg; Speakers with Dolby Atmos&reg; for Gaming</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Đọc thẻ nhớ</span></td>\r\n			<td><span style=\"font-size:20px\">None</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Chuẩn LAN</span></td>\r\n			<td><span style=\"font-size:20px\">Gb LAN</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Chuẩn WIFI</span></td>\r\n			<td><span style=\"font-size:20px\">802.11ax 2x2</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Bluetooth</span></td>\r\n			<td><span style=\"font-size:20px\">v5.0</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Webcam</span></td>\r\n			<td><span style=\"font-size:20px\">HD 720p</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Hệ điều h&agrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">Windows 10 Home</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Pin</span></td>\r\n			<td><span style=\"font-size:20px\">4 Cell 60 WHr</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Trọng lượng</span></td>\r\n			<td><span style=\"font-size:20px\">2.3 kg</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;u sắc</span></td>\r\n			<td><span style=\"font-size:20px\">Phantom Black</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">K&iacute;ch thước</span></td>\r\n			<td><span style=\"font-size:20px\">363.06 x 259.61 x 23.57-26.1 (mm)</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '25390000', 'len33.png', 1, NULL, NULL),
(12, 5, 5, 'Laptop gaming Lenovo Legion 5P', '<p>Laptop gaming Lenovo Legion 5P 15IMH05H 82AW005QVN</p>', '<h2><span style=\"font-size:20px\"><strong>TH&Ocirc;NG SỐ KĨ THUẬT :&nbsp;</strong></span></h2>\r\n\r\n<table border=\"3\" cellpadding=\"3\" cellspacing=\"3\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">CPU</span></td>\r\n			<td><span style=\"font-size:20px\">Intel Core&nbsp;i7-10750H 2.6GHz up to 5.0GHz 12MB</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">RAM</span></td>\r\n			<td><span style=\"font-size:20px\">16GB (8GB x2) DDR4 3200MHz&nbsp;(2x SO-DIMM socket, up to 32GB SDRAM)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Ổ lưu trữ:</span></td>\r\n			<td><span style=\"font-size:20px\">512GB SSD M.2 2280 PCIe NVMe&nbsp;(C&ograve;n trống 1 khe 2.5 SATA)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Card đồ họa</span></td>\r\n			<td><span style=\"font-size:20px\">NVIDIA GeForce GTX 1660Ti 6GB GDDR6 + Intel UHD Graphics</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;n h&igrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">15.6&quot; FHD (1920x1080) WVA 300nits Anti-glare, 144Hz, 100% sRGB Gamut, Dolby Vision</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">B&agrave;n ph&iacute;m</span></td>\r\n			<td><span style=\"font-size:20px\">Fullsize RGB</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Audio</span></td>\r\n			<td><span style=\"font-size:20px\">HD Audio, Realtek ALC3287 codec /<br />\r\n			Dolby Atoms&nbsp; for Gaming Certification, Harman speakers, 2W x 2</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Đọc thẻ nhớ</span></td>\r\n			<td><span style=\"font-size:20px\">None</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Kết nối c&oacute; d&acirc;y (LAN)</span></td>\r\n			<td><span style=\"font-size:20px\">Gb LAN</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Kết nối kh&ocirc;ng d&acirc;y</span></td>\r\n			<td><span style=\"font-size:20px\">802.11ax 2x2, Bluetooth v5.0</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Webcam</span></td>\r\n			<td><span style=\"font-size:20px\">None</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Cổng giao tiếp</span></td>\r\n			<td><span style=\"font-size:20px\">4x USB 3.2 Gen 1 (one Always On),<br />\r\n			1x USB 3.2 Type-C Gen 1 (with the function of DisplayPort 1.2),<br />\r\n			1xHDMI 2.0<br />\r\n			1x Ethernet (RJ-45)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Hệ điều h&agrave;nh</span></td>\r\n			<td><span style=\"font-size:20px\">Windows 10 Home</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Pin</span></td>\r\n			<td><span style=\"font-size:20px\">4 Cell 80Whr</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Trọng lượng</span></td>\r\n			<td><span style=\"font-size:20px\">2.3 kg</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Kích thước</span></td>\r\n			<td><span style=\"font-size:20px\">363.06 x 259.61 x 23.57 (mm)</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">M&agrave;u sắc</span></td>\r\n			<td><span style=\"font-size:20px\">Iron grey</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:20px\">Bảo mật</span></td>\r\n			<td><span style=\"font-size:20px\">None</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '33490000', 'len244.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `tbl_product_category_id_foreign` (`category_id`),
  ADD KEY `tbl_product_brand_id_foreign` (`brand_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `tbl_brand` (`brand_id`),
  ADD CONSTRAINT `tbl_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `tbl_category_product` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
