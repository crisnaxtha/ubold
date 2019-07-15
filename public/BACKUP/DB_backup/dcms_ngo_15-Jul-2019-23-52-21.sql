CREATE TABLE `albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `cover_image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `albums_name` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` int(10) unsigned NOT NULL,
  `album_id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `albums_name_album_id_foreign` (`album_id`),
  KEY `albums_name_lang_id_foreign` (`lang_id`),
  CONSTRAINT `albums_name_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE,
  CONSTRAINT `albums_name_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `branches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `branches_parent_id_foreign` (`parent_id`),
  CONSTRAINT `branches_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `branches_name` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` int(10) unsigned NOT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `branches_name_lang_id_foreign` (`lang_id`),
  KEY `branches_name_branch_id_foreign` (`branch_id`),
  CONSTRAINT `branches_name_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  CONSTRAINT `branches_name_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `category_post_count` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_unique_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `download_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_album_id_foreign` (`album_id`),
  CONSTRAINT `galleries_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `default` int(11) DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` int(10) unsigned NOT NULL,
  `link_unique_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `links_lang_id_foreign` (`lang_id`),
  CONSTRAINT `links_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menus_parent_id_foreign` (`parent_id`),
  CONSTRAINT `menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `menus_name` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `lang_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menus_name_menu_id_foreign` (`menu_id`),
  KEY `menus_name_lang_id_foreign` (`lang_id`),
  CONSTRAINT `menus_name_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `menus_name_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `lang_id` int(10) unsigned NOT NULL,
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
  `visit_no` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_category_id_foreign` (`category_id`),
  KEY `posts_user_id_foreign` (`user_id`),
  KEY `posts_lang_id_foreign` (`lang_id`),
  CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `sliders_name` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slider_id` int(10) unsigned NOT NULL,
  `lang_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sliders_name_slider_id_foreign` (`slider_id`),
  KEY `sliders_name_lang_id_foreign` (`lang_id`),
  CONSTRAINT `sliders_name_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sliders_name_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `staff` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `staff_unique_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_id` int(10) unsigned NOT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `level` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_lang_id_foreign` (`lang_id`),
  KEY `staff_branch_id_foreign` (`branch_id`),
  CONSTRAINT `staff_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  CONSTRAINT `staff_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `trackers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_date` date DEFAULT NULL,
  `visit_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 
 
 


 


 


 


INSERT INTO `categories` ( `id`, `parent_id`, `name`, `slug`, `description`, `category_post_count`, `created_at`, `updated_at`) VALUES 
('1', '0', 'Uncategorized', 'uncategoriezed', '', '0', '2019-06-26 23:49:45', '2019-06-26 23:49:45'), 
('2', '', 'This is for test', 'this-is-for-test', '', '0', '2019-07-07 23:36:10', '2019-07-07 23:36:10');  


 


 


 


