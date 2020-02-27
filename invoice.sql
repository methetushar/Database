-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 07:39 PM
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
-- Database: `invoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_item`
--

CREATE TABLE `add_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_item`
--

INSERT INTO `add_item` (`id`, `item_no`, `item_name`, `quantity`, `price`, `total`, `created_at`, `updated_at`) VALUES
(7, '01', 'Laptop', '2', '1220', 2440, NULL, NULL),
(8, '02', 'Mobile', '1', '1233', 1233, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `from_and_to`
--

CREATE TABLE `from_and_to` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_serial` int(11) NOT NULL,
  `from_company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_company_owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_company_owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `from_and_to`
--

INSERT INTO `from_and_to` (`id`, `invoice_serial`, `from_company`, `from_company_owner`, `from_company_address`, `to_company`, `to_company_owner`, `to_company_address`, `created_at`, `updated_at`) VALUES
(1, 4487958, 'T-Company', 'Tushar', 'Rajshahi', 'R-Company', 'Ariyat', 'Dhaka', NULL, NULL),
(2, 1983980, 'T-Company', 'Tushar', 'rajshahi', 'R-Company', 'Ariyat', 'dhaka', NULL, NULL),
(3, 5122748, 'T-Company', 'Tushar', 'Rajshahi', 'R-Company', 'Ariyat', 'Dhaka', NULL, NULL),
(4, 6347584, 'SA group', 'sakib', 'USA', 'SP group', 'Ariyat', 'Dhaka', NULL, NULL),
(5, 9400094, 'R-Company', 'Tushar', 'Rajshahi', 'K-Company', 'Ariyat', 'Dhaka', NULL, NULL),
(6, 6629174, 'R-company', 'Tushar', 'Rajshahi', 'T-company', 'Bappy', 'Dhaka', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_data`
--

CREATE TABLE `invoice_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `item_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `notice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` int(11) NOT NULL,
  `tax_rate` int(11) NOT NULL,
  `tax_amount` double(8,2) NOT NULL,
  `total_amount` double(8,2) NOT NULL,
  `paid_amount` double(8,2) NOT NULL,
  `due_amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_data`
--

INSERT INTO `invoice_data` (`id`, `invoice_no`, `item_no`, `item_name`, `quantity`, `price`, `total`, `notice`, `subtotal`, `tax_rate`, `tax_amount`, `total_amount`, `paid_amount`, `due_amount`, `created_at`, `updated_at`) VALUES
(1, 5122748, '02', 'Leptop', 2, 300, 600, 'this is first invoice data', 6600, 23, 2562.00, 6234.00, 236523.00, 26243.00, '2019-10-14 13:37:32', NULL),
(2, 5122748, '02', 'Leptop', 2, 300, 600, NULL, 6600, 5, 330.00, 6600.00, 5.00, 6595.00, '2019-10-14 13:59:36', NULL),
(3, 6629174, '02', 'Mobile', 1, 1233, 1233, 'Electric invoice', 3673, 10, 367.30, 4040.30, 1000.00, 3040.30, '2019-11-04 14:22:13', NULL),
(4, 6629174, '02', 'Mobile', 1, 1233, 1233, 't7', 3673, 10, 367.30, 4040.30, 4000.00, 40.30, '2019-11-04 14:28:41', NULL),
(5, 6629174, '02', 'Mobile', 1, 1233, 1233, 'wrrf', 3673, 1, 36.73, 3709.73, 23.00, 3686.73, '2019-11-04 15:00:08', NULL);

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
(1, '2019_10_12_045638_create_from_to_table', 1),
(2, '2019_10_13_193108_create_add_item_table', 2),
(3, '2019_10_13_213702_create_invoice_data_table', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_item`
--
ALTER TABLE `add_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `from_and_to`
--
ALTER TABLE `from_and_to`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_data`
--
ALTER TABLE `invoice_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_item`
--
ALTER TABLE `add_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `from_and_to`
--
ALTER TABLE `from_and_to`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invoice_data`
--
ALTER TABLE `invoice_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
