-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for laravel-vue
DROP DATABASE IF EXISTS `laravel-vue`;
CREATE DATABASE IF NOT EXISTS `laravel-vue` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `laravel-vue`;

-- Dumping structure for table laravel-vue.challenges
DROP TABLE IF EXISTS `challenges`;
CREATE TABLE IF NOT EXISTS `challenges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `language` varchar(191) NOT NULL,
  `link_figma` varchar(191) NOT NULL,
  `design_on_figma` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `resources` varchar(191) NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `cate_challen_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `challenges_title_unique` (`title`),
  UNIQUE KEY `challenges_slug_unique` (`slug`),
  UNIQUE KEY `challenges_link_figma_unique` (`link_figma`),
  UNIQUE KEY `design_on_figma` (`design_on_figma`),
  KEY `challenges_cate_challen_id_foreign` (`cate_challen_id`),
  CONSTRAINT `challenges_cate_challen_id_foreign` FOREIGN KEY (`cate_challen_id`) REFERENCES `challenge_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.challenges: ~12 rows (approximately)
DELETE FROM `challenges`;
/*!40000 ALTER TABLE `challenges` DISABLE KEYS */;
INSERT INTO `challenges` (`id`, `title`, `slug`, `description`, `language`, `link_figma`, `design_on_figma`, `image`, `resources`, `level`, `cate_challen_id`, `created_at`, `updated_at`) VALUES
	(1, 'Trình tải lên hình ảnh', 'trinh-tai-len-hinh-anh', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo ứng dụng Tr&igrave;nh tải l&ecirc;n h&igrave;nh ảnh.&nbsp;Sử dụng bất kỳ thư viện front-end n&agrave;o m&agrave; bạn chọn.&nbsp;Tạo API của bạn.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể k&eacute;o v&agrave; thả một h&igrave;nh ảnh để tải n&oacute; l&ecirc;n</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn để chọn một h&igrave;nh ảnh từ thư mục của m&igrave;nh</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy tr&igrave;nh tải khi tải l&ecirc;n</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi h&igrave;nh ảnh được tải l&ecirc;n, t&ocirc;i c&oacute; thể xem h&igrave;nh ảnh v&agrave; sao ch&eacute;p n&oacute;</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn sao ch&eacute;p v&agrave;o khay nhớ tạm</li>\n</ul>', 'HTML/CSS JS', 'https://www.figma.com/file/NxbZm3CAovYh89dFXe7EOw?chrome=DOCUMENTATION&embed_host=astra&kind=&node-id=0%3A1&viewer=1', 'https://www.figma.com/file/NxbZm3CAovYh89dFXe7EOw/Image-Uploader', 'files/1627698467-image.png', 'files/1627380961-image-uploader-master.zip', 1, 1, '2021-07-30 23:25:12', '2021-07-31 02:50:49'),
	(2, 'Button component', 'button-component', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo một n&uacute;t c&oacute; thể sử dụng lại với tất cả c&aacute;c trạng th&aacute;i trong thiết kế v&agrave; một trang hiển thị tất cả c&aacute;c trạng th&aacute;i.&nbsp;Bạn c&oacute; thể l&agrave;m việc trong c&ugrave;ng một dự &aacute;n với những&nbsp;<code>design system&nbsp;</code>thử th&aacute;ch&nbsp;kh&aacute;c&nbsp;.&nbsp;Sử dụng c&aacute;c thư viện Front-end như React hoặc Vue.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>Sử dụng c&acirc;u chuyện:</strong>&nbsp;T&ocirc;i c&oacute; thể xem c&aacute;c loại n&uacute;t kh&aacute;c nhau:&nbsp;<code>default</code>,&nbsp;<code>outline&nbsp;</code>v&agrave;&nbsp;<code>text</code></li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn tắt&nbsp;<code>box-shadow</code></li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn tắt n&uacute;t</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn c&oacute; một biểu tượng ở b&ecirc;n tr&aacute;i hoặc b&ecirc;n phải (Sử dụng Biểu tượng Google v&agrave; &iacute;t nhất 5 biến thể)</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể c&oacute; c&aacute;c k&iacute;ch thước n&uacute;t kh&aacute;c nhau</li>\n	<li><strong>C&acirc;u chuyện người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể c&oacute; nhiều m&agrave;u sắc kh&aacute;c nhau</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i di chuột qua hoặc lấy n&eacute;t, t&ocirc;i c&oacute; thể thấy c&aacute;c chỉ b&aacute;o trực quan</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i vẫn c&oacute; thể truy cập tất cả c&aacute;c thuộc t&iacute;nh của n&uacute;t</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng (t&ugrave;y chọn):</strong>&nbsp;Hiển thị n&uacute;t theo c&aacute;ch tương tự như thiết kế hoặc sử dụng&nbsp;<a href="https://storybook.js.org/">Storybook</a>&nbsp;.&nbsp;Nếu kh&ocirc;ng, hiển thị n&uacute;t ở nhiều trạng th&aacute;i l&agrave; đủ</li>\n</ul>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href="https://google.github.io/material-design-icons/">https://google.github.io/material-design-icons/</a></p>', 'HTML/CSS thư viện react hoặc vue', 'https://www.figma.com/file/vfMDJhGGnqfaskO2aud06o?chrome=DOCUMENTATION&embed_host=astra&kind=&node-id=0%3A1&viewer=1', '', 'files/1627549033-image.png', 'files/1627549033-image-uploader-master.zip', 2, 4, '2021-07-29 08:57:13', '2021-07-29 08:57:13'),
	(3, '404 Not Found', '404-not-found', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo trang 404 kh&ocirc;ng t&igrave;m thấy theo thiết kế.&nbsp;Trang phải đ&aacute;p ứng.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy một trang theo thiết kế đ&atilde; cho</li>\n</ul>\n\n<p>&nbsp;</p>', 'HTML/CSS', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2FQeKWLNhB13zDjJzqR22TKE%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/QeKWLNhB13zDjJzqR22TKE/404-page-challenge?node-id=0%3A1', 'files/1627549353-image.png', 'files/1627549353-404-not-found-master.zip', 1, 5, '2021-07-29 09:02:33', '2021-07-31 02:51:07'),
	(4, 'My Unsplash', 'my-unsplash', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo ứng dụng Unsplash của t&ocirc;i.&nbsp;Sử dụng c&aacute;c thư viện Front-end như React hoặc Vue.&nbsp;Tạo API của ri&ecirc;ng bạn.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể xem danh s&aacute;ch c&aacute;c ảnh trong&nbsp;<code>masonry</code>bố cục m&agrave; t&ocirc;i đ&atilde; th&ecirc;m</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể th&ecirc;m ảnh mới v&agrave;o danh s&aacute;ch - ảnh mới phải ở đầu danh s&aacute;ch</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể t&igrave;m kiếm ảnh theo nh&atilde;n</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i di chuột qua ảnh, t&ocirc;i c&oacute; thể thấy nh&atilde;n v&agrave; n&uacute;t x&oacute;a</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể x&oacute;a h&igrave;nh ảnh</li>\n	<li><strong>C&acirc;u chuyện người d&ugrave;ng (t&ugrave;y chọn):</strong>&nbsp;Khi t&ocirc;i x&oacute;a một h&igrave;nh ảnh, t&ocirc;i c&oacute; thể nhập mật khẩu của m&igrave;nh</li>\n</ul>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href="https://google.github.io/material-design-icons/">https://google.github.io/material-design-icons/</a></p>', 'React hoặc Vue', 'https://www.figma.com/file/a1xUD6nInLKRz6evFKKdir/My-unsplash', 'https://www.figma.com/file/a1xUD6nInLKRz6evFKKdir/My-unsplash?node-id=0%3A1', 'files/1627549577-image.png', 'files/1627549488-my-unsplash-master.zip', 2, 1, '2021-07-29 09:04:48', '2021-07-31 02:51:20'),
	(5, 'CatWiki', 'catwiki', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo ứng dụng CatWiki của t&ocirc;i.&nbsp;Sử dụng c&aacute;c thư viện Front-end như React hoặc Vue.js.&nbsp;Tạo API của bạn.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<p>Sử dụng https://docs.thecatapi.com/ để ho&agrave;n th&agrave;nh thử th&aacute;ch n&agrave;y.&nbsp;Ph&iacute;a m&aacute;y kh&aacute;ch kh&ocirc;ng n&ecirc;n sử dụng API trực tiếp.&nbsp;Mọi thứ n&ecirc;n được xử l&yacute; ở ph&iacute;a m&aacute;y chủ.&nbsp;V&iacute; dụ: đề xuất c&aacute;c giống hoặc lấy h&igrave;nh ảnh cho giống.</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể t&igrave;m kiếm c&aacute;c giống m&egrave;o v&agrave; chọn một giống m&egrave;o m&agrave; t&ocirc;i lựa chọn</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể xem t&oacute;m tắt c&aacute;c giống m&egrave;o được t&igrave;m kiếm phổ biến nhất tr&ecirc;n trang chủ</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể xem 10 giống m&egrave;o được t&igrave;m kiếm nhiều nhất</li>\n	<li><strong>C&acirc;u chuyện User:</strong>&nbsp;T&ocirc;i c&oacute; thể xem chi tiết giống như&nbsp;<code>description</code>,&nbsp;<code>temperament</code>,&nbsp;<code>origin</code>,&nbsp;<code>life span</code>,&nbsp;<code>adaptability</code>,&nbsp;<code>affection level</code>,&nbsp;<code>child-friendly</code>,&nbsp;<code>grooming</code>,&nbsp;<code>intelligence</code>,&nbsp;<code>health issues</code>,&nbsp;<code>social needs</code>,<code>stranger friendly</code></li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể xem th&ecirc;m ảnh về giống ch&oacute; n&agrave;y</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Tr&ecirc;n thiết bị di động, khi t&ocirc;i chọn t&ugrave;y chọn t&igrave;m kiếm, một phương thức t&igrave;m kiếm giống sẽ bật l&ecirc;n</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng (t&ugrave;y chọn):</strong>&nbsp;T&ocirc;i c&oacute; thể chuyển đến b&agrave;i viết về m&egrave;o khi nhấp&nbsp;<code>read more</code>v&agrave;o mục Tại sao bạn n&ecirc;n c&oacute; m&egrave;o</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng (t&ugrave;y chọn):</strong>&nbsp;T&ocirc;i c&oacute; thể đi đến 10 con m&egrave;o h&agrave;ng đầu bằng c&aacute;ch nhấp&nbsp;<code>see more</code>v&agrave;o trang tổng quan</li>\n</ul>\n\n<p><strong>API:&nbsp;</strong><a href="https://docs.thecatapi.com/">https://docs.thecatapi.com/</a></p>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href="https://google.github.io/material-design-icons/">https://google.github.io/material-design-icons/</a></p>', 'React hoặc Vue.js', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2F6XLJCClikameMhnTZ3RKnM%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/6XLJCClikameMhnTZ3RKnM/CatWiki?node-id=0%3A1', 'files/1627549673-image.png', 'files/1627549673-cat-wiki-master.zip', 3, 1, '2021-07-29 09:07:53', '2021-07-31 02:51:25'),
	(6, 'Tweeter - Bản sao Twitter', 'tweeter-ban-sao-twitter', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo ứng dụng sao ch&eacute;p Twitter - Tweeter.&nbsp;Sử dụng bất kỳ thư viện front-end n&agrave;o m&agrave; bạn chọn.&nbsp;Tạo API của bạn.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể xem hồ sơ của m&igrave;nh hoặc hồ sơ của người kh&aacute;c</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i ở tr&ecirc;n một trang c&aacute; nh&acirc;n, t&ocirc;i c&oacute; thể thấy Tweets v&agrave; Retweets.&nbsp;T&ocirc;i cũng c&oacute; thể lọc theo&nbsp;<code>Tweets</code>,&nbsp;<code>Tweets and replies</code>,&nbsp;<code>Media</code>v&agrave;<code>Likes</code></p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i ở tr&ecirc;n hồ sơ, t&ocirc;i c&oacute; thể thấy&nbsp;<code>followers&nbsp;</code>v&agrave;&nbsp;<code>following</code></p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i ở tr&ecirc;n hồ sơ, t&ocirc;i c&oacute; thể thấy&nbsp;<code>follow&nbsp;</code>hoặc&nbsp;<code>unfollow&nbsp;</code>người d&ugrave;ng</p>\n	</li>\n	<li>\n	<p><strong>Sử dụng c&acirc;u chuyện:</strong>&nbsp;T&ocirc;i c&oacute; thể di chuyển giữa&nbsp;<code>Home</code>,&nbsp;<code>Explore&nbsp;</code>v&agrave;&nbsp;&nbsp;<code>Bookmarks</code></p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể điều hướng đến&nbsp;<code>My Profile</code>,&nbsp;<code>Group Chat</code>(t&ugrave;y chọn)&nbsp;<code>Setting/Authentication App</code>,.</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i ở tr&ecirc;n&nbsp;<code>Home</code>, t&ocirc;i c&oacute; thể đăng một Tweet mới</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i đăng một Tweet mới, t&ocirc;i c&oacute; thể chọn tải l&ecirc;n một h&igrave;nh ảnh v&agrave; đặt Tweet th&agrave;nh&nbsp;<code>public</code>hoặc<code>only-follower</code></p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i bật&nbsp;<code>Home</code>, t&ocirc;i c&oacute; thể thấy Tweet của những người t&ocirc;i theo d&otilde;i</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện User:</strong>&nbsp;T&ocirc;i c&oacute; thể&nbsp;<code>Comment</code>,&nbsp;<code>Retweet</code>,&nbsp;<code>Like</code>hoặc&nbsp;<code>Save</code>một Tweet</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể&nbsp;<code>Comment</code>với h&igrave;nh ảnh v&agrave; t&ocirc;i c&oacute; thể th&iacute;ch một b&igrave;nh luận</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy thời gian đăng của&nbsp;<code>Comments</code>v&agrave;<code>Tweets</code></p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i tham gia&nbsp;<code>Home</code>, t&ocirc;i c&oacute; thể thấy những người nổi tiếng nhất&nbsp;<code>hashtags</code>v&agrave; những người t&ocirc;i n&ecirc;n theo d&otilde;i (t&ugrave;y thuộc v&agrave;o bạn c&aacute;ch triển khai điều n&agrave;y)</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i bật&nbsp;<code>Explore</code>, t&ocirc;i c&oacute; thể thấy&nbsp;<code>Top</code>,&nbsp;<code>Latest</code>Tweet hoặc Tweet với Media.&nbsp;T&ocirc;i cũng c&oacute; thể chọn để xem những người phổ biến nhất</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i bật&nbsp;<code>Bookmarks</code>, t&ocirc;i c&oacute; thể thấy&nbsp;<code>Saved</code>Tweet</p>\n	</li>\n	<li>\n	<p><strong>C&acirc;u chuyện của người d&ugrave;ng (t&ugrave;y chọn):</strong>&nbsp;T&ocirc;i c&oacute; thể t&igrave;m kiếm một nh&oacute;m</p>\n	</li>\n</ul>\n\n<p>Bạn c&oacute; thể sử dụng&nbsp;<a href="https://devchallenges.io/challenges/N1fvBjQfhlkctmwj1tnw">Thử th&aacute;ch x&aacute;c thực</a>&nbsp;hoặc tạo ứng dụng x&aacute;c thực của ri&ecirc;ng m&igrave;nh cho thử th&aacute;ch n&agrave;y.</p>\n\n<p>Bạn c&oacute; thể kiểm tra&nbsp;<a href="https://twitter.com/home">Twitter</a>&nbsp;để biết c&aacute;c tương t&aacute;c.</p>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href="https://google.github.io/material-design-icons/">https://google.github.io/material-design-icons/</a></p>\n\n<p>Sau khi bạn ho&agrave;n th&agrave;nh, h&atilde;y gửi c&aacute;c giải ph&aacute;p của bạn bằng c&aacute;ch cung cấp&nbsp;<strong>URL cho cả kho lưu trữ GitHub v&agrave; ứng dụng trực tiếp</strong>&nbsp;tr&ecirc;n bất kỳ nền tảng lưu trữ n&agrave;o (&nbsp;<a href="https://blogs.devchallenges.io/posts/tJ26U8MhZTPgBSRSwpqr" target="_blank">5</a>&nbsp;Nền tảng lưu trữ&nbsp;<a href="https://blogs.devchallenges.io/posts/tJ26U8MhZTPgBSRSwpqr" target="_blank">miễn ph&iacute;</a>&nbsp;) v&agrave; giải th&iacute;ch ngắn gọn những g&igrave; bạn đ&atilde; l&agrave;m.</p>\n\n<p>Miễn l&agrave; bạn ho&agrave;n th&agrave;nh tất cả c&aacute;c c&acirc;u chuyện của người d&ugrave;ng, bạn c&oacute; thể tạo dấu ấn c&aacute; nh&acirc;n của m&igrave;nh bằng c&aacute;ch th&ecirc;m chuyển tiếp, sử dụng h&igrave;nh ảnh của ri&ecirc;ng bạn, thay đổi m&agrave;u sắc, ...</p>\n\n<p>H&atilde;y nhớ đặt t&ecirc;n của bạn ở ch&acirc;n trang để ngăn người kh&aacute;c gửi giải ph&aacute;p của bạn.</p>\n\n<p>Bạn c&oacute; thể kiểm tra c&aacute;c giải ph&aacute;p của người kh&aacute;c v&agrave; đưa ra phản hồi cho họ.</p>', 'Dùng bất kỳ thư viện front-end nào', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2Fxxf4TG14lpF3vFUbBtEZUR%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/xxf4TG14lpF3vFUbBtEZUR/Tweeter', 'files/1627549845-image.png', 'files/1627549845-tweeter-master.zip', 3, 1, '2021-07-29 09:10:45', '2021-07-31 02:51:30'),
	(7, 'Input component', 'input-component', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo một đầu v&agrave;o c&oacute; thể t&aacute;i sử dụng với tất cả c&aacute;c trạng th&aacute;i trong thiết kế v&agrave; một trang hiển thị tất cả c&aacute;c trạng th&aacute;i.&nbsp;Bạn c&oacute; thể l&agrave;m việc trong c&ugrave;ng một dự &aacute;n với những&nbsp;<code>design system</code>thử th&aacute;ch&nbsp;kh&aacute;c&nbsp;.&nbsp;Sử dụng c&aacute;c thư viện Front-end như React hoặc Vue.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy trạng th&aacute;i lỗi</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn tắt đầu v&agrave;o</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn để c&oacute; văn bản trợ gi&uacute;p</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn c&oacute; một biểu tượng ở b&ecirc;n tr&aacute;i hoặc b&ecirc;n phải (Sử dụng Biểu tượng Google v&agrave; &iacute;t nhất 5 biến thể)</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể c&oacute; c&aacute;c k&iacute;ch thước đầu v&agrave;o kh&aacute;c nhau</li>\n	<li><strong>C&acirc;u chuyện người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể c&oacute; nhiều m&agrave;u sắc kh&aacute;c nhau</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn để đầu v&agrave;o c&oacute; chiều rộng của gi&aacute; trị gốc</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể c&oacute; đầu v&agrave;o nhiều d&ograve;ng như một<code>textarea</code></li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i di chuột qua hoặc lấy n&eacute;t, t&ocirc;i c&oacute; thể thấy c&aacute;c chỉ b&aacute;o trực quan</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i vẫn c&oacute; thể truy cập tất cả c&aacute;c thuộc t&iacute;nh đầu v&agrave;o</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng (t&ugrave;y chọn):</strong>&nbsp;Hiển thị đầu v&agrave;o theo c&aacute;ch tương tự như thiết kế hoặc sử dụng&nbsp;<a href="https://storybook.js.org/">Storybook</a>&nbsp;.&nbsp;Nếu kh&ocirc;ng, hiển thị đầu v&agrave;o ở nhiều trạng th&aacute;i l&agrave; đủ</li>\n</ul>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href="https://google.github.io/material-design-icons/">https://google.github.io/material-design-icons/</a></p>', 'React hoặc Vue', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2FslzHnI05qpbBeC33ZMZGa5%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/slzHnI05qpbBeC33ZMZGa5/input-component', 'files/1627550611-image.png', 'files/1627550611-input-component-master.zip', 3, 4, '2021-07-29 09:23:31', '2021-07-31 02:51:40'),
	(8, 'Windbnb', 'windbnb', '<p><strong>Thử th&aacute;ch:</strong>&nbsp;Tạo một phi&ecirc;n bản nhỏ của Airbnb - Windbnb với dữ liệu đ&atilde; cho.&nbsp;Sử dụng c&aacute;c thư viện Front-end như React hoặc Vue.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể xem danh s&aacute;ch c&aacute;c t&agrave;i sản</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy thẻ t&agrave;i sản với t&ecirc;n, xếp hạng, loại căn hộ v&agrave; si&ecirc;u chủ nh&agrave;</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể mở ngăn bộ lọc</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể lọc c&aacute;c thuộc t&iacute;nh theo vị tr&iacute; v&agrave; số lượng kh&aacute;ch</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy số lượng mục đ&atilde; lọc</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy c&aacute;c trang sau c&aacute;c thiết kế nhất định</li>\n</ul>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href="https://google.github.io/material-design-icons/">https://google.github.io/material-design-icons/</a></p>', 'React hoặc Vue', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2FKGNH8dbclXT1vzXLyPrBeu%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/KGNH8dbclXT1vzXLyPrBeu/Windbnb', 'files/1627551358-image.png', 'files/1627551358-windbnb-master.zip', 3, 4, '2021-07-29 09:35:58', '2021-07-31 02:52:26'),
	(9, 'Todo app', 'todo-app', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo một ứng dụng todo theo c&aacute;c thiết kế đ&atilde; cho.&nbsp;Sử dụng c&aacute;c thư viện Front-end như React hoặc Vue.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể th&ecirc;m một nhiệm vụ mới</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể ho&agrave;n th&agrave;nh một nhiệm vụ</li>\n	<li><strong>Sử dụng c&acirc;u chuyện:</strong>&nbsp;T&ocirc;i c&oacute; thể chuyển đổi giữa&nbsp;<code>All</code>,&nbsp;<code>Active&nbsp;</code>v&agrave;&nbsp;<code>Completed</code></li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể x&oacute;a một hoặc tất cả c&aacute;c nhiệm vụ trong&nbsp;<code>Completed</code>tab</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng (t&ugrave;y chọn):</strong>&nbsp;Lưu trữ dữ liệu trong bộ nhớ cục bộ m&agrave; khi t&ocirc;i l&agrave;m mới trang, t&ocirc;i vẫn c&oacute; thể thấy tiến tr&igrave;nh của m&igrave;nh</li>\n</ul>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href="https://google.github.io/material-design-icons/">https://google.github.io/material-design-icons/</a></p>', 'React hoặc Vue', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2FSClDA1weEGA3Mo8Is8Sbf2%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/SClDA1weEGA3Mo8Is8Sbf2/todo?node-id=0%3A1', 'files/1627551485-image.png', 'files/1627551485-todo-app-master.zip', 2, 4, '2021-07-29 09:38:05', '2021-07-31 02:51:45'),
	(10, 'Trình tạo báo giá ngẫu nhiên', 'trinh-tao-bao-gia-ngau-nhien', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo một ứng dụng tạo b&aacute;o gi&aacute;.&nbsp;Sử dụng c&aacute;c thư viện Front-end như React hoặc Vue.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy một tr&iacute;ch dẫn ngẫu nhi&ecirc;n</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i tạo một tr&iacute;ch dẫn ngẫu nhi&ecirc;n mới</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i chọn t&aacute;c giả tr&iacute;ch dẫn, t&ocirc;i c&oacute; thể xem danh s&aacute;ch c&aacute;c tr&iacute;ch dẫn từ họ</li>\n	<li><strong>Truyện người d&ugrave;ng:</strong>&nbsp;M&igrave;nh c&oacute; thể xem thể loại quote dưới t&aacute;c giả</li>\n</ul>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href="https://google.github.io/material-design-icons/">https://google.github.io/material-design-icons/</a></p>\n\n<p><strong>API:&nbsp;</strong><a href="https://pprathameshmore.github.io/QuoteGarden/">https://pprathameshmore.github.io/QuoteGarden/</a></p>', 'React hoặc Vue', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2FFFxqnf1cEDiHhvFpN6u4hV%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/FFxqnf1cEDiHhvFpN6u4hV/quote?node-id=0%3A1', 'files/1627551584-image.png', 'files/1627551584-quote-generator-master.zip', 2, 4, '2021-07-29 09:39:44', '2021-07-31 02:51:55'),
	(11, 'Câu đố quốc gia', 'cau-do-quoc-gia', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo ứng dụng c&acirc;u đố quốc gia bằng API.&nbsp;Sử dụng c&aacute;c thư viện Front-end như React hoặc Vue.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng dưới đ&acirc;y:</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy &iacute;t nhất 2 loại c&acirc;u hỏi:&nbsp;<code>a city is the capital of..</code>hoặc<code>a flag belong to country..</code></li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể chọn một c&acirc;u trả lời</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể xem c&acirc;u trả lời của m&igrave;nh l&agrave; đ&uacute;ng hay sai</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i trả lời đ&uacute;ng, t&ocirc;i c&oacute; thể chuyển sang c&acirc;u hỏi tiếp theo</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;Khi t&ocirc;i trả lời sai, t&ocirc;i c&oacute; thể xem kết quả của m&igrave;nh v&agrave; thử lại</li>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thử lại</li>\n</ul>\n\n<p><strong>Biểu tượng:&nbsp;</strong><a href="https://google.github.io/material-design-icons/">https://google.github.io/material-design-icons/</a></p>\n\n<p><strong>API:&nbsp;</strong><a href="https://restcountries.eu/">https://restcountries.eu/</a>&nbsp;.&nbsp;Sử dụng dữ liệu từ API để tạo c&acirc;u hỏi v&agrave; c&acirc;u trả lời.</p>', 'React hoặc Vue', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2FGw0ZNBbYN8asqFlZWy3jG1%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/Gw0ZNBbYN8asqFlZWy3jG1/Country-Quiz', 'files/1627551710-image.png', 'files/1627551710-country-quiz-master.zip', 3, 4, '2021-08-01 09:41:50', '2021-08-01 02:52:00'),
	(12, 'Nhóm của tôi', 'nhom-cua-toi', '<p><strong>Th&aacute;ch thức:</strong>&nbsp;Tạo trang nh&oacute;m của t&ocirc;i theo thiết kế.&nbsp;Trang phải đ&aacute;p ứng.&nbsp;Đừng nh&igrave;n v&agrave;o giải ph&aacute;p hiện c&oacute;.&nbsp;Thực hiện c&aacute;c c&acirc;u chuyện của người d&ugrave;ng b&ecirc;n dưới</p>\n\n<ul>\n	<li><strong>C&acirc;u chuyện của người d&ugrave;ng:</strong>&nbsp;T&ocirc;i c&oacute; thể thấy một trang theo thiết kế đ&atilde; cho</li>\n</ul>', 'HTML/CSS JS', 'https://www.figma.com/embed?embed_host=astra&url=https%3A%2F%2Fwww.figma.com%2Ffile%2FF8d1qJsorEdY47N74HLxQ4%2F404-page%3Fnode-id%3D0%253A1&chrome=DOCUMENTATION', 'https://www.figma.com/file/F8d1qJsorEdY47N74HLxQ4/team-page-challenge', 'files/1627551817-image.png', 'files/1627551817-my-team-page-master.zip', 2, 5, '2021-08-01 09:43:37', '2021-08-01 02:52:07');
/*!40000 ALTER TABLE `challenges` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.challenge_categories
DROP TABLE IF EXISTS `challenge_categories`;
CREATE TABLE IF NOT EXISTS `challenge_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `challenge_categories_name_unique` (`name`),
  UNIQUE KEY `challenge_categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.challenge_categories: ~3 rows (approximately)
DELETE FROM `challenge_categories`;
/*!40000 ALTER TABLE `challenge_categories` DISABLE KEYS */;
INSERT INTO `challenge_categories` (`id`, `name`, `slug`, `image`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Lập trình viên full stack', 'lap-trinh-vien-full-stack', 'files/1627548596-image.svg', '<p>Trở th&agrave;nh nh&agrave; ph&aacute;t triển Full-stack bằng c&aacute;ch x&acirc;y dựng 8 ứng dụng web full-stack n&acirc;ng cao</p>\n\n<p>D&agrave;nh cho những ai muốn:</p>\n\n<ul>\n	<li>\n	<p>Thực h&agrave;nh&nbsp;<strong>c&aacute;c thư viện Front-end v&agrave; x&acirc;y dựng c&aacute;c ứng dụng ho&agrave;n chỉnh</strong></p>\n	</li>\n	<li>\n	<p>Trở th&agrave;nh&nbsp;<strong>nh&agrave; ph&aacute;t triển Full-stack</strong></p>\n	</li>\n	<li>\n	<p>X&acirc;y dựng trang web với&nbsp;<strong>c&aacute;c hoạt động thực tế</strong></p>\n	</li>\n</ul>', NULL, '2021-07-29 08:49:56'),
	(4, 'Nhà phát triển Front-end', 'nha-phat-trien-front-end', 'files/1627548551-image.svg', '<p>Trở th&agrave;nh Nh&agrave; ph&aacute;t triển Front-end bằng c&aacute;ch x&acirc;y dựng 8 dự &aacute;n thực tế, bạn c&oacute; thể sử dụng bất kỳ khu&ocirc;n khổ Front-end n&agrave;o</p>\n\n<p>D&agrave;nh cho những ai muốn:</p>\n\n<ul>\n	<li>\n	<p>Thực h&agrave;nh&nbsp;<strong>React, Vue hoặc c&aacute;c thư viện front-end kh&aacute;c</strong></p>\n	</li>\n	<li>\n	<p>Trở th&agrave;nh&nbsp;<strong>nh&agrave; ph&aacute;t triển Front-end</strong></p>\n	</li>\n	<li>\n	<p>X&acirc;y dựng trang web với&nbsp;<strong>c&aacute;c hoạt động thực tế</strong></p>\n	</li>\n</ul>', '2021-07-29 08:49:11', '2021-07-29 08:49:11'),
	(5, 'Nhà phát triển web đáp ứng', 'nha-phat-trien-web-dap-ung', 'files/1627548686-image.svg', '<p>T&igrave;m hiểu v&agrave; Thực h&agrave;nh Ph&aacute;t triển Web Đ&aacute;p ứng bằng c&aacute;ch x&acirc;y dựng 8 Trang web với c&aacute;c thiết kế cho sẵn</p>\n\n<p>D&agrave;nh cho những ai muốn:</p>\n\n<ul>\n	<li>\n	<p>Bắt đầu với&nbsp;<strong>m&atilde; h&oacute;a</strong></p>\n	</li>\n	<li>\n	<p>Thực h&agrave;nh&nbsp;<strong>HTML, CSS v&agrave; JavaScript cơ bản</strong></p>\n	</li>\n	<li>\n	<p>X&acirc;y dựng trang web với&nbsp;<strong>c&aacute;c hoạt động thực tế</strong>&nbsp;.</p>\n	</li>\n</ul>', '2021-07-29 08:51:26', '2021-07-29 08:51:26');
/*!40000 ALTER TABLE `challenge_categories` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.challenge_users
DROP TABLE IF EXISTS `challenge_users`;
CREATE TABLE IF NOT EXISTS `challenge_users` (
  `user_id` int(10) unsigned NOT NULL,
  `challen_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`challen_id`),
  KEY `challenge_users_challen_id_foreign` (`challen_id`),
  CONSTRAINT `challenge_users_challen_id_foreign` FOREIGN KEY (`challen_id`) REFERENCES `challenges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `challenge_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.challenge_users: ~1 rows (approximately)
