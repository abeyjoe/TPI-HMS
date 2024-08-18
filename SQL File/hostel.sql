-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2024 at 11:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin123', '2024-04-10 22:31:45', '2024-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'COM', 'COMP SCI', 'COMPUTER SCIENCE', '2024-06-22 08:15:30'),
(2, 'GEO', 'GEOLOGY', 'GEOLOGY AND GEOFORMATICS', '2024-06-22 08:16:03'),
(3, 'SLT', 'SCI LAB TECH', 'SCIENCE LABORATORY TECHNOLOGY', '2024-06-22 08:16:57'),
(4, 'MTH&STA', 'MATH AND STAT', 'MATHEMATICS AND STATISTICS', '2024-06-22 08:18:09'),
(5, 'PHY', 'PHYSICS', 'PHYSICS', '2024-06-22 08:18:30'),
(6, 'BIOCHEM', 'BIOCHEM', 'BIOCHEMISTRY', '2024-06-22 08:19:00'),
(7, 'MICROBIO', 'MICROBIO', 'MICROBIOLOGY', '2024-06-22 08:19:18'),
(8, 'BIO', 'BIOLOGY', 'BIOLOGY', '2024-06-22 08:19:30'),
(9, 'CHEM', 'CHEMISTRY', 'CHEMISTRY', '2024-06-22 08:19:40'),
(28, 'ACC', 'ACCOUNTANCY', 'COST ACCOUNTING', '2024-06-26 10:22:23');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` varchar(15) DEFAULT NULL,
  `seater` int(11) DEFAULT NULL,
  `feespm` int(11) DEFAULT NULL,
  `foodstatus` int(11) DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` varchar(15) DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint(11) DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int(11) DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int(11) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(1, 'A101 - OR', 4, 32000, NULL, '2024-07-08', 12, 'COMPUTER SCIENCE', '2023235020001', 'Abayomi', 'Stephen', 'Adebayo', 'male', 7080902039, 'abayomi@gmail.com', 7080902039, 'Mr Adebayo', 'Father', 7080902039, 'Lagos Island', 'Lagos', 'Lagos ', 12002, 'Lagos Island', 'Lagos', 'Lagos ', 12002, '2024-07-08 07:13:03', NULL),
(2, 'A101 - OL', 3, 2500, NULL, '2024-07-01', 12, 'SCIENCE LABORATORY TECHNOLOGY', '2019235020034', 'Grace', 'Simi', 'Omobayo', 'female', 8061691500, 'gracee@gmail.com', 8061691500, 'Mrs Omobayo', 'Mother', 8061691500, 'Adekunle crecent center, Ilupeju, Oshodi, Lagos', 'Lagos', 'Lagos ', 220390, 'Adekunle crecent center, Ilupeju, Oshodi, Lagos', 'Lagos', 'Lagos ', 220390, '2024-07-08 07:27:59', NULL),
(3, 'A101 - RA', 3, 2500, NULL, '2024-07-02', 12, 'BIOLOGY', '201829930146', 'Kadijat', 'Opeyemi', 'Alamu', 'female', 8059940330, 'kadijat@gmail.com', 8059940330, 'Mr AAremu', 'Brother', 8059940331, 'Oluyole, Ibadan', 'Ibadan', 'Oyo', 22345, 'Oluyole, Ibadan', 'Ibadan', 'Oyo', 22345, '2024-07-08 07:38:19', NULL),
(4, 'C107', 4, 30000, NULL, '0000-00-00', 12, 'PHYSICS', '2018705010190', 'Dayo', 'Segun', 'Kojo', 'male', 8070939943, 'kojo@gmail.com', 8070939943, 'Mr Segun', 'Brother', 8070939943, 'Apete ibadan', 'IBADAN', 'Oyo', 465789, 'Apete ibadan', 'IBADAN', 'Oyo', 465789, '2024-08-14 12:30:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` varchar(11) DEFAULT NULL,
  `hall` varchar(15) DEFAULT NULL,
  `room_no` varchar(15) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `hall`, `room_no`, `fees`, `posting_date`) VALUES
