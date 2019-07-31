-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2019 at 04:53 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dcms_ngo`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `cover_image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `order`, `cover_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'GEN', NULL, '/upload_file/images/album/1563216953_247594844_WWW.YTS.AG.jpg', 1, '2019-07-15 18:55:55', '2019-07-17 17:44:46'),
(2, 'Bertha Hanson', 99, '/upload_file/images/album/1564513167_532992094_Civil-Engineering-in-Nepal-02.png', 1, '2019-07-30 18:59:27', '2019-07-30 18:59:27');

-- --------------------------------------------------------

--
-- Table structure for table `albums_name`
--

CREATE TABLE `albums_name` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums_name`
--

INSERT INTO `albums_name` (`id`, `lang_id`, `album_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Isaiah Black', NULL, NULL, NULL),
(2, 1, 2, 'Venus Mcclure', NULL, NULL, NULL),
(3, 2, 2, 'Colt Haley', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci,
  `link` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `thumbnail`, `link`, `description`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '<iframe width=\"100%\" height=\"250\" src=\"https://www.youtube.com/embed/lecITZkWqzg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, 1, NULL, '2019-07-29 02:52:42', '2019-07-29 03:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `description`, `parent_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Office', NULL, NULL, 1, 1, '2019-07-29 01:13:30', '2019-07-29 01:13:32');

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

--
-- Dumping data for table `branches_name`
--

INSERT INTO `branches_name` (`id`, `lang_id`, `branch_id`, `name`, `created_at`, `updated_at`) VALUES
(5, 1, 3, 'Office', NULL, NULL),
(6, 2, 3, 'Office', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `category_post_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `description`, `category_post_count`, `created_at`, `updated_at`) VALUES
(3, NULL, 'सूचना', '', NULL, 0, '2019-07-29 01:38:25', '2019-07-29 01:38:25'),
(4, NULL, 'प्रेस बिज्ञप्ति', 'b', NULL, 0, '2019-07-29 01:38:37', '2019-07-29 01:38:37'),
(5, NULL, 'समाचार', '', NULL, 0, '2019-07-29 01:38:47', '2019-07-29 01:38:47'),
(6, NULL, 'बोलपत्र', 'bl', NULL, 0, '2019-07-29 01:38:56', '2019-07-29 01:38:56');

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
  `post_unique_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `download_count` int(11) NOT NULL DEFAULT '0',
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
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `status`, `sort_order`, `default`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'English', 'en', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Nepali', 'np', 1, NULL, NULL, NULL, '2019-07-16 19:50:18', '2019-07-16 19:50:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `link_unique_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `links` (`id`, `lang_id`, `link_unique_id`, `icon`, `color`, `name`, `url`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '1_5d2a33a0710ae', 'fa-adjust', '#00ff80', 'Isaiah Black', 'https://www.vyfujefuli.info', 100, 1, NULL, '2019-07-30 20:01:57'),
(2, 2, '1_5d2a33a0710ae', 'fa-adjust', '#00ff80', 'Leigh Noble', 'https://www.vyfujefuli.info', 100, 1, '2019-07-17 17:44:22', '2019-07-30 20:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `location`, `type`, `order`, `parent_id`, `url`, `route`, `parameter`, `target`, `category_id`, `post_unique_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Building', NULL, 'Page', '2', NULL, '/page/1_5d2a0fbe348b9', '\'site.pages\', [\'id\' => 1_5d2a0fbe348b9]', '1_5d2a0fbe348b9', '_self', NULL, '1_5d2a0fbe348b9', 1, '2019-07-17 18:01:52', '2019-07-29 03:11:17'),
(2, 'River Training', NULL, 'Page', '1', NULL, '/page/1_5d2a0fbe348b9', '\'site.pages\', [\'id\' => 1_5d2a0fbe348b9]', '1_5d2a0fbe348b9', '_self', NULL, '1_5d2a0fbe348b9', 1, '2019-07-17 18:02:13', '2019-07-28 16:53:17');

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
(1, 1, 1, 'Staff', NULL, NULL),
(2, 1, 2, 'Staff NP', NULL, NULL),
(3, 2, 1, 'Gallery', NULL, NULL),
(4, 2, 2, 'Home NP', NULL, NULL);

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
(3, '2018_12_21_044212_create_languages_table', 1),
(4, '2019_02_13_160705_create_categories_table', 1),
(5, '2019_02_14_135152_create_posts_table', 1),
(6, '2019_03_03_112300_create_files_table', 1),
(7, '2019_03_15_115637_create_menus_table', 1),
(8, '2019_03_29_125542_create_settings_table', 1),
(9, '2019_04_03_122850_create_sliders_table', 1),
(10, '2019_04_15_165315_create_trackers_table', 1),
(11, '2019_04_17_165041_add_login_fields_to_users_table', 1),
(12, '2019_04_25_171413_create_branches_table', 1),
(13, '2019_04_28_113823_create_contacts_table', 1),
(14, '2019_04_28_151459_create_staff_table', 1),
(15, '2019_05_01_172211_create_links_table', 1),
(16, '2019_05_02_120242_create_albums_table', 1),
(17, '2019_05_02_120317_create_galleries_table', 1),
(19, '2019_07_10_230104_create_blogs_table', 2);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `post_unique_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_no` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `type`, `user_id`, `category_id`, `lang_id`, `post_unique_id`, `title`, `slug`, `thumbnail`, `content`, `excerpt`, `status`, `featured`, `tag`, `author`, `url`, `visit_no`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'page', 1, NULL, 1, '1_5d2a0fbe348b9', 'jfjfjf', 'jfjfjf', NULL, '<p>sadfghjk</p>', 'erfgthjk', 1, NULL, 'werftgjk', NULL, NULL, 0, '2019-07-13 17:07:10', '2019-07-29 02:13:06', '2019-07-29 02:13:06'),
(3, 'page', 1, NULL, 1, '1_5d2a2a4d0dbbd', 'qwerftghj', 'qwerftghj', NULL, '<p>qwertyhuj</p>', 'qwertgyhujk', 0, NULL, 'azsxdfcvgbhnjm', NULL, NULL, 0, '2019-07-13 19:00:29', '2019-07-29 02:13:36', '2019-07-29 02:13:36'),
(6, 'page', 1, NULL, 2, '1_5d2a0fbe348b9', 'jfjfjf', 'jfjfjf', NULL, '<p>&lt;input type=&quot;hidden&quot; name=&quot;&lt;?=$name?&gt;&quot; value=0&gt;</p>\r\n\r\n<p>&lt;input type=&quot;checkbox&quot; name=&quot;&lt;?=$name?&gt;&quot; value=1 &lt;?php if($checked == 1){ echo &quot;checked&quot;; }?&gt;&gt;</p>', NULL, 1, NULL, 'werftgjk', NULL, NULL, 11, '2019-07-17 17:44:05', '2019-07-29 02:13:06', '2019-07-29 02:13:06'),
(7, 'post', 1, 3, 1, '1_5d3e5448d5f9d', 'Et saepe commodo tem', 'et-saepe-commodo-tem', '/upload_file/images/post/1564365896_200681987_1563694349_835016096_logo_np_with white map.png', '<p>Et saepe commodo tem</p>', 'Dolorem qui fugit a', 1, NULL, 'Sequi quisquam ut do', NULL, NULL, 0, '2019-07-29 02:04:56', NULL, NULL),
(8, 'post', 1, 3, 2, '1_5d3e5448d5f9d', 'Et incididunt eu rer', 'et-incididunt-eu-rer', '/upload_file/images/post/1564365896_200681987_1563694349_835016096_logo_np_with white map.png', '<p>Et incididunt eu rer</p>', 'Illo rerum eaque con', 1, NULL, 'Sequi quisquam ut do', NULL, NULL, 0, '2019-07-29 02:04:56', NULL, NULL),
(9, 'post', 1, 3, 1, '1_5d3e55a75a257', 'Sit nobis enim quam', 'sit-nobis-enim-quam', '/upload_file/images/post/1564366247_1281862317_1563694349_835016096_logo_np_with white map.png', '<p>Sit nobis enim quam</p>', 'Alias dolores duis v', 1, NULL, 'Ut reprehenderit asp', NULL, NULL, 0, '2019-07-29 02:10:47', NULL, NULL),
(10, 'post', 1, 3, 2, '1_5d3e55a75a257', 'Obcaecati at nemo ve', 'obcaecati-at-nemo-ve', '/upload_file/images/post/1564366247_1281862317_1563694349_835016096_logo_np_with white map.png', '<p>Obcaecati at nemo ve</p>', 'Quod ut aut iusto mo', 1, NULL, 'Ut reprehenderit asp', NULL, NULL, 0, '2019-07-29 02:10:47', NULL, NULL),
(11, 'page', 1, NULL, 1, '1_5d3e5689aef01', 'Lorem Ipsum', 'lorem-ipsum', '/upload_file/images/post/1564513433_1962398633_pexels-photo-1531660.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id lectus sit amet velit vestibulum accumsan id at justo. Pellentesque vel libero aliquet, elementum lacus sit amet, efficitur urna. Donec eros lorem, volutpat eu tellus quis, ultricies commodo tortor. Maecenas enim erat, blandit eu bibendum ut, tristique ut velit. Phasellus semper pretium placerat. Nunc vitae tellus luctus, eleifend ligula sit amet, sollicitudin elit. In mollis velit ut velit placerat rhoncus. Maecenas nec augue eu lorem volutpat accumsan vitae quis lorem. Pellentesque sagittis a ex eget maximus. Mauris ac felis augue. Donec consequat lorem ligula, id varius mi molestie dapibus. Nam tristique dapibus dolor. Aliquam placerat volutpat velit, id interdum neque accumsan a. Duis et elit volutpat, dignissim est sit amet, ultrices leo. Sed porttitor eros eget turpis suscipit dignissim.</p>\r\n\r\n<p>Fusce vestibulum commodo arcu tincidunt dignissim. Morbi non consectetur diam. Vivamus dictum urna ut porta suscipit. Phasellus fringilla tincidunt diam at finibus. In nisl purus, venenatis nec cursus non, pellentesque eu tortor. Phasellus mi eros, iaculis nec pretium a, porta ut neque. Donec luctus augue orci. Maecenas rutrum vitae dolor nec mattis. Integer elementum velit at diam ornare pellentesque. Phasellus lorem eros, bibendum nec aliquet id, ornare vel purus.</p>\r\n\r\n<p>Ut et justo lorem. Nullam semper, urna sed facilisis volutpat, erat arcu mattis mi, ut vestibulum massa nisl sed mauris. Suspendisse finibus arcu a tincidunt imperdiet. Etiam et leo id metus consequat ullamcorper. Etiam imperdiet elit finibus euismod aliquam. Fusce aliquet quam quis purus bibendum hendrerit sit amet at diam. Nunc iaculis, purus id varius tincidunt, arcu purus placerat nisl, at viverra dolor turpis a leo. Fusce fermentum mattis lorem, at pharetra ipsum commodo non. Nullam quam mi, lacinia ut sollicitudin sit amet, feugiat quis augue. In nec pharetra purus. Nam efficitur maximus sagittis.</p>', NULL, 1, NULL, 'About Us', NULL, NULL, 37, '2019-07-29 02:14:33', '2019-07-30 20:07:26', NULL),
(12, 'page', 1, NULL, 2, '1_5d3e5689aef01', 'नेपाली डमी लेखाई', 'l-lii', '/upload_file/images/post/1564513433_1962398633_pexels-photo-1531660.jpeg', '<p style=\"text-align:justify\">क्यारेक्टर लोरेम मुद्रण र लोरेम मुद्रण लोरेम मुद्रण लोरेम एक . र एप्सम उद्योगको सरल क्यारेक्टर हो। र योजना लोरेम डमी. हो। लोरेम योजना एक सरल लोरेम र डमी लोरेम मुद्रण एप्सम. र एक क्यारेक्टर डमी र क्यारेक्टर एप्सम. एप्सम एप्सम र एक लोरेम योजना लोरेम सरल लोरेम डमी मुद्रण डमी मुद्रण हो। एक एप्सम एक . एप्सम एप्सम डमी एक एप्सम एप्सम हो। एप्सम मुद्रण उद्योगको क्यारेक्टर. डमी मुद्रण पाठ एप्सम डमी पाठ एक क्यारेक्टर हो।. योजना एप्सम लोरेम सरल पाठ क्यारेक्टर र योजना . एप्सम योजना पाठ र लोरेम एप्सम डमी एप्सम एक लोरेम हो। उद्योगको. हो। उद्योगको लोरेम एक एप्सम योजना र पाठ मुद्रण डमी एप्सम पाठ लोरेम.</p>\r\n\r\n<p style=\"text-align:justify\">डमी मुद्रण सरल उद्योगको र डमी हो। लोरेम एप्सम उद्योगको एक एप्सम उद्योगको लोरेम हो। सरल डमी एक हो। सरल योजना क्यारेक्टर उद्योगको. योजना एक र हो। पाठ हो। योजना एक. हो। क्यारेक्टर लोरेम क्यारेक्टर एप्सम एक योजना उद्योगको मुद्रण हो। पाठ. पाठ डमी एप्सम योजना एप्सम लोरेम योजना एक योजना हो। सरल योजना हो। डमी क्यारेक्टर हो। पाठ. सरल उद्योगको डमी हो। लोरेम मुद्रण एप्सम. सरल लोरेम एप्सम हो। सरल डमी क्यारेक्टर सरल उद्योगको मुद्रण हो।. क्यारेक्टर उद्योगको लोरेम मुद्रण सरल र पाठ एप्सम एक डमी लोरेम क्यारेक्टर मुद्रण एक लोरेम र योजना पाठ एप्सम एक एप्सम .</p>\r\n\r\n<p style=\"text-align:justify\">एप्सम पाठ र हो। मुद्रण एप्सम मुद्रण लोरेम योजना क्यारेक्टर पाठ हो। एप्सम एक. सरल योजना लोरेम योजना मुद्रण एप्सम लोरेम डमी एप्सम हो। लोरेम सरल मुद्रण लोरेम योजना र डमी क्यारेक्टर. उद्योगको डमी सरल योजना हो। लोरेम उद्योगको र . क्यारेक्टर क्यारेक्टर लोरेम मुद्रण हो। क्यारेक्टर उद्योगको एक लोरेम एक लोरेम. लोरेम र हो। मुद्रण लोरेम एक. डमी एप्सम एक एप्सम एक उद्योगको डमी हो। एक योजना र मुद्रण डमी पाठ लोरेम एप्सम क्यारेक्टर एक एप्सम योजना उद्योगको. एक क्यारेक्टर सरल उद्योगको एप्सम डमी योजना लोरेम क्यारेक्टर उद्योगको हो। एप्सम एक र योजना क्यारेक्टर लोरेम डमी योजना उद्योगको क्यारेक्टर हो। लोरेम. सरल योजना सरल डमी हो। पाठ उद्योगको क्यारेक्टर लोरेम हो। लोरेम क्यारेक्टर सरल एक एप्सम . सरल मुद्रण उद्योगको डमी योजना लोरेम एक डमी योजना लोरेम मुद्रण सरल हो। एप्सम सरल डमी सरल लोरेम. उद्योगको योजना लोरेम क्यारेक्टर र मुद्रण पाठ हो। सरल पाठ .</p>', NULL, 1, NULL, 'About Us', NULL, NULL, 16, '2019-07-29 02:14:33', '2019-07-30 19:07:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_slogan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_description` text COLLATE utf8mb4_unicode_ci,
  `site_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
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
  `contact_map` text COLLATE utf8mb4_unicode_ci,
  `about_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_description` text COLLATE utf8mb4_unicode_ci,
  `about_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_verification` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_tracking` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_mode` tinyint(1) DEFAULT NULL,
  `maintenance_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_msg` text COLLATE utf8mb4_unicode_ci,
  `popup_mode` tinyint(1) DEFAULT NULL,
  `popup_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_msg` text COLLATE utf8mb4_unicode_ci,
  `popup_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_visit` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_slogan`, `site_title`, `site_description`, `site_url`, `meta_keyword`, `logo`, `language`, `social_profile_fb`, `social_profile_twitter`, `social_profile_insta`, `social_profile_youtube`, `social_profile_linkedin`, `contact_title`, `contact_sub_title`, `contact_address_1`, `contact_address_2`, `contact_phone`, `contact_fax`, `contact_mobile`, `contact_email`, `contact_url`, `contact_map`, `about_title`, `about_sub_title`, `about_description`, `about_image`, `google_verification`, `google_tracking`, `maintenance_mode`, `maintenance_title`, `maintenance_msg`, `popup_mode`, `popup_title`, `popup_msg`, `popup_url`, `no_of_visit`, `created_at`, `updated_at`) VALUES
