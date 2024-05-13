-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 12:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `section1_heading1` varchar(255) DEFAULT NULL,
  `section1_description` text DEFAULT NULL,
  `section2_image` varchar(255) DEFAULT NULL,
  `section2_heading1` varchar(255) DEFAULT NULL,
  `section2_description1` text DEFAULT NULL,
  `section2_heading2` varchar(255) DEFAULT NULL,
  `section2_description2` text DEFAULT NULL,
  `section3_heading1` varchar(255) DEFAULT NULL,
  `section3_heading2` varchar(255) DEFAULT NULL,
  `section3_description` text DEFAULT NULL,
  `section3_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `section1_heading2` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `meta_title`, `meta_description`, `section1_heading1`, `section1_description`, `section2_image`, `section2_heading1`, `section2_description1`, `section2_heading2`, `section2_description2`, `section3_heading1`, `section3_heading2`, `section3_description`, `section3_image`, `created_at`, `updated_at`, `deleted_at`, `section1_heading2`) VALUES
(1, 'Eureka Mellon', 'Eureka Mellon', 'for a brighter tomorrow', 'Explore the narrative of innovation at Outgrid, where our digital\r\n            architects weave a tale of strategic brilliance. Led by visionary\r\n            minds, our team is dedicated to crafting excellence in every aspect\r\n            of the digital realm, setting the stage for unparalleled success.', 'abouts\\May2024\\UwW2TqwSvdinEFOzCqvI.webp', 'Our Vision', 'At Outgrid, we envision leading digital innovation and driving\r\n                success.', 'Our Mission', 'At Outgrid, we envision leading digital innovation and driving\r\n                success.', 'Who we are', 'Eureka Mellon revolutionizes <span>MENA</span> and                   <dd>GCC upstream</dd>                   <dd>sector</dd>                   with focus on drilling and completion', 'Step into a world where innovation meets sustainability.\r\n                  Experience the power of tomorrow with our cutting-edge\r\n                  solutions in sustainable energy services Step into a world\r\n                  where innovation meets sustainability. Experience the power of\r\n                  tomorrow with our cutting-edge solutions in sustainable energy\r\n                  servicesStep into a world where innovation meets\r\n                  sustainability. Experience the power of tomorrow with our\r\n                  cutting-edge solutions in sustainable energy services Step\r\n                  into a world where innovation meets sustainability. Experience\r\n                  the power of tomorrow with our cutting-edge solutions in\r\n                  sustainable energy servicesStep into a world where innovation\r\n                  meets sustainability. Experience the power of tomorrow with\r\n                  our cutting-edge solutions in sustainable energy services Step\r\n                  into a world where innovation meets sustainability. Experience\r\n                  the power of tomorrow with our cutting-edge solutions in\r\n                  sustainable energy services', 'abouts\\May2024\\VRCyADqHFE0eg5dMOtZ8.webp', '2024-05-03 09:03:39', '2024-05-03 09:03:39', NULL, 'DIGITAL ARCHITECT OUR INNOVATION  STORY UNVEILED');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'updated', 'App\\Footer', 'updated', 1, 'App\\Models\\User', 1, '[]', NULL, '2024-05-13 01:18:07', '2024-05-13 01:18:07'),
(2, 'default', 'updated', 'App\\Footer', 'updated', 1, 'App\\Models\\User', 1, '[]', NULL, '2024-05-13 01:20:20', '2024-05-13 01:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `heading_1` varchar(255) DEFAULT NULL,
  `heading_2` varchar(255) DEFAULT NULL,
  `description_1` text DEFAULT NULL,
  `image_1` varchar(255) DEFAULT NULL,
  `heading_3` varchar(255) DEFAULT NULL,
  `heading_4` varchar(255) DEFAULT NULL,
  `heading_5` varchar(255) DEFAULT NULL,
  `description_2` text DEFAULT NULL,
  `image_2` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `meta_title`, `meta_description`, `heading_1`, `heading_2`, `description_1`, `image_1`, `heading_3`, `heading_4`, `heading_5`, `description_2`, `image_2`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Eureka Mellon', 'Eureka Mellon', 'Be Part of <br />         Eureka Mellon', 'As Eureka Mellon looks <br />             ahead, its vision remains <br />             unwavering', 'to lead the transformation of the upstream sector through\r\n                innovation, collaboration, and sustainable practices. With a\r\n                focus on driving efficiency and maximizing value for\r\n                clients, the company is poised to shape the future of energy\r\n                exploration and production in the MENA and GCC regions and\r\n                beyond.', 'careers\\May2024\\bhLcun6FDGLdlLeEqz3y.webp', 'current openings', 'We are looking for', 'Arrival Energy Solutions, Volant Dynasty, and AVS Global               Gravity unite to innovate, elevate, and redefine', 'Introducing a dynamic alliance poised to redefine the\r\n              landscape of energy solutions: Business Partners Arrival\r\n              Energy Solutions, Volant Dynasty, and AVS Global Gravity. This\r\n              collaboration represents a convergence of expertise,\r\n              innovation, and commitment to excellence in the energy sector.\r\n              With Arrival Energy Solutions leading the charge in\r\n              sustainable practices, Volant Dynasty driving technological\r\n              advancements', 'careers\\May2024\\28SEZAJxaf4eBRKvkQfP.webp', '2024-05-06 04:56:41', '2024-05-06 04:56:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contactuspages`
--