DELETE FROM `challenge_users`;
/*!40000 ALTER TABLE `challenge_users` DISABLE KEYS */;
INSERT INTO `challenge_users` (`user_id`, `challen_id`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, NULL);
/*!40000 ALTER TABLE `challenge_users` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.chat_messages
DROP TABLE IF EXISTS `chat_messages`;
CREATE TABLE IF NOT EXISTS `chat_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chat_room_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `message` mediumtext,
  `image` varchar(191) DEFAULT NULL,
  `receiver_id` int(10) unsigned DEFAULT NULL,
  `time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chat_messages_chat_room_id_foreign` (`chat_room_id`),
  KEY `chat_messages_user_id_foreign` (`user_id`),
  CONSTRAINT `chat_messages_chat_room_id_foreign` FOREIGN KEY (`chat_room_id`) REFERENCES `chat_rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chat_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.chat_messages: ~4 rows (approximately)
DELETE FROM `chat_messages`;
/*!40000 ALTER TABLE `chat_messages` DISABLE KEYS */;
INSERT INTO `chat_messages` (`id`, `chat_room_id`, `user_id`, `message`, `image`, `receiver_id`, `time`, `created_at`, `updated_at`) VALUES
	(4, 1, 1, 'he', NULL, NULL, '2021-08-13 00:00:58', '2021-08-13 00:00:58', '2021-08-13 00:00:58'),
	(5, NULL, 1, 'hi', NULL, 4, '2021-08-13 00:03:00', '2021-08-13 00:03:00', '2021-08-13 00:03:00'),
	(6, 1, 1, 'hi', NULL, NULL, '2021-08-13 00:03:22', '2021-08-13 00:03:22', '2021-08-13 00:03:22'),
	(7, 1, 1, 'hi', NULL, NULL, '2021-08-13 00:06:12', '2021-08-13 00:06:12', '2021-08-13 00:06:12');