(2, '3', 'OLORI', 'A101 - OL', 2500, '2024-06-22 11:05:28'),
(3, '3', 'OLORI', 'A102 - OL', 2500, '2024-06-22 11:06:11'),
(4, '3', 'OLORI', 'A103 - OL', 2500, '2024-06-22 11:06:25'),
(5, '3', 'OLORI', 'A104 - OL', 2500, '2024-06-22 11:06:41'),
(6, '3', 'OLORI', 'A105 - OL', 2500, '2024-06-22 11:06:58'),
(7, '4', 'ORISUN', 'A101 - OR', 2500, '2024-06-22 11:07:44'),
(8, '4', 'ORISUN', 'A102 - OR', 2500, '2024-06-22 11:08:03'),
(9, '4', 'ORISUN', 'A103 - OR', 2500, '2024-06-22 11:08:16'),
(10, '4', 'ORISUN', 'A104 - OR', 2500, '2024-06-22 11:08:55'),
(11, '4', 'ORISUN', 'A105 - OR', 2500, '2024-06-22 11:09:10'),
(12, '3', 'RAMAT', 'A101 - RA', 2500, '2024-06-22 11:09:47'),
(13, '3', 'RAMAT', 'A106 - RA', 2500, '2024-06-22 11:10:12'),
(14, '3', 'RAMAT', 'A104 - RA', 2500, '2024-06-22 11:10:42'),
(15, '4', 'UNITY', 'A102 - UN', 2500, '2024-06-22 11:11:28'),
(16, '4', 'UNITY', 'A107 - UN', 2500, '2024-06-22 11:12:24'),
(17, '2', 'UNITY', 'A101 Pt - UN', 3000, '2024-06-22 11:14:26'),
(18, '2', 'UNITY', 'A201 Pt - UN', 3000, '2024-06-22 11:14:50'),
(21, '4', 'UNITY', 'A202 - UN', 2500, '2024-06-22 13:05:30'),
(22, '4', 'ORISUN', 'C204 -  OR', 2500, '2024-06-26 10:07:10'),
(23, '4', 'UNITY', 'C107', 30000, '2024-08-14 12:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Abia'),
(2, 'Adamawa '),
(3, 'Akwa-Ibom '),
(4, 'Anambra '),
(5, 'Bauchi '),
(6, 'Bayelsa '),
(7, 'Benue '),
(8, 'Bornu '),
(9, 'Cross River '),
(10, 'Delta '),
(11, 'Eboyin '),
(12, 'Enugu '),
(13, 'Gombe '),
(14, 'Imo '),
(15, 'Jigawa '),
(16, 'Kaduna '),
(17, 'Kano '),
(18, 'Katsina '),
(19, 'Kebbi '),
(20, 'Kogi '),
(21, 'Kwara '),
(22, 'Lagos '),
(23, 'Nasarawa '),
(24, 'Niger '),
(25, 'Ogun '),
(26, 'Ondo '),
(27, 'Osun'),
(28, 'Oyo'),
(29, 'Plateau'),
(30, 'Rivers'),
(31, 'Sokoto'),
(32, 'Taraba'),
(33, 'Yobe'),
(34, 'Zamfara'),
(35, 'Federal Capital Teritory'),
(36, 'FCT - Abuja');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 1, 'abayomi@gmail.com', 0x3a3a31, '', '', '2024-07-08 07:10:37'),
(2, 2, 'gracee@gmail.com', 0x3a3a31, '', '', '2024-07-08 07:25:17'),
(3, 2, 'gracee@gmail.com', 0x3a3a31, '', '', '2024-07-08 07:31:44'),
(4, 3, 'kadijat@gmail.com', 0x3a3a31, '', '', '2024-07-08 07:40:11'),
(5, 3, 'kadijat@gmail.com', 0x3a3a31, '', '', '2024-07-08 07:45:36'),
(6, 3, 'kadijat@gmail.com', 0x3a3a31, '', '', '2024-07-08 07:46:01'),
(7, 3, 'kadijat@gmail.com', 0x3a3a31, '', '', '2024-07-08 07:47:37'),
(8, 3, 'kadijat@gmail.com', 0x3a3a31, '', '', '2024-07-08 07:47:57'),
(9, 3, 'kadijat@gmail.com', 0x3a3a31, '', '', '2024-07-08 07:48:16'),
(10, 4, 'kojo@gmail.com', 0x3a3a31, '', '', '2024-08-14 12:33:37'),
(11, 1, 'abayomi@gmail.com', 0x3a3a31, '', '', '2024-08-18 21:19:36'),
(12, 1, 'abayomi@gmail.com', 0x3a3a31, '', '', '2024-08-18 21:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(1, '2023235020001', 'Abayomi', 'Stephen', 'Adebayo', 'male', 7080902039, 'abayomi@gmail.com', '123', '2024-07-08 07:10:21', NULL, NULL),
(2, '2019235020034', 'Grace', 'Simi', 'Omobayo', 'female', 8061691500, 'gracee@gmail.com', '123', '2024-07-08 07:25:04', NULL, NULL),
(3, '201829930146', 'Kadijat', 'Opeyemi', 'Alamu', 'female', 8059940330, 'kadijat@gmail.com', '123', '2024-07-08 07:38:19', NULL, '08-07-2024 01:16:11'),
(4, '2018705010190', 'Dayo', 'Segun', 'Kojo', 'male', 8070939943, 'kojo@gmail.com', 'kojo', '2024-08-14 12:30:10', NULL, '14-08-2024 06:04:41'),
(5, '2018705010135', 'badejodaniel', 'segun', 'daniel', 'male', 9036423781, 'daniella@gmail.com', '09036423781', '2024-08-14 12:53:02', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
