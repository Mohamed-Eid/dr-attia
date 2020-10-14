-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2020 at 04:53 PM
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
-- Database: `dr-attia2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Q0VPV1sROzg7ZqT0RggcGWyqacIMk9zGtA0r5Ybn.jpeg', '2020-10-11 13:16:00', '2020-10-11 13:16:00'),
(3, 'koeu1h43le2K57zfwI17xH2fZQpDurqE2Z2MeCTC.jpeg', '2020-10-11 13:16:12', '2020-10-11 13:16:12'),
(4, 'j7rJ7iejxLjtOluYUYxk5coU5mlX7w4LpG4IFPC4.png', '2020-10-13 23:11:07', '2020-10-13 23:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `locale`) VALUES
(3, 2, 'تست 31', 'ar'),
(4, 2, 'test 31', 'en'),
(5, 3, 'تست 311', 'ar'),
(6, 3, 'test 311', 'en'),
(7, 4, 'تست', 'ar'),
(8, 4, 'test', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surgery_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `surgery_id`, `created_at`, `updated_at`) VALUES
(11, 'OBAtZYJZ2RqWtTFF7GMJjxZ7WVWP0k2VoifD8A1B.jpeg', 1, '2020-10-12 09:02:14', '2020-10-12 09:02:14'),
(12, 'faDFfBwpZI0lecAAml709j4HMr2eqjytkOU7aaJP.png', 1, '2020-10-12 09:02:14', '2020-10-12 09:02:14'),
(13, 'FkcjlmG1rRlvqk1hR4fhUP7vw7RS0VmNjzmOnZ4O.jpeg', 1, '2020-10-12 12:15:07', '2020-10-12 12:15:07'),
(14, '9pbQNjFK7maU2nEf9B6edqlNM5ErBRfYQF9Xebhv.png', 1, '2020-10-12 12:15:07', '2020-10-12 12:15:07'),
(15, 'naN2Aq4F1ZVwMwzuF6D2bz3E4Gi0hwF5dVxjcDvF.jpeg', 1, '2020-10-12 12:15:07', '2020-10-12 12:15:07'),
(16, 'Whjz3Ln6KZBTx6mkGuFa2D9D8UuZ4onhtD7LZOWZ.jpeg', 3, '2020-10-12 12:15:28', '2020-10-12 12:15:28'),
(19, '8apimSYpD5LqqaWs46NSFqWWzpgY7CSM9AYKULju.png', 1, '2020-10-12 12:15:40', '2020-10-12 12:15:40'),
(21, 'VXdyomzXoxwmdWuuhSRzsjxVpCqjoEMiT2vTFYpM.jpeg', 1, '2020-10-12 12:15:41', '2020-10-12 12:15:41'),
(22, 'Jgery6YbQ9zexoWvVkphIwdgXUqzxKZX5P1qUrmg.jpeg', 1, '2020-10-12 14:15:58', '2020-10-12 14:15:58'),
(23, 'LHtXbgahF1iv2yZyMamJPgNRppi90LRsrsBDfRse.jpeg', 1, '2020-10-12 14:15:59', '2020-10-12 14:15:59'),
(24, 'lNMg49zJaEt2zZ5AJCCObNWREIYmlvcCbizK2jnA.jpeg', 1, '2020-10-12 14:15:59', '2020-10-12 14:15:59'),
(25, 'kjrPhxwanQl24YUr34JmXdBjcsP49mNcLY1CLfL2.jpeg', 1, '2020-10-12 14:15:59', '2020-10-12 14:15:59'),
(26, 'Bf4IssLQjMla6p3ZQqiT8fdMmtrzHbjICVjLjMAl.png', 1, '2020-10-13 23:14:59', '2020-10-13 23:14:59'),
(27, '1aGqIQLc656c9VdZEp1UeBYnqbvGWHU21xSx0HDD.png', 1, '2020-10-13 23:15:29', '2020-10-13 23:15:29'),
(28, '0i7bL5pbP5PLb0huU5sndWMmfaHr1MVhw6Q1jWTX.png', 1, '2020-10-13 23:15:30', '2020-10-13 23:15:30'),
(29, 'vnjb7HzcEH3hk1jV5fkWG3Pky91wMp5UrvFoqXQQ.jpeg', 1, '2020-10-13 23:15:30', '2020-10-13 23:15:30'),
(30, 'XA9Nkqb4ZZlMa61hUz4AeVSjamTKu1e2GEb8xCA4.png', 1, '2020-10-13 23:15:31', '2020-10-13 23:15:31');

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
(5, '2020_04_07_204105_laratrust_setup_tables', 1),
(73, '2020_06_24_053603_create_categories_table', 2),
(74, '2020_06_24_053727_create_category_translations_table', 2),
(75, '2020_10_11_110146_create_surgeries_table', 2),
(76, '2020_10_11_110204_create_surgery_translations_table', 2),
(77, '2020_10_11_153605_create_images_table', 3),
(80, '2020_10_11_154317_create_question_answers_table', 4),
(81, '2020_10_11_155409_create_question_answer_translations_table', 4),
(82, '2020_10_11_153938_create_videos_table', 5),
(83, '2020_10_11_155938_create_video_translations_table', 5),
(84, '2020_10_12_130505_create_posts_table', 6),
(85, '2020_10_12_130518_create_post_translations_table', 6),
(88, '2020_10_14_013113_create_pages_table', 7),
(89, '2020_10_14_013650_create_page_translations_table', 7),
(90, '2020_10_14_113808_create_page_images_table', 8),
(92, '2020_10_14_133815_create_settings_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'DQx9ZevQw3dyxZRLYYD0dD95r6bche1INuwAHVOs.png', '2020-10-14 07:54:02', '2020-10-14 10:11:34'),
(3, 'E3h7YkALKrGfvyZr8vwa8NaHly90GsQjUmvTFXMs.jpeg', '2020-10-14 07:59:35', '2020-10-14 09:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `page_images`
--

CREATE TABLE `page_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_images`
--

INSERT INTO `page_images` (`id`, `image`, `page_id`, `created_at`, `updated_at`) VALUES
(1, 'YP4jmUiyXmYrtFPte3nr7p14lOyJznzaUcE4yZ0h.jpeg', 3, '2020-10-14 09:45:57', '2020-10-14 09:45:57'),
(2, 'G8sLCEj8ZjHonc6xR94rj7Xlx574WYnvTw6ZuwCy.png', 3, '2020-10-14 09:45:57', '2020-10-14 09:45:57'),
(3, 'xUy4ZdAnjad1OFUVr2HXf4aLRUKCdGiGWu81RbHL.jpeg', 3, '2020-10-14 09:45:57', '2020-10-14 09:45:57'),
(4, 'Mkxu7ddoqiy4q0oprMulySeb3GkqGBnwYVib8Vcg.jpeg', 3, '2020-10-14 09:46:10', '2020-10-14 09:46:10'),
(5, '7d7lZNLBRaU9iWG9VJkHCXV0qXQ9TjgMdwoPoOgS.jpeg', 3, '2020-10-14 09:46:10', '2020-10-14 09:46:10'),
(6, 'ug25uD6RANpOp7hnexhyhmxhzwTxlkH7G6CcZvty.jpeg', 3, '2020-10-14 09:46:11', '2020-10-14 09:46:11'),
(7, 'mqJWv7bujD33tU1qssiuF3mvEQStKAiDAzn31sNH.jpeg', 3, '2020-10-14 09:46:11', '2020-10-14 09:46:11'),
(8, 'tmuucmFiV3k87zI1Mv1uZQf2Y8taODl2scMImESD.jpeg', 3, '2020-10-14 09:46:11', '2020-10-14 09:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `name`, `body`, `locale`) VALUES
(1, 1, 'من نحن', '<p>&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;&nbsp;من نحن&nbsp;</p>', 'ar'),
(2, 1, 'About Us', '<p>&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;&nbsp;About Us&nbsp;</p>', 'en'),
(5, 3, 'تست 3a33', '<p>dstgset3333</p>', 'ar'),
(6, 3, 'test 3233', '<p>sdrtsdtsdt333</p>', 'en');

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
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'create_users', 'Create Users', 'Create Users', '2020-04-13 18:56:17', '2020-04-13 18:56:17'),
(2, 'read_users', 'Read Users', 'Read Users', '2020-04-13 18:56:17', '2020-04-13 18:56:17'),
(3, 'update_users', 'Update Users', 'Update Users', '2020-04-13 18:56:17', '2020-04-13 18:56:17'),
(4, 'delete_users', 'Delete Users', 'Delete Users', '2020-04-13 18:56:17', '2020-04-13 18:56:17'),
(5, 'create_products', 'Create Products', 'Create Products', '2020-04-13 18:56:18', '2020-04-13 18:56:18'),
(6, 'read_products', 'Read Products', 'Read Products', '2020-04-13 18:56:18', '2020-04-13 18:56:18'),
(7, 'update_products', 'Update Products', 'Update Products', '2020-04-13 18:56:18', '2020-04-13 18:56:18'),
(8, 'delete_products', 'Delete Products', 'Delete Products', '2020-04-13 18:56:18', '2020-04-13 18:56:18'),
(9, 'create_cities', 'Create Cities', 'Create Cities', '2020-04-13 18:56:18', '2020-04-13 18:56:18'),
(10, 'read_cities', 'Read Cities', 'Read Cities', '2020-04-13 18:56:18', '2020-04-13 18:56:18'),
(11, 'update_cities', 'Update Cities', 'Update Cities', '2020-04-13 18:56:19', '2020-04-13 18:56:19'),
(12, 'delete_cities', 'Delete Cities', 'Delete Cities', '2020-04-13 18:56:19', '2020-04-13 18:56:19'),
(13, 'create_districts', 'Create Districts', 'Create Districts', '2020-04-13 18:56:19', '2020-04-13 18:56:19'),
(14, 'read_districts', 'Read Districts', 'Read Districts', '2020-04-13 18:56:19', '2020-04-13 18:56:19'),
(15, 'update_districts', 'Update Districts', 'Update Districts', '2020-04-13 18:56:19', '2020-04-13 18:56:19'),
(16, 'delete_districts', 'Delete Districts', 'Delete Districts', '2020-04-13 18:56:19', '2020-04-13 18:56:19'),
(17, 'read_details', 'Read Details', 'Read Details', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(18, 'create_details', 'Create Details', 'Create Details', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(19, 'update_details', 'Update Details', 'Update Details', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(20, 'delete_details', 'Delete Details', 'Delete Details', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(21, 'create_subdetails', 'Create subdetails', 'Create subdetails', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(22, 'read_subdetails', 'Read subdetails', 'Read subdetails', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(23, 'update_subdetails', 'Update subdetails', 'Update subdetails', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(24, 'delete_subdetails', 'Delete subdetails', 'Delete subdetails', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(25, 'read_sales', 'Read sales', 'Read sales', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(26, 'read_orders', 'Read orders', 'Read orders', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(27, 'update_orders', 'Update orders', 'Update orders', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(28, 'delete_orders', 'Delete orders', 'Delete orders', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(29, 'read_members', 'Read members', 'Read members', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(30, 'read_service_numbers', 'Read service_numbers', 'Read service_numbers', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(31, 'update_service_numbers', 'Update service_numbers', 'Update service_numbers', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(32, 'create_banks', 'Create banks', 'Create banks', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(33, 'read_banks', 'Read banks', 'Read banks', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(34, 'update_banks', 'Update banks', 'Update banks', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(35, 'delete_banks', 'Delete banks', 'Delete banks', '2020-04-13 15:56:17', '2020-04-13 15:56:17'),
(36, 'read_categories', 'Read Categories', 'Read Categories', '2020-04-13 16:56:17', '2020-04-13 16:56:17'),
(37, 'create_categories', 'Create Categories', 'Create Categories', '2020-04-13 16:56:17', '2020-04-13 16:56:17'),
(38, 'update_categories', 'Update Categories', 'Update Categories', '2020-04-13 16:56:17', '2020-04-13 16:56:17'),
(39, 'delete_categories', 'Delete Categories', 'Delete Categories', '2020-04-13 16:56:17', '2020-04-13 16:56:17'),
(40, 'create_coupons', 'Create Coupons', 'Create Coupons', '2020-04-13 16:56:17', '2020-04-13 16:56:17'),
(41, 'read_coupons', 'Read Coupons', 'Read Coupons', '2020-04-13 16:56:17', '2020-04-13 16:56:17'),
(42, 'update_coupons', 'Update Coupons', 'Update Coupons', '2020-04-13 16:56:17', '2020-04-13 16:56:17'),
(43, 'delete_coupons', 'Delete Coupons', 'Delete Coupons', '2020-04-13 16:56:17', '2020-04-13 16:56:17'),
(44, 'create_notifications', 'Create Notifications', 'Create Notifications', '2020-04-13 16:56:17', '2020-04-13 16:56:17'),
(45, 'update_about_us', 'Update About Us', 'Update About Us', '2020-04-13 16:56:17', '2020-04-13 16:56:17'),
(46, 'update_terms', 'Update Terms', 'Update Terms', '2020-04-13 16:56:17', '2020-04-13 16:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`permission_id`, `user_id`, `user_type`) VALUES
(1, 4, 'App\\User'),
(2, 4, 'App\\User'),
(3, 4, 'App\\User'),
(5, 4, 'App\\User'),
(6, 4, 'App\\User'),
(7, 4, 'App\\User'),
(8, 4, 'App\\User'),
(9, 4, 'App\\User'),
(10, 4, 'App\\User'),
(11, 4, 'App\\User'),
(12, 4, 'App\\User'),
(13, 4, 'App\\User'),
(14, 4, 'App\\User'),
(15, 4, 'App\\User'),
(16, 4, 'App\\User'),
(17, 4, 'App\\User'),
(19, 4, 'App\\User'),
(22, 4, 'App\\User'),
(23, 4, 'App\\User'),
(24, 4, 'App\\User'),
(25, 4, 'App\\User'),
(26, 4, 'App\\User'),
(30, 4, 'App\\User'),
(31, 4, 'App\\User'),
(33, 4, 'App\\User'),
(1, 5, 'App\\User'),
(2, 5, 'App\\User'),
(3, 5, 'App\\User'),
(4, 5, 'App\\User'),
(5, 5, 'App\\User'),
(6, 5, 'App\\User'),
(7, 5, 'App\\User'),
(8, 5, 'App\\User'),
(9, 5, 'App\\User'),
(10, 5, 'App\\User'),
(11, 5, 'App\\User'),
(12, 5, 'App\\User'),
(13, 5, 'App\\User'),
(14, 5, 'App\\User'),
(15, 5, 'App\\User'),
(16, 5, 'App\\User'),
(17, 5, 'App\\User'),
(18, 5, 'App\\User'),
(19, 5, 'App\\User'),
(20, 5, 'App\\User'),
(21, 5, 'App\\User'),
(22, 5, 'App\\User'),
(23, 5, 'App\\User'),
(24, 5, 'App\\User'),
(25, 5, 'App\\User'),
(26, 5, 'App\\User'),
(27, 5, 'App\\User'),
(28, 5, 'App\\User'),
(29, 5, 'App\\User'),
(30, 5, 'App\\User'),
(31, 5, 'App\\User'),
(32, 5, 'App\\User'),
(33, 5, 'App\\User'),
(34, 5, 'App\\User'),
(35, 5, 'App\\User'),
(1, 7, 'App\\User'),
(2, 7, 'App\\User'),
(3, 7, 'App\\User'),
(4, 7, 'App\\User'),
(5, 7, 'App\\User'),
(6, 7, 'App\\User'),
(7, 7, 'App\\User'),
(8, 7, 'App\\User'),
(9, 7, 'App\\User'),
(10, 7, 'App\\User'),
(11, 7, 'App\\User'),
(12, 7, 'App\\User'),
(13, 7, 'App\\User'),
(14, 7, 'App\\User'),
(15, 7, 'App\\User'),
(16, 7, 'App\\User'),
(17, 7, 'App\\User'),
(18, 7, 'App\\User'),
(19, 7, 'App\\User'),
(20, 7, 'App\\User'),
(21, 7, 'App\\User'),
(22, 7, 'App\\User'),
(23, 7, 'App\\User'),
(24, 7, 'App\\User'),
(26, 7, 'App\\User'),
(27, 7, 'App\\User'),
(28, 7, 'App\\User'),
(29, 7, 'App\\User'),
(30, 7, 'App\\User'),
(31, 7, 'App\\User'),
(32, 7, 'App\\User'),
(33, 7, 'App\\User'),
(34, 7, 'App\\User'),
(35, 7, 'App\\User'),
(36, 7, 'App\\User'),
(37, 7, 'App\\User'),
(38, 7, 'App\\User'),
(39, 7, 'App\\User'),
(40, 7, 'App\\User'),
(41, 7, 'App\\User'),
(42, 7, 'App\\User'),
(43, 7, 'App\\User'),
(44, 7, 'App\\User'),
(45, 7, 'App\\User'),
(46, 7, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surgery_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `image`, `surgery_id`, `created_at`, `updated_at`) VALUES
(2, 'RTT51lTFqFXvAbUW9pu4YiiktrhAOvbVkW9CPikr.jpeg', 3, '2020-10-12 13:41:28', '2020-10-12 13:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `post_translations`
--

CREATE TABLE `post_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_translations`
--

INSERT INTO `post_translations` (`id`, `post_id`, `name`, `body`, `locale`) VALUES
(3, 2, 'تست 3', '<p>sdgsdg</p>', 'ar'),
(4, 2, 'test 3', '<p>sdfgdfg</p>', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `question_answers`
--

CREATE TABLE `question_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `surgery_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_answer_translations`
--

