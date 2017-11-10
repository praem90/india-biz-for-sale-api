-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2017 at 09:17 AM
-- Server version: 5.7.14
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `india_biz_for_sale`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `line1` varchar(45) DEFAULT NULL,
  `line2` varchar(45) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `line1`, `line2`, `location_id`) VALUES
(1, 'LH Nagar', 'Guindy', 1),
(2, 'LH Nagar', 'Guindy', 1),
(3, 'LH Nagar', 'Guindy', 1),
(4, 'LH Nagar', 'Guindy', 1),
(5, 'LH Nagar', 'Guindy', 1),
(6, 'LH Nagar', 'Guindy', 1),
(7, 'LH Nagar', 'Guindy', 1),
(8, 'LH Nagar', 'Guindy', 1),
(9, 'LH Nagar', 'Guindy', 1),
(12, 'LH Nagar', 'Guindy', 1),
(13, 'LH Nagar', 'Guindy', 1),
(14, 'LH Nagar', 'Guindy', 1),
(15, 'LH Nagar', 'Guindy', 1),
(16, 'LH Nagar', 'Guindy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int(11) NOT NULL,
  `transaction_type_id` int(11) DEFAULT NULL,
  `view_count` int(11) NOT NULL DEFAULT '0',
  `title` varchar(45) DEFAULT NULL,
  `description` text,
  `ticket_size_min` decimal(10,0) DEFAULT NULL,
  `ticket_size_max` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` smallint(1) NOT NULL,
  `listing_id` varchar(45) DEFAULT NULL,
  `detail_id` int(11) DEFAULT NULL,
  `transaction_type_detail_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `transaction_type_id`, `view_count`, `title`, `description`, `ticket_size_min`, `ticket_size_max`, `created_at`, `updated_at`, `status_id`, `listing_id`, `detail_id`, `transaction_type_detail_id`) VALUES
(1, 2, 0, 'Test', 'Desc', '1000', '10000', '2017-11-09 20:13:43', '2017-11-09 20:13:43', 1, NULL, 1, 1),
(4, 2, 0, 'Test', 'Desc', '1000', '10000', '2017-11-09 21:37:14', '2017-11-09 21:37:14', 1, 'SL00004', 4, 4),
(5, 2, 0, 'Test', 'Desc', '1000', '10000', '2017-11-09 21:38:07', '2017-11-09 21:38:07', 1, 'SL000005', 5, 5),
(6, 2, 0, 'Test', 'Desc', '1000', '10000', '2017-11-10 08:37:48', '2017-11-10 08:37:48', 1, 'SL000006', 6, 6),
(7, 2, 0, 'Test', 'Desc', '1000', '10000', '2017-11-10 08:38:31', '2017-11-10 08:38:31', 1, 'SL000007', 7, 7),
(8, 2, 0, 'Test', 'Desc', '1000', '10000', '2017-11-10 09:06:49', '2017-11-10 09:06:49', 1, 'SL000008', 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `business_details`
--

CREATE TABLE `business_details` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `industry_id` int(11) NOT NULL,
  `business_type_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `year_of_found` year(4) NOT NULL,
  `reason` text,
  `last_year_turnover` decimal(10,0) DEFAULT NULL,
  `last_year_profit` decimal(10,0) DEFAULT NULL,
  `ebtia` decimal(10,0) DEFAULT NULL,
  `verification_status_id` smallint(1) DEFAULT NULL,
  `status_id` smallint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `business_details`
--

INSERT INTO `business_details` (`id`, `owner_id`, `industry_id`, `business_type_id`, `address_id`, `year_of_found`, `reason`, `last_year_turnover`, `last_year_profit`, `ebtia`, `verification_status_id`, `status_id`, `created_at`, `updated_at`, `activated_at`) VALUES
(1, 1, 1, 1, 9, 1990, 'Sale', '100000', '10000', '1000000', NULL, 1, '2017-11-09 20:13:43', '2017-11-09 20:13:43', NULL),
(4, 1, 1, 1, 12, 1990, 'Sale', '100000', '10000', '1000000', NULL, 1, '2017-11-09 21:37:14', '2017-11-09 21:37:14', NULL),
(5, 1, 1, 1, 13, 1990, 'Sale', '100000', '10000', '1000000', NULL, 1, '2017-11-09 21:38:07', '2017-11-09 21:38:07', NULL),
(6, 1, 1, 1, 14, 1990, 'Sale', '100000', '10000', '1000000', NULL, 1, '2017-11-10 08:37:48', '2017-11-10 08:37:48', NULL),
(7, 1, 1, 1, 15, 1990, 'Sale', '100000', '10000', '1000000', NULL, 1, '2017-11-10 08:38:31', '2017-11-10 08:38:31', NULL),
(8, 1, 1, 1, 16, 1990, 'Sale', '100000', '10000', '1000000', NULL, 1, '2017-11-10 09:06:49', '2017-11-10 09:06:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_images`
--

CREATE TABLE `business_images` (
  `id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `business_transaction_type_details`
--

CREATE TABLE `business_transaction_type_details` (
  `id` int(11) NOT NULL,
  `company_reputation` varchar(45) DEFAULT NULL,
  `number_of_directors` int(11) DEFAULT NULL,
  `legal_entity_information` varchar(45) DEFAULT NULL,
  `franchise_name` varchar(45) DEFAULT NULL,
  `licensing_fee` decimal(10,0) DEFAULT NULL,
  `royaltee_fee` decimal(10,0) DEFAULT NULL,
  `asset_type_id` int(11) DEFAULT NULL,
  `market_value` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `business_transaction_type_details`
--

INSERT INTO `business_transaction_type_details` (`id`, `company_reputation`, `number_of_directors`, `legal_entity_information`, `franchise_name`, `licensing_fee`, `royaltee_fee`, `asset_type_id`, `market_value`) VALUES
(1, NULL, NULL, NULL, NULL, '120000', NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, '120000', NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, '120000', NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, '120000', NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, '120000', NULL, NULL, NULL),
(8, 'Reputed', NULL, NULL, NULL, '120000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_types`
--

CREATE TABLE `business_types` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `business_types`
--

INSERT INTO `business_types` (`id`, `name`) VALUES
(1, 'Private Ltd');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `width` varchar(45) DEFAULT NULL,
  `height` varchar(45) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `name`) VALUES
(1, 'E-Commerce'),
(2, 'Hotel & Restaurant');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`) VALUES
(1, 'Chennai'),
(2, 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` smallint(1) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'Active'),
(2, 'Disabled');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_types`
--

CREATE TABLE `transaction_types` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction_types`
--

