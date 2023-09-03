-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2023 at 06:02 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mihanzdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `beefmenu`
--

CREATE TABLE `beefmenu` (
  `dish-name` text NOT NULL,
  `food-description` text NOT NULL,
  `dish-price-per-kilo` int(10) NOT NULL,
  `dish-photo` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active\r\n2=inactive',
  `bm-id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chickenmenu`
--

CREATE TABLE `chickenmenu` (
  `dish-name` text NOT NULL,
  `food-description` text NOT NULL,
  `price-per-kilo` int(11) NOT NULL,
  `dish-photo` text NOT NULL,
  `cm-id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active\r\n2=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dessertmenu`
--

CREATE TABLE `dessertmenu` (
  `dish-name` text NOT NULL,
  `food-description` text NOT NULL,
  `dish-price-per-kilo` int(11) NOT NULL,
  `dish-photo` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active\r\n2=inactive',
  `dm-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `drinksmenu`
--

CREATE TABLE `drinksmenu` (
  `dish-name` text NOT NULL,
  `food-description` text NOT NULL,
  `dish-price-per-kilo` int(11) NOT NULL,
  `dish-photo` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active\r\n2=inactive',
  `dkm-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fishmenu`
--

CREATE TABLE `fishmenu` (
  `dish-name` text NOT NULL,
  `food-description` text NOT NULL,
  `dish-price-per-kilo` int(11) NOT NULL,
  `dish-photo` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active\r\n2=inactive',
  `fm-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mc-menu`
--

CREATE TABLE `mc-menu` (
  `mc-menu-id` int(11) NOT NULL,
  `bm-id` int(11) NOT NULL,
  `cm-id` int(11) NOT NULL,
  `pm-id` int(11) NOT NULL,
  `vm-id` int(11) NOT NULL,
  `dm-id` int(11) NOT NULL,
  `dkm-id` int(11) NOT NULL,
  `sfm-id` int(11) NOT NULL,
  `ptm-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mc-reservation`
--

CREATE TABLE `mc-reservation` (
  `mcr-id` int(11) NOT NULL,
  `user-id` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=accepted\r\n2=declined'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pastamenu`
--

CREATE TABLE `pastamenu` (
  `dish-name` text NOT NULL,
  `food-description` text NOT NULL,
  `dish-price-per-kilo` int(11) NOT NULL,
  `dish-photo` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active\r\n2=inactive',
  `ptm-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `porkmenu`
--

CREATE TABLE `porkmenu` (
  `dish-name` text NOT NULL,
  `food-description` text NOT NULL,
  `dish-price-per-kilo` int(10) NOT NULL,
  `dish-photo` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=active\r\n2=inactive',
  `pm-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `seafoodmenu`
--

CREATE TABLE `seafoodmenu` (
  `dish-name` text NOT NULL,
  `food-description` text NOT NULL,
  `dish-price-per-kilo` int(11) NOT NULL,
  `dish-photo` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active\r\n2=inactive',
  `sfm-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `f-name` text NOT NULL,
  `f-address` varchar(100) NOT NULL,
  `contact-no` varchar(20) NOT NULL,
  `e-mail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type-of-user` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=user\r\n2=admin\r\n',
  `date-of-registration` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `user-id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vegetablemenu`
--

CREATE TABLE `vegetablemenu` (
  `dish-name` text NOT NULL,
  `food-description` text NOT NULL,
  `dish-price-per-kilo` int(11) NOT NULL,
  `dish-photo` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active\r\n2=inactive',
  `vm-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beefmenu`
--
ALTER TABLE `beefmenu`
  ADD PRIMARY KEY (`bm-id`);

--
-- Indexes for table `chickenmenu`
--
ALTER TABLE `chickenmenu`
  ADD PRIMARY KEY (`cm-id`);

--
-- Indexes for table `dessertmenu`
--
ALTER TABLE `dessertmenu`
  ADD PRIMARY KEY (`dm-id`);

--
-- Indexes for table `drinksmenu`
--
ALTER TABLE `drinksmenu`
  ADD PRIMARY KEY (`dkm-id`);

--
-- Indexes for table `mc-menu`
--
ALTER TABLE `mc-menu`
  ADD PRIMARY KEY (`mc-menu-id`),
  ADD UNIQUE KEY `bm-id` (`bm-id`),
  ADD UNIQUE KEY `cm-id` (`cm-id`),
  ADD UNIQUE KEY `ptm-id` (`ptm-id`),
  ADD UNIQUE KEY `sfm-id` (`sfm-id`),
  ADD UNIQUE KEY `dkm-id` (`dkm-id`),
  ADD UNIQUE KEY `pm-id` (`pm-id`),
  ADD UNIQUE KEY `vm-id` (`vm-id`),
  ADD UNIQUE KEY `dm-id` (`dm-id`);

--
-- Indexes for table `mc-reservation`
--
ALTER TABLE `mc-reservation`
  ADD PRIMARY KEY (`mcr-id`),
  ADD UNIQUE KEY `user-id` (`user-id`);

--
-- Indexes for table `pastamenu`
--
ALTER TABLE `pastamenu`
  ADD PRIMARY KEY (`ptm-id`);

--
-- Indexes for table `porkmenu`
--
ALTER TABLE `porkmenu`
  ADD PRIMARY KEY (`pm-id`);

--
-- Indexes for table `seafoodmenu`
--
ALTER TABLE `seafoodmenu`
  ADD PRIMARY KEY (`sfm-id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user-id`);

--
-- Indexes for table `vegetablemenu`
--
ALTER TABLE `vegetablemenu`
  ADD PRIMARY KEY (`vm-id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dessertmenu`
--
ALTER TABLE `dessertmenu`
  MODIFY `dm-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mc-menu`
--
ALTER TABLE `mc-menu`
  MODIFY `mc-menu-id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
