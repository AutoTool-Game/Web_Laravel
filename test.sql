-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2021 at 03:53 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertises`
--

CREATE TABLE `advertises` (
  `id` int(11) NOT NULL,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Tin Kinh tế'),
(2, 'Tin Xã hội'),
(3, 'Tin thế giới'),
(4, 'Phóng sự'),
(5, 'Ô tô - Xe máy');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `customer_name`, `description`, `news_id`, `created_at`, `updated_at`) VALUES
(22, 'Vũ Đức Toàn', 'Thật không ngờ vấn đề lại ở đó', 11, NULL, NULL),
(23, 'Vũ Đức Toàn', 'Cảm ơn, tôi đã hiểu', 11, NULL, NULL),
(24, 'Ngân Hàng AMV', 'Quá tuyệt vời!@', 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2021_09_26_025622_create_customers_table', 1),
(12, '2021_09_26_082654_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `hot` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `category_id`, `name`, `description`, `content`, `photo`, `hot`) VALUES
(7, 2, 'Game thủ Trung Quốc hack GPS để trà trộn chơi Pokemon Go tại Nhật', '<p>(D&acirc;n tr&iacute;) - Game thủ Pokemon Go tại Nhật Bản đ&atilde; v&ocirc; c&ugrave;ng bức xức khi ph&aacute;t hiện ra c&oacute; nhiều người chơi tại c&aacute;c nước l&aacute;ng giềng, đặc biệt l&agrave; Trung Quốc đang sử dụng phần mềm hack GPS để đăng nhập v&agrave;o tr&ograve; chơi, thậm ch&iacute; chiếm c&aacute;c ph&ograve;ng tập gym ảo với Pokemon cấp độ cao.</p>', '<p>(D&acirc;n tr&iacute;) - Game thủ Pokemon Go tại Nhật Bản đ&atilde; v&ocirc; c&ugrave;ng bức xức khi ph&aacute;t hiện ra c&oacute; nhiều người chơi tại c&aacute;c nước l&aacute;ng giềng, đặc biệt l&agrave; Trung Quốc đang sử dụng phần mềm hack GPS để đăng nhập v&agrave;o tr&ograve; chơi, thậm ch&iacute; chiếm c&aacute;c ph&ograve;ng tập gym ảo với Pokemon cấp độ cao.&nbsp; (D&acirc;n tr&iacute;) - Game thủ Pokemon Go tại Nhật Bản đ&atilde; v&ocirc; c&ugrave;ng bức xức khi ph&aacute;t hiện ra c&oacute; nhiều người chơi tại c&aacute;c nước l&aacute;ng giềng, đặc biệt l&agrave; Trung Quốc đang sử dụng phần mềm hack GPS để đăng nhập v&agrave;o tr&ograve; chơi, thậm ch&iacute; chiếm c&aacute;c ph&ograve;ng tập gym ảo với Pokemon cấp độ cao.&nbsp; (D&acirc;n tr&iacute;) - Game thủ Pokemon Go tại Nhật Bản đ&atilde; v&ocirc; c&ugrave;ng bức xức khi ph&aacute;t hiện ra c&oacute; nhiều người chơi tại c&aacute;c nước l&aacute;ng giềng, đặc biệt l&agrave; Trung Quốc đang sử dụng phần mềm hack GPS để đăng nhập v&agrave;o tr&ograve; chơi, thậm ch&iacute; chiếm c&aacute;c ph&ograve;ng tập gym ảo với Pokemon cấp độ cao.</p>', '1632622586_title16.jpg', 1),
(8, 2, 'Tuyển FIFA Online 3 Việt Nam: Bắt đầu hành trình EACC 2016', '<p>(D&acirc;n tr&iacute;) - Trưa 23/7, EA Champions Cup 2016 (EACC) - giải đấu FIFA Online 3 quốc tế thứ 2 trong năm 2016 sẽ bắt đầu khởi tranh tại Thượng Hải, Trung Quốc với tổng gi&aacute; trị giải thưởng l&ecirc;n đến 6,7 tỷ đồng.</p>', '<p>(D&acirc;n tr&iacute;) - Trưa 23/7, EA Champions Cup 2016 (EACC) - giải đấu FIFA Online 3 quốc tế thứ 2 trong năm 2016 sẽ bắt đầu khởi tranh tại Thượng Hải, Trung Quốc với tổng gi&aacute; trị giải thưởng l&ecirc;n đến 6,7 tỷ đồng. (D&acirc;n tr&iacute;) - Trưa 23/7, EA Champions Cup 2016 (EACC) - giải đấu FIFA Online 3 quốc tế thứ 2 trong năm 2016 sẽ bắt đầu khởi tranh tại Thượng Hải, Trung Quốc với tổng gi&aacute; trị giải thưởng l&ecirc;n đến 6,7 tỷ đồng.&nbsp; (D&acirc;n tr&iacute;) - Trưa 23/7, EA Champions Cup 2016 (EACC) - giải đấu FIFA Online 3 quốc tế thứ 2 trong năm 2016 sẽ bắt đầu khởi tranh tại Thượng Hải, Trung Quốc với tổng gi&aacute; trị giải thưởng l&ecirc;n đến 6,7 tỷ đồng. (D&acirc;n tr&iacute;) - Trưa 23/7, EA Champions Cup 2016 (EACC) - giải đấu FIFA Online 3 quốc tế thứ 2 trong năm 2016 sẽ bắt đầu khởi tranh tại Thượng Hải, Trung Quốc với tổng gi&aacute; trị giải thưởng l&ecirc;n đến 6,7 tỷ đồng.&nbsp;</p>', '1632580095_title8.jpg', 1),
(9, 2, '@Thị trường smartwatch sụt giảm mạnh trong quý II/2016, Apple vẫn tiếp tục dẫn đầu', '<p>(D&acirc;n tr&iacute;) - Thị trường smartwatch vừa trải qua một qu&yacute; sụt giảm mạnh. Apple vẫn l&agrave; h&atilde;ng smartwatch c&oacute; thị phần lớn nhất thế giới nhưng doanh số của h&atilde;ng cũng bị sụt giảm đến 55% trong qu&yacute; vừa qua.</p>', '<p>(D&acirc;n tr&iacute;) - Thị trường smartwatch vừa trải qua một qu&yacute; sụt giảm mạnh. Apple vẫn l&agrave; h&atilde;ng smartwatch c&oacute; thị phần lớn nhất thế giới nhưng doanh số của h&atilde;ng cũng bị sụt giảm đến 55% trong qu&yacute; vừa qua.&nbsp; (D&acirc;n tr&iacute;) - Thị trường smartwatch vừa trải qua một qu&yacute; sụt giảm mạnh. Apple vẫn l&agrave; h&atilde;ng smartwatch c&oacute; thị phần lớn nhất thế giới nhưng doanh số của h&atilde;ng cũng bị sụt giảm đến 55% trong qu&yacute; vừa qua.&nbsp; (D&acirc;n tr&iacute;) - Thị trường smartwatch vừa trải qua một qu&yacute; sụt giảm mạnh. Apple vẫn l&agrave; h&atilde;ng smartwatch c&oacute; thị phần lớn nhất thế giới nhưng doanh số của h&atilde;ng cũng bị sụt giảm đến 55% trong qu&yacute; vừa qua.</p>', '1632580087_title7.jpg', 1),
(10, 2, 'Hãng bảo mật của Nhật phát hành công cụ giải mã Ransomware miễn phí', '<p>(D&acirc;n tr&iacute;) - Nhận thức được t&aacute;c động cũng như ph&aacute;t triển của ransomware, h&atilde;ng bảo mật Trend Micro đ&atilde; ph&aacute;t h&agrave;ng c&ocirc;ng cụ giải m&atilde; ransomware miễn ph&iacute;, c&oacute; thể giải m&atilde; c&aacute;c tập tin bị m&atilde; h&oacute;a bởi c&aacute;c ransomware nhất định.</p>', '<p>(D&acirc;n tr&iacute;) - Nhận thức được t&aacute;c động cũng như ph&aacute;t triển của ransomware, h&atilde;ng bảo mật Trend Micro đ&atilde; ph&aacute;t h&agrave;ng c&ocirc;ng cụ giải m&atilde; ransomware miễn ph&iacute;, c&oacute; thể giải m&atilde; c&aacute;c tập tin bị m&atilde; h&oacute;a bởi c&aacute;c ransomware nhất định.&nbsp; (D&acirc;n tr&iacute;) - Nhận thức được t&aacute;c động cũng như ph&aacute;t triển của ransomware, h&atilde;ng bảo mật Trend Micro đ&atilde; ph&aacute;t h&agrave;ng c&ocirc;ng cụ giải m&atilde; ransomware miễn ph&iacute;, c&oacute; thể giải m&atilde; c&aacute;c tập tin bị m&atilde; h&oacute;a bởi c&aacute;c ransomware nhất định. (D&acirc;n tr&iacute;) - Nhận thức được t&aacute;c động cũng như ph&aacute;t triển của ransomware, h&atilde;ng bảo mật Trend Micro đ&atilde; ph&aacute;t h&agrave;ng c&ocirc;ng cụ giải m&atilde; ransomware miễn ph&iacute;, c&oacute; thể giải m&atilde; c&aacute;c tập tin bị m&atilde; h&oacute;a bởi c&aacute;c ransomware nhất định.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '1632580077_title6.jpg', 1),
(11, 4, 'Facebook cất cánh thành công siêu máy bay không người lái', '<p>(D&acirc;n tr&iacute;) - Sau nhiều năm chờ đợi, Facebook cuối c&ugrave;ng đ&atilde; cất c&aacute;nh th&agrave;nh c&ocirc;ng chiếc m&aacute;y bay kh&ocirc;ng người l&aacute;i cỡ lớn chạy bằng năng lượng mặt trời của m&igrave;nh. &Ocirc;ng chủ Mark Zuckerberg kh&ocirc;ng giấu được sự phấn kh&iacute;ch v&agrave; ngay lập tức chia sẻ th&ocirc;ng tin tr&ecirc;n trang c&aacute; nh&acirc;n của m&igrave;nh</p>', '<p>(D&acirc;n tr&iacute;) - Sau nhiều năm chờ đợi, Facebook cuối c&ugrave;ng đ&atilde; cất c&aacute;nh th&agrave;nh c&ocirc;ng chiếc m&aacute;y bay kh&ocirc;ng người l&aacute;i cỡ lớn chạy bằng năng lượng mặt trời của m&igrave;nh. &Ocirc;ng chủ Mark Zuckerberg kh&ocirc;ng giấu được sự phấn kh&iacute;ch v&agrave; ngay lập tức chia sẻ th&ocirc;ng tin tr&ecirc;n trang c&aacute; nh&acirc;n của m&igrave;nh&nbsp; (D&acirc;n tr&iacute;) - Sau nhiều năm chờ đợi, Facebook cuối c&ugrave;ng đ&atilde; cất c&aacute;nh th&agrave;nh c&ocirc;ng chiếc m&aacute;y bay kh&ocirc;ng người l&aacute;i cỡ lớn chạy bằng năng lượng mặt trời của m&igrave;nh. &Ocirc;ng chủ Mark Zuckerberg kh&ocirc;ng giấu được sự phấn kh&iacute;ch v&agrave; ngay lập tức chia sẻ th&ocirc;ng tin tr&ecirc;n trang c&aacute; nh&acirc;n của m&igrave;nh&nbsp; (D&acirc;n tr&iacute;) - Sau nhiều năm chờ đợi, Facebook cuối c&ugrave;ng đ&atilde; cất c&aacute;nh th&agrave;nh c&ocirc;ng chiếc m&aacute;y bay kh&ocirc;ng người l&aacute;i cỡ lớn chạy bằng năng lượng mặt trời của m&igrave;nh. &Ocirc;ng chủ Mark Zuckerberg kh&ocirc;ng giấu được sự phấn kh&iacute;ch v&agrave; ngay lập tức chia sẻ th&ocirc;ng tin tr&ecirc;n trang c&aacute; nh&acirc;n của m&igrave;nh &nbsp; (D&acirc;n tr&iacute;) - Sau nhiều năm chờ đợi, Facebook cuối c&ugrave;ng đ&atilde; cất c&aacute;nh th&agrave;nh c&ocirc;ng chiếc m&aacute;y bay kh&ocirc;ng người l&aacute;i cỡ lớn chạy bằng năng lượng mặt trời của m&igrave;nh. &Ocirc;ng chủ Mark Zuckerberg kh&ocirc;ng giấu được sự phấn kh&iacute;ch v&agrave; ngay lập tức chia sẻ th&ocirc;ng tin tr&ecirc;n trang c&aacute; nh&acirc;n của m&igrave;nh</p>', '1632584022_title1.jpg', 1),
(14, 4, 'Tư vấn cách mua iPhone 5/5s cũ tránh hàng dựng', '<p>(D&acirc;n tr&iacute;) - Kh&ocirc;ng phải ai cũng sẵn tiền để mua một chiếc iPhone mới. Nhiều độc giả đang đứng trước ph&acirc;n v&acirc;n c&oacute; n&ecirc;n mua iPhone cũ từ 3, 4 triệu đồng tại c&aacute;c cửa h&agrave;ng điện thoại hay kh&ocirc;ng, v&agrave; nếu mua th&igrave; n&ecirc;n mua ở đ&acirc;u cho uy t&iacute;n. Xin mời bạn đọc c&ugrave;ng tham gia tư vấn.</p>', '<p>(D&acirc;n tr&iacute;) - Kh&ocirc;ng phải ai cũng sẵn tiền để mua một chiếc iPhone mới. Nhiều độc giả đang đứng trước ph&acirc;n v&acirc;n c&oacute; n&ecirc;n mua iPhone cũ từ 3, 4 triệu đồng tại c&aacute;c cửa h&agrave;ng điện thoại hay kh&ocirc;ng, v&agrave; nếu mua th&igrave; n&ecirc;n mua ở đ&acirc;u cho uy t&iacute;n. Xin mời bạn đọc c&ugrave;ng tham gia tư vấn.&nbsp;(D&acirc;n tr&iacute;) - Kh&ocirc;ng phải ai cũng sẵn tiền để mua một chiếc iPhone mới. Nhiều độc giả đang đứng trước ph&acirc;n v&acirc;n c&oacute; n&ecirc;n mua iPhone cũ từ 3, 4 triệu đồng tại c&aacute;c cửa h&agrave;ng điện thoại hay kh&ocirc;ng, v&agrave; nếu mua th&igrave; n&ecirc;n mua ở đ&acirc;u cho uy t&iacute;n. Xin mời bạn đọc c&ugrave;ng tham gia tư vấn.&nbsp;(D&acirc;n tr&iacute;) - Kh&ocirc;ng phải ai cũng sẵn tiền để mua một chiếc iPhone mới. Nhiều độc giả đang đứng trước ph&acirc;n v&acirc;n c&oacute; n&ecirc;n mua iPhone cũ từ 3, 4 triệu đồng tại c&aacute;c cửa h&agrave;ng điện thoại hay kh&ocirc;ng, v&agrave; nếu mua th&igrave; n&ecirc;n mua ở đ&acirc;u cho uy t&iacute;n. Xin mời bạn đọc c&ugrave;ng tham gia tư vấn.</p>', '1632580061_title3.jpg', 1),
(15, 4, 'Thay vì mua iPhone X, 50 triệu đồng có thể mua được những gì?', '<p>(D&acirc;n tr&iacute;) - Một số nh&agrave; b&aacute;n lẻ đ&atilde; cho đặt gạch iPhone X với gi&aacute; l&ecirc;n đến 50 triệu đồng d&agrave;nh cho phi&ecirc;n bản 256 GB. Đ&acirc;y thực sự l&agrave; một số tiền cực lớn d&agrave;nh cho một chiếc điện thoại th&ocirc;ng minh. Với 50 triệu đồng, người d&ugrave;ng c&oacute; thể mua được rất nhiều thứ thay v&igrave; mua iPhone X.</p>', '<p><img alt=\"\" id=\"img_625160a0-99ff-11e7-965b-1b54d46f10d3\" src=\"https://dantricdn.com/thumb_w/640/2017/a1-1505470720354-1505470779278.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Gia Hưng</strong></p>\r\n\r\n<p>Tag :<a href=\"http://dantri.com.vn/iphone-x.tag\" title=\"iPhone X\">iPhone X</a>,&nbsp;<a href=\"http://dantri.com.vn/iphone-moi.tag\" title=\"iPhone mới\">iPhone mới</a>,&nbsp;<a href=\"http://dantri.com.vn/iphone-the-he-moi.tag\" title=\"iPhone thế hệ mới\">iPhone thế hệ mới</a>,&nbsp;<a href=\"http://dantri.com.vn/the-he-iphone-moi.tag\" title=\"thế hệ iphone mới\">thế hệ iphone mới</a>,&nbsp;<a href=\"http://dantri.com.vn/the-he-moi.tag\" title=\"thế hệ mới\">thế hệ mới</a>,<a href=\"http://dantri.com.vn/mua-iphone-x.tag\" title=\"mua iPhone X\">mua iPhone X</a>,&nbsp;<a href=\"http://dantri.com.vn/gia-50-trieu-dong.tag\" title=\"giá 50 triệu đồng\">gi&aacute; 50 triệu đồng</a></p>', '1632580052_title2.jpg', 1),
(16, 4, 'Sony trình diễn loạt thiết bị công nghệ mới tại Sony Show 2017', '<p>(D&acirc;n tr&iacute;) - Triển l&atilde;m Sony Show 2017 đ&atilde; ch&iacute;nh thức mở cửa đ&oacute;n kh&aacute;ch v&agrave;o s&aacute;ng nay 15/9 tại TPHCM. Tại đ&acirc;y, thương hiệu đến từ Nhật Bản đ&atilde; tr&igrave;nh diễn h&agrave;ng lọat thiết bị mới vừa được ra mắt tr&ecirc;n to&agrave;n cầu d&agrave;nh cho người ti&ecirc;u d&ugrave;ng trong nước.</p>', '<p>Đại diện từ Sony cho biết, Sony Show 2017 l&agrave; nơi quy tụ những ph&aacute;t kiến c&ocirc;ng nghệ mới nhất của Sony vừa được giới thiệu tại IFA 2017. Triển l&atilde;m năm nay lấy &yacute; tưởng kết hợp c&ocirc;ng nghệ với &acirc;m nhạc, đến từ c&aacute;c nghệ sĩ của Sony Music v&agrave; đi c&ugrave;ng nhiều hoạt động hướng đến trải nghiệm của người d&ugrave;ng.</p>\r\n\r\n<p><img alt=\"Xperia XZ1\" id=\"img_164723\" src=\"https://dantricdn.com/thumb_w/640/2017/img-5024-1505444215026.jpg\" /></p>\r\n\r\n<p>Xperia XZ1</p>\r\n\r\n<p>Nổi bật trong đ&oacute; l&agrave; sự xuất hiện của bộ đ&ocirc;i Xperia XZ1 v&agrave; Xperia XA1 Plus - bộ đ&ocirc;i smartphone mới tr&igrave;nh l&agrave;ng tại IFA năm nay. Xperia XZ1 l&agrave; chiếc điện thoại đầu ti&ecirc;n mở ra kỷ nguy&ecirc;n 3D Creator mới tr&ecirc;n smartphone. Người d&ugrave;ng c&oacute; thể tự tay chụp 3D c&aacute;c vật thể hay ch&iacute;nh gương mặt m&igrave;nh để gh&eacute;p linh hoạt v&agrave;o nhiều nh&acirc;n vật hoạt h&igrave;nh với ứng dụng AR, tạo ra sticker 3D sống động, hay h&igrave;nh động để chia sẻ l&ecirc;n mạng x&atilde; hội</p>\r\n\r\n<p>Trong khi đ&oacute;, Xperia XA1 Plus l&agrave; sự kết hợp giữa Xperia XA1 v&agrave; Xperia XA1 Ultra với thiết kế viền mỏng, camera c&oacute; độ ph&acirc;n giải cao l&ecirc;n đến 23MP, cấu h&igrave;nh m&aacute;y được n&acirc;ng cấp mạnh mẽ c&ugrave;ng cảm biến v&acirc;n tay v&agrave; dung lượng pin lớn.</p>\r\n\r\n<p><img alt=\"Xperia Touch\" id=\"img_164953\" src=\"https://dantricdn.com/thumb_w/640/2017/img-5069-1505451387483.jpg\" /></p>\r\n\r\n<p>Xperia Touch</p>\r\n\r\n<p>Sony cũng mang đến cho người tham dự trải nghiệm c&ocirc;ng nghệ từ tương lai v&ocirc; c&ugrave;ng th&uacute; vị với thiết bị Xperia Touch. Sản phẩm độc đ&aacute;o n&agrave;y hoạt động như một m&aacute;y chiếu tương t&aacute;c chạy tr&ecirc;n nền Android Nougat c&oacute; thể biến mọi mặt phẳng th&agrave;nh m&agrave;n h&igrave;nh cảm ứng l&ecirc;n đến 80 inch v&agrave; điều khiển như một m&aacute;y t&iacute;nh bảng lớn.</p>\r\n\r\n<p><img alt=\"TV Bravia OLED 77 inch\" id=\"img_164954\" src=\"https://dantricdn.com/thumb_w/640/2017/img-5085-1505451478779.jpg\" /></p>\r\n\r\n<p>TV Bravia OLED 77 inch</p>\r\n\r\n<p>B&ecirc;n cạnh smartphone, Sony cũng mang đến triển l&atilde;m TV Bravia OLED 77 inch lần đầu xuất hiện tại Việt Nam. D&ograve;ng sản phẩm n&agrave;y sử dụng tấm nền OLED, kết hợp giữa bộ xử l&yacute; h&igrave;nh ảnh X1 Extreme v&agrave; hệ thống loa khổng lồ th&ocirc;ng qua c&ocirc;ng nghệ Acoustic Surface độc đ&aacute;o.</p>\r\n\r\n<p><img alt=\"Gian trải nghiệm tai nghe của Sony\" id=\"img_164955\" src=\"https://dantricdn.com/thumb_w/640/2017/img-5111-1505451635820.jpg\" /></p>\r\n\r\n<p>Gian trải nghiệm tai nghe của Sony</p>\r\n\r\n<p>Một gian h&agrave;ng kh&aacute;c trong triển l&atilde;m năm nay cũng để trưng b&agrave;y những sản phẩm tai nghe kh&ocirc;ng d&acirc;y mới như True Wireless WF-1000X, headset đeo cổ WI-1000X, tai nghe tr&ugrave;m đầu WH-1000XM2, Soundbar ST5000, tai nghe h.ear phi&ecirc;n bản mới. Ngo&agrave;i ra, sự g&oacute;p mặt của c&aacute;c d&ograve;ng m&aacute;y Walkman thế hệ mới như ZX300, A40 series sẽ mang đến &acirc;m thanh cực chất cho giới trẻ v&agrave; audiophile.</p>\r\n\r\n<p><img alt=\"Khu trưng bày máy ảnh có những mô hình dựng sẵn để người dùng thử nghiệm\" id=\"img_164956\" src=\"https://dantricdn.com/thumb_w/640/2017/img-5091-1505451519359.jpg\" /></p>\r\n\r\n<p>Khu trưng b&agrave;y m&aacute;y ảnh c&oacute; những m&ocirc; h&igrave;nh dựng sẵn để người d&ugrave;ng thử nghiệm</p>\r\n\r\n<p>Sony cũng mang đến triển l&atilde;m mẫu m&aacute;y ảnh A9 mới, với khả năng chụp tốc độ cao đến 20 ảnh/gi&acirc;y v&agrave; hệ thống 693 điểm lấy n&eacute;t. V&agrave; một chiếc m&aacute;y ảnh RX0 với sự &ldquo;toan t&iacute;nh&rdquo; đầy t&aacute;o bạo của Sony với khối lượng chỉ 100g. Khả năng chống sốc, chống nước 10 m&eacute;t m&agrave; kh&ocirc;ng cần d&ugrave;ng vỏ bảo vệ sẽ gi&uacute;p bạn thực hiện những g&oacute;c quay độc đ&aacute;o m&agrave; những d&ograve;ng m&aacute;y lớn kh&oacute; c&oacute; thể thực hiện. RX0 được trang bị cảm biến Exmor RS CMOS 1&rdquo; c&ugrave;ng ống k&iacute;nh ZEISS Tessar T* 24mm g&oacute;c rộng cho khả năng chụp với tốc độ tối đa l&agrave; 1/32.000 gi&acirc;y v&agrave; chụp ảnh RAW li&ecirc;n tục 16 fps, hỗ trợ quay chậm 40 lần so với chuẩn 24fps, profile quay phim chuy&ecirc;n dụng S-log2 v&agrave; chất lượng h&igrave;nh ảnh 4K.</p>\r\n\r\n<p><img alt=\"Khu trải nghiệm khả năng chơi game trên PlayStation\" id=\"img_164957\" src=\"https://dantricdn.com/thumb_w/640/2017/img-5100-1505451539842.jpg\" /></p>\r\n\r\n<p>Khu trải nghiệm khả năng chơi game tr&ecirc;n PlayStation</p>\r\n\r\n<p>Ngo&agrave;i ra, một số kh&ocirc;ng gian trải nghiệm game PlayStation cũng được trưng b&agrave;y để kh&aacute;ch tham quan trải nghiệm c&aacute;c tựa game nổi tiếng Farpoint, Destiny 2, Knack 2, Tekken 7, PES 2018, GT Sport... Đặc biệt, Sony c&ograve;n mang đến c&ocirc;ng nghệ k&iacute;nh thực tế ảo PlayStation VR, để n&acirc;ng cao trải nghiệm c&aacute;c game h&agrave;nh động bắn s&uacute;ng trở n&ecirc;n h&agrave;o hứng v&agrave; kịch t&iacute;nh hơn.</p>\r\n\r\n<p><strong>Gia Hưng</strong></p>', '1632580036_title1.jpg', 0),
(22, 4, 'Thị trường smartwatch sụt giảm mạnh trong quý II/2016, Apple vẫn tiếp tục dẫn đầu', '<p>(D&acirc;n tr&iacute;) - Thị trường smartwatch vừa trải qua một qu&yacute; sụt giảm mạnh. Apple vẫn l&agrave; h&atilde;ng smartwatch c&oacute; thị phần lớn nhất thế giới nhưng doanh số của h&atilde;ng cũng bị sụt giảm đến 55% trong qu&yacute; vừa qua.</p>', '<p>(D&acirc;n tr&iacute;) - Thị trường smartwatch vừa trải qua một qu&yacute; sụt giảm mạnh. Apple vẫn l&agrave; h&atilde;ng smartwatch c&oacute; thị phần lớn nhất thế giới nhưng doanh số của h&atilde;ng cũng bị sụt giảm đến 55% trong qu&yacute; vừa qua.&nbsp; (D&acirc;n tr&iacute;) - Thị trường smartwatch vừa trải qua một qu&yacute; sụt giảm mạnh. Apple vẫn l&agrave; h&atilde;ng smartwatch c&oacute; thị phần lớn nhất thế giới nhưng doanh số của h&atilde;ng cũng bị sụt giảm đến 55% trong qu&yacute; vừa qua.&nbsp; (D&acirc;n tr&iacute;) - Thị trường smartwatch vừa trải qua một qu&yacute; sụt giảm mạnh. Apple vẫn l&agrave; h&atilde;ng smartwatch c&oacute; thị phần lớn nhất thế giới nhưng doanh số của h&atilde;ng cũng bị sụt giảm đến 55% trong qu&yacute; vừa qua.</p>', '1632584385_title13.jpg', 0),
(23, 2, 'Thị trường smartwatch sụt giảm mạnh trong quý II/2016, Apple vẫn tiếp tục dẫn đầu', '<p>(D&acirc;n tr&iacute;) - Thị trường smartwatch vừa trải qua một qu&yacute; sụt giảm mạnh. Apple vẫn l&agrave; h&atilde;ng smartwatch c&oacute; thị phần lớn nhất thế giới nhưng doanh số của h&atilde;ng cũng bị sụt giảm đến 55% trong qu&yacute; vừa qua.</p>', '<p>(D&acirc;n tr&iacute;) - Thị trường smartwatch vừa trải qua một qu&yacute; sụt giảm mạnh. Apple vẫn l&agrave; h&atilde;ng smartwatch c&oacute; thị phần lớn nhất thế giới nhưng doanh số của h&atilde;ng cũng bị sụt giảm đến 55% trong qu&yacute; vừa qua.&nbsp; (D&acirc;n tr&iacute;) - Thị trường smartwatch vừa trải qua một qu&yacute; sụt giảm mạnh. Apple vẫn l&agrave; h&atilde;ng smartwatch c&oacute; thị phần lớn nhất thế giới nhưng doanh số của h&atilde;ng cũng bị sụt giảm đến 55% trong qu&yacute; vừa qua.&nbsp; (D&acirc;n tr&iacute;) - Thị trường smartwatch vừa trải qua một qu&yacute; sụt giảm mạnh. Apple vẫn l&agrave; h&atilde;ng smartwatch c&oacute; thị phần lớn nhất thế giới nhưng doanh số của h&atilde;ng cũng bị sụt giảm đến 55% trong qu&yacute; vừa qua.</p>', '1632584462_title12.jpg', 0),
(24, 4, 'BITE OF THE APPLE iPhone 13 Pro latest – Apple fixes Music bug as fans flock to stores for £799 smartphone & Amazon SELLS out', '<p><strong><em>Read our iPhone 13 launch live blog for the latest updates...</em></strong></p>\r\n\r\n<p>America is awake and ready to upgrade &ndash; as Apple Stores open westward following the timezones.</p>\r\n\r\n<p>We&#39;d expect to see pictures from California in a few hours.</p>', '<ul>\r\n	<li>\r\n	<p>Apple fans in New York have finally started picking up their iPhones.</p>\r\n\r\n	<p>America is awake and ready to upgrade &ndash; as Apple Stores open westward following the timezones.</p>\r\n\r\n	<p>We&#39;d expect to see pictures from California in a few hours.</p>\r\n\r\n	<p>But for now, here are some snaps from the NYC Apple Store.</p>\r\n\r\n	<p><a href=\"https://www.thesun.co.uk/tech/16224612/iphone-13-pro-apple-max-charging-music-bug-fix/#\"><img src=\"https://www.thesun.co.uk/wp-content/uploads/2021/09/74215912-1252-4e2a-b18e-dc87a2eea52d.jpg\" style=\"height:609px; width:960px\" /></a></p>\r\n\r\n	<p><a href=\"https://www.thesun.co.uk/tech/16224612/iphone-13-pro-apple-max-charging-music-bug-fix/#\"><img src=\"https://www.thesun.co.uk/wp-content/uploads/2021/09/c2257339-03cd-4712-9c15-0a9787c66b19.jpg\" style=\"height:617px; width:960px\" /></a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thesun.co.uk/tech/16224612/iphone-13-pro-apple-max-charging-music-bug-fix/#liveblog-entry-16233073\">24TH SEPT 2021, 14:54</a></p>\r\n\r\n	<p>PAD POWER</p>\r\n\r\n	<p>Today is clearly all about the iPhone &ndash; but two other important gadgets are also now on sale.</p>\r\n\r\n	<p>There&#39;s the new iPad, an entry-level option with some upgraded perks.</p>\r\n\r\n	<p>And a totally revamped iPad Mini with a much better design</p>\r\n\r\n	<p>We&#39;ve tried them &ndash; read our&nbsp;<a href=\"https://www.thesun.co.uk/tech/16208733/new-ipad-review-2021/\">new iPad review</a>&nbsp;and&nbsp;<a href=\"https://www.thesun.co.uk/tech/16208732/ipad-mini-review-2021-new/\">iPad Mini review</a>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://www.thesun.co.uk/tech/16224612/iphone-13-pro-apple-max-charging-music-bug-fix/#liveblog-entry-16232638\">24TH SEPT 2021, 14:26</a></p>\r\n\r\n	<p><strong>PRICE HIKE</strong></p>\r\n\r\n	<p>A handful of sold-out iPhone 13 models have already appeared on eBay with extortionate price tags.</p>\r\n\r\n	<p>The Sun has uncovered an iPhone 13 Pro with 1 Terabyte of storage going for &pound;3,300 on the popular online shopping site.</p>\r\n\r\n	<p>Expect more to appear as other versions of the brand new handsets sell out at retail stores and on Apple&#39;s website.</p>\r\n\r\n	<p><a href=\"https://www.thesun.co.uk/tech/16224612/iphone-13-pro-apple-max-charging-music-bug-fix/#\"><img alt=\"The sought-after handset has already appeared on eBay with an extortionate price tag\" src=\"https://www.thesun.co.uk/wp-content/uploads/2021/09/image-278.png\" style=\"height:332px; width:897px\" /></a></p>\r\n\r\n	<p>The sought-after handset has already appeared on eBay with an extortionate price tagCredit: eBay</p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thesun.co.uk/tech/16224612/iphone-13-pro-apple-max-charging-music-bug-fix/#liveblog-entry-16232345\">24TH SEPT 2021, 14:04</a></p>\r\n\r\n	<p>WALK OF FAME</p>\r\n\r\n	<p>On iPhone launch day, Apple employees will clap and cheer people into the store.</p>\r\n\r\n	<p>Here&#39;s a great shot of this strange retail phenomenon below.</p>\r\n\r\n	<p>It shows the first customer in London&#39;s Regent Street store entering to pick up his iPhone today.</p>\r\n\r\n	<p><a href=\"https://www.thesun.co.uk/tech/16224612/iphone-13-pro-apple-max-charging-music-bug-fix/#\"><img src=\"https://www.thesun.co.uk/wp-content/uploads/2021/09/TECHNOLOGY-Apple-08195520jpg-JS682006399.jpg\" style=\"height:684px; width:960px\" /></a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thesun.co.uk/tech/16224612/iphone-13-pro-apple-max-charging-music-bug-fix/#liveblog-entry-16231541\">24TH SEPT 2021, 13:50</a></p>\r\n\r\n	<p>TASTE THE RAINBOW</p>\r\n\r\n	<p>Just like last year, the iPhone 13 Mini and iPhone 13 get the widest range of colours.</p>\r\n\r\n	<p>They come in a new Pink colour, as well as Blue, Midnight, Starlight and Red.</p>\r\n\r\n	<p>Colours for the iPhone 13 Pro and Pro Max are safer, but there is a new Sierra Blue option.</p>\r\n\r\n	<p>The Pro colours are Sierra Blue, Silver, Gold and Graphite.</p>\r\n\r\n	<p>Check them out...</p>\r\n	</li>\r\n</ul>', '1632584690_title11.jpg', 1),
(25, 4, '\'JUST WRONG\' Meghan Markle – ‘Embarrassing’ Duchess MOCKED for making ‘big mistake’ in treating New York trip ‘like a royal tour’', '<p>MEGHAN Markle and Prince Harry met with New York Mayor Bill De Blasio on their major trip to the city.</p>\r\n\r\n<p>Another Twitter user said: &quot;Yes exactly! It&#39;s just wrong for them to do that because they aren&#39;t working for the Firm anymore and aren&#39;t neutral at all and to be with that man while using the titles! It&#39;s a big mistake.&quot;</p>', '<p>he couple will now broadcast live from Central Park for a Global Citizen Live event to promote the Covid vaccine later today.</p>\r\n\r\n<p>But not everybody is welcoming the royal couple with popular US-based Twitter account @UKRoyalTea saying &quot;I don&rsquo;t know what&rsquo;s more embarrassing, the Sussexes treating a visit to NYC like it&rsquo;s a royal tour, or&nbsp;<a href=\"https://www.the-sun.com/who/bill-de-blasio/\">the Mayor&nbsp;</a>and Governor treating it like it is.&quot;</p>\r\n\r\n<p>Another Twitter user said: &quot;Yes exactly! It&#39;s just wrong for them to do that because they aren&#39;t working for the Firm anymore and aren&#39;t neutral at all and to be with that man while using the titles! It&#39;s a big mistake.&quot;</p>\r\n\r\n<p><strong><em>Read our Meghan Markle live blog for the latest updates...</em></strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://www.thesun.co.uk/fabulous/16189081/meghan-markle-prince-harry-news-latest-new-york-crown/#liveblog-entry-16241179\">15 MINUTES AGO</a></p>\r\n\r\n	<h3>Kate Middleton meets Emma Raducanu</h3>\r\n\r\n	<p>Kate Middleton gushed that Emma Raducanu&rsquo;s storming US Open win was &ldquo;seriously impressive&rdquo; after hitting the tennis court with the ace.</p>\r\n\r\n	<p>Raducanu, 18, was the first British woman to win a Grand Slam Single&rsquo;s title since 1977 &ndash; and now faced royalty on the court.</p>\r\n\r\n	<p>The Duchess of Cambridge gave Raducanu a smashing homecoming party at the National Tennis Centre in Roehampton this morning.</p>\r\n\r\n	<p>Kate, the Patron of the Lawn Tennis Association, played Emma in a friendly doubles match.</p>\r\n	<a href=\"https://www.thesun.co.uk/sport/16229726/kate-middleton-emma-raducanu-tennis-match/#\"><img alt=\"\" src=\"https://www.thesun.co.uk/wp-content/uploads/2021/09/NINTCHDBPICT000682058426.jpg?strip=all\" /></a></li>\r\n	<li>\r\n	<p><a href=\"https://www.thesun.co.uk/fabulous/16189081/meghan-markle-prince-harry-news-latest-new-york-crown/#liveblog-entry-16241000\">29 MINUTES AGO</a></p>\r\n\r\n	<h3>Meghan Markle had the most expensive royal birth</h3>\r\n\r\n	<p>Princess Beatrice and her husband Edoardo Mapelli Mozzi have just welcomed a baby girl at Chelsea and Westminster Hospital&rsquo;s private wing.</p>\r\n\r\n	<p>The swanky suite comes with &pound;75 bottles of champagne and smoked salmon snacks &ndash; but it was not the priciest royal birthing suite.</p>\r\n\r\n	<p>Pregnancy and childbirth experts at<a href=\"https://74n5c4m7.r.eu-west-1.awstrack.me/L0/https:%2F%2Fcfah.org%2F/1/0102017c118af9f9-9da5db3e-7034-4d31-a100-b61e2dff1953-000000/GkqyJpiC_jp8Tz3yCnfbakPzY_w=237\">&nbsp;CFAH</a>&nbsp;looked into the most expensive royal birth packages in order to rank them in order of expense &ndash; with the Duchess of Sussex&rsquo;s two births taking the top two spots&hellip;</p>\r\n\r\n	<p><strong>Meghan Markle</strong><br />\r\n	Hospital: Santa Barbara Cottage Hospital, California<br />\r\n	Cost: &pound;10,000- &pound;20,000</p>\r\n\r\n	<p><strong>Meghan &amp; Sarah Ferguson</strong><br />\r\n	Hospital: The Portland Hospital, London<br />\r\n	Cost: &pound;10,000+</p>\r\n\r\n	<p><strong>Princess Beatrice</strong><br />\r\n	Hospital: Chelsea and Westminster Hospital, London<br />\r\n	Cost: &pound;6,475 &ndash; &pound;10,650</p>\r\n\r\n	<p><strong>Kate Middleton</strong><br />\r\n	Hospital: St Mary&rsquo;s Hospital &ndash; Lindo Wing, London<br />\r\n	Cost: &pound;5,900 &ndash; &pound;7,500</p>\r\n\r\n	<p><strong>Sophie, Countess of Wessex</strong><br />\r\n	Hospital: NHS Frimley Park Hospital<br />\r\n	Cost: Free!</p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thesun.co.uk/fabulous/16189081/meghan-markle-prince-harry-news-latest-new-york-crown/#liveblog-entry-16240993\">45 MINUTES AGO</a></p>\r\n\r\n	<p>WHO ARE PRINCE HARRY&rsquo;S EX GIRLFRIENDS?</p>\r\n\r\n	<p>Camilla Burlow was linked to Prince Harry in July 2014 when it was reported they had locked lips.</p>\r\n\r\n	<p>His other exes include a Burberry model, an X Factor singer and a Strictly Come Dancing starlet.</p>\r\n\r\n	<p>Here&rsquo;s who the rumour mill has linked him to&hellip;</p>\r\n\r\n	<p>Ellie Goulding<br />\r\n	Cressida Bonas<br />\r\n	Florence Brudenell-Bruce<br />\r\n	Caroline Flack<br />\r\n	Mollie King<br />\r\n	Chelsy Davy</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://www.thesun.co.uk/fabulous/16189081/meghan-markle-prince-harry-news-latest-new-york-crown/#liveblog-entry-16240929\">55 MINUTES AGO</a></p>\r\n\r\n	<p>HARRY AND MEGHAN&rsquo;S CARBON FOOTPRINT</p>\r\n\r\n	<p>In 2019 Harry told an eco talk&nbsp;<a href=\"https://www.thesun.co.uk/news/9851388/prince-harry-launch-eco-tourism-travel-amsterdam/\">he only flies on private jets to protect his family</a>&nbsp;but admitted &ldquo;no one is perfect&rdquo;.</p>\r\n\r\n	<p>It was estimated last year that&nbsp;<a href=\"https://www.thesun.co.uk/news/12136009/harry-meghan-carbon-footprint-26-times-average-brit/\">the couple&rsquo;s carbon footprint could be 26 times higher than the average Brit</a>.</p>\r\n\r\n	<p>They were said to generate 215 tonnes of carbon dioxide a year from flights against the UK average of 8.3 tons for one person.</p>\r\n\r\n	<p>They also racked up at least 53 international flights in the 12 months to the end of January 2020, according to a study by former MP Norman Baker.</p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thesun.co.uk/fabulous/16189081/meghan-markle-prince-harry-news-latest-new-york-crown/#liveblog-entry-16240928\">TODAY, 15:40</a></p>\r\n\r\n	<p>RICHARD MADELEY SLAMS PRINCE HARRY AND MEGHAN MARKLE FOR &lsquo;LECTURING&rsquo; BRITS ON THE CLIMATE WHILE FLYING ON PRIVATE JETS</p>\r\n\r\n	<p>The&nbsp;<a href=\"http://www.thesun.co.uk/topic/good-morning-britain\">Good Morning Britain</a>&nbsp;host said&nbsp;<a href=\"http://www.thesun.co.uk/who/prince-harry\">the Duke</a>&nbsp;and&nbsp;<a href=\"http://www.thesun.co.uk/who/meghan-markle\">Duchess of Sussex</a>&nbsp;make a &ldquo;big deal&rdquo; about not flying but continue to fly around on private jets.</p>\r\n\r\n	<p>Richard, who is jetting off to France next week, said the argument for climate change is &ldquo;shaky&rdquo; as a result and people should practice what they preach.</p>\r\n\r\n	<p>Discussing the issue with GMB&rsquo;s Laura Tobin, he said: &ldquo;I think it&rsquo;s when people are in a position to lecture us go and do something different.</p>\r\n\r\n	<p>&ldquo;I&rsquo;m thinking about Harry and Meghan who about a year and half ago two years ago made a big deal about not flying.</p>\r\n\r\n	<p>&ldquo;And at the same time they were kind of flying down to see Elton John on his private jet, making other flights&hellip; Harry made a flight to go to a sports tournament the other day and then flew back.</p>\r\n\r\n	<p>&ldquo;I think that&rsquo;s when the argument gets shaky &ndash; when people tell us what to do and go and quietly go ahead and do their own thing anyway.&rdquo;</p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thesun.co.uk/fabulous/16189081/meghan-markle-prince-harry-news-latest-new-york-crown/#liveblog-entry-16240864\">TODAY, 15:30</a></p>\r\n\r\n	<p>ANDREW REPORTEDLY BRACING HIMSELF FOR LEGAL BATTLE THAT COULD GO ON FOR YEARS</p>\r\n\r\n	<p>The 61-year-old is reportedly&nbsp;<a href=\"https://www.thesun.co.uk/news/16164033/prince-andrew-worried-high-court/\">&ldquo;worried&rdquo; and not his usual self</a>&nbsp;after feeling confident the allegation would be dropped.</p>\r\n\r\n	<p>He is reportedly bracing himself for a legal battle that could go on for years and end up costing him millions of pounds.</p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thesun.co.uk/fabulous/16189081/meghan-markle-prince-harry-news-latest-new-york-crown/#liveblog-entry-16240696\">TODAY, 15:20</a></p>\r\n\r\n	<h3>Diana asks if Royal Family &lsquo;will kill her&rsquo; in movie trailer</h3>\r\n\r\n	<p>The movie &ndash; named after Diana&rsquo;s maiden name &ndash; takes place at the royal family&rsquo;s Sandringham Estate.</p>\r\n\r\n	<p>As she spends time with her family over the festive period, Diana realises that her marriage to Prince Charles has unravelled and starts to reevaluate her life.</p>\r\n\r\n	<p>The trailer begins with the Princess of Wales, played by Twilight star&nbsp;<a href=\"https://www.thesun.co.uk/who/kristen-stewart/\">Kristen Stewart</a>, turning up to the Estate late with everyone waiting for her.</p>\r\n\r\n	<p>She tells herself in the mirror: &ldquo;Three days. That&rsquo;s it.&rdquo;</p>\r\n\r\n	<p><a href=\"https://www.thesun.co.uk/who/prince-charles/\">Prince Charles</a>, played by actor Jack Farthing&nbsp;tells his wife: &ldquo;You have to be able to do things you hate&hellip;</p>\r\n\r\n	<p>&ldquo;There has to be two of you, the real one, and the one they take pictures of.</p>\r\n\r\n	<p>&ldquo;Diana, for the good of the country.&rdquo;</p>\r\n\r\n	<p>In frustration, the Princess of Wales replies: &ldquo;For the good of the country?&rdquo;</p>\r\n\r\n	<p>As the trailer continues Diana starts to realise what she wants in life.</p>\r\n\r\n	<p>The last scene shows her looking out into a field and as she turns around, she asks: &ldquo;Will they kill me do you think</p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thesun.co.uk/fabulous/16189081/meghan-markle-prince-harry-news-latest-new-york-crown/#liveblog-entry-16240686\">TODAY, 15:10</a></p>\r\n\r\n	<h3>Andrew still hasn&rsquo;t seen new granddaughter</h3>\r\n\r\n	<p>Prince Andrew went for a drive yesterday but has not been to see his new granddaughter.</p>\r\n\r\n	<p>He is in his 17th day&nbsp;<a href=\"https://www.thesun.co.uk/news/16141321/prince-andrew-hide-balmoral-lawyers/\">hiding at Balmoral</a>&nbsp;from US lawyers trying to&nbsp;<a href=\"https://www.thesun.co.uk/news/16147396/andrew-sex-abuse-lawsuit-high-court-papers/\">serve sex abuse lawsuit</a>&nbsp;papers on him.</p>\r\n\r\n	<p><a href=\"https://www.thesun.co.uk/who/prince-andrew/\">The Duke of York</a>, 61, looked pensive as he drove his&nbsp;<a href=\"https://www.thesun.co.uk/topic/land-rover/\">Range Rover</a>&nbsp;alone through the&nbsp;<a href=\"https://www.thesun.co.uk/who/the-queen/\">Queen</a>&rsquo;s Scottish estate.</p>\r\n\r\n	<p>He has not left the 50,000-acre site to celebrate with daughter&nbsp;<a href=\"https://www.thesun.co.uk/who/princess-beatrice/\">Beatrice</a>, 33 &mdash; who gave birth to her first child with husband Edo Mapelli Mozzi on Saturday.</p>\r\n\r\n	<p>Ex-wife&nbsp;<a href=\"https://www.thesun.co.uk/who/sarah-ferguson/\">Sarah Ferguson</a>&nbsp;rushed to&nbsp;<a href=\"https://www.thesun.co.uk/where/london/\">London</a>&nbsp;after Beatrice went into labour.</p>\r\n\r\n	<p><a href=\"https://www.thesun.co.uk/who/virginia-roberts/\">Virginia Roberts Giuffre</a>&nbsp;claims late financier&nbsp;<a href=\"https://www.thesun.co.uk/who/jeffrey-epstein/\">Jeffrey Epstein</a>&nbsp;trafficked her to Britain to have sex with Prince Andrew when she was 17.</p>\r\n\r\n	<p>Andrew has always vehemently denied the claims.</p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://www.thesun.co.uk/fabulous/16189081/meghan-markle-prince-harry-news-latest-new-york-crown/#liveblog-entry-16240685\">TODAY, 15:00</a></p>\r\n\r\n	<h3>&lsquo;US travel ban is no longer an excuse&rsquo;</h3>\r\n\r\n	<p>Harry, 37, and Meghan, 40, have not ventured to the UK together since they ditched the country for a life across the pond last year.</p>\r\n\r\n	<p>But now, following the birth of their daughter Lilibet in June, royal author Adam Helliker said the brood returning to Harry&rsquo;s home country is &ldquo;imperative for family unity&rdquo;.</p>\r\n\r\n	<p>Mr Helliker told the Sun: &ldquo;I think it&rsquo;s imperative for family unity that the whole family comes over because, to put it bluntly, the queen is getting older and these won&rsquo;t arrive too often again.</p>\r\n\r\n	<p>&ldquo;I think Harry will feel particularly guilty if she doesn&rsquo;t see the great-grandchildren she&rsquo;s not seen much of &ndash; or the great-granddaughter she&rsquo;s not seen at all.</p>\r\n\r\n	<p>&ldquo;I think if they&rsquo;re going to try to patch things up &ndash; and we all hope they will work to increase what remains of the unity between them and the family &ndash; then I think it&rsquo;s paramount that they start planning a trip for maybe early December.</p>\r\n\r\n	<p>&ldquo;I doubt obviously they want to be restricted by spending any Christmases at Sandringham, but maybe a mid-December pre-Christmas trip to say hello to the family.</p>\r\n\r\n	<p>&ldquo;For Harry, those family ties &ndash; until he was encouraged by her to break them &ndash; were really important.&rdquo;</p>\r\n\r\n	<p>He said both sides will be &ldquo;striving for reconciliation&rdquo; following the fallout from their bombshell Oprah interview.</p>\r\n\r\n	<p>Read the article in full&nbsp;<a href=\"https://www.thesun.co.uk/news/royal/16197072/meghan-markle-prince-harry-must-visit-queen/\" rel=\"noreferrer noopener\" target=\"_blank\">here</a>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://www.thesun.co.uk/fabulous/16189081/meghan-markle-prince-harry-news-latest-new-york-crown/#liveblog-entry-16240678\">TODAY, 14:49</a></p>\r\n\r\n	<p>MEGHAN MARKLE &lsquo;TRYING TO BE LIKE THE OBAMAS&rsquo; WITH TIME COVER &ndash; AS EXPERTS SAY SHE&rsquo;S &lsquo;PRIMED&rsquo; FOR POLITICAL CAREER</p>\r\n\r\n	<p>The Duke and Duchess of Sussex made waves with their&nbsp;<a href=\"https://www.thesun.co.uk/news/16151759/harry-meghan-airbushed-time-cover/\">appearance on the front page of the respected US mag</a>&nbsp;that honoured the world&rsquo;s 100 most influential people.</p>\r\n\r\n	<p>And royal experts think the powerful pictures alongside the detailed profile accompanying their entry under &ldquo;Icons&rdquo; marks the start of Meghan&rsquo;s manoeuvres into politics.</p>\r\n\r\n	<p>Royal commentator Richard Fitzwilliams said of the Sussexes: &ldquo;This magazine cover has made it very very clear what&rsquo;s in the couple&rsquo;s mind &ndash; and especially Meghan&rsquo;s mind &ndash; and that&rsquo;s politics. It must be!</p>\r\n\r\n	<p>&ldquo;I think there is absolutely no doubt that if they made the cover it&rsquo;s not about what they&rsquo;ve achieved, but what they could achieve.</p>\r\n\r\n	<p>&ldquo;They&rsquo;re going to become more and more visible. I think that they&rsquo;re looking at politics.&rdquo;</p>\r\n\r\n	<p>Read more&nbsp;<a href=\"https://www.thesun.co.uk/news/royal/16156292/meghan-markle-trying-obamas-time-cover-primed-political-career/\" rel=\"noreferrer noopener\" target=\"_blank\">here.</a></p>\r\n	</li>\r\n</ul>', '1632584744_title7.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `google_id`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(10, 'Vũ Đức Toàn', 'google_111712026526042989275', 'toanvu2000dq@gmail.com', NULL, NULL, '111712026526042989275', 'admin', NULL, '2021-09-26 01:12:41', '2021-09-26 01:12:41'),
(11, 'Ngân Hàng AMV', 'google_109220679463637973374', 'nganhangamv@gmail.com', NULL, NULL, '109220679463637973374', 'user', NULL, '2021-09-26 18:54:24', '2021-09-26 18:54:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertises`
--
ALTER TABLE `advertises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertises`
--
ALTER TABLE `advertises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
