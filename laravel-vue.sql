-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 26, 2021 at 04:14 PM
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

INSERT INTO `challenges` (`id`, `title`, `slug`, `description`, `language`, `link_figma`, `image`, `resources`, `level`, `cate_challen_id`, `created_at`, `updated_at`) VALUES
(1, 'dddđ', 'dddđ', 'dddđ', 'dddđ', 'dddđ', 'dddđ', 'dddđ', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `challenge_categories`
--

CREATE TABLE `challenge_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `challenge_categories`
--

INSERT INTO `challenge_categories` (`id`, `name`, `slug`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'dddđ', 'dddđ', 'dddđ', 'dddđ', NULL, NULL);

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
(4, 2, 1, 'dd', '2021-07-25 19:27:31', '2021-07-25 19:27:31');

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

-- --------------------------------------------------------

--
-- Table structure for table `information_users`
--

CREATE TABLE `information_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int(11) NOT NULL DEFAULT '0',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 1),
(8, 'App\\Models\\User', 1);

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
(1, 'App\\Models\\User', 2);

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
('0bddcad4bc3484c3bf5d145d3b93220a693c16c2bdfb653a5e1513207307ae0bc1668db2f2c778fe', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-26 03:37:44', '2021-07-26 03:37:44', '2022-07-26 10:37:44'),
('1fc7bc4ab4a0a303f45e92dfad6dae994fbb101e8e9dd4f99150cbbc9aeef64e971c09cf40569007', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 03:12:42', '2021-07-18 03:12:42', '2022-07-18 10:12:42'),
('22885d23fba7cf996bdd995447f20f28b259b0faa907a9596fe10ac609b590fab54581052ab85ccb', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 10:31:20', '2021-07-18 10:31:20', '2022-07-18 17:31:20'),
('24191d6b26e4de8374e5493cacf2ae6b838304b0a810f309d4e0d2f18b547eaa08540f80503690ee', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:41:39', '2021-07-18 02:41:39', '2022-07-18 09:41:39'),
('279c3c8a47a5e1087aa4fc5a64eb107d9fb6ce2191770ff336740ca471a322d749b5e5dd3859b135', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:40:51', '2021-07-18 02:40:51', '2022-07-18 09:40:51'),
('27fc317da48d1d7e0aa5de80bc3b860cf9ff60c030c60fe57883d0bd6860a6cfc46422966850e643', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 18:50:18', '2021-07-18 18:50:18', '2022-07-19 01:50:18'),
('37c67b282231be735df35164c8ff5cc0d565b3946f3c33fe081415f908094548a6d363607302a845', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-20 06:43:54', '2021-07-20 06:43:54', '2022-07-20 13:43:54'),
('3e46d3ac93ae4ea0ebe99bfcaa4b8300e3e4e823d1a7df5784827c16dbbc77738a88007d6a053cfe', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 18:21:30', '2021-07-18 18:21:30', '2022-07-19 01:21:30'),
('3ec6f318360e087955d30c49ca63a9ec015d5ee143f355c43d207196ecb2d11af7f9aaaef0804fea', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 04:00:07', '2021-07-18 04:00:07', '2022-07-18 11:00:07'),
('4154e8e3c924090cd55c650b9b32bcefee0c35385d0dfc50e46a0c38b2c5fb952af074bdd0eb1ede', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 10:03:35', '2021-07-18 10:03:35', '2022-07-18 17:03:35'),
('444ca553e27c921cf5a1713b85516b7da58746bb9eb6fee269d7e083d2025d18b0e49bd51b418473', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 21:04:19', '2021-07-18 21:04:19', '2022-07-19 04:04:19'),
('4a8570a6deb47706a26eb62129643db85f56e940c7b873acb379cf1fe3a2796bc4d79dc9a732e224', 2, 1, 'Personal Access Token', '[]', 0, '2021-07-26 09:10:13', '2021-07-26 09:10:13', '2022-07-26 16:10:13'),
('52c1909e43fb8f794d9fa434c09d6d644829ceb8a38dedace01a661b7a905c50ccc3d298b918e415', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 11:35:02', '2021-07-18 11:35:02', '2022-07-18 18:35:02'),
('57afadfe5524522242989010f9f84d20eec7d90876be7a33ca92221bd7e9689d705d8fac68edd26f', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 11:42:04', '2021-07-18 11:42:04', '2022-07-18 18:42:04'),
('5d0b8282b06b4af301359f1cbb4ed00b8a04327809ef9ac5db0db2aa19b40ed064e1cb12a6da68a9', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-25 03:43:00', '2021-07-25 03:43:00', '2022-07-25 10:43:00'),
('6148600d0ee7982668e041d747d610cae104828fb5b716a260eb3fa5a504da2743c2d2d1479c582e', 2, 1, 'Personal Access Token', '[]', 1, '2021-07-26 08:05:18', '2021-07-26 08:05:18', '2022-07-26 15:05:18'),
('670f9499aaa8d717769dbacbf92a63e137261600f55331135ee5caf5d4c90eeff97f60e59042e1c6', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:45:33', '2021-07-18 02:45:33', '2022-07-18 09:45:33'),
('6becf3f6b72a8db8fc44f86db75ef1aed9aef96a454a38db0ee98086a1c29618e987f76e45dfc272', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 11:32:29', '2021-07-18 11:32:29', '2022-07-18 18:32:29'),
('71c5987a41d2e3dce40d52e035ad586362b6402b3122dc9f01fb1884037440232e5b5e50761176d2', 2, 1, 'LaravelPassport', '[]', 0, '2021-07-26 08:05:01', '2021-07-26 08:05:01', '2022-07-26 15:05:01'),
('72d362e1dc7e4c4d3a9c359fb1428d74b4d0c97913b98a2eb095ffec1a6ebac3ad9f4a3ef325d840', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 03:01:12', '2021-07-18 03:01:12', '2022-07-18 10:01:12'),
('757b78cfdfe5516831274a605626501215a4291bbf93281f94bcf7c31f05295c7a5e00388feb8c9f', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-26 01:41:20', '2021-07-26 01:41:20', '2022-07-26 08:41:20'),
('7f77327192d9429d5e72b37a098bda6d3cdc8dd89d5c427c98fd8f0084ea4c6da265149a9e4d065c', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-25 05:45:06', '2021-07-25 05:45:06', '2022-07-25 12:45:06'),
('8076c0c575befbca9379785a7b6127bf10fe59486474ff33441ccb554b7bc1018d443f546b60d5ac', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-26 01:17:35', '2021-07-26 01:17:35', '2022-07-26 08:17:35'),
('83879bdc4648553b0b14c3692194f9d6c1ba256cbe23d56c9a7d50956ab765cf79dad0f1eabe9ef4', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-19 05:53:28', '2021-07-19 05:53:28', '2022-07-19 12:53:28'),
('86b3940f62a23b824e5487510599205e669bc0dd4c0a9b5166b2cac399afbe2f96e90c0fa3c5c289', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-26 08:18:19', '2021-07-26 08:18:19', '2022-07-26 15:18:19'),
('8cfbb2fc509ed4167df01f17aadf387fe6b2f69ebfc9d9bdc2ecab1c0ac9c52fd5b9f6d273f56f78', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 18:48:22', '2021-07-18 18:48:22', '2022-07-19 01:48:22'),
('a0cfafc88e104b2f4b7bcbbf8b49cfc12baef36772d4b74dff6c47d7ba3482381fae42a98d3df5ec', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:53:26', '2021-07-18 02:53:26', '2022-07-18 09:53:26'),
('a0d1b5c09e7c776e05e421c1b413f4a274cd14bf1088e9b5ac4b441afcedc8173f1d3dc3f88215aa', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-20 09:58:29', '2021-07-20 09:58:29', '2022-07-20 16:58:29'),
('aac961bfc1f4cdca7bdecf661ca2c376118dcb894aa439b1e389c4318b87e1e6709f9a21b2b5c19a', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 08:52:47', '2021-07-18 08:52:47', '2022-07-18 15:52:47'),
('ab9401e0d85eb1f539be2e8e404d1dfe1e2f3b062e8c74f304247f815dbf936d5605657f03947c27', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-25 18:24:09', '2021-07-25 18:24:09', '2022-07-26 01:24:09'),
('afd55afc3a0b573414c82dd370f5286713421c271c75daf290d19a8586b5e2d553aec11f3b078731', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:59:03', '2021-07-18 02:59:03', '2022-07-18 09:59:03'),
('b001bcefed1cdba5d255154d74c0609f26f74ac1feb53654a67ad3b9b15e67792d9990abb7f359aa', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 19:53:07', '2021-07-18 19:53:07', '2022-07-19 02:53:07'),
('b109168ebaeca58a6d4fd25af6a45b9c1805355163b939102019cab9aee2cc74a17731a8366b3935', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-26 08:29:03', '2021-07-26 08:29:03', '2022-07-26 15:29:03'),
('be62f5e244e1b1dffffffdc32ef57ffd1c3bb9f00db24131dab154317740747e0a3c0be2ff4c51db', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-25 18:24:07', '2021-07-25 18:24:07', '2022-07-26 01:24:07'),
('ce39e0c644eeb2940ee6eac75b1ec82eecfd43d5d6466a3820753c432d69cd75f57697a06231dbeb', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 19:52:35', '2021-07-18 19:52:35', '2022-07-19 02:52:35'),
('cecc4999933604292c119d15410989329f0c2f420b9163280abede01ea0e884744fe1446c92d1c7f', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 18:53:20', '2021-07-18 18:53:20', '2022-07-19 01:53:20'),
('d104caf5c42614b88c1e07deb1f37d77b0a7e2be5b44e2dee8cd58d560489922ccd6015d055a5ffd', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:46:05', '2021-07-18 02:46:05', '2022-07-18 09:46:05'),
('d7bed6379f32e8b699b41a4022283e4ebf9b0a090262cb1f8af92f15cbb48f270b50835a806104f6', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:47:31', '2021-07-18 02:47:31', '2022-07-18 09:47:31'),
('d8b271d22bf6c9d5113e8dc722541d7a51c5d768f2a94e2f04f737cc06728d0e55ca42bbe172a8df', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 19:09:23', '2021-07-18 19:09:23', '2022-07-19 02:09:23'),
('d9966293136b670285aca854db0e3e970a792ce40c8ad17bf20c568724c5373fb29dcbeea3a8973d', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:57:20', '2021-07-18 02:57:20', '2022-07-18 09:57:20'),
('dab85f7727f368fc9c5711757893abb1a24b196dbc7a85812fad1d596155a2f9f9c59ced6712656c', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 10:37:05', '2021-07-18 10:37:05', '2022-07-18 17:37:05'),
('ded042fbc943f6e981e35f03d27270103fefc213c2008a2b0609cae60afe532d67f03c922ab56ed3', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 18:27:18', '2021-07-18 18:27:18', '2022-07-19 01:27:18'),
('ded59e4da7c2a52b91aafea2b88d123fcb409fc550b49074c03fb42f12dc2778e9ceb4eb5d331eb7', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 10:47:16', '2021-07-18 10:47:16', '2022-07-18 17:47:16'),
('e0248416c6d977af4716b3ad4059ec9ad6c5295dc9d657356a42a445acf914986c4c7f1cc2f561ea', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-20 06:57:51', '2021-07-20 06:57:51', '2022-07-20 13:57:51'),
('e68e7b4c9405c15c84744d07c59a371ff8a0812daf2a9fac7c492676353d000a9e2cdb55575fb5fa', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 11:32:29', '2021-07-18 11:32:29', '2022-07-18 18:32:29'),
('e8e598d9a494e0bdad8ce182833e3825f1f0f7f563b035b11238a0c69cd9a9c39d01bd72f0255e7c', 1, 1, 'Personal Access Token', '[]', 1, '2021-07-18 11:13:59', '2021-07-18 11:13:59', '2022-07-18 18:13:59'),
('ec03f95785fb227f93b13781659c5b85d39cd1ee4d399c692b7242035c174121ca2b38edf6365e8f', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:26:23', '2021-07-18 02:26:23', '2022-07-18 09:26:23'),
('f3100ae70a7de9ccfe72455431350ab1bce85062f09dfcac4f6f81401f542ea7fe6aa5bc73082cda', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:39:33', '2021-07-18 02:39:33', '2022-07-18 09:39:33'),
('fd6ac54b43d79bbec6be817ee92f1210e4e2da4c55976fb6686045c97ebe7974c55fd1cfcaee76f2', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 03:11:39', '2021-07-18 03:11:39', '2022-07-18 10:11:39'),
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
(1, 'edit challenges', 'web', '2021-07-18 01:31:53', '2021-07-18 01:31:53'),
(2, 'delete challenges', 'web', '2021-07-18 01:31:53', '2021-07-18 01:31:53'),
(3, 'publish challenges', 'web', '2021-07-18 01:31:53', '2021-07-18 01:31:53'),
(4, 'unpublish challenges', 'web', '2021-07-18 01:31:53', '2021-07-18 01:31:53'),
(5, 'edit categories', 'web', '2021-07-18 01:31:53', '2021-07-18 01:31:53'),
(6, 'delete categories', 'web', '2021-07-18 01:31:53', '2021-07-18 01:31:53'),
(7, 'publish categories', 'web', '2021-07-18 01:31:53', '2021-07-18 01:31:53'),
(8, 'login admin', 'web', '2021-07-18 01:31:53', '2021-07-18 01:31:53');

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
(1, 'user', 'web', '2021-07-18 01:31:54', '2021-07-26 09:01:58'),
(2, 'admin', 'web', '2021-07-18 01:31:54', '2021-07-18 01:31:54'),
(3, 'super-admin', 'web', '2021-07-18 01:31:54', '2021-07-18 01:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(3, 1),
(3, 2),
(4, 2);

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

-- --------------------------------------------------------

--
-- Table structure for table `solution_users`
--

CREATE TABLE `solution_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `solution_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'admin', 'admin', 'admin123@gmail.com', 1, 'Hà Nội', '0387897456', 'files/1626599096-13.jpg', 0, NULL, 1, NULL, NULL, '$2y$10$44L.iEIIrxQrdh0TkN.c6OpenQoONSoc5sV9e1Jk5wOUr0KGmstrK', NULL, '2021-07-18 02:00:25', '2021-07-18 02:04:56'),
(2, NULL, 'hoact', 'hoact@gmail.com', 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, '$2y$10$NJ/IXAdCbWmnhOTwFkL4QuKljY5dW36KtOWITK/vW7K4Pip4tEtMi', NULL, '2021-07-26 08:05:00', '2021-07-26 08:05:00');

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
-- Indexes for table `information_users`
--
ALTER TABLE `information_users`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `solution_users`
--
ALTER TABLE `solution_users`
  ADD PRIMARY KEY (`user_id`,`solution_id`),
  ADD KEY `solution_users_solution_id_foreign` (`solution_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `challenge_categories`
--
ALTER TABLE `challenge_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `information_users`
--
ALTER TABLE `information_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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

--
-- Constraints for table `solution_users`
--
ALTER TABLE `solution_users`
  ADD CONSTRAINT `solution_users_solution_id_foreign` FOREIGN KEY (`solution_id`) REFERENCES `solutions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `solution_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
