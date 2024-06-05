-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 07:52 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webbanh`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `address`, `phone`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '390dlfghjk', 'hardeepphp@yahoo.com', 'hàng gòn', '3903456789', 8, '2017-06-05 02:43:39', '2017-06-05 02:43:39'),
(395, '390dlfghjk', 'hardeepphp@yahoo.com', 'hàng gon', '3903456789', 8, '2017-06-05 06:49:46', '2017-06-05 06:49:46'),
(396, 'quoctuan', 'quoctuanwtfemail@gmail.com', 'hàng gòn', '3903456789', 8, '2017-06-05 06:51:02', '2017-06-05 06:51:02'),
(397, 'quoctuan', 'quoctuanwtfemail@gmail.com', 'hàng gòn', '3903456789', 8, '2017-06-05 06:51:12', '2017-06-05 06:51:12'),
(398, 'quoctuan', 'quoctuanwtfemail@gmail.com', 'hàng gòn', '3903456789', 8, '2017-06-05 06:51:52', '2017-06-05 06:51:52'),
(399, 'quoctuan', 'quoctuanwtfemail@gmail.com', 'hàng gòn', '39034567', 8, '2017-06-05 06:52:00', '2017-06-05 06:52:00'),
(400, 'quoctuan', 'quoctuanwtfemail@gmail.com', 'hàng gòn', '3903456', 8, '2017-06-05 06:52:11', '2017-06-05 06:52:11'),
(401, 'quoctuan', 'quoctuanwtfemail@gmail.com', 'hàng gòn', '3903456', 8, '2017-06-05 06:54:15', '2017-06-05 06:54:15'),
(402, '', 'quoctuanwtfemail@gmail.com', 'hàng gòn', '3903456', 8, '2017-06-05 06:54:35', '2017-06-05 06:54:35'),
(403, 'tuan1', 'quoctuanwtfemail@gmail.com', 'hàng gònd', '3903456', 8, '2017-06-05 06:58:57', '2017-06-05 06:58:57'),
(404, 'tuan1', 'quoctuanwtfemail@gmail.com', 'hàng gònd', '3903456', 8, '2017-06-05 06:59:45', '2017-06-05 06:59:45'),
(405, 'tuan1', 'quoctuanwtfemail@gmail.com', 'hàng gònd', '39034567', 8, '2017-06-05 06:59:51', '2017-06-05 06:59:51'),
(406, 'tuan1', 'quoctuanwtfemail@gmail.com', 'hàng gònd', '39034567', 8, '2017-06-05 07:04:49', '2017-06-05 07:04:49'),
(407, 'tuan1', 'quoctuanwtfemail@gmail.com', 'hàng gònd', '39034567', 8, '2017-06-05 07:09:17', '2017-06-05 07:09:17'),
(408, 'tuan1', 'quoctuanwtfemail@gmail.com', 'hàng gòn', '39034567', 8, '2017-06-05 09:53:24', '2017-06-05 09:53:24'),
(409, 'tuan anh', 'quoctuanwtfemail@gmail.com', 'hàng gòn', '39034567', 8, '2017-06-05 09:54:19', '2017-06-05 09:54:19'),
(410, 'tuan anh nguyễn', 'quoctuanwtfemail@gmail.com', 'hàng gòn', '39034567', 8, '2017-06-05 09:59:13', '2017-06-05 09:59:13'),
(411, 'tuan anh nguyễn', 'quoctuanwtfemail@gmail.com', 'hàng gòn', '39034567', 8, '2017-06-05 10:57:26', '2017-06-05 10:57:26'),
(412, 'tuan anh nguyễn', 'quoctuanwtfemail@gmail.com', 'hàng gòn', '39034567', 8, '2017-06-05 10:58:27', '2017-06-05 10:58:27'),
(413, 'tuan anh nguyễn', 'quoctuanwtfemail@gmail.com', 'hàng gòn lk', '39034567', 8, '2017-06-05 11:19:21', '2017-06-05 11:19:21'),
(414, 'dfghjk', 'hardeepphp@yahoo.com', 'hàng gòn', '3903456789', 9, '2017-06-09 22:28:43', '2017-06-09 22:28:43'),
(415, 'dfghjk', 'hardeepphp@yahoo.com', 'hàng gòn', '3903456789', 9, '2017-06-09 22:30:43', '2017-06-09 22:30:43'),
(416, 'dfghjk', 'hardeepphp@yahoo.com', 'hàng gòn', '3903456789', 9, '2017-06-09 22:37:33', '2017-06-09 22:37:33'),
(417, '390dlfghjk', 'tranthanhthang2008@gmail.com', 'hàng gòn', '3903456789', 9, '2017-06-09 22:44:57', '2017-06-09 22:44:57'),
(418, '390dlfghjk', 'tranthanhthang2008@gmail.com', 'hàng gòn', '3903456789', 9, '2017-06-09 22:45:30', '2017-06-09 22:45:30'),
(419, '390dlfghjk', 'tranthanhthang2008@gmail.com', 'hàng gon', '3903456789', 9, '2017-06-09 22:51:14', '2017-06-09 22:51:14'),
(420, 'Phan Quốc Tuấn', 'tranthanhthang2008@gmail.com', 'hang gon', '23456789', 9, '2017-06-10 00:37:28', '2017-06-10 00:37:28'),
(421, 'Phan Quốc Tuấn', 'tranthanhthang2008@gmail.com', 'hang gon', '23456789', 9, '2017-06-10 00:45:07', '2017-06-10 00:45:07'),
(422, 'Phan Quốc Tuấn', 'tranthanhthang2008@gmail.com', 'hang gon', '23456789', 9, '2017-06-10 00:50:37', '2017-06-10 00:50:37'),
(423, 'Phan Quốc Tuấn', 'tranthanhthang2008@gmail.com', 'hang gon', '23456789', 9, '2017-06-10 01:12:58', '2017-06-10 01:12:58'),
(424, 'Phan Quốc Tuấn', 'tranthanhthang2008@gmail.com', 'hang gon', '23456789', 9, '2017-06-10 19:28:51', '2017-06-10 19:28:51'),
(425, 'Phan Quốc Tuấn', 'tranthanhthang2008@gmail.com', 'hang gon', '23456789', 9, '2017-06-10 19:32:20', '2017-06-10 19:32:20'),
(426, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'hang gon', '23456789', 9, '2017-06-11 01:05:19', '2017-06-11 01:05:19'),
(427, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'hàng gòn', '3903456789', 9, '2017-06-12 02:55:00', '2017-06-12 02:55:00'),
(428, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'hàng f', '3903456789', 9, '2017-06-12 05:59:23', '2017-06-12 05:59:23'),
(429, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'qwe4564', '01662235151', 9, '2017-06-15 22:09:40', '2017-06-15 22:09:40'),
(430, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'qwe4564', '01662235151', 9, '2017-06-15 22:10:08', '2017-06-15 22:10:08'),
(431, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'qweqweqwe', '01662235151', 9, '2017-06-15 22:22:00', '2017-06-15 22:22:00'),
(432, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'qweqweqwe', '01662235151', 9, '2017-06-15 22:24:57', '2017-06-15 22:24:57'),
(433, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'Chí Hòa', '01662235151', 9, '2017-06-16 00:19:34', '2017-06-16 00:19:34'),
(434, 'Trần Thắng', 'quoctuanwtfemail@gmail.com', 'qweqwe', '01662235151', 10, '2017-06-18 10:35:08', '2017-06-18 10:35:08'),
(435, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'qweqwe', '01662235151', 9, '2017-06-18 10:48:59', '2017-06-18 10:48:59'),
(436, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'qweqweqwe', '01662235151', 9, '2017-06-18 20:38:41', '2017-06-18 20:38:41'),
(437, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'qweqweqwe', '01662235151', 9, '2017-06-18 20:38:53', '2017-06-18 20:38:53'),
(438, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'qweqweqwe', '01662235151', 9, '2017-06-18 20:39:14', '2017-06-18 20:39:14'),
(439, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'qweqweqwe', '01662235151', 9, '2017-06-18 20:39:52', '2017-06-18 20:39:52'),
(440, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'qweqweqwe', '01662235151', 9, '2017-06-18 20:41:41', '2017-06-18 20:41:41'),
(441, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'qweqweqwe', '01662235151', 9, '2017-06-18 20:42:12', '2017-06-18 20:42:12'),
(442, 'Trần Thắng', 'tranthanhthang2007@yahoo.com', 'qweqweqwe', '01662235151', 9, '2017-06-18 20:45:23', '2017-06-18 20:45:23'),
(443, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'ttttttttttttt', '987654', 9, '2017-06-18 21:31:27', '2017-06-18 21:31:27'),
(444, 'Trần Thắng', 'tranthanhthang2007@yahoo.com', '52 Nguyễn Triệu Luật', '01662235151', 9, '2017-06-18 21:34:31', '2017-06-18 21:34:31'),
(445, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'ffffffff', '987654', 9, '2017-06-18 21:36:04', '2017-06-18 21:36:04'),
(446, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'qweqweqwe', '01662235151', 9, '2017-06-20 01:24:58', '2017-06-20 01:24:58'),
(447, 'Trần Thắng', 'tranthanhthang2008@gmail.com', 'qweqweqwe', '01662235151', 9, '2017-06-20 06:04:41', '2017-06-20 06:04:41'),
(448, 'Trần Thắng', '', 'qweqweqwe', '01662235151', 9, '2017-06-20 06:06:25', '2017-06-20 06:06:25'),
(449, 'quangne', 'tuilaquang@gmail.com', 'erererere', '4444444', 14, '2017-06-22 02:32:16', '2017-06-22 02:32:16'),
(450, 'quangne', 'tuilaquang@gmail.com', 'ttttttttttttt', '01662235151', 14, '2017-06-22 02:55:30', '2017-06-22 02:55:30'),
(451, 'quangne', 'tuilaquang@gmail.com', 'ttttttttttttt', '01662235151', 14, '2017-06-22 02:55:30', '2017-06-22 02:55:30'),
(452, 'quangne', 'tuilaquang@gmail.com', 'asdasd', '12221212', 14, '2017-06-22 20:30:03', '2017-06-22 20:30:03'),
(453, 'Trần Thắng', 'tuilaquang@gmail.com', 'qweqwe', '01662235151', 14, '2017-06-24 12:35:43', '2017-06-24 12:35:43'),
(454, 'Trần Thắng', 'tuilaquang@gmail.com', 'qweqwe', '01662235151', 14, '2017-06-24 12:35:46', '2017-06-24 12:35:46'),
(455, 'Trần Thắng', 'tranthanhthang2007@yahoo.com', 'qweqe', '01662235151', 14, '2017-06-24 12:46:34', '2017-06-24 12:46:34'),
(456, 'quangne', 'tuilaquang@gmail.com', 'qwemmm', '454544', 14, '2017-06-24 12:48:50', '2017-06-24 12:48:50'),
(457, 'quangne', 'tuilaquang@gmail.com', 'qweqwe', '2222222', 14, '2017-06-24 13:14:02', '2017-06-24 13:14:02'),
(458, 'Trần Thắng', 'tuilaquang@gmail.com', 'qweqwe', '1212313', 14, '2017-06-25 06:47:26', '2017-06-25 06:47:26'),
(459, 'Trần Thắng', 'tranthanhthang2009@yahoo.com', 'qweqwe', '0123123123', 19, '2017-06-25 07:04:12', '2017-06-25 07:04:12'),
(460, 'Trần Thắng', 'tranthanhthang2009@yahoo.com', 'qweqwe', '01662235151', 19, '2017-06-25 07:05:07', '2017-06-25 07:05:07'),
(461, 'Trần Thắng', 'tuilaquang@gmail.com', 'qweqwe', '01662235151', 14, '2017-06-27 11:27:38', '2017-06-27 11:27:38'),
(462, 'Trần Thắng', 'tuilaquang@gmail.com', 'qweqwe', '01662235151', 14, '2017-06-27 11:32:04', '2017-06-27 11:32:04'),
(463, 'quangne', 'tuilaquang@gmail.com', 'qwewqewqe', '01623457878', 14, '2017-06-27 18:29:51', '2017-06-27 18:29:51'),
(464, 'Trần Thắng', 'tranthanhthang2007@yahoo.com', '52 Nguyễn Triệu Luật', '01662235151', 14, '2017-06-27 19:50:19', '2017-06-27 19:50:19'),
(465, 'Phan TUAN', 'quoctuanwtfemail@gmail.com', 'hagn gon', '01674670552', 25, '2017-06-27 19:53:22', '2017-06-27 19:53:22'),
(466, 'Phan thanh', 'quoctuanwtfemail@gmail.com', 'hagn gon', '01674670552', 25, '2017-06-27 19:54:59', '2017-06-27 19:54:59'),
(467, 'Phan tuan', 'quoctuanwtfemail@gmail.com', 'hagn gon', '01674670552', 25, '2017-06-27 20:23:42', '2017-06-27 20:23:42'),
(468, 'Trần Thắng', 'tranthanhthang2007@yahoo.com', '52 Nguyễn Triệu Luật', '01662235151', 14, '2017-06-28 23:00:13', '2017-06-28 23:00:13'),
(469, 'Trần Thắng', 'tuilaquang@gmail.com', 'qweaasd', '01662235151', 14, '2017-06-28 23:02:10', '2017-06-28 23:02:10'),
(470, 'Trần Thắng', 'tuilaquang@gmail.com', 'qweqwe', '01662235151', 14, '2017-06-28 23:04:08', '2017-06-28 23:04:08'),
(471, 'quangne', 'tuilaquang@gmail.com', 'qweqwe', '23132132132', 14, '2017-06-28 23:07:12', '2017-06-28 23:07:12'),
(472, 'Trần Thắng', 'tuilaquang@gmail.com', 'qwe12312', '123456', 14, '2017-06-28 23:18:13', '2017-06-28 23:18:13'),
(473, 'quangne', 'tuilaquang@gmail.com', 'qweqwe', '016235121', 14, '2017-06-29 21:57:03', '2017-06-29 21:57:03'),
(474, 'Trần Hồng Nhung', 'hongnhung25102002@gmail.com', 'Thái bình', '0254786312', 32, '2024-05-31 00:56:27', '2024-05-31 00:56:27'),
(475, 'Trần Hồng Nhung', 'hongnhung25102002@gmail.com', 'Thái bình', '0254786312', 32, '2024-05-31 00:56:30', '2024-05-31 00:56:30'),
(476, 'Trần Hồng Nhung', 'hongnhung25102002@gmail.com', 'Ha Noi', '0258963147', 32, '2024-06-02 08:37:59', '2024-06-02 08:37:59'),
(477, 'Trần Hồng Nhung', 'hongnhung25102002@gmail.com', 'Ha Noi', '0258963147', 32, '2024-06-03 10:06:19', '2024-06-03 10:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `intro` text NOT NULL,
  `content` text NOT NULL,
  `images` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `id_user`, `title`, `intro`, `content`, `images`, `status`, `created_at`, `update_at`) VALUES
(4, 9, 'Các cách lựa chọn bánh sinh nhật', 'Mỗi một năm có một ngày đặc biệt ,đó là ngày sinh nhật, và trong bữa tiệc đều không thể thiếu được đó là bánh sinh nhật. Cách chọn bánh như thế nào phù hợp để làm..', '<h1><strong>Mỗi một  năm có một ngày đặc biệt ,đó là ngày sinh nhật, và trong bữa tiệc đều không thể thiếu được đó là bánh sinh nhật. Cách chọn bánh như thế nào phù hợp để làm quà tặng hay chọn bánh cho ông bà, bố mẹ, người thân, bạn bè .</strong></h1>\r\n\r\n<div class=\"noidung\" style=\"margin: 0px; padding: 10px 0px; box-sizing: border-box; text-align: justify; color: rgb(0, 0, 0); font-family: Arial; font-size: 14px;\">\r\n<p> </p>\r\n\r\n<p>Dưới đây là một số cách chọn bánh cho các bạn tham khảo:</p>\r\n\r\n<p> </p>\r\n\r\n<h3>1.Chọn <a href=\"http://thegioibanhkem.com.vn/chi-tiet-bv/banh-sinh-nhat-dep.html\" style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-decoration-line: none; color: rgb(55, 139, 174); border: 0px none; outline: none 0px; background: none 0px 0px repeat scroll transparent;\">bánh sinh nhật</a> cho ông bà, bố mẹ, những người lớn tuổi</h3>\r\n\r\n<p> </p>\r\n\r\n<p><img alt=\"banh-sinh-nhat-cho-ngươi-lon-tuoi\" src=\"http://thegioibanhkem.com.vn/profiles/thegioibanhkemcomvn/uploads/attach/1446524754_banhsinhnhatchonguoilontuoi.jpg\" style=\"background:none 0px 0px repeat scroll transparent; border:0px none; box-sizing:border-box; height:400px; margin:0px; outline:none 0px; padding:0px; vertical-align:middle; width:400px\" title=\"bánh sinh nhật dành cho ông bà\" /></p>\r\n\r\n<p> </p>\r\n\r\n<p>Đây là dịp để bạn thể hiện tình cảm và lòng biết ơn của mình với bậc sinh thành. Những người lớn tuổi thường có xu hướng lựa chọn những chiếc bánh có màu sắc trang nhã,tông màu trầm sẽ là lựa chọn khéo léo, hương vị thường không quá ngọt, hoạ tiết là hình những con giáp phù hợp với tuổi của người lớn.Những người trong gia đình sẽ cảm nhận được tình cảm mà bạn gửi gắm.</p>\r\n\r\n<p> </p>\r\n\r\n<h3>2. Bánh sinh nhật dành cho bé yêu</h3>\r\n\r\n<p> </p>\r\n\r\n<p><img alt=\"banh-sinh-nhat-cho-cac-be\" src=\"http://thegioibanhkem.com.vn/profiles/thegioibanhkemcomvn/uploads/attach/1446524936_banhsinhnhatdanhchocacbe.png\" style=\"background:none 0px 0px repeat scroll transparent; border:0px none; box-sizing:border-box; height:261px; margin:0px; outline:none 0px; padding:0px; vertical-align:middle; width:400px\" title=\"bánh sinh nhật dành cho các bé\" /></p>\r\n\r\n<p> </p>\r\n\r\n<p>Sinh nhật của bé yêu thì không thể không có những chiếc bánh sinh nhật ngộ nghĩnh đáng , nó làm cho bé thích thú, là món ăn dinh dưỡng dành cho bé và cả gia đình. Nếu là bé gái thì bạn nên chọn bánh có màu sắc tươi tắn như hồng hay vàng ,cam , hoạ tiết trang trí hình con vật, số tuổi của bé, hay là hình bup bê . Còn bé trai thì đặc biệt hơn thích những hình ôtô, siêu nhân, bánh số tuổi của bé  chọn những gam màu phù hợp như xám , xanh da trời, màu đỏ…</p>\r\n\r\n<p> </p>\r\n\r\n<h3>3. Bánh sinh nhật dành cho người mình yêu</h3>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p><img alt=\"banh-sinh-nhat-danh-cho-nguoi-yeu\" src=\"http://thegioibanhkem.com.vn/profiles/thegioibanhkemcomvn/uploads/attach/1446525024_banhsinhnhatdanhchonguoiyeu.jpg\" style=\"background:none 0px 0px repeat scroll transparent; border:0px none; box-sizing:border-box; height:310px; margin:0px; outline:none 0px; padding:0px; vertical-align:middle; width:400px\" title=\"bánh sinh nhật dành cho người mình yêu\" /></p>\r\n\r\n<p> </p>\r\n\r\n<p>Đây là điều đặc biệt mà bạn dành cho nửa kia của mình có màu sắc rực rỡ như hồng đỏ, ngoài ra thêm hoạ tiết có hình trái tim, những bông hoa và thêm những  lời yêu thương sẽ là lựa chọn tốt để thể hiện tình yêu của bạn dành cho người ấy . Một chiếc bánh sinh nhật sẽ làm cho bữa tiệc ngọt ngào, tràn đầy tình yêu, và ấm cúng hơn.</p>\r\n\r\n<p> </p>\r\n\r\n<h3>4. Bánh sinh nhật dành cho bạn bè</h3>\r\n\r\n<p> </p>\r\n\r\n<p><img alt=\"banh-sinh-nhat-danh-cho-ban\" src=\"http://thegioibanhkem.com.vn/profiles/thegioibanhkemcomvn/uploads/attach/1446525239_banhsinhnhatdanhchoban.jpg\" style=\"background:none 0px 0px repeat scroll transparent; border:0px none; box-sizing:border-box; height:355px; margin:0px; outline:none 0px; padding:0px; vertical-align:middle; width:400px\" title=\"bánh sinh nhật dành cho bạn bè\" /></p>\r\n\r\n<p> </p>\r\n\r\n<p>Một trong những trào lưu được các bạn trẻ ưa chuộng hiện nay đó là bánh sinh nhật in hình ảnh, in hình ảnh chính mình trong bữa tiệc sinh nhật sẽ là điều đặc biệt trong mắt của bạn bè, khi nhìn vào bánh có thể biết chủ nhân của bữa tiệc. Những loại bánh sinh nhật in ảnh hiện giờ được nhiều cơ  sở bánh nhận làm, những loại mực in và giấy in đảm bảo an toàn thực phẩm, nên bạn không phải băn khoăn.</p>\r\n\r\n<p> </p>\r\n\r\n<p>Bánh sinh nhật hay <a href=\"http://thegioibanhkem.com.vn/chi-tiet-bv/banh-kem-sinh-nhat.html\" style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-decoration-line: none; color: rgb(55, 139, 174); border: 0px none; outline: none 0px; background: none 0px 0px repeat scroll transparent;\">bánh kem</a> đẹp chính là thể hiện được hết tấm lòng của người tặng dành cho người nhận nó, chiếc bánh chỉ thực sự có ý nghĩa khi nó phù hợp với người được tặng và không mang lại cho người nhận cảm giác lệch lạc, khó chịu.</p>\r\n</div>\r\n', '12.jpg', 1, '2017-06-28 04:37:59', '0000-00-00 00:00:00'),
(5, 9, 'Những chiếc bánh đắt nhất Thế Giới', 'Thật không thể tin với một số chiếc bánh có giá trị lên tới khủng thậm chí giá trị của nó có thể đủ cho một người sống dư dả tới hết đời người\r\n-       Chiếc bánh quy đắt nhất Thế Giới', '\n<div class=\"noidung\" style=\"margin: 0px; padding: 10px 0px; box-sizing: border-box; text-align: justify; color: rgb(0, 0, 0); font-family: Arial; font-size: 14px;\">\n<p>Thật không thể tin với một số chiếc bánh có giá trị lên tới khủng thậm chí giá trị của nó có thể đủ cho một người sống dư dả tới hết đời người</p>\n\n<p>-       Chiếc bánh quy đắt nhất Thế Giới</p>\n\n<p style=\"text-align:center\"><img alt=\"banh-quy-tu-tau-titanic\" src=\"http://thegioibanhkem.com.vn/profiles/thegioibanhkemcomvn/uploads/attach/1446105605_banhquy.jpg\" style=\"background:none 0px 0px repeat scroll transparent; border:0px; box-sizing:border-box; height:250px; margin:0px; outline:none 0px; padding:0px; vertical-align:middle; width:440px\" title=\"banhquy.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>Bánh quy sót lại từ tàu titanic</em></p>\n\n<p>Vào năm 1912 sau khi thảm kịch chìm tàu Titanic diễn ra cướp đi 1.500 người một chiếc bánh quy vẫn tồn tại bởi một vị cứu hộ đã cất giữ chiếc bánh trong một chiếc phong bì và ngoài có viết dòng chữ (bánh quy Pilot từ tàu cứu hộ Titanic 4/1912) tính tới thời điểm hiện tại đây là chiếc bánh duy nhất còn sót lại trên toàn Thế Giới</p>\n\n<p>Vào ngày 24/10 nhà đấu giá henry Aldridge & Son đã tổ chức buổi đấu giá và bất ngờ chiếc bánh đã được một nhà siêu tập Hy Lap mua với giá 22,968 USD</p>\n\n<p>Các nhà nghiên cứu đã giải thích cho việc chiếc bánh quy tồn tại hơn 100 năm qua mà không bị mốc hay hỏng như những loại bánh ngọt khác rằng nó giống như chiếc bánh bao gồm nhiều loại gia vị và đã được hóa thạch</p>\n\n<p>-       Chiếc <a href=\"http://thegioibanhkem.com.vn/chi-tiet-bv/banh-sinh-nhat-dep.html\" style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-decoration-line: none; color: rgb(55, 139, 174); border: 0px none; outline: none 0px; background: none 0px 0px repeat scroll transparent;\">bánh sinh nhật</a> đắt nhất Thế Giới</p>\n\n<p style=\"text-align:center\"><img alt=\"chiec-banh-sinh-nhat-dat-nhat-the-gioi\" src=\"http://thegioibanhkem.com.vn/profiles/thegioibanhkemcomvn/uploads/attach/1446105635_banhsinhnhat.jpg\" style=\"background:none 0px 0px repeat scroll transparent; border:0px; box-sizing:border-box; height:595px; margin:0px; outline:none 0px; padding:0px; vertical-align:middle; width:500px\" title=\"banhsinhnhat.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>Chiếc bánh sinh nhật trị giá nhất Thế Giới</em></p>\n\n<p>Một gia đình giầu có ở Ả Rập đã mua chiếc bánh trị giá 75 triệu USD để tặng cho con gái nhân dịp sinh nhật, chiếc bánh với chiều dài gần 2m được trang chí bởi những viên kim cương sáng bóng</p>\n\n<p>-       Chiếc bánh tầu biển có giá 35 USD</p>\n\n<p style=\"text-align:center\"><img alt=\"chiec-banh-tau-cuop-bien\" src=\"http://thegioibanhkem.com.vn/profiles/thegioibanhkemcomvn/uploads/attach/1446105663_cuopbien.jpg\" style=\"background:none 0px 0px repeat scroll transparent; border:0px; box-sizing:border-box; height:371px; margin:0px; outline:none 0px; padding:0px; vertical-align:middle; width:660px\" title=\"cuopbien.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>Chiếc bánh độc đáo sáng tạo từ chiếc tầu cưới biển</em></p>\n\n<p>Vào năm 2012 một kiệt tác của vua đầu bếp Chef Dimuthu đã cho ra một sản phẩm độc đáo chiếc bánh được thiết kế giống như một chiếc tầu của những tên cướp biển mà sản phẩm chiếm được là những viên kim cương chiếc bánh này đã giữ được kỷ lúc trong một thời gian dài</p>\n\n<p>-       Chiếc bánh Faberge</p>\n\n<p style=\"text-align:center\"><img alt=\"chiec-banh-hinh-qua-trung\" src=\"http://thegioibanhkem.com.vn/profiles/thegioibanhkemcomvn/uploads/attach/1446105684_banh.jpg\" style=\"background:none 0px 0px repeat scroll transparent; border:0px; box-sizing:border-box; height:719px; margin:0px; outline:none 0px; padding:0px; vertical-align:middle; width:500px\" title=\"banh.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>Chiếc bánh hình quả trứng độc đáo</em></p>\n\n<p>Một sáng kiến của Sa hoàng Alexander III tặng cho vợ nhân dịp kỉ niệm ngày cưới, ý tưởng vô cùng sáng tạo được ông lấy từ quả trứng bên trong nhân bánh bao gồm nhiều chất liệu cao cấp <a href=\"http://thegioibanhkem.com.vn/chi-tiet-bv/banh-kem-sinh-nhat.html\" style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-decoration-line: none; color: rgb(55, 139, 174); border: 0px none; outline: none 0px; background: none 0px 0px repeat scroll transparent;\">bánh kem</a>, bánh joconde…và  còn có một viên kim cương trị giá 2carat</p>\n</div>\n', '9674showing.jpg', 1, '2017-06-28 04:29:03', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `date_order` datetime DEFAULT NULL,
  `total` float DEFAULT NULL,
  `payments` varchar(200) DEFAULT NULL,
  `id_promo` int(10) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `payment_status` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `customer_id`, `date_order`, `total`, `payments`, `id_promo`, `note`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(70, 476, '2024-06-02 15:37:59', 308000, 'COD', NULL, '', 1, 2, '2024-06-02 17:42:40', '2024-06-02 08:37:59'),
(71, 477, '2024-06-03 17:06:19', 616000, 'COD', NULL, '', 1, 1, '2024-06-03 10:06:19', '2024-06-03 10:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(102, 70, 67, 1, 280000, '2024-06-02 08:37:59', '2024-06-02 08:37:59'),
(103, 71, 67, 2, 280000, '2024-06-03 10:06:19', '2024-06-03 10:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Chưa giao hàng', NULL, NULL),
(2, 'Đang giao hàng', NULL, NULL),
(3, 'Đã giao hàng', NULL, NULL),
(4, 'Đã hủy đơn hàng', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hongnhung25102002@gmail.com', 'ea121ee8990900116cbcb460c4d9d0b252b3c54f43c89e1f68a75c5356616453', '2024-05-31 09:36:15'),
('yang240202@gmail.com', 'b04f6aac1552f06cbdd04fa0f99201baf09d2e2b3b755086179a747ab7081e75', '2024-06-02 10:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `payment_status`
--

CREATE TABLE `payment_status` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_status`
--