CREATE TABLE `question_answer_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_answer_id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'Super Admin', 'Super Admin', '2020-04-13 18:56:16', '2020-04-13 18:56:16'),
(2, 'admin', 'Admin', 'Admin', '2020-04-13 18:56:21', '2020-04-13 18:56:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(2, 4, 'App\\User'),
(2, 5, 'App\\User'),
(2, 7, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `class`, `key`, `value`, `data`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'text', 'social_links', 'fb_link', 'https://ar-ar.facebook.com/', NULL, NULL, '2020-10-14 13:42:49', '2020-10-14 13:42:49'),
(2, 'location', NULL, 'location', '31.0181953,31.383654900000003', NULL, NULL, '2020-10-14 13:43:48', '2020-10-14 13:43:48'),
(3, 'image', 'slider', 'slider_image_1', '3SGVWPMameycfY3PsZjlAcSvQGyqmpQHn6QdT348.jpeg', NULL, NULL, '2020-10-14 13:45:36', '2020-10-14 13:45:36'),
(4, 'text', 'slider', 'text_ar', 'سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر سلايدر', NULL, 3, '2020-10-14 13:47:49', '2020-10-14 13:47:49'),
(5, 'text', 'slider', 'text_en', 'Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider Slider', NULL, 3, '2020-10-14 13:48:52', '2020-10-14 13:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `surgeries`
--

CREATE TABLE `surgeries` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'icon-default.png',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surgeries`
--