(1, 'GEN', 'Realpath Engineering Consultancy Pvt. Ltd', 'Civil Engineering Service', '<p>dfvgbhnm,.</p>', NULL, 'rfghjmk,.', 'upload_file/images/setting/1564334010_1329900968_1563694349_835016096_logo_np_with white map.png', '1', NULL, NULL, NULL, NULL, NULL, 'Nihil ad qui in sint', 'Rem rerum minim et q', '353 Second Road', 'Impedit maiores qua', '2', NULL, '19', 'debalyvyl@mailinator.net', NULL, 'Dignissimos architec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-28 17:13:30');

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

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'GEN', '/upload_file/images/slider/1563045911_1268005290_architecture-building-castle-402028.jpg', '2019-07-13 19:25:13', '2019-07-13 19:25:13');

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

--
-- Dumping data for table `sliders_name`
--

INSERT INTO `sliders_name` (`id`, `slider_id`, `lang_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Staff', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_unique_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `level` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_unique_id`, `lang_id`, `branch_id`, `name`, `designation`, `description`, `phone`, `email`, `image`, `level`, `order`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(3, '1_5d3e487059bed', 1, 3, 'Micah Snider', 'Quidem vel voluptati', NULL, NULL, NULL, '/upload_file/images/staff/1564362864_1341090771_1563694349_835016096_logo_np_with white map.png', 83, NULL, 1, 1, '2019-07-29 01:14:24', '2019-07-29 01:21:10'),
(4, '1_5d3e487059bed', 2, 3, 'Dennis Nolan', 'Facere qui eveniet', NULL, NULL, NULL, '/upload_file/images/staff/1564362864_1341090771_1563694349_835016096_logo_np_with white map.png', 83, NULL, 1, 1, '2019-07-29 01:14:24', '2019-07-29 01:21:10'),
(5, '1_5d3e4c4623b54', 1, 3, 'Nichole Underwood', 'Hic velit velit eo', NULL, NULL, NULL, '/upload_file/images/staff/1564363846_1491266098_1563694349_835016096_logo_np_with white map.png', 19, NULL, 1, 1, '2019-07-29 01:30:46', NULL),
(6, '1_5d3e4c4623b54', 2, 3, 'Brynn Bauer', 'Laborum nihil nostru', NULL, NULL, NULL, '/upload_file/images/staff/1564363846_1491266098_1563694349_835016096_logo_np_with white map.png', 19, NULL, 1, 1, '2019-07-29 01:30:46', NULL),
(7, '1_5d3e4c5638abc', 1, 3, 'Jaden Walton', 'Amet officiis volup', NULL, NULL, NULL, '/upload_file/images/staff/1564363862_18587504_1563694349_835016096_logo_np_with white map.png', 55, NULL, 1, 1, '2019-07-29 01:31:02', NULL),
(8, '1_5d3e4c5638abc', 2, 3, 'Aspen Moore', 'Nostrud aut voluptas', NULL, NULL, NULL, '/upload_file/images/staff/1564363862_18587504_1563694349_835016096_logo_np_with white map.png', 55, NULL, 1, 1, '2019-07-29 01:31:02', NULL);

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
(1, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-06-27', '00:13:49', '2019-06-26 18:22:03', '2019-06-26 18:28:49'),
(2, NULL, NULL, 14, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-07-02', '23:13:31', '2019-07-02 01:55:36', '2019-07-02 17:28:31'),
(3, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/swap/language/1', '127.0.0.1', '2019-07-02', '23:08:00', '2019-07-02 17:23:00', '2019-07-02 17:23:00'),
(4, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-07-07', '22:18:47', '2019-07-07 16:33:43', '2019-07-07 16:33:47'),
(5, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dcms/login', '127.0.0.1', '2019-07-07', '22:20:26', '2019-07-07 16:35:26', '2019-07-07 16:35:26'),
(6, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/login', '127.0.0.1', '2019-07-07', '22:20:34', '2019-07-07 16:35:34', '2019-07-07 16:35:34'),
(7, NULL, NULL, 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-07-07', '23:44:07', '2019-07-07 16:35:36', '2019-07-07 17:59:07'),
(8, NULL, NULL, 19, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-07-07', '23:58:20', '2019-07-07 16:45:35', '2019-07-07 18:13:20'),
(9, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/category', '127.0.0.1', '2019-07-07', '23:40:30', '2019-07-07 17:49:40', '2019-07-07 17:55:30'),
(10, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/slider', '127.0.0.1', '2019-07-07', '23:34:46', '2019-07-07 17:49:46', '2019-07-07 17:49:46'),
(11, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post/create', '127.0.0.1', '2019-07-07', '23:35:46', '2019-07-07 17:50:46', '2019-07-07 17:50:46'),
(12, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/dashboard/category', '127.0.0.1', '2019-07-07', '23:36:09', '2019-07-07 17:51:09', '2019-07-07 17:51:09'),
(13, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-07-08', '00:08:12', '2019-07-07 18:15:24', '2019-07-07 18:23:12'),
(14, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-07-08', '00:08:10', '2019-07-07 18:20:08', '2019-07-07 18:23:10'),
(15, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/category', '127.0.0.1', '2019-07-08', '00:07:21', '2019-07-07 18:22:21', '2019-07-07 18:22:21'),
(16, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/menu', '127.0.0.1', '2019-07-08', '00:07:37', '2019-07-07 18:22:37', '2019-07-07 18:22:37'),
(17, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/album', '127.0.0.1', '2019-07-08', '00:07:42', '2019-07-07 18:22:42', '2019-07-07 18:22:42'),
(18, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/album/create', '127.0.0.1', '2019-07-08', '00:07:45', '2019-07-07 18:22:45', '2019-07-07 18:22:45'),
(19, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/slider', '127.0.0.1', '2019-07-08', '00:07:57', '2019-07-07 18:22:57', '2019-07-07 18:22:57'),
(20, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/slider/create', '127.0.0.1', '2019-07-08', '00:08:00', '2019-07-07 18:23:00', '2019-07-07 18:23:00'),
(21, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-07-12', '21:29:49', '2019-07-12 15:44:45', '2019-07-12 15:44:49'),
(22, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dcms/login', '127.0.0.1', '2019-07-13', '22:23:01', '2019-07-12 18:40:38', '2019-07-13 16:38:01'),
(23, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/login', '127.0.0.1', '2019-07-13', '22:23:07', '2019-07-12 18:43:47', '2019-07-13 16:38:07'),
(24, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-07-13', '22:23:09', '2019-07-12 18:43:49', '2019-07-13 16:38:09'),
(25, NULL, NULL, 14, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-07-13', '22:49:59', '2019-07-12 18:43:57', '2019-07-13 17:04:59'),
(26, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/', '127.0.0.1', '2019-07-13', '00:36:44', '2019-07-12 18:51:44', '2019-07-12 18:51:44'),
(27, NULL, NULL, 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/category', '127.0.0.1', '2019-07-13', '22:49:55', '2019-07-12 18:51:48', '2019-07-13 17:04:55'),
(28, NULL, NULL, 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/page', '127.0.0.1', '2019-07-13', '22:54:04', '2019-07-12 18:52:20', '2019-07-13 17:09:04'),
(29, NULL, NULL, 35, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post/create', '127.0.0.1', '2019-07-13', '02:24:06', '2019-07-12 18:55:58', '2019-07-12 20:39:06'),
(30, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/dashboard/post', '127.0.0.1', '2019-07-13', '00:42:01', '2019-07-12 18:57:01', '2019-07-12 18:57:01'),
(31, NULL, NULL, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-07-13', '22:22:45', '2019-07-12 19:26:47', '2019-07-13 16:37:45'),
(32, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post/1_5d28d7fd85936/edit', '127.0.0.1', '2019-07-13', '02:32:23', '2019-07-12 20:39:20', '2019-07-12 20:47:23'),
(33, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/category/1/edit', '127.0.0.1', '2019-07-13', '22:41:31', '2019-07-13 16:39:28', '2019-07-13 16:56:31'),
(34, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/page/create', '127.0.0.1', '2019-07-13', '22:54:36', '2019-07-13 17:06:55', '2019-07-13 17:09:36'),
(35, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/dashboard/page', '127.0.0.1', '2019-07-13', '22:52:09', '2019-07-13 17:07:09', '2019-07-13 17:07:09'),
(36, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/page/1_5d2a0fbe348b9/edit', '127.0.0.1', '2019-07-13', '22:52:59', '2019-07-13 17:07:59', '2019-07-13 17:07:59'),
(37, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/page/create', '127.0.0.1', '2019-07-14', '00:44:50', '2019-07-13 18:59:50', '2019-07-13 18:59:50'),
(38, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/dashboard/page', '127.0.0.1', '2019-07-14', '00:45:28', '2019-07-13 19:00:28', '2019-07-13 19:00:28'),
(39, NULL, NULL, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/page', '127.0.0.1', '2019-07-14', '01:01:10', '2019-07-13 19:00:29', '2019-07-13 19:16:10'),
(40, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/page/1_5d2a0fbe348b9/edit', '127.0.0.1', '2019-07-14', '00:54:48', '2019-07-13 19:00:36', '2019-07-13 19:09:48'),
(41, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/page/delete_item', '127.0.0.1', '2019-07-14', '01:00:07', '2019-07-13 19:10:07', '2019-07-13 19:15:07'),
(42, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-07-14', '00:59:58', '2019-07-13 19:14:18', '2019-07-13 19:14:58'),
(43, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post/delete_item', '127.0.0.1', '2019-07-14', '00:59:20', '2019-07-13 19:14:20', '2019-07-13 19:14:20'),
(44, NULL, NULL, 10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/slider', '127.0.0.1', '2019-07-14', '01:10:31', '2019-07-13 19:15:14', '2019-07-13 19:25:31'),
(45, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/slider/create', '127.0.0.1', '2019-07-14', '01:09:55', '2019-07-13 19:19:54', '2019-07-13 19:24:55'),
(46, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/dashboard/slider', '127.0.0.1', '2019-07-14', '01:10:10', '2019-07-13 19:24:54', '2019-07-13 19:25:10'),
(47, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/slider/1/edit', '127.0.0.1', '2019-07-14', '01:10:19', '2019-07-13 19:25:19', '2019-07-13 19:25:19'),
(48, NULL, NULL, 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/link', '127.0.0.1', '2019-07-14', '01:25:24', '2019-07-13 19:25:23', '2019-07-13 19:40:24'),
(49, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/link/create', '127.0.0.1', '2019-07-14', '01:25:10', '2019-07-13 19:31:26', '2019-07-13 19:40:10'),
(50, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/dashboard/link', '127.0.0.1', '2019-07-14', '01:25:16', '2019-07-13 19:40:16', '2019-07-13 19:40:16'),
(51, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/link/1_5d2a33a0710ae/edit', '127.0.0.1', '2019-07-14', '01:25:19', '2019-07-13 19:40:19', '2019-07-13 19:40:19'),
(52, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/album', '127.0.0.1', '2019-07-14', '01:25:43', '2019-07-13 19:40:43', '2019-07-13 19:40:43'),
(53, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-07-15', '23:47:04', '2019-07-15 18:02:01', '2019-07-15 18:02:04'),
(54, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dcms/login', '127.0.0.1', '2019-07-15', '23:47:23', '2019-07-15 18:02:19', '2019-07-15 18:02:23'),
(55, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/login', '127.0.0.1', '2019-07-15', '23:47:31', '2019-07-15 18:02:31', '2019-07-15 18:02:31'),
(56, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-07-15', '23:58:10', '2019-07-15 18:02:40', '2019-07-15 18:13:10'),
(57, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/user', '127.0.0.1', '2019-07-15', '23:48:02', '2019-07-15 18:02:54', '2019-07-15 18:03:02'),
(58, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/user/create', '127.0.0.1', '2019-07-15', '23:48:00', '2019-07-15 18:03:00', '2019-07-15 18:03:00'),
(59, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/tracker', '127.0.0.1', '2019-07-15', '23:51:25', '2019-07-15 18:03:06', '2019-07-15 18:06:25'),
(60, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/language', '127.0.0.1', '2019-07-15', '23:59:11', '2019-07-15 18:13:04', '2019-07-15 18:14:11'),
(61, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-07-15', '23:58:12', '2019-07-15 18:13:12', '2019-07-15 18:13:12'),
(62, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/page', '127.0.0.1', '2019-07-15', '23:58:16', '2019-07-15 18:13:16', '2019-07-15 18:13:16'),
(63, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/slider', '127.0.0.1', '2019-07-15', '23:58:19', '2019-07-15 18:13:19', '2019-07-15 18:13:19'),
(64, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/link', '127.0.0.1', '2019-07-15', '23:58:22', '2019-07-15 18:13:22', '2019-07-15 18:13:22'),
(65, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/album', '127.0.0.1', '2019-07-15', '23:58:25', '2019-07-15 18:13:25', '2019-07-15 18:13:25'),
(66, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/menu', '127.0.0.1', '2019-07-15', '23:58:28', '2019-07-15 18:13:28', '2019-07-15 18:13:28'),
(67, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/branch', '127.0.0.1', '2019-07-15', '23:58:32', '2019-07-15 18:13:32', '2019-07-15 18:13:32'),
(68, NULL, NULL, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/language', '127.0.0.1', '2019-07-16', '00:23:38', '2019-07-15 18:16:11', '2019-07-15 18:38:38'),
(69, NULL, NULL, 10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/language/delete_item', '127.0.0.1', '2019-07-16', '00:21:54', '2019-07-15 18:30:36', '2019-07-15 18:36:54'),
(70, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/language/create', '127.0.0.1', '2019-07-16', '00:23:35', '2019-07-15 18:37:04', '2019-07-15 18:38:35'),
(71, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/language/1/edit', '127.0.0.1', '2019-07-16', '00:23:40', '2019-07-15 18:38:40', '2019-07-15 18:38:40'),
(72, NULL, NULL, 23, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-07-16', '02:16:00', '2019-07-15 18:38:47', '2019-07-15 20:31:00'),
(73, NULL, NULL, 10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/album', '127.0.0.1', '2019-07-16', '01:27:27', '2019-07-15 18:38:51', '2019-07-15 19:42:27'),
(74, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/album/create', '127.0.0.1', '2019-07-16', '01:19:27', '2019-07-15 18:55:28', '2019-07-15 19:34:27'),
(75, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/dashboard/album', '127.0.0.1', '2019-07-16', '00:40:52', '2019-07-15 18:55:52', '2019-07-15 18:55:52'),
(76, NULL, NULL, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/album/1/show', '127.0.0.1', '2019-07-16', '01:31:43', '2019-07-15 19:34:32', '2019-07-15 19:46:43'),
(77, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/album/1/edit', '127.0.0.1', '2019-07-16', '01:19:59', '2019-07-15 19:34:36', '2019-07-15 19:34:59'),
(78, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/album/1/photo/add', '127.0.0.1', '2019-07-16', '01:24:21', '2019-07-15 19:35:09', '2019-07-15 19:39:21'),
(79, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/dashboard/album/1/photo/store', '127.0.0.1', '2019-07-16', '01:23:16', '2019-07-15 19:38:16', '2019-07-15 19:38:16'),
(80, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'DELETE', '/dashboard/gallery/1', '127.0.0.1', '2019-07-16', '01:30:05', '2019-07-15 19:45:05', '2019-07-15 19:45:05'),
(81, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-07-16', '01:50:25', '2019-07-15 19:46:52', '2019-07-15 20:05:25'),
(82, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'DELETE', '/dashboard/post/1_5d28d7fd85936', '127.0.0.1', '2019-07-16', '01:31:58', '2019-07-15 19:46:58', '2019-07-15 19:46:58'),
(83, NULL, NULL, 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dcms/login', '127.0.0.1', '2019-07-16', '01:46:48', '2019-07-15 19:56:36', '2019-07-15 20:01:48'),
(84, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/login', '127.0.0.1', '2019-07-16', '01:46:54', '2019-07-15 19:57:42', '2019-07-15 20:01:54'),
(85, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/logout', '127.0.0.1', '2019-07-16', '01:42:48', '2019-07-15 19:57:48', '2019-07-15 19:57:48'),
(86, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-07-16', '01:42:48', '2019-07-15 19:57:48', '2019-07-15 19:57:48'),
(87, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/slider', '127.0.0.1', '2019-07-16', '01:50:58', '2019-07-15 20:05:58', '2019-07-15 20:05:58'),
(88, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/slider/create', '127.0.0.1', '2019-07-16', '01:51:01', '2019-07-15 20:06:01', '2019-07-15 20:06:01'),
(89, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/user_profile/show', '127.0.0.1', '2019-07-16', '02:19:55', '2019-07-15 20:33:22', '2019-07-15 20:34:55'),
(90, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/user_profile/edit', '127.0.0.1', '2019-07-16', '02:19:25', '2019-07-15 20:34:25', '2019-07-15 20:34:25'),
(91, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/dashboard/user_profile', '127.0.0.1', '2019-07-16', '02:19:34', '2019-07-15 20:34:34', '2019-07-15 20:34:34'),
(92, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-07-16', '23:27:20', '2019-07-16 17:41:30', '2019-07-16 17:42:20'),
(93, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dcms/login', '127.0.0.1', '2019-07-16', '23:27:47', '2019-07-16 17:42:46', '2019-07-16 17:42:47'),
(94, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/login', '127.0.0.1', '2019-07-16', '23:28:39', '2019-07-16 17:43:39', '2019-07-16 17:43:39'),
(95, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-07-16', '23:28:41', '2019-07-16 17:43:41', '2019-07-16 17:43:41'),
(96, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/user_profile/show', '127.0.0.1', '2019-07-16', '23:51:47', '2019-07-16 17:44:36', '2019-07-16 18:06:47'),
(97, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/gallery', '127.0.0.1', '2019-07-16', '23:58:57', '2019-07-16 18:10:03', '2019-07-16 18:13:57'),
(98, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/file', '127.0.0.1', '2019-07-17', '00:13:57', '2019-07-16 18:16:17', '2019-07-16 18:28:57'),
(99, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-07-17', '21:47:07', '2019-07-16 19:00:25', '2019-07-17 16:02:07'),
(100, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dcms/login', '127.0.0.1', '2019-07-17', '21:50:26', '2019-07-16 19:02:17', '2019-07-17 16:05:26'),
(101, NULL, NULL, 25, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-07-17', '23:52:21', '2019-07-16 19:02:19', '2019-07-17 18:07:21'),
(102, NULL, NULL, 28, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/user_profile/show', '127.0.0.1', '2019-07-17', '21:54:19', '2019-07-16 19:02:26', '2019-07-17 16:09:19'),
(103, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/contact', '127.0.0.1', '2019-07-17', '23:30:32', '2019-07-16 19:26:19', '2019-07-17 17:45:32'),
(104, NULL, NULL, 10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/staff', '127.0.0.1', '2019-07-17', '23:30:08', '2019-07-16 19:26:28', '2019-07-17 17:45:08'),
(105, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/link', '127.0.0.1', '2019-07-17', '23:29:22', '2019-07-16 19:40:57', '2019-07-17 17:44:22'),
(106, NULL, NULL, 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-07-17', '23:52:26', '2019-07-16 19:41:00', '2019-07-17 18:07:26'),
(107, NULL, NULL, 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/post/create', '127.0.0.1', '2019-07-17', '23:27:17', '2019-07-16 19:41:04', '2019-07-17 17:42:17'),
(108, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/language', '127.0.0.1', '2019-07-17', '23:17:35', '2019-07-16 19:49:53', '2019-07-17 17:32:35'),
(109, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/language/create', '127.0.0.1', '2019-07-17', '01:34:56', '2019-07-16 19:49:55', '2019-07-16 19:49:56'),
(110, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/language', '127.0.0.1', '2019-07-17', '01:35:17', '2019-07-16 19:50:17', '2019-07-16 19:50:17'),
(111, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/post', '127.0.0.1', '2019-07-17', '01:42:40', '2019-07-16 19:57:40', '2019-07-16 19:57:40'),
(112, NULL, NULL, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/post/1_5d2e2c3484bdc/edit', '127.0.0.1', '2019-07-17', '23:27:31', '2019-07-16 19:57:46', '2019-07-17 17:42:31'),
(113, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/category', '127.0.0.1', '2019-07-17', '23:47:28', '2019-07-16 19:59:32', '2019-07-17 18:02:28'),
(114, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/category/1/edit', '127.0.0.1', '2019-07-17', '01:44:39', '2019-07-16 19:59:39', '2019-07-16 19:59:39'),
(115, NULL, NULL, 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/page', '127.0.0.1', '2019-07-17', '23:59:58', '2019-07-16 19:59:43', '2019-07-17 18:14:58'),
(116, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/page/create', '127.0.0.1', '2019-07-17', '01:46:16', '2019-07-16 20:01:16', '2019-07-16 20:01:16'),
(117, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/page/1_5d2a0fbe348b9/edit', '127.0.0.1', '2019-07-17', '23:28:51', '2019-07-16 20:03:02', '2019-07-17 17:43:51'),
(118, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/slider', '127.0.0.1', '2019-07-17', '23:29:09', '2019-07-16 20:03:18', '2019-07-17 17:44:09'),
(119, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/slider/create', '127.0.0.1', '2019-07-17', '01:48:21', '2019-07-16 20:03:20', '2019-07-16 20:03:21'),
(120, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/link/create', '127.0.0.1', '2019-07-17', '01:48:29', '2019-07-16 20:03:29', '2019-07-16 20:03:29'),
(121, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/album', '127.0.0.1', '2019-07-17', '23:29:47', '2019-07-16 20:03:33', '2019-07-17 17:44:47'),
(122, NULL, NULL, 15, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/menu', '127.0.0.1', '2019-07-17', '23:57:55', '2019-07-16 20:03:40', '2019-07-17 18:12:55'),
(123, NULL, NULL, 13, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/branch', '127.0.0.1', '2019-07-17', '23:58:37', '2019-07-16 20:03:44', '2019-07-17 18:13:37'),
(124, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/branch/create', '127.0.0.1', '2019-07-17', '23:47:35', '2019-07-16 20:03:47', '2019-07-17 18:02:35'),
(125, NULL, NULL, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/staff/create', '127.0.0.1', '2019-07-17', '01:51:10', '2019-07-16 20:03:53', '2019-07-16 20:06:10'),
(126, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/staff', '127.0.0.1', '2019-07-17', '01:51:28', '2019-07-16 20:05:14', '2019-07-16 20:06:28'),
(127, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/branch', '127.0.0.1', '2019-07-17', '23:47:41', '2019-07-16 20:05:36', '2019-07-17 18:02:41'),
(128, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/staff/1_5d2e2e443c6d6/edit', '127.0.0.1', '2019-07-17', '23:30:04', '2019-07-16 20:06:32', '2019-07-17 17:45:04'),
(129, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/login', '127.0.0.1', '2019-07-17', '21:50:33', '2019-07-17 16:05:33', '2019-07-17 16:05:33'),
(130, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/user_profile', '127.0.0.1', '2019-07-17', '21:54:18', '2019-07-17 16:09:18', '2019-07-17 16:09:18'),
(131, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/language/2/edit', '127.0.0.1', '2019-07-17', '23:23:35', '2019-07-17 17:32:40', '2019-07-17 17:38:35'),
(132, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/post/1_5d2e2c3484bdc', '127.0.0.1', '2019-07-17', '23:27:35', '2019-07-17 17:42:28', '2019-07-17 17:42:35'),
(133, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/page/1_5d2a0fbe348b9', '127.0.0.1', '2019-07-17', '23:29:04', '2019-07-17 17:43:50', '2019-07-17 17:44:04'),
(134, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/link/1_5d2a33a0710ae/edit', '127.0.0.1', '2019-07-17', '23:29:15', '2019-07-17 17:44:15', '2019-07-17 17:44:15'),
(135, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/link/1_5d2a33a0710ae', '127.0.0.1', '2019-07-17', '23:29:22', '2019-07-17 17:44:21', '2019-07-17 17:44:22'),
(136, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/album/create', '127.0.0.1', '2019-07-17', '23:29:29', '2019-07-17 17:44:29', '2019-07-17 17:44:29'),
(137, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/album/1/show', '127.0.0.1', '2019-07-17', '23:29:38', '2019-07-17 17:44:38', '2019-07-17 17:44:38'),
(138, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/album/1/edit', '127.0.0.1', '2019-07-17', '23:29:40', '2019-07-17 17:44:40', '2019-07-17 17:44:40'),
(139, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/album/1', '127.0.0.1', '2019-07-17', '23:29:46', '2019-07-17 17:44:46', '2019-07-17 17:44:46'),
(140, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/staff/1_5d2e2e443c6d6', '127.0.0.1', '2019-07-17', '23:30:08', '2019-07-17 17:45:08', '2019-07-17 17:45:08'),
(141, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/setting', '127.0.0.1', '2019-07-17', '23:30:13', '2019-07-17 17:45:13', '2019-07-17 17:45:13'),
(142, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/contact/1', '127.0.0.1', '2019-07-17', '23:30:27', '2019-07-17 17:45:27', '2019-07-17 17:45:27'),
(143, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/social', '127.0.0.1', '2019-07-17', '23:30:38', '2019-07-17 17:45:38', '2019-07-17 17:45:38'),
(144, NULL, NULL, 14, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/menu/order', '127.0.0.1', '2019-07-17', '23:57:58', '2019-07-17 18:01:33', '2019-07-17 18:12:58'),
(145, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/menu/create', '127.0.0.1', '2019-07-17', '23:46:56', '2019-07-17 18:01:34', '2019-07-17 18:01:56'),
(146, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/menu', '127.0.0.1', '2019-07-17', '23:47:13', '2019-07-17 18:01:52', '2019-07-17 18:02:13'),
(147, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/category/order', '127.0.0.1', '2019-07-17', '23:47:29', '2019-07-17 18:02:24', '2019-07-17 18:02:29'),
(148, NULL, NULL, 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/branch/order', '127.0.0.1', '2019-07-17', '23:58:39', '2019-07-17 18:02:34', '2019-07-17 18:13:39'),
(149, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-07-18', '00:03:42', '2019-07-17 18:15:04', '2019-07-17 18:18:42'),
(150, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/slider', '127.0.0.1', '2019-07-18', '00:00:10', '2019-07-17 18:15:10', '2019-07-17 18:15:10'),
(151, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/category', '127.0.0.1', '2019-07-18', '00:01:10', '2019-07-17 18:15:17', '2019-07-17 18:16:10'),
(152, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/category/order', '127.0.0.1', '2019-07-18', '00:01:12', '2019-07-17 18:15:22', '2019-07-17 18:16:12'),
(153, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/page', '127.0.0.1', '2019-07-18', '00:01:15', '2019-07-17 18:16:15', '2019-07-17 18:16:15'),
(154, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/branch', '127.0.0.1', '2019-07-18', '00:02:12', '2019-07-17 18:16:21', '2019-07-17 18:17:12'),
(155, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/branch/order', '127.0.0.1', '2019-07-18', '00:02:14', '2019-07-17 18:16:25', '2019-07-17 18:17:14'),
(156, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/staff', '127.0.0.1', '2019-07-18', '00:02:30', '2019-07-17 18:17:17', '2019-07-17 18:17:30'),
(157, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-07-18', '00:05:18', '2019-07-17 18:17:36', '2019-07-17 18:20:18'),
(158, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/post/create', '127.0.0.1', '2019-07-18', '00:05:12', '2019-07-17 18:20:12', '2019-07-17 18:20:12'),
(159, NULL, NULL, 24, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-07-28', '23:13:29', '2019-07-28 15:41:01', '2019-07-28 17:28:29'),
(160, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/swap/language/2', '127.0.0.1', '2019-07-28', '22:17:55', '2019-07-28 16:32:55', '2019-07-28 16:32:55'),
(161, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dcms/login', '127.0.0.1', '2019-07-28', '22:38:03', '2019-07-28 16:53:03', '2019-07-28 16:53:03'),
(162, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/login', '127.0.0.1', '2019-07-28', '22:38:07', '2019-07-28 16:53:07', '2019-07-28 16:53:07'),
(163, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-07-28', '22:38:09', '2019-07-28 16:53:09', '2019-07-28 16:53:09'),
(164, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/menu', '127.0.0.1', '2019-07-28', '22:38:25', '2019-07-28 16:53:14', '2019-07-28 16:53:25'),
(165, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/menu/order', '127.0.0.1', '2019-07-28', '22:38:26', '2019-07-28 16:53:15', '2019-07-28 16:53:26'),
(166, NULL, NULL, 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/page/1_5d2a0fbe348b9', '127.0.0.1', '2019-07-28', '23:08:43', '2019-07-28 17:04:43', '2019-07-28 17:23:43'),
(167, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/setting', '127.0.0.1', '2019-07-28', '23:09:37', '2019-07-28 17:12:27', '2019-07-28 17:24:37'),
(168, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/setting/1', '127.0.0.1', '2019-07-28', '22:58:29', '2019-07-28 17:13:09', '2019-07-28 17:13:29'),
(169, NULL, NULL, 46, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-07-29', '09:25:25', '2019-07-29 00:57:41', '2019-07-29 03:40:25'),
(170, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dcms/login', '127.0.0.1', '2019-07-29', '06:43:00', '2019-07-29 00:58:00', '2019-07-29 00:58:00'),
(171, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/login', '127.0.0.1', '2019-07-29', '06:43:03', '2019-07-29 00:58:03', '2019-07-29 00:58:03'),
(172, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-07-29', '08:23:34', '2019-07-29 00:58:05', '2019-07-29 02:38:34'),
(173, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/branch', '127.0.0.1', '2019-07-29', '06:58:30', '2019-07-29 01:12:56', '2019-07-29 01:13:30'),
(174, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/branch/order', '127.0.0.1', '2019-07-29', '06:58:32', '2019-07-29 01:12:57', '2019-07-29 01:13:32'),
(175, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'DELETE', '/dashboard/branch/1', '127.0.0.1', '2019-07-29', '06:58:02', '2019-07-29 01:13:00', '2019-07-29 01:13:02'),
(176, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'DELETE', '/dashboard/branch/2', '127.0.0.1', '2019-07-29', '06:58:07', '2019-07-29 01:13:07', '2019-07-29 01:13:07'),
(177, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/branch/create', '127.0.0.1', '2019-07-29', '06:58:10', '2019-07-29 01:13:09', '2019-07-29 01:13:10'),
(178, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/branch', '127.0.0.1', '2019-07-29', '06:58:30', '2019-07-29 01:13:30', '2019-07-29 01:13:30'),
(179, NULL, NULL, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/staff', '127.0.0.1', '2019-07-29', '07:16:02', '2019-07-29 01:13:34', '2019-07-29 01:31:02'),
(180, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/staff/create', '127.0.0.1', '2019-07-29', '07:15:49', '2019-07-29 01:13:36', '2019-07-29 01:30:49'),
(181, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/staff', '127.0.0.1', '2019-07-29', '07:16:02', '2019-07-29 01:14:00', '2019-07-29 01:31:02'),
(182, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/staff/1_5d3e487059bed/edit', '127.0.0.1', '2019-07-29', '07:06:06', '2019-07-29 01:21:06', '2019-07-29 01:21:06'),
(183, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/staff/1_5d3e487059bed', '127.0.0.1', '2019-07-29', '07:06:10', '2019-07-29 01:21:09', '2019-07-29 01:21:10'),
(184, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/category', '127.0.0.1', '2019-07-29', '07:39:20', '2019-07-29 01:37:25', '2019-07-29 01:54:20'),
(185, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/category/order', '127.0.0.1', '2019-07-29', '07:39:22', '2019-07-29 01:37:27', '2019-07-29 01:54:22'),
(186, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'DELETE', '/dashboard/category/2', '127.0.0.1', '2019-07-29', '07:22:30', '2019-07-29 01:37:29', '2019-07-29 01:37:30'),
(187, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'DELETE', '/dashboard/category/1', '127.0.0.1', '2019-07-29', '07:22:33', '2019-07-29 01:37:33', '2019-07-29 01:37:33'),
(188, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/category', '127.0.0.1', '2019-07-29', '07:23:56', '2019-07-29 01:38:24', '2019-07-29 01:38:56'),
(189, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-07-29', '07:55:47', '2019-07-29 02:03:39', '2019-07-29 02:10:47'),
(190, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/post/create', '127.0.0.1', '2019-07-29', '07:55:18', '2019-07-29 02:03:41', '2019-07-29 02:10:18'),
(191, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/post', '127.0.0.1', '2019-07-29', '07:55:47', '2019-07-29 02:04:56', '2019-07-29 02:10:47'),
(192, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/page', '127.0.0.1', '2019-07-29', '08:20:28', '2019-07-29 02:13:00', '2019-07-29 02:35:28'),
(193, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'DELETE', '/dashboard/page/1_5d2a0fbe348b9', '127.0.0.1', '2019-07-29', '07:58:05', '2019-07-29 02:13:05', '2019-07-29 02:13:05'),
(194, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'DELETE', '/dashboard/page/1_5d2a2a4d0dbbd', '127.0.0.1', '2019-07-29', '07:58:36', '2019-07-29 02:13:36', '2019-07-29 02:13:36'),
(195, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/page/create', '127.0.0.1', '2019-07-29', '07:59:19', '2019-07-29 02:13:42', '2019-07-29 02:14:19'),
(196, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/page', '127.0.0.1', '2019-07-29', '07:59:33', '2019-07-29 02:14:19', '2019-07-29 02:14:33');
INSERT INTO `trackers` (`id`, `user_id`, `user_name`, `hits`, `user_agent`, `request_method`, `request_uri`, `visitor`, `visit_date`, `visit_time`, `created_at`, `updated_at`) VALUES
(197, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/page/1_5d3e5689aef01/edit', '127.0.0.1', '2019-07-29', '08:04:41', '2019-07-29 02:19:41', '2019-07-29 02:19:41'),
(198, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/page/1_5d3e5689aef01', '127.0.0.1', '2019-07-29', '08:04:48', '2019-07-29 02:19:48', '2019-07-29 02:19:48'),
(199, NULL, NULL, 16, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/blog', '127.0.0.1', '2019-07-29', '08:54:20', '2019-07-29 02:40:29', '2019-07-29 03:09:20'),
(200, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/blog/create', '127.0.0.1', '2019-07-29', '08:36:26', '2019-07-29 02:46:29', '2019-07-29 02:51:26'),
(201, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/blog', '127.0.0.1', '2019-07-29', '08:37:42', '2019-07-29 02:51:25', '2019-07-29 02:52:42'),
(202, NULL, NULL, 14, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/blog/1/edit', '127.0.0.1', '2019-07-29', '08:53:56', '2019-07-29 02:59:19', '2019-07-29 03:08:56'),
(203, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/blog/1', '127.0.0.1', '2019-07-29', '08:54:20', '2019-07-29 03:07:49', '2019-07-29 03:09:20'),
(204, NULL, NULL, 14, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/page/1_5d3e5689aef01', '127.0.0.1', '2019-07-29', '09:25:20', '2019-07-29 03:11:02', '2019-07-29 03:40:20'),
(205, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/menu', '127.0.0.1', '2019-07-29', '08:56:14', '2019-07-29 03:11:14', '2019-07-29 03:11:14'),
(206, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/menu/order', '127.0.0.1', '2019-07-29', '08:56:17', '2019-07-29 03:11:16', '2019-07-29 03:11:17'),
(207, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/page/1_5d2a0fbe348b9', '127.0.0.1', '2019-07-29', '08:56:25', '2019-07-29 03:11:21', '2019-07-29 03:11:25'),
(208, NULL, NULL, 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-07-30', '23:22:42', '2019-07-30 17:16:51', '2019-07-30 17:37:42'),
(209, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dcms/login', '127.0.0.1', '2019-07-30', '23:02:26', '2019-07-30 17:17:25', '2019-07-30 17:17:26'),
(210, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/login', '127.0.0.1', '2019-07-30', '23:02:29', '2019-07-30 17:17:29', '2019-07-30 17:17:29'),
(211, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-07-30', '23:02:30', '2019-07-30 17:17:30', '2019-07-30 17:17:30'),
(212, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-07-30', '23:02:44', '2019-07-30 17:17:44', '2019-07-30 17:17:44'),
(213, NULL, NULL, 22, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-07-31', '01:52:26', '2019-07-30 18:23:11', '2019-07-30 20:07:26'),
(214, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/swap/language/2', '127.0.0.1', '2019-07-31', '00:51:51', '2019-07-30 18:23:43', '2019-07-30 19:06:51'),
(215, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-07-31', '02:06:20', '2019-07-30 18:25:17', '2019-07-30 20:21:20'),
(216, NULL, NULL, 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/link', '127.0.0.1', '2019-07-31', '02:08:52', '2019-07-30 18:38:58', '2019-07-30 20:23:52'),
(217, NULL, NULL, 15, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/link/create', '127.0.0.1', '2019-07-31', '01:41:45', '2019-07-30 18:39:01', '2019-07-30 19:56:45'),
(218, NULL, NULL, 5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-07-31', '02:07:53', '2019-07-30 18:39:11', '2019-07-30 20:22:53'),
(219, NULL, NULL, 11, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/album', '127.0.0.1', '2019-07-31', '02:09:01', '2019-07-30 18:57:03', '2019-07-30 20:24:01'),
(220, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/album/create', '127.0.0.1', '2019-07-31', '00:43:46', '2019-07-30 18:57:05', '2019-07-30 18:58:46'),
(221, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/album', '127.0.0.1', '2019-07-31', '00:44:27', '2019-07-30 18:59:02', '2019-07-30 18:59:27'),
(222, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/album/2/show', '127.0.0.1', '2019-07-31', '00:44:31', '2019-07-30 18:59:31', '2019-07-30 18:59:31'),
(223, NULL, NULL, 8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/page', '127.0.0.1', '2019-07-31', '02:08:13', '2019-07-30 19:00:50', '2019-07-30 20:23:13'),
(224, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/page/1_5d3e5689aef01/edit', '127.0.0.1', '2019-07-31', '00:48:41', '2019-07-30 19:00:53', '2019-07-30 19:03:41'),
(225, NULL, NULL, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/page/1_5d3e5689aef01', '127.0.0.1', '2019-07-31', '00:48:53', '2019-07-30 19:02:07', '2019-07-30 19:03:53'),
(226, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/album/2/show', '127.0.0.1', '2019-07-31', '00:50:17', '2019-07-30 19:05:17', '2019-07-30 19:05:17'),
(227, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/swap/language/1', '127.0.0.1', '2019-07-31', '00:51:43', '2019-07-30 19:06:43', '2019-07-30 19:06:43'),
(228, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/swap/language/1', '127.0.0.1', '2019-07-31', '01:29:02', '2019-07-30 19:44:02', '2019-07-30 19:44:02'),
(229, NULL, NULL, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/link/1_5d2a33a0710ae/edit', '127.0.0.1', '2019-07-31', '01:53:36', '2019-07-30 20:00:14', '2019-07-30 20:08:36'),
(230, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/link/1_5d2a33a0710ae', '127.0.0.1', '2019-07-31', '01:46:57', '2019-07-30 20:01:57', '2019-07-30 20:01:57'),
(231, NULL, NULL, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/category', '127.0.0.1', '2019-07-31', '02:14:47', '2019-07-30 20:08:58', '2019-07-30 20:29:47'),
(232, NULL, NULL, 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/category/order', '127.0.0.1', '2019-07-31', '02:14:49', '2019-07-30 20:09:00', '2019-07-30 20:29:49'),
(233, NULL, NULL, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/album/1/show', '127.0.0.1', '2019-07-31', '02:06:12', '2019-07-30 20:13:14', '2019-07-30 20:21:12'),
(234, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/slider', '127.0.0.1', '2019-07-31', '02:08:35', '2019-07-30 20:23:23', '2019-07-30 20:23:35'),
(235, NULL, NULL, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/blog', '127.0.0.1', '2019-07-31', '02:09:22', '2019-07-30 20:24:05', '2019-07-30 20:24:22'),
(236, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/menu', '127.0.0.1', '2019-07-31', '02:09:28', '2019-07-30 20:24:28', '2019-07-30 20:24:28'),
(237, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/menu/order', '127.0.0.1', '2019-07-31', '02:09:30', '2019-07-30 20:24:29', '2019-07-30 20:24:30'),
(238, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'GET', '/dashboard/branch', '127.0.0.1', '2019-07-31', '02:09:35', '2019-07-30 20:24:35', '2019-07-30 20:24:35'),
(239, NULL, NULL, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'POST', '/dashboard/branch/order', '127.0.0.1', '2019-07-31', '02:09:38', '2019-07-30 20:24:38', '2019-07-30 20:24:38');

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
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forgotten_password_time` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `username`, `avatar`, `phone`, `role`, `forgotten_password_time`, `status`, `created_at`, `updated_at`, `last_login_at`, `last_login_ip`) VALUES
(1, 'Lochan 1233', 'Krishnashrestha49@gmail.com', NULL, '$2y$10$W2hxA3snDhLylma6j220NOKLla5rFfBbQk0/BbmigrTMgJ5Y6k22K', 'BkSjACnDaXxzZazgBpT0cXAXgJTq731M8YliZePqtzboifVN2FcatP8bKcuh', NULL, '/upload_file/images/profile/1563222874_2094344766_WWW.YTS.AG.jpg', NULL, 'super-admin', NULL, 1, '2019-06-26 18:04:45', '2019-07-30 17:17:30', '2019-07-30 23:02:30', '127.0.0.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `albums_name`
--
ALTER TABLE `albums_name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_name_album_id_foreign` (`album_id`),
  ADD KEY `albums_name_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branches_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `branches_name`
--
ALTER TABLE `branches_name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branches_name_lang_id_foreign` (`lang_id`),
  ADD KEY `branches_name_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_lang_id_foreign` (`lang_id`);

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
  ADD UNIQUE KEY `users_username_unique` (`username`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `branches_name`
--
ALTER TABLE `branches_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus_name`
--
ALTER TABLE `menus_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders_name`
--
ALTER TABLE `sliders_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `trackers`
--
ALTER TABLE `trackers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums_name`
--
ALTER TABLE `albums_name`
  ADD CONSTRAINT `albums_name_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `albums_name_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `branches_name`
--
ALTER TABLE `branches_name`
  ADD CONSTRAINT `branches_name_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `branches_name_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