/*!40000 ALTER TABLE `chat_messages` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.chat_rooms
DROP TABLE IF EXISTS `chat_rooms`;
CREATE TABLE IF NOT EXISTS `chat_rooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.chat_rooms: ~2 rows (approximately)
DELETE FROM `chat_rooms`;
/*!40000 ALTER TABLE `chat_rooms` DISABLE KEYS */;
INSERT INTO `chat_rooms` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'General', 'files/1627698467-image.png', NULL, NULL),
	(2, 'Teck talk', 'files/1627698467-image.png', NULL, NULL);
/*!40000 ALTER TABLE `chat_rooms` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.feedbacks
DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE IF NOT EXISTS `feedbacks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feedback_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `solution_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feedbacks_solution_id_foreign` (`solution_id`),
  KEY `feedbacks_user_id_foreign` (`user_id`),
  CONSTRAINT `feedbacks_solution_id_foreign` FOREIGN KEY (`solution_id`) REFERENCES `solutions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `feedbacks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.feedbacks: ~2 rows (approximately)
DELETE FROM `feedbacks`;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` (`id`, `feedback_content`, `user_id`, `solution_id`, `parent_id`, `is_approved`, `created_at`, `updated_at`) VALUES
	(1, 'ok', 1, '1', 0, 1, '2021-07-27 22:59:13', '2021-07-28 05:28:45'),
	(2, '<p>dfffdfđfd</p>', 1, '1', 1, 1, '2021-07-28 08:54:57', '2021-07-28 08:56:35');
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.migrations: ~21 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
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
	(31, '2021_07_25_094633_create_chat_messages_table', 3),
	(35, '2021_08_11_160509_create_upgrades_table', 4),
	(36, '2021_08_11_160901_create_orders_table', 4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.model_has_permissions
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int(11) NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.model_has_permissions: ~29 rows (approximately)
DELETE FROM `model_has_permissions`;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 1),
	(2, 'App\\Models\\User', 1),
	(5, 'App\\Models\\User', 1),
	(6, 'App\\Models\\User', 1),
	(7, 'App\\Models\\User', 1),
	(8, 'App\\Models\\User', 1),
	(9, 'App\\Models\\User', 1),
	(10, 'App\\Models\\User', 1),
	(11, 'App\\Models\\User', 1),
	(12, 'App\\Models\\User', 1),
	(13, 'App\\Models\\User', 1),
	(14, 'App\\Models\\User', 1),
	(15, 'App\\Models\\User', 1),
	(16, 'App\\Models\\User', 1),
	(17, 'App\\Models\\User', 1),
	(18, 'App\\Models\\User', 1),
	(19, 'App\\Models\\User', 1),
	(20, 'App\\Models\\User', 1),
	(21, 'App\\Models\\User', 1),
	(22, 'App\\Models\\User', 1),
	(23, 'App\\Models\\User', 1),
	(24, 'App\\Models\\User', 1),
	(25, 'App\\Models\\User', 1),
	(26, 'App\\Models\\User', 1),
	(27, 'App\\Models\\User', 1),
	(28, 'App\\Models\\User', 1),
	(2, 'App\\Models\\User', 4),
	(22, 'App\\Models\\User', 6),
	(23, 'App\\Models\\User', 6);
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.model_has_roles
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.model_has_roles: ~3 rows (approximately)
DELETE FROM `model_has_roles`;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(2, 'App\\Models\\User', 1),
	(1, 'App\\Models\\User', 4),
	(3, 'App\\Models\\User', 6);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.notifications
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.notifications: ~0 rows (approximately)
DELETE FROM `notifications`;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.oauth_access_tokens
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.oauth_access_tokens: ~12 rows (approximately)
DELETE FROM `oauth_access_tokens`;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('1358acc3d8aaf7c00fde7cfaf4afecff0bc6a778fd3d9bbeaf4965a5e7c716ad80597d9cc8670fba', 6, 1, 'Personal Access Token', '[]', 0, '2021-08-08 00:16:51', '2021-08-08 00:16:51', '2022-08-08 00:16:51'),
	('38d5df0cd80a6afaafabefd6505ce2646294e38335ebb1ae13a91f98c29ccdbbf7cded1b07084986', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-11 19:38:49', '2021-08-11 19:38:49', '2022-08-11 19:38:49'),
	('3e2ccaa71609f0e8e1f14ddd8d2c5bb63aeb12d04d2b151719fdc0150bedaa29abf3b14c41b2a11c', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-12 15:35:20', '2021-08-12 15:35:20', '2022-08-12 15:35:20'),
	('5622c7db8aa8b7e7405bdb4fe5b2349abb87da7342f6d05e445746f068950c8958ca76a83af2dc85', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-13 22:21:05', '2021-08-13 22:21:05', '2022-08-13 22:21:05'),
	('616ae9a0d24a80fe4ce44f3ab2a84c6794f630349b5e42290d122bd7383c5ed6382bf4a0a18bec2b', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-12 23:46:32', '2021-08-12 23:46:32', '2022-08-12 23:46:32'),
	('6272041fad52d357824fbd1f751809e2aaa03c7ae8fc494a2a8e2f84e35030115e184f49dd95a5e1', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-08 00:15:35', '2021-08-08 00:15:35', '2022-08-08 00:15:35'),
	('62fe08e2b4a7615504b16ab1f6d02bd093cceda4fa91c7e222b99df64bc636d1ecda299e1b5392bf', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-13 22:23:35', '2021-08-13 22:23:35', '2022-08-13 22:23:35'),
	('6db413b2c1ede2d05d2281ce666f4837699aba3f7fddb40c7e7adcceb76a0b82870a66094b373cf8', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-12 22:22:10', '2021-08-12 22:22:10', '2022-08-12 22:22:10'),
	('7787e9ea29a6698896c19c1a4f953477ecef465ccc39a3393a4dc821de2bfb144637f6909008c6d0', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-12 20:32:29', '2021-08-12 20:32:29', '2022-08-12 20:32:29'),
	('ad4c749a5dd9dd865a7816aacd105e85a87a4e7783326c19c7b091df1c7570a1da996522b45a7cc1', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-12 22:25:19', '2021-08-12 22:25:19', '2022-08-12 22:25:19'),
	('da14162db41066dd9e49558dfb46d1f79ae0c7d35dedac7eb6e8af0947851650730e3cb6606171bd', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-13 22:26:16', '2021-08-13 22:26:16', '2022-08-13 22:26:16'),
	('ffdab722fe005e3eae0a5cb6d552e9d3bf0b98cf2a30029c2c1759e9b3f1ece2f676748f1fdb6361', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-19 02:24:35', '2021-07-19 02:24:35', '2022-07-19 02:24:35');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.oauth_auth_codes
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.oauth_auth_codes: ~0 rows (approximately)
DELETE FROM `oauth_auth_codes`;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.oauth_clients
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.oauth_clients: ~1 rows (approximately)
DELETE FROM `oauth_clients`;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'admin', 'cqaoIFbsHmtZwf6qSyTnYPzLwgrTHFKE7eUPvTee', NULL, 'http://localhost', 1, 0, 0, '2021-07-18 09:25:44', '2021-07-18 09:25:44');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.oauth_personal_access_clients
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.oauth_personal_access_clients: ~1 rows (approximately)
DELETE FROM `oauth_personal_access_clients`;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2021-07-18 09:25:44', '2021-07-18 09:25:44');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.oauth_refresh_tokens
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.oauth_refresh_tokens: ~0 rows (approximately)
DELETE FROM `oauth_refresh_tokens`;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.orders
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_nr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upgrade_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '1000',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_upgrade_id_foreign` (`upgrade_id`),
  CONSTRAINT `orders_upgrade_id_foreign` FOREIGN KEY (`upgrade_id`) REFERENCES `upgrades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-vue.orders: ~2 rows (approximately)
DELETE FROM `orders`;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `order_nr`, `upgrade_id`, `user_id`, `amount`, `status`, `expiration`, `created_at`, `updated_at`) VALUES
	(1, '1308211OEAVN', 1, 1, 1000, 'thành công', '2021-09-13 23:26:56', '2021-08-13 23:26:56', '2021-08-13 23:53:16'),
	(2, '1308211TJERE', 1, 1, 1000, 'Chờ thanh toán', '2021-09-13 23:30:56', '2021-08-13 23:30:56', '2021-08-13 23:30:56');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.permissions
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.permissions: ~26 rows (approximately)
DELETE FROM `permissions`;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'edit challenges', 'api', '2021-07-18 08:31:53', '2021-07-18 08:31:53'),
	(2, 'delete challenges', 'api', '2021-07-18 08:31:53', '2021-07-18 08:31:53'),
	(5, 'edit categories', 'api', '2021-07-18 08:31:53', '2021-07-18 08:31:53'),
	(6, 'delete categories', 'api', '2021-07-18 08:31:53', '2021-07-18 08:31:53'),
	(7, 'vip users', 'api', '2021-07-18 08:31:53', '2021-08-06 15:35:03'),
	(8, 'login admin', 'api', '2021-07-18 08:31:53', '2021-07-18 08:31:53'),
	(9, 'edit users', 'api', '2021-08-06 15:36:11', '2021-08-06 15:36:11'),
	(10, 'delete users', 'api', '2021-08-06 15:36:25', '2021-08-06 15:36:25'),
	(11, 'edit roles', 'api', '2021-08-06 15:36:39', '2021-08-06 15:36:39'),
	(12, 'delete roles', 'api', '2021-08-06 15:36:50', '2021-08-06 15:36:50'),
	(13, 'create roles', 'api', '2021-08-06 15:37:04', '2021-08-06 15:37:04'),
	(14, 'create users', 'api', '2021-08-06 15:37:18', '2021-08-06 15:37:18'),
	(15, 'create permissions', 'api', '2021-08-06 15:37:35', '2021-08-06 15:37:35'),
	(16, 'edit permissions', 'api', '2021-08-06 15:37:44', '2021-08-06 15:37:44'),
	(17, 'delete permissions', 'api', '2021-08-06 15:37:57', '2021-08-06 15:38:10'),
	(18, 'create categories', 'api', '2021-08-06 15:38:38', '2021-08-06 15:38:38'),
	(19, 'create challenges', 'api', '2021-08-06 15:38:48', '2021-08-06 15:38:48'),
	(20, 'edit solutions', 'api', '2021-08-06 15:39:14', '2021-08-06 15:39:14'),
	(21, 'delete solutions', 'api', '2021-08-06 15:39:24', '2021-08-06 15:39:24'),
	(22, 'chat', 'api', '2021-08-06 15:42:03', '2021-08-06 15:42:03'),
	(23, 'create solutions', 'api', '2021-08-06 15:42:43', '2021-08-06 15:42:43'),
	(24, 'create upgrades', 'api', '2021-08-12 21:34:23', '2021-08-12 21:34:34'),
	(25, 'delete upgrades', 'api', '2021-08-12 21:54:09', '2021-08-12 21:54:09'),
	(26, 'edit upgrades', 'api', '2021-08-12 21:55:02', '2021-08-12 21:55:02'),
	(27, 'edit orders', 'api', '2021-08-12 21:56:30', '2021-08-12 21:56:30'),
	(28, 'delete orders', 'api', '2021-08-12 22:01:02', '2021-08-12 22:01:02');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.roles: ~3 rows (approximately)
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'user', 'api', '2021-07-18 08:31:54', '2021-07-26 16:01:58'),
	(2, 'admin', 'api', '2021-07-18 08:31:54', '2021-07-18 08:31:54'),
	(3, 'member', 'api', '2021-07-18 08:31:54', '2021-08-06 15:30:37');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.role_has_permissions
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.role_has_permissions: ~40 rows (approximately)
DELETE FROM `role_has_permissions`;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(22, 1),
	(23, 1),
	(1, 2),
	(2, 2),
	(5, 2),
	(6, 2),
	(7, 2),
	(8, 2),
	(9, 2),
	(10, 2),
	(11, 2),
	(12, 2),
	(13, 2),
	(14, 2),
	(15, 2),
	(16, 2),
	(17, 2),
	(18, 2),
	(19, 2),
	(20, 2),
	(21, 2),
	(22, 2),
	(23, 2),
	(24, 2),
	(25, 2),
	(26, 2),
	(27, 2),
	(28, 2),
	(1, 3),
	(2, 3),
	(5, 3),
	(6, 3),
	(7, 3),
	(8, 3),
	(18, 3),
	(19, 3),
	(20, 3),
	(21, 3),
	(22, 3),
	(23, 3);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.solutions
DROP TABLE IF EXISTS `solutions`;
CREATE TABLE IF NOT EXISTS `solutions` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_github` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `demo_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `challen_id` int(10) unsigned NOT NULL,
  `number_like` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `solutions_link_github_unique` (`link_github`),
  UNIQUE KEY `solutions_demo_url_unique` (`demo_url`),
  KEY `solutions_user_id_foreign` (`user_id`),
  KEY `solutions_challen_id_foreign` (`challen_id`),
  CONSTRAINT `solutions_challen_id_foreign` FOREIGN KEY (`challen_id`) REFERENCES `challenges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `solutions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.solutions: ~1 rows (approximately)
DELETE FROM `solutions`;
/*!40000 ALTER TABLE `solutions` DISABLE KEYS */;
INSERT INTO `solutions` (`id`, `title`, `description`, `link_github`, `demo_url`, `user_id`, `challen_id`, `number_like`, `created_at`, `updated_at`) VALUES
	('1', 'upload images', '<p>Đ&oacute; l&agrave; một dự &aacute;n tuyệt vời để l&agrave;m việc.&nbsp;Do l&uacute;c đầu, t&ocirc;i nghĩ rằng n&oacute; sẽ kh&oacute; khăn nhưng t&ocirc;i thấy n&oacute; rất vui v&agrave; t&ocirc;i đ&atilde; học được rất nhiều điều trong qu&aacute; tr&igrave;nh thực hiện n&oacute;.</p>\n\n<p>C&ocirc;ng nghệ: T&ocirc;i đ&atilde; sử dụng bộ nhớ firebase l&agrave;m m&aacute;y chủ của m&igrave;nh</p>\n\n<p>Farmwork: React.js Material UI</p>\n\n<p>Th&aacute;ch thức: Đ&oacute; l&agrave; th&aacute;ch thức khi kết nối phản ứng v&agrave; cơ sở lửa.</p>', 'https://github.com/FayVik/Image-uploader', 'https://image-uploader-one.vercel.app/', 4, 1, 0, '2021-07-27 22:57:30', '2021-07-29 09:47:30');
