-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2019 at 06:55 PM
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
(1, NULL, 1, 'fa-adjust', '#00ff00', 'About Us', 'about-us', 1, '2019-11-06 16:18:59', '2019-11-06 16:19:01');

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
(1, 1, 1, 'Dashai', NULL, NULL, NULL, NULL),
(2, 2, 1, 'Lavinia Gill', NULL, NULL, NULL, NULL);

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

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `unique_id`, `type`, `comment`, `rating`, `created_at`, `updated_at`) VALUES
(3, '1_5dc2f28770428', 'reaction', 'happy', NULL, '2019-11-10 17:27:10', '2019-11-10 17:27:10'),
(4, '1_5dc2f28770428', 'comment', 'What can we do ??', NULL, '2019-11-10 17:29:05', '2019-11-10 17:29:05'),
(5, '1_5dc2f28770428', 'comment', 'What can we do ??', NULL, '2019-11-10 17:29:09', '2019-11-10 17:29:09');

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
(1, 'Tihar', NULL, 'Post', 1, NULL, '/post/1_5dc2f28770428', '\'site.post\', [\'id\' => 1_5dc2f28770428]', '1_5dc2f28770428', '_self', NULL, '1_5dc2f28770428', 1, '2019-11-06 16:19:43', '2019-11-06 16:19:45');

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
(1, 1, 1, 'Home', NULL, NULL),
(2, 1, 2, 'About Us', NULL, NULL);

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
(27, '2019_09_12_231305_create_processes_table', 1);

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
(1, 'post', 1, 1, 1, '1_5dc2f28770428', 'Eum eu soluta iusto', 'eum-eu-soluta-iusto', NULL, '<p>Recusandae. Amet, po.</p>', 'Quia quis et ad dese', 1, NULL, 'Officia consequatur', NULL, NULL, 3, '2019-11-06 16:19:19', '2019-11-10 17:28:51', NULL),
(2, 'post', 1, 1, 2, '1_5dc2f28770428', 'Odit id quo qui neq', 'odit-id-quo-qui-neq', NULL, '<p>Sed expedita velit, .</p>', 'Beatae rerum dolore', 1, NULL, 'Officia consequatur', NULL, NULL, 0, '2019-11-06 16:19:19', NULL, NULL);

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

