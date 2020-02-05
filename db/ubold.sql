-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2020 at 07:14 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ubold`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `album_category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `cover_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `album_category_id`, `name`, `order`, `cover_image`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 'About OCR', 1, '/upload_file/images/album/1579630812_772690320_Office_of_company_registrar_Nepal.jpg', 1, '2020-01-21 18:20:13', '2020-01-21 18:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `albums_name`
--

CREATE TABLE `albums_name` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums_name`
--

INSERT INTO `albums_name` (`id`, `lang_id`, `album_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(3, 1, 2, 'About OCR', NULL, NULL, NULL),
(4, 2, 2, 'About OCR', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `album_categories`
--

CREATE TABLE `album_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `album_categories`
--

INSERT INTO `album_categories` (`id`, `parent_id`, `order`, `icon`, `color`, `name`, `slug`, `featured`, `created_at`, `updated_at`) VALUES
(2, NULL, 1, NULL, '#000000', 'Album', 'album', 1, '2020-01-21 18:18:10', '2020-01-21 18:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `album_categories_name`
--

CREATE TABLE `album_categories_name` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `album_category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `album_categories_name`
--

INSERT INTO `album_categories_name` (`id`, `lang_id`, `album_category_id`, `name`, `description`, `featured`, `created_at`, `updated_at`) VALUES
(3, 1, 2, 'Album', NULL, NULL, NULL, NULL),
(4, 2, 2, 'Album', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `type`, `image`, `created_at`, `updated_at`) VALUES
(5, 'page', 'upload_file/images/banner/1580068586_895922661_blank-composition-desk-display-317355.jpg', '2020-01-26 19:56:28', '2020-01-26 19:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `thumbnail`, `link`, `description`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '<iframe width=\"100%\" height=\"280\" src=\"//www.youtube.com/embed/2h8Pcy0sqo8\" allowfullscreen></iframe>', NULL, 1, NULL, '2020-01-21 18:22:14', '2020-01-21 18:22:14'),
(2, NULL, NULL, '<iframe width=\"100%\" height=\"280\" src=\"//www.youtube.com/embed/kPJQBLpz818\" allowfullscreen></iframe>', NULL, 1, NULL, '2020-01-21 18:22:41', '2020-01-21 18:22:41'),
(3, NULL, NULL, '<iframe width=\"100%\" height=\"280\" src=\"//www.youtube.com/embed/jutI1Ma_PmY\" allowfullscreen></iframe>', NULL, 1, NULL, '2020-01-21 18:23:00', '2020-01-21 18:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches_name`
--

CREATE TABLE `branches_name` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `icon`, `color`, `name`, `slug`, `featured`, `created_at`, `updated_at`) VALUES
(2, NULL, 5, NULL, '#000000', 'Act/Directive', 'actdirective', 1, '2020-01-21 17:38:25', '2020-01-21 17:41:23'),
(3, NULL, 4, NULL, '#000000', 'Annexs', 'annexs', 1, '2020-01-21 17:39:24', '2020-01-21 17:41:23'),
(4, NULL, 3, NULL, '#000000', 'Important Documents', 'important-documents', 0, '2020-01-21 17:40:02', '2020-01-21 17:41:23'),
(5, NULL, 2, NULL, '#000000', 'Others', 'others', 0, '2020-01-21 17:40:40', '2020-01-21 17:41:23'),
(6, NULL, 1, NULL, '#000000', 'Notices', 'notices', 1, '2020-01-21 17:41:20', '2020-01-21 17:41:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories_name`
--

CREATE TABLE `categories_name` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_name`
--

INSERT INTO `categories_name` (`id`, `lang_id`, `category_id`, `name`, `description`, `featured`, `created_at`, `updated_at`) VALUES
(3, 1, 2, 'Act/Directive', NULL, NULL, NULL, NULL),
(4, 2, 2, 'ऐन / निर्देशिका', NULL, NULL, NULL, NULL),
(5, 1, 3, 'Annexs', NULL, NULL, NULL, NULL),
(6, 2, 3, 'अनुसूचीहरु', NULL, NULL, NULL, NULL),
(7, 1, 4, 'Important Documents', NULL, NULL, NULL, NULL),
(8, 2, 4, 'महत्वपूर्ण कागजातहरु', NULL, NULL, NULL, NULL),
(9, 1, 5, 'Others', NULL, NULL, NULL, NULL),
(10, 2, 5, 'Others', NULL, NULL, NULL, NULL),
(11, 1, 6, 'Notices', NULL, NULL, NULL, NULL),
(12, 2, 6, 'सूचनाहरु', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commons`
--

CREATE TABLE `commons` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_first_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_second_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_third_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_fourth_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_first_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_first_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_second_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_second_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_third_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_third_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_fourth_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_fourth_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commons`
--

INSERT INTO `commons` (`id`, `lang_id`, `unique_id`, `logo`, `header_first_title`, `header_second_title`, `header_third_title`, `header_fourth_title`, `footer_first_title`, `footer_first_description`, `footer_second_title`, `footer_second_description`, `footer_third_title`, `footer_third_description`, `footer_fourth_title`, `footer_fourth_description`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'upload_file/images/setting/1579629184_1108352094_logo.png', 'Government of Nepal', 'Ministry of Industry, Commerce & Supplies', 'Office of The Company Registrar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-14 18:57:13', '2020-01-21 17:53:04'),
(2, 2, '1', 'upload_file/images/setting/1579629184_1108352094_logo.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-21 17:53:04', '2020-01-21 17:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complains`
--

INSERT INTO `complains` (`id`, `name`, `email`, `phone`, `address`, `comment`, `reply`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Ingrid Donaldson', 'texitikys@mailinator.net', '+1 (356) 844-1948', 'Velit velit assumen', 'Aut officia iste num', '<p>Hello</p>', 1, '2020-01-28 17:25:13', '2020-01-28 17:58:58'),
(3, 'Caleb Sharpe', 'fipuwysek@mailinator.com', '+1 (553) 688-1418', 'Dolore aut et labore', 'Non est sit reicien', NULL, 0, '2020-01-28 17:28:49', '2020-01-28 17:28:49'),
(4, 'Alma Collier', 'fegybygyc@mailinator.net', '+1 (749) 824-4787', 'Occaecat necessitati', 'Aut animi odio aliq', NULL, 0, '2020-01-28 17:31:31', '2020-01-28 17:31:31');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `number`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Shoshana Nichols', 'belohog@mailinator.com', NULL, '630', 'Ea minim adipisicing', '2020-01-28 17:25:32', '2020-01-28 17:25:32');

-- --------------------------------------------------------

--
-- Table structure for table `date_data`
--

CREATE TABLE `date_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` int(11) NOT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `date_data`
--

INSERT INTO `date_data` (`id`, `title`, `slug`, `data`, `flag`, `created_at`, `updated_at`) VALUES
(1, 'Private', 'private', 111, 'one_day', '2020-01-28 16:57:15', '2020-01-28 16:57:15'),
(2, 'Foreign', 'foreign', 1, 'one_day', '2020-01-28 16:57:15', '2020-01-28 16:57:15'),
(3, 'Non-Profit Distributing', 'non-profit-distributing', 1, 'one_day', '2020-01-28 16:57:15', '2020-01-28 16:57:15'),
(4, 'Private', 'private', 111, 'one_week', '2020-01-28 16:57:15', '2020-01-28 16:57:15'),
(5, 'Foreign', 'foreign', 1, 'one_week', '2020-01-28 16:57:15', '2020-01-28 16:57:15'),
(6, 'Non-Profit Distributing', 'non-profit-distributing', 1, 'one_week', '2020-01-28 16:57:15', '2020-01-28 16:57:15'),
(7, 'Private', 'private', 24632, 'one_month', '2020-01-28 16:57:15', '2020-01-28 16:57:15'),
(8, 'Non-Profit Distributing', 'non-profit-distributing', 520, 'one_month', '2020-01-28 16:57:15', '2020-01-28 16:57:15'),
(9, 'Public', 'public', 60, 'one_month', '2020-01-28 16:57:15', '2020-01-28 16:57:15'),
(10, 'Foreign', 'foreign', 54, 'one_month', '2020-01-28 16:57:15', '2020-01-28 16:57:15'),
(11, 'Private', 'private', 24632, 'one_year', '2020-01-28 16:57:15', '2020-01-28 16:57:15'),
(12, 'Non-Profit Distributing', 'non-profit-distributing', 520, 'one_year', '2020-01-28 16:57:15', '2020-01-28 16:57:15'),
(13, 'Public', 'public', 60, 'one_year', '2020-01-28 16:57:15', '2020-01-28 16:57:15'),
(14, 'Foreign', 'foreign', 54, 'one_year', '2020-01-28 16:57:15', '2020-01-28 16:57:15'),
(15, 'Private', 'private', 48508, 'two_year', '2020-01-28 16:57:15', '2020-01-28 16:57:15'),
(16, 'Non-Profit Distributing', 'non-profit-distributing', 1038, 'two_year', '2020-01-28 16:57:15', '2020-01-28 16:57:15'),
(17, 'Public', 'public', 133, 'two_year', '2020-01-28 16:57:15', '2020-01-28 16:57:15'),
(18, 'Foreign', 'foreign', 108, 'two_year', '2020-01-28 16:57:16', '2020-01-28 16:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `district_data`
--

CREATE TABLE `district_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` int(11) NOT NULL,
  `state` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `district_data`
--

INSERT INTO `district_data` (`id`, `title`, `slug`, `data`, `state`, `created_at`, `updated_at`) VALUES
(1, 'Aachham', 'aachham', 149, 7, '2020-01-26 18:56:47', '2020-01-26 18:56:47'),
(2, 'Aarghhakhachi', 'aarghhakhachi', 214, 5, '2020-01-26 18:56:47', '2020-01-26 18:56:47'),
(3, 'Ilam', 'ilam', 669, 1, '2020-01-26 18:56:47', '2020-01-26 18:56:47'),
(4, 'Udaypur', 'udaypur', 659, 1, '2020-01-26 18:56:47', '2020-01-26 18:56:47'),
(5, 'Okhaldhunga', 'okhaldhunga', 218, 1, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(6, 'Kanchanpur', 'kanchanpur', 935, 7, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(7, 'Kapilbastu', 'kapilbastu', 782, 5, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(8, 'Kailali', 'kailali', 2483, 7, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(9, 'Kathmandu', 'kathmandu', 124960, 3, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(10, 'Kabhrepalanchowk', 'kabhrepalanchowk', 2248, 3, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(11, 'Kalikot', 'kalikot', 117, 6, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(12, 'Kaski', 'kaski', 7720, 4, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(13, 'Khotang', 'khotang', 257, 1, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(14, 'Gulmi', 'gulmi', 299, 5, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(15, 'Gorkha', 'gorkha', 653, 4, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(16, 'Chitwan', 'chitwan', 4935, 3, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(17, 'Jumla', 'jumla', 147, 6, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(18, 'Jajrkot', 'jajrkot', 139, 6, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(19, 'Jhapa', 'jhapa', 4270, 1, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(20, 'Dadeldhhura', 'dadeldhhura', 133, 7, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(21, 'Doati', 'doati', 142, 7, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(22, 'Dolpa', 'dolpa', 111, 6, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(23, 'Tanhu', 'tanhu', 1134, 4, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(24, 'Terhathun', 'terhathun', 170, 1, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(25, 'TapleJung', 'taplejung', 175, 1, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(26, 'Unknown', 'unknown', 1067, NULL, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(27, 'Dailekh', 'dailekh', 169, 6, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(28, 'Dang', 'dang', 2033, 5, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(29, 'Darjula', 'darjula', 94, 7, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(30, 'Dolkha', 'dolkha', 749, 3, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(31, 'Dhankuta', 'dhankuta', 667, 1, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(32, 'Dhanusa', 'dhanusa', 2747, 2, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(33, 'Dhadhing', 'dhadhing', 1246, 3, '2020-01-26 18:56:48', '2020-01-26 18:56:48'),
(34, 'Navalparasi (State 4)', 'navalparasi-state-4', 489, 4, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(35, 'Navalparasi (State 5)', 'navalparasi-state-5', 1515, 5, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(36, 'Nuwakot', 'nuwakot', 1087, 3, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(37, 'Pyuthan', 'pyuthan', 191, 5, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(38, 'Parbat', 'parbat', 239, 4, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(39, 'Parsa', 'parsa', 3077, 2, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(40, 'Pachthar', 'pachthar', 295, 1, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(41, 'Palpa', 'palpa', 538, 4, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(42, 'Bajhang', 'bajhang', 164, 7, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(43, 'Bardia', 'bardia', 481, 5, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(44, 'Banke', 'banke', 2731, 5, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(45, 'Bajura', 'bajura', 93, 7, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(46, 'Bhaktpur', 'bhaktpur', 5881, 3, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(47, 'Bhojpur', 'bhojpur', 132, 1, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(48, 'Makwanpur', 'makwanpur', 1886, 3, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(49, 'Mugu', 'mugu', 118, 6, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(50, 'Manang', 'manang', 43, 4, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(51, 'Myagdi', 'myagdi', 245, 4, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(52, 'Mustang', 'mustang', 83, 4, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(53, 'Mahottari', 'mahottari', 975, 2, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(54, 'Morang', 'morang', 4791, 1, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(55, 'Rukum (State 5)', 'rukum-state-5', 41, 5, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(56, 'Rukum (State 6)', 'rukum-state-6', 310, 6, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(57, 'Rupndehi', 'rupndehi', 5432, 5, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(58, 'Rasuwa', 'rasuwa', 232, 3, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(59, 'Ramechhap', 'ramechhap', 521, 3, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(60, 'Rolpa', 'rolpa', 203, 6, '2020-01-26 18:56:49', '2020-01-26 18:56:49'),
(61, 'Rauthat', 'rauthat', 732, 2, '2020-01-26 18:56:50', '2020-01-26 18:56:50'),
(62, 'Lamjung', 'lamjung', 357, 4, '2020-01-26 18:56:50', '2020-01-26 18:56:50'),
(63, 'Lalitpur', 'lalitpur', 21116, 3, '2020-01-26 18:56:50', '2020-01-26 18:56:50'),
(64, 'Baitdi', 'baitdi', 115, 7, '2020-01-26 18:56:50', '2020-01-26 18:56:50'),
(65, 'Baglung', 'baglung', 484, 4, '2020-01-26 18:56:50', '2020-01-26 18:56:50'),
(66, 'Bara', 'bara', 1343, 2, '2020-01-26 18:56:50', '2020-01-26 18:56:50'),
(67, 'Sankhuvasabha', 'sankhuvasabha', 483, 1, '2020-01-26 18:56:50', '2020-01-26 18:56:50'),
(68, 'Sunsari', 'sunsari', 3551, 1, '2020-01-26 18:56:50', '2020-01-26 18:56:50'),
(69, 'Saptari', 'saptari', 1013, 2, '2020-01-26 18:56:50', '2020-01-26 18:56:50'),
(70, 'Sayangja', 'sayangja', 869, 4, '2020-01-26 18:56:50', '2020-01-26 18:56:50'),
(71, 'Surkhet', 'surkhet', 1129, 6, '2020-01-26 18:56:50', '2020-01-26 18:56:50'),
(72, 'Sarlahi', 'sarlahi', 1262, 3, '2020-01-26 18:56:50', '2020-01-26 18:56:50'),
(73, 'Salyan', 'salyan', 279, 5, '2020-01-26 18:56:50', '2020-01-26 18:56:50'),
(74, 'Sindhupalchowk', 'sindhupalchowk', 1001, 3, '2020-01-26 18:56:50', '2020-01-26 18:56:50'),
(75, 'Sindhuli', 'sindhuli', 694, 3, '2020-01-26 18:56:50', '2020-01-26 18:56:50'),
(76, 'Sirha', 'sirha', 1567, 2, '2020-01-26 18:56:50', '2020-01-26 18:56:50'),
(77, 'Solukhumbu', 'solukhumbu', 239, 1, '2020-01-26 18:56:50', '2020-01-26 18:56:50'),
(78, 'Humla', 'humla', 89, 6, '2020-01-26 18:56:50', '2020-01-26 18:56:50');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `download_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f_a_qs`
--

CREATE TABLE `f_a_qs` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `album_id`, `title`, `image`, `type`, `extension`, `size`, `created_at`, `updated_at`) VALUES
(1, 2, 'Photo title goes here', '/upload_file/images/gallery/1579630829_1479738628_Office_of_company_registrar_Nepal.jpg', NULL, NULL, NULL, '2020-01-21 18:20:30', '2020-01-21 18:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `default` int(11) DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `status`, `sort_order`, `default`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'English', 'en', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Nepali', 'np', 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `lang_id`, `unique_id`, `icon`, `color`, `name`, `url`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '1_5e273f957580e', 'fa-adjust', '#008080', 'Ministry of Industry', 'https://moics.gov.np/', 1, 1, NULL, NULL),
(2, 2, '1_5e273f957580e', 'fa-adjust', '#008080', 'Ministry of Industry', 'https://moics.gov.np/', 1, 1, NULL, NULL),
(3, 1, '1_5e273fce6d17b', 'fa-anchor', '#00ff40', 'Department Of Industries', 'http://www.doind.gov.np/', 2, 1, NULL, NULL),
(4, 2, '1_5e273fce6d17b', 'fa-anchor', '#00ff40', 'Department Of Industries', 'http://www.doind.gov.np/', 2, 1, NULL, NULL),
(5, 1, '1_5e273fff78881', 'fa-archive', '#800080', 'Department of Cottage & Small Industries', 'http://www.dcsi.gov.np/en', 3, 1, NULL, NULL),
(6, 2, '1_5e273fff78881', 'fa-archive', '#800080', 'Department of Cottage & Small Industries', 'http://www.dcsi.gov.np/en', 3, 1, NULL, NULL),
(7, 1, '1_5e2740299f1bb', 'fa-comment', '#800080', 'Inland Revenue Department', 'https://ird.gov.np/', 4, 1, NULL, NULL),
(8, 2, '1_5e2740299f1bb', 'fa-comment', '#800080', 'Inland Revenue Department', 'https://ird.gov.np/', 4, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `location`, `type`, `order`, `parent_id`, `url`, `route`, `parameter`, `target`, `category_id`, `unique_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Home', NULL, 'Custom Link', 1, NULL, 'http://127.0.0.1:8000/', NULL, NULL, '_self', NULL, NULL, 1, '2020-01-21 17:29:17', '2020-01-21 18:02:20'),
(3, 'Organization Establishment and Introduction', NULL, 'Page', 3, 5, '/page/', '\'site.pages\', [\'id\' => ]', NULL, '_self', NULL, NULL, 1, '2020-01-21 17:42:38', '2020-01-21 18:02:20'),
(4, 'Company Operation Related Monitoring System', NULL, 'Page', 4, 5, '/page/1_5e27359a40586', '\'site.pages\', [\'id\' => 1_5e27359a40586]', '1_5e27359a40586', '_self', NULL, '1_5e27359a40586', 1, '2020-01-21 17:43:35', '2020-01-21 18:02:20'),
(5, 'About Us', NULL, 'Custom Link', 2, NULL, 'http://127.0.0.1:8000/#', NULL, NULL, '_self', NULL, NULL, 1, '2020-01-21 17:48:52', '2020-01-21 18:02:20'),
(6, 'Company Registration', NULL, 'Custom Link', 5, NULL, 'http://127.0.0.1:8000/#', NULL, NULL, '_self', NULL, NULL, 1, '2020-01-21 17:55:34', '2020-01-21 18:02:20'),
(7, 'Company Registration Process /Documents', NULL, 'Page', 6, 6, '/page/1_5e2736171bccc', '\'site.pages\', [\'id\' => 1_5e2736171bccc]', '1_5e2736171bccc', '_self', NULL, '1_5e2736171bccc', 1, '2020-01-21 17:58:09', '2020-01-21 18:02:20'),
(8, 'Mandatory Activities should have to be done after Registration of Company', NULL, 'Page', 7, 6, '/page/1_5e273641df78a', '\'site.pages\', [\'id\' => 1_5e273641df78a]', '1_5e273641df78a', '_self', NULL, '1_5e273641df78a', 1, '2020-01-21 17:59:39', '2020-01-21 18:02:20'),
(9, 'Company Administratio', NULL, 'Page', 8, NULL, '/page/1_5e27366ad3cb4', '\'site.pages\', [\'id\' => 1_5e27366ad3cb4]', '1_5e27366ad3cb4', '_self', NULL, '1_5e27366ad3cb4', 1, '2020-01-21 18:01:10', '2020-01-21 18:02:20'),
(10, 'Revenue/Fees', NULL, 'Page', 9, NULL, '/page/1_5e27369e14b3a', '\'site.pages\', [\'id\' => 1_5e27369e14b3a]', '1_5e27369e14b3a', '_self', NULL, '1_5e27369e14b3a', 1, '2020-01-21 18:02:13', '2020-01-21 18:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `menus_name`
--

CREATE TABLE `menus_name` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus_name`
--

INSERT INTO `menus_name` (`id`, `menu_id`, `lang_id`, `name`, `created_at`, `updated_at`) VALUES
(3, 2, 1, 'Home', NULL, NULL),
(4, 2, 2, 'गृहपृष्ठ', NULL, NULL),
(5, 3, 1, 'Organization Establishment and Introduction', NULL, NULL),
(6, 3, 2, 'कार्यालय स्थापना एवं परिचय', NULL, NULL),
(7, 4, 1, 'Company Operation Related Monitoring System', NULL, NULL),
(8, 4, 2, 'कम्पनी संचालन सम्बन्धि अनुगमन व्यवस्था', NULL, NULL),
(9, 5, 1, 'About Us', NULL, NULL),
(10, 5, 2, 'हाम्रो बारेमा', NULL, NULL),
(11, 6, 1, 'Company Registration', NULL, NULL),
(12, 6, 2, 'कम्पनी दर्ता', NULL, NULL),
(13, 7, 1, 'Company Registration Process /Documents', NULL, NULL),
(14, 7, 2, 'कम्पनी दर्ता बिधि / कागजात', NULL, NULL),
(15, 8, 1, 'Mandatory Activities should have to be done after Registration of Company', NULL, NULL),
(16, 8, 2, 'कम्पनी संस्थापना पश्चात कम्पनीले अनिवार्यरुपमा गर्नुपर्ने क्रियाकलापहरु', NULL, NULL),
(17, 9, 1, 'Company Administratio', NULL, NULL),
(18, 9, 2, 'कम्पनी प्रशासन', NULL, NULL),
(19, 10, 1, 'Revenue/Fees', NULL, NULL),
(20, 10, 2, 'राजश्व /  दस्तुर', NULL, NULL);

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2018_09_04_120341_create_roles_table', 1),
(3, '2018_09_04_123339_create_permissions_table', 1),
(4, '2018_10_04_124435_create_permission_role_table', 1),
(5, '2018_10_12_000000_create_users_table', 1),
(6, '2018_12_21_044212_create_languages_table', 1),
(7, '2019_02_13_160705_create_categories_table', 1),
(8, '2019_02_14_135152_create_posts_table', 1),
(9, '2019_03_03_112300_create_files_table', 1),
(10, '2019_03_15_115637_create_menus_table', 1),
(11, '2019_03_29_125542_create_settings_table', 1),
(12, '2019_04_03_122850_create_sliders_table', 1),
(13, '2019_04_03_223155_create_album_categories_table', 1),
(14, '2019_04_15_165315_create_trackers_table', 1),
(15, '2019_04_17_165041_add_login_fields_to_users_table', 1),
(16, '2019_04_25_171413_create_branches_table', 1),
(17, '2019_04_28_113823_create_contacts_table', 1),
(18, '2019_04_28_151459_create_staff_table', 1),
(19, '2019_05_01_172211_create_links_table', 1),
(20, '2019_05_02_120242_create_albums_table', 1),
(21, '2019_05_02_120317_create_galleries_table', 1),
(22, '2019_07_10_230104_create_blogs_table', 1),
(23, '2019_08_05_110229_create_services_table', 1),
(24, '2019_08_12_123052_create_commons_table', 1),
(25, '2019_08_18_215959_create_popups_table', 1),
(26, '2019_09_05_205938_create_comments_table', 1),
(27, '2019_09_12_231305_create_processes_table', 1),
(28, '2019_12_17_004356_create_f_a_qs_table', 2),
(29, '2019_12_17_004440_create_banners_table', 2),
(32, '2020_01_23_141639_create_province_data_table', 3),
(36, '2020_01_23_141735_create_district_data_table', 4),
(37, '2020_01_26_224350_create_date_data_table', 4),
(38, '2020_01_28_225659_create_complains_table', 5);

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
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Album List', 'album-list', NULL, NULL, 1, NULL, NULL),
(2, 'Album Create', 'album-create', NULL, NULL, 2, NULL, NULL),
(3, 'Album  Edit', 'album-edit', NULL, NULL, 3, NULL, NULL),
(4, 'Album  Show', 'album-show', NULL, NULL, 4, NULL, NULL),
(5, 'Album  Delete', 'album-delete', NULL, NULL, 5, NULL, NULL),
(6, 'Branch List', 'branch-list', NULL, NULL, 1, NULL, NULL),
(7, 'Branch Create', 'branch-create', NULL, NULL, 2, NULL, NULL),
(8, 'Branch Edit', 'branch-edit', NULL, NULL, 3, NULL, NULL),
(9, 'Branch Show', 'branch-show', NULL, NULL, 4, NULL, NULL),
(10, 'Branch Delete', 'branch-delete', NULL, NULL, 5, NULL, NULL),
(11, 'Branch Sort Order', 'branch-sort-order', NULL, NULL, 5, NULL, NULL),
(12, 'Category List', 'category-list', NULL, NULL, 1, NULL, NULL),
(13, 'Category Create', 'category-create', NULL, NULL, 2, NULL, NULL),
(14, 'Category Edit', 'category-edit', NULL, NULL, 3, NULL, NULL),
(15, 'Category Show', 'category-show', NULL, NULL, 4, NULL, NULL),
(16, 'Category Delete', 'category-delete', NULL, NULL, 5, NULL, NULL),
(17, 'Category Sort Order', 'category-sort-order', NULL, NULL, 5, NULL, NULL),
(18, 'Header Setting', 'header-setting', NULL, NULL, 1, NULL, NULL),
(19, 'Footer Setting', 'footer-setting', NULL, NULL, 2, NULL, NULL),
(20, 'Contact List', 'contact-list', NULL, NULL, 1, NULL, NULL),
(21, 'Contact Create', 'contact-create', NULL, NULL, 2, NULL, NULL),
(22, 'Contact Edit', 'contact-edit', NULL, NULL, 3, NULL, NULL),
(23, 'Contact Show', 'contact-show', NULL, NULL, 4, NULL, NULL),
(24, 'Contact Delete', 'contact-delete', NULL, NULL, 5, NULL, NULL),
(25, 'Database Table List', 'database-table-list', NULL, NULL, 1, NULL, NULL),
(26, 'Database Backup Download', 'database-backup-download', NULL, NULL, 2, NULL, NULL),
(27, 'Database Backup In Server', 'database-backup-in-server', NULL, NULL, 3, NULL, NULL),
(28, 'Data List', 'data-list', NULL, NULL, 1, NULL, NULL),
(29, 'Data Create', 'data-create', NULL, NULL, 2, NULL, NULL),
(30, 'Data Edit', 'data-edit', NULL, NULL, 3, NULL, NULL),
(31, 'Data Show', 'data-show', NULL, NULL, 4, NULL, NULL),
(32, 'Data Delete', 'data-delete', NULL, NULL, 5, NULL, NULL),
(33, 'Post File List', 'post-file-list', NULL, NULL, 1, NULL, NULL),
(34, 'Post File Create', 'post-file-create', NULL, NULL, 2, NULL, NULL),
(35, 'Post File Edit', 'post-file-edit', NULL, NULL, 3, NULL, NULL),
(36, 'Post File Show', 'post-file-show', NULL, NULL, 4, NULL, NULL),
(37, 'Post File Delete', 'post-file-delete', NULL, NULL, 5, NULL, NULL),
(38, 'Gallery List', 'gallery-list', NULL, NULL, 1, NULL, NULL),
(39, 'Gallery Create', 'gallery-create', NULL, NULL, 2, NULL, NULL),
(40, 'Gallery Edit', 'gallery-edit', NULL, NULL, 3, NULL, NULL),
(41, 'Gallery Show', 'gallery-show', NULL, NULL, 4, NULL, NULL),
(42, 'Gallery Delete', 'gallery-delete', NULL, NULL, 5, NULL, NULL),
(43, 'Language List', 'language-list', NULL, NULL, 1, NULL, NULL),
(44, 'Language Create', 'language-create', NULL, NULL, 2, NULL, NULL),
(45, 'Language Edit', 'language-edit', NULL, NULL, 3, NULL, NULL),
(46, 'Language Show', 'language-show', NULL, NULL, 4, NULL, NULL),
(47, 'Language Delete', 'language-delete', NULL, NULL, 5, NULL, NULL),
(48, 'Link List', 'link-list', NULL, NULL, 1, NULL, NULL),
(49, 'Link Create', 'link-create', NULL, NULL, 2, NULL, NULL),
(50, 'Link Edit', 'link-edit', NULL, NULL, 3, NULL, NULL),
(51, 'Link Show', 'link-show', NULL, NULL, 4, NULL, NULL),
(52, 'Link Delete', 'link-delete', NULL, NULL, 5, NULL, NULL),
(53, 'Menu List', 'menu-list', NULL, NULL, 1, NULL, NULL),
(54, 'Menu Create', 'menu-create', NULL, NULL, 2, NULL, NULL),
(55, 'Menu Edit', 'menu-edit', NULL, NULL, 3, NULL, NULL),
(56, 'Menu Show', 'menu-show', NULL, NULL, 4, NULL, NULL),
(57, 'Menu Delete', 'menu-delete', NULL, NULL, 5, NULL, NULL),
(58, 'Menu Sort Order', 'menu-sort-order', NULL, NULL, 5, NULL, NULL),
(59, 'Popup List', 'popup-list', NULL, NULL, 1, NULL, NULL),
(60, 'Popup Create', 'popup-create', NULL, NULL, 2, NULL, NULL),
(61, 'Popup Edit', 'popup-edit', NULL, NULL, 3, NULL, NULL),
(62, 'Popup Show', 'popup-show', NULL, NULL, 4, NULL, NULL),
(63, 'Popup Delete', 'popup-delete', NULL, NULL, 5, NULL, NULL),
(64, 'Page List', 'page-list', NULL, NULL, 1, NULL, NULL),
(65, 'Page Create', 'page-create', NULL, NULL, 2, NULL, NULL),
(66, 'Page Edit', 'page-edit', NULL, NULL, 3, NULL, NULL),
(67, 'Page Show', 'page-show', NULL, NULL, 4, NULL, NULL),
(68, 'Page Delete', 'page-delete', NULL, NULL, 5, NULL, NULL),
(69, 'Delete Post File', 'delete-file', NULL, NULL, 5, NULL, NULL),
(70, 'Deleted Page', 'deleted-page', NULL, NULL, 5, NULL, NULL),
(71, 'Delete Page/Post Permanently', 'delete-post-permanently', NULL, NULL, 5, NULL, NULL),
(72, 'Restore Page/Post', 'restore-post', NULL, NULL, 5, NULL, NULL),
(73, 'Post List', 'post-list', NULL, NULL, 1, NULL, NULL),
(74, 'Post Create', 'post-create', NULL, NULL, 2, NULL, NULL),
(75, 'Post Edit', 'post-edit', NULL, NULL, 3, NULL, NULL),
(76, 'Post Show', 'post-show', NULL, NULL, 4, NULL, NULL),
(77, 'Post Delete', 'post-delete', NULL, NULL, 5, NULL, NULL),
(78, 'Deleted Post', 'deleted-post', NULL, NULL, 5, NULL, NULL),
(79, 'Role List', 'role-list', NULL, NULL, 1, NULL, NULL),
(80, 'Role Create', 'role-create', NULL, NULL, 2, NULL, NULL),
(81, 'Role Edit', 'role-edit', NULL, NULL, 3, NULL, NULL),
(82, 'Role Show', 'role-show', NULL, NULL, 4, NULL, NULL),
(83, 'Role Delete', 'role-delete', NULL, NULL, 5, NULL, NULL),
(84, 'Assign Permission', 'assign-permission', NULL, NULL, 5, NULL, NULL),
(85, 'Service List', 'service-list', NULL, NULL, 1, NULL, NULL),
(86, 'Service Create', 'service-create', NULL, NULL, 2, NULL, NULL),
(87, 'Service Edit', 'service-edit', NULL, NULL, 3, NULL, NULL),
(88, 'Service Show', 'service-show', NULL, NULL, 4, NULL, NULL),
(89, 'Service Delete', 'service-delete', NULL, NULL, 5, NULL, NULL),
(90, 'General Setting', 'general-setting', NULL, NULL, 1, NULL, NULL),
(91, 'Social Setting', 'social-setting', NULL, NULL, 2, NULL, NULL),
(92, 'About Setting', 'about-setting', NULL, NULL, 3, NULL, NULL),
(93, 'Slider List', 'slider-list', NULL, NULL, 1, NULL, NULL),
(94, 'Slider Create', 'slider-create', NULL, NULL, 2, NULL, NULL),
(95, 'Slider Edit', 'slider-edit', NULL, NULL, 3, NULL, NULL),
(96, 'Slider Show', 'slider-show', NULL, NULL, 4, NULL, NULL),
(97, 'Slider Delete', 'slider-delete', NULL, NULL, 5, NULL, NULL),
(98, 'Staff List', 'staff-list', NULL, NULL, 1, NULL, NULL),
(99, 'Staff Create', 'staff-create', NULL, NULL, 2, NULL, NULL),
(100, 'Staff Edit', 'staff-edit', NULL, NULL, 3, NULL, NULL),
(101, 'Staff Show', 'staff-show', NULL, NULL, 4, NULL, NULL),
(102, 'Staff Delete', 'staff-delete', NULL, NULL, 5, NULL, NULL),
(103, 'Staff Sort Order', 'staff-sort-order', NULL, NULL, 5, NULL, NULL),
(104, 'Tracker List', 'tracker-list', NULL, NULL, 1, NULL, NULL),
(105, 'Tracker Delete', 'tracker-delete', NULL, NULL, 5, NULL, NULL),
(106, 'User List', 'user-list', NULL, NULL, 1, NULL, NULL),
(107, 'User Create', 'user-create', NULL, NULL, 2, NULL, NULL),
(108, 'User Edit', 'user-edit', NULL, NULL, 3, NULL, NULL),
(109, 'User Show', 'user-show', NULL, NULL, 4, NULL, NULL),
(110, 'User Delete', 'user-delete', NULL, NULL, 5, NULL, NULL),
(111, 'User Profile List', 'user-profile-list', NULL, NULL, 1, NULL, NULL),
(112, 'User Profile Create', 'user-profile-create', NULL, NULL, 2, NULL, NULL),
(113, 'User Profile Edit', 'user-profile-edit', NULL, NULL, 3, NULL, NULL),
(114, 'User Profile Show', 'user-profile-show', NULL, NULL, 4, NULL, NULL),
(115, 'User Profile Delete', 'user-profile-delete', NULL, NULL, 5, NULL, NULL),
(116, 'User Change Password', 'user-change-password', NULL, NULL, 5, NULL, NULL);

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
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

CREATE TABLE `popups` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `type`, `user_id`, `category_id`, `lang_id`, `unique_id`, `title`, `slug`, `thumbnail`, `content`, `excerpt`, `status`, `featured`, `tag`, `author`, `url`, `visit_no`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'page', 1, NULL, 1, '1_5e27354db73d7', 'Organization Establishment and Introduction', 'organization-establishment-and-introduction', NULL, '<p>Organization Establishment and Introduction</p>', 'Organization Establishment and Introduction', 1, NULL, NULL, NULL, NULL, 0, '2020-01-21 17:30:53', NULL, NULL),
(4, 'page', 1, NULL, 2, '1_5e27354db73d7', 'कार्यालय स्थांपना एवं परिचय', 'l-e', NULL, '<p><strong>१. पृष्ठभूमि</strong><br />\r\n<br />\r\nकम्पनी रजिष्ट्रारको कार्यालय, उद्योग मन्त्रालय अन्तर्गत २०४९ साल माघ महिनामा स्थापित विभागस्तरीय कार्यालय हो । यो कार्यालय स्थापना हुनुभन्दा अगाडि कम्पनी प्रशासन सम्वन्धी कार्यहरु विभिन्न निकायहरु उद्योग विभाग, बाणिज्य विभाग, घरेलु तथा साना उद्योग विभाग, कृषि विभाग लगायतका निकायहरुबाट सम्पादन हुने गरेकोमा कम्पनी ऐनको प्रयोग तथा पालनामा एकरुपता ल्याउने उद्देश्यबाट सबै प्रकारका कम्पनी प्रशासनसम्वन्धी काम कारवाहीहरु समान र एकै किसिमले एउटै निकायबाट सम्पादन गर्न यस कार्यालयको स्थापना भएको हो । यस कार्यालयको कार्य क्षेत्र नेपाल राज्यभरी रहेको छ । यस कार्यालयको शाखा कार्यालयहरु हालसम्म स्थापना गरिएका छैनन् । कम्पनी ऐनको इतिहास हेर्दा र्सवप्रथम कम्पनी ऐन १९९३ आएको र सो पश्चात कम्पनी ऐन २०२१, कम्पनी ऐन २०५३, कम्पनी अध्यादेश २०६२ हुदै हाल कम्पनी ऐन २०६३ लागू भएको छ ।<br />\r\n<br />\r\n<strong>२. दृष्टिकोण</strong><br />\r\n<br />\r\nकम्पनीका संस्थापक र र्सवसाधारणलाइ सुलभ र प्रभावकारी सेवा उपलव्ध गराउने ।<br />\r\n<br />\r\n<strong>३. अवधारणा</strong></p>\r\n\r\n<ul>\r\n	<li>नया दर्ता हुने कम्पनीहरुको छिटो छरितो र प्रभावकारी सेवा उपलव्ध गराउने ।</li>\r\n	<li>कम्पनी ऐन बमोजिम आवश्यक क्रियाकलाप र कागजातहरुको माध्यमबाट समेत अनुगमन गर्ने ।</li>\r\n	<li>कम्पनी सम्बन्धि जानकारी र कागजातहरु सम्बद्ध पक्ष, र्सवसाधारण सदस्य र सरोकारवालालाई उपलव्ध गराउने ।</li>\r\n	<li>कम्पनी प्रशासनका क्षेत्रमा आइपरेका चूनौतीहरुलाइ स्पष्ट र प्रभावकारी रुपमा समाधान गर्दै कम्पनी प्रशासन सम्बन्धि सेवाहरु उपलव्ध गराउने ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>४. उद्देश्य</strong><br />\r\n<br />\r\nकम्पनी ऐन वमोजिम शेयरको विक्रीबाट पूँजी उर्ठाई सीमित दायित्वका आधारमा त्यसबाट कुनै उद्योग व्यवसाय गर्न चाहने व्यक्ति वा समुहले प्रा.लि. तथा प.लि. कम्पनी दर्ता गर्न चाहेमा उक्त ऐन वमोजिम कम्पनी दर्ता गरिदिई ती कम्पनीहरुलाई आर्थिक तथा कानूनी अनुशासनमा राखी संचालन गर्न लगाई औद्योगिक तथा व्यापारिक प्रवर्द्धनमा सहयोग पुर्&zwj;याई पूँजी बजारको विकासमा थप टेवा पुर्&zwj;याउने कम्पनी रजिष्ट्रारको कार्यालयको उद्देश्य रहेको छ ।<br />\r\n<br />\r\n<strong>५. प्रमुख कार्यहरु</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनी ऐन,२०६३ वमोजिम प्राइभेट लिमिटेड, पव्लिक लिमिटेड, मुनाफा वितरण नगर्ने कम्पनीहरु दर्ता गर्ने ।</li>\r\n	<li>प.लि.कम्पनीहरुको विवरण पत्र प्रकाशित गर्नु पूर्व जांचवुझ गरी अभिलेख राख्ने ।</li>\r\n	<li>शेयर पूँजी वढाउन र कम्पनीहरुको नाम परिवर्तन वा संशोधन गर्ने लगायत प्रवन्धपत्र र नियमावलीमा अन्य संशोधन गर्न स्वीकृति दिने ।</li>\r\n	<li>दर्ता भएका कम्पनीहरुले कम्पनी ऐन वमोजिम कार्य गरे नगरेको अनुगमन गर्ने, छानविन गर्ने र आवश्यकतानुसार निरीक्षक समेत खटाउने ।</li>\r\n	<li>कम्पनी ऐन, २०६३ को सम्वन्धमा राय परामर्शहरु उपलव्ध गराउने ।</li>\r\n	<li>प्रवन्धपत्र एवं नियमावलीमा आवश्यकता अनुसार संशोधनको अभिलेख गर्ने ।</li>\r\n	<li>कम्पनीहरुको अद्यावधिक अभिलेख राख्ने ।</li>\r\n	<li>कम्पनी ऐन अनुसार कम्पनीको खारेजी सम्वन्धी कार्य गर्ने ।</li>\r\n	<li>कम्पनी ऐन, २०६३ विपरित हुने गरी काम कारवाही भएको कुरा शेयरवालाको उजूरी तथा अन्य तरिकाबाट जानकारी हुन आएमा आवश्यक कारवाही गरी नियमित गराउने ।</li>\r\n	<li>कम्पनीहरु गाभ्ने सम्वन्धी काम कारवाही गर्ने ।</li>\r\n	<li>कम्पनी ऐन,२०६३ बमोजिम तोकिएका विवरण, सूचना तथा जानकारीहरु निर्धारित समयमा दाखिला गर्न लगाउने र नगर्ने कम्पनीलाई तोकिए बमोजिम जरिवाना तथा खारेजी सम्बन्धी कार्य गर्ने ।</li>\r\n	<li>उल्लेखित कार्यहरु बाहेक कम्पनी ऐन,२०६३ ले निर्दिष्ट गरेका अन्य कार्यहरु सम्पादन गर्ने ।</li>\r\n	<li>नेपाल सरकारबाट समय समयमा भए गरेका निर्देशन अनुसार अन्य काम कारवाही गर्ने ।</li>\r\n</ul>', 'Organization Establishment and Introduction', 1, NULL, NULL, NULL, NULL, 0, '2020-01-21 17:30:53', NULL, NULL),
(5, 'page', 1, NULL, 1, '1_5e27359a40586', 'Company Operation Related Monitoring System', 'company-operation-related-monitoring-system', NULL, '<p><strong>१ पृष्ठभूमि :</strong><br />\r\n<br />\r\nकम्पनी ऐन,कमोजिम कम्पनी संस्थापन भैसकेपछि उक्त कम्पनीहरुले पालना गर्नुपर्ने शर्तहर र स्वीकृत उद्येश्य अनुरुप कम्पनी संचालन भैरहेको छ,छैन भनी अनुगमन गर्ने र ऐन, र निर्देशन विपरित कामकारवाही भैरहेको पाइएमा त्यस्तो कम्पनीलाइ कारवाही गर्ने जिम्मेवारी कम्पनी ऐन,२०६३ ले कम्पनी रजिष्ट्रारको कार्यालयलाइ सुम्पेको छ ।<br />\r\n<br />\r\n<strong>२ कार्यालयले कैफियत तलव गर्न सक्ने :</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीबाट पेश भएको कागजातहरूबाट कुनै कुरा नखुलेको अवस्थामा त्यस्तो ब्यहोरा खुलाउन वा कुनै कुराको कैफियत तलब गर्नु परेमा कार्यालयले उचित म्याद तोकी कम्पनीलाई कैफियत तलब गर्न सक्नेछ ।</li>\r\n	<li>उक्त बमोजिम कैफियत तलब गरिएका कुराहरूमा कम्पनीको व्यवस्थापनले उचित जवाफ सोही म्यादभित्र पठाउनु पर्नेछ ।</li>\r\n	<li>कैफियत तलबको सिलसिलामा कम्पनीको काम कारबाहीमा कुनै अनियमितता देखिएमा सो नियमित गर्न गराउन कार्यालयले कम्पनीलाई आवश्यक निर्देशन दिन सक्नेछ र त्यस्तो निर्देशनको पालना गर्नु कम्पनीको कर्तव्य हुनेछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>३ निरीक्षक खटाउन सक्ने :</strong><br />\r\n<br />\r\nकुनै कम्पनीले कम्पनी ऐन, २०६३ प्रबन्धपत्र ,नियमावली, विवरणपत्र, र्सवसम्मत संझौता वा प्रचलित कानूनविपरित काम कारवाही गरिरहेको छ भन्ने रीतपुर्वक निवेदन परेमा वा कुनै किसिमबाट यस्तो जानकारी हुन आएमा वा निर्धारित विवरण पेश नगरेमा कार्यालयले निरीक्षक खटाउन सक्दछ र यसको सम्पूर्ण लागत कम्पनीले व्यहोर्नु पर्दछ ।<br />\r\n<br />\r\n<strong>४ निरीक्षकलाइ सहयोग गर्नुपर्ने :</strong><br />\r\n<br />\r\nकार्यालयबाट नियुक्त भएका निरीक्षकलाई र निजले सम्पादन गर्ने कार्यको सिलसिलामा कम्पनी र सम्बद्ध सवै पक्षले सहयोग गर्नु पर्दछ अन्यथा सजायको भागी हुनेछ ।<br />\r\n<br />\r\n<strong>५ प्रतिवेदन पेश गर्नु पर्ने :</strong><br />\r\n<br />\r\nकम्पनी ऐन,२०६३ बमोजिम नियुक्त निरीक्षकले जांचबुझ गरिसकेपछि आफ्नो रायसहित प्रतिवेदन पेश गर्नु पर्दछ ।<br />\r\n<br />\r\n<strong>६ अनुगमनको तरिका</strong><br />\r\n<br />\r\nअनुगमन कार्यलाई प्रभावकारी बनाउन निम्न तरिका अवलम्वन गरिनेछ :</p>\r\n\r\n<ul>\r\n	<li>अनुगमनको परीक्षण सूची (चेक लिस्ट्) तयार गर्ने ।</li>\r\n	<li>स्थलगत अनुगमन गर्ने ।</li>\r\n	<li>नमूना छनोट प्रक्रियाद्वारा अनुगमन गर्ने ।</li>\r\n	<li>सम्भव भएसम्म प्रत्येक महिना कम्तिमा तीनवटा कम्पनीको स्थलगत अनुगमन गर्ने ।</li>\r\n	<li>स्थलगत अनुगमनको साथसाथै फायलको अध्ययनबाट आवश्यकतानुसार नियमित अनुगमनको लागि पव्लिक लिमिटेड कम्पनीहरुलाई पत्र लेख्ने, कम्पनी सचिवहरुको भेला गराएर छलफल गराउने र पत्रपत्रिका मार्फ् सूचित गर्ने जस्ता उपाय अवलम्वन गर्ने ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>७ परिक्षण गरिने विषय :</strong></p>\r\n\r\n<ul>\r\n	<li><strong>आर्थिक विवरण दुरुस्त छ छैन :</strong><br />\r\n	यसमा वासलात, नाफा नोक्सान हिसाव, सन्तुलन परीक्षण, नगद प्रवाह जस्ता विवरण पर्दछन् । साथै नियमानुसार उक्त विवरणहरु, र्सार्वजनिक गरिएको छ छैन भन्ने विषय हेरिने छ ।</li>\r\n	<li><strong>लेखापरीक्षकको नियुक्ति :</strong><br />\r\n	यसमा लेखापरीक्षण समयमा गरिएको छ छैन, लेखापरीक्षण प्रतिवेदन दुरुस्त छ छैन, लेखापरीक्षकले औल्याएको टिप्पणीमा कम्पनीले आवश्यक कारवाही गरेको छ छैन सो को छानविन गरिने छ ।</li>\r\n	<li><strong>शेयरधनीको विवरण दुरुस्त छ छैन :&nbsp;</strong>यसमा शेयरधनी दर्ता किताव, शेयरधनी प्रमाणपत्र, शेयरधनीको ठेगाना र सर्म्पर्क स्थान जस्ता विवरण पर्छन् । यसको अतिरिक्त संस्थापक शेयर, र्सार्वजनिक रुपमा शेयर आहृवान, दाखेल खारेज नामसारी आदि नियमित छन् छ्रैनन् भन्ने विषय पनि हेरिने छ ।</li>\r\n	<li><strong>नियमित रुपमा प्रारम्भिक सभा, साधारण सभा र विशेष साधारण सभा जस्ता सभाहरु सञ्चालन भएका छन् छैनन् :</strong>&nbsp;यसमा शेयरधनीहरुले पाउनुपर्ने जानकारी एवं विवरण, उनीहरुको गुनासो/शिकायत एवं माग व्यवस्थापन र उनीहरुले पाउनुपर्ने कागजातको प्रमाणिकरण जस्ता विषय पनि अनुगमन गरिने छ ।</li>\r\n	<li><strong>कम्पनीले आफ्नो प्रवन्धपत्र एवं नियमावली संशोधन गर्दा नियम पुर्&zwj;याएको छ छैन :</strong>&nbsp;यसमा कम्पनीको नाम परिवर्तन, पूँजी वृद्धि, ठेगाना परिवर्तन जस्ता विषयमा कार्यालयमा अभिलेख गर्ने, स्वीकृति लिने सम्वन्धी कार्यलाई नियमसँगत छ छैन हेरिने छ ।</li>\r\n	<li><strong>कम्पनीले राखेको उद्देश्य र कम्पनीले गरिरहेको कारोवार एवं कामबीच सामञ्जस्यता छ छैन :</strong>&nbsp;यसमा कानूनी वा गैरकानूनी गतिविधिको अतिरिक्त उद्देश्यहरु परिपूर्ति सम्वन्धी गतिविधिलाई समेत छानविन गरिने छ ।</li>\r\n	<li><strong>कम्पनी सचिवलाई तोकिएको काम निजबाट दुरुस्त रुपमा भएको छ छैन :</strong>&nbsp;सो सम्वन्धी छानविन गरिने छ ।</li>\r\n	<li><strong>कम्पनीले दर्ता भएपछि कारोवार प्रारम्भ गर्दा नियमपुर्वक स्वीकृति लिएको छ छैन :</strong>&nbsp;इजाजत लिनुपर्नेमा सम्वन्धित निकायबाट इजाजत लिएको छ छैन र कानून अनुसारका प्रक्रिया पूरा भएका छन् छैनन् सो सम्वन्धी जाँचवुझ गरिने छ ।</li>\r\n	<li>संचालक समितिको वैठक, माइन्यूटिङ्ग आदि । पब्लिक कम्पनीको हकमा वर्षो कम्तिमा ६ पटक संचालक समितिको बैठक बस्नुपर्ने प्रावधान छ तर २ बैठकको बीचको अन्तर ३ महिनाभन्दा बढी हुनुहुदैन ।</li>\r\n	<li>साहुको लगत ।</li>\r\n	<li>लेखा (नेपालीमा छ छैन र ऐनले तोके वमोजिम) ठीक दुरुस्त छ, छैन ।</li>\r\n	<li>कानूनले तोकेको विषय र कागजातको दर्ता व्यवस्था ।</li>\r\n	<li>कम्पनीले जारी गरेको डिबेञ्चर, ऋणपत्र, धितोको अवस्था ।</li>\r\n	<li>कम्पनीले स्थापना गरेको सहायक कम्पनी, कम्पनीहरुको समूहको बिवरण र लगत ।</li>\r\n	<li>शेयरधनी, संचालक, साहुजस्ता सम्वद्ध पक्षले गरेको गुनासोको व्यवस्थापन ।</li>\r\n</ul>', NULL, 1, NULL, NULL, NULL, NULL, 0, '2020-01-21 17:32:10', NULL, NULL),
(6, 'page', 1, NULL, 2, '1_5e27359a40586', 'कम्पनी संचालन सम्बन्धि अनुगमन व्यवस्था', 'l-b-a', NULL, '<p><strong>१ पृष्ठभूमि :</strong><br />\r\n<br />\r\nकम्पनी ऐन,कमोजिम कम्पनी संस्थापन भैसकेपछि उक्त कम्पनीहरुले पालना गर्नुपर्ने शर्तहर र स्वीकृत उद्येश्य अनुरुप कम्पनी संचालन भैरहेको छ,छैन भनी अनुगमन गर्ने र ऐन, र निर्देशन विपरित कामकारवाही भैरहेको पाइएमा त्यस्तो कम्पनीलाइ कारवाही गर्ने जिम्मेवारी कम्पनी ऐन,२०६३ ले कम्पनी रजिष्ट्रारको कार्यालयलाइ सुम्पेको छ ।<br />\r\n<br />\r\n<strong>२ कार्यालयले कैफियत तलव गर्न सक्ने :</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीबाट पेश भएको कागजातहरूबाट कुनै कुरा नखुलेको अवस्थामा त्यस्तो ब्यहोरा खुलाउन वा कुनै कुराको कैफियत तलब गर्नु परेमा कार्यालयले उचित म्याद तोकी कम्पनीलाई कैफियत तलब गर्न सक्नेछ ।</li>\r\n	<li>उक्त बमोजिम कैफियत तलब गरिएका कुराहरूमा कम्पनीको व्यवस्थापनले उचित जवाफ सोही म्यादभित्र पठाउनु पर्नेछ ।</li>\r\n	<li>कैफियत तलबको सिलसिलामा कम्पनीको काम कारबाहीमा कुनै अनियमितता देखिएमा सो नियमित गर्न गराउन कार्यालयले कम्पनीलाई आवश्यक निर्देशन दिन सक्नेछ र त्यस्तो निर्देशनको पालना गर्नु कम्पनीको कर्तव्य हुनेछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>३ निरीक्षक खटाउन सक्ने :</strong><br />\r\n<br />\r\nकुनै कम्पनीले कम्पनी ऐन, २०६३ प्रबन्धपत्र ,नियमावली, विवरणपत्र, र्सवसम्मत संझौता वा प्रचलित कानूनविपरित काम कारवाही गरिरहेको छ भन्ने रीतपुर्वक निवेदन परेमा वा कुनै किसिमबाट यस्तो जानकारी हुन आएमा वा निर्धारित विवरण पेश नगरेमा कार्यालयले निरीक्षक खटाउन सक्दछ र यसको सम्पूर्ण लागत कम्पनीले व्यहोर्नु पर्दछ ।<br />\r\n<br />\r\n<strong>४ निरीक्षकलाइ सहयोग गर्नुपर्ने :</strong><br />\r\n<br />\r\nकार्यालयबाट नियुक्त भएका निरीक्षकलाई र निजले सम्पादन गर्ने कार्यको सिलसिलामा कम्पनी र सम्बद्ध सवै पक्षले सहयोग गर्नु पर्दछ अन्यथा सजायको भागी हुनेछ ।<br />\r\n<br />\r\n<strong>५ प्रतिवेदन पेश गर्नु पर्ने :</strong><br />\r\n<br />\r\nकम्पनी ऐन,२०६३ बमोजिम नियुक्त निरीक्षकले जांचबुझ गरिसकेपछि आफ्नो रायसहित प्रतिवेदन पेश गर्नु पर्दछ ।<br />\r\n<br />\r\n<strong>६ अनुगमनको तरिका</strong><br />\r\n<br />\r\nअनुगमन कार्यलाई प्रभावकारी बनाउन निम्न तरिका अवलम्वन गरिनेछ :</p>\r\n\r\n<ul>\r\n	<li>अनुगमनको परीक्षण सूची (चेक लिस्ट्) तयार गर्ने ।</li>\r\n	<li>स्थलगत अनुगमन गर्ने ।</li>\r\n	<li>नमूना छनोट प्रक्रियाद्वारा अनुगमन गर्ने ।</li>\r\n	<li>सम्भव भएसम्म प्रत्येक महिना कम्तिमा तीनवटा कम्पनीको स्थलगत अनुगमन गर्ने ।</li>\r\n	<li>स्थलगत अनुगमनको साथसाथै फायलको अध्ययनबाट आवश्यकतानुसार नियमित अनुगमनको लागि पव्लिक लिमिटेड कम्पनीहरुलाई पत्र लेख्ने, कम्पनी सचिवहरुको भेला गराएर छलफल गराउने र पत्रपत्रिका मार्फ् सूचित गर्ने जस्ता उपाय अवलम्वन गर्ने ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>७ परिक्षण गरिने विषय :</strong></p>\r\n\r\n<ul>\r\n	<li><strong>आर्थिक विवरण दुरुस्त छ छैन :</strong><br />\r\n	यसमा वासलात, नाफा नोक्सान हिसाव, सन्तुलन परीक्षण, नगद प्रवाह जस्ता विवरण पर्दछन् । साथै नियमानुसार उक्त विवरणहरु, र्सार्वजनिक गरिएको छ छैन भन्ने विषय हेरिने छ ।</li>\r\n	<li><strong>लेखापरीक्षकको नियुक्ति :</strong><br />\r\n	यसमा लेखापरीक्षण समयमा गरिएको छ छैन, लेखापरीक्षण प्रतिवेदन दुरुस्त छ छैन, लेखापरीक्षकले औल्याएको टिप्पणीमा कम्पनीले आवश्यक कारवाही गरेको छ छैन सो को छानविन गरिने छ ।</li>\r\n	<li><strong>शेयरधनीको विवरण दुरुस्त छ छैन :&nbsp;</strong>यसमा शेयरधनी दर्ता किताव, शेयरधनी प्रमाणपत्र, शेयरधनीको ठेगाना र सर्म्पर्क स्थान जस्ता विवरण पर्छन् । यसको अतिरिक्त संस्थापक शेयर, र्सार्वजनिक रुपमा शेयर आहृवान, दाखेल खारेज नामसारी आदि नियमित छन् छ्रैनन् भन्ने विषय पनि हेरिने छ ।</li>\r\n	<li><strong>नियमित रुपमा प्रारम्भिक सभा, साधारण सभा र विशेष साधारण सभा जस्ता सभाहरु सञ्चालन भएका छन् छैनन् :</strong>&nbsp;यसमा शेयरधनीहरुले पाउनुपर्ने जानकारी एवं विवरण, उनीहरुको गुनासो/शिकायत एवं माग व्यवस्थापन र उनीहरुले पाउनुपर्ने कागजातको प्रमाणिकरण जस्ता विषय पनि अनुगमन गरिने छ ।</li>\r\n	<li><strong>कम्पनीले आफ्नो प्रवन्धपत्र एवं नियमावली संशोधन गर्दा नियम पुर्&zwj;याएको छ छैन :</strong>&nbsp;यसमा कम्पनीको नाम परिवर्तन, पूँजी वृद्धि, ठेगाना परिवर्तन जस्ता विषयमा कार्यालयमा अभिलेख गर्ने, स्वीकृति लिने सम्वन्धी कार्यलाई नियमसँगत छ छैन हेरिने छ ।</li>\r\n	<li><strong>कम्पनीले राखेको उद्देश्य र कम्पनीले गरिरहेको कारोवार एवं कामबीच सामञ्जस्यता छ छैन :</strong>&nbsp;यसमा कानूनी वा गैरकानूनी गतिविधिको अतिरिक्त उद्देश्यहरु परिपूर्ति सम्वन्धी गतिविधिलाई समेत छानविन गरिने छ ।</li>\r\n	<li><strong>कम्पनी सचिवलाई तोकिएको काम निजबाट दुरुस्त रुपमा भएको छ छैन :</strong>&nbsp;सो सम्वन्धी छानविन गरिने छ ।</li>\r\n	<li><strong>कम्पनीले दर्ता भएपछि कारोवार प्रारम्भ गर्दा नियमपुर्वक स्वीकृति लिएको छ छैन :</strong>&nbsp;इजाजत लिनुपर्नेमा सम्वन्धित निकायबाट इजाजत लिएको छ छैन र कानून अनुसारका प्रक्रिया पूरा भएका छन् छैनन् सो सम्वन्धी जाँचवुझ गरिने छ ।</li>\r\n	<li>संचालक समितिको वैठक, माइन्यूटिङ्ग आदि । पब्लिक कम्पनीको हकमा वर्षो कम्तिमा ६ पटक संचालक समितिको बैठक बस्नुपर्ने प्रावधान छ तर २ बैठकको बीचको अन्तर ३ महिनाभन्दा बढी हुनुहुदैन ।</li>\r\n	<li>साहुको लगत ।</li>\r\n	<li>लेखा (नेपालीमा छ छैन र ऐनले तोके वमोजिम) ठीक दुरुस्त छ, छैन ।</li>\r\n	<li>कानूनले तोकेको विषय र कागजातको दर्ता व्यवस्था ।</li>\r\n	<li>कम्पनीले जारी गरेको डिबेञ्चर, ऋणपत्र, धितोको अवस्था ।</li>\r\n	<li>कम्पनीले स्थापना गरेको सहायक कम्पनी, कम्पनीहरुको समूहको बिवरण र लगत ।</li>\r\n	<li>शेयरधनी, संचालक, साहुजस्ता सम्वद्ध पक्षले गरेको गुनासोको व्यवस्थापन ।</li>\r\n</ul>', NULL, 1, NULL, NULL, NULL, NULL, 0, '2020-01-21 17:32:10', NULL, NULL),
(7, 'page', 1, NULL, 1, '1_5e2736171bccc', 'कम्पनी दर्ता बिधि / कागजात', 'b', NULL, '<p><strong>१ कम्पनी :</strong><br />\r\n<br />\r\n(क) कम्पनी : उद्योग व्यवसाय गर्न चाहने व्यक्ति वा समूहले कम्पनी ऐन, २०६३ अनुरुप प्रा.लि. तथा प.लि. को रुपमा संस्थापन गरेका अविच्छिन्न उत्तराधिकारवाला एक स्वशासित र संगठित संस्थालाइ बुझिन्छ । यसले व्यक्तिसरह चल अचल सम्पत्ति प्राप्त गर्न, राख्न, वेचविखन गर्न वा अन्य किसिमले व्यवसाय गर्न सक्छ साथै यसले आफ्नो नामबाट नालिस उजुर गर्न सक्छ ।<br />\r\n<br />\r\n(ख) प्राइभेट कम्पनी : उपरोक्त क बमोजिम संस्थापित बढीमा ५० जनासम्म शेयरधनीहरुको कम्पनी हो साथै एकल शेयरधनी भएको कम्पनी पनि प्राइभेट कम्पनी अर्न्तर्गत पर्दछ ।<br />\r\n<br />\r\n(ग) पव्लिक कम्पनी : उक्त क बमोजिम संस्थापित कम्पनीमध्ये प्राइभेट कम्पनीबाहेकको कम्पनी हो जसमा कम्तीमा ७ जना संस्थापक रहनु पर्ने र चुक्ता पूजी कम्तीमा रु.१ करोड भएको हुनुपर्दछ ।<br />\r\n<br />\r\n(घ) मुनाफा वितरण नगर्ने कम्पनी : कुनै उद्येश्य प्राप्तीको लागी आर्जित मुनाफा वा वचत गरेको रकमबाट लाभांस वा अन्य कुनै रकम सदस्यहरुलाइ वितरण वा भुक्तानी गर्न नपाउने गरी कम्पनी ऐन, २०६३ बमोजिम संस्थापित कम्पनी हो जसमा कम्तीमा ५ जनासम्म संस्थापक रहने र यस्तो कम्पनीले आफ्नो नामको पछाडि सामान्यतया कम्पनी लिमिटेड वा प्रा.लि. जस्ता शव्दहरु लेखिरहनु पर्दैन ।<br />\r\n<br />\r\n<strong>२ कम्पनी दर्ता :</strong><br />\r\n<br />\r\nकुनै पनि कम्पनी दर्ता उद्योग मन्त्रालय अर्न्तर्गत कम्पनी रजिष्ट्रारको कार्यालयबाट हुन्छ जसको दागी देहायबमोजिमका कागजपत्रहरु आवश्यक पर्दछन् ।<br />\r\n<br />\r\n<strong>२.१ नेपाली नागरिक शेयरधनी रहने -मुनाफा वितरण नगर्ने समेत) गरी संस्थापन हुने कम्पनीको सम्बन्धमा :</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"http://ocr.gov.np/images/pdf/1.doc\" target=\"_blank\">अनुसूची १</a>&nbsp;बमोजिमको निवेदन ।</li>\r\n	<li>एकल शेयरधनी रहने प्रस्तावित प्राइभेट कम्पनी भएमा&nbsp;<a href=\"http://ocr.gov.np/images/pdf/9.doc\" target=\"_blank\">अनुसूची ९</a>&nbsp;बमोजिम, एकल बाहेक अन्य प्राइभेट कम्पनी भएमा&nbsp;<a href=\"http://ocr.gov.np/images/pdf/10.doc\" target=\"_blank\">अनुसूची १०</a>&nbsp;बमोजिम, पव्लिक लिमिटेड कम्पनी भएमा&nbsp;<a href=\"http://ocr.gov.np/images/pdf/11.doc\" target=\"_blank\">अनुसूची ११</a>&nbsp;बमोजिम र मुनाफा वितरण नगर्ने कम्पनी भएमा&nbsp;<a href=\"http://ocr.gov.np/images/pdf/12.doc\" target=\"_blank\">अनुसूची १२</a>&nbsp;बमोजिमको प्रबन्धपत्र २ प्रति ।</li>\r\n	<li>प्रस्तावित कम्पनी प्राइभेट लिमिटेड भएमा&nbsp;<a href=\"http://ocr.gov.np/images/pdf/14.doc\" target=\"_blank\">अनुसूची १४&nbsp;</a>बमोजिम, पव्लिक लिमिटेड कम्पनी भए&nbsp;<a href=\"http://ocr.gov.np/images/pdf/15.doc\" target=\"_blank\">अनुसूची १५</a>&nbsp;बमोजिम र मुनाफा वितरण नगर्ने कम्पनी भए&nbsp;<a href=\"http://ocr.gov.np/images/pdf/16.doc\" target=\"_blank\">अनुसूची १६</a>&nbsp;बमोजिमको नियमावली २ प्रति ।</li>\r\n	<li>संस्थापक शेयरधनीहरुको नागरिकताको प्रमाणपत्रको प्रमाणित प्रतिलिपि ।</li>\r\n	<li>प्रा.लि.कम्पनीको हकमा र्सवसम्मत संझौता भएको रहेछ भने त्यस्तो संझौताको प्रतिलिपि ।</li>\r\n	<li>पव्लिक लिमिटेड कम्पनीको हकमा कम्पनी संस्थापना गर्नु अघि संस्थापकहरुबीच कुनै संझौता भएको रहेछ भने सोको प्रतिलिपि ।</li>\r\n	<li>कुनै निकायको पूर्व स्वीकृति वा इजाजत आवश्यक पर्ने भए त्यस्तो निकायको स्वीकृति वा इजाजत ।</li>\r\n	<li>संस्थापक नेपाली कम्पनी (कानूनी व्यक्ति) भएमा कम्पनी दर्ता प्रमाणपत्रको प्रतिलिपि, नया संस्थापना हुन लागेको कम्पनीमा के, कति र कसरी लगानी गर्ने तथा संस्थापक कम्पनीको प्रतिनिधित्व गर्ने व्यक्तिको नाम खुलाइएको संचालक समीतिको निर्णयको प्रतिलिपि र प्रतिनिधिको नागरिकता प्रमाणपत्रको प्रमाणित प्रतिलिपि ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>२.२ विदेशी नागरिक संस्थापक तथा शेयरधनी रहने गरी स्थापना हुने संयुक्त लगानी वा पूर्ण विदेशी लगानी हुने कम्पनीको लागी आवश्यक थप कागजपत्र ।</strong></p>\r\n\r\n<ul>\r\n	<li>प्रचलित कानून वमोजिम सम्वन्धित निकायबाट नेपाल राज्यभित्र लगानी गर्न अनुमति पाएको इजाजतपत्रको प्रतिलिपि,</li>\r\n	<li>संयुक्त लगानी हुने औद्योगिक कम्पनीको हकमा उद्योग विभागबाट स्वीकृति तथा संयुक्त लगानी सम्झौताको प्रतिलिपि,</li>\r\n	<li>विदेशी व्यक्ति संस्थापक भएमा निजको राहदानी (पासपोर्ट) को प्रमाणित प्रतिलिपि र कानूनी व्यक्ति (कम्पनी) भए कम्पनी दर्ता प्रमाणपत्रको प्रमाणित प्रतिलिपि तथा कम्पनीले लगानी गर्ने सम्वन्धी निर्णयको प्रतिलिपि र कम्पनीको तर्फाट प्रतिनिधित्व गर्ने व्यक्तिको मनोनयन पत्र एवं निजको राहदानीको प्रमाणित प्रतिलिपि ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<br />\r\n<strong>२.३ प्राइभेट र्फम । साझेदारी फर्मलाइ कम्पनीमा परिणत गरी कम्पनी दर्ता गर्न आवश्यक थप कागजपत्र</strong></p>\r\n\r\n<ul>\r\n	<li>प्रा.र्फम/साझेदारी र्फमलाई कम्पनीमा परिणत गर्ने सन्वन्धमा संस्थापकहरुवीचको संझौता ।</li>\r\n	<li>नविकरण गरिएको र्फम दर्ता प्रमाणपत्र ।</li>\r\n	<li>आयकर दर्ताको प्रमाणपत्रको प्रतिलिपि र कर फछ्र्यौटको प्रमाण वा सहमती ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<br />\r\n<strong>२.४ प्राइभेट लिमिटेडलाई पव्लिक लिमिटेडमा र पव्लिक लिमिटेडलाई प्राइभेट लिमिटेडमा परिणत गर्न आवश्यक कागजपत्र :फर्म</strong><br />\r\n<br />\r\n<strong>क) प्रा.लि.लाई प.लि. मा परिणत गर्न आवश्यक थप कागजपत्र :</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"http://ocr.gov.np/images/pdf/6.doc\" target=\"_blank\">अनुसूची ६</a>&nbsp;बमोजिमको निवेदन ।</li>\r\n	<li>साधारण सभाको निर्णयको प्रतिलिपि ।</li>\r\n	<li>कम्पनीमा कम्तीमा २५ प्रतिशत शेयर पव्लिक कम्पनीले खरिद गरेको कागजात ।</li>\r\n	<li>कम्पनीले कुनै पव्लिक कम्पनीको कम्तीमा २५ प्रतिशत शेयर खरिद गरेको कागजात ।</li>\r\n	<li>प्रस्तावित ३ महले प्रवन्धपत्र र नियमावलीको १।१ प्रति ।</li>\r\n	<li>संस्थापक थप हुने भए नागरिकता प्रमाणपत्रको प्रतिलिपि ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>ख) प.लि.लाई प्रा.लि.मा परिणत गर्न आवश्यक थप कागजपत्र :</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"http://ocr.gov.np/images/pdf/7.doc\" target=\"_blank\">अनुसूची ७</a>&nbsp;बमोजिमको निवेदन ।</li>\r\n	<li>साधारण सभाको निर्णयको प्रतिलिपि ।</li>\r\n	<li>पूजी खुलेको लेखा परिक्षण प्रतिवेदन ।</li>\r\n	<li>शेयरधनी संख्या ७ भन्दा कम भएको कारणबाट पव्लिक लिमिटेडबाट प्रा.लि.मा परिणत हुने</li>\r\n	<li>भएमा सोसम्बन्धि कागजात ।</li>\r\n	<li>प्रस्तावित ३ महले प्रवन्धपत्र र नियमावलीको १।१ प्रति ।</li>\r\n	<li>संस्थापक थप हुने भए नागरिकता प्रमाणपत्रको प्रतिलिपि ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>२.५ विदेशी कम्पनीको दर्ता, शाखा कार्यालय र सर्म्पर्क कार्यालय स्थापना सम्वन्धि (दफा १५४,१५५)</strong></p>\r\n\r\n<ul>\r\n	<li>अनुसुची २९ बमोजिमको ढांचामा निवेदन ।</li>\r\n	<li>व्यवसाय वा कारोवार संचालनको लागी अधिकारप्राप्त अधिकारीबाट प्राप्त अनुमतिपत्र ।</li>\r\n	<li>कम्पनी संस्थापनको अधिकार पत्र, प्रमाणपत्र, प्रवन्धपत्र तथा नियमावलीको प्रतिलिपि र सोको नेपाली अनुवाद ।</li>\r\n	<li>कम्पनीको मूल कार्यालय र कारोवार गर्ने मूख्य ठेगाना, कम्पनी संस्थापना भएको मिति, जारी पूजी र मूख्य उद्येश्य खुलेको विवरण ।</li>\r\n	<li>कम्पनीका संचालक, प्रवन्धक, कम्पनी सचिव वा प्रमुख पदाधिकारीस्को नाम, ठेगाना र निजहरुको नागरिकता सम्वन्धि विवरण ।</li>\r\n	<li>म्याद सूचना जारी हुदा कम्पनीको तर्फाट वुझिलिने आधिकारिक व्यक्तिको नाम ठेगाना खुलेको विवरण ।</li>\r\n	<li>नेपाल राज्यमा व्यवसाय वा कारोवार गर्ने भए प्रस्तावित लगानी र कारोवारको विवरण ।</li>\r\n	<li>नेपाल राज्यमा व्यवसाय वा कारोवार गर्ने मूख्य स्थान र ठेगाना ।</li>\r\n	<li>नेपालमा व्यवसाय वा कारोवार शुरु गर्ने प्रस्तावित मिति ।</li>\r\n	<li>कम्पनीको संचालक वा निजको प्रतिनिधिले कम्पनीको तर्फाट गरेको उद्घोषण ।</li>\r\n	<li>दफा १५७ बमोजिमको अख्तियारनामा ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>२.६ शाखा थपको अभिलेख गर्ने :</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीको अनुरोधपत्र ।</li>\r\n	<li>संचालक समीतिको निर्णय प्रतिलिपि ।</li>\r\n	<li>हाल थप समेत कायम रहने शाखा विवरण ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>२.७ कम्पनी दर्ता सम्बन्धमा ध्यान दिनुपर्ने कुराहरु :</strong></p>\r\n\r\n<ul>\r\n	<li>प्राइभेट लिमिटेड कम्पनीको हकमा कम्तीमा एक जना र बढीमा ५० जनासम्म र प.लि. कम्पनीको हकमा कम्तीमा ७ जना संस्थापक शेयरधनीहरु हुनु आवश्यक छ । तर कुनै पव्लिक लिमिटेड कम्पनी संस्थापक भई अर्को पव्लिक लिमिटेड कम्पनी संस्थापना गर्दा ७ जना संस्थापकहरुको आवश्यकता पर्दैन ।</li>\r\n	<li>प्रवन्धपत्र र नियमावली यथाशक्य नेपाली कागजमा अथवा टिकाउ खालको कागजमा एकातर्फमात्र टाइप भएको हुनर्ुपर्दछ ।</li>\r\n	<li>प्रवन्धपत्र र नियमावली शुद्ध तथा स्पष्ट नेपाली भाषामा तयार गरिएको हुनर्ुपर्दछ । विदेशी लगानी हुने कम्पनीको हकमा प्रवन्धपत्र र नियमावली शुद्ध तथा स्पष्ट अंग्रेजी भाषामा तयार गरिएको हुनर्ुपर्छ तर ती दुवैको नेपाली रुपान्तर पनि पेश गर्नु पर्दछ ।</li>\r\n	<li>प्रवन्धपत्र र नियमावलीको प्रत्येक पानामा तलतिर सबै संस्थापक शेयरवालाहरुले दस्तखत गरेको हुनुपर्दछ । प्रवन्धपत्र र नियमावलीको अन्तिम प्रकरणमा संस्थापक शेयरवालाहरुको पूरा नाम, ठेगाना, लिन कवुल गरेको शेयर संख्या र दस्तखतको साथ साथै प्रत्येकसंस्थापकको दस्तखत मुनीस्पष्ट वूझिने गरी ल्याप्चे सहिछाप हुनर्ुपर्दछ । संस्थापक शेयरवाला पिच्छे एकजना साक्षीको पूरा नाम, ठेगाना र दस्तखत हुनु आवश्यक छ ।</li>\r\n	<li>नयाँ कम्पनी दर्ता हुँदा त्यस्तो कम्पनीको शेयर पूरानो कम्पनीले खरीद गर्ने प्रावधान राखिएमा पूरानो कम्पनीको आर्थिक अवस्था चित्रण भएको प्रमाण पेश गर्नुपर्छ ।</li>\r\n	<li>कम्पनी दर्ता गर्न आउदा संस्थापक शेयरधनीहरुमध्ये कम्तीमा १ जना शैयरधनी कार्यालयमा स्वयम् उपस्थित भै सनाखत गर्नु पर्दछ ।</li>\r\n</ul>', NULL, 1, NULL, NULL, NULL, NULL, 0, '2020-01-21 17:34:15', NULL, NULL),
(8, 'page', 1, NULL, 2, '1_5e2736171bccc', 'कम्पनी दर्ता बिधि / कागजात', 'b', NULL, '<p><strong>१ कम्पनी :</strong><br />\r\n<br />\r\n(क) कम्पनी : उद्योग व्यवसाय गर्न चाहने व्यक्ति वा समूहले कम्पनी ऐन, २०६३ अनुरुप प्रा.लि. तथा प.लि. को रुपमा संस्थापन गरेका अविच्छिन्न उत्तराधिकारवाला एक स्वशासित र संगठित संस्थालाइ बुझिन्छ । यसले व्यक्तिसरह चल अचल सम्पत्ति प्राप्त गर्न, राख्न, वेचविखन गर्न वा अन्य किसिमले व्यवसाय गर्न सक्छ साथै यसले आफ्नो नामबाट नालिस उजुर गर्न सक्छ ।<br />\r\n<br />\r\n(ख) प्राइभेट कम्पनी : उपरोक्त क बमोजिम संस्थापित बढीमा ५० जनासम्म शेयरधनीहरुको कम्पनी हो साथै एकल शेयरधनी भएको कम्पनी पनि प्राइभेट कम्पनी अर्न्तर्गत पर्दछ ।<br />\r\n<br />\r\n(ग) पव्लिक कम्पनी : उक्त क बमोजिम संस्थापित कम्पनीमध्ये प्राइभेट कम्पनीबाहेकको कम्पनी हो जसमा कम्तीमा ७ जना संस्थापक रहनु पर्ने र चुक्ता पूजी कम्तीमा रु.१ करोड भएको हुनुपर्दछ ।<br />\r\n<br />\r\n(घ) मुनाफा वितरण नगर्ने कम्पनी : कुनै उद्येश्य प्राप्तीको लागी आर्जित मुनाफा वा वचत गरेको रकमबाट लाभांस वा अन्य कुनै रकम सदस्यहरुलाइ वितरण वा भुक्तानी गर्न नपाउने गरी कम्पनी ऐन, २०६३ बमोजिम संस्थापित कम्पनी हो जसमा कम्तीमा ५ जनासम्म संस्थापक रहने र यस्तो कम्पनीले आफ्नो नामको पछाडि सामान्यतया कम्पनी लिमिटेड वा प्रा.लि. जस्ता शव्दहरु लेखिरहनु पर्दैन ।<br />\r\n<br />\r\n<strong>२ कम्पनी दर्ता :</strong><br />\r\n<br />\r\nकुनै पनि कम्पनी दर्ता उद्योग मन्त्रालय अर्न्तर्गत कम्पनी रजिष्ट्रारको कार्यालयबाट हुन्छ जसको दागी देहायबमोजिमका कागजपत्रहरु आवश्यक पर्दछन् ।<br />\r\n<br />\r\n<strong>२.१ नेपाली नागरिक शेयरधनी रहने -मुनाफा वितरण नगर्ने समेत) गरी संस्थापन हुने कम्पनीको सम्बन्धमा :</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"http://ocr.gov.np/images/pdf/1.doc\" target=\"_blank\">अनुसूची १</a>&nbsp;बमोजिमको निवेदन ।</li>\r\n	<li>एकल शेयरधनी रहने प्रस्तावित प्राइभेट कम्पनी भएमा&nbsp;<a href=\"http://ocr.gov.np/images/pdf/9.doc\" target=\"_blank\">अनुसूची ९</a>&nbsp;बमोजिम, एकल बाहेक अन्य प्राइभेट कम्पनी भएमा&nbsp;<a href=\"http://ocr.gov.np/images/pdf/10.doc\" target=\"_blank\">अनुसूची १०</a>&nbsp;बमोजिम, पव्लिक लिमिटेड कम्पनी भएमा&nbsp;<a href=\"http://ocr.gov.np/images/pdf/11.doc\" target=\"_blank\">अनुसूची ११</a>&nbsp;बमोजिम र मुनाफा वितरण नगर्ने कम्पनी भएमा&nbsp;<a href=\"http://ocr.gov.np/images/pdf/12.doc\" target=\"_blank\">अनुसूची १२</a>&nbsp;बमोजिमको प्रबन्धपत्र २ प्रति ।</li>\r\n	<li>प्रस्तावित कम्पनी प्राइभेट लिमिटेड भएमा&nbsp;<a href=\"http://ocr.gov.np/images/pdf/14.doc\" target=\"_blank\">अनुसूची १४&nbsp;</a>बमोजिम, पव्लिक लिमिटेड कम्पनी भए&nbsp;<a href=\"http://ocr.gov.np/images/pdf/15.doc\" target=\"_blank\">अनुसूची १५</a>&nbsp;बमोजिम र मुनाफा वितरण नगर्ने कम्पनी भए&nbsp;<a href=\"http://ocr.gov.np/images/pdf/16.doc\" target=\"_blank\">अनुसूची १६</a>&nbsp;बमोजिमको नियमावली २ प्रति ।</li>\r\n	<li>संस्थापक शेयरधनीहरुको नागरिकताको प्रमाणपत्रको प्रमाणित प्रतिलिपि ।</li>\r\n	<li>प्रा.लि.कम्पनीको हकमा र्सवसम्मत संझौता भएको रहेछ भने त्यस्तो संझौताको प्रतिलिपि ।</li>\r\n	<li>पव्लिक लिमिटेड कम्पनीको हकमा कम्पनी संस्थापना गर्नु अघि संस्थापकहरुबीच कुनै संझौता भएको रहेछ भने सोको प्रतिलिपि ।</li>\r\n	<li>कुनै निकायको पूर्व स्वीकृति वा इजाजत आवश्यक पर्ने भए त्यस्तो निकायको स्वीकृति वा इजाजत ।</li>\r\n	<li>संस्थापक नेपाली कम्पनी (कानूनी व्यक्ति) भएमा कम्पनी दर्ता प्रमाणपत्रको प्रतिलिपि, नया संस्थापना हुन लागेको कम्पनीमा के, कति र कसरी लगानी गर्ने तथा संस्थापक कम्पनीको प्रतिनिधित्व गर्ने व्यक्तिको नाम खुलाइएको संचालक समीतिको निर्णयको प्रतिलिपि र प्रतिनिधिको नागरिकता प्रमाणपत्रको प्रमाणित प्रतिलिपि ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>२.२ विदेशी नागरिक संस्थापक तथा शेयरधनी रहने गरी स्थापना हुने संयुक्त लगानी वा पूर्ण विदेशी लगानी हुने कम्पनीको लागी आवश्यक थप कागजपत्र ।</strong></p>\r\n\r\n<ul>\r\n	<li>प्रचलित कानून वमोजिम सम्वन्धित निकायबाट नेपाल राज्यभित्र लगानी गर्न अनुमति पाएको इजाजतपत्रको प्रतिलिपि,</li>\r\n	<li>संयुक्त लगानी हुने औद्योगिक कम्पनीको हकमा उद्योग विभागबाट स्वीकृति तथा संयुक्त लगानी सम्झौताको प्रतिलिपि,</li>\r\n	<li>विदेशी व्यक्ति संस्थापक भएमा निजको राहदानी (पासपोर्ट) को प्रमाणित प्रतिलिपि र कानूनी व्यक्ति (कम्पनी) भए कम्पनी दर्ता प्रमाणपत्रको प्रमाणित प्रतिलिपि तथा कम्पनीले लगानी गर्ने सम्वन्धी निर्णयको प्रतिलिपि र कम्पनीको तर्फाट प्रतिनिधित्व गर्ने व्यक्तिको मनोनयन पत्र एवं निजको राहदानीको प्रमाणित प्रतिलिपि ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<br />\r\n<strong>२.३ प्राइभेट र्फम । साझेदारी फर्मलाइ कम्पनीमा परिणत गरी कम्पनी दर्ता गर्न आवश्यक थप कागजपत्र</strong></p>\r\n\r\n<ul>\r\n	<li>प्रा.र्फम/साझेदारी र्फमलाई कम्पनीमा परिणत गर्ने सन्वन्धमा संस्थापकहरुवीचको संझौता ।</li>\r\n	<li>नविकरण गरिएको र्फम दर्ता प्रमाणपत्र ।</li>\r\n	<li>आयकर दर्ताको प्रमाणपत्रको प्रतिलिपि र कर फछ्र्यौटको प्रमाण वा सहमती ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<br />\r\n<strong>२.४ प्राइभेट लिमिटेडलाई पव्लिक लिमिटेडमा र पव्लिक लिमिटेडलाई प्राइभेट लिमिटेडमा परिणत गर्न आवश्यक कागजपत्र :फर्म</strong><br />\r\n<br />\r\n<strong>क) प्रा.लि.लाई प.लि. मा परिणत गर्न आवश्यक थप कागजपत्र :</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"http://ocr.gov.np/images/pdf/6.doc\" target=\"_blank\">अनुसूची ६</a>&nbsp;बमोजिमको निवेदन ।</li>\r\n	<li>साधारण सभाको निर्णयको प्रतिलिपि ।</li>\r\n	<li>कम्पनीमा कम्तीमा २५ प्रतिशत शेयर पव्लिक कम्पनीले खरिद गरेको कागजात ।</li>\r\n	<li>कम्पनीले कुनै पव्लिक कम्पनीको कम्तीमा २५ प्रतिशत शेयर खरिद गरेको कागजात ।</li>\r\n	<li>प्रस्तावित ३ महले प्रवन्धपत्र र नियमावलीको १।१ प्रति ।</li>\r\n	<li>संस्थापक थप हुने भए नागरिकता प्रमाणपत्रको प्रतिलिपि ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>ख) प.लि.लाई प्रा.लि.मा परिणत गर्न आवश्यक थप कागजपत्र :</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"http://ocr.gov.np/images/pdf/7.doc\" target=\"_blank\">अनुसूची ७</a>&nbsp;बमोजिमको निवेदन ।</li>\r\n	<li>साधारण सभाको निर्णयको प्रतिलिपि ।</li>\r\n	<li>पूजी खुलेको लेखा परिक्षण प्रतिवेदन ।</li>\r\n	<li>शेयरधनी संख्या ७ भन्दा कम भएको कारणबाट पव्लिक लिमिटेडबाट प्रा.लि.मा परिणत हुने</li>\r\n	<li>भएमा सोसम्बन्धि कागजात ।</li>\r\n	<li>प्रस्तावित ३ महले प्रवन्धपत्र र नियमावलीको १।१ प्रति ।</li>\r\n	<li>संस्थापक थप हुने भए नागरिकता प्रमाणपत्रको प्रतिलिपि ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>२.५ विदेशी कम्पनीको दर्ता, शाखा कार्यालय र सर्म्पर्क कार्यालय स्थापना सम्वन्धि (दफा १५४,१५५)</strong></p>\r\n\r\n<ul>\r\n	<li>अनुसुची २९ बमोजिमको ढांचामा निवेदन ।</li>\r\n	<li>व्यवसाय वा कारोवार संचालनको लागी अधिकारप्राप्त अधिकारीबाट प्राप्त अनुमतिपत्र ।</li>\r\n	<li>कम्पनी संस्थापनको अधिकार पत्र, प्रमाणपत्र, प्रवन्धपत्र तथा नियमावलीको प्रतिलिपि र सोको नेपाली अनुवाद ।</li>\r\n	<li>कम्पनीको मूल कार्यालय र कारोवार गर्ने मूख्य ठेगाना, कम्पनी संस्थापना भएको मिति, जारी पूजी र मूख्य उद्येश्य खुलेको विवरण ।</li>\r\n	<li>कम्पनीका संचालक, प्रवन्धक, कम्पनी सचिव वा प्रमुख पदाधिकारीस्को नाम, ठेगाना र निजहरुको नागरिकता सम्वन्धि विवरण ।</li>\r\n	<li>म्याद सूचना जारी हुदा कम्पनीको तर्फाट वुझिलिने आधिकारिक व्यक्तिको नाम ठेगाना खुलेको विवरण ।</li>\r\n	<li>नेपाल राज्यमा व्यवसाय वा कारोवार गर्ने भए प्रस्तावित लगानी र कारोवारको विवरण ।</li>\r\n	<li>नेपाल राज्यमा व्यवसाय वा कारोवार गर्ने मूख्य स्थान र ठेगाना ।</li>\r\n	<li>नेपालमा व्यवसाय वा कारोवार शुरु गर्ने प्रस्तावित मिति ।</li>\r\n	<li>कम्पनीको संचालक वा निजको प्रतिनिधिले कम्पनीको तर्फाट गरेको उद्घोषण ।</li>\r\n	<li>दफा १५७ बमोजिमको अख्तियारनामा ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>२.६ शाखा थपको अभिलेख गर्ने :</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीको अनुरोधपत्र ।</li>\r\n	<li>संचालक समीतिको निर्णय प्रतिलिपि ।</li>\r\n	<li>हाल थप समेत कायम रहने शाखा विवरण ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>२.७ कम्पनी दर्ता सम्बन्धमा ध्यान दिनुपर्ने कुराहरु :</strong></p>\r\n\r\n<ul>\r\n	<li>प्राइभेट लिमिटेड कम्पनीको हकमा कम्तीमा एक जना र बढीमा ५० जनासम्म र प.लि. कम्पनीको हकमा कम्तीमा ७ जना संस्थापक शेयरधनीहरु हुनु आवश्यक छ । तर कुनै पव्लिक लिमिटेड कम्पनी संस्थापक भई अर्को पव्लिक लिमिटेड कम्पनी संस्थापना गर्दा ७ जना संस्थापकहरुको आवश्यकता पर्दैन ।</li>\r\n	<li>प्रवन्धपत्र र नियमावली यथाशक्य नेपाली कागजमा अथवा टिकाउ खालको कागजमा एकातर्फमात्र टाइप भएको हुनर्ुपर्दछ ।</li>\r\n	<li>प्रवन्धपत्र र नियमावली शुद्ध तथा स्पष्ट नेपाली भाषामा तयार गरिएको हुनर्ुपर्दछ । विदेशी लगानी हुने कम्पनीको हकमा प्रवन्धपत्र र नियमावली शुद्ध तथा स्पष्ट अंग्रेजी भाषामा तयार गरिएको हुनर्ुपर्छ तर ती दुवैको नेपाली रुपान्तर पनि पेश गर्नु पर्दछ ।</li>\r\n	<li>प्रवन्धपत्र र नियमावलीको प्रत्येक पानामा तलतिर सबै संस्थापक शेयरवालाहरुले दस्तखत गरेको हुनुपर्दछ । प्रवन्धपत्र र नियमावलीको अन्तिम प्रकरणमा संस्थापक शेयरवालाहरुको पूरा नाम, ठेगाना, लिन कवुल गरेको शेयर संख्या र दस्तखतको साथ साथै प्रत्येकसंस्थापकको दस्तखत मुनीस्पष्ट वूझिने गरी ल्याप्चे सहिछाप हुनर्ुपर्दछ । संस्थापक शेयरवाला पिच्छे एकजना साक्षीको पूरा नाम, ठेगाना र दस्तखत हुनु आवश्यक छ ।</li>\r\n	<li>नयाँ कम्पनी दर्ता हुँदा त्यस्तो कम्पनीको शेयर पूरानो कम्पनीले खरीद गर्ने प्रावधान राखिएमा पूरानो कम्पनीको आर्थिक अवस्था चित्रण भएको प्रमाण पेश गर्नुपर्छ ।</li>\r\n	<li>कम्पनी दर्ता गर्न आउदा संस्थापक शेयरधनीहरुमध्ये कम्तीमा १ जना शैयरधनी कार्यालयमा स्वयम् उपस्थित भै सनाखत गर्नु पर्दछ ।</li>\r\n</ul>', NULL, 1, NULL, NULL, NULL, NULL, 0, '2020-01-21 17:34:15', NULL, NULL),
(9, 'page', 1, NULL, 1, '1_5e273641df78a', 'कम्पनी संस्थापना पश्चात कम्पनीले अनिवार्यरुपमा गर्नुपर्ने क्रियाकलापहरु', 'l-a-l', NULL, '<p>कम्पनी रजिष्ट्रारको कार्यालयमा कम्पनी दर्ता भइसकेपछि कम्पनीले एउटा कानूनी व्यक्तिको स्वरुप पाउछ र यसको प्रवन्ध पत्रमा उल्लेखित उद्येश्यहरुको प्राप्तीको लागी कम्पनी ऐनमा व्यवस्था गरिएका केहि कानूनी प्रावधानहरु अनिवार्य रुपमा पालना गर्नुपर्ने हुन्छ । सो क्रममा मूख्यतया निम्न क्रियाकलापहरु संचालन गर्नु कम्पनीको कर्तव्य पनि हुन्छ ।<br />\r\n<br />\r\n<strong>१ अनुमति वा इजाजत लिनुपर्ने :</strong><br />\r\n<br />\r\nकम्पनीले आफ्नो उद्देश्य कार्यान्वयन गर्नुअघि प्रचलित नेपाल कानून वमोजिम अनुमति वा इजाजत लिनु पर्ने विषयमा सम्वन्धित निकायवाट अनुमति वा इजाजत प्राप्त गर्नुपर्दछ । यसरी अनुमती वा इजाजत प्राप्त भएको १५ दिनभित्र कार्यालयलाइ जानकारी गराउनु कम्पनीको कर्तव्य हुनेछ । अनुमती वा इजाजत प्राप्त गर्दा कम्पनीको उद्देश्यसँग र प्रचलित ऐन नियम अन्तर्रगत रही सम्वन्धित निकायवाट प्राप्त गर्नु पर्ने हुन्छ । उदाहरणको लागि औद्योगिक कम्पनीहरुले उद्योग विभाग वा घरेलु तथा साना उद्योग विभागको, विमा सम्वन्धी कम्पनीले विमा समितिको, वैंक तथा वित्तिय कम्पनीहरुले नेपाल राष्ट्र वैंकको स्विकृती प्राप्त गरी मात्र आफ्नो उद्देश्य कार्यान्वयन गर्नुपर्दछ । यसरी कम्पनी दर्ता भएकोलाई नै उद्देश्य कार्यान्वयन गर्ने इजाजत प्रदान गरिएको मान्न नमिल्ने हुदा यसतर्फसवै कम्पनीहरुले विशेष ध्यान पुर्याउनु पर्ने हुन्छ ।<br />\r\n<br />\r\n<strong>२ स्थायी आयकर लेखा नम्वर लिनुपर्ने :</strong><br />\r\n<br />\r\nकम्पनीले अनुमती वा इजाजत लिनु पर्नेमा लिई आफ्नो व्यवसाय शुरु गर्नु भन्दा अगाडि नै सम्वन्धित आन्तरिक राजस्व कार्यालयवाट स्थायी आयकर लेखा नम्वर (एब्ल् ल्य।) प्राप्त गर्नुपर्दछ ।<br />\r\n<br />\r\n<strong>३ कारोवार गर्ने स्विकृती लिनुपर्ने :</strong><br />\r\n<br />\r\nपव्लिक लिमिटेड कम्पनीका संस्थापकहरुले कम्पनी संस्थापना गर्दा प्रवन्ध-पत्र र नियमावलीमा खरीद गर्न कवूल गरेको शेयरको पूरा रकम चुक्ता गरी सकेपछि सोको प्रमाण सहित कारोवार गर्ने स्विकृतीको लागि कम्पनी रजिष्ट्रारको कार्यालयमा निवेदन दिनु पर्दछ । कारोवार गर्ने स्विकृती प्रदान नभए सम्म कम्पनीले विवरण-पत्र प्रकाशन गर्ने वा कुनै प्रकारको दायित्व सृजना हुने खालका कार्यहरु गर्नु हुँदैन । कार्यालयबाट स्वीकृति लिदा आवश्यकतानुसार सम्बन्धित निकायको पर्ूव स्वीकृति वा इजाजतपत्र पेश गर्नु पर्नेछ । प्राइभेट लिमिटेड कम्पनीले कारोवार गर्ने छुट्टै स्विकृती प्राप्त गर्नुपदैन । कार्यालयवाट कम्पनी दर्ता प्रमाण-पत्र प्राप्त हुनासाथ प्राइभेट लिमिटेड कम्पनीले कारोवार शुरु गर्न सक्ने व्यवस्था कम्पनी ऐन,२०६३ मा गरिएको छ तर कुनै खास कारोवार गर्न प्रचलित कानून बमोजिम कुनै निकायबाट स्वीकृती लिनु पर्ने भएमा त्यस्तो स्वीकृति लिएपछिमात्र कारोवार शुरु गर्नु पर्छ ।<br />\r\n<br />\r\n<strong>४ प्रवन्ध-पत्र र नियमावलीको प्रकाशन :</strong><br />\r\n<br />\r\nपव्लिक लिमिटेड कम्पनीले कारोवार गर्ने स्विकृती प्राप्त गरेको तीन महिना भित्र आफ्नो प्रवन्ध-पत्र तथा नियमावली प्रकाशित गर्नुपर्ने व्यवस्था कम्पनी ऐन, २०६३ को दफा २२(१) मा गरिएको छ । त्यस्तै सोहि ऐन,को दफा २२(२) ले प्रवन्ध-पत्र र नियमावलीमा कुनै प्रकारको संशोधन भएको स्थितिमा पनि संशोधन भएको तीन महिना भित्र संशोधित प्रवन्ध-पत्र र नियमावलीको प्रकाशन गर्नुपर्दछ । तर प्राइभेट लिमिटेड कम्पनीले प्रवन्ध-पत्र र नियमावली प्रकाशित गर्नुपर्दैन ।<br />\r\n<br />\r\n<strong>५ विवरण-पत्रको स्वीकृति र सो को प्रकाशन :</strong></p>\r\n\r\n<ul>\r\n	<li>पव्लिक लिमिटेड कम्पनीले आफ्नो धितो-पत्र र्सार्वजनिक निष्काशन गर्नु भन्दा अगावै धितोपत्र बोर्डबाट स्वीकृत भएको विवरणपत्र प्रकाशित गर्नुपर्दछ तर सो विवरण-पत्र कार्यालयमा अभिलेख नगर्राई प्रकाशन गर्नु हुदैन र संशोधनको हकमा समेत सोहि प्रक्रिया अवलम्बन गर्नु पर्छ ।</li>\r\n	<li>प्रकाशित विवरणपत्रमा उल्लेख गरिएका सवै बुदाहरुको पालना गर्नु सम्बन्धित कम्पनीको कर्तव्य तथा दायित्व दुवै हुनेछ ।</li>\r\n	<li>प्राइभेट कम्पनीको लागी विवरण पत्र आवश्यक पर्दैन ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>६ प्रतिलिपि दिने</strong></p>\r\n\r\n<ul>\r\n	<li>प्रबन्धपत्र, नियमावली, विवरणपत्र, वाषिर्क हिसाब र लेखापरीक्षण वा सञ्चालकको प्रतिवेदन वा कम्पनीले कार्यालयमा पेश गरेको कुनै लिखतको प्रतिलिपि कुनै शेयरधनी वा अरु कुनै सरोकारवालाले माग गरेमा सम्बन्धित कम्पनीले नियमावलीमा तोकिएको दस्तूर लिई त्यस्तो लिखतको प्रतिलिपि उपलब्ध गराउनु पर्नेछ । तर पब्लिक कम्पनीको भए जो सुकैले पनि माग गर्न सक्नेछ ।</li>\r\n	<li>कुनै शेयरधनीले साधारण सभाको काम कारवाहीको विवरणको प्रतिलिपि लिन चाहेमा कम्पनीले नियमावलीमा तोके बमोजिमको दस्तूर लिई प्रतिलिपि उपलब्ध गराउनु पर्नेछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>७ शेयरको बांडफांड विवरण</strong><br />\r\nपब्लिक कम्पनीले शेयर खरीदको लागि र्सवसाधारण समक्ष दरखास्त आव्हान गरेकोमा शेयर निष्कासन वन्द भएको मितिले बढीमा तीन महिनाभित्र शेयरको बाँडफाँड गरी शेयरधनीलाई तोकिए बमोजिमको ढाँचामा सूचना दिनु पर्नेछ ।<br />\r\n<br />\r\nतर र्सार्वजनिक निष्काशन गरिएको शेयरको कम्तीमा पचास प्रतिशत शेयर खरीद गर्ने वारेमा प्रत्याभूति संझौता नभएको अवस्थामा र्सार्वजनिक निष्काशन गरिएको जम्मा शेयरको कम्तीमा पचास प्रतिशत शेयर बिक्री हुन नसक्ने भएमा शेयरको बाँडफाँड गर्नु हुँदैन । यसरी शेयर बांडफांड हुन नसको व्यहोरा खुलाई कम्पनीले सो म्याद नाघेको ७ दिन भित्र निवेदन दिएमा कार्यालयले शेयर वाडफाँड को लागि ३ महिनाको म्याद थप दिन सक्नेछ । उक्त अवधि भित्र पनि शेयर वाडफाँड हुन नसकेमा त्यसरी वाडफाँड हुन नसकेका शेयरहरु कम्पनीले वार्ता वा अन्य कुनै तरिकाले वाडफाँड गर्न सक्नेछन् ।<br />\r\n<br />\r\nउपरोक्त वमोजिमको म्याद भित्र पनि शेयर वाडफाँड हुन नसुकेमा सो म्याद भुक्तान भएको दिन देखि शेयर खरिद वापत प्राप्त रकम र त्यस्तो रकममा फिर्ता बुझाउने दिन सम्मको तोकिए वमोजिमको व्याज समेत फिर्ता दिनु पर्ने छ ।<br />\r\n<br />\r\n<strong>८ साधारण सभा :</strong><br />\r\n<br />\r\nकम्पनीहरुको साधारण सभा दुइ प्रकारका हुन्छन् :<br />\r\n<br />\r\n(क) वाषिर्क साधारण सभा<br />\r\n(ख) विशेष साधारण सभा<br />\r\n<br />\r\nपव्लिक कम्पनीको वाषिर्क साधारण सभा गर्नका लागि कम्तीमा २१ दिन अगावै र विशेष साधारण सभा गर्नका लागि कम्तीमा १५ दिन अगावै सभा हुने ठाउँ, मिति र छलफल गर्ने विषय खुलाई शेयरवालाहरुलाई सूचना दिनु पर्दछ । सो कुराको सूचना राष्ट्रिय स्तरको पत्र-पत्रिकाहरुमा कम्तीमा दुइ पटक प्रकाशित गर्नुपर्दछ । प्राइभेट लिमिटेड कम्पनीको साधारण सभा र सोको कार्यविधि कम्पनीको नियमावलीमा व्यवस्था गरिए वमोजिम हुने कुरा कम्पनी ऐन, २०६३ मा उल्लेख गरिएको छ ।<br />\r\nतर स्थगित भएको कुनै साधारण सभा बोलाउँदा त्यस्तो सभामा नयाँ विषयमा छलफल नहुने भएमा कम्तीमा सात दिन अघि सो सभाको सूचना राष्ट्रियस्तरको दैनिक पत्रिकामा प्रकाशित गरेमा रीतपुर्वक सूचना दिएको मानिनेछ ।<br />\r\n<br />\r\n<strong>९ वाषिर्क साधारण सभा :</strong></p>\r\n\r\n<ul>\r\n	<li>पव्लिक कम्पनीले कारोवार शुरु गर्ने इजाजत पाएको एक वर्षभित्र प्रथम वाषिर्क साधारण सभा गर्नुपर्दछ र त्यसपछि प्रत्येक आर्थिक वर्षपूरा भएको ६ महिना भित्र वाषिर्क साधारण सभा गर्नुपर्दछ । उक्त म्याद भित्र वाषिर्क साधारण सभा हुन नसकेमा मुनासिव कारण खुलाई म्याद थपको लागि कम्पनी रजिष्ट्रारको कार्यालयमा निवेदन दिनु पर्दछ र यसरी निवेदन परेमा कम्पनी रजिष्ट्रारको कार्यालयले वढीमा ३ महिना सम्मको म्याद थप गरिदिनसक्दछ तर यसरी म्याद थपको कारणबाट कम्पनी ऐन,२०६३ को दफा ८१ ब्मोजिम तिर्नुपर्ने जरिवानाको दायत्विबाट कम्पनीको संचालक तथा पदाधिकारीहरुले छूट पाउने छैनन् । वाषिर्क साधारण सभामा पेश र छलफल गर्नुपर्ने विषयहरु कम्पनी ऐन,२०६३ को दफा ७६ मा उल्लेख गरिएका छन् ।</li>\r\n	<li>कार्यालयले अन्यत्र साधारण सभा गर्न पुर्वस्वीकृति दिएको अवस्थामा बाहेक पब्लिक कम्पनीको साधारण सभा त्यस्तो कम्पनीको रजिष्र्टड कार्यालय रहेको जिल्ला वा रजिष्र्टड कार्यालयको जिल्लासँग जोडिएको अधिकांश शेयरधनीलाई पायक पर्ने ठाउँमा गर्नु पर्नेछ ।</li>\r\n	<li>प्राइभेट कम्पनीको वाषिर्क साधारण सभा निमावलीमा भएको व्यवस्था अनुरुप सम्पन्न गर्नुपर्दछ तर स्थानको हकमा भने नियमावलीमा अन्यथा व्यवस्था भएकोमा बाहेक त्यस्तो कम्पनीको साधारण सभा नेपाल राज्य भित्र वा वाहिर कुनै ठाउँमा हुन सक्नेछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१० विशेष साधारण सभा :</strong></p>\r\n\r\n<ul>\r\n	<li>आवश्यक देखिएमा कम्पनीको सञ्चालक समितिले विशेष साधारण सभा बोलाउन सक्नेछ ।</li>\r\n	<li>कम्पनीको हिसाब किताबको जाँचबुझ गर्दा कुनै कारणले विशेष साधारण सभा बोलाउन आवश्यक देखिएमा लेखापरीक्षकले त्यस्तो सभा बोलाउनको निमित्त सञ्चालक समितिलाई अनुरोध गर्न सक्नेछ र सो बमोजिम सञ्चालक समितिले त्यस्तो सभा नबोलाएमा लेखापरीक्षकले सो कुरा खुलाई कार्यालयमा निवेदन दिन सक्नेछ र सो बमोजिम निवेदन परेमा कार्यालयले कम्पनीको विशेष साधारण सभा बोलाई दिन सक्नेछ ।</li>\r\n	<li>कम्पनीको चुक्ता पूँजीको कम्तीमा दश प्रतिशत शेयर लिने शेयरधनीहरू वा शेयरधनीहरूको जम्मा संख्याको कम्तीमा पच्चीस प्रतिशत शेयरधनीहरूले कारण खुलाई विशेष साधारण सभा बोलाउन कम्पनीको रजिष्र्टड कार्यालयमा निवेदन दिई माग गरेमा सञ्चालक समितिले कम्पनीको विशेष साधारण सभा बोलाउनु पर्नेछ ।</li>\r\n	<li>उपरोक्त बमोजिमको निवेदन परेको मितिले तीस दिनभित्र सञ्चालक समितिले विशेष साधारण सभा नबोलाएमा सम्बन्धित शेयरधनीहरूले सो कुरा खुलाई कार्यालयमा उजुरी गर्न सक्नेछन् र त्यस्तो उजुरी परेमा कार्यालयले त्यस्तो सभा बोलाई दिन सक्नेछ ।</li>\r\n	<li>निरीक्षण जाँचको फलस्वरुप वा कुनै कारणले विशेष साधारण सभा बोलाउन आवश्यक देखिएमा कार्यालयले त्यस्तो सभा स्वयं बोलाउन वा सञ्चालक समितिद्वारा बोलाउन लगाउन सक्नेछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>११ विशेष प्रस्ताव पारित गर्नुपर्ने विषयहरु (दफा ८३)</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीको अधिकृत पूँजी बढाउने विषय,</li>\r\n	<li>कम्पनीको शेयर पूँजी घटाउने वा हेरफेर गर्ने विषय,</li>\r\n	<li>कम्पनीको नाम वा मुख्य उद्देश्य परिवर्तन गर्ने विषय,</li>\r\n	<li>एउटा कम्पनी अर्को कम्पनीमा गाभिने विषय,</li>\r\n	<li>बोनस शेयर जारी गर्ने विषय,</li>\r\n	<li>कम्पनीले आफ्नो शेयर आफैले खरीद गर्ने बिषय,</li>\r\n	<li>डिस्काउण्टमा शेयर बिक्री गर्ने बिषय,</li>\r\n	<li>प्राइभेट कम्पनी पब्लिक कम्पनीमा वा पब्लिक कम्पनी प्राइभेट कम्पनीमा परिणत हुने विषय,</li>\r\n	<li>यस ऐन, वा नियमावलीमा कम्पनीले विषेश प्रस्ताव पारित गर्नु पर्ने भनिएको अन्य विषय ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१२ सभाको वैधानिकता र गणपूरक संख्या (दफा ६९ र ७३ )</strong></p>\r\n\r\n<ul>\r\n	<li>प्रत्येक साधारण सभा शुरु हुनु भन्दा अगावै सभामा उपस्थित शेयरधनीहरूले सो सभा यस ऐन र नियमावली बमोजिम बोलाइएको हो वा होइन भन्ने कुरा यकिन गर्नेछन् र त्यस सम्बन्धमा कुनै अन्य कानूनको पालना नगरिएको भए पनि सबै शेयरधनीहरूलाई कम्पनी ऐनको दफा ६७ को उपदफा (२) बमोजिम सूचना पठाइएको भएमा र सोहि दफा ७३ बमोजिम गणपूरक संख्या पुगेको सभाले सभा गर्न मन्जुर गरेमा सो साधारण सभा रीतपूर्वक बोलाइएको मानिनेछ ।</li>\r\n	<li>प्राइभेट कम्पनीको साधारण सभाको गणपूरक संख्या त्यस्तो कम्पनीको नियमावलीमा लेखिए बमोजिम हुनेछ ।</li>\r\n	<li>कम्पनीको नियमावलीमा गणपूरक संख्याको लागि बढी संख्या तोकिएकोमा बाहेक पब्लिक कम्पनीको बाँडफाँड भएको कूल शेयर संख्याको पचास प्रतिशत भन्दा बढी शेयरको प्रतिनिधित्व हुने गरी कूल शेयरधनीहरू मध्ये कम्तीमा तीन जना शेयरधनीहरू स्वयं वा आफ्नो प्रतिनिधि मार्फ उपस्थित नभई सभाको काम कारवाही हुने छैन ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१३ साधारण सभाको छलफल र निर्णय (दफा ७४)</strong></p>\r\n\r\n<ul>\r\n	<li>साधारण सभाको अध्यक्षता सञ्चालक समितिको अध्यक्षले गर्नेछ र निजको अनुपस्थितिमा सञ्चालकहरुले आफू मध्येबाट मनोनीत गरेको व्यक्तिले गर्नेछ ।</li>\r\n	<li>साधारण सभामा छलफल गरिने सबै विषयहरू प्रस्तावको रुपमा पेश गर्नु पर्नेछ । प्रस्ताव पारित भए वा नभएको कुरा सो सभाको अध्यक्षले घोषणा गर्नु पर्नेछ ।<br />\r\n	तर विशेष प्रस्तावको हकमा सभामा उपस्थित शेयरधनीहरुमध्ये ७५ प्रतिशत शेयरको प्रतिनिधित्व गर्ने शेयरधनीले प्रस्तावको पक्षमा मत दिएमा मात्र सो प्रस्ताव स्वीकृत भएको मानिने छ ।</li>\r\n	<li>प्रत्येक कम्पनीले साधारण सभामा भएको काम कारबाहीको विवरण (माईन्यूट) एउटा छुट्टै किताबमा राख्नु पर्नेछ र सो विवरणमा सम्बन्धित सभाको अध्यक्ष र कम्पनी सचिव भए कंम्पनी सचिवले दस्तखत गर्नु पर्नेछ । कम्पनी सचिव नभएको कम्पनीको हकमा सो विवरणमा सम्बन्धित सभाको अध्यक्ष र साधारणसभाद्वारा बहुमतबाट नियुtm शेयरधनीहरुको एकजना प्रतिनिधिले दस्तखत गर्नु पर्नेछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१४ कम्पनीले कार्यालयमा पठाउनु पर्ने विवरण (दफा ५१,७८,१२०,१३१,१५६ )</strong></p>\r\n\r\n<ul>\r\n	<li>प्रत्येक कम्पनीले प्रथम वार्षिक साधारण सभा हुन भन्दा ३० दिन अघि सम्म तत्काल कायम रहेका र खारेज भएका शेयर धनी र डिवेञ्चर वालाहरुको ५१(२) वमोजिमका विवरण समेतको लगत लगायत दफा ७८ मा उल्लेखित अन्य बिषय समेतको प्रतिवेदन साधारण सभा हुनु भन्दा कम्तीमा २१ दिन अघि कार्यालयमा पेश गर्नु पर्नेछ । जुन सञ्चालक समितिवाट स्वीकृत भै कम्पनीको लेखापरिक्षकवाट प्रमाणित गरेको हुनु पर्नेछ ।</li>\r\n	<li>त्यसै गरी ऐनको दफा १२०,१३१, र १५६ का विवरण लगायत उपरोक्त विवरणका अतिरिक्त कम्पनी ऐन, २०६३ वमोजिम कार्यालयमा पेश गर्नु पर्ने अन्य विवरणहरु समेत निर्धारित समयमा पेश गर्नु कम्पनीको अनिवार्य दायित्वभित्र पर्दछ ।</li>\r\n	<li>प्रत्येक पव्लिक कम्पनीले वार्षिक साधारण सभा भएको ३० दिन भित्र सो सभामा उपस्थित शेयर धनीहरुको सख्या, वार्ष्र्िक आर्थिक विवरण, संचालक र लेखापरिक्षकको प्रतिवेदन र सो सभाले गरेका निर्णय तथा प्रत्येक प्राइभेट कम्पनीले आफ्नो आ.व. पूरा भएको ६ महिनाभित्र लेखा परिक्षणद्वारा प्रमाणित वार्ष्र्िर्क आर्थिक विवरण पेश गर्नु पर्नेछ ।</li>\r\n	<li>उपरोक्त वमोजिम पठाउनु पर्ने प्रतिवेदन/विवरण आदि निर्धारित समयमा कार्यालयमा पेश नगर्ने कम्पनीलाई कम्पनी ऐन २०६३ को दफा ८१(२) वमोजिमको जरिवाना हुनेछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१५ कम्पनीको हिसाव किताव र लेखा (दफा १०८ र १०९ )</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीले आफ्नो लेखा नेपाली वा अंग्रेजी भाषामा रीतपूर्वक राख्नु पर्नेछ ।</li>\r\n	<li>उक्तबमोजिम राखिने लेखा दोहोरो लेखाप्रणालीमा आधारित र कम्पनीको कारोबारको यथार्थ स्थिति स्पष्ट रुपमा प्रतिविम्वित हुने गरी प्रचलित कानून अनुसार अधिकारप्राप्त निकायले लागू गरेको लेखामान -एकाउन्टीङ्ग स्ट्यार्न्र्डड) र यस ऐन बमोजिम पालना गर्नु पर्ने अन्य शर्त तथा व्यवस्था अनुरुप राख्नु पर्नेछ ।</li>\r\n	<li>कार्यालयले स्वीकृति दिएकोमा बाहेक कम्पनीको लेखा कम्पनीको रजिष्र्टड कार्यालय बाहेक अन्यत्र राख्न सकिने छैन ।</li>\r\n	<li>कम्पनीको सञ्चालक समितिले तोकिदिएको रकम बाहेक कम्पनीसँग रहेको नगद मौज्दात बैंकमा दाखिल गरी बैंक मार्फ नै कारोबार गर्नु पर्नेछ ।</li>\r\n	<li>पब्लिक कम्पनीको सञ्चालक समितिले प्रत्येक वर्षवाषिर्क साधारण सभा हुनु भन्दा कम्तीमा तीस दिन अगावै र प्राइभेट कम्पनीको हकमा आर्थिक वर्षसमाप्त भएको छ महिनाभित्र तोकिएको ढँाचामा देहाय बमोजिमको वाषिर्क आर्थिक विवरण तयार गर्नु पर्नेछ :<br />\r\n	<br />\r\n	(क) आर्थिक वर्षो अन्तिम मितिको वासलात,<br />\r\n	(ख) आर्थिक वर्षो नाफा नोक्सानीको हिसाब,<br />\r\n	(ग) आर्थिक वर्षो नगद प्रवाहको विवरण ।<br />\r\n	<br />\r\n	यसरी तयार गरिने आर्थिक विवरण कम्पनी ऐनको दफा १०९ मा उल्लेखित बुंदाहरुबाट निर्देशित हुनर्ुपर्छ ।</li>\r\n	<li>कम्पनीको प्रत्येक वर्षो हिसावकिताव रजिष्र्टड लेखा परिक्षकबाट लेखापरिक्षण गराउनु पर्ने र निजबाट प्रस्तुत हुने लेखा प्रतिवेदनलाइ वाषिर्क साधारणबाट अनुमोदन गर्राई तत्सम्बन्धि निर्ण्र्ाासहित लेखा परिक्षण प्रतिवेदन कम्पनी रजिष्टारको कार्यालयमा पेश गर्नु पर्दछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<br />\r\n<strong>१६ लेखापरीक्षकको व्यवस्था (दफा ११० , १११ र १६४)</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीले आफ्नो वाषिर्क कारोवारको लेखा परीक्षण गराउन लेखापरीक्षक नियुक्ति गर्नुपर्दछ ।</li>\r\n	<li>यसरी नियुक्त हुने लेखापरीक्षक प्रचलित कानून बमोजिम दर्ता भएका वा प्रमाणपत्र प्राप्त लेखा परिक्षकहरुमध्येबाट पव्लिक लिमिटेड कम्पनीको हकमा कम्पनी ऐन,२०६३ को दफा १८ को अधिनमा रही साधारण सभाले र प्राइभेट लिमिटेड कम्पनीको हकमा प्रवन्ध-पत्र, नियमावली वा र्सवसम्मत सम्झौतामा व्यवस्था भए वमोजिम र सो नभएमा साधारण सभाले नियुक्त गरी १५ दिनभित्र निजको नाम कार्यालयमा पठाउनुपर्नेछ । लेखापरीक्षकको पारिश्रमिक नियुक्तिकर्ताले तोकेबमोजिम हुनेछ ।</li>\r\n	<li>लेखापरीक्षणको सिलसिलामा लेखापरीक्षकले माग गरेका हिसाव किताव र लेखा निजलाई उपलव्ध गराउनुको साथै निजले मागेको कैफियतको यथाश्रि्र जवाफ दिनु कम्पनीको संचालक तथा कर्मचारीहरुको कर्तव्य हुनेछ ।</li>\r\n	<li>३ करोड वा सो भन्दा बढी चुक्ता पूजी भएका सुचिकृत कम्पनी वा नेपाल सरकारको पर्ूण्ा वा आंसिक स्वामित्व भएका कम्पनीले कम्पनीको दैनिक कार्यसञ्चालन वा व्यवस्थापनमा संलग्न नरहेको सञ्चालनको अध्यक्षतामा कम्तीमा ३ जना सदस्य रहेको एक लेखा परिक्षण समीति गठन गर्नु पर्दछ । उक्त समीतिमा कम्तीमा १ जना सदस्य लेखा सम्बन्धि व्यवसायिक प्रमाणपत्र प्राप्त अनुभवी वा लेखा,वाणिज्य,व्यवस्थापन,वित्त,वा अर्थशास्त्रबाट कम्तीमा स्नातकको उपाधि प्राप्त गरी लेखा तथा वित्तिय क्षेत्रमा अनुभव प्राप्त व्यक्ति हुनुपर्नेछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<br />\r\n<strong>१७ कम्पनीले पालना गर्नुपर्ने अन्य शर्तहरु (दफा १०)</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीको रजिष्र्टड कार्यालय र कारोवार गर्ने स्थानमा राष्ट्र भाषा नेपालीमा साइन वोर्ड राख्नुपर्नेछ ।</li>\r\n	<li>कम्पनीले गर्नुपर्ने सम्पूर्ण कामकारोवारहरु सम्वन्धित कम्पनीको नामबाट गर्नुपर्नेछ ।</li>\r\n	<li>प्राइभेट लिमिटेड कम्पनीले आफ्नो नामको पछाडि प्रा.लि. र पव्लिक लिमिटेड कम्पनीले आफ्नो नामको पछाडि लिमिटेड&quot; वा &quot;लि.&quot; लेख्नुपर्नेछ तर मुनाफा वितरण नगर्ने कम्पनीको हकमा यो व्यवस्था लागू हुने छैन ।</li>\r\n	<li>प्राइभेट लिमिटेड कम्पनीले आफ्नो शेयर तथा डिवेन्चर खुल्ला रुपमा विक्री गर्नु हुँदैन । प्रवन्धपत्र, नियमावली र र्सवसम्मत सम्झौतामा व्यवस्था गरिएकोमा कार्यविधि पूरा नगरे प्राइभेट कम्पनीले आफ्नो धितोपत्र आफ्नै शेयरवालाहरु वाहेक अन्य व्यक्तिहरुलाई धितोवन्धक राखी वा अन्य कुनै किसिमले हक छाडी दिनुहुँदैन ।</li>\r\n	<li>कसैलाई पीर मर्का नपर्ने गरी कम्पनीको स्थापना तथा संचालन गर्नुपर्दछ ।</li>\r\n	<li>कम्पनीले साझेदारी वा प्राइभेट र्फम खोल्नु हुदैन ।</li>\r\n	<li>कम्पनी ऐन,मा अन्यथा व्यवस्था गरिएकोमा बाहेक मुनाफा वितरण नगर्ने कम्पनीले आफ्ना सदस्यहरुलाइ लाभांश वितरण गर्न वा सदस्य वा निजका नजिकका नातेदारलाइ प्रत्यक्ष वा अप्रत्यक्ष रुपले कुनै रकम भुक्तानी गर्नु हुदैन ।</li>\r\n	<li>ऐनको कार्यान्वयन तथा कम्पनीको प्रशासन सम्बन्धि कार्य प्रभावकारी वा व्यवस्थित गर्ने सर्न्दर्भमा जारी भएको वा गरिने निर्देशिका पालना गर्नु प्रत्येक कम्पनी सञ्चालक वा वा पदाधिकारीको कर्तव्य हुनेछ ।</li>\r\n</ul>', NULL, 1, NULL, NULL, NULL, NULL, 4, '2020-01-21 17:34:57', '2020-01-26 20:27:56', NULL);
INSERT INTO `posts` (`id`, `type`, `user_id`, `category_id`, `lang_id`, `unique_id`, `title`, `slug`, `thumbnail`, `content`, `excerpt`, `status`, `featured`, `tag`, `author`, `url`, `visit_no`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 'page', 1, NULL, 2, '1_5e273641df78a', 'कम्पनी संस्थापना पश्चात कम्पनीले अनिवार्यरुपमा गर्नुपर्ने क्रियाकलापहरु', 'l-a-l', NULL, '<p>कम्पनी रजिष्ट्रारको कार्यालयमा कम्पनी दर्ता भइसकेपछि कम्पनीले एउटा कानूनी व्यक्तिको स्वरुप पाउछ र यसको प्रवन्ध पत्रमा उल्लेखित उद्येश्यहरुको प्राप्तीको लागी कम्पनी ऐनमा व्यवस्था गरिएका केहि कानूनी प्रावधानहरु अनिवार्य रुपमा पालना गर्नुपर्ने हुन्छ । सो क्रममा मूख्यतया निम्न क्रियाकलापहरु संचालन गर्नु कम्पनीको कर्तव्य पनि हुन्छ ।<br />\r\n<br />\r\n<strong>१ अनुमति वा इजाजत लिनुपर्ने :</strong><br />\r\n<br />\r\nकम्पनीले आफ्नो उद्देश्य कार्यान्वयन गर्नुअघि प्रचलित नेपाल कानून वमोजिम अनुमति वा इजाजत लिनु पर्ने विषयमा सम्वन्धित निकायवाट अनुमति वा इजाजत प्राप्त गर्नुपर्दछ । यसरी अनुमती वा इजाजत प्राप्त भएको १५ दिनभित्र कार्यालयलाइ जानकारी गराउनु कम्पनीको कर्तव्य हुनेछ । अनुमती वा इजाजत प्राप्त गर्दा कम्पनीको उद्देश्यसँग र प्रचलित ऐन नियम अन्तर्रगत रही सम्वन्धित निकायवाट प्राप्त गर्नु पर्ने हुन्छ । उदाहरणको लागि औद्योगिक कम्पनीहरुले उद्योग विभाग वा घरेलु तथा साना उद्योग विभागको, विमा सम्वन्धी कम्पनीले विमा समितिको, वैंक तथा वित्तिय कम्पनीहरुले नेपाल राष्ट्र वैंकको स्विकृती प्राप्त गरी मात्र आफ्नो उद्देश्य कार्यान्वयन गर्नुपर्दछ । यसरी कम्पनी दर्ता भएकोलाई नै उद्देश्य कार्यान्वयन गर्ने इजाजत प्रदान गरिएको मान्न नमिल्ने हुदा यसतर्फसवै कम्पनीहरुले विशेष ध्यान पुर्याउनु पर्ने हुन्छ ।<br />\r\n<br />\r\n<strong>२ स्थायी आयकर लेखा नम्वर लिनुपर्ने :</strong><br />\r\n<br />\r\nकम्पनीले अनुमती वा इजाजत लिनु पर्नेमा लिई आफ्नो व्यवसाय शुरु गर्नु भन्दा अगाडि नै सम्वन्धित आन्तरिक राजस्व कार्यालयवाट स्थायी आयकर लेखा नम्वर (एब्ल् ल्य।) प्राप्त गर्नुपर्दछ ।<br />\r\n<br />\r\n<strong>३ कारोवार गर्ने स्विकृती लिनुपर्ने :</strong><br />\r\n<br />\r\nपव्लिक लिमिटेड कम्पनीका संस्थापकहरुले कम्पनी संस्थापना गर्दा प्रवन्ध-पत्र र नियमावलीमा खरीद गर्न कवूल गरेको शेयरको पूरा रकम चुक्ता गरी सकेपछि सोको प्रमाण सहित कारोवार गर्ने स्विकृतीको लागि कम्पनी रजिष्ट्रारको कार्यालयमा निवेदन दिनु पर्दछ । कारोवार गर्ने स्विकृती प्रदान नभए सम्म कम्पनीले विवरण-पत्र प्रकाशन गर्ने वा कुनै प्रकारको दायित्व सृजना हुने खालका कार्यहरु गर्नु हुँदैन । कार्यालयबाट स्वीकृति लिदा आवश्यकतानुसार सम्बन्धित निकायको पर्ूव स्वीकृति वा इजाजतपत्र पेश गर्नु पर्नेछ । प्राइभेट लिमिटेड कम्पनीले कारोवार गर्ने छुट्टै स्विकृती प्राप्त गर्नुपदैन । कार्यालयवाट कम्पनी दर्ता प्रमाण-पत्र प्राप्त हुनासाथ प्राइभेट लिमिटेड कम्पनीले कारोवार शुरु गर्न सक्ने व्यवस्था कम्पनी ऐन,२०६३ मा गरिएको छ तर कुनै खास कारोवार गर्न प्रचलित कानून बमोजिम कुनै निकायबाट स्वीकृती लिनु पर्ने भएमा त्यस्तो स्वीकृति लिएपछिमात्र कारोवार शुरु गर्नु पर्छ ।<br />\r\n<br />\r\n<strong>४ प्रवन्ध-पत्र र नियमावलीको प्रकाशन :</strong><br />\r\n<br />\r\nपव्लिक लिमिटेड कम्पनीले कारोवार गर्ने स्विकृती प्राप्त गरेको तीन महिना भित्र आफ्नो प्रवन्ध-पत्र तथा नियमावली प्रकाशित गर्नुपर्ने व्यवस्था कम्पनी ऐन, २०६३ को दफा २२(१) मा गरिएको छ । त्यस्तै सोहि ऐन,को दफा २२(२) ले प्रवन्ध-पत्र र नियमावलीमा कुनै प्रकारको संशोधन भएको स्थितिमा पनि संशोधन भएको तीन महिना भित्र संशोधित प्रवन्ध-पत्र र नियमावलीको प्रकाशन गर्नुपर्दछ । तर प्राइभेट लिमिटेड कम्पनीले प्रवन्ध-पत्र र नियमावली प्रकाशित गर्नुपर्दैन ।<br />\r\n<br />\r\n<strong>५ विवरण-पत्रको स्वीकृति र सो को प्रकाशन :</strong></p>\r\n\r\n<ul>\r\n	<li>पव्लिक लिमिटेड कम्पनीले आफ्नो धितो-पत्र र्सार्वजनिक निष्काशन गर्नु भन्दा अगावै धितोपत्र बोर्डबाट स्वीकृत भएको विवरणपत्र प्रकाशित गर्नुपर्दछ तर सो विवरण-पत्र कार्यालयमा अभिलेख नगर्राई प्रकाशन गर्नु हुदैन र संशोधनको हकमा समेत सोहि प्रक्रिया अवलम्बन गर्नु पर्छ ।</li>\r\n	<li>प्रकाशित विवरणपत्रमा उल्लेख गरिएका सवै बुदाहरुको पालना गर्नु सम्बन्धित कम्पनीको कर्तव्य तथा दायित्व दुवै हुनेछ ।</li>\r\n	<li>प्राइभेट कम्पनीको लागी विवरण पत्र आवश्यक पर्दैन ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>६ प्रतिलिपि दिने</strong></p>\r\n\r\n<ul>\r\n	<li>प्रबन्धपत्र, नियमावली, विवरणपत्र, वाषिर्क हिसाब र लेखापरीक्षण वा सञ्चालकको प्रतिवेदन वा कम्पनीले कार्यालयमा पेश गरेको कुनै लिखतको प्रतिलिपि कुनै शेयरधनी वा अरु कुनै सरोकारवालाले माग गरेमा सम्बन्धित कम्पनीले नियमावलीमा तोकिएको दस्तूर लिई त्यस्तो लिखतको प्रतिलिपि उपलब्ध गराउनु पर्नेछ । तर पब्लिक कम्पनीको भए जो सुकैले पनि माग गर्न सक्नेछ ।</li>\r\n	<li>कुनै शेयरधनीले साधारण सभाको काम कारवाहीको विवरणको प्रतिलिपि लिन चाहेमा कम्पनीले नियमावलीमा तोके बमोजिमको दस्तूर लिई प्रतिलिपि उपलब्ध गराउनु पर्नेछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>७ शेयरको बांडफांड विवरण</strong><br />\r\nपब्लिक कम्पनीले शेयर खरीदको लागि र्सवसाधारण समक्ष दरखास्त आव्हान गरेकोमा शेयर निष्कासन वन्द भएको मितिले बढीमा तीन महिनाभित्र शेयरको बाँडफाँड गरी शेयरधनीलाई तोकिए बमोजिमको ढाँचामा सूचना दिनु पर्नेछ ।<br />\r\n<br />\r\nतर र्सार्वजनिक निष्काशन गरिएको शेयरको कम्तीमा पचास प्रतिशत शेयर खरीद गर्ने वारेमा प्रत्याभूति संझौता नभएको अवस्थामा र्सार्वजनिक निष्काशन गरिएको जम्मा शेयरको कम्तीमा पचास प्रतिशत शेयर बिक्री हुन नसक्ने भएमा शेयरको बाँडफाँड गर्नु हुँदैन । यसरी शेयर बांडफांड हुन नसको व्यहोरा खुलाई कम्पनीले सो म्याद नाघेको ७ दिन भित्र निवेदन दिएमा कार्यालयले शेयर वाडफाँड को लागि ३ महिनाको म्याद थप दिन सक्नेछ । उक्त अवधि भित्र पनि शेयर वाडफाँड हुन नसकेमा त्यसरी वाडफाँड हुन नसकेका शेयरहरु कम्पनीले वार्ता वा अन्य कुनै तरिकाले वाडफाँड गर्न सक्नेछन् ।<br />\r\n<br />\r\nउपरोक्त वमोजिमको म्याद भित्र पनि शेयर वाडफाँड हुन नसुकेमा सो म्याद भुक्तान भएको दिन देखि शेयर खरिद वापत प्राप्त रकम र त्यस्तो रकममा फिर्ता बुझाउने दिन सम्मको तोकिए वमोजिमको व्याज समेत फिर्ता दिनु पर्ने छ ।<br />\r\n<br />\r\n<strong>८ साधारण सभा :</strong><br />\r\n<br />\r\nकम्पनीहरुको साधारण सभा दुइ प्रकारका हुन्छन् :<br />\r\n<br />\r\n(क) वाषिर्क साधारण सभा<br />\r\n(ख) विशेष साधारण सभा<br />\r\n<br />\r\nपव्लिक कम्पनीको वाषिर्क साधारण सभा गर्नका लागि कम्तीमा २१ दिन अगावै र विशेष साधारण सभा गर्नका लागि कम्तीमा १५ दिन अगावै सभा हुने ठाउँ, मिति र छलफल गर्ने विषय खुलाई शेयरवालाहरुलाई सूचना दिनु पर्दछ । सो कुराको सूचना राष्ट्रिय स्तरको पत्र-पत्रिकाहरुमा कम्तीमा दुइ पटक प्रकाशित गर्नुपर्दछ । प्राइभेट लिमिटेड कम्पनीको साधारण सभा र सोको कार्यविधि कम्पनीको नियमावलीमा व्यवस्था गरिए वमोजिम हुने कुरा कम्पनी ऐन, २०६३ मा उल्लेख गरिएको छ ।<br />\r\nतर स्थगित भएको कुनै साधारण सभा बोलाउँदा त्यस्तो सभामा नयाँ विषयमा छलफल नहुने भएमा कम्तीमा सात दिन अघि सो सभाको सूचना राष्ट्रियस्तरको दैनिक पत्रिकामा प्रकाशित गरेमा रीतपुर्वक सूचना दिएको मानिनेछ ।<br />\r\n<br />\r\n<strong>९ वाषिर्क साधारण सभा :</strong></p>\r\n\r\n<ul>\r\n	<li>पव्लिक कम्पनीले कारोवार शुरु गर्ने इजाजत पाएको एक वर्षभित्र प्रथम वाषिर्क साधारण सभा गर्नुपर्दछ र त्यसपछि प्रत्येक आर्थिक वर्षपूरा भएको ६ महिना भित्र वाषिर्क साधारण सभा गर्नुपर्दछ । उक्त म्याद भित्र वाषिर्क साधारण सभा हुन नसकेमा मुनासिव कारण खुलाई म्याद थपको लागि कम्पनी रजिष्ट्रारको कार्यालयमा निवेदन दिनु पर्दछ र यसरी निवेदन परेमा कम्पनी रजिष्ट्रारको कार्यालयले वढीमा ३ महिना सम्मको म्याद थप गरिदिनसक्दछ तर यसरी म्याद थपको कारणबाट कम्पनी ऐन,२०६३ को दफा ८१ ब्मोजिम तिर्नुपर्ने जरिवानाको दायत्विबाट कम्पनीको संचालक तथा पदाधिकारीहरुले छूट पाउने छैनन् । वाषिर्क साधारण सभामा पेश र छलफल गर्नुपर्ने विषयहरु कम्पनी ऐन,२०६३ को दफा ७६ मा उल्लेख गरिएका छन् ।</li>\r\n	<li>कार्यालयले अन्यत्र साधारण सभा गर्न पुर्वस्वीकृति दिएको अवस्थामा बाहेक पब्लिक कम्पनीको साधारण सभा त्यस्तो कम्पनीको रजिष्र्टड कार्यालय रहेको जिल्ला वा रजिष्र्टड कार्यालयको जिल्लासँग जोडिएको अधिकांश शेयरधनीलाई पायक पर्ने ठाउँमा गर्नु पर्नेछ ।</li>\r\n	<li>प्राइभेट कम्पनीको वाषिर्क साधारण सभा निमावलीमा भएको व्यवस्था अनुरुप सम्पन्न गर्नुपर्दछ तर स्थानको हकमा भने नियमावलीमा अन्यथा व्यवस्था भएकोमा बाहेक त्यस्तो कम्पनीको साधारण सभा नेपाल राज्य भित्र वा वाहिर कुनै ठाउँमा हुन सक्नेछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१० विशेष साधारण सभा :</strong></p>\r\n\r\n<ul>\r\n	<li>आवश्यक देखिएमा कम्पनीको सञ्चालक समितिले विशेष साधारण सभा बोलाउन सक्नेछ ।</li>\r\n	<li>कम्पनीको हिसाब किताबको जाँचबुझ गर्दा कुनै कारणले विशेष साधारण सभा बोलाउन आवश्यक देखिएमा लेखापरीक्षकले त्यस्तो सभा बोलाउनको निमित्त सञ्चालक समितिलाई अनुरोध गर्न सक्नेछ र सो बमोजिम सञ्चालक समितिले त्यस्तो सभा नबोलाएमा लेखापरीक्षकले सो कुरा खुलाई कार्यालयमा निवेदन दिन सक्नेछ र सो बमोजिम निवेदन परेमा कार्यालयले कम्पनीको विशेष साधारण सभा बोलाई दिन सक्नेछ ।</li>\r\n	<li>कम्पनीको चुक्ता पूँजीको कम्तीमा दश प्रतिशत शेयर लिने शेयरधनीहरू वा शेयरधनीहरूको जम्मा संख्याको कम्तीमा पच्चीस प्रतिशत शेयरधनीहरूले कारण खुलाई विशेष साधारण सभा बोलाउन कम्पनीको रजिष्र्टड कार्यालयमा निवेदन दिई माग गरेमा सञ्चालक समितिले कम्पनीको विशेष साधारण सभा बोलाउनु पर्नेछ ।</li>\r\n	<li>उपरोक्त बमोजिमको निवेदन परेको मितिले तीस दिनभित्र सञ्चालक समितिले विशेष साधारण सभा नबोलाएमा सम्बन्धित शेयरधनीहरूले सो कुरा खुलाई कार्यालयमा उजुरी गर्न सक्नेछन् र त्यस्तो उजुरी परेमा कार्यालयले त्यस्तो सभा बोलाई दिन सक्नेछ ।</li>\r\n	<li>निरीक्षण जाँचको फलस्वरुप वा कुनै कारणले विशेष साधारण सभा बोलाउन आवश्यक देखिएमा कार्यालयले त्यस्तो सभा स्वयं बोलाउन वा सञ्चालक समितिद्वारा बोलाउन लगाउन सक्नेछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>११ विशेष प्रस्ताव पारित गर्नुपर्ने विषयहरु (दफा ८३)</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीको अधिकृत पूँजी बढाउने विषय,</li>\r\n	<li>कम्पनीको शेयर पूँजी घटाउने वा हेरफेर गर्ने विषय,</li>\r\n	<li>कम्पनीको नाम वा मुख्य उद्देश्य परिवर्तन गर्ने विषय,</li>\r\n	<li>एउटा कम्पनी अर्को कम्पनीमा गाभिने विषय,</li>\r\n	<li>बोनस शेयर जारी गर्ने विषय,</li>\r\n	<li>कम्पनीले आफ्नो शेयर आफैले खरीद गर्ने बिषय,</li>\r\n	<li>डिस्काउण्टमा शेयर बिक्री गर्ने बिषय,</li>\r\n	<li>प्राइभेट कम्पनी पब्लिक कम्पनीमा वा पब्लिक कम्पनी प्राइभेट कम्पनीमा परिणत हुने विषय,</li>\r\n	<li>यस ऐन, वा नियमावलीमा कम्पनीले विषेश प्रस्ताव पारित गर्नु पर्ने भनिएको अन्य विषय ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१२ सभाको वैधानिकता र गणपूरक संख्या (दफा ६९ र ७३ )</strong></p>\r\n\r\n<ul>\r\n	<li>प्रत्येक साधारण सभा शुरु हुनु भन्दा अगावै सभामा उपस्थित शेयरधनीहरूले सो सभा यस ऐन र नियमावली बमोजिम बोलाइएको हो वा होइन भन्ने कुरा यकिन गर्नेछन् र त्यस सम्बन्धमा कुनै अन्य कानूनको पालना नगरिएको भए पनि सबै शेयरधनीहरूलाई कम्पनी ऐनको दफा ६७ को उपदफा (२) बमोजिम सूचना पठाइएको भएमा र सोहि दफा ७३ बमोजिम गणपूरक संख्या पुगेको सभाले सभा गर्न मन्जुर गरेमा सो साधारण सभा रीतपूर्वक बोलाइएको मानिनेछ ।</li>\r\n	<li>प्राइभेट कम्पनीको साधारण सभाको गणपूरक संख्या त्यस्तो कम्पनीको नियमावलीमा लेखिए बमोजिम हुनेछ ।</li>\r\n	<li>कम्पनीको नियमावलीमा गणपूरक संख्याको लागि बढी संख्या तोकिएकोमा बाहेक पब्लिक कम्पनीको बाँडफाँड भएको कूल शेयर संख्याको पचास प्रतिशत भन्दा बढी शेयरको प्रतिनिधित्व हुने गरी कूल शेयरधनीहरू मध्ये कम्तीमा तीन जना शेयरधनीहरू स्वयं वा आफ्नो प्रतिनिधि मार्फ उपस्थित नभई सभाको काम कारवाही हुने छैन ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१३ साधारण सभाको छलफल र निर्णय (दफा ७४)</strong></p>\r\n\r\n<ul>\r\n	<li>साधारण सभाको अध्यक्षता सञ्चालक समितिको अध्यक्षले गर्नेछ र निजको अनुपस्थितिमा सञ्चालकहरुले आफू मध्येबाट मनोनीत गरेको व्यक्तिले गर्नेछ ।</li>\r\n	<li>साधारण सभामा छलफल गरिने सबै विषयहरू प्रस्तावको रुपमा पेश गर्नु पर्नेछ । प्रस्ताव पारित भए वा नभएको कुरा सो सभाको अध्यक्षले घोषणा गर्नु पर्नेछ ।<br />\r\n	तर विशेष प्रस्तावको हकमा सभामा उपस्थित शेयरधनीहरुमध्ये ७५ प्रतिशत शेयरको प्रतिनिधित्व गर्ने शेयरधनीले प्रस्तावको पक्षमा मत दिएमा मात्र सो प्रस्ताव स्वीकृत भएको मानिने छ ।</li>\r\n	<li>प्रत्येक कम्पनीले साधारण सभामा भएको काम कारबाहीको विवरण (माईन्यूट) एउटा छुट्टै किताबमा राख्नु पर्नेछ र सो विवरणमा सम्बन्धित सभाको अध्यक्ष र कम्पनी सचिव भए कंम्पनी सचिवले दस्तखत गर्नु पर्नेछ । कम्पनी सचिव नभएको कम्पनीको हकमा सो विवरणमा सम्बन्धित सभाको अध्यक्ष र साधारणसभाद्वारा बहुमतबाट नियुtm शेयरधनीहरुको एकजना प्रतिनिधिले दस्तखत गर्नु पर्नेछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१४ कम्पनीले कार्यालयमा पठाउनु पर्ने विवरण (दफा ५१,७८,१२०,१३१,१५६ )</strong></p>\r\n\r\n<ul>\r\n	<li>प्रत्येक कम्पनीले प्रथम वार्षिक साधारण सभा हुन भन्दा ३० दिन अघि सम्म तत्काल कायम रहेका र खारेज भएका शेयर धनी र डिवेञ्चर वालाहरुको ५१(२) वमोजिमका विवरण समेतको लगत लगायत दफा ७८ मा उल्लेखित अन्य बिषय समेतको प्रतिवेदन साधारण सभा हुनु भन्दा कम्तीमा २१ दिन अघि कार्यालयमा पेश गर्नु पर्नेछ । जुन सञ्चालक समितिवाट स्वीकृत भै कम्पनीको लेखापरिक्षकवाट प्रमाणित गरेको हुनु पर्नेछ ।</li>\r\n	<li>त्यसै गरी ऐनको दफा १२०,१३१, र १५६ का विवरण लगायत उपरोक्त विवरणका अतिरिक्त कम्पनी ऐन, २०६३ वमोजिम कार्यालयमा पेश गर्नु पर्ने अन्य विवरणहरु समेत निर्धारित समयमा पेश गर्नु कम्पनीको अनिवार्य दायित्वभित्र पर्दछ ।</li>\r\n	<li>प्रत्येक पव्लिक कम्पनीले वार्षिक साधारण सभा भएको ३० दिन भित्र सो सभामा उपस्थित शेयर धनीहरुको सख्या, वार्ष्र्िक आर्थिक विवरण, संचालक र लेखापरिक्षकको प्रतिवेदन र सो सभाले गरेका निर्णय तथा प्रत्येक प्राइभेट कम्पनीले आफ्नो आ.व. पूरा भएको ६ महिनाभित्र लेखा परिक्षणद्वारा प्रमाणित वार्ष्र्िर्क आर्थिक विवरण पेश गर्नु पर्नेछ ।</li>\r\n	<li>उपरोक्त वमोजिम पठाउनु पर्ने प्रतिवेदन/विवरण आदि निर्धारित समयमा कार्यालयमा पेश नगर्ने कम्पनीलाई कम्पनी ऐन २०६३ को दफा ८१(२) वमोजिमको जरिवाना हुनेछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१५ कम्पनीको हिसाव किताव र लेखा (दफा १०८ र १०९ )</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीले आफ्नो लेखा नेपाली वा अंग्रेजी भाषामा रीतपूर्वक राख्नु पर्नेछ ।</li>\r\n	<li>उक्तबमोजिम राखिने लेखा दोहोरो लेखाप्रणालीमा आधारित र कम्पनीको कारोबारको यथार्थ स्थिति स्पष्ट रुपमा प्रतिविम्वित हुने गरी प्रचलित कानून अनुसार अधिकारप्राप्त निकायले लागू गरेको लेखामान -एकाउन्टीङ्ग स्ट्यार्न्र्डड) र यस ऐन बमोजिम पालना गर्नु पर्ने अन्य शर्त तथा व्यवस्था अनुरुप राख्नु पर्नेछ ।</li>\r\n	<li>कार्यालयले स्वीकृति दिएकोमा बाहेक कम्पनीको लेखा कम्पनीको रजिष्र्टड कार्यालय बाहेक अन्यत्र राख्न सकिने छैन ।</li>\r\n	<li>कम्पनीको सञ्चालक समितिले तोकिदिएको रकम बाहेक कम्पनीसँग रहेको नगद मौज्दात बैंकमा दाखिल गरी बैंक मार्फ नै कारोबार गर्नु पर्नेछ ।</li>\r\n	<li>पब्लिक कम्पनीको सञ्चालक समितिले प्रत्येक वर्षवाषिर्क साधारण सभा हुनु भन्दा कम्तीमा तीस दिन अगावै र प्राइभेट कम्पनीको हकमा आर्थिक वर्षसमाप्त भएको छ महिनाभित्र तोकिएको ढँाचामा देहाय बमोजिमको वाषिर्क आर्थिक विवरण तयार गर्नु पर्नेछ :<br />\r\n	<br />\r\n	(क) आर्थिक वर्षो अन्तिम मितिको वासलात,<br />\r\n	(ख) आर्थिक वर्षो नाफा नोक्सानीको हिसाब,<br />\r\n	(ग) आर्थिक वर्षो नगद प्रवाहको विवरण ।<br />\r\n	<br />\r\n	यसरी तयार गरिने आर्थिक विवरण कम्पनी ऐनको दफा १०९ मा उल्लेखित बुंदाहरुबाट निर्देशित हुनर्ुपर्छ ।</li>\r\n	<li>कम्पनीको प्रत्येक वर्षो हिसावकिताव रजिष्र्टड लेखा परिक्षकबाट लेखापरिक्षण गराउनु पर्ने र निजबाट प्रस्तुत हुने लेखा प्रतिवेदनलाइ वाषिर्क साधारणबाट अनुमोदन गर्राई तत्सम्बन्धि निर्ण्र्ाासहित लेखा परिक्षण प्रतिवेदन कम्पनी रजिष्टारको कार्यालयमा पेश गर्नु पर्दछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<br />\r\n<strong>१६ लेखापरीक्षकको व्यवस्था (दफा ११० , १११ र १६४)</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीले आफ्नो वाषिर्क कारोवारको लेखा परीक्षण गराउन लेखापरीक्षक नियुक्ति गर्नुपर्दछ ।</li>\r\n	<li>यसरी नियुक्त हुने लेखापरीक्षक प्रचलित कानून बमोजिम दर्ता भएका वा प्रमाणपत्र प्राप्त लेखा परिक्षकहरुमध्येबाट पव्लिक लिमिटेड कम्पनीको हकमा कम्पनी ऐन,२०६३ को दफा १८ को अधिनमा रही साधारण सभाले र प्राइभेट लिमिटेड कम्पनीको हकमा प्रवन्ध-पत्र, नियमावली वा र्सवसम्मत सम्झौतामा व्यवस्था भए वमोजिम र सो नभएमा साधारण सभाले नियुक्त गरी १५ दिनभित्र निजको नाम कार्यालयमा पठाउनुपर्नेछ । लेखापरीक्षकको पारिश्रमिक नियुक्तिकर्ताले तोकेबमोजिम हुनेछ ।</li>\r\n	<li>लेखापरीक्षणको सिलसिलामा लेखापरीक्षकले माग गरेका हिसाव किताव र लेखा निजलाई उपलव्ध गराउनुको साथै निजले मागेको कैफियतको यथाश्रि्र जवाफ दिनु कम्पनीको संचालक तथा कर्मचारीहरुको कर्तव्य हुनेछ ।</li>\r\n	<li>३ करोड वा सो भन्दा बढी चुक्ता पूजी भएका सुचिकृत कम्पनी वा नेपाल सरकारको पर्ूण्ा वा आंसिक स्वामित्व भएका कम्पनीले कम्पनीको दैनिक कार्यसञ्चालन वा व्यवस्थापनमा संलग्न नरहेको सञ्चालनको अध्यक्षतामा कम्तीमा ३ जना सदस्य रहेको एक लेखा परिक्षण समीति गठन गर्नु पर्दछ । उक्त समीतिमा कम्तीमा १ जना सदस्य लेखा सम्बन्धि व्यवसायिक प्रमाणपत्र प्राप्त अनुभवी वा लेखा,वाणिज्य,व्यवस्थापन,वित्त,वा अर्थशास्त्रबाट कम्तीमा स्नातकको उपाधि प्राप्त गरी लेखा तथा वित्तिय क्षेत्रमा अनुभव प्राप्त व्यक्ति हुनुपर्नेछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<br />\r\n<strong>१७ कम्पनीले पालना गर्नुपर्ने अन्य शर्तहरु (दफा १०)</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीको रजिष्र्टड कार्यालय र कारोवार गर्ने स्थानमा राष्ट्र भाषा नेपालीमा साइन वोर्ड राख्नुपर्नेछ ।</li>\r\n	<li>कम्पनीले गर्नुपर्ने सम्पूर्ण कामकारोवारहरु सम्वन्धित कम्पनीको नामबाट गर्नुपर्नेछ ।</li>\r\n	<li>प्राइभेट लिमिटेड कम्पनीले आफ्नो नामको पछाडि प्रा.लि. र पव्लिक लिमिटेड कम्पनीले आफ्नो नामको पछाडि लिमिटेड&quot; वा &quot;लि.&quot; लेख्नुपर्नेछ तर मुनाफा वितरण नगर्ने कम्पनीको हकमा यो व्यवस्था लागू हुने छैन ।</li>\r\n	<li>प्राइभेट लिमिटेड कम्पनीले आफ्नो शेयर तथा डिवेन्चर खुल्ला रुपमा विक्री गर्नु हुँदैन । प्रवन्धपत्र, नियमावली र र्सवसम्मत सम्झौतामा व्यवस्था गरिएकोमा कार्यविधि पूरा नगरे प्राइभेट कम्पनीले आफ्नो धितोपत्र आफ्नै शेयरवालाहरु वाहेक अन्य व्यक्तिहरुलाई धितोवन्धक राखी वा अन्य कुनै किसिमले हक छाडी दिनुहुँदैन ।</li>\r\n	<li>कसैलाई पीर मर्का नपर्ने गरी कम्पनीको स्थापना तथा संचालन गर्नुपर्दछ ।</li>\r\n	<li>कम्पनीले साझेदारी वा प्राइभेट र्फम खोल्नु हुदैन ।</li>\r\n	<li>कम्पनी ऐन,मा अन्यथा व्यवस्था गरिएकोमा बाहेक मुनाफा वितरण नगर्ने कम्पनीले आफ्ना सदस्यहरुलाइ लाभांश वितरण गर्न वा सदस्य वा निजका नजिकका नातेदारलाइ प्रत्यक्ष वा अप्रत्यक्ष रुपले कुनै रकम भुक्तानी गर्नु हुदैन ।</li>\r\n	<li>ऐनको कार्यान्वयन तथा कम्पनीको प्रशासन सम्बन्धि कार्य प्रभावकारी वा व्यवस्थित गर्ने सर्न्दर्भमा जारी भएको वा गरिने निर्देशिका पालना गर्नु प्रत्येक कम्पनी सञ्चालक वा वा पदाधिकारीको कर्तव्य हुनेछ ।</li>\r\n</ul>', NULL, 1, NULL, NULL, NULL, NULL, 0, '2020-01-21 17:34:57', NULL, NULL),
(11, 'page', 1, NULL, 1, '1_5e27366ad3cb4', 'कम्पनी प्रशासन', '', NULL, '<p><strong>१ कम्पनी प्रशासन</strong><br />\r\n<br />\r\nकम्पनी प्रशासनसंग सम्बन्धित कार्यका लागी आवश्यक कागजातहरु देहाय बमोजिम रहेका छन् ।<br />\r\n<br />\r\n<strong>१.१ शेयर पूँजीको हेरफेर गर्ने (दफा ५६)</strong><br />\r\n<br />\r\n(क)&nbsp;<strong>शेयर पूँजी बृद्धिको अभिलेख गर्ने</strong><br />\r\n<br />\r\nकम्पनीको स्वीकृत नियमावलीमा गरिएको व्यवस्थाको अधीनमा रही साधारण सभामा विशेष प्रस्ताव पारित गरी कुनै कम्पनीले दहाय वमोजिम आफ्नो शेयर पूँजी हेरफेर गर्न सक्नेछ ।<br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li>कम्पनीले उपयुक्त ठानेको रकमको नयाँ शेयर सिजर्ना गरी कम्पनीको अधिकृत शेयर पूँजीमा वृद्धि गरेर,</li>\r\n	<li>कम्पनीको सवै वा केही शेयर पूँजीलाई अंकित मूल्य भन्दा वढी वा घटी मूल्यको शेयरमा एकिकृत वा बिभाजन गरेर,</li>\r\n	<li>प्रस्ताव पारित हुँदाका दिन सम्म कसैले पनि नलिएको वा शेयर लिन मन्जुर नगरेको वा दफा ५३ को उपदफा (३) बमोजिम जफत भएकचो शेयर खारेज गरी सो खारेज भएको शेयरको मूल्य वरावरको कम्पनीको शेयर पूँजीको रकम घटाएर ।</li>\r\n</ul>\r\n\r\n<p><br />\r\nसोको लागि आवश्यक कागजातहरु देहाय वमोजिम छन् ।</p>\r\n\r\n<ul>\r\n	<li>कम्पनीको आवेदनपत्र वा अनुरोध पत्र ।</li>\r\n	<li>संशोधन गर्न चाहेको पूर्ण बिवरण -साविक व्यवस्था, संशोधित व्यवस्था र संशोधन गर्नुपर्नाको कारण ।</li>\r\n	<li>कम्पनीको साधारण सभामा विशेष प्रस्तावमा छलफल गरी निर्णय भएको माइन्यूटको प्रमाणित प्रतिलिपि । तर स्वीकृत अधिकृत पूजीको हदसम्म जारी पूजी बढाउन आवश्यक परेमा साधारण सभामा सामान्य प्रस्ताव पारीत भएको निर्णयको प्रतिलिपि ।</li>\r\n	<li>वहुसंख्यक संचालकहरुको दस्तखत भएको थप वा संशोधित प्रवन्धपत्रको दफा वा नियमावलीको नियमको २/२ प्रति ।</li>\r\n	<li>विदेशी लगानी,विदेशी कम्पनी, बैदेशिक रोजगार, सुरक्षा गार्ड र वित्त सम्वन्धी कम्पनीको हकमा क्रमशः उद्योग विभाग, श्रम तथा रोजगार प्रवर्द्धन विभाग, सम्वन्धित क्षेत्रीय प्रशासन कार्यालय र नेपाल राष्ट्र बैंकको स्वीकृति वा सिफारिश पत्र ।</li>\r\n	<li>अधिकृत पूँजी वृद्धि हुने अवस्थामा साविक पूँजी र हाल वृद्धि हुने पूँजीमा हुने अन्तर बमोजिमको रजिष्ट्रेशन दस्तुर ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n(ख)&nbsp;<strong>शेयर पूँजी घटाइएको अभिलेख गर्ने (दफा ५७)</strong><br />\r\n<br />\r\nकम्पनीले आफ्नो शेयर पूँजी घटाउन चाहेकमा सो बिषयमा साधारण सभामा विशेष प्रस्ताव पारित गरी अदालतको स्वीकृति लिई सो वमोजिम प्रवन्ध पत्र र नियमावलीमा आवश्यक हेरफेर वा संशोधन गरी शेयर पूँजी घटाउन सक्नेछ । सोको अभिलेखको लागि देहायका कागजातसहित कार्यालयमा निवेदन दिनु पर्दछु ।</p>\r\n\r\n<ul>\r\n	<li>कम्पनीको आवेदनपत्र वा अनुरोध पत्र ।</li>\r\n	<li>संशोधन गर्न चाहेको पूर्ण बिवरण (साविक व्यवस्था, संशोधित व्यवस्था र संशोधन गर्नुपर्नाको कारण ।</li>\r\n	<li>अदालतको स्वीकृति सहितको निर्णयको प्रमाणित प्रतिलिपि ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.२ कम्पनीको नाम परिवर्तन/संशोधन (दफा २१.३)</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीको आवेदन पत्र वा अनुरोध पत्र ।</li>\r\n	<li>संशोधन गर्न चाहेको पूर्ण विवरण -साविक व्यबस्था, संशोधित व्यबस्था र संशोधन गनु पर्नाको कारण ।</li>\r\n	<li>कम्पनीको साधारण सभामा विशेष प्रस्तावमा छलफल गरी निर्णय भएको माइन्यूटको प्रमाणित प्रतिलिपि ।</li>\r\n	<li>वहुसख्यक संचालकहरुको दस्तखत भएको संशोधत प्रवन्धपत्रको दफा वा निमावलीको नियम २/२ प्रति</li>\r\n	<li>विदेशी लगानी, विदेशी कम्पनी, वैदेशिक रोजगार, सुरक्षा गार्ड, वीमा र वित्त सम्बन्धी कम्पनीको हकमा क्रमशः उद्योग विभाग, श्रम तथा रोजगार प्रवर्द्धन बिभाग, सम्वन्धित क्षेत्रीय प्रशासन कार्यालय, वीमा समिति र नेपाल राष्ट्र वैंकको स्वीकृति वा सिफारिश पत्र ।</li>\r\n	<li>कम्पनीको सक्कल प्रमाण पत्र ।</li>\r\n	<li>आन्तरिक राजश्व कार्यालयको सहमति पत्र ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.३ कम्पनीको प्रवन्धपत्र । नियमावलीमा संशोधन (दफा २१.३)</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीको आवेदनपत्र वा अनुरोध पत्र ।</li>\r\n	<li>संशोधन गर्न चाहेको पूर्ण बिवरण -साविक व्यवस्था, संशोधित व्यवस्था र संशोधन गर्नुपर्नाको कारण ।</li>\r\n	<li>कम्पनीको साधारण सभामा विशेष प्रस्ताववाट निर्णय भएको माइन्यूटको प्रमाणित प्रतिलिपि ।</li>\r\n	<li>वहुसंख्यक संचालकहरुको दस्तखत भएको थप वा संशोधित प्रवन्ध पत्रको दफा वा नियमावलीको नियमको २/२ प्रति ।</li>\r\n	<li>विदेशी लगानी, विदेशी कम्पनी, बैदेशिक रोजगार, सुरक्षा गार्ड र वीमा र वित्त सम्वन्धी कम्पनीको हकमा क्रमशः उद्योग विभाग, श्रम तथा रोजगार प्रवर्द्धन विभाग, सम्वन्धित क्षेत्रीय प्रशासन कार्यालय, वीमा समिति र नेपाल राष्ट्र बैंकको स्वीकृति वा सिफारिश पत्र ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.४ पव्लिक कम्पनीको कारोवार गर्ने स्वीकृति (दफा ६३)</strong></p>\r\n\r\n<ul>\r\n	<li>कारोवार स्वीकृत गरी पाउन रु.५ को टिकटसहित कम्पनीको अनुरोधपत्र ।</li>\r\n	<li>संस्थापक शेयरधनीहरुले लिन कवुल गरेको शेयर वापतको शतप्रतिशत रकम चुक्ता भएको संचालक समितिको निर्णयको प्रतिलिपि, शेयरधनीको लगत र सो दाखिला भएको बैंक स्टेटमेन्ट ।</li>\r\n	<li>कुनै खास व्यवसाय संचालन गर्ने कम्पनीको हकमा प्रचलित कानूनबमोजिम त्यस्तो व्यवसाय नियमित गर्ने अधिकारप्राप्त नियमनकारी निकायबाट इजाजत प्रदान गर्दा त्यस्तो व्यवसाय शुरु गर्नु अघि कुनै शर्त निर्धारण गरिएको भए सो शर्त पुरा गरेको प्रमाण ।</li>\r\n	<li>प्रचलित नेपाल कानून वमोजिम स्वीकृति वा इजाजत लिनुपर्नेमा सम्वन्धित निकायको स्वीकृति वा इजाजत ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.५ प्रवन्धपत्र र नियमावलीमा देखिएको सामान्य त्रुटी सच्याउने सम्बन्धमा (दफा १९.४)</strong></p>\r\n\r\n<ul>\r\n	<li>प्रवन्त्रपत्र वा नियमावलीमा छपाइ वा टाइपको गल्तीले सामान्य त्रुटी देखिएमा सो सच्याइ पाउन कम्पनी संस्थापना भएको १ वर्षभत्र दिएको अनुसूचि ११ वमोजिमको निवेदन ।</li>\r\n	<li>कम्पनीको संचालक समीतिको निर्णय ।</li>\r\n	<li>संशोधन गर्न चाहेको पूर्ण बिवरण -साविक व्यवस्था, संशोधित व्यवस्था र संशोधन गर्नुपर्नाको कारण ।<br />\r\n	तर कम्पनीको मूल उद्देश्यमा फरक पर्ने गरी कुनै कुरा सच्याउन सकिने छैन ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.६ प्रिमियम मूल्यको शेयर जारी गर्ने सम्बन्धमा (दफा २९)</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीको आवेदनपत्र वा अनुरोध पत्र ।</li>\r\n	<li>लगातार तीन वर्षम्म कम्पनी मुनाफामा सञ्चालन भई लाभांश वितरण गरेको प्रमाण ।,</li>\r\n	<li>कम्पनीको सम्पूर्ण दायित्वभन्दा खुद सम्पती (नेर्टवर्थ) बढी भएको भनि लेखा परिक्षकले प्रमाणित गरेको प्रतिवेवद ।</li>\r\n	<li>कम्पनीको साधारण सभाले प्रिमियम मूल्यका शेयर जारी गर्ने गरेको निर्णय प्रतिलिपि ।</li>\r\n	<li>तीन वर्षो लेखापरीक्षण भएको आर्थिक विवरण</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.७ शेयरधनी र डिवेञ्चरवालाको लगत अभिलेख गर्ने (दफा ४६) :</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीको आवेदनपत्र वा अनुरोध पत्र ।</li>\r\n	<li>हाल कायम रहेको शेयरधनीको दर्ता कितावको कम्पनी ऐन,२०६३ को दफा ४६ (२) र (३) को ढाँचा अनुसारको लगत ।</li>\r\n	<li>संचालक समीतिबाट शेयर खरीद विक्री वा हक हस्तान्तरण भएको निर्णयको प्रमाणित प्रतिलिपि ।</li>\r\n	<li>शेयर । डिवेन्चर खरी विक्रि सम्वन्धि अनुसूची १८ वमोजिमको लिखत ।</li>\r\n	<li>सम्वन्धित निकाय -नेपाल राष्ट्र बैंक, क्षेत्रीय प्रशासन कार्यालय, वीमा समिति, उद्योग विभाग, श्रम तथा रोजगार प्रवर्द्धन विभाग, पर्यटन उद्योग महाशाखा (प.तथा ना.उ.म.) बाट शेयर। डिवेञ्चर खरीद विक्रीको लागि दिएको सहमति ।</li>\r\n	<li>नयाँ शेयरधनीको हकमा नागरिकताको प्रमाणपत्रको प्रमाणित प्रतिलिपि ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.८ कम्पनीको एकिकरण गर्ने । गाभ्ने स्वीकृति (दफा १७७) :</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनी एकिकरण गर्ने सम्वन्धि प्रस्ताव पारीत भएको ३० दिन भित्रको संयुक्त निवेदन पत्र ।</li>\r\n	<li>पव्लिक कम्पनीको हकमा विशेष प्रस्ताव पारीत गरेको साधारण सभाको निर्णयको प्रमाणित प्रतिलिपि र प्राइभेट कम्पनी भए गाभिने अधिकार दिने प्रवन्धपत्र, निमावली वा र्सवसम्मत संझौताको तत्सम्वन्धी व्यबस्थाको प्रतिलिपि ।</li>\r\n	<li>गाभिने कम्पनीको अन्तिम वासलात र ले.प. प्रतिवेदन ।</li>\r\n	<li>गाभिने र गाभ्ने कम्पनीका साहुहरुका लिखित सहमति पत्रको प्रतिलिपि ।</li>\r\n	<li>गाभिने कम्पनीको चलअचल सम्पत्तिको मूल्यांकन, सम्पत्ति र दायित्वको सम्वन्धमा मूल्यांकनकर्ता । लेखा परिक्षकवाट प्रमाणित गरेको यथार्थ विवरण ।</li>\r\n	<li>गाभिने र गाभ्ने कम्पनीले गाभ्ने कम्पनीका साहुहरु र कामदार तथा कर्मचारीका सम्वन्धमा कुनै निर्णय गरेको भए सो निर्णयको प्रमाणित प्रतिलिपि ।</li>\r\n	<li>कम्पनीहरुका वीच एकापसमा गाभिन सम्पन्न भएको सहमति पत्र ।</li>\r\n	<li>गाभिने कम्पनीको आन्तरिक राजश्व कार्यालयको करचुक्ताको प्रमाण वा सहमती ।</li>\r\n	<li>दुवै कम्पनीका सक्कल प्रमाणपत्रहरु ।</li>\r\n	<li>आबश्यकतानुसार सम्वन्धित निकायको शिफारिस वा स्वीकृतिपत्र ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.९ शेयर पूँजी घटाइएको अभिलेख (दफा ५७) :</strong></p>\r\n\r\n<ul>\r\n	<li>विवरण प्रकाशनको लागि धितोपत्र वोर्डवाट भएको स्वीकृतिपत्रको प्रतिलिपि सहित कम्पनीको निवेदन ।</li>\r\n	<li>सवै संचालकवाट हस्ताक्षर भएको प्रकाशनको लागि प्रस्तावित विवरण पत्र २ प्रति ।</li>\r\n	<li>विवरणपत्र प्रकाशन हुने मिति सम्मको लेखापरिक्षण प्रतिवेदन ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>द्रष्टव्यः</strong>&nbsp;धितोपत्र वोर्डवाट स्वीकृत भएको विवरणपत्र भएतापनि यस ऐनमा व्यबस्था भएका कुनै प्रावधान पालना नभएको पाइएमा सो विवरणपत्र कार्यालयले दर्ता गर्न इन्कार गर्न सक्नेछ ।<br />\r\n<br />\r\n<strong>१.१० एकल शेयर धनी भएका कम्पनी सम्वन्धि व्यबस्था (१५२,१५३)</strong></p>\r\n\r\n<ul>\r\n	<li>एकल शेयर धनी भएको कम्पनीले नियमावलीमा अन्यथा व्यबस्था भएकोमा वाहेक सञ्चालक समितिको वैठक वा साधारण सभा वोलाउनु पर्ने छैन । सम्पूर्ण काम कारवाही वा निर्णय शेयरधनीको लिखित निर्णय नुसार हुनेछ ।</li>\r\n	<li>त्यस्तो शेयरधनीको मुत्यू भएमा निजको हकदारहरुले सञ्चालक समितिको सम्पूर्ण काम गरी लिखित रुपमा शेयर हस्तान्तरण र दाखा निर्णय गर्ने छैन । सो को सिलसिलामा हकवालालाई हक प्राप्त भएको १ महिनाभित्र कार्यालयलाई प्रमाण सहित जानकारी गराउने ।</li>\r\n	<li>कार्यालयले तोकिएको दस्तुर लिई अभिलेख गरी जानकारी दिने ।</li>\r\n	<li>कम्पनीको प्रवन्धपत्र र नियमावलीमा आवश्यक संशोधन गर्नुपर्ने ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.११ विदेशी लगानी भएका कम्पनी सम्वन्धि व्यबस्था (१५४,१५५,१५६)</strong></p>\r\n\r\n<ul>\r\n	<li>यस ऐन को दफा १५४ वमोजिम दर्ता भएको विदेशी नेपाल राज्य भित्र शेयर वा डिवेन्चर निश्कासन गर्न सक्ने छैन ।</li>\r\n	<li>प्रत्येक विदेशी कम्पनीले स्पष्ट वासलात र नाफानोक्सानको हिसाव सहितको वाषिर्क आर्थिक विवरण तयार गरि लेप समेत गर्राई आ.व. समाप्त भएको ६ महिना भित्र कार्यालयमा पेश गर्नु पर्नेछ ।</li>\r\n	<li>उक्त प्रतिवेदन र साथमा संलग्न हुनु पर्ने निम्न कागजात आधिकारिक अङ्ग्रेजी वा नेपाली भाषामा हुनु पर्नेछ ।</li>\r\n	<li>नेपालमा सर्म्पर्क कार्यालय दर्ता गराएको विदेशी कम्पनीले कार्यालय सञ्चालनमा गरेको खर्च र प्रचलित कानून वमोजिम गरेको कर कटि्ट समेतको विवरण ले.प. वाट प्रमाणित गर्राई आ.व. समाप्त भएको ३ महिना भित्र कार्यालयमा पेश गर्नु पर्नेछ ।</li>\r\n	<li>विदेशी कम्पनीले लिखतहरु दाखिला गर्नु पर्ने (१५५)</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.१२ मुनाफा वितरण नगर्ने कम्पनी सम्वन्धि व्यबस्था (दफा १६७)</strong><br />\r\n<br />\r\n(क) मुनाफा वितरण नगर्ने कम्पनी संस्थापना गर्न शेयर पूँजी आवश्यक पर्ने छैन ।<br />\r\n<br />\r\n(ख) कम्पनीको कुनै सदस्यले लिखित रुपमा स्वीकार गरेको अवस्थामा बाहेक कम्पनीको ऋण वा दायित्वमा यसका सदस्यहरु जिम्मेवार हुने छैनन् ।<br />\r\n<br />\r\n(ग) शेयर पूँजी भएको कम्पनीलाई मात्र लागू हुन सक्ने व्यवस्थाहरु बाहेक सुचीकृत कम्पनीलाई लागू हुने यस ऐनका सम्पूर्ण व्यवस्थाहरु कम्पनी, यसका सञ्चालक, पदाधिकारी, लेखापरीक्षक तथा कर्मचारीलाई समेत लागू हुनेछन् ।<br />\r\n<br />\r\n(घ) कम्पनीले प्राप्त गरेको मुनाफाबाट लाभांश वा अन्य कुनै रकम यसका सदस्यलाई वितरण गर्ने छैन र कम्पनीले आर्जन गरेको मुनाफा कम्पनीको पूँजी बृद्धि गर्न वा त्यसको उद्देश्य प्राप्तिका लागि खर्च गरिनेछ ।<br />\r\n<br />\r\n(ङ) कम्पनीले आफ्नो उद्देश्यमा परिवर्तन गर्दा कार्यालयको पूर्व स्वीकृति लिनु पर्नेछ ।<br />\r\n<br />\r\n(च) यस परिच्छेद बमोजिम संस्थापित कम्पनीका सदस्यहरुले आफु मध्येबाट एक सदस्य एक मतको हिसाबले नियमावलीमा निर्धारण गरिएको संख्यामा सञ्चालकहरु निर्वाचन गर्नेछन् ।<br />\r\n<br />\r\n(छ) यस परिच्छेद बमोजिम संस्थापित कम्पनीमा काम गर्ने पदाधिकारीले पाउने वैठक भत्ता, तलव, सुविधा तथा कम्पनीको संस्थापना खर्च र सञ्चालन खर्च कार्यालयले तोके भन्दा बढी हुने छैन र कार्यालयले यसरी खर्च तोक्दा त्यस्तो कम्पनीको पूँजीगत अवस्था तथा मुनाफालाई आधार लिनु पर्नेछ ।<br />\r\n<br />\r\n(ज) यस परिच्छेद बमोजिम संस्थापित कम्पनी विघटन भएमा वा दर्ता खारेजीमा परेमा कम्पनीको ऋण तथा दायित्व फछ्र्यौट गरी बाँकी रहेको जायजेथा कम्पनीको नियमावलीमा कुनै व्यवस्था गरिएको भए सोही बमोजिम र व्यवस्था नभएकोमा नेपाल सरकारमा र्सर्नेछ ।<br />\r\n<br />\r\nउपरोक्त लेखिएको व्यवस्था उल्लंघन भएमा कार्यालयले त्यसरी उल्लंघन गर्ने कम्पनीको दर्ता खारेज गर्न सक्नेछ ।</p>', NULL, 1, NULL, NULL, NULL, NULL, 0, '2020-01-21 17:35:38', NULL, NULL),
(12, 'page', 1, NULL, 2, '1_5e27366ad3cb4', 'कम्पनी प्रशासन', '', NULL, '<p><strong>१ कम्पनी प्रशासन</strong><br />\r\n<br />\r\nकम्पनी प्रशासनसंग सम्बन्धित कार्यका लागी आवश्यक कागजातहरु देहाय बमोजिम रहेका छन् ।<br />\r\n<br />\r\n<strong>१.१ शेयर पूँजीको हेरफेर गर्ने (दफा ५६)</strong><br />\r\n<br />\r\n(क)&nbsp;<strong>शेयर पूँजी बृद्धिको अभिलेख गर्ने</strong><br />\r\n<br />\r\nकम्पनीको स्वीकृत नियमावलीमा गरिएको व्यवस्थाको अधीनमा रही साधारण सभामा विशेष प्रस्ताव पारित गरी कुनै कम्पनीले दहाय वमोजिम आफ्नो शेयर पूँजी हेरफेर गर्न सक्नेछ ।<br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li>कम्पनीले उपयुक्त ठानेको रकमको नयाँ शेयर सिजर्ना गरी कम्पनीको अधिकृत शेयर पूँजीमा वृद्धि गरेर,</li>\r\n	<li>कम्पनीको सवै वा केही शेयर पूँजीलाई अंकित मूल्य भन्दा वढी वा घटी मूल्यको शेयरमा एकिकृत वा बिभाजन गरेर,</li>\r\n	<li>प्रस्ताव पारित हुँदाका दिन सम्म कसैले पनि नलिएको वा शेयर लिन मन्जुर नगरेको वा दफा ५३ को उपदफा (३) बमोजिम जफत भएकचो शेयर खारेज गरी सो खारेज भएको शेयरको मूल्य वरावरको कम्पनीको शेयर पूँजीको रकम घटाएर ।</li>\r\n</ul>\r\n\r\n<p><br />\r\nसोको लागि आवश्यक कागजातहरु देहाय वमोजिम छन् ।</p>\r\n\r\n<ul>\r\n	<li>कम्पनीको आवेदनपत्र वा अनुरोध पत्र ।</li>\r\n	<li>संशोधन गर्न चाहेको पूर्ण बिवरण -साविक व्यवस्था, संशोधित व्यवस्था र संशोधन गर्नुपर्नाको कारण ।</li>\r\n	<li>कम्पनीको साधारण सभामा विशेष प्रस्तावमा छलफल गरी निर्णय भएको माइन्यूटको प्रमाणित प्रतिलिपि । तर स्वीकृत अधिकृत पूजीको हदसम्म जारी पूजी बढाउन आवश्यक परेमा साधारण सभामा सामान्य प्रस्ताव पारीत भएको निर्णयको प्रतिलिपि ।</li>\r\n	<li>वहुसंख्यक संचालकहरुको दस्तखत भएको थप वा संशोधित प्रवन्धपत्रको दफा वा नियमावलीको नियमको २/२ प्रति ।</li>\r\n	<li>विदेशी लगानी,विदेशी कम्पनी, बैदेशिक रोजगार, सुरक्षा गार्ड र वित्त सम्वन्धी कम्पनीको हकमा क्रमशः उद्योग विभाग, श्रम तथा रोजगार प्रवर्द्धन विभाग, सम्वन्धित क्षेत्रीय प्रशासन कार्यालय र नेपाल राष्ट्र बैंकको स्वीकृति वा सिफारिश पत्र ।</li>\r\n	<li>अधिकृत पूँजी वृद्धि हुने अवस्थामा साविक पूँजी र हाल वृद्धि हुने पूँजीमा हुने अन्तर बमोजिमको रजिष्ट्रेशन दस्तुर ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n(ख)&nbsp;<strong>शेयर पूँजी घटाइएको अभिलेख गर्ने (दफा ५७)</strong><br />\r\n<br />\r\nकम्पनीले आफ्नो शेयर पूँजी घटाउन चाहेकमा सो बिषयमा साधारण सभामा विशेष प्रस्ताव पारित गरी अदालतको स्वीकृति लिई सो वमोजिम प्रवन्ध पत्र र नियमावलीमा आवश्यक हेरफेर वा संशोधन गरी शेयर पूँजी घटाउन सक्नेछ । सोको अभिलेखको लागि देहायका कागजातसहित कार्यालयमा निवेदन दिनु पर्दछु ।</p>\r\n\r\n<ul>\r\n	<li>कम्पनीको आवेदनपत्र वा अनुरोध पत्र ।</li>\r\n	<li>संशोधन गर्न चाहेको पूर्ण बिवरण (साविक व्यवस्था, संशोधित व्यवस्था र संशोधन गर्नुपर्नाको कारण ।</li>\r\n	<li>अदालतको स्वीकृति सहितको निर्णयको प्रमाणित प्रतिलिपि ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.२ कम्पनीको नाम परिवर्तन/संशोधन (दफा २१.३)</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीको आवेदन पत्र वा अनुरोध पत्र ।</li>\r\n	<li>संशोधन गर्न चाहेको पूर्ण विवरण -साविक व्यबस्था, संशोधित व्यबस्था र संशोधन गनु पर्नाको कारण ।</li>\r\n	<li>कम्पनीको साधारण सभामा विशेष प्रस्तावमा छलफल गरी निर्णय भएको माइन्यूटको प्रमाणित प्रतिलिपि ।</li>\r\n	<li>वहुसख्यक संचालकहरुको दस्तखत भएको संशोधत प्रवन्धपत्रको दफा वा निमावलीको नियम २/२ प्रति</li>\r\n	<li>विदेशी लगानी, विदेशी कम्पनी, वैदेशिक रोजगार, सुरक्षा गार्ड, वीमा र वित्त सम्बन्धी कम्पनीको हकमा क्रमशः उद्योग विभाग, श्रम तथा रोजगार प्रवर्द्धन बिभाग, सम्वन्धित क्षेत्रीय प्रशासन कार्यालय, वीमा समिति र नेपाल राष्ट्र वैंकको स्वीकृति वा सिफारिश पत्र ।</li>\r\n	<li>कम्पनीको सक्कल प्रमाण पत्र ।</li>\r\n	<li>आन्तरिक राजश्व कार्यालयको सहमति पत्र ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.३ कम्पनीको प्रवन्धपत्र । नियमावलीमा संशोधन (दफा २१.३)</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीको आवेदनपत्र वा अनुरोध पत्र ।</li>\r\n	<li>संशोधन गर्न चाहेको पूर्ण बिवरण -साविक व्यवस्था, संशोधित व्यवस्था र संशोधन गर्नुपर्नाको कारण ।</li>\r\n	<li>कम्पनीको साधारण सभामा विशेष प्रस्ताववाट निर्णय भएको माइन्यूटको प्रमाणित प्रतिलिपि ।</li>\r\n	<li>वहुसंख्यक संचालकहरुको दस्तखत भएको थप वा संशोधित प्रवन्ध पत्रको दफा वा नियमावलीको नियमको २/२ प्रति ।</li>\r\n	<li>विदेशी लगानी, विदेशी कम्पनी, बैदेशिक रोजगार, सुरक्षा गार्ड र वीमा र वित्त सम्वन्धी कम्पनीको हकमा क्रमशः उद्योग विभाग, श्रम तथा रोजगार प्रवर्द्धन विभाग, सम्वन्धित क्षेत्रीय प्रशासन कार्यालय, वीमा समिति र नेपाल राष्ट्र बैंकको स्वीकृति वा सिफारिश पत्र ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.४ पव्लिक कम्पनीको कारोवार गर्ने स्वीकृति (दफा ६३)</strong></p>\r\n\r\n<ul>\r\n	<li>कारोवार स्वीकृत गरी पाउन रु.५ को टिकटसहित कम्पनीको अनुरोधपत्र ।</li>\r\n	<li>संस्थापक शेयरधनीहरुले लिन कवुल गरेको शेयर वापतको शतप्रतिशत रकम चुक्ता भएको संचालक समितिको निर्णयको प्रतिलिपि, शेयरधनीको लगत र सो दाखिला भएको बैंक स्टेटमेन्ट ।</li>\r\n	<li>कुनै खास व्यवसाय संचालन गर्ने कम्पनीको हकमा प्रचलित कानूनबमोजिम त्यस्तो व्यवसाय नियमित गर्ने अधिकारप्राप्त नियमनकारी निकायबाट इजाजत प्रदान गर्दा त्यस्तो व्यवसाय शुरु गर्नु अघि कुनै शर्त निर्धारण गरिएको भए सो शर्त पुरा गरेको प्रमाण ।</li>\r\n	<li>प्रचलित नेपाल कानून वमोजिम स्वीकृति वा इजाजत लिनुपर्नेमा सम्वन्धित निकायको स्वीकृति वा इजाजत ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.५ प्रवन्धपत्र र नियमावलीमा देखिएको सामान्य त्रुटी सच्याउने सम्बन्धमा (दफा १९.४)</strong></p>\r\n\r\n<ul>\r\n	<li>प्रवन्त्रपत्र वा नियमावलीमा छपाइ वा टाइपको गल्तीले सामान्य त्रुटी देखिएमा सो सच्याइ पाउन कम्पनी संस्थापना भएको १ वर्षभत्र दिएको अनुसूचि ११ वमोजिमको निवेदन ।</li>\r\n	<li>कम्पनीको संचालक समीतिको निर्णय ।</li>\r\n	<li>संशोधन गर्न चाहेको पूर्ण बिवरण -साविक व्यवस्था, संशोधित व्यवस्था र संशोधन गर्नुपर्नाको कारण ।<br />\r\n	तर कम्पनीको मूल उद्देश्यमा फरक पर्ने गरी कुनै कुरा सच्याउन सकिने छैन ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.६ प्रिमियम मूल्यको शेयर जारी गर्ने सम्बन्धमा (दफा २९)</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीको आवेदनपत्र वा अनुरोध पत्र ।</li>\r\n	<li>लगातार तीन वर्षम्म कम्पनी मुनाफामा सञ्चालन भई लाभांश वितरण गरेको प्रमाण ।,</li>\r\n	<li>कम्पनीको सम्पूर्ण दायित्वभन्दा खुद सम्पती (नेर्टवर्थ) बढी भएको भनि लेखा परिक्षकले प्रमाणित गरेको प्रतिवेवद ।</li>\r\n	<li>कम्पनीको साधारण सभाले प्रिमियम मूल्यका शेयर जारी गर्ने गरेको निर्णय प्रतिलिपि ।</li>\r\n	<li>तीन वर्षो लेखापरीक्षण भएको आर्थिक विवरण</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.७ शेयरधनी र डिवेञ्चरवालाको लगत अभिलेख गर्ने (दफा ४६) :</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनीको आवेदनपत्र वा अनुरोध पत्र ।</li>\r\n	<li>हाल कायम रहेको शेयरधनीको दर्ता कितावको कम्पनी ऐन,२०६३ को दफा ४६ (२) र (३) को ढाँचा अनुसारको लगत ।</li>\r\n	<li>संचालक समीतिबाट शेयर खरीद विक्री वा हक हस्तान्तरण भएको निर्णयको प्रमाणित प्रतिलिपि ।</li>\r\n	<li>शेयर । डिवेन्चर खरी विक्रि सम्वन्धि अनुसूची १८ वमोजिमको लिखत ।</li>\r\n	<li>सम्वन्धित निकाय -नेपाल राष्ट्र बैंक, क्षेत्रीय प्रशासन कार्यालय, वीमा समिति, उद्योग विभाग, श्रम तथा रोजगार प्रवर्द्धन विभाग, पर्यटन उद्योग महाशाखा (प.तथा ना.उ.म.) बाट शेयर। डिवेञ्चर खरीद विक्रीको लागि दिएको सहमति ।</li>\r\n	<li>नयाँ शेयरधनीको हकमा नागरिकताको प्रमाणपत्रको प्रमाणित प्रतिलिपि ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.८ कम्पनीको एकिकरण गर्ने । गाभ्ने स्वीकृति (दफा १७७) :</strong></p>\r\n\r\n<ul>\r\n	<li>कम्पनी एकिकरण गर्ने सम्वन्धि प्रस्ताव पारीत भएको ३० दिन भित्रको संयुक्त निवेदन पत्र ।</li>\r\n	<li>पव्लिक कम्पनीको हकमा विशेष प्रस्ताव पारीत गरेको साधारण सभाको निर्णयको प्रमाणित प्रतिलिपि र प्राइभेट कम्पनी भए गाभिने अधिकार दिने प्रवन्धपत्र, निमावली वा र्सवसम्मत संझौताको तत्सम्वन्धी व्यबस्थाको प्रतिलिपि ।</li>\r\n	<li>गाभिने कम्पनीको अन्तिम वासलात र ले.प. प्रतिवेदन ।</li>\r\n	<li>गाभिने र गाभ्ने कम्पनीका साहुहरुका लिखित सहमति पत्रको प्रतिलिपि ।</li>\r\n	<li>गाभिने कम्पनीको चलअचल सम्पत्तिको मूल्यांकन, सम्पत्ति र दायित्वको सम्वन्धमा मूल्यांकनकर्ता । लेखा परिक्षकवाट प्रमाणित गरेको यथार्थ विवरण ।</li>\r\n	<li>गाभिने र गाभ्ने कम्पनीले गाभ्ने कम्पनीका साहुहरु र कामदार तथा कर्मचारीका सम्वन्धमा कुनै निर्णय गरेको भए सो निर्णयको प्रमाणित प्रतिलिपि ।</li>\r\n	<li>कम्पनीहरुका वीच एकापसमा गाभिन सम्पन्न भएको सहमति पत्र ।</li>\r\n	<li>गाभिने कम्पनीको आन्तरिक राजश्व कार्यालयको करचुक्ताको प्रमाण वा सहमती ।</li>\r\n	<li>दुवै कम्पनीका सक्कल प्रमाणपत्रहरु ।</li>\r\n	<li>आबश्यकतानुसार सम्वन्धित निकायको शिफारिस वा स्वीकृतिपत्र ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.९ शेयर पूँजी घटाइएको अभिलेख (दफा ५७) :</strong></p>\r\n\r\n<ul>\r\n	<li>विवरण प्रकाशनको लागि धितोपत्र वोर्डवाट भएको स्वीकृतिपत्रको प्रतिलिपि सहित कम्पनीको निवेदन ।</li>\r\n	<li>सवै संचालकवाट हस्ताक्षर भएको प्रकाशनको लागि प्रस्तावित विवरण पत्र २ प्रति ।</li>\r\n	<li>विवरणपत्र प्रकाशन हुने मिति सम्मको लेखापरिक्षण प्रतिवेदन ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>द्रष्टव्यः</strong>&nbsp;धितोपत्र वोर्डवाट स्वीकृत भएको विवरणपत्र भएतापनि यस ऐनमा व्यबस्था भएका कुनै प्रावधान पालना नभएको पाइएमा सो विवरणपत्र कार्यालयले दर्ता गर्न इन्कार गर्न सक्नेछ ।<br />\r\n<br />\r\n<strong>१.१० एकल शेयर धनी भएका कम्पनी सम्वन्धि व्यबस्था (१५२,१५३)</strong></p>\r\n\r\n<ul>\r\n	<li>एकल शेयर धनी भएको कम्पनीले नियमावलीमा अन्यथा व्यबस्था भएकोमा वाहेक सञ्चालक समितिको वैठक वा साधारण सभा वोलाउनु पर्ने छैन । सम्पूर्ण काम कारवाही वा निर्णय शेयरधनीको लिखित निर्णय नुसार हुनेछ ।</li>\r\n	<li>त्यस्तो शेयरधनीको मुत्यू भएमा निजको हकदारहरुले सञ्चालक समितिको सम्पूर्ण काम गरी लिखित रुपमा शेयर हस्तान्तरण र दाखा निर्णय गर्ने छैन । सो को सिलसिलामा हकवालालाई हक प्राप्त भएको १ महिनाभित्र कार्यालयलाई प्रमाण सहित जानकारी गराउने ।</li>\r\n	<li>कार्यालयले तोकिएको दस्तुर लिई अभिलेख गरी जानकारी दिने ।</li>\r\n	<li>कम्पनीको प्रवन्धपत्र र नियमावलीमा आवश्यक संशोधन गर्नुपर्ने ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.११ विदेशी लगानी भएका कम्पनी सम्वन्धि व्यबस्था (१५४,१५५,१५६)</strong></p>\r\n\r\n<ul>\r\n	<li>यस ऐन को दफा १५४ वमोजिम दर्ता भएको विदेशी नेपाल राज्य भित्र शेयर वा डिवेन्चर निश्कासन गर्न सक्ने छैन ।</li>\r\n	<li>प्रत्येक विदेशी कम्पनीले स्पष्ट वासलात र नाफानोक्सानको हिसाव सहितको वाषिर्क आर्थिक विवरण तयार गरि लेप समेत गर्राई आ.व. समाप्त भएको ६ महिना भित्र कार्यालयमा पेश गर्नु पर्नेछ ।</li>\r\n	<li>उक्त प्रतिवेदन र साथमा संलग्न हुनु पर्ने निम्न कागजात आधिकारिक अङ्ग्रेजी वा नेपाली भाषामा हुनु पर्नेछ ।</li>\r\n	<li>नेपालमा सर्म्पर्क कार्यालय दर्ता गराएको विदेशी कम्पनीले कार्यालय सञ्चालनमा गरेको खर्च र प्रचलित कानून वमोजिम गरेको कर कटि्ट समेतको विवरण ले.प. वाट प्रमाणित गर्राई आ.व. समाप्त भएको ३ महिना भित्र कार्यालयमा पेश गर्नु पर्नेछ ।</li>\r\n	<li>विदेशी कम्पनीले लिखतहरु दाखिला गर्नु पर्ने (१५५)</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>१.१२ मुनाफा वितरण नगर्ने कम्पनी सम्वन्धि व्यबस्था (दफा १६७)</strong><br />\r\n<br />\r\n(क) मुनाफा वितरण नगर्ने कम्पनी संस्थापना गर्न शेयर पूँजी आवश्यक पर्ने छैन ।<br />\r\n<br />\r\n(ख) कम्पनीको कुनै सदस्यले लिखित रुपमा स्वीकार गरेको अवस्थामा बाहेक कम्पनीको ऋण वा दायित्वमा यसका सदस्यहरु जिम्मेवार हुने छैनन् ।<br />\r\n<br />\r\n(ग) शेयर पूँजी भएको कम्पनीलाई मात्र लागू हुन सक्ने व्यवस्थाहरु बाहेक सुचीकृत कम्पनीलाई लागू हुने यस ऐनका सम्पूर्ण व्यवस्थाहरु कम्पनी, यसका सञ्चालक, पदाधिकारी, लेखापरीक्षक तथा कर्मचारीलाई समेत लागू हुनेछन् ।<br />\r\n<br />\r\n(घ) कम्पनीले प्राप्त गरेको मुनाफाबाट लाभांश वा अन्य कुनै रकम यसका सदस्यलाई वितरण गर्ने छैन र कम्पनीले आर्जन गरेको मुनाफा कम्पनीको पूँजी बृद्धि गर्न वा त्यसको उद्देश्य प्राप्तिका लागि खर्च गरिनेछ ।<br />\r\n<br />\r\n(ङ) कम्पनीले आफ्नो उद्देश्यमा परिवर्तन गर्दा कार्यालयको पूर्व स्वीकृति लिनु पर्नेछ ।<br />\r\n<br />\r\n(च) यस परिच्छेद बमोजिम संस्थापित कम्पनीका सदस्यहरुले आफु मध्येबाट एक सदस्य एक मतको हिसाबले नियमावलीमा निर्धारण गरिएको संख्यामा सञ्चालकहरु निर्वाचन गर्नेछन् ।<br />\r\n<br />\r\n(छ) यस परिच्छेद बमोजिम संस्थापित कम्पनीमा काम गर्ने पदाधिकारीले पाउने वैठक भत्ता, तलव, सुविधा तथा कम्पनीको संस्थापना खर्च र सञ्चालन खर्च कार्यालयले तोके भन्दा बढी हुने छैन र कार्यालयले यसरी खर्च तोक्दा त्यस्तो कम्पनीको पूँजीगत अवस्था तथा मुनाफालाई आधार लिनु पर्नेछ ।<br />\r\n<br />\r\n(ज) यस परिच्छेद बमोजिम संस्थापित कम्पनी विघटन भएमा वा दर्ता खारेजीमा परेमा कम्पनीको ऋण तथा दायित्व फछ्र्यौट गरी बाँकी रहेको जायजेथा कम्पनीको नियमावलीमा कुनै व्यवस्था गरिएको भए सोही बमोजिम र व्यवस्था नभएकोमा नेपाल सरकारमा र्सर्नेछ ।<br />\r\n<br />\r\nउपरोक्त लेखिएको व्यवस्था उल्लंघन भएमा कार्यालयले त्यसरी उल्लंघन गर्ने कम्पनीको दर्ता खारेज गर्न सक्नेछ ।</p>', NULL, 1, NULL, NULL, NULL, NULL, 0, '2020-01-21 17:35:38', NULL, NULL),
(13, 'page', 1, NULL, 1, '1_5e27369e14b3a', 'राजश्व / दस्तुर', '', NULL, '<p><strong>राजश्व सम्वन्धि व्यबस्था :</strong><br />\r\n<br />\r\nनेपाल सरकारले कम्पनी ऐन, २०६३ को देहायका दफाहरुको प्रयोजनको लागि देहाय वमोजिमको दस्तुर तोकेको छ :-&nbsp;<strong>१. कम्पनी संस्थापनाको प्रयोजनको लागि:</strong>&nbsp;<strong>क) प्राईभेट लिमिटेड कम्पनी</strong></p>\r\n\r\n<ul>\r\n	<li><strong>१. रु १,००,०००/- सम्मको अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. १,०००/-</li>\r\n	<li><strong>२. रु. १,००,००१/- देखि रु ५,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ४,५००/-</li>\r\n	<li><strong>३. रु. ५,००,००१/- देखि रु २५,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ९,५००/-</li>\r\n	<li><strong>४. रु. २५,००,००१/- देखि रु १,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. १६,०००/-</li>\r\n	<li><strong>५. रु. १,००,००,००१/- देखि रु २,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. १९,०००/-</li>\r\n	<li><strong>६. रु. २,००,००,००१/- देखि रु ३,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. २२,०००/-</li>\r\n	<li><strong>७. रु. ३,००,००,००१/- देखि रु ४,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. २५,०००/-</li>\r\n	<li><strong>८. रु. ४,००,००,००१/- देखि रु ५,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. २८,०००/-</li>\r\n	<li><strong>९. रु. ५,००,००,००१/- देखि रु ६,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ३१,०००/-</li>\r\n	<li><strong>१०. रु. ६,००,००,००१/- देखि रु ७,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ३४,०००/-</li>\r\n	<li><strong>११. रु. ७,००,००,००१/- देखि रु ८,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ३७,०००/-</li>\r\n	<li><strong>१२. रु. ८,००,००,००१/- देखि रु ९,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ४०,०००/-</li>\r\n	<li><strong>१३. रु. ९,००,००,००१/- देखि रु १०,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ४३,०००/-</li>\r\n	<li><strong>१४. रु. १०,००,००,०००/- भन्दा माथि प्रति १ लाखको</strong></li>\r\n	<li>रु ३०/- का दरले दस्तुर लाग्ने छ ।</li>\r\n</ul>\r\n\r\n<p><strong>ख) पव्लिक लिमिटेड कम्पनी</strong></p>\r\n\r\n<ul>\r\n	<li><strong>१. रु १,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. १५,०००/-</li>\r\n	<li><strong>२. रु १,००,००,००१ /- देखि रु १०,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ४०,०००/-</li>\r\n	<li><strong>३. रु १०,००,००,००१ /- देखि रु २०,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ७०,०००/-</li>\r\n	<li><strong>४. रु २०,००,००,००१ /- देखि रु ३०,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. १००,०००/-</li>\r\n	<li><strong>५. रु ३०,००,००,००१ /- देखि रु ४०,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. १३०,०००/-</li>\r\n	<li><strong>६. रु ४०,००,००,००१ /- देखि रु ५०,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. १६०,०००/-</li>\r\n	<li><strong>७. रु. ५०,००,००,०००/- भन्दा माथिको अधिकृत पूँजी भएमा प्रति १ करोडको</strong></li>\r\n	<li>रु.३०००/- का दरले दस्तुर लाग्नेछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>ग) दर्ता भैसकेको कम्पनीले पूँजी वृद्धि गरेमा :</strong><br />\r\n<br />\r\nपछिल्लो पूँजी कायम भएको थप पूँजी अनुरुप पहिले तिरीसकेको दस्तुर कट्टा गरी नपुग रकम नयाँ दररेट अनुसार वुझाउनुपर्नेछ ।<br />\r\n<br />\r\n<strong>घ) कम्पनी ऐन, २०६३ ले थप व्यवस्था गरेका दस्तुर :</strong><br />\r\n<br />\r\n१. दफा १३ को उपदफा (२) र (४) को प्रयोजनको लागि प्रा.लि.बाट प.लि.मा र प.लि.बाट प्रा.लि. मा परिणत गर्दा नयाँ दर्ता गर्दा लाग्ने दस्तुरको ५० प्रतिशत रकम ।<br />\r\n<br />\r\n२. दफा २१ को उपदफा (३) को प्रयोजनको लागि कम्पनीको नाम परिवर्तन गर्दा लाग्ने दस्तुर नयाँ दर्ता गर्दा लाग्ने प्रचलित दस्तुरको २५ प्रतिशत वा बढिमा रु. ५,०००।-<br />\r\n<br />\r\n३. दफा २३ को उपदफा (६) र दफा २५ को उपदफा (२) को प्रयोजनको लागि प्रतिलिपि दस्तुर प्रतिपेज रु. १०।-<br />\r\n<br />\r\n४. दफा ५६ को उपदफा (३) को प्रयोजनको लागि शेयर पूँजी वृद्धिमा लाग्ने दस्तुर । दफा ५६.१ (क) र -ख) को<br />\r\nपूँजी वृद्धिको हकमा हाल कायम हुने अधिकृत पूँजीमा साविकमा तिरेको रजिष्ट्रेशन दस्तुर कट्टी गरी वाँकी हुन आउने रकम । दफा ५६.१ (ख) अनुसार साविक पूँजीमा हेरफेर नभएमा वा कमी भएमा र दफा ५६ .१ (ग) को हकमा रु. १,०००।-<br />\r\n<br />\r\n५. दफा १२४ को उपदफा (१) को प्रयोजनको लागि निरीक्षकको प्रतिवेदनको प्रतिलिपि पाउन लाग्ने दस्तुर रु. १००।-<br />\r\n<br />\r\n६. दफा १३६ को उपदफा (१) को खण्ड (क) र दफा १५८ को उपदफा (१) को प्रयोजनको लागि कम्पनीको दर्ता<br />\r\n<br />\r\nखारेज गर्दा लाग्ने दस्तुर रु. १०,००,०००।- रुपैयाँसम्म चुक्ता पूँजी भएको कम्पनी भए रु. १,०००।- र सो भन्दा<br />\r\nबढी चुक्ता पूँजी भएकोमा रु. ५,०००।-<br />\r\n<br />\r\n७. दफा १५० को उपदफा (२) को प्रयोजनको लागि शेयरधनीले साधारण सभामा भाग नलिएको कुराको उजूरी निवेदन<br />\r\nदिन लाग्ने दस्तुर रु. ५००।-<br />\r\n<br />\r\n८. दफा १५३ को उपदफा (३) को प्रयोजनको लागि एकल शेयरधनी भएको कम्पनीको शेयर हस्तान्तरण तथा दाखिला खारिज भएको अभिलेखको लागि दर्ता गर्दा लाग्ने दस्तुर अनुसारको रकम ।<br />\r\n<br />\r\n९. दफा १५४ को उपदफा (९) को प्रयोजनको लागि विदेशी कम्पनीको दर्ता कितावको प्रतिलिपिको लागि लाग्ने दस्तुर प्रतिपेज- रु. ५०।-<br />\r\n<br />\r\n२. दफा १५४ को उपदफा (२) र (३) को प्रयोजनको लागि लाग्ने दस्तुर</p>\r\n\r\n<p><strong>१. रु १००,००,०००।- सम्म प्रस्तावित लगानी भएमा</strong></p>\r\n\r\n<ul>\r\n	<li>रु. १५,०००।&ndash;</li>\r\n</ul>\r\n\r\n<p><strong>२. रु १,००,००,००१।&ndash; देखि रु १०,००,००,०००।- सम्म प्रस्तावित लगानी भएमा</strong></p>\r\n\r\n<ul>\r\n	<li>रु. ४०,०००।&ndash;</li>\r\n</ul>\r\n\r\n<p><strong>३. रु १०,००,००,००१।&ndash; देखि रु २०,००,००,०००।- सम्म प्रस्तावित लगानी भएमा</strong></p>\r\n\r\n<ul>\r\n	<li>रु. ७०,०००।&ndash;</li>\r\n</ul>\r\n\r\n<p><strong>४. रु २०,००,००,००१।&ndash; देखि रु ३०,००,००,०००।- सम्म प्रस्तावित लगानी भएमा</strong></p>\r\n\r\n<ul>\r\n	<li>रु. १,००,०००।&ndash;</li>\r\n</ul>\r\n\r\n<p><strong>५. रु ३०,००,००,००१।&ndash; देखि रु ४०,००,००,०००।- सम्म प्रस्तावित लगानी भएमा</strong></p>\r\n\r\n<ul>\r\n	<li>रु. १,३०,०००।&ndash;</li>\r\n</ul>\r\n\r\n<p><strong>६. रु ४०,००,००,००१।&ndash; देखि रु ५०,००,००,०००।- सम्म प्रस्तावित लगानी भएमा</strong></p>\r\n\r\n<ul>\r\n	<li>रु. १,६०,०००।&ndash;</li>\r\n</ul>\r\n\r\n<p><strong>७. रु ५०,००,००,०००।&ndash; भन्दा माथिको प्रस्तावित लगानी भए प्रति एक करोडको</strong></p>\r\n\r\n<p><strong>रु. ३,०००।&ndash; का दरले थप दस्तुर लाग्नेछ।</strong></p>\r\n\r\n<p>८.लगानी नखुलेको भए एकमुस्ट रु. १,००,०००।&ndash; दस्तुर लाग्नेछ।</p>\r\n\r\n<p>ख) विदेशी कम्पनीले सम्पर्क कार्यालय दर्ता गर्दा एकमुस्ट रु. ५०,०००।&ndash; दस्तुर लाग्नेछ।</p>\r\n\r\n<p>३. दफा १६६ को उपदफा (२) बमोजिमको मुनाफा वितरण नगर्ने गरि संस्थापना हुने</p>\r\n\r\n<p>कम्पनिका लागि एकमुष्ठ रु. १५,०००।&ndash;दस्तुर लाग्नेछ।</p>\r\n\r\n<p><br />\r\n१०. नेपाल सरकारले कम्पनी ऐन, २०६३ को दफा २८ को उपदफा (३) र दफा १८२ को उपदफा (३) को प्रयोजनाको लागि वाषिर्क सयकडा १०% ब्याजदर तोकेको छ ।<br />\r\n<strong>ड.) कम्पनी ऐन, २०६३ बमोजिम संशोधित भै लागू भएको जरिवाना सम्बन्धि व्यवस्था</strong><br />\r\n<br />\r\n<strong>विवरण नपठाएमा जरिवाना हुने (दफा ८१) :</strong><br />\r\nयस ऐन बमोजिम कम्पनीले कार्यालयलाई उपलब्ध गराउनु पर्ने कुनै विवरण, सुचना वा जानकारी वा कम्पनीलाई पदाधिकारी वा शेयरधनीले उपलब्ध गराउनु पर्ने जानकारी उपलब्ध गराउन यस ऐनमा कुनै म्याद तोकिएकोमा त्यस्तो म्याद भित्र सम्बन्धित कम्पनीले सञ्चालक वा त्यस्तो विवरण, सुचना वा जानकारी कार्यालय वा कम्पनीलाई उपलब्ध गराउनु पर्नेछ ।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>उपदफा (१) बमोजिमको म्यादभित्र दफा ५१,७८,१२०,१३१ वा १५६ बमोजिमको विवरण, सुचना, जानकारी वा जवाफ उपलब्ध नगराउने देहायका कम्पनीका संचालक वा त्यसका पदाधिकारीलाई रजिष्ट्रारले देहाय बमोजिम जरिवाना गर्नेछ ।<br />\r\n	(क) म्याद भुक्तान भएको तिन महिनाा सम्मको लागि पच्चीसलाख रुपैंयासम्म चुक्ता पुँजी भएको कम्पनी भए एक हजार रुपैंया, एककरोड रुपैंयासम्म चुक्ता पुँजी भएको कम्पनी भए दुइ हजार रुपैंया र सो भन्दा बढि चुक्ता पुँजी भएको कम्पनी भए पाँच हजार रुपैंया ।<br />\r\n	(ख) खण्ड (क) बमोजिमको म्याद भुक्तानी भएको मिति देखी थप तिन महिना सम्मका लागि पच्चीस लाख रुपैंया सम्म चुक्ता पुँजी भएको कम्पनी भए पन्ध्रसय रुपैंया, एक करोड रुपैंया सम्म चुक्ता पुँजी भएको कम्पनी भए तिन हजार रुपैंया र सो भन्दा बढि चुक्ता पुँजी भएको कम्पनी भए सात हजार रुपैंया ।<br />\r\n	(ग) खण्ड (ख) बमोजिमको म्याद भुक्तानी भएपछि थप छ महिना सम्मका लागि पच्चीस लाख रुपैंया सम्म चुक्ता पुँजी भएको कम्पनी भए दुइ हजार पाँच सय रुपैंया, एक करोड रुपैंया सम्म चुक्ता पुँजी भएको कम्पनी भए पाँच हजार रुपैंया र सो भन्दा बढि चुक्ता पुँजी भएको कम्पनी भए दश हजार रुपैंया ।<br />\r\n	(घ) खण्ड (ग) बमोजिमको पनि म्याद भुक्तानी भईसकेकोमा पच्चीस लाख रुपैंया सम्म चुक्ता पुँजी भएको कम्पनी भए प्रत्येक बर्षो लागि पाँच हजार रुपैंया, एक करोड रुपैंया सम्म चुक्ता पुँजी भएको कम्पनी भए प्रत्येक वर्षो लागि दश हजार रुपैंया र सो भन्दा बढि चुक्ता पुँजी भएको कम्पनी भए प्रत्येक वर्षो लागि बिस हजार रुपैंया ।</li>\r\n	<li>उपदफा (१) बमोजिमको म्यादभित्र त्यस्तो विवरण, सुचना वा जानकारी उपलब्ध नगराउने मुनाफा वितरण नगर्ने कम्पनीको हकमा त्यस्तो कम्पनीको सञ्चालक वा पदाधिकारीलाई एक करोड रुपैंया सम्म चुक्ता पुँजी भएको कम्पनीलाई हुने सरहको जरिवाना हुनेछ ।</li>\r\n	<li>यस ऐन बमोजिम कार्यालयमा पठाउनु पर्ने अन्य विवरण, सुचना वा जानकारी उपलब्ध नगराउने कम्पनीका सञ्चालक वा त्यसका पदाधिकारी वा शेयरधनिलाई त्यस्तो विवरण, सुचना वा जानकारी उपलब्ध गराउनु पर्ने म्याद समाप्त भएको मितिले एक महिना भुक्तान भएपछि प्रत्येक महिनाको दुइ सय रुपैंयाको दरले जरिवाना हुनेछ ।</li>\r\n</ul>', NULL, 1, NULL, NULL, NULL, NULL, 0, '2020-01-21 17:36:30', NULL, NULL);
INSERT INTO `posts` (`id`, `type`, `user_id`, `category_id`, `lang_id`, `unique_id`, `title`, `slug`, `thumbnail`, `content`, `excerpt`, `status`, `featured`, `tag`, `author`, `url`, `visit_no`, `created_at`, `updated_at`, `deleted_at`) VALUES
(14, 'page', 1, NULL, 2, '1_5e27369e14b3a', 'राजश्व / दस्तुर', '', NULL, '<p><strong>राजश्व सम्वन्धि व्यबस्था :</strong><br />\r\n<br />\r\nनेपाल सरकारले कम्पनी ऐन, २०६३ को देहायका दफाहरुको प्रयोजनको लागि देहाय वमोजिमको दस्तुर तोकेको छ :-&nbsp;<strong>१. कम्पनी संस्थापनाको प्रयोजनको लागि:</strong>&nbsp;<strong>क) प्राईभेट लिमिटेड कम्पनी</strong></p>\r\n\r\n<ul>\r\n	<li><strong>१. रु १,००,०००/- सम्मको अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. १,०००/-</li>\r\n	<li><strong>२. रु. १,००,००१/- देखि रु ५,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ४,५००/-</li>\r\n	<li><strong>३. रु. ५,००,००१/- देखि रु २५,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ९,५००/-</li>\r\n	<li><strong>४. रु. २५,००,००१/- देखि रु १,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. १६,०००/-</li>\r\n	<li><strong>५. रु. १,००,००,००१/- देखि रु २,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. १९,०००/-</li>\r\n	<li><strong>६. रु. २,००,००,००१/- देखि रु ३,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. २२,०००/-</li>\r\n	<li><strong>७. रु. ३,००,००,००१/- देखि रु ४,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. २५,०००/-</li>\r\n	<li><strong>८. रु. ४,००,००,००१/- देखि रु ५,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. २८,०००/-</li>\r\n	<li><strong>९. रु. ५,००,००,००१/- देखि रु ६,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ३१,०००/-</li>\r\n	<li><strong>१०. रु. ६,००,००,००१/- देखि रु ७,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ३४,०००/-</li>\r\n	<li><strong>११. रु. ७,००,००,००१/- देखि रु ८,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ३७,०००/-</li>\r\n	<li><strong>१२. रु. ८,००,००,००१/- देखि रु ९,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ४०,०००/-</li>\r\n	<li><strong>१३. रु. ९,००,००,००१/- देखि रु १०,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ४३,०००/-</li>\r\n	<li><strong>१४. रु. १०,००,००,०००/- भन्दा माथि प्रति १ लाखको</strong></li>\r\n	<li>रु ३०/- का दरले दस्तुर लाग्ने छ ।</li>\r\n</ul>\r\n\r\n<p><strong>ख) पव्लिक लिमिटेड कम्पनी</strong></p>\r\n\r\n<ul>\r\n	<li><strong>१. रु १,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. १५,०००/-</li>\r\n	<li><strong>२. रु १,००,००,००१ /- देखि रु १०,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ४०,०००/-</li>\r\n	<li><strong>३. रु १०,००,००,००१ /- देखि रु २०,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. ७०,०००/-</li>\r\n	<li><strong>४. रु २०,००,००,००१ /- देखि रु ३०,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. १००,०००/-</li>\r\n	<li><strong>५. रु ३०,००,००,००१ /- देखि रु ४०,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. १३०,०००/-</li>\r\n	<li><strong>६. रु ४०,००,००,००१ /- देखि रु ५०,००,००,००० /- अधिकृत पूँजी भएको</strong></li>\r\n	<li>रु. १६०,०००/-</li>\r\n	<li><strong>७. रु. ५०,००,००,०००/- भन्दा माथिको अधिकृत पूँजी भएमा प्रति १ करोडको</strong></li>\r\n	<li>रु.३०००/- का दरले दस्तुर लाग्नेछ ।</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>ग) दर्ता भैसकेको कम्पनीले पूँजी वृद्धि गरेमा :</strong><br />\r\n<br />\r\nपछिल्लो पूँजी कायम भएको थप पूँजी अनुरुप पहिले तिरीसकेको दस्तुर कट्टा गरी नपुग रकम नयाँ दररेट अनुसार वुझाउनुपर्नेछ ।<br />\r\n<br />\r\n<strong>घ) कम्पनी ऐन, २०६३ ले थप व्यवस्था गरेका दस्तुर :</strong><br />\r\n<br />\r\n१. दफा १३ को उपदफा (२) र (४) को प्रयोजनको लागि प्रा.लि.बाट प.लि.मा र प.लि.बाट प्रा.लि. मा परिणत गर्दा नयाँ दर्ता गर्दा लाग्ने दस्तुरको ५० प्रतिशत रकम ।<br />\r\n<br />\r\n२. दफा २१ को उपदफा (३) को प्रयोजनको लागि कम्पनीको नाम परिवर्तन गर्दा लाग्ने दस्तुर नयाँ दर्ता गर्दा लाग्ने प्रचलित दस्तुरको २५ प्रतिशत वा बढिमा रु. ५,०००।-<br />\r\n<br />\r\n३. दफा २३ को उपदफा (६) र दफा २५ को उपदफा (२) को प्रयोजनको लागि प्रतिलिपि दस्तुर प्रतिपेज रु. १०।-<br />\r\n<br />\r\n४. दफा ५६ को उपदफा (३) को प्रयोजनको लागि शेयर पूँजी वृद्धिमा लाग्ने दस्तुर । दफा ५६.१ (क) र -ख) को<br />\r\nपूँजी वृद्धिको हकमा हाल कायम हुने अधिकृत पूँजीमा साविकमा तिरेको रजिष्ट्रेशन दस्तुर कट्टी गरी वाँकी हुन आउने रकम । दफा ५६.१ (ख) अनुसार साविक पूँजीमा हेरफेर नभएमा वा कमी भएमा र दफा ५६ .१ (ग) को हकमा रु. १,०००।-<br />\r\n<br />\r\n५. दफा १२४ को उपदफा (१) को प्रयोजनको लागि निरीक्षकको प्रतिवेदनको प्रतिलिपि पाउन लाग्ने दस्तुर रु. १००।-<br />\r\n<br />\r\n६. दफा १३६ को उपदफा (१) को खण्ड (क) र दफा १५८ को उपदफा (१) को प्रयोजनको लागि कम्पनीको दर्ता<br />\r\n<br />\r\nखारेज गर्दा लाग्ने दस्तुर रु. १०,००,०००।- रुपैयाँसम्म चुक्ता पूँजी भएको कम्पनी भए रु. १,०००।- र सो भन्दा<br />\r\nबढी चुक्ता पूँजी भएकोमा रु. ५,०००।-<br />\r\n<br />\r\n७. दफा १५० को उपदफा (२) को प्रयोजनको लागि शेयरधनीले साधारण सभामा भाग नलिएको कुराको उजूरी निवेदन<br />\r\nदिन लाग्ने दस्तुर रु. ५००।-<br />\r\n<br />\r\n८. दफा १५३ को उपदफा (३) को प्रयोजनको लागि एकल शेयरधनी भएको कम्पनीको शेयर हस्तान्तरण तथा दाखिला खारिज भएको अभिलेखको लागि दर्ता गर्दा लाग्ने दस्तुर अनुसारको रकम ।<br />\r\n<br />\r\n९. दफा १५४ को उपदफा (९) को प्रयोजनको लागि विदेशी कम्पनीको दर्ता कितावको प्रतिलिपिको लागि लाग्ने दस्तुर प्रतिपेज- रु. ५०।-<br />\r\n<br />\r\n२. दफा १५४ को उपदफा (२) र (३) को प्रयोजनको लागि लाग्ने दस्तुर</p>\r\n\r\n<p><strong>१. रु १००,००,०००।- सम्म प्रस्तावित लगानी भएमा</strong></p>\r\n\r\n<ul>\r\n	<li>रु. १५,०००।&ndash;</li>\r\n</ul>\r\n\r\n<p><strong>२. रु १,००,००,००१।&ndash; देखि रु १०,००,००,०००।- सम्म प्रस्तावित लगानी भएमा</strong></p>\r\n\r\n<ul>\r\n	<li>रु. ४०,०००।&ndash;</li>\r\n</ul>\r\n\r\n<p><strong>३. रु १०,००,००,००१।&ndash; देखि रु २०,००,००,०००।- सम्म प्रस्तावित लगानी भएमा</strong></p>\r\n\r\n<ul>\r\n	<li>रु. ७०,०००।&ndash;</li>\r\n</ul>\r\n\r\n<p><strong>४. रु २०,००,००,००१।&ndash; देखि रु ३०,००,००,०००।- सम्म प्रस्तावित लगानी भएमा</strong></p>\r\n\r\n<ul>\r\n	<li>रु. १,००,०००।&ndash;</li>\r\n</ul>\r\n\r\n<p><strong>५. रु ३०,००,००,००१।&ndash; देखि रु ४०,००,००,०००।- सम्म प्रस्तावित लगानी भएमा</strong></p>\r\n\r\n<ul>\r\n	<li>रु. १,३०,०००।&ndash;</li>\r\n</ul>\r\n\r\n<p><strong>६. रु ४०,००,००,००१।&ndash; देखि रु ५०,००,००,०००।- सम्म प्रस्तावित लगानी भएमा</strong></p>\r\n\r\n<ul>\r\n	<li>रु. १,६०,०००।&ndash;</li>\r\n</ul>\r\n\r\n<p><strong>७. रु ५०,००,००,०००।&ndash; भन्दा माथिको प्रस्तावित लगानी भए प्रति एक करोडको</strong></p>\r\n\r\n<p><strong>रु. ३,०००।&ndash; का दरले थप दस्तुर लाग्नेछ।</strong></p>\r\n\r\n<p>८.लगानी नखुलेको भए एकमुस्ट रु. १,००,०००।&ndash; दस्तुर लाग्नेछ।</p>\r\n\r\n<p>ख) विदेशी कम्पनीले सम्पर्क कार्यालय दर्ता गर्दा एकमुस्ट रु. ५०,०००।&ndash; दस्तुर लाग्नेछ।</p>\r\n\r\n<p>३. दफा १६६ को उपदफा (२) बमोजिमको मुनाफा वितरण नगर्ने गरि संस्थापना हुने</p>\r\n\r\n<p>कम्पनिका लागि एकमुष्ठ रु. १५,०००।&ndash;दस्तुर लाग्नेछ।</p>\r\n\r\n<p><br />\r\n१०. नेपाल सरकारले कम्पनी ऐन, २०६३ को दफा २८ को उपदफा (३) र दफा १८२ को उपदफा (३) को प्रयोजनाको लागि वाषिर्क सयकडा १०% ब्याजदर तोकेको छ ।<br />\r\n<strong>ड.) कम्पनी ऐन, २०६३ बमोजिम संशोधित भै लागू भएको जरिवाना सम्बन्धि व्यवस्था</strong><br />\r\n<br />\r\n<strong>विवरण नपठाएमा जरिवाना हुने (दफा ८१) :</strong><br />\r\nयस ऐन बमोजिम कम्पनीले कार्यालयलाई उपलब्ध गराउनु पर्ने कुनै विवरण, सुचना वा जानकारी वा कम्पनीलाई पदाधिकारी वा शेयरधनीले उपलब्ध गराउनु पर्ने जानकारी उपलब्ध गराउन यस ऐनमा कुनै म्याद तोकिएकोमा त्यस्तो म्याद भित्र सम्बन्धित कम्पनीले सञ्चालक वा त्यस्तो विवरण, सुचना वा जानकारी कार्यालय वा कम्पनीलाई उपलब्ध गराउनु पर्नेछ ।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>उपदफा (१) बमोजिमको म्यादभित्र दफा ५१,७८,१२०,१३१ वा १५६ बमोजिमको विवरण, सुचना, जानकारी वा जवाफ उपलब्ध नगराउने देहायका कम्पनीका संचालक वा त्यसका पदाधिकारीलाई रजिष्ट्रारले देहाय बमोजिम जरिवाना गर्नेछ ।<br />\r\n	(क) म्याद भुक्तान भएको तिन महिनाा सम्मको लागि पच्चीसलाख रुपैंयासम्म चुक्ता पुँजी भएको कम्पनी भए एक हजार रुपैंया, एककरोड रुपैंयासम्म चुक्ता पुँजी भएको कम्पनी भए दुइ हजार रुपैंया र सो भन्दा बढि चुक्ता पुँजी भएको कम्पनी भए पाँच हजार रुपैंया ।<br />\r\n	(ख) खण्ड (क) बमोजिमको म्याद भुक्तानी भएको मिति देखी थप तिन महिना सम्मका लागि पच्चीस लाख रुपैंया सम्म चुक्ता पुँजी भएको कम्पनी भए पन्ध्रसय रुपैंया, एक करोड रुपैंया सम्म चुक्ता पुँजी भएको कम्पनी भए तिन हजार रुपैंया र सो भन्दा बढि चुक्ता पुँजी भएको कम्पनी भए सात हजार रुपैंया ।<br />\r\n	(ग) खण्ड (ख) बमोजिमको म्याद भुक्तानी भएपछि थप छ महिना सम्मका लागि पच्चीस लाख रुपैंया सम्म चुक्ता पुँजी भएको कम्पनी भए दुइ हजार पाँच सय रुपैंया, एक करोड रुपैंया सम्म चुक्ता पुँजी भएको कम्पनी भए पाँच हजार रुपैंया र सो भन्दा बढि चुक्ता पुँजी भएको कम्पनी भए दश हजार रुपैंया ।<br />\r\n	(घ) खण्ड (ग) बमोजिमको पनि म्याद भुक्तानी भईसकेकोमा पच्चीस लाख रुपैंया सम्म चुक्ता पुँजी भएको कम्पनी भए प्रत्येक बर्षो लागि पाँच हजार रुपैंया, एक करोड रुपैंया सम्म चुक्ता पुँजी भएको कम्पनी भए प्रत्येक वर्षो लागि दश हजार रुपैंया र सो भन्दा बढि चुक्ता पुँजी भएको कम्पनी भए प्रत्येक वर्षो लागि बिस हजार रुपैंया ।</li>\r\n	<li>उपदफा (१) बमोजिमको म्यादभित्र त्यस्तो विवरण, सुचना वा जानकारी उपलब्ध नगराउने मुनाफा वितरण नगर्ने कम्पनीको हकमा त्यस्तो कम्पनीको सञ्चालक वा पदाधिकारीलाई एक करोड रुपैंया सम्म चुक्ता पुँजी भएको कम्पनीलाई हुने सरहको जरिवाना हुनेछ ।</li>\r\n	<li>यस ऐन बमोजिम कार्यालयमा पठाउनु पर्ने अन्य विवरण, सुचना वा जानकारी उपलब्ध नगराउने कम्पनीका सञ्चालक वा त्यसका पदाधिकारी वा शेयरधनिलाई त्यस्तो विवरण, सुचना वा जानकारी उपलब्ध गराउनु पर्ने म्याद समाप्त भएको मितिले एक महिना भुक्तान भएपछि प्रत्येक महिनाको दुइ सय रुपैंयाको दरले जरिवाना हुनेछ ।</li>\r\n</ul>', NULL, 1, NULL, NULL, NULL, NULL, 0, '2020-01-21 17:36:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `processes`
--

CREATE TABLE `processes` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `process_name`
--

CREATE TABLE `process_name` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `process_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `province_data`
--

CREATE TABLE `province_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `province_data`
--

INSERT INTO `province_data` (`id`, `title`, `slug`, `data`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 16587, '2020-01-28 09:52:53', '2020-01-28 09:52:53'),
(2, '2', '2', 12729, '2020-01-28 09:52:53', '2020-01-28 09:52:53'),
(3, '3', '3', 166662, '2020-01-28 09:52:53', '2020-01-28 09:52:53'),
(4, '4', '4', 12322, '2020-01-28 09:52:54', '2020-01-28 09:52:54'),
(5, '5', '5', 14473, '2020-01-28 09:52:54', '2020-01-28 09:52:54'),
(6, '6', '6', 2610, '2020-01-28 09:52:54', '2020-01-28 09:52:54'),
(7, '7', '7', 4315, '2020-01-28 09:52:54', '2020-01-28 09:52:54'),
(8, 'Unknown', 'unknown', 1067, '2020-01-28 09:52:55', '2020-01-28 09:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About Us fjfjf', 'about-us-fjfjf', NULL, NULL, 1, '2019-10-29 06:14:18', '2019-10-29 06:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_slogan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `tracker_status` tinyint(1) NOT NULL DEFAULT 0,
  `social_profile_fb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_profile_twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_profile_insta` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_profile_youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_profile_linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_address_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_verification` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_tracking` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_mode` tinyint(1) DEFAULT NULL,
  `maintenance_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_msg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_mode` tinyint(1) DEFAULT NULL,
  `popup_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_msg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_visit` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_slogan`, `site_title`, `site_description`, `site_url`, `meta_keyword`, `logo`, `language`, `tracker_status`, `social_profile_fb`, `social_profile_twitter`, `social_profile_insta`, `social_profile_youtube`, `social_profile_linkedin`, `contact_title`, `contact_sub_title`, `contact_address_1`, `contact_address_2`, `contact_phone`, `contact_fax`, `contact_mobile`, `contact_email`, `contact_url`, `contact_map`, `about_title`, `about_sub_title`, `about_description`, `about_image`, `google_verification`, `google_tracking`, `maintenance_mode`, `maintenance_title`, `maintenance_msg`, `popup_mode`, `popup_title`, `popup_msg`, `popup_url`, `no_of_visit`, `created_at`, `updated_at`) VALUES
(1, 'Office of The Company Registrar', 'Office of The Company Registrar', 'Office of The Company Registrar', '<p>Office of The Company Registrar</p>', NULL, 'Office of The Company Registrar', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-28 05:08:45', '2020-01-21 17:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders_name`
--

CREATE TABLE `sliders_name` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(10) UNSIGNED NOT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `featured_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trackers`
--

CREATE TABLE `trackers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_date` date DEFAULT NULL,
  `visit_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trackers`
--

INSERT INTO `trackers` (`id`, `user_id`, `user_name`, `hits`, `user_agent`, `request_method`, `request_uri`, `visitor`, `visit_date`, `visit_time`, `created_at`, `updated_at`) VALUES
(36, 1, 'Lochan', 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 'GET', '/dashboard/setting', '127.0.0.1', '2019-12-15', '00:52:00', '2019-12-14 19:07:00', '2019-12-14 19:07:00'),
(37, 1, 'Lochan', 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 'POST', '/dashboard/setting/1', '127.0.0.1', '2019-12-15', '00:52:11', '2019-12-14 19:07:11', '2019-12-14 19:07:11'),
(38, NULL, NULL, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-12-15', NULL, '2019-12-14 19:07:20', '2019-12-14 19:07:20'),
(39, NULL, NULL, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-12-15', NULL, '2019-12-14 19:07:28', '2019-12-14 19:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_super` tinyint(1) DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `forgotten_password_time` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `username`, `avatar`, `phone`, `role_super`, `role_id`, `forgotten_password_time`, `status`, `created_at`, `updated_at`, `last_login_at`, `last_login_ip`) VALUES
(1, 'Lochan', 'Krishnashrestha49@gmail.com', NULL, '$2y$10$C2zApxc85SdCmqNgYdps1urTBxaE7Mh33fHQjWEcF2hQQPwoJJ/v6', 'EZH2a0QKlow2nsfiL0yJQ276vsQF7IjfdfNUNefBJ5Pn6zrL4FBFw8hIFMRv', NULL, NULL, '+1 (763) 553-1796', 1, 1, NULL, 1, '2019-10-28 05:08:45', '2020-01-28 16:42:21', '2020-01-28 22:27:21', '127.0.0.1'),
(3, 'Jin Armstrong', 'fuhivequh@mailinator.com', NULL, '$2y$10$sFPi7AElmJhcc5ZdRBlwqeFjzZntQjy/9lYMxZ2yTfXCquzw8S4YO', NULL, NULL, NULL, NULL, 1, 1, NULL, 1, '2019-10-29 07:05:48', '2019-10-29 07:43:35', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_album_category_id_foreign` (`album_category_id`);

--
-- Indexes for table `albums_name`
--
ALTER TABLE `albums_name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_name_album_id_foreign` (`album_id`),
  ADD KEY `albums_name_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `album_categories`
--
ALTER TABLE `album_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album_categories_name`
--
ALTER TABLE `album_categories_name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_categories_name_lang_id_foreign` (`lang_id`),
  ADD KEY `album_categories_name_album_category_id_foreign` (`album_category_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches_name`
--
ALTER TABLE `branches_name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branches_name_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_name`
--
ALTER TABLE `categories_name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_name_lang_id_foreign` (`lang_id`),
  ADD KEY `categories_name_category_id_foreign` (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commons`
--
ALTER TABLE `commons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `date_data`
--
ALTER TABLE `date_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district_data`
--
ALTER TABLE `district_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f_a_qs_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_album_id_foreign` (`album_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `links_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `menus_name`
--
ALTER TABLE `menus_name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_name_menu_id_foreign` (`menu_id`),
  ADD KEY `menus_name_lang_id_foreign` (`lang_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `process_name`
--
ALTER TABLE `process_name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `process_name_lang_id_foreign` (`lang_id`),
  ADD KEY `process_name_process_id_foreign` (`process_id`);

--
-- Indexes for table `province_data`
--
ALTER TABLE `province_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_lang_id_foreign` (`lang_id`);

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
-- Indexes for table `sliders_name`
--
ALTER TABLE `sliders_name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_name_slider_id_foreign` (`slider_id`),
  ADD KEY `sliders_name_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_lang_id_foreign` (`lang_id`),
  ADD KEY `staff_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `trackers`
--
ALTER TABLE `trackers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `albums_name`
--
ALTER TABLE `albums_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `album_categories`
--
ALTER TABLE `album_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `album_categories_name`
--
ALTER TABLE `album_categories_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches_name`
--
ALTER TABLE `branches_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories_name`
--
ALTER TABLE `categories_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `commons`
--
ALTER TABLE `commons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `date_data`
--
ALTER TABLE `date_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `district_data`
--
ALTER TABLE `district_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menus_name`
--
ALTER TABLE `menus_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `processes`
--
ALTER TABLE `processes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `process_name`
--
ALTER TABLE `process_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `province_data`
--
ALTER TABLE `province_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders_name`
--
ALTER TABLE `sliders_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trackers`
--
ALTER TABLE `trackers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_album_category_id_foreign` FOREIGN KEY (`album_category_id`) REFERENCES `album_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `albums_name`
--
ALTER TABLE `albums_name`
  ADD CONSTRAINT `albums_name_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `albums_name_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `album_categories_name`
--
ALTER TABLE `album_categories_name`
  ADD CONSTRAINT `album_categories_name_album_category_id_foreign` FOREIGN KEY (`album_category_id`) REFERENCES `album_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `album_categories_name_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `branches_name`
--
ALTER TABLE `branches_name`
  ADD CONSTRAINT `branches_name_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories_name`
--
ALTER TABLE `categories_name`
  ADD CONSTRAINT `categories_name_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_name_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  ADD CONSTRAINT `f_a_qs_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `links_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menus_name`
--
ALTER TABLE `menus_name`
  ADD CONSTRAINT `menus_name_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menus_name_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `process_name`
--
ALTER TABLE `process_name`
  ADD CONSTRAINT `process_name_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `process_name_process_id_foreign` FOREIGN KEY (`process_id`) REFERENCES `processes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sliders_name`
--
ALTER TABLE `sliders_name`
  ADD CONSTRAINT `sliders_name_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sliders_name_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
