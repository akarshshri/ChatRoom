-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2019 at 06:10 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatroomnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL,
  `chat_person_name` varchar(100) NOT NULL,
  `chat_value` varchar(100) NOT NULL,
  `chat_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chat_id`, `chat_person_name`, `chat_value`, `chat_time`) VALUES
(43, 'Akarsh Shrivastava', 'This chat is for Technology section.\n', '10:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'America'),
(3, 'Canada');

-- --------------------------------------------------------

--
-- Table structure for table `cricket`
--

CREATE TABLE `cricket` (
  `chat_id` int(11) NOT NULL,
  `chat_person_name` varchar(100) NOT NULL,
  `chat_value` varchar(100) NOT NULL,
  `chat_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cricket`
--

INSERT INTO `cricket` (`chat_id`, `chat_person_name`, `chat_value`, `chat_time`) VALUES
(2, 'Akarsh Shrivastava', 'This is a Cricket Chat Room\n', '17:19:55');

-- --------------------------------------------------------

--
-- Table structure for table `football`
--

CREATE TABLE `football` (
  `chat_id` int(11) NOT NULL,
  `chat_person_name` varchar(100) NOT NULL,
  `chat_value` varchar(100) NOT NULL,
  `chat_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `football`
--

INSERT INTO `football` (`chat_id`, `chat_person_name`, `chat_value`, `chat_time`) VALUES
(2, 'Akarsh Shrivastava', 'This is football chat only.\n', '16:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `gaming`
--

CREATE TABLE `gaming` (
  `chat_id` int(11) NOT NULL,
  `chat_person_name` varchar(100) NOT NULL,
  `chat_value` varchar(100) NOT NULL,
  `chat_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gaming`
--

INSERT INTO `gaming` (`chat_id`, `chat_person_name`, `chat_value`, `chat_time`) VALUES
(2, 'Akarsh Shrivastava', 'wertu.', '17:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_country` varchar(100) NOT NULL,
  `user_status` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_country`, `user_status`) VALUES
(1, 'Akarsh Shrivastava', 'test@gmail.com', '123', '1', '1'),
(3, 'Akarsh Shrivastava', 'test2@gmail.com', '123', '1', '0'),
(4, 'Akarsh Shrivastava', 'test3@gmail.com', '123', '1', '0'),
(5, 'Akarsh Shrivastava', 'test4@gmail.com', '123', '1', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `cricket`
--
ALTER TABLE `cricket`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `football`
--
ALTER TABLE `football`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `gaming`
--
ALTER TABLE `gaming`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UX_Constraint` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cricket`
--
ALTER TABLE `cricket`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `football`
--
ALTER TABLE `football`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gaming`
--
ALTER TABLE `gaming`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
