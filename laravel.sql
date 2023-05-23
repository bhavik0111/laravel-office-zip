-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 09:10 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `date` date NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `image`, `title`, `description`, `status`, `date`, `updated_at`, `created_at`) VALUES
(1, 1, '', 'samsung', '256 gb 8gb ram s11 model 256 gb 8gb ram s11 model 256 gb\n 8gb ram s11 model 256 gb 8gb ram s11 model256 gb 8gb ram s11 model\n 256 gb 8gb ram s11 model256 gb 8gb ram s11 model256 gb 8gb ram s11 \nmodel256 gb 8gb ram s11 model256 gb 8gb ram s11 model256 gb 8gb ram s11\n model256 gb 8gb ram s11 model256 gb 8gb ram s11 model.', 1, '1999-02-02', '2023-05-10 04:10:15', '2023-05-09 04:30:20'),
(2, 1, 'images/blog_images/1202470292.webp', 'nokia', 'new shap new generation 256 gb 8gb ram s11 model256 gb 8gb ram \r\ns11 model256 gb 8gb ram s11 model256 gb 8gb ram s11 model new\r\nshap new generationnew shap new generationnew shap new generationnew shap\r\n new generationnew shap new generation .', 1, '2023-06-06', '2023-05-10 04:10:34', '2023-05-10 00:49:22'),
(3, 4, 'images/blog_images/593131707.jpeg', 'Dell', 'A laptop, sometimes called a notebook computer by manufacturers,\r\n is a battery- or AC-powered personal computer (PC) smaller than a briefcase.\r\nA laptop can be easily transported and used in temporary spaces such as on airplanes,\r\n in libraries, temporary offices and at meetings A laptop, sometimes called a notebook \r\ncomputer by manufacturers, is a battery- or AC-powered personal computer (PC) \r\nsmaller than a briefcase. A laptop can be easily transported and used in temporary \r\nspaces such as on airplanes, in libraries, temporary offices and at meetings.', 1, '2023-01-02', '2023-05-10 04:10:57', '2023-05-10 00:58:14'),
(4, 5, 'images/blog_images/988991190.webp', 'ada', 'transported and used in temporary spaces such as on airplanes, in libraries, temporary offices and at meetings A laptop, sometimes called a notebook computer by manufacturers, is a battery- or AC-powered personal computer (PC) smaller than a briefcase. A laptop can be easily transported and used in temporary spaces such as on airplanes, in libraries, temporary offices and at meetings.', 1, '2023-04-03', '2023-05-10 04:11:25', '2023-05-10 00:58:46'),
(5, 6, 'images/blog_images/1924541189.jpeg', 'DSLR', '8gb ram s11 model256 gb 8gb ram s11 model256 gb 8gb ram s11 model256 gb 8gb ram s11 model256 gb 8gb ram s11 model256 gb 8gb ram s11 model256 gb 8gb ram s11 model.', 1, '2023-08-02', '2023-05-10 04:24:15', '2023-05-10 01:01:35'),
(6, 6, 'images/blog_images/1055782643.jpeg', 'date perpose', 'A laptop, sometimes called a notebook computer by manufacturers, is a battery- or AC-powered personal computer (PC) smaller than a briefcase. A laptop can be easily transported and used in temporary spaces such as on airplanes, in libraries,', 1, '2023-12-01', '2023-05-10 04:11:56', '2023-05-10 03:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `name`, `description`, `status`, `updated_at`, `created_at`) VALUES
(1, 'mobile', 'add', '1', '2023-05-08 23:04:43', '2023-05-08 23:04:43'),
(2, 'mobile', 'ads', '1', '2023-05-09 00:12:23', '2023-05-09 00:12:23'),
(3, 'lap', 'laappppppppp', '1', '2023-05-09 00:12:47', '2023-05-09 00:12:47'),
(4, 'bookq', 'bookqbookqbookqbookqbookqbookqbookqbookqbookqbookqbookq', '1', '2023-05-09 02:10:36', '2023-05-09 02:10:36'),
(5, 'tv', 'fddtv', '1', '2023-05-09 04:05:04', '2023-05-09 04:05:04'),
(6, 'book', 'book', '1', '2023-05-09 04:44:20', '2023-05-09 04:44:20');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(10, 10, 1, 1, 0, '2023-05-13 05:40:23', '2023-05-13 05:40:23'),
(11, 13, 1, 1, 0, '2023-05-15 00:25:43', '2023-05-15 00:25:43'),
(19, 9, 1, 1, 0, '2023-05-18 04:21:02', '2023-05-18 04:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_fr` varchar(255) NOT NULL DEFAULT 'null',
  `name_sp` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_fr` varchar(255) NOT NULL,
  `image_sp` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `description_fr` varchar(255) NOT NULL,
  `description_sp` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `name_fr`, `name_sp`, `image`, `image_fr`, `image_sp`, `description`, `description_fr`, `description_sp`, `status`, `updated_at`, `created_at`) VALUES
(1, 'Mobile', '', '', 'images/category_images/288212589.webp', '', '', 'Buy mobile phones at best prices.', '', '', 1, '2023-05-03 02:10:19', '2023-05-01 04:05:37'),
(2, 'Laptop', '', '', 'images/category_images/702833284.jpeg', '', '', 'Best Budget Laptop. ', '', '', 1, '2023-05-03 02:10:29', '2023-05-01 04:19:37'),
(3, 'Cemera', '', '', 'images/category_images/267115360.jpeg', '', '', 'There are 15 census records available for the Cemere. ', '', '', 1, '2023-05-03 02:10:43', '2023-05-01 04:34:28');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL DEFAULT 'INR',
  `symbole` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbole`, `status`, `updated_at`, `created_at`) VALUES
(1, 'Indian rupee', 'INR', '₹', 1, '2023-05-16 06:52:47', '2023-05-16 05:02:55'),
(2, 'United States Dollar', 'USD', '$', 1, '2023-05-18 23:30:15', '2023-05-16 05:06:22'),
(3, 'Euro', 'EUR', '€', 1, '2023-05-16 07:01:18', '2023-05-16 05:07:14'),
(4, 'New Zealand Dollar', 'NZD', 'NZ$', 1, '2023-05-16 05:22:30', '2023-05-16 05:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `category_id`, `title`, `description`, `status`, `updated_at`, `created_at`) VALUES
(1, 1, 'The world', 'Is my smartphone eSIM capable? Lorem Ipsum is simply dummy text of the printing and typesetting industry. \nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. \nIt has survived not only five centuries, but also the leap into electronic typesetting, \nremaining essentially unchanged. It was popularised in the 1960s with the release of \nLetraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing \nsoftware like Aldus PageMaker including versions of Lorem Ipsum.  Lorem Ipsum is simply dummy text of \nthe printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since\n the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, \nand more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '1', '2023-05-10 04:09:46', '2023-05-08 00:34:43'),
(3, 2, 'Flower', 'transported and used in temporary spaces such as on airplanes, in libraries, temporary offices and at meetings A laptop, sometimes called a notebook computer by manufacturers, is a battery- or AC-powered personal computer (PC) smaller than a briefcase. A laptop can be easily transported and used in temporary spaces such as on airplanes, in libraries, temporary offices and at meetings.', '1', '2023-05-09 06:18:43', '2023-05-09 05:11:17'),
(4, 4, 'Items', 'A laptop, sometimes called a notebook computer by manufacturers, is a battery- or AC-powered personal computer (PC) smaller than a briefcase. A laptop can be easily transported and used in temporary spaces such as on airplanes, in libraries,', '1', '2023-05-09 05:15:06', '2023-05-09 05:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `faqs_category`
--

CREATE TABLE `faqs_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs_category`
--

INSERT INTO `faqs_category` (`id`, `name`, `description`, `status`, `updated_at`, `created_at`) VALUES
(1, 'book', 'bookbookbook', '1', '2023-05-09 04:47:40', '2023-05-09 04:47:40'),
(2, 'new', 'bbb', '1', '2023-05-09 04:53:55', '2023-05-09 04:53:55'),
(3, 'css', 'cscsd', '1', '2023-05-09 04:57:51', '2023-05-09 04:57:51'),
(4, 'slot', 'vvvvvv', '1', '2023-05-09 05:14:51', '2023-05-09 05:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `globalsetting`
--

CREATE TABLE `globalsetting` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `faceicon` varchar(255) NOT NULL,
  `site_title` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `facebook_url` varchar(255) NOT NULL,
  `linkdin_url` varchar(255) NOT NULL,
  `insta_url` varchar(255) NOT NULL,
  `payment_logo` varchar(255) NOT NULL,
  `footer_logo` varchar(255) NOT NULL,
  `about_us` longtext NOT NULL,
  `copyright_msg` longtext NOT NULL,
  `language` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL DEFAULT 'IND',
  `currency_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `globalsetting`
--

INSERT INTO `globalsetting` (`id`, `logo`, `faceicon`, `site_title`, `address`, `phone`, `email`, `facebook_url`, `linkdin_url`, `insta_url`, `payment_logo`, `footer_logo`, `about_us`, `copyright_msg`, `language`, `currency`, `currency_id`, `updated_at`, `created_at`) VALUES
(1, 'images/global_images/730027221.png', 'images/global_images/16520398.png', 'larabootstrap', 'NEW ADDRESS', 123456789, 'admin@gmail.com', 'FACEBOOK URL NEWEWEWEWE', 'NEWEWEWEWE LINKDIN', 'NEWEWEWEWEINSTA', 'images/global_images/1841643006.png', 'images/global_images/666713977.png', 'NEWEWEWEWEABOUTUS', '©2023 LINKeSims  not copy', 'fr', 'USD', 2, '2023-05-22 06:41:08', '2023-05-11 04:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `status`, `updated_at`, `created_at`) VALUES
(5, 'English', 'en', '1', '2023-05-19 01:45:28', '2023-05-19 01:38:38'),
(6, 'French', 'fr', '1', '2023-05-21 23:18:16', '2023-05-19 01:45:55'),
(7, 'Spanish', 'sp', '1', '2023-05-21 23:19:29', '2023-05-19 01:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `shipping_address` longtext NOT NULL,
  `total` varchar(255) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `order_date` date NOT NULL DEFAULT current_timestamp(),
  `order_status` varchar(11) NOT NULL DEFAULT '2',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`order_id`, `user_id`, `first_name`, `last_name`, `phone`, `email`, `shipping_address`, `total`, `currency_id`, `order_date`, `order_status`, `updated_at`, `created_at`) VALUES
(7, 9, 'euro', 'euro', 1234567890, 'admin@gmail.com', 'euro', '15000', 3, '2023-05-18', '2', '2023-05-18 04:13:22', '2023-05-18 04:13:22'),
(8, 9, 'repee', 'repee', 12345678, 'admin@gmail.com', 'repee', '15000', 1, '2023-05-18', '2', '2023-05-18 04:19:39', '2023-05-18 04:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_details_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_details_id`, `order_id`, `user_id`, `product_id`, `price`, `currency_id`, `qty`, `created_at`, `updated_at`) VALUES
(8, 7, 9, 1, 15000, 3, 1, '2023-05-18 04:13:22', '2023-05-18 04:13:22'),
(9, 8, 9, 1, 15000, 1, 1, '2023-05-18 04:19:39', '2023-05-18 04:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `colour` varchar(255) NOT NULL,
  `data` varchar(255) NOT NULL,
  `data_detail` longtext DEFAULT NULL,
  `calls` varchar(255) NOT NULL,
  `calls_detail` longtext DEFAULT NULL,
  `sms` varchar(255) NOT NULL,
  `sms_detail` longtext DEFAULT NULL,
  `credit_validity` varchar(255) NOT NULL,
  `credit_validity_detail` longtext DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `image`, `price`, `colour`, `data`, `data_detail`, `calls`, `calls_detail`, `sms`, `sms_detail`, `credit_validity`, `credit_validity_detail`, `description`, `status`, `updated_at`, `created_at`) VALUES
(1, 1, 'samsung', 'images/product_images/1644436761.jpeg', 15000, '#cc0505', '1 gb per day', '<p><b>24 hours available</b></p>', 'unlimited', '<p>per day no any limits</p>', '100/day', 'only 100 sms available in per day', '1 year', '<p>365 days unlimited calls , 1gb by day data and 100 sms by day available</p>', '<p><b>256gb ssd, white colour</b></p>', 1, '2023-05-03 02:09:39', '2023-05-01 04:14:41'),
(2, 2, 'Dell', 'images/product_images/1461884518.jpeg', 62000, '#8c7878', '512 ssd', '<ul><li style=\"margin: 0px 0px 4px; padding: 0px; list-style-type: disc;\">dell IdeaPad Slim 3 Chromebook.</li><li>&nbsp;IdeaPad Slim 1 Business Laptop</li></ul>', 'no any', '<ul><li><span style=\"background-color: rgba(80, 151, 255, 0.18); color: rgb(4, 12, 40); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 16px;\">Dell over HP</span><span style=\"color: rgb(77, 81, 86); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 16px;\">&nbsp;</span><br></li></ul>', 'sms sender', '<ul><li><span style=\"color: rgb(77, 81, 86); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 16px;\">it comes down to personal preferences and needs when choosing between these two companies</span><br></li></ul>', 'best', '<ul><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: medium; font-weight: 700;\">Best Laptops For Students</span><br></li></ul>', '<p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">AVITA Cosmos 2 in 1 Intel Celeron Dual Core 11.6 inches 2 in 1 laptop</span></p><p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;IdeaPad Slim 3 Chromebook.</span></p>', 1, '2023-05-03 02:09:51', '2023-05-01 04:29:16'),
(3, 3, 'cannon cemera', 'images/product_images/879469271.jpeg', 55000, '#f07f7f', '16gb', '<ul><li><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Buy&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Cemera</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Makeup at India\'s Best Online Shopping Store</span><br></li></ul>', 'grooming', '<ul><li><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Cemera</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Beauty And Grooming - Buy&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Cemera</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Beauty And Grooming at India\'s Best Online Shopping Store. Check Price in India and Shop Online.</span><br></li></ul>', 'wifi sms', '<ul><li><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">We have a huge selection of wholesale&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">cemera</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;on Alibaba.com. There are simple digital cameras for personal use all the way up to feature heavy cameras for&nbsp;...</span><br></li></ul>', '1 year', '<ul><li><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Find the best&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Cemera</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;price!&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Cemera</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;for sale in India. Buy and sell second hand Cameras &amp; Lenses in India. OLX provides the best Free Online Classified&nbsp;...</span><br></li></ul>', '<p><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Find&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Cemera</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;stock images in HD and millions of other royalty-free stock photos, ...</span></p>', 1, '2023-05-03 02:10:03', '2023-05-01 04:41:13'),
(4, 1, 'samsung s11', 'images/product_images/605045500.jpeg', 1221212, '#e53434', 'sadasd', '<p>asd</p>', 'sad', '<p>asd</p>', 'sd', '<p>asd</p>', 'asd', '<p>asd</p>', '<p>asd</p>', 1, '2023-05-12 07:13:20', '2023-05-12 07:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `products_addfeatures`
--

CREATE TABLE `products_addfeatures` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_addfeatures`
--

INSERT INTO `products_addfeatures` (`id`, `product_id`, `title`, `description`, `updated_at`, `created_at`) VALUES
(9, 1, 'TVTVTV', 'as many brands tv available', '2023-05-03 02:09:39', '2023-05-03 02:09:39'),
(10, 2, 'new', 'brand available', '2023-05-03 02:09:51', '2023-05-03 02:09:51'),
(11, 3, 'all brand', 'many cemera \'s many brands in our store', '2023-05-03 02:10:03', '2023-05-03 02:10:03'),
(12, 4, 'samsung s11', '<p>new piss in market</p>', '2023-05-12 23:40:31', '2023-05-12 23:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `verify_acc` int(11) NOT NULL DEFAULT 0,
  `is_admin` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `verify_acc`, `is_admin`) VALUES
(9, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$deGH3s7xXkmU1/uSiV4S1e0b6.0N1Ccfknay3YJ6dh7crFAVngRiS', NULL, '2023-04-16 13:26:50', '2023-05-16 00:41:44', 1, 1),
(13, 'user', 'usr', 'user@gmail.com', NULL, '$2y$10$tuUr1jI..Pqx6sgihcZoceoeWkOGq6rc4hyvCe7ALtKbdQ1gFDCgW', NULL, '2023-05-13 06:51:48', '2023-05-19 07:24:35', 1, 0),
(14, 'croma', 'croma', 'croma@gmail.com', NULL, '$2y$10$10J10M5Ai8ko.pCf3gWMhObh7DBLaTrYgIIDqQwqzWvGQcYoBHMZW', NULL, '2023-05-18 23:26:38', '2023-05-18 23:26:57', 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs_category`
--
ALTER TABLE `faqs_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `globalsetting`
--
ALTER TABLE `globalsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_addfeatures`
--
ALTER TABLE `products_addfeatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faqs_category`
--
ALTER TABLE `faqs_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `globalsetting`
--
ALTER TABLE `globalsetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products_addfeatures`
--
ALTER TABLE `products_addfeatures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