INSERT INTO `transaction_types` (`id`, `name`) VALUES
(1, 'Full Sale'),
(2, 'Franchise'),
(3, 'Asset Sale');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `statuses_id` smallint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `image_id`, `address_id`, `create_at`, `updated_at`, `statuses_id`) VALUES
(1, 'praem90', 'praem1990@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '2017-11-08 18:30:00', '2017-11-08 18:30:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `verification_statuses`
--

CREATE TABLE `verification_statuses` (
  `id` smallint(1) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `verification_statuses`
--

INSERT INTO `verification_statuses` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Verified'),
(3, 'Failed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `listing_id_UNIQUE` (`listing_id`),
  ADD KEY `transaction_type_id` (`transaction_type_id`),
  ADD KEY `fk_business_transaction_types_statuses1_idx` (`status_id`),
  ADD KEY `detail_id` (`detail_id`),
  ADD KEY `transaction_type_details_idx` (`transaction_type_detail_id`);

--
-- Indexes for table `business_details`
--
ALTER TABLE `business_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id_INDEX` (`address_id`),
  ADD KEY `business_type_id_INDEX` (`business_type_id`),
  ADD KEY `industry_id` (`industry_id`),
  ADD KEY `verification_status_id_fk_idx` (`verification_status_id`),
  ADD KEY `status_id_idx` (`status_id`),
  ADD KEY `owner_id_fk` (`owner_id`);

--
-- Indexes for table `business_images`
--
ALTER TABLE `business_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business_id_img_ix` (`business_id`),
  ADD KEY `image_id_img_ix` (`image_id`);

--
-- Indexes for table `business_transaction_type_details`
--
ALTER TABLE `business_transaction_type_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_types`
--
ALTER TABLE `business_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_types`
--
ALTER TABLE `transaction_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`,`email`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `address_id` (`address_id`),
  ADD KEY `fk_user_statuses1_idx` (`statuses_id`);

--
-- Indexes for table `verification_statuses`
--
ALTER TABLE `verification_statuses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `business_details`
--
ALTER TABLE `business_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `business_images`
--
ALTER TABLE `business_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `business_transaction_type_details`
--
ALTER TABLE `business_transaction_type_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `business_types`
--
ALTER TABLE `business_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `transaction_types`
--
ALTER TABLE `transaction_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `verification_statuses`
--
ALTER TABLE `verification_statuses`
  MODIFY `id` smallint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `location_fk` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `businesses`
--
ALTER TABLE `businesses`
  ADD CONSTRAINT `details_fk` FOREIGN KEY (`detail_id`) REFERENCES `business_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_business_transaction_types_statuses1` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `transaction_type_details` FOREIGN KEY (`transaction_type_detail_id`) REFERENCES `business_transaction_type_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `transaction_type_id_fk` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `business_details`
--
ALTER TABLE `business_details`
  ADD CONSTRAINT `business_type_id_fk` FOREIGN KEY (`business_type_id`) REFERENCES `business_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `industry_id` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `location_id_fk` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `owner_id_fk` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `status_id` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `verification_status_id_fk` FOREIGN KEY (`verification_status_id`) REFERENCES `verification_statuses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `business_images`
--
ALTER TABLE `business_images`
  ADD CONSTRAINT `business_id_fk_img` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `image_id_fk_img` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `address_fk` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_statuses1` FOREIGN KEY (`statuses_id`) REFERENCES `statuses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `image_id_fk` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