INSERT INTO `payment_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Chưa thanh toán', NULL, NULL),
(2, 'Đã thanh toán', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `power_type`
--

CREATE TABLE `power_type` (
  `id_power` tinyint(2) UNSIGNED NOT NULL,
  `name_power` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `power_type`
--

INSERT INTO `power_type` (`id_power`, `name_power`, `created_at`, `updated_at`) VALUES
(1, 'member', NULL, NULL),
(2, 'admin', NULL, NULL),
(3, 'super admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `id_type` int(10) UNSIGNED DEFAULT NULL,
  `intro` text DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image` text DEFAULT NULL,
  `unit` text DEFAULT NULL,
  `new` tinyint(1) DEFAULT 0,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `id_type`, `intro`, `price`, `image`, `unit`, `new`, `status`, `created_at`, `updated_at`) VALUES
(59, 'Bingsu lớn  Bonus ', 2, '<p>Bingsu lớn + Bonus đặc biệt cho 2 - 3 người - Excape Dessert</p>\r\n', 77000, 'bingsu.jpg', 'Hộp', 1, 1, '2024-04-25 03:10:57', '2024-04-25 03:10:57'),
(60, 'bánh crepe sầu riêng tuyệt ngon', 2, '<p style=\"text-align:justify\">Combo 6 bánh crepe sầu riêng tuyệt ngon tại Bánh Kem Thiên Thần với hương vị hấp dẫn tuyệt vời khó cưỡng sẽ là lựa chọn hoàn hảo để sẻ chia cùng người thân, bạn bè</p>\r\n', 49000, 'crepe-tao.jpg', 'Cái', 1, 1, '2024-04-25 03:10:57', '2024-04-26 03:10:57'),
(61, 'bánh su kem Singapore', 2, '<p style=\"text-align: justify;\">Set 12 Bánh su kem Singapore 12 vị - Giao hàng tận nơi mang đến trải nghiệm ẩm thực đa dạng với bánh su kem được sản xuất theo công nghệ ẩm thực Singapore với lớp vỏ bánh dai mịn hòa quyện cùng vị kem béo ngậy, mát lạnh</p>\r\n', 55000, 'cm_117452.jpg', 'Cái', 0, 1, '2024-04-25 03:10:57', '2024-04-27 03:10:57'),
(62, 'Bông lan cuộn trứng muối', 1, '<p style=\"text-align: justify;\">Thưởng thức từng lớp bánh cuộn tròn mềm mại, vàng óng, thơm ngon tuyệt hảo với voucher áp dụng cho gói dịch vụ bông lan cuộn trứng muối siêu ngon</p>\r\n', 99000, 'bonglan.jpg', 'Cái', 1, 1, '2024-04-25 03:10:57', '2024-04-28 03:10:57'),
(63, ' bánh Donut tuyệt ngon', 2, '<p style=\"text-align: justify;\">bánh Donut tuyệt ngon ,giá không thể hấp dẫn hơn</p>\r\n', 45000, 'donuttn.jpg', 'Cái', 1, 1, '2024-04-25 03:10:57', '2024-04-28 03:10:57'),
(64, 'Bánh LeTao Cheese Cake', 1, '<p style=\"text-align: justify;\">Thưởng thức hương vị những chiếc bánh mềm mại hoà quyện hương thơm dịu dàng của phô mai cùng vị ngọt ngào đến quyến rũ của em, với combo Bánh LeTao Cheese Cake Nhật Bản</p>\r\n', 230000, 'letaochec.jpg', 'Cái', 1, 1, '2024-04-25 03:10:57', '2024-04-29 03:10:57'),
(65, 'Bông lan phô mai ', 1, '<p style=\"text-align: justify;\">Thưởng thức hương vị tuyệt hảo, hòa quyện giữa vị mặn mặn, bùi bùi của trứng muối, chà bông, phô mai cùng bánh bông lan trứng muối chà bông phô mai sốt bơ trứng 2 lớp</p>\r\n', 99000, 'bonglanphomai.jpg', 'Cái', 0, 1, '2024-04-25 03:10:57', '2024-04-29 03:10:57'),
(66, 'Bánh kem bắp ', 2, '<p>Bánh kem bắp </p>\r\n', 89000, 'kembap.jpg', 'Cái', 1, 1, '2024-04-25 03:10:57', '2024-04-30 03:10:57'),
(67, 'Bánh kem Dâu', 3, 'Bánh kem dâu vị ngọt ngon tuyệt , ngon mê li', 280000, 'valinetine.jpg', 'Cái', 1, 1, '2024-04-25 03:10:57', '2024-05-05 03:10:57'),
(68, 'Bánh mouse sầu riêng', 3, '<p style=\"text-align: justify;\">Thưởng thức hương vị mềm mịn, ngọt mát của lớp mousse và vị sầu riêng béo ngậy, kích thích vị giác với chiếc bánh mouse sầu riêng</p>\r\n', 99000, 'mouse.jpg', 'Cái', 0, 1, '2024-04-25 03:10:57', '2024-05-15 03:10:57'),
(69, 'Bánh kem Cappuccino ', 3, '<p style=\"text-align:justify\">Thưởng thức bánh kem thơm ngon, hấp dẫn, hương vị đặc sắc, cho các buổi tiệc thêm ngọt ngào với bánh kem Cappuccino tại Hương Việt Bakery</p>\r\n', 120000, 'cuppi.jpg', 'Cái', 1, 1, '2024-04-25 03:10:57', '2024-05-15 03:10:57'),
(70, '', 4, '<p>Bánh kem in hình lên mặt bánh... Size 20cm, 25 cm</p>\r\n\r\n<p>In hình giấy hoặc phun đường (đặt sớm nhiều ngày)</p>\r\n', 660000, 'banhinhinh033-6828.jpg', 'Cái', 1, 0, '2024-04-25 03:10:57', '2024-05-25 03:10:57');

