-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 04:55 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `balance` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `Name`, `email`, `balance`) VALUES
(1, 'Himanshi', 'himanshi@gmail.com', 146000),
(2, 'Joey', 'joeylovesfoodl@gmail.com', 10000),
(3, 'Ted', 'tedthearchitect@gmail.com', 46000),
(4, 'Robin', 'robin@gmail.com', 299000),
(5, 'Barney', 'barneystinson@gmail.com', 299000),
(6, 'Lily', 'lily@gmail.com', 9000),
(7, 'Marshall', 'marshalll@gmail.com', 76750),
(8, 'Ayushi', 'ayu0201@gmail.com', 15000),
(9, 'Sean', 'seanworkspace@gmail.com', 293000),
(10, 'Brianna', 'briannathomas@gmail.com', 90000);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `his_id` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`his_id`, `sender`, `reciever`, `amount`) VALUES
(1, 'Himanshi', 'Sean', 400),
(2, 'Robin', 'Ayushi', 1400),
(3, 'Marshall', 'Himanshi', 10000),
(4, 'Lily', 'Ted', 1050),
(5, 'Brianna', 'Barney', 3000),
(6, 'Sean', 'Joey', 1000),
(7, 'Himanshi', 'Barney', 15000),
(8, 'Marshall', 'Lily', 600);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`his_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `his_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
