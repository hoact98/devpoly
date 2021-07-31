-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 31, 2021 at 11:05 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-vue`
--

-- --------------------------------------------------------

--
-- Table structure for table `challenges`
--

CREATE TABLE `challenges` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_figma` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `design_on_figma` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resources` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `cate_challen_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `challenges`
--

INSERT INTO `challenges` (`id`, `title`, `slug`, `description`, `language`, `link_figma`, `design_on_figma`, `image`, `resources`, `level`, `cate_challen_id`, `created_at`, `updated_at`) VALUES
(1, 'Trình tải lên hình ảnh', 'trinh-tai-len-hinh-anh', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo ứng dụng Tr&igrave;nh tải l&ecirc;n h&igrave;nh ảnh.&nbsp;Sử dụng bất kỳ thư viện front-end n&agrave;o m&agrave; bạn chọn.&nbsp;Tạo API của bạn.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể k&eacute;o v&agrave; thả một h&igrave;nh ảnh để tải n&oacute; l&ecirc;n</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn để chọn một h&igrave;nh ảnh từ thư mục của m&igrave;nh</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy tr&igrave;nh tải khi tải l&ecirc;n</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi h&igrave;nh ảnh được tải l&ecirc;n, t&ocirc;i c&oacute; thể xem h&igrave;nh ảnh v&agrave; sao ch&eacute;p n&oacute;</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn sao ch&eacute;p v&agrave;o khay nhớ tạm</li>\n</ul>', 'HTML/CSS JS', 'https://www.figma.com/file/NxbZm3CAovYh89dFXe7EOw?chrome=DOCUMENTATION&embed_host=astra&kind=&node-id=0%3A1&viewer=1', 'https://www.figma.com/file/NxbZm3CAovYh89dFXe7EOw/Image-Uploader', 'files/1627698467-image.png', 'files/1627380961-image-uploader-master.zip', 1, 1, '2021-07-30 16:25:12', '2021-07-30 19:50:49'),
(2, 'Button component', 'button-component', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo một n&uacute;t c&oacute; thể sử dụng lại với tất cả c&aacute;c trạng th&aacute;i trong thiết kế v&agrave; một trang hiển thị tất cả c&aacute;c trạng th&aacute;i.&nbsp;Bạn c&oacute; thể l&agrave;m việc trong c&ugrave;ng một dự &aacute;n với những&nbsp;<code>design system&nbsp;</code>thử th&aacute;ch&nbsp;kh&aacute;c&nbsp;.&nbsp;Sử dụng c&aacute;c thư viện Front-end như React hoặc Vue.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>Sử dụng c&acirc;u chuyện:</strong>&nbsp;T&ocirc;i c&oacute; thể xem c&aacute;c loại n&uacute;t kh&aacute;c nhau:&nbsp;<code>default</code>,&nbsp;<code>outline&nbsp;</code>v&agrave;&nbsp;<code>text</code></li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn tắt&nbsp;<code>box-shadow</code></li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn tắt n&uacute;t</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn c&oacute; một biểu tượng ở b&ecirc;n tr&aacute;i hoặc b&ecirc;n phải (Sử dụng Biểu tượng Google v&agrave; &iacute;t nhất 5 biến thể)</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể c&oacute; c&aacute;c k&iacute;ch thước n&uacute;t kh&aacute;c nhau</li>\n	<li><strong>C&acirc;u chuyện người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể c&oacute; nhiều m&agrave;u sắc kh&aacute;c nhau</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i di chuột qua hoặc lấy n&eacute;t, t&ocirc;i c&oacute; thể thấy c&aacute;c chỉ b&aacute;o trực quan</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i vẫn c&oacute; thể truy cập tất cả c&aacute;c thuộc t&iacute;nh của n&uacute;t</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng (t&ugrave;y chọn):</strong>&nbsp;Hiển thị n&uacute;t theo c&aacute;ch tương tự như thiết kế hoặc sử dụng&nbsp;<a href=\"https://storybook.js.org/\">Storybook</a>&nbsp;.&nbsp;Nếu kh&ocirc;ng, hiển thị n&uacute;t ở nhiều trạng th&aacute;i l&agrave; đủ</li>\n</ul>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href=\"https://google.github.io/material-design-icons/\">https://google.github.io/material-design-icons/</a></p>', 'HTML/CSS thư viện react hoặc vue', 'https://www.figma.com/file/vfMDJhGGnqfaskO2aud06o?chrome=DOCUMENTATION&embed_host=astra&kind=&node-id=0%3A1&viewer=1', '', 'files/1627549033-image.png', 'files/1627549033-image-uploader-master.zip', 2, 4, '2021-07-29 01:57:13', '2021-07-29 01:57:13'),
(3, '404 Not Found', '404-not-found', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo trang 404 kh&ocirc;ng t&igrave;m thấy theo thiết kế.&nbsp;Trang phải đ&aacute;p ứng.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy một trang theo thiết kế đ&atilde; cho</li>\n</ul>\n\n<p>&nbsp;</p>', 'HTML/CSS', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2FQeKWLNhB13zDjJzqR22TKE%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/QeKWLNhB13zDjJzqR22TKE/404-page-challenge?node-id=0%3A1', 'files/1627549353-image.png', 'files/1627549353-404-not-found-master.zip', 1, 5, '2021-07-29 02:02:33', '2021-07-30 19:51:07'),
(4, 'My Unsplash', 'my-unsplash', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo ứng dụng Unsplash của t&ocirc;i.&nbsp;Sử dụng c&aacute;c thư viện Front-end như React hoặc Vue.&nbsp;Tạo API của ri&ecirc;ng bạn.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể xem danh s&aacute;ch c&aacute;c ảnh trong&nbsp;<code>masonry</code>bố cục m&agrave; t&ocirc;i đ&atilde; th&ecirc;m</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể th&ecirc;m ảnh mới v&agrave;o danh s&aacute;ch - ảnh mới phải ở đầu danh s&aacute;ch</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể t&igrave;m kiếm ảnh theo nh&atilde;n</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i di chuột qua ảnh, t&ocirc;i c&oacute; thể thấy nh&atilde;n v&agrave; n&uacute;t x&oacute;a</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể x&oacute;a h&igrave;nh ảnh</li>\n	<li><strong>C&acirc;u chuyện người d&ugrave;ng (t&ugrave;y chọn):</strong>&nbsp;Khi t&ocirc;i x&oacute;a một h&igrave;nh ảnh, t&ocirc;i c&oacute; thể nhập mật khẩu của m&igrave;nh</li>\n</ul>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href=\"https://google.github.io/material-design-icons/\">https://google.github.io/material-design-icons/</a></p>', 'React hoặc Vue', 'https://www.figma.com/file/a1xUD6nInLKRz6evFKKdir/My-unsplash', 'https://www.figma.com/file/a1xUD6nInLKRz6evFKKdir/My-unsplash?node-id=0%3A1', 'files/1627549577-image.png', 'files/1627549488-my-unsplash-master.zip', 2, 1, '2021-07-29 02:04:48', '2021-07-30 19:51:20'),
(5, 'CatWiki', 'catwiki', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo ứng dụng CatWiki của t&ocirc;i.&nbsp;Sử dụng c&aacute;c thư viện Front-end như React hoặc Vue.js.&nbsp;Tạo API của bạn.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<p>Sử dụng https://docs.thecatapi.com/ để ho&agrave;n th&agrave;nh thử th&aacute;ch n&agrave;y.&nbsp;Ph&iacute;a m&aacute;y kh&aacute;ch kh&ocirc;ng n&ecirc;n sử dụng API trực tiếp.&nbsp;Mọi thứ n&ecirc;n được xử l&yacute; ở ph&iacute;a m&aacute;y chủ.&nbsp;V&iacute; dụ: đề xuất c&aacute;c giống hoặc lấy h&igrave;nh ảnh cho giống.</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể t&igrave;m kiếm c&aacute;c giống m&egrave;o v&agrave; chọn một giống m&egrave;o m&agrave; t&ocirc;i lựa chọn</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể xem t&oacute;m tắt c&aacute;c giống m&egrave;o được t&igrave;m kiếm phổ biến nhất tr&ecirc;n trang chủ</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể xem 10 giống m&egrave;o được t&igrave;m kiếm nhiều nhất</li>\n	<li><strong>C&acirc;u chuyện User:</strong>&nbsp;T&ocirc;i c&oacute; thể xem chi tiết giống như&nbsp;<code>description</code>,&nbsp;<code>temperament</code>,&nbsp;<code>origin</code>,&nbsp;<code>life span</code>,&nbsp;<code>adaptability</code>,&nbsp;<code>affection level</code>,&nbsp;<code>child-friendly</code>,&nbsp;<code>grooming</code>,&nbsp;<code>intelligence</code>,&nbsp;<code>health issues</code>,&nbsp;<code>social needs</code>,<code>stranger friendly</code></li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể xem th&ecirc;m ảnh về giống ch&oacute; n&agrave;y</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Tr&ecirc;n thiết bị di động, khi t&ocirc;i chọn t&ugrave;y chọn t&igrave;m kiếm, một phương thức t&igrave;m kiếm giống sẽ bật l&ecirc;n</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng (t&ugrave;y chọn):</strong>&nbsp;T&ocirc;i c&oacute; thể chuyển đến b&agrave;i viết về m&egrave;o khi nhấp&nbsp;<code>read more</code>v&agrave;o mục Tại sao bạn n&ecirc;n c&oacute; m&egrave;o</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng (t&ugrave;y chọn):</strong>&nbsp;T&ocirc;i c&oacute; thể đi đến 10 con m&egrave;o h&agrave;ng đầu bằng c&aacute;ch nhấp&nbsp;<code>see more</code>v&agrave;o trang tổng quan</li>\n</ul>\n\n<p><strong>API:&nbsp;</strong><a href=\"https://docs.thecatapi.com/\">https://docs.thecatapi.com/</a></p>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href=\"https://google.github.io/material-design-icons/\">https://google.github.io/material-design-icons/</a></p>', 'React hoặc Vue.js', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2F6XLJCClikameMhnTZ3RKnM%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/6XLJCClikameMhnTZ3RKnM/CatWiki?node-id=0%3A1', 'files/1627549673-image.png', 'files/1627549673-cat-wiki-master.zip', 3, 1, '2021-07-29 02:07:53', '2021-07-30 19:51:25'),
(6, 'Tweeter - Bản sao Twitter', 'tweeter-ban-sao-twitter', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo ứng dụng sao ch&eacute;p Twitter - Tweeter.&nbsp;Sử dụng bất kỳ thư viện front-end n&agrave;o m&agrave; bạn chọn.&nbsp;Tạo API của bạn.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể xem hồ sơ của m&igrave;nh hoặc hồ sơ của người kh&aacute;c</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i ở tr&ecirc;n một trang c&aacute; nh&acirc;n, t&ocirc;i c&oacute; thể thấy Tweets v&agrave; Retweets.&nbsp;T&ocirc;i cũng c&oacute; thể lọc theo&nbsp;<code>Tweets</code>,&nbsp;<code>Tweets and replies</code>,&nbsp;<code>Media</code>v&agrave;<code>Likes</code></p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i ở tr&ecirc;n hồ sơ, t&ocirc;i c&oacute; thể thấy&nbsp;<code>followers&nbsp;</code>v&agrave;&nbsp;<code>following</code></p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i ở tr&ecirc;n hồ sơ, t&ocirc;i c&oacute; thể thấy&nbsp;<code>follow&nbsp;</code>hoặc&nbsp;<code>unfollow&nbsp;</code>người d&ugrave;ng</p>\n	</li>\n	<li>\n	<p><strong>Sử dụng c&acirc;u chuyện:</strong>&nbsp;T&ocirc;i c&oacute; thể di chuyển giữa&nbsp;<code>Home</code>,&nbsp;<code>Explore&nbsp;</code>v&agrave;&nbsp;&nbsp;<code>Bookmarks</code></p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể điều hướng đến&nbsp;<code>My Profile</code>,&nbsp;<code>Group Chat</code>(t&ugrave;y chọn)&nbsp;<code>Setting/Authentication App</code>,.</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i ở tr&ecirc;n&nbsp;<code>Home</code>, t&ocirc;i c&oacute; thể đăng một Tweet mới</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i đăng một Tweet mới, t&ocirc;i c&oacute; thể chọn tải l&ecirc;n một h&igrave;nh ảnh v&agrave; đặt Tweet th&agrave;nh&nbsp;<code>public</code>hoặc<code>only-follower</code></p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i bật&nbsp;<code>Home</code>, t&ocirc;i c&oacute; thể thấy Tweet của những người t&ocirc;i theo d&otilde;i</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện User:</strong>&nbsp;T&ocirc;i c&oacute; thể&nbsp;<code>Comment</code>,&nbsp;<code>Retweet</code>,&nbsp;<code>Like</code>hoặc&nbsp;<code>Save</code>một Tweet</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể&nbsp;<code>Comment</code>với h&igrave;nh ảnh v&agrave; t&ocirc;i c&oacute; thể th&iacute;ch một b&igrave;nh luận</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy thời gian đăng của&nbsp;<code>Comments</code>v&agrave;<code>Tweets</code></p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i tham gia&nbsp;<code>Home</code>, t&ocirc;i c&oacute; thể thấy những người nổi tiếng nhất&nbsp;<code>hashtags</code>v&agrave; những người t&ocirc;i n&ecirc;n theo d&otilde;i (t&ugrave;y thuộc v&agrave;o bạn c&aacute;ch triển khai điều n&agrave;y)</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i bật&nbsp;<code>Explore</code>, t&ocirc;i c&oacute; thể thấy&nbsp;<code>Top</code>,&nbsp;<code>Latest</code>Tweet hoặc Tweet với Media.&nbsp;T&ocirc;i cũng c&oacute; thể chọn để xem những người phổ biến nhất</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i bật&nbsp;<code>Bookmarks</code>, t&ocirc;i c&oacute; thể thấy&nbsp;<code>Saved</code>Tweet</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng (t&ugrave;y chọn):</strong>&nbsp;T&ocirc;i c&oacute; thể t&igrave;m kiếm một nh&oacute;m</p>\n	</li>\n</ul>\n\n<p>Bạn c&oacute; thể sử dụng&nbsp;<a href=\"https://devchallenges.io/challenges/N1fvBjQfhlkctmwj1tnw\">Thử th&aacute;ch x&aacute;c thực</a>&nbsp;hoặc tạo ứng dụng x&aacute;c thực của ri&ecirc;ng m&igrave;nh cho thử th&aacute;ch n&agrave;y.</p>\n\n<p>Bạn c&oacute; thể kiểm tra&nbsp;<a href=\"https://twitter.com/home\">Twitter</a>&nbsp;để biết c&aacute;c tương t&aacute;c.</p>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href=\"https://google.github.io/material-design-icons/\">https://google.github.io/material-design-icons/</a></p>\n\n<p>Sau khi bạn ho&agrave;n th&agrave;nh, h&atilde;y gửi c&aacute;c giải ph&aacute;p của bạn bằng c&aacute;ch cung cấp&nbsp;<strong>URL cho cả kho lưu trữ GitHub v&agrave; ứng dụng trực tiếp</strong>&nbsp;tr&ecirc;n bất kỳ nền tảng lưu trữ n&agrave;o (&nbsp;<a href=\"https://blogs.devchallenges.io/posts/tJ26U8MhZTPgBSRSwpqr\" target=\"_blank\">5</a>&nbsp;Nền tảng lưu trữ&nbsp;<a href=\"https://blogs.devchallenges.io/posts/tJ26U8MhZTPgBSRSwpqr\" target=\"_blank\">miễn ph&iacute;</a>&nbsp;) v&agrave; giải th&iacute;ch ngắn gọn những g&igrave; bạn đ&atilde; l&agrave;m.</p>\n\n<p>Miễn l&agrave; bạn ho&agrave;n th&agrave;nh tất cả c&aacute;c c&acirc;u chuyện của người d&ugrave;ng, bạn c&oacute; thể tạo dấu ấn c&aacute; nh&acirc;n của m&igrave;nh bằng c&aacute;ch th&ecirc;m chuyển tiếp, sử dụng h&igrave;nh ảnh của ri&ecirc;ng bạn, thay đổi m&agrave;u sắc, ...</p>\n\n<p>H&atilde;y nhớ đặt t&ecirc;n của bạn ở ch&acirc;n trang để ngăn người kh&aacute;c gửi giải ph&aacute;p của bạn.</p>\n\n<p>Bạn c&oacute; thể kiểm tra c&aacute;c giải ph&aacute;p của người kh&aacute;c v&agrave; đưa ra phản hồi cho họ.</p>', 'Dùng bất kỳ thư viện front-end nào', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2Fxxf4TG14lpF3vFUbBtEZUR%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/xxf4TG14lpF3vFUbBtEZUR/Tweeter', 'files/1627549845-image.png', 'files/1627549845-tweeter-master.zip', 3, 1, '2021-07-29 02:10:45', '2021-07-30 19:51:30'),
(7, 'Input component', 'input-component', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo một đầu v&agrave;o c&oacute; thể t&aacute;i sử dụng với tất cả c&aacute;c trạng th&aacute;i trong thiết kế v&agrave; một trang hiển thị tất cả c&aacute;c trạng th&aacute;i.&nbsp;Bạn c&oacute; thể l&agrave;m việc trong c&ugrave;ng một dự &aacute;n với những&nbsp;<code>design system</code>thử th&aacute;ch&nbsp;kh&aacute;c&nbsp;.&nbsp;Sử dụng c&aacute;c thư viện Front-end như React hoặc Vue.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy trạng th&aacute;i lỗi</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn tắt đầu v&agrave;o</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn để c&oacute; văn bản trợ gi&uacute;p</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn c&oacute; một biểu tượng ở b&ecirc;n tr&aacute;i hoặc b&ecirc;n phải (Sử dụng Biểu tượng Google v&agrave; &iacute;t nhất 5 biến thể)</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể c&oacute; c&aacute;c k&iacute;ch thước đầu v&agrave;o kh&aacute;c nhau</li>\n	<li><strong>C&acirc;u chuyện người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể c&oacute; nhiều m&agrave;u sắc kh&aacute;c nhau</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn để đầu v&agrave;o c&oacute; chiều rộng của gi&aacute; trị gốc</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể c&oacute; đầu v&agrave;o nhiều d&ograve;ng như một<code>textarea</code></li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i di chuột qua hoặc lấy n&eacute;t, t&ocirc;i c&oacute; thể thấy c&aacute;c chỉ b&aacute;o trực quan</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i vẫn c&oacute; thể truy cập tất cả c&aacute;c thuộc t&iacute;nh đầu v&agrave;o</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng (t&ugrave;y chọn):</strong>&nbsp;Hiển thị đầu v&agrave;o theo c&aacute;ch tương tự như thiết kế hoặc sử dụng&nbsp;<a href=\"https://storybook.js.org/\">Storybook</a>&nbsp;.&nbsp;Nếu kh&ocirc;ng, hiển thị đầu v&agrave;o ở nhiều trạng th&aacute;i l&agrave; đủ</li>\n</ul>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href=\"https://google.github.io/material-design-icons/\">https://google.github.io/material-design-icons/</a></p>', 'React hoặc Vue', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2FslzHnI05qpbBeC33ZMZGa5%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/slzHnI05qpbBeC33ZMZGa5/input-component', 'files/1627550611-image.png', 'files/1627550611-input-component-master.zip', 3, 4, '2021-07-29 02:23:31', '2021-07-30 19:51:40'),
(8, 'Windbnb', 'windbnb', '<p><strong>Thử th&aacute;ch:</strong>&nbsp;Tạo một phi&ecirc;n bản nhỏ của Airbnb - Windbnb với dữ liệu đ&atilde; cho.&nbsp;Sử dụng c&aacute;c thư viện Front-end như React hoặc Vue.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể xem danh s&aacute;ch c&aacute;c t&agrave;i sản</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy thẻ t&agrave;i sản với t&ecirc;n, xếp hạng, loại căn hộ v&agrave; si&ecirc;u chủ nh&agrave;</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể mở ngăn bộ lọc</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể lọc c&aacute;c thuộc t&iacute;nh theo vị tr&iacute; v&agrave; số lượng kh&aacute;ch</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy số lượng mục đ&atilde; lọc</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy c&aacute;c trang sau c&aacute;c thiết kế nhất định</li>\n</ul>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href=\"https://google.github.io/material-design-icons/\">https://google.github.io/material-design-icons/</a></p>', 'React hoặc Vue', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2FKGNH8dbclXT1vzXLyPrBeu%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/KGNH8dbclXT1vzXLyPrBeu/Windbnb', 'files/1627551358-image.png', 'files/1627551358-windbnb-master.zip', 3, 4, '2021-07-29 02:35:58', '2021-07-30 19:52:26'),
(9, 'Todo app', 'todo-app', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo một ứng dụng todo theo c&aacute;c thiết kế đ&atilde; cho.&nbsp;Sử dụng c&aacute;c thư viện Front-end như React hoặc Vue.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể th&ecirc;m một nhiệm vụ mới</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể ho&agrave;n th&agrave;nh một nhiệm vụ</li>\n	<li><strong>Sử dụng c&acirc;u chuyện:</strong>&nbsp;T&ocirc;i c&oacute; thể chuyển đổi giữa&nbsp;<code>All</code>,&nbsp;<code>Active&nbsp;</code>v&agrave;&nbsp;<code>Completed</code></li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể x&oacute;a một hoặc tất cả c&aacute;c nhiệm vụ trong&nbsp;<code>Completed</code>tab</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng (t&ugrave;y chọn):</strong>&nbsp;Lưu trữ dữ liệu trong bộ nhớ cục bộ m&agrave; khi t&ocirc;i l&agrave;m mới trang, t&ocirc;i vẫn c&oacute; thể thấy tiến tr&igrave;nh của m&igrave;nh</li>\n</ul>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href=\"https://google.github.io/material-design-icons/\">https://google.github.io/material-design-icons/</a></p>', 'React hoặc Vue', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2FSClDA1weEGA3Mo8Is8Sbf2%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/SClDA1weEGA3Mo8Is8Sbf2/todo?node-id=0%3A1', 'files/1627551485-image.png', 'files/1627551485-todo-app-master.zip', 2, 4, '2021-07-29 02:38:05', '2021-07-30 19:51:45'),
(10, 'Trình tạo báo giá ngẫu nhiên', 'trinh-tao-bao-gia-ngau-nhien', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo một ứng dụng tạo b&aacute;o gi&aacute;.&nbsp;Sử dụng c&aacute;c thư viện Front-end như React hoặc Vue.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy một tr&iacute;ch dẫn ngẫu nhi&ecirc;n</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i tạo một tr&iacute;ch dẫn ngẫu nhi&ecirc;n mới</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i chọn t&aacute;c giả tr&iacute;ch dẫn, t&ocirc;i c&oacute; thể xem danh s&aacute;ch c&aacute;c tr&iacute;ch dẫn từ họ</li>\n	<li><strong>Truyện người d&ugrave;ng:</strong>&nbsp;M&igrave;nh c&oacute; thể xem thể loại quote dưới t&aacute;c giả</li>\n</ul>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href=\"https://google.github.io/material-design-icons/\">https://google.github.io/material-design-icons/</a></p>\n\n<p><strong>API:&nbsp;</strong><a href=\"https://pprathameshmore.github.io/QuoteGarden/\">https://pprathameshmore.github.io/QuoteGarden/</a></p>', 'React hoặc Vue', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2FFFxqnf1cEDiHhvFpN6u4hV%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/FFxqnf1cEDiHhvFpN6u4hV/quote?node-id=0%3A1', 'files/1627551584-image.png', 'files/1627551584-quote-generator-master.zip', 2, 4, '2021-07-29 02:39:44', '2021-07-30 19:51:55'),
(11, 'Câu đố quốc gia', 'cau-do-quoc-gia', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo ứng dụng c&acirc;u đố quốc gia bằng API.&nbsp;Sử dụng c&aacute;c thư viện Front-end như React hoặc Vue.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy &iacute;t nhất 2 loại c&acirc;u hỏi:&nbsp;<code>a city is the capital of..</code>hoặc<code>a flag belong to country..</code></li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn một c&acirc;u trả lời</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể xem c&acirc;u trả lời của m&igrave;nh l&agrave; đ&uacute;ng hay sai</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i trả lời đ&uacute;ng, t&ocirc;i c&oacute; thể chuyển sang c&acirc;u hỏi tiếp theo</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i trả lời sai, t&ocirc;i c&oacute; thể xem kết quả của m&igrave;nh v&agrave; thử lại</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thử lại</li>\n</ul>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href=\"https://google.github.io/material-design-icons/\">https://google.github.io/material-design-icons/</a></p>\n\n<p><strong>API:&nbsp;</strong><a href=\"https://restcountries.eu/\">https://restcountries.eu/</a>&nbsp;.&nbsp;Sử dụng dữ liệu từ API để tạo c&acirc;u hỏi v&agrave; c&acirc;u trả lời.</p>', 'React hoặc Vue', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2FGw0ZNBbYN8asqFlZWy3jG1%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/Gw0ZNBbYN8asqFlZWy3jG1/Country-Quiz', 'files/1627551710-image.png', 'files/1627551710-country-quiz-master.zip', 3, 4, '2021-08-01 02:41:50', '2021-07-31 19:52:00'),
(12, 'Nhóm của tôi', 'nhom-cua-toi', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo trang nh&oacute;m của t&ocirc;i theo thiết kế.&nbsp;Trang phải đ&aacute;p ứng.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng b&ecirc;n dưới</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy một trang theo thiết kế đ&atilde; cho</li>\n</ul>', 'HTML/CSS JS', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2FF8d1qJsorEdY47N74HLxQ4%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/F8d1qJsorEdY47N74HLxQ4/team-page-challenge', 'files/1627551817-image.png', 'files/1627551817-my-team-page-master.zip', 2, 5, '2021-08-01 02:43:37', '2021-07-31 19:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `challenge_categories`
--

CREATE TABLE `challenge_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `challenge_categories`
--

INSERT INTO `challenge_categories` (`id`, `name`, `slug`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Lập trình viên full stack', 'lap-trinh-vien-full-stack', 'files/1627548596-image.svg', '<p>Trở th&agrave;nh nh&agrave; ph&aacute;t triển Full-stack bằng c&aacute;ch x&acirc;y dựng 8 ứng dụng web full-stack n&acirc;ng cao</p>\n\n<p>D&agrave;nh cho những ai muốn:</p>\n\n<ul>\n	<li>\n	<p>Thực h&agrave;nh&nbsp;<strong>c&aacute;c thư viện Front-end v&agrave; x&acirc;y dựng c&aacute;c ứng dụng ho&agrave;n chỉnh</strong></p>\n	</li>\n	<li>\n	<p>Trở th&agrave;nh&nbsp;<strong>nh&agrave; ph&aacute;t triển Full-stack</strong></p>\n	</li>\n	<li>\n	<p>X&acirc;y dựng trang web với&nbsp;<strong>c&aacute;c hoạt động thực tế</strong></p>\n	</li>\n</ul>', NULL, '2021-07-29 01:49:56'),
(4, 'Nhà phát triển Front-end', 'nha-phat-trien-front-end', 'files/1627548551-image.svg', '<p>Trở th&agrave;nh Nh&agrave; ph&aacute;t triển Front-end bằng c&aacute;ch x&acirc;y dựng 8 dự &aacute;n thực tế, bạn c&oacute; thể sử dụng bất kỳ khu&ocirc;n khổ Front-end n&agrave;o</p>\n\n<p>D&agrave;nh cho những ai muốn:</p>\n\n<ul>\n	<li>\n	<p>Thực h&agrave;nh&nbsp;<strong>React, Vue hoặc c&aacute;c thư viện front-end kh&aacute;c</strong></p>\n	</li>\n	<li>\n	<p>Trở th&agrave;nh&nbsp;<strong>nh&agrave; ph&aacute;t triển Front-end</strong></p>\n	</li>\n	<li>\n	<p>X&acirc;y dựng trang web với&nbsp;<strong>c&aacute;c hoạt động thực tế</strong></p>\n	</li>\n</ul>', '2021-07-29 01:49:11', '2021-07-29 01:49:11'),
(5, 'Nhà phát triển web đáp ứng', 'nha-phat-trien-web-dap-ung', 'files/1627548686-image.svg', '<p>T&igrave;m hiểu v&agrave; Thực h&agrave;nh Ph&aacute;t triển Web Đ&aacute;p ứng bằng c&aacute;ch x&acirc;y dựng 8 Trang web với c&aacute;c thiết kế cho sẵn</p>\n\n<p>D&agrave;nh cho những ai muốn:</p>\n\n<ul>\n	<li>\n	<p>Bắt đầu với&nbsp;<strong>m&atilde; h&oacute;a</strong></p>\n	</li>\n	<li>\n	<p>Thực h&agrave;nh&nbsp;<strong>HTML, CSS v&agrave; JavaScript cơ bản</strong></p>\n	</li>\n	<li>\n	<p>X&acirc;y dựng trang web với&nbsp;<strong>c&aacute;c hoạt động thực tế</strong>&nbsp;.</p>\n	</li>\n</ul>', '2021-07-29 01:51:26', '2021-07-29 01:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `challenge_users`
--

CREATE TABLE `challenge_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `challen_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `challenge_users`
--

INSERT INTO `challenge_users` (`user_id`, `challen_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chat_room_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `chat_room_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Hihi', '2021-07-25 19:25:48', '2021-07-25 19:25:48'),
(2, 1, 1, 'hsgsd', '2021-07-25 19:27:17', '2021-07-25 19:27:17'),
(3, 1, 1, 'ggggf', '2021-07-25 19:27:23', '2021-07-25 19:27:23'),
(4, 2, 1, 'dd', '2021-07-25 19:27:31', '2021-07-25 19:27:31'),
(5, 1, 1, 'đsd', '2021-07-28 19:09:30', '2021-07-28 19:09:30'),
(6, 1, 1, 'đsd', '2021-07-28 19:09:34', '2021-07-28 19:09:34'),
(7, 1, 1, 'd', '2021-07-28 19:09:38', '2021-07-28 19:09:38'),
(8, 1, 1, 'd', '2021-07-28 19:09:42', '2021-07-28 19:09:42'),
(9, 1, 1, 'd', '2021-07-28 19:09:45', '2021-07-28 19:09:45'),
(10, 1, 4, 'đff', '2021-07-29 23:10:45', '2021-07-29 23:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `chat_rooms`
--

CREATE TABLE `chat_rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_rooms`
--

INSERT INTO `chat_rooms` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'General', NULL, NULL),
(2, 'Teck talk', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `feedback_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `solution_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `feedback_content`, `user_id`, `solution_id`, `parent_id`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 'ok', 1, '1', 0, 1, '2021-07-27 15:59:13', '2021-07-27 22:28:45'),
(2, '<p>dfffdfđfd</p>', 1, '1', 1, 1, '2021-07-28 01:54:57', '2021-07-28 01:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_format` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2021_05_27_095755_create_challenge_categories_table', 1),
(9, '2021_05_27_104100_create_challenges_table', 1),
(10, '2021_05_27_104151_create_solutions_table', 1),
(11, '2021_05_27_104257_create_feedbacks_table', 1),
(12, '2021_05_29_091858_create_messages_table', 1),
(13, '2021_05_29_092229_create_notifications_table', 1),
(14, '2021_06_01_014607_create_failed_jobs_table', 1),
(15, '2021_06_03_024436_create_challenge_users_table', 1),
(16, '2021_06_07_070717_create_permission_tables', 1),
(17, '2021_06_11_032709_create_solution_users_table', 1),
(23, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(24, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(25, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(26, '2016_06_01_000004_create_oauth_clients_table', 2),
(27, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(30, '2021_07_25_094500_create_chat_rooms_table', 3),
(31, '2021_07_25_094633_create_chat_messages_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 1),
(8, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0253ef2ff560662929a518f10e80fa63cc0b75c2300fa9b3ec608a9f617a99f405d0e91692f2e3dc', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 11:37:44', '2021-07-18 11:37:44', '2022-07-18 18:37:44'),
('064c477fff6f2b14ef6419887836208f09ee7c4987cc71de7c8f09cfbd848a511272e98ddc0cb076', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-28 01:34:22', '2021-07-28 01:34:22', '2022-07-28 08:34:22'),
('0bddcad4bc3484c3bf5d145d3b93220a693c16c2bdfb653a5e1513207307ae0bc1668db2f2c778fe', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-26 03:37:44', '2021-07-26 03:37:44', '2022-07-26 10:37:44'),
('1183b0702eb369bcaf90325de94bd30b0fcd7de66cb8cbcb58b984001cdc1b22dc086879221bfe2d', 4, 1, 'Personal Access Token', '[]', 0, '2021-07-29 04:03:13', '2021-07-29 04:03:13', '2022-07-29 11:03:13'),
('137ef8ac94501132adc9f9ddd7e4c1cdae2e5063d150a3108efe28e8f67579f0039ac575076b122e', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-27 20:28:44', '2021-07-27 20:28:44', '2022-07-28 03:28:44'),
('196d0be2c80232607b6d7e84c5a896ceb87fadcec3b9fc597faa6a603d11d1e5dced2f7366372a0e', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-29 03:57:17', '2021-07-29 03:57:17', '2022-07-29 10:57:17'),
('1fc7bc4ab4a0a303f45e92dfad6dae994fbb101e8e9dd4f99150cbbc9aeef64e971c09cf40569007', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 03:12:42', '2021-07-18 03:12:42', '2022-07-18 10:12:42'),
('22885d23fba7cf996bdd995447f20f28b259b0faa907a9596fe10ac609b590fab54581052ab85ccb', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 10:31:20', '2021-07-18 10:31:20', '2022-07-18 17:31:20'),
('24191d6b26e4de8374e5493cacf2ae6b838304b0a810f309d4e0d2f18b547eaa08540f80503690ee', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:41:39', '2021-07-18 02:41:39', '2022-07-18 09:41:39'),
('279c3c8a47a5e1087aa4fc5a64eb107d9fb6ce2191770ff336740ca471a322d749b5e5dd3859b135', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:40:51', '2021-07-18 02:40:51', '2022-07-18 09:40:51'),
('27fc317da48d1d7e0aa5de80bc3b860cf9ff60c030c60fe57883d0bd6860a6cfc46422966850e643', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 18:50:18', '2021-07-18 18:50:18', '2022-07-19 01:50:18'),
('2e88995c511b7bf37d7b4290233e30e86842fc6030e31d6c3e8ebb65c55ef69c42f4d8ba3d7fe0a4', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-29 03:33:43', '2021-07-29 03:33:43', '2022-07-29 10:33:43'),
('37c67b282231be735df35164c8ff5cc0d565b3946f3c33fe081415f908094548a6d363607302a845', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-20 06:43:54', '2021-07-20 06:43:54', '2022-07-20 13:43:54'),
('3e46d3ac93ae4ea0ebe99bfcaa4b8300e3e4e823d1a7df5784827c16dbbc77738a88007d6a053cfe', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 18:21:30', '2021-07-18 18:21:30', '2022-07-19 01:21:30'),
('3ec6f318360e087955d30c49ca63a9ec015d5ee143f355c43d207196ecb2d11af7f9aaaef0804fea', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 04:00:07', '2021-07-18 04:00:07', '2022-07-18 11:00:07'),
('3f8a878a3a935df9e3bbb5a6edee15c598722dbf3b7f73bfa69750158c288d18825570dda7e98218', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-26 09:21:59', '2021-07-26 09:21:59', '2022-07-26 16:21:59'),
('4154e8e3c924090cd55c650b9b32bcefee0c35385d0dfc50e46a0c38b2c5fb952af074bdd0eb1ede', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 10:03:35', '2021-07-18 10:03:35', '2022-07-18 17:03:35'),
('444ca553e27c921cf5a1713b85516b7da58746bb9eb6fee269d7e083d2025d18b0e49bd51b418473', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 21:04:19', '2021-07-18 21:04:19', '2022-07-19 04:04:19'),
('44e01a1fb7f3306b9dfd20fb90c36bc8b1d5c473e50e06cf82e15ac0a8b6dccec79a59b19cacc4d3', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-28 04:17:50', '2021-07-28 04:17:50', '2022-07-28 11:17:50'),
('49b0cbc7556d4347f02eaacc583e85faeb8a420950c4259656aca964a6689bcdd742dbac71f18917', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-30 19:10:32', '2021-07-30 19:10:32', '2022-07-31 02:10:32'),
('4a8570a6deb47706a26eb62129643db85f56e940c7b873acb379cf1fe3a2796bc4d79dc9a732e224', 2, 1, 'Personal Access Token', '[]', 1, '2021-07-26 09:10:13', '2021-07-26 09:10:13', '2022-07-26 16:10:13'),
('4eeb59bf40a83a45301c04dd53510c33b6fc606a9a1884480293a2e16f3bb66411a6b2962db3639a', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-28 03:51:49', '2021-07-28 03:51:49', '2022-07-28 10:51:49'),
('4f2160d689c954d203ee5c4bec516b7cba2e8ac9af07e42c30014b28db65091b901a93a4d371006e', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-28 05:32:52', '2021-07-28 05:32:52', '2022-07-28 12:32:52'),
('4fa3cbb1e0804172afff4b7f22e9c6860e6f644844f0cf1ae52e243bb9dfd496ef8529631a3095cc', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-26 10:09:23', '2021-07-26 10:09:23', '2022-07-26 17:09:23'),
('511795d0b9e72f2e6342483323028681f21498dd13c183d7ee385c44f9b8deca5546bfa9dfeeae63', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-27 02:28:03', '2021-07-27 02:28:03', '2022-07-27 09:28:03'),
('51da28e17bfd9d7def4f23e607982bd6c53dbb7307ee9ebbb926fd4740271953d7afa43bab6a2f43', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-28 05:28:29', '2021-07-28 05:28:29', '2022-07-28 12:28:29'),
('52c1909e43fb8f794d9fa434c09d6d644829ceb8a38dedace01a661b7a905c50ccc3d298b918e415', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 11:35:02', '2021-07-18 11:35:02', '2022-07-18 18:35:02'),
('548cab8a858b23a70b8a578588d3b5bcdccf20c15c060fbe27a6ee64c37a5d06e43f616ec0b11a45', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-29 03:12:25', '2021-07-29 03:12:25', '2022-07-29 10:12:25'),
('57afadfe5524522242989010f9f84d20eec7d90876be7a33ca92221bd7e9689d705d8fac68edd26f', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 11:42:04', '2021-07-18 11:42:04', '2022-07-18 18:42:04'),
('58ea08894c1a0f928140cb4a46e511e6d6900006f5501e63b47ceeced129736bdd9f7077fc9f7fc2', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-27 20:26:14', '2021-07-27 20:26:14', '2022-07-28 03:26:14'),
('5d04a65b604e395d9466a62021955dd8ea88f8ce665727649233fcac9c3a11c7460c8b21f387f3e7', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-30 08:36:41', '2021-07-30 08:36:41', '2022-07-30 15:36:41'),
('5d0b8282b06b4af301359f1cbb4ed00b8a04327809ef9ac5db0db2aa19b40ed064e1cb12a6da68a9', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-25 03:43:00', '2021-07-25 03:43:00', '2022-07-25 10:43:00'),
('60d60e151923322ff775c650004b723e9aee9d0c8b2e8174f566159faa2c7def8aae11902dfbb770', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-28 04:12:00', '2021-07-28 04:12:00', '2022-07-28 11:12:00'),
('6148600d0ee7982668e041d747d610cae104828fb5b716a260eb3fa5a504da2743c2d2d1479c582e', 2, 1, 'Personal Access Token', '[]', 1, '2021-07-26 08:05:18', '2021-07-26 08:05:18', '2022-07-26 15:05:18'),
('619d4d07d855948180759ebe41984c53a1edbb2a46270cb4b36f9a868b9d3f2b105009813998b712', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-28 05:31:52', '2021-07-28 05:31:52', '2022-07-28 12:31:52'),
('66d0c576984647d9df560eb0e2ef2191036b2a1cce2176ad9d548304e77d8ad2292117c1949c7c25', 4, 1, 'Personal Access Token', '[]', 0, '2021-07-29 04:00:55', '2021-07-29 04:00:55', '2022-07-29 11:00:55'),
('670f9499aaa8d717769dbacbf92a63e137261600f55331135ee5caf5d4c90eeff97f60e59042e1c6', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:45:33', '2021-07-18 02:45:33', '2022-07-18 09:45:33'),
('6becf3f6b72a8db8fc44f86db75ef1aed9aef96a454a38db0ee98086a1c29618e987f76e45dfc272', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 11:32:29', '2021-07-18 11:32:29', '2022-07-18 18:32:29'),
('6f8d06de3248d192d3c0028c5c8c1a2dde0e5a04d1bc24a67a1b8d9c709006b8cae18ca1611df07e', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-28 03:56:46', '2021-07-28 03:56:46', '2022-07-28 10:56:46'),
('71c5987a41d2e3dce40d52e035ad586362b6402b3122dc9f01fb1884037440232e5b5e50761176d2', 2, 1, 'LaravelPassport', '[]', 0, '2021-07-26 08:05:01', '2021-07-26 08:05:01', '2022-07-26 15:05:01'),
('72d362e1dc7e4c4d3a9c359fb1428d74b4d0c97913b98a2eb095ffec1a6ebac3ad9f4a3ef325d840', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 03:01:12', '2021-07-18 03:01:12', '2022-07-18 10:01:12'),
('757b78cfdfe5516831274a605626501215a4291bbf93281f94bcf7c31f05295c7a5e00388feb8c9f', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-26 01:41:20', '2021-07-26 01:41:20', '2022-07-26 08:41:20'),
('7687696fe5285fd4c8f81c81c0f6713ff05bc08cc00bf134ce63adb4173f1d30ffd9430d5ec89e61', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-28 03:25:22', '2021-07-28 03:25:22', '2022-07-28 10:25:22'),
('7eb56bf55c9d2d912ed6abc5c95ac354e8c5ffd072b3ea4b42712e8fa017165f79f6af5ed78a4b18', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-27 09:08:32', '2021-07-27 09:08:32', '2022-07-27 16:08:32'),
('7ef39c50d59bab98f741eb387f47f46ddec96d24e4a38bc927b11779da337b140a156ca7013f0875', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-27 22:00:57', '2021-07-27 22:00:57', '2022-07-28 05:00:57'),
('7f16cf84f05cb2b49ad1916e85964191a2e1feaa6ff03c9569c971d49bbdb1a27134a2659f3df87b', 4, 1, 'Personal Access Token', '[]', 1, '2021-07-28 05:23:41', '2021-07-28 05:23:41', '2022-07-28 12:23:41'),
('7f77327192d9429d5e72b37a098bda6d3cdc8dd89d5c427c98fd8f0084ea4c6da265149a9e4d065c', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-25 05:45:06', '2021-07-25 05:45:06', '2022-07-25 12:45:06'),
('8076c0c575befbca9379785a7b6127bf10fe59486474ff33441ccb554b7bc1018d443f546b60d5ac', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-26 01:17:35', '2021-07-26 01:17:35', '2022-07-26 08:17:35'),
('83879bdc4648553b0b14c3692194f9d6c1ba256cbe23d56c9a7d50956ab765cf79dad0f1eabe9ef4', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-19 05:53:28', '2021-07-19 05:53:28', '2022-07-19 12:53:28'),
('84e0b1d700d540d1acedcbf08d4f8178cfba21826f4a3dc3b52cddb1422cee5fe43e3e9d2a565aba', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-30 19:16:45', '2021-07-30 19:16:45', '2022-07-31 02:16:45'),
('86b3940f62a23b824e5487510599205e669bc0dd4c0a9b5166b2cac399afbe2f96e90c0fa3c5c289', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-26 08:18:19', '2021-07-26 08:18:19', '2022-07-26 15:18:19'),
('89e182f27581ca947b2c34ecf644948f251cf4467a48f3e0f9e231d4f41bb419ec87b941e32cf300', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-27 01:17:07', '2021-07-27 01:17:07', '2022-07-27 08:17:07'),
('8ba8762ec8da01b42fe1416c8cf0fab6fecea7304875fda538122a16a238ef204ae48f932a1792f5', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-28 05:27:35', '2021-07-28 05:27:35', '2022-07-28 12:27:35'),
('8cfbb2fc509ed4167df01f17aadf387fe6b2f69ebfc9d9bdc2ecab1c0ac9c52fd5b9f6d273f56f78', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 18:48:22', '2021-07-18 18:48:22', '2022-07-19 01:48:22'),
('8f5d6af82a86cfc5f97ced9208a630f7af318527c2fe55dd6cf7d863acd0da6db7527890caf8c402', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-28 05:24:21', '2021-07-28 05:24:21', '2022-07-28 12:24:21'),
('959f42665fb5308ebdc27020c6ef6580b31c38c7e09b93b44ab34290b3e6b29a623d0e1ba19c5c29', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-27 07:56:00', '2021-07-27 07:56:00', '2022-07-27 14:56:00'),
('9f3501ea5b57646978540a9d3ffc2d502806df3b6e74c973270fd6cf15a592dd4e7f93415055af5a', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-27 07:56:00', '2021-07-27 07:56:00', '2022-07-27 14:56:00'),
('a0cfafc88e104b2f4b7bcbbf8b49cfc12baef36772d4b74dff6c47d7ba3482381fae42a98d3df5ec', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:53:26', '2021-07-18 02:53:26', '2022-07-18 09:53:26'),
('a0d1b5c09e7c776e05e421c1b413f4a274cd14bf1088e9b5ac4b441afcedc8173f1d3dc3f88215aa', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-20 09:58:29', '2021-07-20 09:58:29', '2022-07-20 16:58:29'),
('aac961bfc1f4cdca7bdecf661ca2c376118dcb894aa439b1e389c4318b87e1e6709f9a21b2b5c19a', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 08:52:47', '2021-07-18 08:52:47', '2022-07-18 15:52:47'),
('ab9401e0d85eb1f539be2e8e404d1dfe1e2f3b062e8c74f304247f815dbf936d5605657f03947c27', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-25 18:24:09', '2021-07-25 18:24:09', '2022-07-26 01:24:09'),
('af258429a64d5e07b257864645646627f70a9dd6f5c75de7f0fe4ed987d31190842199f27ad96ed7', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-30 19:10:32', '2021-07-30 19:10:32', '2022-07-31 02:10:32'),
('afd55afc3a0b573414c82dd370f5286713421c271c75daf290d19a8586b5e2d553aec11f3b078731', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:59:03', '2021-07-18 02:59:03', '2022-07-18 09:59:03'),
('b001bcefed1cdba5d255154d74c0609f26f74ac1feb53654a67ad3b9b15e67792d9990abb7f359aa', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 19:53:07', '2021-07-18 19:53:07', '2022-07-19 02:53:07'),
('b109168ebaeca58a6d4fd25af6a45b9c1805355163b939102019cab9aee2cc74a17731a8366b3935', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-26 08:29:03', '2021-07-26 08:29:03', '2022-07-26 15:29:03'),
('b4186083725f479b3add50c24b0e3ce87f27b36619655c37cb3610b3571ab89e7f4ac53d234956ad', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-30 19:31:55', '2021-07-30 19:31:55', '2022-07-31 02:31:55'),
('be62f5e244e1b1dffffffdc32ef57ffd1c3bb9f00db24131dab154317740747e0a3c0be2ff4c51db', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-25 18:24:07', '2021-07-25 18:24:07', '2022-07-26 01:24:07'),
('c14a1a0332f979670047daeec625ce8419d9b3b28df4583e5c3d84c67d72b98c233b1b48bc705327', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-29 03:35:45', '2021-07-29 03:35:45', '2022-07-29 10:35:45'),
('ce39e0c644eeb2940ee6eac75b1ec82eecfd43d5d6466a3820753c432d69cd75f57697a06231dbeb', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 19:52:35', '2021-07-18 19:52:35', '2022-07-19 02:52:35'),
('cecc4999933604292c119d15410989329f0c2f420b9163280abede01ea0e884744fe1446c92d1c7f', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 18:53:20', '2021-07-18 18:53:20', '2022-07-19 01:53:20'),
('d08a55f34660d452900626e748a521b849fa01e213324480d5aa21c2f32b7b87841b1d2f4fcae779', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-30 19:10:32', '2021-07-30 19:10:32', '2022-07-31 02:10:32'),
('d104caf5c42614b88c1e07deb1f37d77b0a7e2be5b44e2dee8cd58d560489922ccd6015d055a5ffd', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:46:05', '2021-07-18 02:46:05', '2022-07-18 09:46:05'),
('d7bed6379f32e8b699b41a4022283e4ebf9b0a090262cb1f8af92f15cbb48f270b50835a806104f6', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:47:31', '2021-07-18 02:47:31', '2022-07-18 09:47:31'),
('d8b271d22bf6c9d5113e8dc722541d7a51c5d768f2a94e2f04f737cc06728d0e55ca42bbe172a8df', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 19:09:23', '2021-07-18 19:09:23', '2022-07-19 02:09:23'),
('d9966293136b670285aca854db0e3e970a792ce40c8ad17bf20c568724c5373fb29dcbeea3a8973d', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:57:20', '2021-07-18 02:57:20', '2022-07-18 09:57:20'),
('dab85f7727f368fc9c5711757893abb1a24b196dbc7a85812fad1d596155a2f9f9c59ced6712656c', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 10:37:05', '2021-07-18 10:37:05', '2022-07-18 17:37:05'),
('ded042fbc943f6e981e35f03d27270103fefc213c2008a2b0609cae60afe532d67f03c922ab56ed3', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 18:27:18', '2021-07-18 18:27:18', '2022-07-19 01:27:18'),
('ded59e4da7c2a52b91aafea2b88d123fcb409fc550b49074c03fb42f12dc2778e9ceb4eb5d331eb7', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 10:47:16', '2021-07-18 10:47:16', '2022-07-18 17:47:16'),
('e0248416c6d977af4716b3ad4059ec9ad6c5295dc9d657356a42a445acf914986c4c7f1cc2f561ea', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-20 06:57:51', '2021-07-20 06:57:51', '2022-07-20 13:57:51'),
('e68e7b4c9405c15c84744d07c59a371ff8a0812daf2a9fac7c492676353d000a9e2cdb55575fb5fa', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 11:32:29', '2021-07-18 11:32:29', '2022-07-18 18:32:29'),
('e8469359bf4af99dc6e8d8b8be6472b4c07092d3c96be30ec691593800c242337a2b00cc0e86c139', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-27 21:44:48', '2021-07-27 21:44:48', '2022-07-28 04:44:48'),
('e8e598d9a494e0bdad8ce182833e3825f1f0f7f563b035b11238a0c69cd9a9c39d01bd72f0255e7c', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 11:13:59', '2021-07-18 11:13:59', '2022-07-18 18:13:59'),
('ec03f95785fb227f93b13781659c5b85d39cd1ee4d399c692b7242035c174121ca2b38edf6365e8f', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:26:23', '2021-07-18 02:26:23', '2022-07-18 09:26:23'),
('ed019ce5fb1592662c2e5bfff4638f4c290498a4f2ea6c54538c931c314f290c6f44d57a1ddb97fc', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-30 08:16:00', '2021-07-30 08:16:00', '2022-07-30 15:16:00'),
('f3100ae70a7de9ccfe72455431350ab1bce85062f09dfcac4f6f81401f542ea7fe6aa5bc73082cda', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:39:33', '2021-07-18 02:39:33', '2022-07-18 09:39:33'),
('fd6ac54b43d79bbec6be817ee92f1210e4e2da4c55976fb6686045c97ebe7974c55fd1cfcaee76f2', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 03:11:39', '2021-07-18 03:11:39', '2022-07-18 10:11:39'),
('fda6ba44036737a6f23358e275b476a92cd09d44d1f8a42272d29634ee8656c3216ef8af3490c387', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-28 05:31:09', '2021-07-28 05:31:09', '2022-07-28 12:31:09'),
('ff4b0fd4513e9b48b85258387f8a3e9d75ffd25b58d5938405838d681dccab0e0f6d12c27d4fa047', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-28 04:17:27', '2021-07-28 04:17:27', '2022-07-28 11:17:27'),
('ffdab722fe005e3eae0a5cb6d552e9d3bf0b98cf2a30029c2c1759e9b3f1ece2f676748f1fdb6361', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 19:24:35', '2021-07-18 19:24:35', '2022-07-19 02:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', 'cqaoIFbsHmtZwf6qSyTnYPzLwgrTHFKE7eUPvTee', NULL, 'http://localhost', 1, 0, 0, '2021-07-18 02:25:44', '2021-07-18 02:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-07-18 02:25:44', '2021-07-18 02:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'edit challenges', 'api', '2021-07-18 01:31:53', '2021-07-18 01:31:53'),
(2, 'delete challenges', 'api', '2021-07-18 01:31:53', '2021-07-18 01:31:53'),
(5, 'edit categories', 'api', '2021-07-18 01:31:53', '2021-07-18 01:31:53'),
(6, 'delete categories', 'api', '2021-07-18 01:31:53', '2021-07-18 01:31:53'),
(7, 'publish categories', 'api', '2021-07-18 01:31:53', '2021-07-18 01:31:53'),
(8, 'login admin', 'api', '2021-07-18 01:31:53', '2021-07-18 01:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user', 'api', '2021-07-18 01:31:54', '2021-07-26 09:01:58'),
(2, 'admin', 'api', '2021-07-18 01:31:54', '2021-07-18 01:31:54'),
(3, 'super-admin', 'api', '2021-07-18 01:31:54', '2021-07-18 01:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `solutions`
--

CREATE TABLE `solutions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_github` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `demo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `challen_id` int(10) UNSIGNED NOT NULL,
  `number_like` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `solutions`
--

INSERT INTO `solutions` (`id`, `title`, `description`, `link_github`, `demo_url`, `user_id`, `challen_id`, `number_like`, `created_at`, `updated_at`) VALUES
('1', 'upload images', '<p>Đ&oacute; l&agrave; một dự &aacute;n tuyệt vời để l&agrave;m việc.&nbsp;Do l&uacute;c đầu, t&ocirc;i nghĩ rằng n&oacute; sẽ kh&oacute; khăn nhưng t&ocirc;i thấy n&oacute; rất vui v&agrave; t&ocirc;i đ&atilde; học được rất nhiều điều trong qu&aacute; tr&igrave;nh thực hiện n&oacute;.</p>\n\n<p>C&ocirc;ng nghệ: T&ocirc;i đ&atilde; sử dụng bộ nhớ firebase l&agrave;m m&aacute;y chủ của m&igrave;nh</p>\n\n<p>Farmwork: React.js Material UI</p>\n\n<p>Th&aacute;ch thức: Đ&oacute; l&agrave; th&aacute;ch thức khi kết nối phản ứng v&agrave; cơ sở lửa.</p>', 'https://github.com/FayVik/Image-uploader', 'https://image-uploader-one.vercel.app/', 4, 1, 0, '2021-07-27 15:57:30', '2021-07-29 02:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` int(11) NOT NULL DEFAULT '0',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online` tinyint(1) NOT NULL DEFAULT '0',
  `socket_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `verify_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `gender`, `address`, `phone`, `image`, `online`, `socket_id`, `is_active`, `verify_token`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin123@gmail.com', 0, 'Hà Nội', '0387897456', 'files/1627378141-5.jpg', 0, NULL, 1, NULL, NULL, '$2y$10$44L.iEIIrxQrdh0TkN.c6OpenQoONSoc5sV9e1Jk5wOUr0KGmstrK', NULL, '2021-07-18 02:00:25', '2021-07-29 03:57:24'),
(4, 'hoad', 'hoa02', 'hoa02@gmail', 1, 'qqqqqqq', '09566333222', 'files/1627381978-request_image.png', 0, NULL, 0, NULL, NULL, '$2y$10$44L.iEIIrxQrdh0TkN.c6OpenQoONSoc5sV9e1Jk5wOUr0KGmstrK', NULL, '2021-06-27 03:30:10', '2021-07-29 04:03:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `challenges`
--
ALTER TABLE `challenges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `challenges_title_unique` (`title`),
  ADD UNIQUE KEY `challenges_slug_unique` (`slug`),
  ADD UNIQUE KEY `challenges_link_figma_unique` (`link_figma`),
  ADD UNIQUE KEY `design_on_figma` (`design_on_figma`),
  ADD KEY `challenges_cate_challen_id_foreign` (`cate_challen_id`);

--
-- Indexes for table `challenge_categories`
--
ALTER TABLE `challenge_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `challenge_categories_name_unique` (`name`),
  ADD UNIQUE KEY `challenge_categories_slug_unique` (`slug`);

--
-- Indexes for table `challenge_users`
--
ALTER TABLE `challenge_users`
  ADD PRIMARY KEY (`user_id`,`challen_id`),
  ADD KEY `challenge_users_challen_id_foreign` (`challen_id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_messages_chat_room_id_foreign` (`chat_room_id`),
  ADD KEY `chat_messages_user_id_foreign` (`user_id`);

--
-- Indexes for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedbacks_solution_id_foreign` (`solution_id`),
  ADD KEY `feedbacks_user_id_foreign` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `solutions`
--
ALTER TABLE `solutions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `solutions_link_github_unique` (`link_github`),
  ADD UNIQUE KEY `solutions_demo_url_unique` (`demo_url`),
  ADD KEY `solutions_user_id_foreign` (`user_id`),
  ADD KEY `solutions_challen_id_foreign` (`challen_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `challenges`
--
ALTER TABLE `challenges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `challenge_categories`
--
ALTER TABLE `challenge_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `challenges`
--
ALTER TABLE `challenges`
  ADD CONSTRAINT `challenges_cate_challen_id_foreign` FOREIGN KEY (`cate_challen_id`) REFERENCES `challenge_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `challenge_users`
--
ALTER TABLE `challenge_users`
  ADD CONSTRAINT `challenge_users_challen_id_foreign` FOREIGN KEY (`challen_id`) REFERENCES `challenges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `challenge_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_chat_room_id_foreign` FOREIGN KEY (`chat_room_id`) REFERENCES `chat_rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chat_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_solution_id_foreign` FOREIGN KEY (`solution_id`) REFERENCES `solutions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedbacks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `solutions`
--
ALTER TABLE `solutions`
  ADD CONSTRAINT `solutions_challen_id_foreign` FOREIGN KEY (`challen_id`) REFERENCES `challenges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `solutions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
