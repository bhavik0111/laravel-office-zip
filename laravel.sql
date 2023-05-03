-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 03:04 PM
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
(6, 9, 1, 1, 0, '2023-05-02 06:39:47', '2023-05-02 06:39:47'),
(7, 10, 1, 1, 0, '2023-05-03 01:32:07', '2023-05-03 01:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `description`, `status`, `updated_at`, `created_at`) VALUES
(1, 'Mobile', 'images/category_images/288212589.webp', 'Buy mobile phones at best prices. Flipkart is the right platform for you to look for a mobile phone that fits your budget, technical and design requirements ..', 1, '2023-05-03 02:10:19', '2023-05-01 04:05:37'),
(2, 'Laptop', 'images/category_images/702833284.jpeg', 'Best Budget Laptop. Lenovo Chromebook C340 15 (2020) ... Best Budget Multimedia Laptop. Lenovo Chromebook Duet 5 (2021) ...', 1, '2023-05-03 02:10:29', '2023-05-01 04:19:37'),
(3, 'Cemera', 'images/category_images/267115360.jpeg', 'There are 15 census records available for the last name Cemere. Like a window into their day-to-day life, Cemere census records can tell you where and how your ...', 1, '2023-05-03 02:10:43', '2023-05-01 04:34:28');

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
  `order_date` date NOT NULL DEFAULT current_timestamp(),
  `order_status` varchar(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`order_id`, `user_id`, `first_name`, `last_name`, `phone`, `email`, `shipping_address`, `total`, `order_date`, `order_status`, `updated_at`, `created_at`) VALUES
(1, 9, 'croma', 'mall', 1234567890, 'croma@gmail.com', 'rajkot', '77000', '2023-05-02', '2', '2023-05-02 06:30:29', '2023-05-02 06:30:29');

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
  `qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_details_id`, `order_id`, `user_id`, `product_id`, `price`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 1, 15000, 2, '2023-05-02 06:30:29', '2023-05-02 06:30:29'),
(2, 1, 9, 2, 62000, 1, '2023-05-02 06:30:29', '2023-05-02 06:30:29');

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
(3, 3, 'cannon cemera', 'images/product_images/879469271.jpeg', 55000, '#f07f7f', '16gb', '<ul><li><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Buy&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Cemera</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Makeup at India\'s Best Online Shopping Store</span><br></li></ul>', 'grooming', '<ul><li><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Cemera</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Beauty And Grooming - Buy&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Cemera</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;Beauty And Grooming at India\'s Best Online Shopping Store. Check Price in India and Shop Online.</span><br></li></ul>', 'wifi sms', '<ul><li><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">We have a huge selection of wholesale&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">cemera</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;on Alibaba.com. There are simple digital cameras for personal use all the way up to feature heavy cameras for&nbsp;...</span><br></li></ul>', '1 year', '<ul><li><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Find the best&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Cemera</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;price!&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Cemera</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;for sale in India. Buy and sell second hand Cameras &amp; Lenses in India. OLX provides the best Free Online Classified&nbsp;...</span><br></li></ul>', '<p><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">Find&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;\">Cemera</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">&nbsp;stock images in HD and millions of other royalty-free stock photos, ...</span></p>', 1, '2023-05-03 02:10:03', '2023-05-01 04:41:13');

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
(9, 1, 'TVTVTV', '<p>as</p>', '2023-05-03 02:09:39', '2023-05-03 02:09:39'),
(10, 2, 'new', '<p>brand available</p>', '2023-05-03 02:09:51', '2023-05-03 02:09:51'),
(11, 3, 'all brand', '<p>many cemera \'s many brands in our store</p>', '2023-05-03 02:10:03', '2023-05-03 02:10:03');

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
(9, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$hjnA/9q86aKGhMMdNe/WtuSgxbq/mMehKcu0m7/l4K9h0pVQKRlI6', NULL, '2023-04-16 13:26:50', '2023-05-03 06:00:17', 1, 1),
(10, 'user', 'user', 'user@gmail.com', NULL, '$2y$10$bxROFwddCT1ngA6xdSDF8.mUviZ4p9z6qoy2htT6wKgBJGLhY4ACq', NULL, '2023-04-29 06:02:09', '2023-05-02 23:10:26', 1, 0),
(11, 'croma', 'mall', 'croma@gmail.com', NULL, '$2y$10$ZBy2ZXphHYIKIBmPhvK7keUBu4OrG1sbxK2aUlDUhy2QqlIsuA.Fq', NULL, '2023-05-01 04:00:44', '2023-05-02 23:05:09', 0, 0);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products_addfeatures`
--
ALTER TABLE `products_addfeatures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
