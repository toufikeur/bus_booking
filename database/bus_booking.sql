-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2024 at 07:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `id` int(30) NOT NULL,
  `schedule_id` int(30) NOT NULL,
  `ref_no` text NOT NULL,
  `name` varchar(250) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT '1=Paid, 0- Unpaid',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booked`
--

INSERT INTO `booked` (`id`, `schedule_id`, `ref_no`, `name`, `qty`, `status`, `date_updated`) VALUES
(4, 2, '202411163337', 'TUR Ridoy', 2, 0, '2024-11-16 21:25:13'),
(5, 3, '202411173548', 'ridoy', 2, 0, '2024-11-17 12:52:47'),
(6, 2, '202411178743', 'SR', 2, 0, '2024-11-17 15:18:10'),
(7, 4, '202411174653', 'sabbir', 5, 0, '2024-11-17 15:39:45'),
(8, 2, '202411179672', 'SR', 2, 0, '2024-11-17 17:16:03'),
(9, 2, '202411172753', 'Toufike Ur Rahman Ridoy', 3, 0, '2024-11-17 17:50:16'),
(10, 2, '202411182313', 'TUR Ridoy', 1, 0, '2024-11-18 14:22:44'),
(11, 2, '20241118985', 'Toufike Ur Rahman Ridoy', 1, 0, '2024-11-18 14:41:50'),
(12, 2, '202411186491', 'Toufike Ur Rahman Ridoy', 1, 0, '2024-11-18 15:13:06'),
(13, 2, '202411185257', 'TUR Ridoy', 3, 1, '2024-11-19 11:54:42'),
(14, 2, '202411187134', 'Toufike Ur Rahman Ridoy', 2, 0, '2024-11-18 15:15:53'),
(15, 2, '202411185542', 'Toufike Ur Rahman Ridoy', 4, 0, '2024-11-18 15:22:21'),
(16, 2, '202411185390', 'TUR Ridoy', 1, 0, '2024-11-18 15:23:51'),
(17, 2, '202411185425', 'Toufike Ur Rahman Ridoy', 1, 0, '2024-11-18 15:24:19'),
(18, 2, '202411185646', 'Toufike Ur Rahman Ridoy', 1, 0, '2024-11-18 15:25:49'),
(19, 2, '202411187085', 'Toufike Ur Rahman Ridoy', 1, 0, '2024-11-18 15:27:57'),
(20, 2, '202411185097', 'TUR Ridoy', 1, 0, '2024-11-18 15:29:25'),
(21, 2, '202411181604', 'TUR Ridoy', 2, 0, '2024-11-18 15:32:18'),
(22, 1, '202411184570', 'TUR Ridoy', 4, 0, '2024-11-18 15:36:31'),
(23, 4, '202411186770', 'ridoy', 1, 0, '2024-11-18 15:37:08'),
(24, 1, '202411189426', 'TUR Ridoy', 5, 0, '2024-11-18 15:37:33'),
(25, 1, '202411189319', 'gh', 45, 0, '2024-11-18 15:37:56'),
(26, 3, '20241118387', 'TUR Ridoy', 55, 0, '2024-11-18 15:44:36'),
(27, 4, '202411186667', 'Toufike Ur Rahman Ridoy', 9, 0, '2024-11-18 15:45:24'),
(28, 3, '202411182731', 'TUR Ridoy', 4, 0, '2024-11-18 22:10:09'),
(29, 1, '202411193784', 'ridoy', 2, 0, '2024-11-19 11:57:21'),
(30, 1, '3227', 'ridoy', 2, 1, '2024-11-19 14:09:03'),
(31, 1, '1936', 'ridoy', 1, 0, '2024-11-19 12:17:05'),
(32, 1, '4485', 'TUR Ridoy', 1, 0, '2024-11-19 12:24:46'),
(33, 1, '2591', 'TUR Ridoy', 3, 0, '2024-11-19 14:08:11'),
(34, 4, '3156', 'ridoy', 2, 1, '2024-11-22 00:20:11'),
(35, 4, '8529', 'Toufike Ur Rahman Ridoy', 3, 0, '2024-11-22 02:19:24'),
(36, 7, '946', 'TUR Ridoy', 2, 1, '2024-11-22 22:38:11'),
(37, 6, '1060', 'TUR Ridoy', 1, 0, '2024-11-22 22:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `bus_number` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 = inactive, 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `name`, `bus_number`, `status`, `date_updated`) VALUES
(3, 'Golden Line', 'F2024A', 1, '2024-11-17 15:20:25'),
(4, 'Tuhin', 'F2024B', 1, '2024-11-17 00:00:00'),
(5, 'SR', 'F2024C', 1, '2024-11-17 12:05:00'),
(6, 'Ena', 'F2024D', 1, '2024-11-23 00:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(30) NOT NULL,
  `terminal_name` text NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0= inactive , 1= active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `terminal_name`, `city`, `state`, `status`, `date_updated`) VALUES
(1, 'JattraBari', 'Dhaka', 'Bangladesh', 1, '2024-11-17 15:16:02'),
(2, 'Mohakhali', 'Dhaka', 'Bangladesh', 1, '2024-11-17 15:16:46'),
(3, 'Bogura ', 'Bogura', 'Bangladesh', 1, '2024-11-17 15:32:13'),
(4, 'Faridpur', 'Faridpur', 'Bangladesh', 1, '2024-11-22 13:07:52'),
(5, 'Bogura', 'Bogura', 'Bangladesh', 1, '2024-11-22 23:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_list`
--