INSERT INTO `surgeries` (`id`, `icon`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'GySCbeF1omYpmprsUDDB83xV3bErOOuVDsrEdfA5.png', 'JbUuMGBnB31cXXJZH0xBEfVIRvrivRvOEDlD3t4a.png', 2, '2020-10-11 13:18:49', '2020-10-11 13:20:38'),
(3, 'Lg4W65x7HocY9qO73skllbEXvo3dQMpIx73jme0p.jpeg', 'XiKXWY7Awhl2LgAWspN3v5vvl9DaLLrOwuTgil3Y.jpeg', 3, '2020-10-12 09:17:18', '2020-10-12 09:17:18'),
(5, 'fqx74cNcVSmbTb7vgMucHnolh25WjrXOlvSY4ysx.jpeg', 'UZyxGWifVwXeYdAIC8RXAqWPz6tLUuP2eJ8DoSH1.png', 2, '2020-10-13 23:29:29', '2020-10-13 23:29:29');

-- --------------------------------------------------------

--
-- Table structure for table `surgery_translations`
--

CREATE TABLE `surgery_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `surgery_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surgery_translations`
--

INSERT INTO `surgery_translations` (`id`, `surgery_id`, `name`, `body`, `locale`, `created_at`, `updated_at`) VALUES
(1, 1, 'شسبشسب', '<p>سشيبشسيبسشي</p>', 'ar', NULL, NULL),
(2, 1, 'sadfasdfgaws', '<p>asfasrdas</p>', 'en', NULL, NULL),
(5, 3, 'تست 3123', '<p>يبساسيبا</p>', 'ar', NULL, NULL),
(6, 3, 'test 3123', '<p>sdfgasdg</p>', 'en', NULL, NULL),
(9, 5, 'تستشش', '<p>شسيبشسيب</p>', 'ar', NULL, NULL),
(10, 5, 'testشش', '<p>ئْر~ٍ[</p>', 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `image`, `email_verified_at`, `password`, `api_token`, `fcm_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'Backend', '2Dev', 'test@test.com', 'default.png', NULL, '$2y$10$/m7n9TcXdvca5qhKJev14.oXutvJhSUKMW2GSw9FD/bU.9ba6ayPu', NULL, NULL, '99meiJQIXRJ54wPEgtcllddo8IgxTpf0lYa0wMWc32Z22XKsSxEyKU8ALwfo', '2020-06-16 21:49:58', '2020-06-24 03:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surgery_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `link`, `surgery_id`, `created_at`, `updated_at`) VALUES
(1, 'uS_SoJWzRXY', 3, '2020-10-12 10:43:51', '2020-10-12 10:43:51'),
(2, 'XBKzpTz65Io', 1, '2020-10-12 14:24:59', '2020-10-12 14:24:59'),
(3, 'GLSG_Wh_YWc', 1, '2020-10-12 14:26:12', '2020-10-12 14:26:12'),
(4, 'fAK9NxsR3es', 1, '2020-10-12 14:27:00', '2020-10-12 14:27:00'),
(5, '0JeJTGjgcco', 3, '2020-10-12 14:27:17', '2020-10-12 14:27:17'),
(6, '0JeJTGjgcco', 1, '2020-10-12 14:27:24', '2020-10-12 14:27:24'),
(7, 'VS_hrPBX500', 1, '2020-10-12 14:27:39', '2020-10-12 14:27:39'),
(8, 'T6Jcl-GqeBA', 1, '2020-10-12 14:27:55', '2020-10-12 14:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `video_translations`
--

CREATE TABLE `video_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `video_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_translations`
--

INSERT INTO `video_translations` (`id`, `video_id`, `name`, `locale`) VALUES
(1, 1, 'تست 3', 'ar'),
(2, 1, 'test 3', 'en'),
(3, 2, 'تست 32', 'ar'),
(4, 2, 'test 32', 'en'),
(5, 3, 'تست 3132', 'ar'),
(6, 3, 'test 321234', 'en'),
(7, 4, 'asfasd', 'ar'),
(8, 4, 'aseraew', 'en'),
(9, 5, 'asfsd', 'ar'),
(10, 5, 'asrtwerta', 'en'),
(11, 6, 'asdfaqwr', 'ar'),
(12, 6, 'qwerqwerq', 'en'),
(13, 7, 'asdtgasedta', 'ar'),
(14, 7, 'sedtastrqw', 'en'),
(15, 8, 'qwe5rt5w', 'ar'),
(16, 8, 'qwe54qw45', 'en');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `category_translations_locale_index` (`locale`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_surgery_id_foreign` (`surgery_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_images`
--
ALTER TABLE `page_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_images_page_id_foreign` (`page_id`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_translations_page_id_locale_unique` (`page_id`,`locale`),
  ADD KEY `page_translations_locale_index` (`locale`);

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
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_surgery_id_foreign` (`surgery_id`);

--
-- Indexes for table `post_translations`
--
ALTER TABLE `post_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_translations_post_id_locale_unique` (`post_id`,`locale`),
  ADD KEY `post_translations_locale_index` (`locale`);

--
-- Indexes for table `question_answers`
--
ALTER TABLE `question_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_answers_surgery_id_foreign` (`surgery_id`);

--
-- Indexes for table `question_answer_translations`
--
ALTER TABLE `question_answer_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question_answer_translations_question_answer_id_locale_unique` (`question_answer_id`,`locale`),
  ADD KEY `question_answer_translations_locale_index` (`locale`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `surgeries`
--
ALTER TABLE `surgeries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surgeries_category_id_foreign` (`category_id`);

--
-- Indexes for table `surgery_translations`
--
ALTER TABLE `surgery_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `surgery_translations_surgery_id_locale_unique` (`surgery_id`,`locale`),
  ADD KEY `surgery_translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_surgery_id_foreign` (`surgery_id`);

--
-- Indexes for table `video_translations`
--
ALTER TABLE `video_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `video_translations_video_id_locale_unique` (`video_id`,`locale`),
  ADD KEY `video_translations_locale_index` (`locale`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `page_images`
--
ALTER TABLE `page_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post_translations`
--
ALTER TABLE `post_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `question_answers`
--
ALTER TABLE `question_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `question_answer_translations`
--
ALTER TABLE `question_answer_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `surgeries`
--
ALTER TABLE `surgeries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `surgery_translations`
--
ALTER TABLE `surgery_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `video_translations`
--
ALTER TABLE `video_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_surgery_id_foreign` FOREIGN KEY (`surgery_id`) REFERENCES `surgeries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_images`
--
ALTER TABLE `page_images`
  ADD CONSTRAINT `page_images_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_surgery_id_foreign` FOREIGN KEY (`surgery_id`) REFERENCES `surgeries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_translations`
--
ALTER TABLE `post_translations`
  ADD CONSTRAINT `post_translations_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_answers`
--
ALTER TABLE `question_answers`
  ADD CONSTRAINT `question_answers_surgery_id_foreign` FOREIGN KEY (`surgery_id`) REFERENCES `surgeries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_answer_translations`
--
ALTER TABLE `question_answer_translations`
  ADD CONSTRAINT `question_answer_translations_question_answer_id_foreign` FOREIGN KEY (`question_answer_id`) REFERENCES `question_answers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `surgeries`
--
ALTER TABLE `surgeries`
  ADD CONSTRAINT `surgeries_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `surgery_translations`
--
ALTER TABLE `surgery_translations`
  ADD CONSTRAINT `surgery_translations_surgery_id_foreign` FOREIGN KEY (`surgery_id`) REFERENCES `surgeries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_surgery_id_foreign` FOREIGN KEY (`surgery_id`) REFERENCES `surgeries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video_translations`
--
ALTER TABLE `video_translations`
  ADD CONSTRAINT `video_translations_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
