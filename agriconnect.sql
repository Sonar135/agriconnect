-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2024 at 02:20 AM
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
-- Database: `agriconnect`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(255) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `total` int(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `seller` varchar(255) DEFAULT NULL,
  `buyer` varchar(255) DEFAULT NULL,
  `food_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(255) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `seller` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `price`, `quantity`, `image`, `description`, `category`, `seller`) VALUES
(1, 'atlantic salmon', 12000, 56, 'Atlanticsalmonsale.webp', 'fish', 'Livestock', 'james michael'),
(2, 'carrot bunch', 3500, 78, 'basket-of-fresh-carrots-for-sale-at-market-2C4BGBP.jpg', '200 naira per carrot', 'Crops ', 'james michael'),
(3, 'bowl of tomatoes', 4600, 77, '39416013060_78d0cb083b_b.jpg', 'fresh tomatoes', 'Crops ', 'james michael'),
(4, 'dried catfish cutlets', 4400, 43, 'dried cutlet catfish.jpeg', 'food', 'Livestock', 'james michael'),
(5, 'carton of fresh tomatoes', 7000, 32, 'lots-red-tomatoes-cardboard-box-260nw-2195062747.webp', 'fresh tomatoes', 'Crops ', 'james michael'),
(6, 'smoked catfish', 5900, 52, 'smoked cat fish.jpg', 'fish', 'Livestock', 'joshua enterprise'),
(7, 'king salmon fillet', 3400, 54, 'king salmon fillet.jpg', 'food', 'Livestock', 'joshua enterprise'),
(8, 'king salmon fillet', 3400, 54, 'king salmon fillet.jpg', 'food', 'Livestock', 'joshua enterprise'),
(9, 'wild cut king salmon', 4600, 65, 'wild cut king salmon.jpeg', 'fish', 'Livestock', 'joshua enterprise');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(255) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `seller` varchar(255) DEFAULT NULL,
  `buyer` varchar(255) DEFAULT NULL,
  `food_id` varchar(500) NOT NULL,
  `date` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `price`, `quantity`, `image`, `seller`, `buyer`, `food_id`, `date`, `status`) VALUES
(1, 'dried catfish cutlets', 4400, 1, 'dried cutlet catfish.jpeg', 'james michael', 'vefidi135@gmail.com', '4', '2024-03-05 02:09:55', 'pending confirmation'),
(2, 'smoked catfish', 5900, 4, 'smoked cat fish.jpg', 'joshua enterprise', 'vefidi135@gmail.com', '6', '2024-03-05 02:09:55', 'pending confirmation');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_type` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `phone`, `password`, `email`, `address`, `user_type`) VALUES
(1, 'james michael', 'vefidi13@gmail.com', '$2y$10$L1Uyun3D5IihA0MRPPtK.uCTAb9JYYx9FXEe2bs4hqoKcqlp/qrdu', 'vefidi13@gmail.com', NULL, 'restaurant'),
(2, 'joshua enterprise', 'james michael', '$2y$10$/kIB7uZ1xt8F6STmOiwKt.HGblR5d5kD5MbvxB59nlP.1JRh7BQQm', 'vefidi135@gmail.com', NULL, 'restaurant');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_type` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `password`, `email`, `address`, `user_type`) VALUES
(1, 'Victor Efidi okechukwu', '08109495127', '$2y$10$OLCtKUszQeZWv/W0on7.reilPoLHgo9NZh/nHte..2bBE8kPOD4OC', 'vefidi135@gmail.com', 'no 17 samuel ajayi street magodo, 17', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(255) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `total` int(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `buyer` varchar(255) DEFAULT NULL,
  `food_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
