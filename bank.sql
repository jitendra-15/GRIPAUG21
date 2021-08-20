-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2021 at 07:53 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

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
  `C_Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`C_Id`, `Name`, `Email`, `Balance`) VALUES
(100, 'Jitendra Bisoi', 'qwerty@gmail.com', 2354259.3100000005),
(101, 'Raj Kapoor', 'asdfgh@gmail.com', 54091.51),
(102, 'Ram Joshi', 'qweasd@gmail.com', 140060.43),
(103, 'Ali Khan', 'zxcvbn@yahoo.com', 22666.88),
(104, 'Krishan Iyer', 'poiuyt@hotmail.com', 231033.21000000002),
(105, 'Rajat Yadav', 'lkjhgf@gmail.com', 11543.76),
(106, 'Gorav Sinha', 'mnbvcx@yahoo.com', 565646.6599999999),
(107, 'Summit Das', 'edcrfvbg@gmail.com', 1234727.7999999998),
(108, 'Kunal Kar', 'olmiknj@gmail.com', 543125.0099999999),
(109, 'Rajesh Kapoor', 'ytrfghnbv@hotmail.com', 34798.46);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `S_Id` int(11) NOT NULL,
  `Sender_ID` int(11) NOT NULL,
  `Sender_Name` varchar(50) NOT NULL,
  `Transfer_Amount` double NOT NULL,
  `Receiver_Id` int(11) NOT NULL,
  `Receiver_Name` varchar(50) NOT NULL,
  `Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`S_Id`, `Sender_ID`, `Sender_Name`, `Transfer_Amount`, `Receiver_Id`, `Receiver_Name`, `Date`) VALUES
(2, 108, 'Kunal Kar', 45.54, 101, 'Raj Kapoor', '2021-08-12 19:53:45'),
(3, 107, 'Summit Das', 498.87, 100, 'Jitendra Bisoi', '2021-08-12 20:30:44'),
(4, 106, 'Gorav Sinha', 674.43, 100, 'Jitendra Bisoi', '2021-08-12 20:39:19'),
(5, 100, 'Jitendra Bisoi', 543.65, 105, 'Rajat Yadav', '2021-08-12 20:43:22'),
(6, 103, 'Ali Khan', 459.87, 100, 'Jitendra Bisoi', '2021-08-13 11:11:47'),
(7, 106, 'Gorav Sinha', 679.89, 107, 'Summit Das', '2021-08-20 06:09:56'),
(8, 100, 'Jitendra Bisoi', 32.98, 104, 'Krishan Iyer', '2021-08-20 06:10:48'),
(9, 100, 'Jitendra Bisoi', 874.4, 109, 'Rajesh Kapoor', '2021-08-20 10:48:56'),
(10, 109, 'Rajesh Kapoor', 76.5, 100, 'Jitendra Bisoi', '2021-08-20 10:49:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`C_Id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`S_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `C_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `S_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
