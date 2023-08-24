-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2023 at 04:15 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(3, 'admin', 'admin123', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `attendant`
--

CREATE TABLE `attendant` (
  `id_attendant` int(200) NOT NULL,
  `Fname` varchar(200) NOT NULL,
  `Lname` varchar(200) NOT NULL,
  `mobile_no` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendant`
--

INSERT INTO `attendant` (`id_attendant`, `Fname`, `Lname`, `mobile_no`, `location`, `username`, `password`) VALUES
(5, 'radha', 'gouda', '123456789', 'Rental_Colony', 'RG', '$2y$10$Nn4pEUf9LY7QkHd3Id5NIO35azznQIpJ9UQutFjv0Nh3D0Kbk.qyC'),
(6, 'Krishna ', 'Kumari', '234598765', 'Dumduma', 'KK', '$2y$10$oapE5TGohOKjqebWMtWKwuvXv3TrpBFePS4VrafexGX2/.chAEThi'),
(7, 'Jayanti', 'panda', '987654321', 'Kalinga_bihar', 'JP', '$2y$10$l.qKQNy0fv3cIxHlElOTCekPrmiMlvrqrrmAIJM4htI9nPlo6McpG');

-- --------------------------------------------------------

--
-- Table structure for table `parkings`
--

CREATE TABLE `parkings` (
  `id` int(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `street` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `slot` int(200) NOT NULL,
  `remaining_slots` varchar(50) NOT NULL,
  `attendant` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parkings`
--

INSERT INTO `parkings` (`id`, `location`, `street`, `name`, `slot`, `remaining_slots`, `attendant`, `date`, `price`) VALUES
(6, 'BBSR', 'Rental_Colony', 'RC', 500, '499', '', '2023-08-14 07:34:17', '40'),
(7, 'BBSR', '', 'DM', 60, '60', 'KK', '2023-08-16 14:03:20', '100'),
(8, 'BBSR', 'Kalinga_bihar', 'KB', 90, '90', 'JP', '2023-08-16 14:06:23', '150');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(255) NOT NULL,
  `parking_id` int(25) NOT NULL,
  `slots` varchar(25) NOT NULL,
  `hours` int(25) NOT NULL,
  `cost` int(25) NOT NULL,
  `customer` varchar(25) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `parking_id`, `slots`, `hours`, `cost`, `customer`, `time`, `status`) VALUES
(14, 6, '1', 1, 40, 'shatabdi@gmail.com', '2023-08-14 13:04:17', 'requested'),
(15, 8, '1', 2, 300, 'abc@gmail.com', '2023-08-16 19:34:51', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_confirm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `password_confirm`) VALUES
(9, 'shatabdi', 'shatabdi@gmail.com', '$2y$10$oTZHF5AOYVnc0gtHRwFyoOSWXlJHfEHpQSruVbySrAegwMpkQI.Ee', '$2y$10$5A49daXfgHOG1cu6.z4VzudIozZxWFr3Cf8xpCkxNQ5xAk9BXIZX2'),
(10, 'ELLEY', 'elley@gmail.com', '$2y$10$OG9f4SdxEEyHBow91bzNWOkGL0W7KR7rzrPLqg3GmMLDqSUtsyL/6', '$2y$10$reSOzsHlhrh5z6TRkxLBK.exz3iytKp48mcCi.C5ipHX03iMlvnaa'),
(11, 'abc', 'abc@gmail.com', '$2y$10$.8EDZAZGSvyTc5nhBQgPhO0vt3Vo6J/a72wAHdA/SLEFywJCRp.lK', '$2y$10$fV.BR00/4r6SkD8LWi4eZuRL5lTwq8JQfzjImevaNbsXFzpuKllSK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendant`
--
ALTER TABLE `attendant`
  ADD PRIMARY KEY (`id_attendant`);

--
-- Indexes for table `parkings`
--
ALTER TABLE `parkings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendant`
--
ALTER TABLE `attendant`
  MODIFY `id_attendant` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `parkings`
--
ALTER TABLE `parkings`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
