-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2019 at 11:35 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salesweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_no` int(11) NOT NULL,
  `bill_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mobile` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_no`, `bill_date`, `mobile`) VALUES
(1, '2019-05-04 18:19:07', '066415066'),
(2, '2019-05-04 18:45:05', '065005814'),
(3, '2019-05-04 18:47:05', '065005814'),
(4, '2019-05-04 18:47:06', '065005814'),
(5, '2019-05-04 18:47:15', '066415066'),
(6, '2019-05-04 18:49:17', '066415066'),
(7, '2019-05-04 18:50:02', '066415066'),
(8, '2019-05-04 18:51:33', '066415066'),
(9, '2019-05-04 21:20:54', '066415066'),
(10, '2019-05-04 21:31:05', '066415066'),
(11, '2019-05-04 21:33:54', '066415066'),
(12, '2019-05-04 21:35:58', '066415066'),
(13, '2019-05-06 11:40:30', '066415066');

-- --------------------------------------------------------

--
-- Table structure for table `bill_det`
--

CREATE TABLE `bill_det` (
  `bill_no` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_det`
--

INSERT INTO `bill_det` (`bill_no`, `itemid`, `qty`) VALUES
(0, 1, 3),
(0, 3, 2),
(0, 2, 3),
(0, 2, 2),
(0, 6, 3),
(8, 2, 2),
(8, 6, 3),
(9, 2, 2),
(9, 6, 3),
(10, 2, 2),
(10, 6, 3),
(10, 2, 2),
(11, 2, 2),
(11, 6, 3),
(11, 2, 2),
(11, 4, 3),
(12, 1, 1),
(13, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `category` varchar(255) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `category`, `photo`) VALUES
(1, 'Margarita Pizza', '3.75', 'Pizza', 'Margarita2_big.jpg'),
(2, 'Chicken Alfredo Pizza', '5.99', 'Pizza', 'ChickenAlfredo2_big.jpg'),
(3, 'Pepperoni Lovers Pizza', '4.74', 'Pizza', 'Pepperonilovers2_big.jpg'),
(4, 'Plain Nutella Pizza', '3.44', 'Pizza', 'plain Nutella2_big.jpg'),
(5, 'Philly Steak Sandwich', '2.54', 'Sandwich', 'Phillysteaksandwich2_big.jpg'),
(6, 'Chichen Sendwich', '2.37', 'Sandwich', 'Chickensandwich2_big.jpg'),
(7, 'Hotdog Sandwich', '2.15', 'Sandwich', 'hotdogsandwich2_big.jpg'),
(8, 'Turkey Sendwich', '2.37', 'Sandwich', 'turkeysandwich2_big.jpg'),
(9, 'Caesar Salad', '3.01', 'Salad', 'Caesarsalad2_big.jpg'),
(10, 'Greek Salad', '2.37', 'Salad', 'Greeksalad2_big.jpg'),
(11, 'Arabic Salad', '1.94', 'Salad', 'Arabicsalad2_big.jpg'),
(12, 'Tuna Salad', '2.59', 'Salad', 'Tunasalad2_big.jpg'),
(13, 'Pepsi', '0.52', 'Beverages', 'Pepsi_min_636021950800177962.jpg'),
(14, 'Diet Pepsi', '0.52', 'Beverages', 'Diet_Pepsi_big.jpg'),
(15, 'Mountain Dew', '0.52', 'Beverages', 'mtnDew_big.jpg'),
(16, 'Mineral Water (Small)', '0.26', 'Beverages', 'Water_min_636021951390013962.jpg'),
(17, 'Boneless Wings', '3.02', 'Extra', '	bonless wing_big.jpg'),
(18, 'French Fries', '0.86', 'Extra', 'frenchfries2_big.jpg'),
(19, 'Potato Wedges', '1.29', 'Extra', 'wedges2_big.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `temp_order`
--

CREATE TABLE `temp_order` (
  `mobile` varchar(50) NOT NULL,
  `itemid` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_order`
--

INSERT INTO `temp_order` (`mobile`, `itemid`, `qty`) VALUES
('066415066', 1, 1),
('066415066', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `mobile`, `password`, `name`, `address`) VALUES
(1, '066415066', '123456', 'Marko', 'idemoNis'),
(3, '065415066', '123456', 'Marko', 'idemoNis'),
(4, '123123123', '123123', 'pera', 'periceva');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_no`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
