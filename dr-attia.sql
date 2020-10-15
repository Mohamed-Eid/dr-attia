-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2020 at 04:59 PM
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
(4, 'j7rJ7iejxLjtOluYUYxk5coU5mlX7w4LpG4IFPC4.png', '2020-10-13 23:11:07', '2020-10-13 23:11:07'),
(5, 'x8N2xirJJ0BThyW9b9x8vD6rpFVRUssT8wXWB2Wo.jpeg', '2020-10-15 10:20:09', '2020-10-15 10:20:09'),
(6, 'oFXrYQzKhRFwf3FKNDEw5mMionkxLJQVHJQrP6Tu.jpeg', '2020-10-15 10:20:28', '2020-10-15 10:20:28');

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
(8, 4, 'test', 'en'),
(9, 5, 'سييرفيس', 'ar'),
(10, 5, 'service', 'en'),
(11, 6, 'تست 32asd', 'ar'),
(12, 6, 'asfasdfasdf', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(93, '2020_10_14_133815_create_settings_table', 9),
(94, '2020_10_15_010316_create_setting_translations_table', 9),
(95, '2020_10_15_023103_create_contact_messages_table', 10);

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
(8, 'tmuucmFiV3k87zI1Mv1uZQf2Y8taODl2scMImESD.jpeg', 3, '2020-10-14 09:46:11', '2020-10-14 09:46:11'),
(12, 'ovJIWE8FnPZZsATrY8sO5pMjJvqfgrODfiQWmXic.jpeg', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(13, 'OEdzPgVduqEI814MWWi9Ehs6jvrOGfQfpOmz81Oj.png', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(14, 'ILi6x4CGZC63UZpJ8FRTQdGp5tODD7nCrHVxvZwF.jpeg', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(15, 'bDt02aa5UjgItKl47kNTuJElHidr2egVkdsNPEgf.jpeg', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(16, 'xRMUrXqfSCct00MmIqJKUNBJ6agT98JqELga5m1z.jpeg', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(17, '5u8oTBjLJ4HH52lkOzt1mtt0vw3KvUJCNYe1JaAB.jpeg', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(18, 'qECZRXXO525DLEfXyRjKaaNOj2y2v1suq3XUq4Cp.jpeg', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(19, 'k3FKsvC6UrbvwbWapOyFiWdeiAfe6LeFuAkaZldN.png', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(20, 'jKKLlqiETxiaZTjCPuB02eHvG63g0lwDi5WciGfT.jpeg', 1, '2020-10-15 12:14:14', '2020-10-15 12:14:14'),
(21, '6MPtqxohi5gryNMMslAeP5LKOi6CmO22rJCSCEaY.jpeg', 1, '2020-10-15 12:14:15', '2020-10-15 12:14:15'),
(22, 'ycBbpTosAEPf56bKtIRG8LuNGR2d7kJ4Crqr0bOi.jpeg', 1, '2020-10-15 12:14:15', '2020-10-15 12:14:15'),
(23, 'k40gNRYRooZeIEHwIxlk0GRsuCKCZzELsQ4NzQQN.jpeg', 1, '2020-10-15 12:14:15', '2020-10-15 12:14:15'),
(24, 'IiysByEWMrgX9OZmP6zgpFPQHiAmGkIbl4gpGPnR.jpeg', 1, '2020-10-15 12:14:15', '2020-10-15 12:14:15'),
(25, 'Ywl5dlH37qwo8wjGaGv3ZVm1ahXmAtfdlD3kVgpu.jpeg', 1, '2020-10-15 12:14:15', '2020-10-15 12:14:15'),
(26, 'djaeNS7lp3jm2VctZ28A7UEoowHqd3HdY9Ec2mLg.jpeg', 1, '2020-10-15 12:14:15', '2020-10-15 12:14:15'),
(27, 'SK3NQpLACz1hHjQ3sVr27OQgkLFLhH4jESmnF9Pd.jpeg', 1, '2020-10-15 12:14:15', '2020-10-15 12:14:15'),
(28, '1G34cJaia2GUIE4k0zL53QPlzVCtcT0fJQC7LP22.jpeg', 1, '2020-10-15 12:14:15', '2020-10-15 12:14:15');

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
(2, 'RTT51lTFqFXvAbUW9pu4YiiktrhAOvbVkW9CPikr.jpeg', 3, '2020-10-12 13:41:28', '2020-10-12 13:41:28'),
(3, 'R8fv0eqr5wvPO6SsBy0Q4w6AtBgGWZ01NmWIcy6J.jpeg', 1, '2020-10-15 09:44:08', '2020-10-15 09:44:08'),
(4, 'vLBfqEbHDZ18W0XeGjwlU6ktj3XJRUNB8vBJaMiG.jpeg', 5, '2020-10-15 09:44:53', '2020-10-15 09:44:53'),
(5, 'f6lkVVIDx4oFvaUc2KnyT4A5F5sSOIeOzUZCb4UB.jpeg', 1, '2020-10-15 09:45:11', '2020-10-15 09:45:11'),
(6, 'P3d7WjYoiWpVu6Z9ftEh4j6OfGyTyiQToQNiEbOM.jpeg', 1, '2020-10-15 13:25:03', '2020-10-15 13:25:03'),
(7, 'X0oq8tEalONRkX98Cbqkk1JbWcEcyhLeIxEdA5lU.jpeg', 1, '2020-10-15 13:39:16', '2020-10-15 13:39:16');

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
(4, 2, 'test 3', '<p>sdfgdfg</p>', 'en'),
(5, 3, 'تست 312312312', '<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>', 'ar'),
(6, 3, 'test 312312312', '<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>', 'en');
INSERT INTO `post_translations` (`id`, `post_id`, `name`, `body`, `locale`) VALUES
(7, 4, 'من نحنasdf', '<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>\r\n\r\n<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>\r\n\r\n<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>', 'ar');
INSERT INTO `post_translations` (`id`, `post_id`, `name`, `body`, `locale`) VALUES
(8, 4, 'test 3asdf', '<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>\r\n\r\n<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>', 'en');
INSERT INTO `post_translations` (`id`, `post_id`, `name`, `body`, `locale`) VALUES
(9, 5, 'asfasf', '<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>\r\n\r\n<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>\r\n\r\n<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>', 'ar');
INSERT INTO `post_translations` (`id`, `post_id`, `name`, `body`, `locale`) VALUES
(10, 5, 'asfasfasfasfasfa', '<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>\r\n\r\n<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>\r\n\r\n<p><a href=\"https://www.bloggerdad.com/\">Home</a>&nbsp;&raquo;&nbsp;<a href=\"https://www.bloggerdad.com/starting-blog/\">Starting Your Blog</a>&nbsp;&raquo;&nbsp;First Blog Post Ideas &amp; Examples</p>\r\n\r\n<h1>19 First Blog Post Ideas &amp; Examples: What to Write</h1>\r\n\r\n<p>By&nbsp;<a href=\"https://www.bloggerdad.com/author/bloggerdadmin/\">DUSTIN CHRISTENSEN</a></p>\r\n\r\n<p>Getting started is one of the hardest parts of blogging. The good news? For better or worse, your first blog post doesn&rsquo;t matter much.</p>\r\n\r\n<p>One of my favorite things about blogging is coming up with ideas using keyword and topic research.</p>\r\n\r\n<p>That&rsquo;s why I&rsquo;ve covered&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/travel-blog-post-ideas/\">travel blog post ideas</a>, and&nbsp;<a href=\"https://www.bloggerdad.com/content-keywords/generate-hundreds-keyword-ideas/\">how to find a bunch of keywords</a>&nbsp;and ideas in just a few minutes.</p>\r\n\r\n<p>But if you&rsquo;re not used to doing topic research, finding your very first idea can be overwhelming.</p>\r\n\r\n<p>Fortunately, your first post doesn&rsquo;t have to be hard.</p>\r\n\r\n<p>Here are a few things to know about writing your first blog post, and why it&rsquo;s not worth getting hung up on what goes out first.</p>\r\n\r\n<p>The most important takeaway?</p>\r\n\r\n<p>Any first post is better than none.&nbsp;<img alt=\"😉\" src=\"https://s.w.org/images/core/emoji/13.0.0/svg/1f609.svg\" /></p>\r\n\r\n<h2>What should my first blog post be?</h2>\r\n\r\n<p>There are two common approaches you can take with your first blog post.</p>\r\n\r\n<p>The first is to use your first post as an introduction to your blog and what you&rsquo;re setting out to do.</p>\r\n\r\n<p>The second is to jump right into your content as if you&rsquo;ve been doing it for years.</p>\r\n\r\n<p>There are pros and cons to each one, but my favorite is the second option because it gives you a better chance of writing something that will potentially get traffic over time, rather than something that gets buried on your site, never to be seen again.</p>\r\n\r\n<p>For example, if you&rsquo;re starting a food blog, and your first blog post is an &ldquo;<a href=\"https://www.rachelcooks.com/2015/01/20/how-to-write-an-about-me-page/\" target=\"_blank\">about me</a>&rdquo; style introduction to your blog and why you&rsquo;re getting started, eventually that post will get buried underneath all the recipes you publish.</p>\r\n\r\n<p>But if you just get right to the point and make your first blog post a recipe on something like chicken and rice casserole, that post can eventually get traffic for a long time, whether that&rsquo;s from Google, Pinterest, etc.</p>\r\n\r\n<p>Put it this way: your intro post won&rsquo;t do much for your bottom line, but getting to the actual content can help you create something that can potentially stick around and get traffic and income.</p>\r\n\r\n<p>When friends or family ask me what their first blog post should be, I tell them to act like they&rsquo;ve been there before: save the intro for your about me page and get right down to business.</p>\r\n\r\n<h3>First blog post ideas</h3>\r\n\r\n<p>Whether you start with an introduction or get right into the type of content you&rsquo;ll be creating, below you&rsquo;ll find a few ideas on what to write to make your first post a success.</p>\r\n\r\n<p>Whatever you write about, remember the most important thing is that this is the official start of you committing to blogging.</p>\r\n\r\n<p>It matters less what you write about and more that you&rsquo;re sitting down, writing and publishing a post.</p>\r\n\r\n<p>You&rsquo;re going through the process for the first of (hopefully) many times, and it&rsquo;s a good feeling to finally get something out there at all.</p>\r\n\r\n<p>So don&rsquo;t get hung up on coming up with the best ideas: focus on getting&nbsp;<em>something</em>&nbsp;up and live.</p>\r\n\r\n<h3>Your first blog post as an introduction</h3>\r\n\r\n<p>Although I don&rsquo;t love this route, using your first post as an intro can be a nice quick win under your belt.</p>\r\n\r\n<p>It can be hard to jump right into the meat of your blog content, but posting a 300-word intro to your blog is pretty easy.</p>\r\n\r\n<p>So if you&rsquo;re about getting quick wins and building momentum, it can make sense to go with an intro for your first post.</p>\r\n\r\n<p>If you&rsquo;re going this route, remember the basics: who, what, why, where, how, when.</p>\r\n\r\n<p>You can address all these areas and more in your intro post without going overboard.</p>\r\n\r\n<p><strong>Who</strong>: give a quick intro on who you are, your background, your interests and anyone else that might be relevant to your blog, like family.</p>\r\n\r\n<p><strong>What</strong>: describe what your blog will be &ndash; this is good practice as a blogger, but it also&nbsp;<a href=\"https://problogger.com/how-to-manage-expectations-with-your-blog-readers/\" target=\"_blank\">helps build expectations</a>&nbsp;for anyone who sees your first post.</p>\r\n\r\n<p>Do you focus on recipes? Videos? How-to tutorials?</p>\r\n\r\n<p>Let your readers know&nbsp;<em>what</em>&nbsp;they&rsquo;re getting into with your blog.</p>\r\n\r\n<p><strong>Why</strong>: a lot of first blog posts describe the genesis of their blog. Maybe it&rsquo;s to get their creative ideas out into the world, or maybe it&rsquo;s to help the blogger organize their own ideas and projects.</p>\r\n\r\n<p>Whatever it is, readers often like to see the reasons behind bloggers bein&rsquo; bloggers.</p>\r\n\r\n<p><strong>Where</strong>: you don&rsquo;t necessarily have to give any specifics here, but if you&rsquo;re looking to build a community on your blog, it&rsquo;s nice to let people know where you are.</p>\r\n\r\n<p>Are you in the hot and dry Southwest? A busy city? Letting readers know your general location can help set the scene for upcoming content.</p>\r\n\r\n<p><strong>How</strong>: this is similar to your what, but how are you going to go about blogging? Will you post weekly recipes, or focus on social media and update your blog whenever you have time?</p>\r\n\r\n<p><strong>When</strong>: if you plan on a&nbsp;<a href=\"https://sweetandsimplelife.com/daily-blogging-schedule/\" target=\"_blank\">blogging schedule</a>, let know readers what it is. Some bloggers like to publish posts on certain days of the week, or have specific types of content, like videos or Q &amp; As, go out at certain times of the month.</p>\r\n\r\n<p>This may not be something you&rsquo;re concerned about, but if you do have a schedule, telling your readers about it can help you stick to your plan.</p>\r\n\r\n<p><strong>Pro</strong>: writing an intro blog post can be a quick and easy win to say you&rsquo;ve officially started your blog</p>\r\n\r\n<p><strong>Con</strong>: in time, your intro post will be completely buried and really won&rsquo;t get traffic or generate income</p>\r\n\r\n<p><strong>Recommendation</strong>: I love the idea of introducing yourself, your blog and your intentions, but I think that serves a better purpose on your about me page, where people will visit over time.</p>\r\n\r\n<p>Most intro posts get buried and never seen, so I&rsquo;m not a huge fan on this approach.</p>\r\n\r\n<h3>Your first blog post as real content</h3>\r\n\r\n<p>This is my preferred approach for a first blog post because it skips the fluff and gets right down to business.</p>\r\n\r\n<p>If you&rsquo;re creating a food blog, this means starting with a recipe right off the bat.</p>\r\n\r\n<p>If you&rsquo;re in the DIY or home improvement niche, it means doing a tutorial or how-to project as an example of what your blog will cover in time.</p>\r\n\r\n<p>I also like this approach because the more you blog, the more you figure out your style, preferences and voice.</p>\r\n\r\n<p>If you start with an intro post, it&rsquo;s not that you&rsquo;re losing much time or energy, but you&rsquo;re also not working toward developing your blogging voice.</p>\r\n\r\n<p>Start with a real post, though, and it&rsquo;s the first time you&rsquo;ll begin to see what you do and don&rsquo;t like about blogging, and you&rsquo;ll start to notice things you want to do different in the future.</p>\r\n\r\n<p>Creating an About Me Page</p>\r\n\r\n<p>If you go this route, I think it&rsquo;s smart to still build about your&nbsp;<a href=\"https://blog.hubspot.com/marketing/remarkable-about-us-page-examples\" target=\"_blank\">&ldquo;about me&rdquo; page</a>&nbsp;with info about you, your background, vision for the blog and what readers can expect from you.</p>\r\n\r\n<p>All that information is super helpful and necessary, especially if you want to build trust and loyalty among your readers.</p>\r\n\r\n<p>But an about me page is a much more prominent place to do that instead of your first blog post.</p>\r\n\r\n<p><strong>Pro</strong>: writing &ldquo;real&rdquo; content will help you get to the good stuff faster &ndash; this is how you get traffic, readers, income and momentum.</p>\r\n\r\n<p><strong>Con</strong>: writing a full blog post can be difficult, especially if you&rsquo;ve never done it before.</p>\r\n\r\n<p><strong>Recommendation</strong>: start by writing real content, but tackle an easy topic or subject first, instead of attempting a massive blog post on your first try.</p>\r\n\r\n<h2>How to write your first blog post</h2>\r\n\r\n<p>There&rsquo;s no &ldquo;right way&rdquo; to write your first blog post other than to get your thoughts down.</p>\r\n\r\n<p>If you&rsquo;re going with an intro-style post, it&rsquo;s good to include:</p>\r\n\r\n<ul>\r\n	<li>your background, interests and expertise, if any</li>\r\n	<li>what you hope to accomplish with your blog</li>\r\n	<li>contact information or social media links</li>\r\n	<li>a call to action to email, comment or follow you elsewhere</li>\r\n</ul>\r\n\r\n<p>As you&rsquo;ll see from the blog post examples below, there&rsquo;s not much else to it!</p>\r\n\r\n<p>You can dive into your story as much as you&rsquo;d like, but as I recommended, it&rsquo;s also good practice to present that information on your about me page.</p>\r\n\r\n<p>If you dig right into your content, how you write your posts depends a lot on your niche, style and topics.</p>\r\n\r\n<p>Again, there&rsquo;s no right way to write these first posts, but if it feels like you&rsquo;re having a hard time getting your ideas down, it can help to create an outline first, or make a bullet list of things you want to cover.</p>\r\n\r\n<p>It may take some time to find your&nbsp;<a href=\"https://www.persuasion-nation.com/blog/7-foolproof-ways-to-find-your-blogging-voice\" target=\"_blank\">blogging style and voice</a>, so don&rsquo;t be afraid to make this first post &ldquo;rough.&rdquo;</p>\r\n\r\n<p>You can always go back later and edit it once you&rsquo;ve refined your blogging process, but the important thing is you get it done rather than waiting a long time to get it &ldquo;perfect.&rdquo;</p>', 'en'),
(11, 6, 'عنوان تدوينه', '<h1><strong>بوست&nbsp;بوست&nbsp;بوست</strong>&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;</h1>\r\n\r\n<p>بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;بوست&nbsp;</p>', 'ar'),
(12, 6, 'post title', '<h1>post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;</h1>\r\n\r\n<p>post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;post&nbsp;</p>', 'en'),
(13, 7, 'تست 3AD', '<h1>تستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتست</h1>', 'ar'),
(14, 7, 'test 3ASDASD', '<h1>تستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتستتست</h1>', 'en');

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
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `type`, `class`, `image`, `created_at`, `updated_at`) VALUES
(1, 'fb', 'text', 'social_links', NULL, '2020-10-14 23:25:48', '2020-10-14 23:25:48'),
(2, 'tw', 'text', 'social_links', NULL, '2020-10-14 23:27:14', '2020-10-14 23:27:14'),
(3, 'img_1', 'image', 'slider', 'hH3d9gzhT8naJ8dqF86O4ncXa33SpwzClgqGEnaT.jpeg', '2020-10-14 23:28:58', '2020-10-15 13:44:05'),
(4, 'img_2', 'image', 'slider', 'qA0T9r2PZjMUEJognB4tnCIthK9NqUK5qK7KQiVN.jpeg', '2020-10-14 23:29:53', '2020-10-15 13:44:18'),
(5, 'img_2', 'image', 'slider', '48R9UPtVYZRZPQEcnu4BqKTmjGUh6ymnOsTylNKl.jpeg', '2020-10-14 23:30:27', '2020-10-15 13:44:27'),
(6, 'yt', 'text', 'social_links', NULL, '2020-10-15 13:05:24', '2020-10-15 13:05:24'),
(7, 'aaa', 'text', 'social_links', NULL, '2020-10-15 13:11:52', '2020-10-15 13:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `name`, `value`, `title`, `description`, `link`, `locale`) VALUES
(1, 1, 'fb', 'asdasfasdfasdfqwawrqwr', NULL, NULL, NULL, 'ar'),
(2, 1, 'فيسبوك لينك', 'asasfas://www.youtube.com/watch?v=ASbnLcr1Umk', NULL, NULL, NULL, 'en'),
(3, 2, 'tw', 'twitterlink', NULL, NULL, NULL, 'ar'),
(4, 2, 'tw', 'twitterllll', NULL, NULL, NULL, 'en'),
(5, 3, 'slider_image', 'قييممممهه', 'title123', 'وصف وصفوصفوصفوصف', 'link/ar123', 'ar'),
(6, 3, 'slider_image', 'vallluuee', 'عنوان', 'desc desc desc desc', 'link/en', 'en'),
(7, 4, 'slider_image_1', NULL, NULL, NULL, NULL, 'ar'),
(8, 4, 'slider_image_1', NULL, NULL, NULL, NULL, 'en'),
(9, 5, 'slider_image_2', NULL, NULL, NULL, NULL, 'ar'),
(10, 5, 'slider_image_2', NULL, NULL, NULL, NULL, 'en'),
(11, 6, 'لينك يوتويب', 'https://www.youtube.com/', NULL, NULL, NULL, 'ar'),
(12, 6, 'youtube link', 'https://www.youtube.com/', NULL, NULL, NULL, 'en'),
(13, 7, 'تست 3', 'https://www.youtube.com/', NULL, NULL, NULL, 'ar'),
(14, 7, 'test 3', 'https://www.youtube.com/', NULL, NULL, NULL, 'en');

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
(1, 1, 'شسبشسب', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'ar', NULL, NULL),
(2, 1, 'sadfasdfgaws', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'en', NULL, NULL),
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
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_translations_setting_id_locale_unique` (`setting_id`,`locale`),
  ADD KEY `setting_translations_locale_index` (`locale`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `page_images`
--
ALTER TABLE `page_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_translations`
--
ALTER TABLE `post_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

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