-- --------------------------------------------------------

--
-- Table structure for table `products_properties`
--

CREATE TABLE `products_properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `size_id` int(10) UNSIGNED NOT NULL,
  `p_price` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_properties`
--

INSERT INTO `products_properties` (`id`, `pro_id`, `size_id`, `p_price`, `updated_at`, `created_at`) VALUES
(1, 1, 1, 230000, '2024-05-21 07:26:34', '2017-06-21 00:26:17'),
(2, 1, 2, 23000, '2017-06-20 22:29:47', '2017-06-21 23:16:29'),
(3, 2, 1, 22000, '2017-06-18 08:28:34', '2017-06-20 23:14:25'),
(4, 2, 2, 21000, '2017-06-18 08:28:41', '2017-06-21 17:00:00'),
(5, 9, 1, 200000, '2017-06-18 08:28:45', '2017-06-15 12:04:35'),
(6, 10, 1, 350000, '2017-06-18 08:28:56', '2017-06-15 12:10:14'),
(9, 11, 1, 350000, '2017-06-18 08:29:21', '2017-06-15 12:12:24'),
(10, 11, 2, 200000, '2017-06-18 08:29:24', '2017-06-15 12:12:24'),
(11, 11, 3, 150000, '2017-06-18 08:29:28', '2017-06-15 12:12:24'),
(12, 17, 1, 350000, '2017-06-18 08:29:32', '2017-06-15 12:48:05'),
(13, 17, 2, 200000, '2017-06-18 08:29:36', '2017-06-15 12:48:05'),
(15, 18, 1, 350000, '2017-06-18 08:29:39', '2017-06-15 12:52:14'),
(16, 18, 2, 200000, '2017-06-18 08:29:43', '2017-06-15 12:52:14'),
(17, 19, 1, 350000, '2017-06-18 08:29:45', '2017-06-15 20:43:45'),
(18, 20, 1, 350000, '2017-06-18 08:29:49', '2017-06-15 20:44:13'),
(19, 20, 2, 200000, '2017-06-18 08:29:53', '2017-06-15 20:44:13'),
(20, 29, 4, 250000, '2017-06-18 02:12:25', '2017-06-18 02:12:25'),
(21, 29, 5, 200000, '2017-06-18 09:26:58', '2017-06-18 02:12:25'),
(22, 29, 6, 150000, '2017-06-18 02:12:25', '2017-06-18 02:12:25'),
(23, 20, 7, 350000, '2017-06-20 20:09:55', '2017-06-18 02:15:32'),
(24, 70, 39, 660000, '2017-06-26 09:26:48', '2017-06-26 09:26:48'),
(25, 70, 40, 580000, '2017-06-26 09:26:48', '2017-06-26 09:26:48');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` int(10) UNSIGNED NOT NULL,
  `size` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `size`, `created_at`, `updated_at`) VALUES
(1, '25cm', NULL, NULL),
(2, '22cm', NULL, NULL),
(3, '20cm', NULL, NULL),
(4, '25 cm', '2017-06-18 02:12:25', '2017-06-18 02:12:25'),
(5, '23 cm', '2017-06-18 02:12:25', '2017-06-18 02:12:25'),
(6, '18 cm', '2017-06-18 02:12:25', '2017-06-18 02:12:25'),
(7, '25 cm', '2017-06-18 02:15:32', '2017-06-18 02:15:32'),
(8, '20 cm', '2017-06-18 02:15:32', '2017-06-18 02:15:32'),
(9, '18 cm', '2017-06-18 02:15:32', '2017-06-18 02:15:32'),
(37, '25 cm', '2017-06-20 13:11:28', '2017-06-20 13:11:28'),
(38, '25 cm', '2017-06-20 13:15:24', '2017-06-20 13:15:24'),
(39, '25', '2017-06-26 09:26:48', '2017-06-26 09:26:48'),
(40, '20', '2017-06-26 09:26:48', '2017-06-26 09:26:48');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `name`, `intro`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bánh mặn', 'Nếu từng bị mê hoặc bởi các loại tarlet ngọt thì chắn chắn bạn không thể bỏ qua những loại tarlet mặn. Ngoài hình dáng bắt mắt, lớp vở bánh giòn giòn cùng với nhân mặn như thịt gà, nấm, thị heo ,… của bánh sẽ chinh phục bất cứ ai dùng thử.', '28.jpg', 1, NULL, NULL),
(2, 'Bánh ngọt', 'Bánh ngọt là một loại thức ăn thường dưới hình thức món bánh dạng bánh mì từ bột nhào, được nướng lên dùng để tráng miệng. Bánh ngọt có nhiều loại, có thể phân loại dựa theo nguyên liệu và kỹ thuật chế biến như bánh ngọt làm từ lúa mì, bơ, bánh ngọt dạng bọt biển. Bánh ngọt có thể phục vụ những mục đính đặc biệt như bánh cưới, bánh sinh nhật, bánh Giáng sinh, bánh Halloween..', '8.jpg', 1, NULL, NULL),
(3, 'Bánh trái cây', 'Bánh trái cây, hay còn gọi là bánh hoa quả, là một món ăn chơi, không riêng gì của Huế nhưng khi \"lạc\" vào mảnh đất Cố đô, món bánh này dường như cũng mang chút tinh tế, cầu kỳ và đặc biệt. Lấy cảm hứng từ những loại trái cây trong vườn, qua bàn tay khéo léo của người phụ nữ Huế, món bánh trái cây ra đời - ngọt thơm, dịu nhẹ làm đẹp lòng biết bao người thưởng thức.', '16.jpg', 1, NULL, NULL),
(4, 'Bánh kem', 'Với người Việt Nam thì bánh ngọt nói chung đều hay được quy về bánh bông lan – một loại tráng miệng bông xốp, ăn không hoặc được phủ kem lên thành bánh kem. Tuy nhiên, cốt bánh kem thực ra có rất nhiều loại với hương vị, kết cấu và phương thức làm khác nhau chứ không chỉ đơn giản là “bánh bông lan” chung chung đâu nhé!', '6.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_type_promo` int(10) UNSIGNED NOT NULL,
  `promo_value` int(11) UNSIGNED NOT NULL,
  `promo_title` text NOT NULL,
  `content` text NOT NULL,
  `image` text NOT NULL,
  `date_begin` date NOT NULL,
  `date_end` date NOT NULL,
  `code` text NOT NULL,
  `used` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `promo_type`
