-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2020 at 11:17 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `data_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `data_added`, `data_updated`) VALUES
(1, 'DRINK', '2020-03-08 12:39:30', '2020-03-08 00:03:58'),
(2, 'FOOD', '2020-03-08 12:39:36', '2020-03-08 00:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `data_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `desc`, `image`, `price`, `category`, `stock`, `data_added`, `data_updated`) VALUES
('35aba6f2-a245-40bb-8727-396ee5befdb5', 'Violet Lava', 'good', 'http://localhost:8006/uploads/11.png', 28000, 1, 89, '2020-03-09 08:48:03', '2020-03-09 08:48:03'),
('7343d7a0-61af-4cff-aba6-920bccde47fe', 'Kiwi Fruity', 'Sour and Sweet', 'http://localhost:8006/uploads/8.png', 30000, 1, 50, '2020-03-09 08:47:23', '2020-03-09 08:47:23'),
('861ecd77-4b19-4d42-97be-2efe577fc0d2', 'Ice Coffee', 'bitter', 'http://localhost:8006/uploads/9.png', 15000, 1, 245, '2020-03-09 10:36:27', '2020-03-09 10:36:27'),
('96e6f10d-dfbd-4246-b68b-2fbb29e275f9', 'Ice Americano', 'Bitter and Strong', 'http://localhost:8006/uploads/9.png', 12000, 1, 23, '2020-03-09 08:48:44', '2020-03-09 08:48:44'),
('9a03c512-2773-4f84-8ae3-e3ffd74f904e', 'Coffee Machiatto', 'sweet', 'http://localhost:8006/uploads/1.png', 25000, 1, 134, '2020-03-09 08:46:21', '2020-03-09 08:46:21'),
('ad3a46e4-bf69-4111-9b1f-56eb6b1004ea', 'Blueberry Latte', 'Sweet', 'http://localhost:8006/uploads/10.png', 35000, 1, 12, '2020-03-09 10:37:34', '2020-03-09 10:37:34'),
('d212d1c4-f0ac-4553-af1f-54f66f52f58d', 'Green Tea ', 'healthy', 'http://localhost:8006/uploads/7.png', 20000, 1, 13, '2020-03-09 08:46:51', '2020-03-09 08:46:51'),
('e12291b2-a79d-4729-8e4c-2b39ca8159af', 'Choco Cookies', 'Sweet', 'http://localhost:8006/uploads/1.png', 30000, 1, 34, '2020-03-09 10:36:59', '2020-03-09 10:36:59'),
('f28a9675-d98f-4127-b0b7-622747b024a4', 'Avocado Frappe', 'healthy', 'http://localhost:8006/uploads/6.png', 30000, 1, 1, '2020-03-08 00:04:57', '2020-03-08 00:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `data_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `transaction_total`, `data_added`, `user_id`) VALUES
(904920, 30000, '2020-02-25 11:17:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `data_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`transaction_id`, `product_id`, `quantity`, `data_added`) VALUES
(904920, 1, 5, '2020-02-25 11:17:15'),
(904920, 3, 4, '2020-02-25 11:17:15'),
(904920, 4, 9, '2020-02-25 11:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(11) NOT NULL,
  `salt` text NOT NULL,
  `data_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `username`, `password`, `status`, `salt`, `data_added`, `data_updated`) VALUES
(16, '2', '2', 'b4aa0010d1f370a05706ddf97c25143384ffc3a44631150e4e85a19a162c0ffd46d52033940fefefc2dfdd30de3349e1a6b2d3f1b4484456b90b09293202fd07', 'admin', 'b7265bafa5ef8a9ede', '2020-03-04 14:04:22', '2020-03-04 14:04:22'),
(18, 'ayu', 'ayu', '2d5d6657cd8a685ca64bd5b3b45f47d3b3a4f352d6cd805e0d09769b81deee8f961b36fe2ca4853c88724141c4df03d445322d0bd99d43264511a8e3c25221ee', 'admin', 'fa8f6b01005ea17b32', '2020-03-04 15:41:16', '2020-03-04 15:41:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