CREATE TABLE `schedule_list` (
  `id` int(30) NOT NULL,
  `bus_id` int(30) NOT NULL,
  `from_location` int(30) NOT NULL,
  `to_location` int(30) NOT NULL,
  `departure_time` datetime NOT NULL,
  `eta` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `availability` int(11) NOT NULL,
  `price` text NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule_list`
--

INSERT INTO `schedule_list` (`id`, `bus_id`, `from_location`, `to_location`, `departure_time`, `eta`, `status`, `availability`, `price`, `date_updated`) VALUES
(1, 3, 1, 1, '2024-11-18 16:00:00', '2024-11-23 02:00:00', 1, 91, '250', '2024-11-19 08:08:11'),
(2, 3, 2, 1, '2020-09-12 02:45:00', '2020-09-12 05:00:00', 1, 26, '250', '2024-11-18 09:32:18'),
(3, 5, 2, 3, '2024-11-18 12:43:00', '2024-11-19 12:43:00', 1, 56, '500', '2024-11-18 16:10:09'),
(4, 4, 2, 3, '2024-11-18 08:00:00', '2024-11-18 15:00:00', 1, 15, '550', '2024-11-21 20:19:24'),
(5, 4, 2, 1, '2024-11-24 13:08:00', '2024-11-24 13:09:00', 1, 20, '360', '2024-11-22 07:09:27'),
(6, 5, 1, 4, '0000-00-00 00:00:00', '2024-11-24 13:08:00', 1, 29, '350', '2024-11-22 16:59:43'),
(7, 3, 2, 4, '2024-11-24 15:00:00', '2024-11-24 18:00:00', 1, 23, '380', '2024-11-22 16:37:07'),
(8, 6, 2, 1, '2024-11-24 13:14:00', '2024-11-24 16:00:00', 1, 32, '300', '2024-11-22 07:14:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = admin, 2= faculty , 3 = student',
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT ' 0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `username`, `password`, `status`, `date_updated`) VALUES
(3, 'toufike', 1, 'toufike', '1212', 1, '2024-11-19 12:04:04'),
(4, 'sabbir', 1, 'sabbir', '4321', 1, '2024-11-17 15:30:37'),
(5, 'ridoy', 1, 'ridoy', '1234', 1, '2024-11-19 12:04:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_list`
--
ALTER TABLE `schedule_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schedule_list`
--
ALTER TABLE `schedule_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