--

CREATE TABLE `promo_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promo_type`
--

INSERT INTO `promo_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Giảm giá tiền', NULL, NULL),
(2, 'Chiết khấu theo phần trăm', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(10) NOT NULL,
  `link` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`) VALUES
(5, '', 'banner2.jpg'),
(6, '', 'banner3.jpg'),
(7, '', 'banner4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `power` tinyint(2) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `power`, `active`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'Trần Thắng', 'tranthanhthang2008@gmail.com', '$2y$10$C/DLxPAFcmCP6vgNTFfRqOnpmEDm9YqNSCzv4tH1mxyUxqJ3D7tu.', '01662235151', '1243', 2, 1, 1, 'ow4JlLfPUbcnTxHiDG6SaNCML5rCFqVXxm6LvPll5i8eLjGDGVmH0GXJCKaa', NULL, '2024-06-01 09:00:34'),
(30, 'Lê Thùy Dương', 'yang240202@gmail.com', '$2y$10$676BYleFYdgN/v4tEEF5suGuwS3L7eJ3Nyn7IW7BQhpdyk8daDr6K', '0123456789', 'Hà Nội', 3, 1, 1, 'GccgfDiAdkbayJ7c0tREdFX9KKcMbIOvKgDYrxyHxug805D630167bSTlKeY', '2024-05-31 00:03:06', '2024-06-02 10:06:21'),
(31, 'Lê Trang', 'phamlehatrang0203@gmail.com', '$2y$10$nXRCV6Yidj4lY31.aT7ZNepCZ31g/VXv0AmAV/igb.AKfexm6soiO', '0258963147', 'Hải Phòng', 1, 0, 1, NULL, '2024-05-31 00:36:58', '2024-05-31 00:36:58'),
(32, 'Trần Hồng Nhung', 'hongnhung25102002@gmail.com', '$2y$10$vU8ryWxXbUjCAgJpoonh/.UC1oQ0t91J5.aNMm2mH2J/PyqijX2em', '0321456879', 'Thái Bình', 1, 1, 1, 'ud8Uu4ZpcXtg8NWTVHnHZ8x8GNNE8n4gBEOtiaSOzVhhvrPZEjlPdZaLORVV', '2024-05-31 00:48:08', '2024-06-02 09:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pro_id`, `updated_at`, `created_at`) VALUES
(58, 19, 59, '2017-06-25 06:59:13', '2017-06-25 06:59:13'),
(59, 19, 65, '2017-06-25 06:59:23', '2017-06-25 06:59:23'),
(61, 19, 61, '2017-06-25 07:03:26', '2017-06-25 07:03:26'),
(67, 32, 70, '2024-05-31 08:32:14', '2024-05-31 08:32:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`,`id_promo`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payment_status`
--
ALTER TABLE `payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `power_type`
--
ALTER TABLE `power_type`
  ADD PRIMARY KEY (`id_power`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`);

--
-- Indexes for table `products_properties`
--
ALTER TABLE `products_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_id` (`pro_id`,`size_id`,`p_price`),
  ADD KEY `size_id` (`size_id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_promo` (`id_type_promo`);

--
-- Indexes for table `promo_type`
--
ALTER TABLE `promo_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`pro_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `power_type`
--
ALTER TABLE `power_type`
  MODIFY `id_power` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `products_properties`
--
ALTER TABLE `products_properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `promo_type`
--
ALTER TABLE `promo_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `product_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products_properties`
--
ALTER TABLE `products_properties`
  ADD CONSTRAINT `products_properties_ibfk_1` FOREIGN KEY (`size_id`) REFERENCES `product_size` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_ibfk_1` FOREIGN KEY (`id_type_promo`) REFERENCES `promo_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