INSERT INTO `settings` (`id`, `site_name`, `site_slogan`, `site_title`, `site_description`, `site_url`, `meta_keyword`, `logo`, `language`, `social_profile_fb`, `social_profile_twitter`, `social_profile_insta`, `social_profile_youtube`, `social_profile_linkedin`, `contact_title`, `contact_sub_title`, `contact_address_1`, `contact_address_2`, `contact_phone`, `contact_fax`, `contact_mobile`, `contact_email`, `contact_url`, `contact_map`, `about_title`, `about_sub_title`, `about_description`, `about_image`, `google_verification`, `google_tracking`, `maintenance_mode`, `maintenance_title`, `maintenance_msg`, `popup_mode`, `popup_title`, `popup_msg`, `popup_url`, `no_of_visit`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-28 05:08:45', '2019-10-28 05:08:45');

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
(1, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-10-28', '10:55:21', '2019-10-28 05:08:50', '2019-10-28 05:10:21'),
(2, NULL, NULL, 8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-10-29', '11:48:17', '2019-10-29 01:52:43', '2019-10-29 06:03:17'),
(3, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/dcms/login', '127.0.0.1', '2019-10-29', '11:51:14', '2019-10-29 02:00:56', '2019-10-29 06:06:14'),
(4, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'POST', '/login', '127.0.0.1', '2019-10-29', '11:52:01', '2019-10-29 02:01:05', '2019-10-29 06:07:01'),
(5, NULL, NULL, 19, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-10-29', '14:36:33', '2019-10-29 02:01:07', '2019-10-29 08:51:33'),
(6, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/logout', '127.0.0.1', '2019-10-29', '07:46:28', '2019-10-29 02:01:28', '2019-10-29 02:01:28'),
(7, NULL, NULL, 18, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/dashboard/role', '127.0.0.1', '2019-10-29', '14:21:42', '2019-10-29 02:23:47', '2019-10-29 08:36:42'),
(8, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/dashboard/service', '127.0.0.1', '2019-10-29', '08:16:17', '2019-10-29 02:27:27', '2019-10-29 02:31:17'),
(9, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/dashboard/link', '127.0.0.1', '2019-10-29', '08:15:28', '2019-10-29 02:30:28', '2019-10-29 02:30:28'),
(10, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/dashboard/role/create', '127.0.0.1', '2019-10-29', '11:59:03', '2019-10-29 06:12:09', '2019-10-29 06:14:03'),
(11, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'POST', '/dashboard/role', '127.0.0.1', '2019-10-29', '11:59:18', '2019-10-29 06:14:18', '2019-10-29 06:14:18'),
(12, NULL, NULL, 10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/dashboard/role/assign_permission/1', '127.0.0.1', '2019-10-29', '14:23:18', '2019-10-29 06:24:21', '2019-10-29 08:38:18'),
(13, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/dashboard/role/1/edit', '127.0.0.1', '2019-10-29', '12:14:58', '2019-10-29 06:27:47', '2019-10-29 06:29:58'),
(14, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'POST', '/dashboard/role/1', '127.0.0.1', '2019-10-29', '12:15:23', '2019-10-29 06:30:23', '2019-10-29 06:30:23'),
(15, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'POST', '/dashboard/role/assign_permission/update/1', '127.0.0.1', '2019-10-29', '14:22:23', '2019-10-29 06:53:00', '2019-10-29 08:37:23'),
(16, NULL, NULL, 20, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/dashboard/user', '127.0.0.1', '2019-10-29', '14:21:25', '2019-10-29 06:56:04', '2019-10-29 08:36:25'),
(17, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/dashboard/user/create', '127.0.0.1', '2019-10-29', '12:47:42', '2019-10-29 07:02:42', '2019-10-29 07:02:42'),
(18, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'POST', '/register', '127.0.0.1', '2019-10-29', '12:50:47', '2019-10-29 07:05:47', '2019-10-29 07:05:47'),
(19, NULL, NULL, 14, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/dashboard/user/3/edit', '127.0.0.1', '2019-10-29', '13:41:03', '2019-10-29 07:07:57', '2019-10-29 07:56:03'),
(20, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/dashboard/user/3?_method=PUT&name=Jin+Armstrong&role=1&role_super=0&status=0&status=1', '127.0.0.1', '2019-10-29', '13:02:51', '2019-10-29 07:17:51', '2019-10-29 07:17:51'),
(21, NULL, NULL, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-10-29', '14:23:17', '2019-10-29 07:24:08', '2019-10-29 08:38:17'),
(22, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/dashboard/user/3?_method=PUT&name=Jin+Armstrong&role=1&role_super=0&role_super=1&status=0&status=1', '127.0.0.1', '2019-10-29', '13:28:35', '2019-10-29 07:43:35', '2019-10-29 07:43:35'),
(23, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'GET', '/dashboard/language', '127.0.0.1', '2019-10-29', '14:36:32', '2019-10-29 08:51:31', '2019-10-29 08:51:32'),
(24, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-11-06', '22:04:47', '2019-11-06 15:13:34', '2019-11-06 16:19:47'),
(25, NULL, NULL, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'GET', '/dcms/login', '127.0.0.1', '2019-11-06', '21:05:13', '2019-11-06 15:19:45', '2019-11-06 15:20:13'),
(26, NULL, NULL, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'POST', '/login', '127.0.0.1', '2019-11-06', '21:05:21', '2019-11-06 15:19:53', '2019-11-06 15:20:21'),
(27, NULL, NULL, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-11-06', '21:48:54', '2019-11-06 15:20:22', '2019-11-06 16:03:54'),
(28, NULL, NULL, 13, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'GET', '/dashboard/comment', '127.0.0.1', '2019-11-06', '22:23:10', '2019-11-06 16:04:01', '2019-11-06 16:38:10'),
(29, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-11-06', '22:04:19', '2019-11-06 16:13:44', '2019-11-06 16:19:19'),
(30, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'GET', '/dashboard/page', '127.0.0.1', '2019-11-06', '22:03:38', '2019-11-06 16:18:38', '2019-11-06 16:18:38'),
(31, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'GET', '/dashboard/category', '127.0.0.1', '2019-11-06', '22:04:00', '2019-11-06 16:18:41', '2019-11-06 16:19:00'),
(32, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'POST', '/dashboard/category/order', '127.0.0.1', '2019-11-06', '22:04:01', '2019-11-06 16:18:43', '2019-11-06 16:19:01'),
(33, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'POST', '/dashboard/category', '127.0.0.1', '2019-11-06', '22:03:59', '2019-11-06 16:18:59', '2019-11-06 16:18:59'),
(34, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'GET', '/dashboard/post/create', '127.0.0.1', '2019-11-06', '22:04:04', '2019-11-06 16:19:04', '2019-11-06 16:19:04'),
(35, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'POST', '/dashboard/post', '127.0.0.1', '2019-11-06', '22:04:19', '2019-11-06 16:19:19', '2019-11-06 16:19:19'),
(36, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'GET', '/dashboard/menu', '127.0.0.1', '2019-11-06', '22:04:44', '2019-11-06 16:19:26', '2019-11-06 16:19:44'),
(37, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'POST', '/dashboard/menu/order', '127.0.0.1', '2019-11-06', '22:04:45', '2019-11-06 16:19:28', '2019-11-06 16:19:45'),
(38, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'GET', '/dashboard/menu/create', '127.0.0.1', '2019-11-06', '22:04:28', '2019-11-06 16:19:28', '2019-11-06 16:19:28'),
(39, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'POST', '/dashboard/menu', '127.0.0.1', '2019-11-06', '22:04:43', '2019-11-06 16:19:43', '2019-11-06 16:19:43'),
(40, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'GET', '/post/1_5dc2f28770428', '127.0.0.1', '2019-11-06', '22:04:58', '2019-11-06 16:19:58', '2019-11-06 16:19:58'),
(41, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'POST', '/reaction', '127.0.0.1', '2019-11-06', '22:05:02', '2019-11-06 16:20:02', '2019-11-06 16:20:02'),
(42, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'POST', '/comment', '127.0.0.1', '2019-11-06', '22:05:07', '2019-11-06 16:20:07', '2019-11-06 16:20:07'),
(43, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'DELETE', '/dashboard/comment/1', '127.0.0.1', '2019-11-06', '22:23:04', '2019-11-06 16:29:07', '2019-11-06 16:38:04'),
(44, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'DELETE', '/dashboard/comment/2', '127.0.0.1', '2019-11-06', '22:23:22', '2019-11-06 16:30:55', '2019-11-06 16:38:22'),
(45, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-11-10', '23:12:02', '2019-11-10 17:25:35', '2019-11-10 17:27:02'),
(46, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'GET', '/dcms/login', '127.0.0.1', '2019-11-10', '23:10:51', '2019-11-10 17:25:51', '2019-11-10 17:25:51'),
(47, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'POST', '/login', '127.0.0.1', '2019-11-10', '23:10:59', '2019-11-10 17:25:59', '2019-11-10 17:25:59'),
(48, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-11-10', '23:11:02', '2019-11-10 17:26:02', '2019-11-10 17:26:02'),
(49, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'GET', '/dashboard/comment', '127.0.0.1', '2019-11-10', '23:27:12', '2019-11-10 17:26:56', '2019-11-10 17:42:12'),
(50, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'GET', '/post/1_5dc2f28770428', '127.0.0.1', '2019-11-10', '23:13:51', '2019-11-10 17:27:05', '2019-11-10 17:28:51'),
(51, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'POST', '/reaction', '127.0.0.1', '2019-11-10', '23:12:10', '2019-11-10 17:27:10', '2019-11-10 17:27:10'),
(52, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'POST', '/comment', '127.0.0.1', '2019-11-10', '23:14:09', '2019-11-10 17:29:05', '2019-11-10 17:29:09');

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
(1, 'Lochan', 'Krishnashrestha49@gmail.com', NULL, '$2y$10$C2zApxc85SdCmqNgYdps1urTBxaE7Mh33fHQjWEcF2hQQPwoJJ/v6', 'EZH2a0QKlow2nsfiL0yJQ276vsQF7IjfdfNUNefBJ5Pn6zrL4FBFw8hIFMRv', NULL, NULL, NULL, 1, 1, NULL, 1, '2019-10-28 05:08:45', '2019-11-10 17:26:01', '2019-11-10 23:11:01', '127.0.0.1'),
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
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `albums_name`
--
ALTER TABLE `albums_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `album_categories`
--
ALTER TABLE `album_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `album_categories_name`
--
ALTER TABLE `album_categories_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories_name`
--
ALTER TABLE `categories_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `commons`
--
ALTER TABLE `commons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus_name`
--
ALTER TABLE `menus_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
