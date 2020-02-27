-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 07:37 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `big-store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'tushar', 'tushar@gmail.com', 'tushar', '2020-02-22 07:59:52', '2020-02-22 07:59:52');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Staples', 1, '2020-02-25 01:13:02', '2020-02-25 01:13:02'),
(2, 'Snacks', 1, '2020-02-25 01:19:56', '2020-02-25 01:19:56'),
(3, 'Fruits & Vegetables', 1, '2020-02-25 01:20:36', '2020-02-25 01:20:36'),
(4, 'Breakfast & Cereal', 1, '2020-02-25 01:20:50', '2020-02-25 01:20:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_02_22_111640_create_admin_users_table', 1),
(4, '2020_02_22_112009_create_products_table', 1),
(5, '2020_02_22_112228_create_registers_table', 1),
(6, '2020_02_25_060309_create_categories_table', 2);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productId`, `productName`, `details`, `quantity`, `price`, `image`, `status`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1686, 'Moong', 'There are many variations of passages of Lorem Ipsum.', 1, 80, 'storage/product_image/of.png', 1, 1, '2020-02-23 12:08:20', '2020-02-23 12:08:20'),
(2, 4619, 'Sunflower Oil(5 kg)', 'There are many variations of passages of Lorem Ipsum.', 1, 200, 'storage/product_image/of1.png', 1, 1, '2020-02-23 12:19:04', '2020-02-23 12:19:04'),
(3, 7697, 'Kabuli Chana(1 kg)', 'There are many variations of passages of Lorem Ipsum.', 1, 500, 'storage/product_image/of2.png', 1, 1, '2020-02-24 11:18:15', '2020-02-24 11:18:15'),
(4, 3742, 'Soya Chunks(1 kg)', 'There are many variations of passages of Lorem Ipsum.', 1, 400, 'storage/product_image/of3.png', 1, 1, '2020-02-24 11:18:52', '2020-02-24 11:18:52'),
(5, 7335, 'Lays(100 g)', 'There are many variations of passages of Lorem Ipsum.', 1, 200, 'storage/product_image/of4.png', 1, 2, '2020-02-24 11:19:33', '2020-02-24 11:19:33'),
(6, 8782, 'Kurkure(100 g)', 'There are many variations of passages of Lorem Ipsum.', 1, 200, 'storage/product_image/of5.png', 1, 2, '2020-02-24 11:20:08', '2020-02-24 11:20:08'),
(7, 9996, 'Popcorn(250 g)', 'There are many variations of passages of Lorem Ipsum.', 1, 250, 'storage/product_image/of6.png', 1, 2, '2020-02-24 11:20:46', '2020-02-24 11:20:46'),
(8, 4419, 'Nuts(250 g)', 'There are many variations of passages of Lorem Ipsum.', 1, 300, 'storage/product_image/of7.png', 1, 2, '2020-02-24 11:21:17', '2020-02-24 11:21:17'),
(9, 8252, 'Banana(6 pcs)', 'There are many variations of passages of Lorem Ipsum.', 1, 50, 'storage/product_image/of8.png', 1, 3, '2020-02-24 11:21:48', '2020-02-24 11:21:48'),
(10, 7919, 'Onion(1 kg)', 'There are many variations of passages of Lorem Ipsum.', 1, 200, 'storage/product_image/of9.png', 1, 3, '2020-02-24 11:22:24', '2020-02-24 11:22:24'),
(11, 7635, 'Bitter Gourd(1 kg)', 'There are many variations of passages of Lorem Ipsum.', 1, 150, 'storage/product_image/of10.png', 1, 3, '2020-02-24 11:22:51', '2020-02-24 11:22:51'),
(12, 9536, 'Apples(1 kg)', 'There are many variations of passages of Lorem Ipsum.', 1, 360, 'storage/product_image/of11.png', 1, 4, '2020-02-24 11:23:22', '2020-02-24 11:23:22');

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