INSERT INTO `languages` ( `id`, `name`, `code`, `status`, `sort_order`, `default`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES 
('1', 'English', 'en', '1', '', '', '', '', '', '');  


INSERT INTO `links` ( `id`, `lang_id`, `link_unique_id`, `name`, `url`, `order`, `status`, `created_at`, `updated_at`) VALUES 
('1', '1', '1_5d2a33a0710ae', 'Isaiah Black', 'https://www.vyfujefuli.info', '100', '0', '', '');  


 


 


INSERT INTO `migrations` ( `id`, `migration`, `batch`) VALUES 
('1', '2014_10_12_000000_create_users_table', '1'), 
('2', '2014_10_12_100000_create_password_resets_table', '1'), 
('3', '2018_12_21_044212_create_languages_table', '1'), 
('4', '2019_02_13_160705_create_categories_table', '1'), 
('5', '2019_02_14_135152_create_posts_table', '1'), 
('6', '2019_03_03_112300_create_files_table', '1'), 
('7', '2019_03_15_115637_create_menus_table', '1'), 
('8', '2019_03_29_125542_create_settings_table', '1'), 
('9', '2019_04_03_122850_create_sliders_table', '1'), 
('10', '2019_04_15_165315_create_trackers_table', '1'), 
('11', '2019_04_17_165041_add_login_fields_to_users_table', '1'), 
('12', '2019_04_25_171413_create_branches_table', '1'), 
('13', '2019_04_28_113823_create_contacts_table', '1'), 
('14', '2019_04_28_151459_create_staff_table', '1'), 
('15', '2019_05_01_172211_create_links_table', '1'), 
('16', '2019_05_02_120242_create_albums_table', '1'), 
('17', '2019_05_02_120317_create_galleries_table', '1');  


 


INSERT INTO `posts` ( `id`, `type`, `user_id`, `category_id`, `lang_id`, `post_unique_id`, `title`, `slug`, `thumbnail`, `content`, `excerpt`, `status`, `featured`, `tag`, `author`, `url`, `visit_no`, `created_at`, `updated_at`, `deleted_at`) VALUES 
('1', 'post', '1', '1', '1', '1_5d28d7fd85936', 'jfjfjf', 'jfjfjf', '', '<p>jfjfjfj</p>', '', '0', '', 'dddd', '', '', '0', '2019-07-13 00:42:01', '', ''), 
('2', 'page', '1', '', '1', '1_5d2a0fbe348b9', 'jfjfjf', 'jfjfjf', '', '<p>sadfghjk</p>', 'erfgthjk', '0', '', 'werftgjk', '', '', '0', '2019-07-13 22:52:10', '', ''), 
('3', 'page', '1', '', '1', '1_5d2a2a4d0dbbd', 'qwerftghj', 'qwerftghj', '', '<p>qwertyhuj</p>', 'qwertgyhujk', '0', '', 'azsxdfcvgbhnjm', '', '', '0', '2019-07-14 00:45:29', '', '');  


INSERT INTO `settings` ( `id`, `site_name`, `site_slogan`, `site_title`, `site_description`, `site_url`, `meta_keyword`, `logo`, `language`, `social_profile_fb`, `social_profile_twitter`, `social_profile_insta`, `social_profile_youtube`, `social_profile_linkedin`, `contact_title`, `contact_sub_title`, `contact_address_1`, `contact_address_2`, `contact_phone`, `contact_fax`, `contact_mobile`, `contact_email`, `contact_url`, `contact_map`, `about_title`, `about_sub_title`, `about_description`, `about_image`, `google_verification`, `google_tracking`, `maintenance_mode`, `maintenance_title`, `maintenance_msg`, `popup_mode`, `popup_title`, `popup_msg`, `popup_url`, `no_of_visit`, `created_at`, `updated_at`) VALUES 
('1', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');  


INSERT INTO `sliders` ( `id`, `name`, `image`, `created_at`, `updated_at`) VALUES 
('1', 'GEN', '/upload_file/images/slider/1563045911_1268005290_architecture-building-castle-402028.jpg', '2019-07-14 01:10:13', '2019-07-14 01:10:13');  


INSERT INTO `sliders_name` ( `id`, `slider_id`, `lang_id`, `name`, `created_at`, `updated_at`) VALUES 
('1', '1', '1', 'Staff', '', '');  


 


INSERT INTO `trackers` ( `id`, `user_id`, `user_name`, `hits`, `user_agent`, `request_method`, `request_uri`, `visitor`, `visit_date`, `visit_time`, `created_at`, `updated_at`) VALUES 
('1', '', '', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-06-27', '00:13:49', '2019-06-27 00:07:03', '2019-06-27 00:13:49'), 
('2', '', '', '14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-07-02', '23:13:31', '2019-07-02 07:40:36', '2019-07-02 23:13:31'), 
('3', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/swap/language/1', '127.0.0.1', '2019-07-02', '23:08:00', '2019-07-02 23:08:00', '2019-07-02 23:08:00'), 
('4', '', '', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-07-07', '22:18:47', '2019-07-07 22:18:43', '2019-07-07 22:18:47'), 
('5', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dcms/login', '127.0.0.1', '2019-07-07', '22:20:26', '2019-07-07 22:20:26', '2019-07-07 22:20:26'), 
('6', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/login', '127.0.0.1', '2019-07-07', '22:20:34', '2019-07-07 22:20:34', '2019-07-07 22:20:34'), 
('7', '', '', '12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-07-07', '23:44:07', '2019-07-07 22:20:36', '2019-07-07 23:44:07'), 
('8', '', '', '19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-07-07', '23:58:20', '2019-07-07 22:30:35', '2019-07-07 23:58:20'), 
('9', '', '', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/category', '127.0.0.1', '2019-07-07', '23:40:30', '2019-07-07 23:34:40', '2019-07-07 23:40:30'), 
('10', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/slider', '127.0.0.1', '2019-07-07', '23:34:46', '2019-07-07 23:34:46', '2019-07-07 23:34:46'), 
('11', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post/create', '127.0.0.1', '2019-07-07', '23:35:46', '2019-07-07 23:35:46', '2019-07-07 23:35:46'), 
('12', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/dashboard/category', '127.0.0.1', '2019-07-07', '23:36:09', '2019-07-07 23:36:09', '2019-07-07 23:36:09'), 
('13', '', '', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-07-08', '00:08:12', '2019-07-08 00:00:24', '2019-07-08 00:08:12'), 
('14', '', '', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-07-08', '00:08:10', '2019-07-08 00:05:08', '2019-07-08 00:08:10'), 
('15', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/category', '127.0.0.1', '2019-07-08', '00:07:21', '2019-07-08 00:07:21', '2019-07-08 00:07:21'), 
('16', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/menu', '127.0.0.1', '2019-07-08', '00:07:37', '2019-07-08 00:07:37', '2019-07-08 00:07:37'), 
('17', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/album', '127.0.0.1', '2019-07-08', '00:07:42', '2019-07-08 00:07:42', '2019-07-08 00:07:42'), 
('18', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/album/create', '127.0.0.1', '2019-07-08', '00:07:45', '2019-07-08 00:07:45', '2019-07-08 00:07:45'), 
('19', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/slider', '127.0.0.1', '2019-07-08', '00:07:57', '2019-07-08 00:07:57', '2019-07-08 00:07:57'), 
('20', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/slider/create', '127.0.0.1', '2019-07-08', '00:08:00', '2019-07-08 00:08:00', '2019-07-08 00:08:00'), 
('21', '', '', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-07-12', '21:29:49', '2019-07-12 21:29:45', '2019-07-12 21:29:49'), 
('22', '', '', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dcms/login', '127.0.0.1', '2019-07-13', '22:23:01', '2019-07-13 00:25:38', '2019-07-13 22:23:01'), 
('23', '', '', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/login', '127.0.0.1', '2019-07-13', '22:23:07', '2019-07-13 00:28:47', '2019-07-13 22:23:07'), 
('24', '', '', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-07-13', '22:23:09', '2019-07-13 00:28:49', '2019-07-13 22:23:09'), 
('25', '', '', '14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-07-13', '22:49:59', '2019-07-13 00:28:57', '2019-07-13 22:49:59'), 
('26', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/', '127.0.0.1', '2019-07-13', '00:36:44', '2019-07-13 00:36:44', '2019-07-13 00:36:44'), 
('27', '', '', '9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/category', '127.0.0.1', '2019-07-13', '22:49:55', '2019-07-13 00:36:48', '2019-07-13 22:49:55'), 
('28', '', '', '9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/page', '127.0.0.1', '2019-07-13', '22:54:04', '2019-07-13 00:37:20', '2019-07-13 22:54:04'), 
('29', '', '', '35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post/create', '127.0.0.1', '2019-07-13', '02:24:06', '2019-07-13 00:40:58', '2019-07-13 02:24:06'), 
('30', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/dashboard/post', '127.0.0.1', '2019-07-13', '00:42:01', '2019-07-13 00:42:01', '2019-07-13 00:42:01'), 
('31', '', '', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-07-13', '22:22:45', '2019-07-13 01:11:47', '2019-07-13 22:22:45'), 
('32', '', '', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post/1_5d28d7fd85936/edit', '127.0.0.1', '2019-07-13', '02:32:23', '2019-07-13 02:24:20', '2019-07-13 02:32:23'), 
('33', '', '', '4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/category/1/edit', '127.0.0.1', '2019-07-13', '22:41:31', '2019-07-13 22:24:28', '2019-07-13 22:41:31'), 
('34', '', '', '4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/page/create', '127.0.0.1', '2019-07-13', '22:54:36', '2019-07-13 22:51:55', '2019-07-13 22:54:36'), 
('35', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/dashboard/page', '127.0.0.1', '2019-07-13', '22:52:09', '2019-07-13 22:52:09', '2019-07-13 22:52:09'), 
('36', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/page/1_5d2a0fbe348b9/edit', '127.0.0.1', '2019-07-13', '22:52:59', '2019-07-13 22:52:59', '2019-07-13 22:52:59'), 
('37', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/page/create', '127.0.0.1', '2019-07-14', '00:44:50', '2019-07-14 00:44:50', '2019-07-14 00:44:50'), 
('38', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/dashboard/page', '127.0.0.1', '2019-07-14', '00:45:28', '2019-07-14 00:45:28', '2019-07-14 00:45:28'), 
('39', '', '', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/page', '127.0.0.1', '2019-07-14', '01:01:10', '2019-07-14 00:45:29', '2019-07-14 01:01:10'), 
('40', '', '', '4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/page/1_5d2a0fbe348b9/edit', '127.0.0.1', '2019-07-14', '00:54:48', '2019-07-14 00:45:36', '2019-07-14 00:54:48'), 
('41', '', '', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/page/delete_item', '127.0.0.1', '2019-07-14', '01:00:07', '2019-07-14 00:55:07', '2019-07-14 01:00:07'), 
('42', '', '', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post', '127.0.0.1', '2019-07-14', '00:59:58', '2019-07-14 00:59:18', '2019-07-14 00:59:58'), 
('43', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/post/delete_item', '127.0.0.1', '2019-07-14', '00:59:20', '2019-07-14 00:59:20', '2019-07-14 00:59:20'), 
('44', '', '', '10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/slider', '127.0.0.1', '2019-07-14', '01:10:31', '2019-07-14 01:00:14', '2019-07-14 01:10:31'), 
('45', '', '', '7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/slider/create', '127.0.0.1', '2019-07-14', '01:09:55', '2019-07-14 01:04:54', '2019-07-14 01:09:55'), 
('46', '', '', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/dashboard/slider', '127.0.0.1', '2019-07-14', '01:10:10', '2019-07-14 01:09:54', '2019-07-14 01:10:10'), 
('47', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/slider/1/edit', '127.0.0.1', '2019-07-14', '01:10:19', '2019-07-14 01:10:19', '2019-07-14 01:10:19'), 
('48', '', '', '9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/link', '127.0.0.1', '2019-07-14', '01:25:24', '2019-07-14 01:10:23', '2019-07-14 01:25:24'), 
('49', '', '', '7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/link/create', '127.0.0.1', '2019-07-14', '01:25:10', '2019-07-14 01:16:26', '2019-07-14 01:25:10'), 
('50', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/dashboard/link', '127.0.0.1', '2019-07-14', '01:25:16', '2019-07-14 01:25:16', '2019-07-14 01:25:16');  


INSERT INTO `trackers` ( `id`, `user_id`, `user_name`, `hits`, `user_agent`, `request_method`, `request_uri`, `visitor`, `visit_date`, `visit_time`, `created_at`, `updated_at`) VALUES 
('51', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/link/1_5d2a33a0710ae/edit', '127.0.0.1', '2019-07-14', '01:25:19', '2019-07-14 01:25:19', '2019-07-14 01:25:19'), 
('52', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/album', '127.0.0.1', '2019-07-14', '01:25:43', '2019-07-14 01:25:43', '2019-07-14 01:25:43'), 
('53', '', '', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/', '127.0.0.1', '2019-07-15', '23:47:04', '2019-07-15 23:47:01', '2019-07-15 23:47:04'), 
('54', '', '', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dcms/login', '127.0.0.1', '2019-07-15', '23:47:23', '2019-07-15 23:47:19', '2019-07-15 23:47:23'), 
('55', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'POST', '/login', '127.0.0.1', '2019-07-15', '23:47:31', '2019-07-15 23:47:31', '2019-07-15 23:47:31'), 
('56', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard', '127.0.0.1', '2019-07-15', '23:47:40', '2019-07-15 23:47:40', '2019-07-15 23:47:40'), 
('57', '', '', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/user', '127.0.0.1', '2019-07-15', '23:48:02', '2019-07-15 23:47:54', '2019-07-15 23:48:02'), 
('58', '', '', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/user/create', '127.0.0.1', '2019-07-15', '23:48:00', '2019-07-15 23:48:00', '2019-07-15 23:48:00'), 
('59', '', '', '4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 'GET', '/dashboard/tracker', '127.0.0.1', '2019-07-15', '23:51:25', '2019-07-15 23:48:06', '2019-07-15 23:51:25');  


INSERT INTO `users` ( `id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `username`, `avatar`, `phone`, `role`, `forgotten_password_time`, `status`, `created_at`, `updated_at`, `last_login_at`, `last_login_ip`) VALUES 
('1', 'Lochan', 'Krishnashrestha49@gmail.com', '', '$2y$10$W2hxA3snDhLylma6j220NOKLla5rFfBbQk0/BbmigrTMgJ5Y6k22K', '', '', '', '', 'super-admin', '', '1', '2019-06-26 23:49:45', '2019-07-15 23:47:39', '2019-07-15 23:47:39', '127.0.0.1'); 