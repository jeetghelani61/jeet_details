-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2025 at 06:36 AM
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
-- Database: `details`
--

-- --------------------------------------------------------

--
-- Table structure for table `jeet_products`
--

CREATE TABLE `jeet_products` (
  `id` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` varchar(100) NOT NULL,
  `p_des` varchar(100) NOT NULL,
  `p_img` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jeet_products`
--

INSERT INTO `jeet_products` (`id`, `p_name`, `p_price`, `p_des`, `p_img`) VALUES
(1, 'orange', '500', 'that is fruit', NULL),
(5, 'onion', '100', 'that is vegetable', NULL),
(6, '', '', '', 'https://localhost/jeet/images/image_1188.'),
(7, 'koli_flower', '126', 'it is vegetable', 'https://localhost/jeet/images/image_8202.');

-- --------------------------------------------------------

--
-- Table structure for table `jeet_user`
--

CREATE TABLE `jeet_user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(10) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jeet_user`
--

INSERT INTO `jeet_user` (`id`, `name`, `email`, `mobile`, `password`) VALUES
(1, 'jeet', 'j@gmail.com', 2147483647, '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jeet_products`
--
ALTER TABLE `jeet_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jeet_user`
--
ALTER TABLE `jeet_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jeet_products`
--
ALTER TABLE `jeet_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jeet_user`
--
ALTER TABLE `jeet_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