/*!40000 ALTER TABLE `solutions` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.upgrades
DROP TABLE IF EXISTS `upgrades`;
CREATE TABLE IF NOT EXISTS `upgrades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '1000',
  `period` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-vue.upgrades: ~1 rows (approximately)
DELETE FROM `upgrades`;
/*!40000 ALTER TABLE `upgrades` DISABLE KEYS */;
INSERT INTO `upgrades` (`id`, `name`, `description`, `price`, `period`, `created_at`, `updated_at`) VALUES
	(1, 'Premium 1 tháng', '<p>Premium 1 th&aacute;ng</p>', 1000, 1, '2021-08-13 23:24:22', '2021-08-13 23:24:22');
/*!40000 ALTER TABLE `upgrades` ENABLE KEYS */;

-- Dumping structure for table laravel-vue.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` int(11) NOT NULL DEFAULT '0',
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online` tinyint(1) NOT NULL DEFAULT '0',
  `socket_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `verify_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table laravel-vue.users: ~3 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `name`, `email`, `gender`, `address`, `phone`, `image`, `online`, `socket_id`, `is_active`, `verify_token`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin', 'admin123@gmail.com', 0, 'Hà Nội', '0387897456', 'files/1627378141-5.jpg', 0, NULL, 1, NULL, NULL, '$2y$10$44L.iEIIrxQrdh0TkN.c6OpenQoONSoc5sV9e1Jk5wOUr0KGmstrK', NULL, '2021-07-18 09:00:25', '2021-07-29 10:57:24'),
	(4, 'hoact', 'hoa02', 'hoa02@gmail', 1, 'qqqqqqq', '09566333222', 'files/1627381978-request_image.png', 0, NULL, 0, NULL, NULL, '$2y$10$44L.iEIIrxQrdh0TkN.c6OpenQoONSoc5sV9e1Jk5wOUr0KGmstrK', NULL, '2021-06-27 10:30:10', '2021-08-07 18:03:34'),
	(6, 'mentor', 'mentor', 'mentor@gmail.com', 0, 'mentor', '34342144', NULL, 0, NULL, 1, NULL, NULL, '$2y$10$3oniatozTDmNV1Fj6Sxni.4Jd.iR2l2MO7FJPlgo91ZKEU01KCUXq', NULL, '2021-08-07 15:44:02', '2021-08-07 15:54:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