CREATE TABLE `contactuspages` (
  `id` int(10) UNSIGNED NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactuspages`
--

INSERT INTO `contactuspages` (`id`, `heading`, `address`, `email`, `contact_no`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Contact Us', 'ICAD-1, Al Tibr Street, Unit 26 Abu Dhabi', 'info@eureka-mellon.com', '+971 2 876 2541', '2024-05-09 00:15:55', '2024-05-09 00:15:55', NULL);

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
(38, 5, 'page_heading', 'text', 'Page Heading', 0, 1, 1, 1, 1, 1, '{}', 7),
(39, 5, 'page_description', 'text_area', 'Page Description', 0, 1, 1, 1, 1, 1, '{}', 8),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 9),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(42, 5, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 11),
(43, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(47, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(48, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(49, 6, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 0, 1, '{}', 10),
(50, 5, 'banner_title', 'text', 'Banner Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(51, 5, 'banner_description', 'text_area', 'Banner Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(52, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(53, 7, 'meta_title', 'text', 'Meta Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(54, 7, 'meta_description', 'text_area', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(55, 7, 'banner_image', 'image', 'Banner Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(56, 7, 'banner_title', 'text', 'Banner Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(57, 7, 'banner_description', 'text_area', 'Banner Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(58, 7, 'page_heading', 'text', 'Page Heading', 0, 1, 1, 1, 1, 1, '{}', 7),
(59, 7, 'page_description', 'text_area', 'Page Description', 0, 1, 1, 1, 1, 1, '{}', 8),
(60, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(61, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(62, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 11),
(63, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 8, 'meta_title', 'text', 'Meta Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(65, 8, 'meta_description', 'text_area', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(66, 8, 'banner_image', 'image', 'Banner Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(67, 8, 'banner_title', 'text', 'Banner Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(68, 8, 'banner_description', 'text_area', 'Banner Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(69, 8, 'page_heading', 'text', 'Page Heading', 0, 1, 1, 1, 1, 1, '{}', 7),
(70, 8, 'page_description', 'text_area', 'Page Description', 0, 1, 1, 1, 1, 1, '{}', 8),
(71, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(72, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(73, 8, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 11),
(74, 6, 'meta_title', 'text', 'Meta Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(75, 6, 'meta_description', 'text_area', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(76, 6, 'banner_image', 'image', 'Banner Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(77, 6, 'banner_title', 'text', 'Banner Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(78, 6, 'page_heading', 'text', 'Page Heading', 0, 1, 1, 1, 1, 1, '{}', 6),
(79, 6, 'page_description', 'text_area', 'Page Description', 0, 1, 1, 1, 1, 1, '{}', 7),
(80, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 11, 'meta_title', 'text', 'Meta Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(82, 11, 'meta_description', 'text_area', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(83, 11, 'section1_heading1', 'text', 'Section1 Heading1', 0, 1, 1, 1, 1, 1, '{}', 4),
(84, 11, 'section1_description', 'text_area', 'Section1 Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(85, 11, 'section2_image', 'image', 'Section2 Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(86, 11, 'section2_heading1', 'text', 'Section2 Heading1', 0, 1, 1, 1, 1, 1, '{}', 8),
(87, 11, 'section2_description1', 'text_area', 'Section2 Description1', 0, 1, 1, 1, 1, 1, '{}', 9),
(88, 11, 'section2_heading2', 'text', 'Section2 Heading2', 0, 1, 1, 1, 1, 1, '{}', 10),
(89, 11, 'section2_description2', 'text_area', 'Section2 Description2', 0, 1, 1, 1, 1, 1, '{}', 11),
(90, 11, 'section3_heading1', 'text', 'Section3 Heading1', 0, 1, 1, 1, 1, 1, '{}', 12),
(91, 11, 'section3_heading2', 'text', 'Section3 Heading2', 0, 1, 1, 1, 1, 1, '{}', 13),
(92, 11, 'section3_description', 'text_area', 'Section3 Description', 0, 1, 1, 1, 1, 1, '{}', 14),
(93, 11, 'section3_image', 'image', 'Section3 Image', 0, 1, 1, 1, 1, 1, '{}', 15),
(94, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 16),
(95, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(96, 11, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 18),
(97, 11, 'section1_heading2', 'text', 'Section1 Heading2', 0, 1, 1, 1, 1, 1, '{}', 5),
(98, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(99, 12, 'meta_title', 'text', 'Meta Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(100, 12, 'meta_description', 'text_area', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(101, 12, 'heading_1', 'text', 'Heading 1', 0, 1, 1, 1, 1, 1, '{}', 4),
(102, 12, 'description_1', 'text_area', 'Description 1', 0, 1, 1, 1, 1, 1, '{}', 5),
(103, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(104, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(105, 12, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(106, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(107, 13, 'meta_title', 'text', 'Meta Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(108, 13, 'meta_description', 'text_area', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(109, 13, 'heading_1', 'text', 'Heading 1', 0, 1, 1, 1, 1, 1, '{}', 4),
(110, 13, 'description_1', 'text_area', 'Description 1', 0, 1, 1, 1, 1, 1, '{}', 5),
(111, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(112, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(113, 13, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(114, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(115, 14, 'meta_title', 'text', 'Meta Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(116, 14, 'meta_description', 'text_area', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(117, 14, 'heading_1', 'text', 'Heading 1', 0, 1, 1, 1, 1, 1, '{}', 4),
(118, 14, 'heading_2', 'text', 'Heading 2', 0, 1, 1, 1, 1, 1, '{}', 5),
(119, 14, 'description_1', 'text_area', 'Description 1', 0, 1, 1, 1, 1, 1, '{}', 6),
(120, 14, 'image_1', 'image', 'Image 1', 0, 1, 1, 1, 1, 1, '{}', 7),
(121, 14, 'heading_3', 'text', 'Heading 3', 0, 1, 1, 1, 1, 1, '{}', 8),
(122, 14, 'heading_4', 'text', 'Heading 4', 0, 1, 1, 1, 1, 1, '{}', 9),
(123, 14, 'heading_5', 'text', 'Heading 5', 0, 1, 1, 1, 1, 1, '{}', 10),
(124, 14, 'description_2', 'text_area', 'Description 2', 0, 1, 1, 1, 1, 1, '{}', 11),
(125, 14, 'image_2', 'image', 'Image 2', 0, 1, 1, 1, 1, 1, '{}', 12),
(126, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 13),
(127, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(128, 14, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 15),
(129, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(130, 15, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(131, 15, 'title_2', 'text', 'Title 2', 0, 1, 1, 1, 1, 1, '{}', 3),
(132, 15, 'job_type', 'text', 'Job Type', 0, 1, 1, 1, 1, 1, '{}', 4),
(133, 15, 'location', 'text', 'Location', 0, 1, 1, 1, 1, 1, '{}', 5),
(134, 15, 'responsibilities', 'text_area', 'Responsibilities', 0, 1, 1, 1, 1, 1, '{}', 6),
(135, 15, 'requirements', 'text_area', 'Requirements', 0, 1, 1, 1, 1, 1, '{}', 7),
(136, 15, 'benefits', 'text_area', 'Benefits', 0, 1, 1, 1, 1, 1, '{}', 8),
(137, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(138, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(139, 15, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 11),
(140, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(141, 17, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 3),
(142, 17, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(143, 17, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(144, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(145, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(146, 17, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 8),
(147, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(148, 16, 'meta_title', 'text', 'Meta Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(149, 16, 'meta_description', 'text_area', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(150, 16, 'heading_1', 'text', 'Heading 1', 0, 1, 1, 1, 1, 1, '{}', 4),
(151, 16, 'heading_2', 'text', 'Heading 2', 0, 1, 1, 1, 1, 1, '{}', 5),
(152, 16, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(153, 16, 'supplier_heading_1', 'text', 'Supplier Heading 1', 0, 1, 1, 1, 1, 1, '{}', 7),
(154, 16, 'supplier_heading_2', 'text', 'Supplier Heading 2', 0, 1, 1, 1, 1, 1, '{}', 8),
(155, 16, 'supplier_description', 'text_area', 'Supplier Description', 0, 1, 1, 1, 1, 1, '{}', 9),
(156, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(157, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(158, 16, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 13),
(159, 16, 'supplier_image', 'image', 'Supplier Image', 0, 1, 1, 1, 1, 1, '{}', 10),
(160, 17, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(161, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(162, 18, 'page_name', 'select_dropdown', 'Page Name', 0, 1, 1, 1, 1, 1, '{\"options\":{\"Energy Technologies\":\"Energy Technologies\",\"Landside Technologies\":\"Landside Technologies\",\"Topside Technologies\":\"Topside Technologies\",\"Drilling Technologies\":\"Drilling Technologies\",\"Completion Technologies\":\"Completion Technologies\",\"\":\"Select Option\"}}', 2),
(163, 18, 'meta_title', 'text', 'Meta Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(164, 18, 'meta_description', 'text_area', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(165, 18, 'banner_image', 'image', 'Banner Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(166, 18, 'heading', 'text', 'Heading', 0, 1, 1, 1, 1, 1, '{}', 6),
(167, 18, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 7),
(168, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(169, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(170, 18, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 10),
(171, 18, 'slug', 'text', 'Slug', 0, 0, 0, 1, 0, 0, '{}', 11),
(172, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(173, 19, 'innerpage_id', 'text', 'Innerpage Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(174, 19, 'heading', 'text', 'Heading', 0, 1, 1, 1, 1, 1, '{}', 3),
(175, 19, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(176, 19, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(177, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(178, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(179, 19, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 8),
(180, 19, 'mainpoint_hasone_innerpage_relationship', 'relationship', 'innerpages', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Innerpage\",\"table\":\"innerpages\",\"type\":\"belongsTo\",\"column\":\"innerpage_id\",\"key\":\"id\",\"label\":\"page_name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(181, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(182, 20, 'question', 'text', 'Question', 0, 1, 1, 1, 1, 1, '{}', 2),
(183, 20, 'ans', 'text_area', 'Ans', 0, 1, 1, 1, 1, 1, '{}', 3),
(184, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(185, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(186, 20, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 6),
(187, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(188, 21, 'heading', 'text', 'Heading', 0, 1, 1, 1, 1, 1, '{}', 2),
(189, 21, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 3),
(190, 21, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(191, 21, 'contact_no', 'text', 'Contact No', 0, 1, 1, 1, 1, 1, '{}', 5),
(192, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(193, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(194, 21, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 8),
(195, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(196, 22, 'full_name', 'text', 'Full Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(197, 22, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(198, 22, 'number', 'text', 'Number', 0, 1, 1, 1, 1, 1, '{}', 4),
(199, 22, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(200, 22, 'subject', 'text', 'Subject', 0, 1, 1, 1, 1, 1, '{}', 6),
(201, 22, 'message', 'text_area', 'Message', 0, 1, 1, 1, 1, 1, '{}', 7),
(202, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 8),
(203, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(204, 22, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 0, 0, 0, '{}', 10),
(205, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(206, 26, 'job_id', 'text', 'Job Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(207, 26, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(208, 26, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(209, 26, 'cv', 'file', 'Cv', 0, 1, 1, 1, 1, 1, '{}', 5),
(210, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(211, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(212, 26, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 8),
(213, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(214, 28, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(215, 28, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(216, 28, 'number', 'text', 'Number', 0, 1, 1, 1, 1, 1, '{}', 4),
(217, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(218, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(219, 28, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 7),
(220, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(221, 29, 'description_1', 'text_area', 'Description 1', 0, 1, 1, 1, 1, 1, '{}', 2),
(222, 29, 'description_2', 'text_area', 'Description 2', 0, 1, 1, 1, 1, 1, '{}', 3),
(223, 29, 'contact_no', 'text', 'Contact No', 0, 1, 1, 1, 1, 1, '{}', 4),
(224, 29, 'contact_email', 'text', 'Contact Email', 0, 1, 1, 1, 1, 1, '{}', 5),
(225, 29, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(226, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(227, 29, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 8);

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
(4, 'homes', 'homes', 'Home', 'Homes', NULL, 'App\\Home', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-02 04:26:31', '2024-05-03 02:04:13'),
(5, 'oilgas', 'oilgas', 'Oilga', 'Oilgas', NULL, 'App\\Oilga', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-02 06:57:57', '2024-05-03 03:11:48'),
(6, 'technologies', 'technologies', 'Technology', 'Technologies', NULL, 'App\\Technology', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-02 07:17:29', '2024-05-03 07:26:26'),
(7, 'geothermals', 'geothermals', 'Geothermal', 'Geothermals', NULL, 'App\\Geothermal', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-05-03 06:26:01', '2024-05-03 06:26:01'),
(8, 'winds', 'winds', 'Wind', 'Winds', NULL, 'App\\Wind', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-05-03 06:55:27', '2024-05-03 06:55:27'),
(10, 'about', 'about', 'About', 'Abouts', NULL, 'App\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-05-03 08:37:42', '2024-05-03 08:37:42'),
(11, 'abouts', 'abouts', 'About', 'Abouts', NULL, 'App\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-03 08:42:22', '2024-05-03 09:00:04'),
(12, 'termandconditions', 'termandconditions', 'Termandcondition', 'Termandconditions', NULL, 'App\\Termandcondition', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-06 03:39:23', '2024-05-06 03:42:46'),
(13, 'privacypolicies', 'privacypolicies', 'Privacypolicy', 'Privacypolicies', NULL, 'App\\Privacypolicy', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-05-06 03:44:11', '2024-05-06 03:44:11'),
(14, 'careers', 'careers', 'Career', 'Careers', NULL, 'App\\Career', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-05-06 04:40:45', '2024-05-06 04:40:45'),
(15, 'jobs', 'jobs', 'Job', 'Jobs', NULL, 'App\\Job', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-05-06 05:54:50', '2024-05-06 05:54:50'),
(16, 'partnerpage', 'partnerpage', 'Partner page', 'Partner page', NULL, 'App\\Partnerpage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-07 02:58:26', '2024-05-07 04:15:58'),
(17, 'partners', 'partners', 'Partner', 'Partners', NULL, 'App\\Partner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-07 02:59:19', '2024-05-07 05:49:58'),
(18, 'innerpages', 'innerpages', 'Innerpage', 'Innerpages', NULL, 'App\\Innerpage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-07 07:49:06', '2024-05-08 01:57:55'),
(19, 'mainpoints', 'mainpoints', 'Main point', 'Main points', NULL, 'App\\Mainpoint', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-08 03:09:02', '2024-05-08 03:17:53'),
(20, 'faqs', 'faqs', 'Faq', 'Faqs', NULL, 'App\\Faq', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-05-08 09:34:24', '2024-05-08 09:34:24'),
(21, 'contactuspages', 'contactuspages', 'Contact us', 'Contact us', NULL, 'App\\Contactuspage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-09 00:11:24', '2024-05-09 00:13:07'),
(22, 'inquiries', 'inquiries', 'Inquiry', 'Inquiries', NULL, 'App\\Inquiry', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-09 01:04:57', '2024-05-09 01:12:05'),
(26, 'jobapplications', 'jobapplications', 'Job Application', 'Job Applications', NULL, 'App\\JobApplication', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-10 00:50:41', '2024-05-10 00:58:42'),
(28, 'supplierinquiries', 'supplierinquiries', 'Supplierinquiry', 'Manage Supplier inquiries', NULL, 'App\\Supplierinquiry', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-10 08:12:07', '2024-05-10 08:22:08'),
(29, 'footers', 'footers', 'Footer', 'Footers', NULL, 'App\\Footer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-05-13 00:23:43', '2024-05-13 00:23:43');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `ans` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `ans`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Typhoon Bi-Directional Dogleg Drilling Reamer', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', '2024-05-08 09:35:58', '2024-05-08 09:35:58', NULL),
(2, 'Landslide Downhole Mudmotor', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', '2024-05-08 09:36:19', '2024-05-08 09:36:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` int(10) UNSIGNED NOT NULL,
  `description_1` text DEFAULT NULL,
  `description_2` text DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `description_1`, `description_2`, `contact_no`, `contact_email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Transformation of the upstream sector through innovation,\r\n          collaboration, and sustainable practices.', 'With a focus on driving efficiency and maximizing value for\r\n          clients, the company is poised to shape the future of energy\r\n          exploration and production in the MENA and GCC regions and beyond.', '+971565112065324', 'info@eureka-mellon.com', '2024-05-13 00:25:00', '2024-05-13 01:20:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `geothermals`
--

CREATE TABLE `geothermals` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_description` text DEFAULT NULL,
  `page_heading` varchar(255) DEFAULT NULL,
  `page_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `geothermals`
--

INSERT INTO `geothermals` (`id`, `meta_title`, `meta_description`, `banner_image`, `banner_title`, `banner_description`, `page_heading`, `page_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Eureka Mellon', 'Eureka Mellon', 'geothermals\\May2024\\4YhFm5ntSkEzWe6LuKb3.webp', '<b>Layout –</b> <br />           <b> Geothermal</b>', 'Welcome to Eurika Mellon, where innovation and excellence converge\r\n          to redefine the oil and gas landscape. Here\'s why you should be\r\n          excited', 'Eureka Mellon is a pioneering company specializing in upstream         operations and services within the MENA and GCC regions.', 'Step into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStep into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStepStep into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStep into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStep', '2024-05-03 06:33:30', '2024-05-03 06:33:30', NULL);

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
(1, 'UNLOCK SUSTAINABLE ENERGY SERVICES', 'FOR A BRIGHTER TOMORROW', 'homes\\May2024\\HdUklr92SMh5ooQgqBh6.webp', 'Eureka Mellon is a pioneering company specializing in upstream operations and services within the MENA and GCC regions.', 'Step into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStep into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStepStep into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStep into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStep', 'homes\\May2024\\DzXsESWUDm9wgC15vnJw.webp', 'Arrival Energy Solutions, Volant Dynasty, and AVS Global Gravity unite to innovate, elevate, and redefine', 'Introducing a dynamic alliance poised to redefine the landscape of energy solutions: Business Partners Arrival Energy Solutions, Volant Dynasty, and AVS Global Gravity. This collaboration represents a convergence of expertise, innovation, and commitment to excellence in the energy sector. With Arrival Energy Solutions leading the charge in sustainable practices, Volant Dynasty driving technological advancements', '2024-05-02 05:09:00', '2024-05-03 02:38:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `innerpages`
--

CREATE TABLE `innerpages` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `innerpages`
--

INSERT INTO `innerpages` (`id`, `page_name`, `meta_title`, `meta_description`, `banner_image`, `heading`, `description`, `created_at`, `updated_at`, `deleted_at`, `slug`) VALUES
(1, 'Energy Technologies', 'Eureka Mellon', 'Eureka Mellon', 'innerpages\\May2024\\YcLo7I3WpuRiiwEd81zw.webp', 'New Energy Technologies', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', '2024-05-07 08:16:00', '2024-05-08 02:00:03', NULL, 'energy-technologies'),
(2, 'Landside Technologies', 'Eureka Mellon', 'Eureka Mellon', 'innerpages\\May2024\\k7FCZhVexfOyZAocteXu.webp', 'Landside Technologies', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', '2024-05-07 08:21:00', '2024-05-08 01:59:51', NULL, 'landside-technologies'),
(3, 'Topside Technologies', 'Eureka Mellon', 'Eureka Mellon', 'innerpages\\May2024\\P6aCY04BlhRUs1DehFmM.webp', 'Topside Technologies', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', '2024-05-07 08:25:00', '2024-05-08 01:59:39', NULL, 'topside-technologies'),
(4, 'Drilling Technologies', 'Eureka Mellon', 'Eureka Mellon', 'innerpages\\May2024\\KIQsg6truULIAVoDvlSE.webp', 'Drilling Technologies', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', '2024-05-07 08:27:00', '2024-05-08 01:59:25', NULL, 'drilling-technologies'),
(5, 'Completion Technologies', 'Eureka Mellon', 'Eureka Mellon', 'innerpages\\May2024\\GYnnxoM6R72DJRQfF7jX.webp', 'Completion Technologies', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', '2024-05-07 08:28:00', '2024-05-08 01:59:11', NULL, 'completion-technologies');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `full_name`, `email`, `number`, `address`, `subject`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'fdgdfg', 'superadmin@gmail.com', '234324234', 'ICAD-1, Al Tibr Street, Unit 26 Abu Dhabi', 'sdfgfdg', 'rsgfsdfsdf', '2024-05-09 02:20:33', '2024-05-09 02:20:33', NULL),
(2, 'vcdsfadsf', 'admin@email.com', '13212312', 'ICAD-1, Al Tibr Street, Unit 26 Abu Dhabi', 'sadasda', 'safasda', '2024-05-09 02:22:30', '2024-05-09 02:22:30', NULL),
(3, 'dgsg', 'superadmin@gmail.com', '23423423', 'ICAD-1, Al Tibr Street, Unit 26 Abu Dhabi', 'gfsdgfs', 'effewrw', '2024-05-09 02:27:20', '2024-05-09 02:27:20', NULL),
(4, 'esfsdf', 'noman@quickdigitals.ae', '235234234', 'ICAD-1, Al Tibr Street, Unit 26 Abu Dhabi', 'fasfasdf', 'fdassadf', '2024-05-09 02:28:53', '2024-05-09 02:28:53', NULL),
(5, 'fsdgdfgds', 'admin@email.com', '4352345324', 'ICAD-1, Al Tibr Street, Unit 26 Abu Dhabi', 'sdfsdfsdf', 'sdfgvsfgsf', '2024-05-09 02:32:37', '2024-05-09 02:32:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobapplications`
--

CREATE TABLE `jobapplications` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cv` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobapplications`
--

INSERT INTO `jobapplications` (`id`, `job_id`, `name`, `email`, `cv`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'almed', 'admin@email.com', 'uploads/1715318322.pdf', '2024-05-10 01:18:42', '2024-05-10 01:18:42', NULL),
(2, 2, 'img', 'raghad@quickdigitals.ae', 'uploads/1715318583.pdf', '2024-05-10 01:23:03', '2024-05-10 01:23:03', NULL),
(3, 1, 'almed', 'noman@quickdigitals.ae', 'uploads/1715319057.pdf', '2024-05-10 01:30:57', '2024-05-10 01:30:57', NULL),
(4, 1, 'img', 'nomanshah434514@gmail.com', 'uploads/1715319094.pdf', '2024-05-10 01:31:34', '2024-05-10 01:31:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_2` varchar(255) DEFAULT NULL,
  `job_type` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `responsibilities` text DEFAULT NULL,
  `requirements` text DEFAULT NULL,
  `benefits` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `title_2`, `job_type`, `location`, `responsibilities`, `requirements`, `benefits`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'DIGITAL MARKETING', 'We Are Looking For DIGITAL MARKETING SALES EXECUTIVE', 'Full Time', 'Dubai, UAE', 'Search and fill in the database (DB) for making cold calls.\r\nCold calls to clients from prepared databases.\r\nProcessing of incoming inquiries.\r\nActive search for clients.\r\nCarrying out initial negotiations with clients.\r\nPreparation of an initial commercial proposal.\r\nGiving a detailed presentation of Company services to the client in the office or client\'s company, or over Zoom meetings.\r\nFilling the CRM system at any event for the clients.\r\nFilling in daily reports on the number of calls.\r\nFilling out reports on meetings with clients.\r\nEnsuring the signing of an agreement with the customer.\r\nImplementation of KPIs for the number of calls, meetings, and sales.\r\nParticipation in exhibitions, forums.', 'More than 3 years of experience in Digital Marketing\r\nExperience in active sales\r\nMaster Degree\r\nEnglish/Arabic Level Fluent or Proficiency', 'Salary starting from 6k+other benefits,\r\nArabic-speaking and Europeans preferred', '2024-05-06 05:57:56', '2024-05-06 05:57:56', NULL),
(2, 'Completion Specialist', 'We Are Looking For DIGITAL MARKETING SALES EXECUTIVE', 'Full Time', 'Dubai, UAE', 'Search and fill in the database (DB) for making cold calls.\r\nCold calls to clients from prepared databases.\r\nProcessing of incoming inquiries.\r\nActive search for clients.\r\nCarrying out initial negotiations with clients.\r\nPreparation of an initial commercial proposal.\r\nGiving a detailed presentation of Company services to the client in the office or client\'s company, or over Zoom meetings.\r\nFilling the CRM system at any event for the clients.\r\nFilling in daily reports on the number of calls.\r\nFilling out reports on meetings with clients.\r\nEnsuring the signing of an agreement with the customer.\r\nImplementation of KPIs for the number of calls, meetings, and sales.\r\nParticipation in exhibitions, forums.', 'More than 3 years of experience in Digital Marketing\r\nExperience in active sales\r\nMaster Degree\r\nEnglish/Arabic Level Fluent or Proficiency', 'Salary starting from 6k+other benefits,\r\nArabic-speaking and Europeans preferred', '2024-05-06 01:57:56', '2024-05-06 01:57:56', NULL),
(3, 'Topside Engineer', 'We Are Looking For DIGITAL MARKETING SALES EXECUTIVE', 'Full Time', 'Dubai, UAE', 'Search and fill in the database (DB) for making cold calls.\r\nCold calls to clients from prepared databases.\r\nProcessing of incoming inquiries.\r\nActive search for clients.\r\nCarrying out initial negotiations with clients.\r\nPreparation of an initial commercial proposal.\r\nGiving a detailed presentation of Company services to the client in the office or client\'s company, or over Zoom meetings.\r\nFilling the CRM system at any event for the clients.\r\nFilling in daily reports on the number of calls.\r\nFilling out reports on meetings with clients.\r\nEnsuring the signing of an agreement with the customer.\r\nImplementation of KPIs for the number of calls, meetings, and sales.\r\nParticipation in exhibitions, forums.', 'More than 3 years of experience in Digital Marketing\r\nExperience in active sales\r\nMaster Degree\r\nEnglish/Arabic Level Fluent or Proficiency', 'Salary starting from 6k+other benefits,\r\nArabic-speaking and Europeans preferred', '2024-05-06 01:57:56', '2024-05-06 01:57:56', NULL),
(4, 'Landside Infrastructure Manager', 'We Are Looking For DIGITAL MARKETING SALES EXECUTIVE', 'Full Time', 'Dubai, UAE', 'Search and fill in the database (DB) for making cold calls.\r\nCold calls to clients from prepared databases.\r\nProcessing of incoming inquiries.\r\nActive search for clients.\r\nCarrying out initial negotiations with clients.\r\nPreparation of an initial commercial proposal.\r\nGiving a detailed presentation of Company services to the client in the office or client\'s company, or over Zoom meetings.\r\nFilling the CRM system at any event for the clients.\r\nFilling in daily reports on the number of calls.\r\nFilling out reports on meetings with clients.\r\nEnsuring the signing of an agreement with the customer.\r\nImplementation of KPIs for the number of calls, meetings, and sales.\r\nParticipation in exhibitions, forums.', 'More than 3 years of experience in Digital Marketing\r\nExperience in active sales\r\nMaster Degree\r\nEnglish/Arabic Level Fluent or Proficiency', 'Salary starting from 6k+other benefits,\r\nArabic-speaking and Europeans preferred', '2024-05-06 01:57:56', '2024-05-06 01:57:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mainpoints`
--

CREATE TABLE `mainpoints` (
  `id` int(10) UNSIGNED NOT NULL,
  `innerpage_id` int(11) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mainpoints`
--

INSERT INTO `mainpoints` (`id`, `innerpage_id`, `heading`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Wind Energy', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', NULL, '2024-05-08 03:19:47', '2024-05-08 03:21:42', NULL),
(2, 1, 'Solar Energy', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', NULL, '2024-05-08 03:20:24', '2024-05-08 03:20:24', NULL),
(3, 1, 'Water Energy', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', NULL, '2024-05-08 03:20:55', '2024-05-08 03:20:55', NULL),
(4, 2, 'TubeLock (Unique tubular handling)', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', 'mainpoints\\May2024\\y54e5slrQrMEM9jeHCzw.webp', '2024-05-08 03:22:00', '2024-05-08 03:23:11', NULL),
(5, 3, 'TubeLock (Unique tubular handling)', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', 'mainpoints\\May2024\\WawYsRbvQmQKKgm6i0ZT.webp', '2024-05-08 03:24:37', '2024-05-08 03:24:37', NULL),
(6, 3, 'MLS (Mud Line Shear)', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', NULL, '2024-05-08 03:25:25', '2024-05-08 03:25:25', NULL),
(7, 3, 'HOVR (Drifting DP)', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', NULL, '2024-05-08 03:26:01', '2024-05-08 03:26:01', NULL),
(8, 4, 'Typhoon Bi-Directional Dogleg Drilling Reamer', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', 'mainpoints\\May2024\\OrbetU21q3cPel9XBWu2.webp', '2024-05-08 04:16:57', '2024-05-08 04:16:57', NULL),
(9, 4, 'Landslide Downhole Mudmotor', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', 'mainpoints\\May2024\\nurf1y7ifgwnoztwJylN.webp', '2024-05-08 04:17:56', '2024-05-08 04:17:56', NULL),
(10, 4, 'CBM: Cuttings Bed Mobilizer', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', 'mainpoints\\May2024\\OOBV1sVG3wFi8YEa5oPJ.webp', '2024-05-08 04:18:44', '2024-05-08 04:18:44', NULL),
(11, 4, 'Downhole Drilling Filter', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', NULL, '2024-05-08 04:19:41', '2024-05-08 04:19:41', NULL),
(12, 4, 'Anti Stick-Slip/Stall Tool', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', NULL, '2024-05-08 04:20:08', '2024-05-08 04:20:08', NULL),
(13, 5, 'CRTi and CRTe Casing Running Tools', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', 'mainpoints\\May2024\\r0qxC4Sse5JgJgOCJRql.webp', '2024-05-08 06:50:28', '2024-05-08 06:50:28', NULL),
(14, 5, 'HydroFORM Centralizers', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', 'mainpoints\\May2024\\WMgBNoUyzHilHDhDdlxK.webp', '2024-05-08 06:56:00', '2024-05-08 06:57:31', NULL),
(15, 5, 'MLT and DTR Torque Rings', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', 'mainpoints\\May2024\\TSG0yZEfDweGNMGZxVPJ.webp', '2024-05-08 06:58:22', '2024-05-08 06:58:22', NULL),
(16, 5, 'Cement Swivel Tool', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', 'mainpoints\\May2024\\HHaI4kS68bzkYgnX9MOj.webp', '2024-05-08 07:00:00', '2024-05-08 07:00:34', NULL);

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
(12, 1, 'Manage Pages', '', '_self', 'voyager-list', '#000000', NULL, 13, '2024-05-02 04:28:54', '2024-05-10 08:12:23', NULL, ''),
(13, 1, 'Oil & Gas', '', '_self', NULL, '#000000', 12, 2, '2024-05-02 06:57:57', '2024-05-10 09:05:42', 'voyager.oilgas.index', 'null'),
(14, 1, 'Technologies', '', '_self', NULL, NULL, 12, 5, '2024-05-02 07:17:29', '2024-05-10 00:57:29', 'voyager.technologies.index', NULL),
(16, 1, 'Geothermals', '', '_self', NULL, NULL, 12, 3, '2024-05-03 06:26:01', '2024-05-10 00:57:29', 'voyager.geothermals.index', NULL),
(17, 1, 'Winds', '', '_self', NULL, NULL, 12, 4, '2024-05-03 06:55:27', '2024-05-10 00:57:29', 'voyager.winds.index', NULL),
(20, 1, 'About Us', '', '_self', NULL, '#000000', 12, 6, '2024-05-03 08:42:23', '2024-05-10 09:06:07', 'voyager.abouts.index', 'null'),
(21, 1, 'Terms & conditions', '', '_self', NULL, '#000000', 12, 7, '2024-05-06 03:39:24', '2024-05-10 09:06:27', 'voyager.termandconditions.index', 'null'),
(22, 1, 'Privacy Policies', '', '_self', NULL, '#000000', 12, 8, '2024-05-06 03:44:11', '2024-05-10 09:06:45', 'voyager.privacypolicies.index', 'null'),
(23, 1, 'Careers', '', '_self', NULL, NULL, 12, 9, '2024-05-06 04:40:46', '2024-05-10 08:12:23', 'voyager.careers.index', NULL),
(24, 1, 'Manage Jobs', '', '_self', 'voyager-treasure', '#000000', NULL, 9, '2024-05-06 05:54:50', '2024-05-10 08:12:31', 'voyager.jobs.index', 'null'),
(25, 1, 'Partner page', '', '_self', NULL, '#000000', 12, 10, '2024-05-07 02:58:26', '2024-05-10 08:12:23', 'voyager.partnerpage.index', 'null'),
(26, 1, 'Manage Partners', '', '_self', 'voyager-people', '#000000', NULL, 11, '2024-05-07 02:59:19', '2024-05-10 08:12:31', 'voyager.partners.index', 'null'),
(27, 1, 'Inner Pages', '', '_self', NULL, '#000000', 12, 11, '2024-05-07 07:49:06', '2024-05-10 09:07:21', 'voyager.innerpages.index', 'null'),
(28, 1, 'Main points Inner pages', '', '_self', NULL, '#000000', 12, 12, '2024-05-08 03:09:02', '2024-05-10 08:12:24', 'voyager.mainpoints.index', 'null'),
(29, 1, 'Manage FAQs', '', '_self', 'voyager-receipt', '#000000', NULL, 12, '2024-05-08 09:34:24', '2024-05-10 08:12:31', 'voyager.faqs.index', 'null'),
(30, 1, 'Contact Us', '', '_self', NULL, '#000000', 12, 13, '2024-05-09 00:11:24', '2024-05-10 09:07:43', 'voyager.contactuspages.index', 'null'),
(31, 1, 'Manage Inquiries', '', '_self', 'voyager-question', '#000000', NULL, 7, '2024-05-09 01:04:57', '2024-05-09 01:08:10', 'voyager.inquiries.index', 'null'),
(35, 1, 'Manage Job Applications', '', '_self', 'voyager-treasure', '#000000', NULL, 10, '2024-05-10 00:50:41', '2024-05-10 08:12:31', 'voyager.jobapplications.index', 'null'),
(37, 1, 'Manage Suppliers inquiry', '', '_self', 'voyager-question', '#000000', NULL, 8, '2024-05-10 08:12:07', '2024-05-10 08:13:40', 'voyager.supplierinquiries.index', 'null'),
(38, 1, 'Footers', '', '_self', NULL, NULL, 12, 14, '2024-05-13 00:23:43', '2024-05-13 00:24:07', 'voyager.footers.index', NULL);

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
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2024_05_13_050331_create_activity_log_table', 2),
(26, '2024_05_13_050332_add_event_column_to_activity_log_table', 2),
(27, '2024_05_13_050333_add_batch_uuid_column_to_activity_log_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oilgas`
--

CREATE TABLE `oilgas` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_description` text DEFAULT NULL,
  `page_heading` varchar(255) DEFAULT NULL,
  `page_description` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oilgas`
--

INSERT INTO `oilgas` (`id`, `meta_title`, `meta_description`, `banner_image`, `banner_title`, `banner_description`, `page_heading`, `page_description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Eureka Mellon', 'Eureka Mellon', 'oilgas\\May2024\\hSh4ybzyrLVUkkW1ksDZ.webp', 'Shaping the <br>                  Future of                  <br>               <b>Oil & Gas</b>', 'Welcome to Eurika Mellon, where innovation and excellence converge to redefine the oil and gas landscape. Here\'s why you should be excited', 'Eureka Mellon is a pioneering company specializing in upstream operations and services within the MENA and GCC regions.', 'Step into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStep into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStepStep into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStep into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStep', NULL, NULL, '2024-05-03 03:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `partnerpage`
--

CREATE TABLE `partnerpage` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `heading_1` varchar(255) DEFAULT NULL,
  `heading_2` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `supplier_heading_1` varchar(255) DEFAULT NULL,
  `supplier_heading_2` varchar(255) DEFAULT NULL,
  `supplier_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `supplier_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partnerpage`
--

INSERT INTO `partnerpage` (`id`, `meta_title`, `meta_description`, `heading_1`, `heading_2`, `description`, `supplier_heading_1`, `supplier_heading_2`, `supplier_description`, `created_at`, `updated_at`, `deleted_at`, `supplier_image`) VALUES
(1, 'Eureka Mellon', 'Eureka Mellon', 'for a brighter tomorrow', 'DIGITAL ARCHITECT OUR INNOVATION  STORY UNVEILED', 'Explore the narrative of innovation at Outgrid, where our digital\r\n        architects weave a tale of strategic brilliance. Led by visionary\r\n        minds, our team is dedicated to crafting excellence in every aspect\r\n        of the digital realm, setting the stage for unparalleled success.', 'Be a Supplier to <br />           Eureka Mellon', 'As Eureka Mellon looks <br />               ahead, its vision remains <br />               unwavering', 'to lead the transformation of the upstream sector through\r\n                  innovation, collaboration, and sustainable practices. With a\r\n                  focus on driving efficiency and maximizing value for\r\n                  clients, the company is poised to shape the future of energy\r\n                  exploration and production in the MENA and GCC regions and\r\n                  beyond.', '2024-05-07 03:27:00', '2024-05-07 04:16:59', NULL, 'partnerpage\\May2024\\VV72wARHp7oNQuwyyoxL.webp');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `logo`, `image`, `description`, `created_at`, `updated_at`, `deleted_at`, `title`) VALUES
(1, 'partners\\May2024\\NyllRjyHMCT1s9XLzHlG.webp', 'partners\\May2024\\m0tAAgISONJ94Batt0Zn.webp', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', '2024-05-07 03:35:00', '2024-05-07 05:55:02', NULL, 'Arrival Energy Solutions'),
(2, 'partners\\May2024\\nQfzeMyYxHvKUZs0NPdI.webp', 'partners\\May2024\\TLSNOfLz0PsTaV8ET3sz.webp', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', '2024-05-07 03:37:00', '2024-05-07 05:54:42', NULL, 'Digital Solution'),
(3, 'partners\\May2024\\gRSiAHGQ6NIbBR0V5XWD.webp', 'partners\\May2024\\ukHGtKN2hcNGmfFQHzzP.webp', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.', '2024-05-07 03:39:00', '2024-05-07 05:54:09', NULL, 'Digital Solution');

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
(40, 'delete_technologies', 'technologies', '2024-05-02 07:17:29', '2024-05-02 07:17:29'),
(41, 'browse_geothermals', 'geothermals', '2024-05-03 06:26:01', '2024-05-03 06:26:01'),
(42, 'read_geothermals', 'geothermals', '2024-05-03 06:26:01', '2024-05-03 06:26:01'),
(43, 'edit_geothermals', 'geothermals', '2024-05-03 06:26:01', '2024-05-03 06:26:01'),
(44, 'add_geothermals', 'geothermals', '2024-05-03 06:26:01', '2024-05-03 06:26:01'),
(45, 'delete_geothermals', 'geothermals', '2024-05-03 06:26:01', '2024-05-03 06:26:01'),
(46, 'browse_winds', 'winds', '2024-05-03 06:55:27', '2024-05-03 06:55:27'),
(47, 'read_winds', 'winds', '2024-05-03 06:55:27', '2024-05-03 06:55:27'),
(48, 'edit_winds', 'winds', '2024-05-03 06:55:27', '2024-05-03 06:55:27'),
(49, 'add_winds', 'winds', '2024-05-03 06:55:27', '2024-05-03 06:55:27'),
(50, 'delete_winds', 'winds', '2024-05-03 06:55:27', '2024-05-03 06:55:27'),
(56, 'browse_about', 'about', '2024-05-03 08:37:42', '2024-05-03 08:37:42'),
(57, 'read_about', 'about', '2024-05-03 08:37:42', '2024-05-03 08:37:42'),
(58, 'edit_about', 'about', '2024-05-03 08:37:42', '2024-05-03 08:37:42'),
(59, 'add_about', 'about', '2024-05-03 08:37:42', '2024-05-03 08:37:42'),
(60, 'delete_about', 'about', '2024-05-03 08:37:42', '2024-05-03 08:37:42'),
(61, 'browse_abouts', 'abouts', '2024-05-03 08:42:23', '2024-05-03 08:42:23'),
(62, 'read_abouts', 'abouts', '2024-05-03 08:42:23', '2024-05-03 08:42:23'),
(63, 'edit_abouts', 'abouts', '2024-05-03 08:42:23', '2024-05-03 08:42:23'),
(64, 'add_abouts', 'abouts', '2024-05-03 08:42:23', '2024-05-03 08:42:23'),
(65, 'delete_abouts', 'abouts', '2024-05-03 08:42:23', '2024-05-03 08:42:23'),
(66, 'browse_termandconditions', 'termandconditions', '2024-05-06 03:39:23', '2024-05-06 03:39:23'),
(67, 'read_termandconditions', 'termandconditions', '2024-05-06 03:39:24', '2024-05-06 03:39:24'),
(68, 'edit_termandconditions', 'termandconditions', '2024-05-06 03:39:24', '2024-05-06 03:39:24'),
(69, 'add_termandconditions', 'termandconditions', '2024-05-06 03:39:24', '2024-05-06 03:39:24'),
(70, 'delete_termandconditions', 'termandconditions', '2024-05-06 03:39:24', '2024-05-06 03:39:24'),
(71, 'browse_privacypolicies', 'privacypolicies', '2024-05-06 03:44:11', '2024-05-06 03:44:11'),
(72, 'read_privacypolicies', 'privacypolicies', '2024-05-06 03:44:11', '2024-05-06 03:44:11'),
(73, 'edit_privacypolicies', 'privacypolicies', '2024-05-06 03:44:11', '2024-05-06 03:44:11'),
(74, 'add_privacypolicies', 'privacypolicies', '2024-05-06 03:44:11', '2024-05-06 03:44:11'),
(75, 'delete_privacypolicies', 'privacypolicies', '2024-05-06 03:44:11', '2024-05-06 03:44:11'),
(76, 'browse_careers', 'careers', '2024-05-06 04:40:46', '2024-05-06 04:40:46'),
(77, 'read_careers', 'careers', '2024-05-06 04:40:46', '2024-05-06 04:40:46'),
(78, 'edit_careers', 'careers', '2024-05-06 04:40:46', '2024-05-06 04:40:46'),
(79, 'add_careers', 'careers', '2024-05-06 04:40:46', '2024-05-06 04:40:46'),
(80, 'delete_careers', 'careers', '2024-05-06 04:40:46', '2024-05-06 04:40:46'),
(81, 'browse_jobs', 'jobs', '2024-05-06 05:54:50', '2024-05-06 05:54:50'),
(82, 'read_jobs', 'jobs', '2024-05-06 05:54:50', '2024-05-06 05:54:50'),
(83, 'edit_jobs', 'jobs', '2024-05-06 05:54:50', '2024-05-06 05:54:50'),
(84, 'add_jobs', 'jobs', '2024-05-06 05:54:50', '2024-05-06 05:54:50'),
(85, 'delete_jobs', 'jobs', '2024-05-06 05:54:50', '2024-05-06 05:54:50'),
(86, 'browse_partnerpage', 'partnerpage', '2024-05-07 02:58:26', '2024-05-07 02:58:26'),
(87, 'read_partnerpage', 'partnerpage', '2024-05-07 02:58:26', '2024-05-07 02:58:26'),
(88, 'edit_partnerpage', 'partnerpage', '2024-05-07 02:58:26', '2024-05-07 02:58:26'),
(89, 'add_partnerpage', 'partnerpage', '2024-05-07 02:58:26', '2024-05-07 02:58:26'),
(90, 'delete_partnerpage', 'partnerpage', '2024-05-07 02:58:26', '2024-05-07 02:58:26'),
(91, 'browse_partners', 'partners', '2024-05-07 02:59:19', '2024-05-07 02:59:19'),
(92, 'read_partners', 'partners', '2024-05-07 02:59:19', '2024-05-07 02:59:19'),
(93, 'edit_partners', 'partners', '2024-05-07 02:59:19', '2024-05-07 02:59:19'),
(94, 'add_partners', 'partners', '2024-05-07 02:59:19', '2024-05-07 02:59:19'),
(95, 'delete_partners', 'partners', '2024-05-07 02:59:19', '2024-05-07 02:59:19'),
(96, 'browse_innerpages', 'innerpages', '2024-05-07 07:49:06', '2024-05-07 07:49:06'),
(97, 'read_innerpages', 'innerpages', '2024-05-07 07:49:06', '2024-05-07 07:49:06'),
(98, 'edit_innerpages', 'innerpages', '2024-05-07 07:49:06', '2024-05-07 07:49:06'),
(99, 'add_innerpages', 'innerpages', '2024-05-07 07:49:06', '2024-05-07 07:49:06'),
(100, 'delete_innerpages', 'innerpages', '2024-05-07 07:49:06', '2024-05-07 07:49:06'),
(101, 'browse_mainpoints', 'mainpoints', '2024-05-08 03:09:02', '2024-05-08 03:09:02'),
(102, 'read_mainpoints', 'mainpoints', '2024-05-08 03:09:02', '2024-05-08 03:09:02'),
(103, 'edit_mainpoints', 'mainpoints', '2024-05-08 03:09:02', '2024-05-08 03:09:02'),
(104, 'add_mainpoints', 'mainpoints', '2024-05-08 03:09:02', '2024-05-08 03:09:02'),
(105, 'delete_mainpoints', 'mainpoints', '2024-05-08 03:09:02', '2024-05-08 03:09:02'),
(106, 'browse_faqs', 'faqs', '2024-05-08 09:34:24', '2024-05-08 09:34:24'),
(107, 'read_faqs', 'faqs', '2024-05-08 09:34:24', '2024-05-08 09:34:24'),
(108, 'edit_faqs', 'faqs', '2024-05-08 09:34:24', '2024-05-08 09:34:24'),
(109, 'add_faqs', 'faqs', '2024-05-08 09:34:24', '2024-05-08 09:34:24'),
(110, 'delete_faqs', 'faqs', '2024-05-08 09:34:24', '2024-05-08 09:34:24'),
(111, 'browse_contactuspages', 'contactuspages', '2024-05-09 00:11:24', '2024-05-09 00:11:24'),
(112, 'read_contactuspages', 'contactuspages', '2024-05-09 00:11:24', '2024-05-09 00:11:24'),
(113, 'edit_contactuspages', 'contactuspages', '2024-05-09 00:11:24', '2024-05-09 00:11:24'),
(114, 'add_contactuspages', 'contactuspages', '2024-05-09 00:11:24', '2024-05-09 00:11:24'),
(115, 'delete_contactuspages', 'contactuspages', '2024-05-09 00:11:24', '2024-05-09 00:11:24'),
(116, 'browse_inquiries', 'inquiries', '2024-05-09 01:04:57', '2024-05-09 01:04:57'),
(117, 'read_inquiries', 'inquiries', '2024-05-09 01:04:57', '2024-05-09 01:04:57'),
(118, 'edit_inquiries', 'inquiries', '2024-05-09 01:04:57', '2024-05-09 01:04:57'),
(119, 'add_inquiries', 'inquiries', '2024-05-09 01:04:57', '2024-05-09 01:04:57'),
(120, 'delete_inquiries', 'inquiries', '2024-05-09 01:04:57', '2024-05-09 01:04:57'),
(136, 'browse_jobapplications', 'jobapplications', '2024-05-10 00:50:41', '2024-05-10 00:50:41'),
(137, 'read_jobapplications', 'jobapplications', '2024-05-10 00:50:41', '2024-05-10 00:50:41'),
(138, 'edit_jobapplications', 'jobapplications', '2024-05-10 00:50:41', '2024-05-10 00:50:41'),
(139, 'add_jobapplications', 'jobapplications', '2024-05-10 00:50:41', '2024-05-10 00:50:41'),
(140, 'delete_jobapplications', 'jobapplications', '2024-05-10 00:50:41', '2024-05-10 00:50:41'),
(146, 'browse_supplierinquiries', 'supplierinquiries', '2024-05-10 08:12:07', '2024-05-10 08:12:07'),
(147, 'read_supplierinquiries', 'supplierinquiries', '2024-05-10 08:12:07', '2024-05-10 08:12:07'),
(148, 'edit_supplierinquiries', 'supplierinquiries', '2024-05-10 08:12:07', '2024-05-10 08:12:07'),
(149, 'add_supplierinquiries', 'supplierinquiries', '2024-05-10 08:12:07', '2024-05-10 08:12:07'),
(150, 'delete_supplierinquiries', 'supplierinquiries', '2024-05-10 08:12:07', '2024-05-10 08:12:07'),
(151, 'browse_footers', 'footers', '2024-05-13 00:23:43', '2024-05-13 00:23:43'),
(152, 'read_footers', 'footers', '2024-05-13 00:23:43', '2024-05-13 00:23:43'),
(153, 'edit_footers', 'footers', '2024-05-13 00:23:43', '2024-05-13 00:23:43'),
(154, 'add_footers', 'footers', '2024-05-13 00:23:43', '2024-05-13 00:23:43'),
(155, 'delete_footers', 'footers', '2024-05-13 00:23:43', '2024-05-13 00:23:43');

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
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 2),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 2),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 2),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 2),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 2),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 2),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 2),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 2),
(50, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 2),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(64, 2),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 2),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 2),
(75, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 2),
(80, 2),
(81, 1),
(81, 2),
(82, 1),
(82, 2),
(83, 1),
(83, 2),
(84, 2),
(85, 2),
(86, 1),
(86, 2),
(87, 1),
(87, 2),
(88, 1),
(88, 2),
(89, 2),
(90, 2),
(91, 1),
(91, 2),
(92, 1),
(92, 2),
(93, 1),
(93, 2),
(94, 2),
(95, 2),
(96, 1),
(96, 2),
(97, 1),
(97, 2),
(98, 1),
(98, 2),
(99, 2),
(100, 2),
(101, 1),
(101, 2),
(102, 1),
(102, 2),
(103, 1),
(103, 2),
(104, 2),
(105, 2),
(106, 1),
(106, 2),
(107, 1),
(107, 2),
(108, 1),
(108, 2),
(109, 2),
(110, 2),
(111, 1),
(111, 2),
(112, 1),
(112, 2),
(113, 1),
(113, 2),
(114, 2),
(115, 2),
(116, 1),
(116, 2),
(117, 1),
(117, 2),
(118, 1),
(118, 2),
(119, 2),
(120, 2),
(136, 1),
(137, 1),
(138, 1),
(146, 1),
(147, 1),
(148, 1),
(151, 1),
(152, 1),
(153, 1);

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
-- Table structure for table `privacypolicies`
--

CREATE TABLE `privacypolicies` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `heading_1` varchar(255) DEFAULT NULL,
  `description_1` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacypolicies`
--

INSERT INTO `privacypolicies` (`id`, `meta_title`, `meta_description`, `heading_1`, `description_1`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Eureka Mellon', 'Eureka Mellon', 'Privacy Policy', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae rem libero culpa exercitationem quis eligendi soluta. Omnis atque officia repudiandae dolor voluptate obcaecati ratione facilis perferendis, nostrum cupiditate dolore distinctio!', '2024-05-06 03:45:34', '2024-05-06 03:45:34', NULL);

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
-- Table structure for table `supplierinquiries`
--

CREATE TABLE `supplierinquiries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplierinquiries`
--

INSERT INTO `supplierinquiries` (`id`, `name`, `email`, `number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'almed', 'admin@email.com', '124123123', '2024-05-10 08:17:46', '2024-05-10 08:17:46', NULL),
(2, 'dsfasdf', 'noman@quickdigitals.ae', '234234234', '2024-05-10 08:24:48', '2024-05-10 08:24:48', NULL),
(3, 'dsfsafsadf', 'nomanshah434514@gmail.com', '324234234', '2024-05-10 08:25:14', '2024-05-10 08:25:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `technologies`
--

CREATE TABLE `technologies` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `page_heading` varchar(255) DEFAULT NULL,
  `page_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `technologies`
--

INSERT INTO `technologies` (`id`, `meta_title`, `meta_description`, `banner_image`, `created_at`, `updated_at`, `deleted_at`, `banner_title`, `page_heading`, `page_description`) VALUES
(1, 'Eureka Mellon', 'Eureka Mellon', 'technologies\\May2024\\NcqZCyPJO4Erop8qZhV7.webp', '2024-05-03 07:45:15', '2024-05-03 07:45:15', NULL, 'Technologies', 'Technologies', 'In the realm of drilling, precision is paramount. With state-of-the-art technology and unmatched expertise, [Company Name] is at the forefront of pushing the boundaries of what\'s possible. Our innovative drilling techniques maximize efficiency, minimize environmental impact, and unlock new reservoirs previously deemed inaccessible. From conventional to unconventional drilling, we\'re redefining the art and science of exploration.');

-- --------------------------------------------------------

--
-- Table structure for table `termandconditions`
--

CREATE TABLE `termandconditions` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `heading_1` varchar(255) DEFAULT NULL,
  `description_1` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `termandconditions`
--

INSERT INTO `termandconditions` (`id`, `meta_title`, `meta_description`, `heading_1`, `description_1`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Eureka Mellon', 'Eureka Mellon', 'Terms and Conditions', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae rem libero culpa exercitationem quis eligendi soluta. Omnis atque officia repudiandae dolor voluptate obcaecati ratione facilis perferendis, nostrum cupiditate dolore distinctio!', '2024-05-06 03:46:39', '2024-05-06 03:46:39', NULL);

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
(1, 1, 'Super admin', 'admin@email.com', 'users/default.png', NULL, '$2y$10$ryvOhCh5HpqFBwwNs/yfe.uR11lw.Thj36.z2PGk44fTAOd/0C//O', '2nDf5y9NYW5WWVdzUzp6enfsChJRmpFds24cR4HiMjqK6JTY52PB0ee1rjFY', NULL, '2024-05-01 02:23:03', '2024-05-01 02:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `winds`
--

CREATE TABLE `winds` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_description` text DEFAULT NULL,
  `page_heading` varchar(255) DEFAULT NULL,
  `page_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `winds`
--

INSERT INTO `winds` (`id`, `meta_title`, `meta_description`, `banner_image`, `banner_title`, `banner_description`, `page_heading`, `page_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Eureka Mellon', 'Eureka Mellon', 'winds\\May2024\\BsCvKwH41FnBkbY353Xn.webp', '<b>Layout –</b> <br />           <b> Wind/Solar</b>', 'Welcome to Eurika Mellon, where innovation and excellence converge\r\n          to redefine the oil and gas landscape. Here\'s why you should be\r\n          excited', 'Eureka Mellon is a pioneering company specializing in upstream         operations and services within the MENA and GCC regions.', 'Step into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStep into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStepStep into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStep into a world where innovation meets sustainability. Experience the power of tomorrow with our cutting-edge solutions in sustainable energy servicesStep', '2024-05-03 07:02:07', '2024-05-03 07:02:07', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactuspages`
--
ALTER TABLE `contactuspages`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geothermals`
--
ALTER TABLE `geothermals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `innerpages`
--
ALTER TABLE `innerpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobapplications`
--
ALTER TABLE `jobapplications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainpoints`
--
ALTER TABLE `mainpoints`
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
-- Indexes for table `partnerpage`
--
ALTER TABLE `partnerpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
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
-- Indexes for table `privacypolicies`
--
ALTER TABLE `privacypolicies`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `supplierinquiries`
--
ALTER TABLE `supplierinquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technologies`
--
ALTER TABLE `technologies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termandconditions`
--
ALTER TABLE `termandconditions`
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
-- Indexes for table `winds`
--
ALTER TABLE `winds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactuspages`
--
ALTER TABLE `contactuspages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `geothermals`
--
ALTER TABLE `geothermals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `innerpages`
--
ALTER TABLE `innerpages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobapplications`
--
ALTER TABLE `jobapplications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mainpoints`
--
ALTER TABLE `mainpoints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `oilgas`
--
ALTER TABLE `oilgas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partnerpage`
--
ALTER TABLE `partnerpage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacypolicies`
--
ALTER TABLE `privacypolicies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `supplierinquiries`
--
ALTER TABLE `supplierinquiries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `technologies`
--
ALTER TABLE `technologies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `termandconditions`
--
ALTER TABLE `termandconditions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `winds`
--
ALTER TABLE `winds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
