-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 19, 2018 at 10:30 PM
-- Server version: 5.5.60-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(64) NOT NULL,
  `address` varchar(256) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `username`, `name`, `email`, `password`, `address`) VALUES
(5, 'test5', 'test', 'test4@163.com', '$2a$04$HcffZJMrgN0.lmEFpC4KTeeQhitLYzrH0uTCpGRJRBw4o03ms.qWa', 'wuhan-hanyang'),
(8, 'test8', 'test', 'test4@163.com', '$2a$04$HcffZJMrgN0.lmEFpC4KTeeQhitLYzrH0uTCpGRJRBw4o03ms.qWa', 'wuhan-hanyang'),
(10, 'test10', 'test', 'test4@163.com', '$2a$04$HcffZJMrgN0.lmEFpC4KTeeQhitLYzrH0uTCpGRJRBw4o03ms.qWa', 'wuhan-hanyang'),
(11, 'test11', 'test', 'test1@163.com', '$2a$04$HcffZJMrgN0.lmEFpC4KTeeQhitLYzrH0uTCpGRJRBw4o03ms.qWa', 'wuhan-wuchang'),
(12, 'test12', 'test', 'test2@163.com', '$2a$04$HcffZJMrgN0.lmEFpC4KTeeQhitLYzrH0uTCpGRJRBw4o03ms.qWa', 'wuhan-hankou'),
(13, 'test13', 'test', 'test3@163.com', '$2a$04$HcffZJMrgN0.lmEFpC4KTeeQhitLYzrH0uTCpGRJRBw4o03ms.qWa', 'wuhan-hanyang'),
(14, 'test4', 'test', 'test4@163.com', '$2a$04$HcffZJMrgN0.lmEFpC4KTeeQhitLYzrH0uTCpGRJRBw4o03ms.qWa', 'wuhan-hanyang'),
(15, 'test4', 'test', 'test4@163.com', '$2a$04$HcffZJMrgN0.lmEFpC4KTeeQhitLYzrH0uTCpGRJRBw4o03ms.qWa', 'wuhan-hanyang'),
(16, 'test4', 'test', 'test4@163.com', '$2a$04$HcffZJMrgN0.lmEFpC4KTeeQhitLYzrH0uTCpGRJRBw4o03ms.qWa', 'wuhan-hanyang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
