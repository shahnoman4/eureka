-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 05:55 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eureka`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'banner_text1', 'text', 'Banner Text1', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'banner_text2', 'text', 'Banner Text2', 0, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'banner_image', 'image', 'Banner Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'section1_heading', 'text', 'Section1 Heading', 0, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'section1_description', 'text_area', 'Section1 Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(28, 4, 'section2_image', 'image', 'Section2 Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(29, 4, 'section2_heading', 'text', 'Section2 Heading', 0, 1, 1, 1, 1, 1, '{}', 8),
(30, 4, 'section2_description', 'text_area', 'Section2 Description', 0, 1, 1, 1, 1, 1, '{}', 9),
(31, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(32, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(33, 4, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 12),
(34, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(35, 5, 'meta_title', 'text', 'Meta Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(36, 5, 'meta_description', 'text_area', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(37, 5, 'banner_image', 'image', 'Banner Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(38, 5, 'page_heading', 'text', 'Page Heading', 0, 1, 1, 1, 1, 1, '{}', 5),
(39, 5, 'page_description', 'text_area', 'Page Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 0, '{}', 7),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(42, 5, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 0, 1, '{}', 9),
(43, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(44, 6, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(45, 6, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(46, 6, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(47, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(48, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(49, 6, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 0, 1, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2024-05-01 02:11:18', '2024-05-01 02:11:18'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2024-05-01 02:11:18', '2024-05-01 02:11:18'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2024-05-01 02:11:18', '2024-05-01 02:11:18'),
(4, 'homes', 'homes', 'Home', 'Homes', NULL, 'App\\Home', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-05-02 04:26:31', '2024-05-02 04:26:31'),
(5, 'oilgas', 'oilgas', 'Oilga', 'Oilgas', NULL, 'App\\Oilga', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-02 06:57:57', '2024-05-02 07:12:24'),
(6, 'technologies', 'technologies', 'Technology', 'Technologies', NULL, 'App\\Technology', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-05-02 07:17:29', '2024-05-02 07:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` int(10) UNSIGNED NOT NULL,
  `banner_text1` varchar(255) DEFAULT NULL,
  `banner_text2` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `section1_heading` varchar(255) DEFAULT NULL,
  `section1_description` text DEFAULT NULL,
  `section2_image` varchar(255) DEFAULT NULL,
  `section2_heading` varchar(255) DEFAULT NULL,
  `section2_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homes`
--

INSERT INTO `homes` (`id`, `banner_text1`, `banner_text2`, `banner_image`, `section1_heading`, `section1_description`, `section2_image`, `section2_heading`, `section2_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'UNLOCK SUSTAINABLE ENERGY SERVICES', 'FOR A BRIGHTER TOMORROW', 'homes\\May2024\\x90X4DHTpc5gVYf6H615.webp', 'Eureka Mellon is a pioneering company specializing in upstream operations and services within the MENA and GCC regions.', 'Step into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStep into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStepStep into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStep into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStep', 'homes\\May2024\\LWVs4gzdZHEo31edL3Ra.webp', 'Arrival Energy Solutions, Volant Dynasty, and AVS Global Gravity unite to innovate, elevate, and redefine', 'Introducing a dynamic alliance poised to redefine the landscape of energy solutions: Business Partners Arrival Energy Solutions, Volant Dynasty, and AVS Global Gravity. This collaboration represents a convergence of expertise, innovation, and commitment to excellence in the energy sector. With Arrival Energy Solutions leading the charge in sustainable practices, Volant Dynasty driving technological advancements', '2024-05-02 05:09:00', '2024-05-02 05:13:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-05-01 02:11:19', '2024-05-01 02:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2024-05-01 02:11:19', '2024-05-01 02:11:19', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2024-05-01 02:11:19', '2024-05-02 04:29:05', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2024-05-01 02:11:19', '2024-05-01 02:11:19', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2024-05-01 02:11:19', '2024-05-01 02:11:19', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2024-05-01 02:11:19', '2024-05-02 04:29:05', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2024-05-01 02:11:19', '2024-05-02 04:29:05', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2024-05-01 02:11:19', '2024-05-02 04:29:05', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2024-05-01 02:11:19', '2024-05-02 04:29:05', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2024-05-01 02:11:19', '2024-05-02 04:29:05', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2024-05-01 02:11:19', '2024-05-02 04:29:05', 'voyager.settings.index', NULL),
(11, 1, 'Homes', '', '_self', NULL, NULL, 12, 1, '2024-05-02 04:26:31', '2024-05-02 07:13:10', 'voyager.homes.index', NULL),
(12, 1, 'Manage Pages', '', '_self', NULL, '#000000', NULL, 7, '2024-05-02 04:28:54', '2024-05-02 04:29:05', NULL, ''),
(13, 1, 'Oilgas', '', '_self', NULL, NULL, 12, 2, '2024-05-02 06:57:57', '2024-05-02 07:13:10', 'voyager.oilgas.index', NULL),
(14, 1, 'Technologies', '', '_self', NULL, NULL, NULL, 8, '2024-05-02 07:17:29', '2024-05-02 07:17:29', 'voyager.technologies.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oilgas`
--

CREATE TABLE `oilgas` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `page_heading` varchar(255) DEFAULT NULL,
  `page_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oilgas`
--

INSERT INTO `oilgas` (`id`, `meta_title`, `meta_description`, `banner_image`, `page_heading`, `page_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Eureka Mellon', 'Eureka Mellon', 'oilgas\\May2024\\2gr25gbwyBU7KwaBFOp5.webp', 'Drilling Technologies', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', '2024-05-02 07:00:31', '2024-05-02 07:00:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(2, 'browse_bread', NULL, '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(3, 'browse_database', NULL, '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(4, 'browse_media', NULL, '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(5, 'browse_compass', NULL, '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(6, 'browse_menus', 'menus', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(7, 'read_menus', 'menus', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(8, 'edit_menus', 'menus', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(9, 'add_menus', 'menus', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(10, 'delete_menus', 'menus', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(11, 'browse_roles', 'roles', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(12, 'read_roles', 'roles', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(13, 'edit_roles', 'roles', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(14, 'add_roles', 'roles', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(15, 'delete_roles', 'roles', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(16, 'browse_users', 'users', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(17, 'read_users', 'users', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(18, 'edit_users', 'users', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(19, 'add_users', 'users', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(20, 'delete_users', 'users', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(21, 'browse_settings', 'settings', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(22, 'read_settings', 'settings', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(23, 'edit_settings', 'settings', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(24, 'add_settings', 'settings', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(25, 'delete_settings', 'settings', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(26, 'browse_homes', 'homes', '2024-05-02 04:26:31', '2024-05-02 04:26:31'),
(27, 'read_homes', 'homes', '2024-05-02 04:26:31', '2024-05-02 04:26:31'),
(28, 'edit_homes', 'homes', '2024-05-02 04:26:31', '2024-05-02 04:26:31'),
(29, 'add_homes', 'homes', '2024-05-02 04:26:31', '2024-05-02 04:26:31'),
(30, 'delete_homes', 'homes', '2024-05-02 04:26:31', '2024-05-02 04:26:31'),
(31, 'browse_oilgas', 'oilgas', '2024-05-02 06:57:57', '2024-05-02 06:57:57'),
(32, 'read_oilgas', 'oilgas', '2024-05-02 06:57:57', '2024-05-02 06:57:57'),
(33, 'edit_oilgas', 'oilgas', '2024-05-02 06:57:57', '2024-05-02 06:57:57'),
(34, 'add_oilgas', 'oilgas', '2024-05-02 06:57:57', '2024-05-02 06:57:57'),
(35, 'delete_oilgas', 'oilgas', '2024-05-02 06:57:57', '2024-05-02 06:57:57'),
(36, 'browse_technologies', 'technologies', '2024-05-02 07:17:29', '2024-05-02 07:17:29'),
(37, 'read_technologies', 'technologies', '2024-05-02 07:17:29', '2024-05-02 07:17:29'),
(38, 'edit_technologies', 'technologies', '2024-05-02 07:17:29', '2024-05-02 07:17:29'),
(39, 'add_technologies', 'technologies', '2024-05-02 07:17:29', '2024-05-02 07:17:29'),
(40, 'delete_technologies', 'technologies', '2024-05-02 07:17:29', '2024-05-02 07:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
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
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2024-05-01 02:11:19', '2024-05-01 02:11:19'),
(2, 'user', 'Normal User', '2024-05-01 02:11:19', '2024-05-01 02:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `technologies`
--

CREATE TABLE `technologies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `technologies`
--

INSERT INTO `technologies` (`id`, `title`, `image`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Typhoon Bi-Directional Dogleg Drilling Reamer', 'technologies\\May2024\\XAmQp1zq32VcGVENGSEH.webp', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', '2024-05-02 07:19:43', '2024-05-02 07:19:43', NULL),
(2, 'Landslide Downhole Mudmotor', 'technologies\\May2024\\OAQdHi6N6ETdzOSKQIx7.webp', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', '2024-05-02 07:20:38', '2024-05-02 07:20:38', NULL),
(3, 'CBM: Cuttings Bed Mobilizer', 'technologies\\May2024\\8jcmwN905PVJAMD7C58J.webp', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', '2024-05-02 07:21:59', '2024-05-02 07:21:59', NULL),
(4, 'Downhole Drilling Filter', NULL, 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', '2024-05-02 07:23:50', '2024-05-02 07:23:50', NULL),
(5, 'Anti Stick-Slip/Stall Tool', NULL, 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', '2024-05-02 07:24:33', '2024-05-02 07:24:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super admin', 'admin@email.com', 'users/default.png', NULL, '$2y$10$ryvOhCh5HpqFBwwNs/yfe.uR11lw.Thj36.z2PGk44fTAOd/0C//O', 'DfDsYKMYkENEwSdMs5etAmmH1ENk7d8sXRuDtmOfUczvv0saUOlTidqqOptS', NULL, '2024-05-01 02:23:03', '2024-05-01 02:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oilgas`
--
ALTER TABLE `oilgas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `technologies`
--
ALTER TABLE `technologies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `oilgas`
--
ALTER TABLE `oilgas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `technologies`
--
ALTER TABLE `technologies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
