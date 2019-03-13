-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2019 at 05:33 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

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
-- Table structure for table `anno_gaming`
--

CREATE TABLE `anno_gaming` (
  `id` int(4) NOT NULL,
  `name` varchar(30) NOT NULL,
  `anno` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anno_gaming`
--

INSERT INTO `anno_gaming` (`id`, `name`, `anno`) VALUES
(1, 'Akarsh', 'Testing');

-- --------------------------------------------------------

--
-- Table structure for table `anno_tech`
--

CREATE TABLE `anno_tech` (
  `id` int(4) NOT NULL,
  `name` varchar(30) NOT NULL,
  `anno` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anno_tech`
--

INSERT INTO `anno_tech` (`id`, `name`, `anno`) VALUES
(10, 'Akarsh Shrivastava', 'sadxasdasd'),
(11, 'Akarsh Shrivastava', 'sad'),
(12, 'Akarsh Shrivastava', 'testing\n'),
(13, 'Akarsh Shrivastava', 'rere'),
(14, 'Akarsh Shrivastava', 'asd'),
(15, 'Akarsh Shrivastava', 'this is a long paragraph to test'),
(16, 'Akarsh Shrivastava', 'sad');

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
(43, 'Akarsh Shrivastava', 'This chat is for Technology section.\n', '10:39:10'),
(44, 'Akarsh Shrivastava', 'testing', '17:15:17'),
(45, 'Akarsh Shrivastava', 'https://www.google.co.in/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png\n', '10:22:00'),
(46, 'Akarsh Shrivastava', 'hello\n', '23:21:26'),
(47, 'Akarsh Shrivastava', 'de', '01:37:02'),
(48, 'Akarsh Shrivastava', 'This is a long sentence example This is a long sentence example This is a long sentence example ', '02:12:28');

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
(2, 'Akarsh Shrivastava', 'wertu.', '17:55:29'),
(3, 'Akarsh Shrivastava', 'testing', '10:11:53'),
(4, 'Parth Jaiswal', 'sample text\n', '10:12:34'),
(5, 'Akarsh Shrivastava', 'jakhskdh', '10:12:57'),
(6, 'Parth Jaiswal', 'jhgsgd', '10:13:06'),
(7, 'Akarsh Shrivastava', 'sfds', '10:03:25');

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
(3, 'Shravan Kumar', 'test2@gmail.com', '123', '1', '0'),
(4, 'Parth Jaiswal', 'test3@gmail.com', '123', '1', '0'),
(5, 'James Mathew', 'test4@gmail.com', '123', '1', '0'),
(9, 'qwe', 'qwe@asd.com', 'qwew', '1', '0'),
(17, 'asd', 'asd@sad.com', 'asd', '1', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anno_tech`
--
ALTER TABLE `anno_tech`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `anno_tech`
--
ALTER TABLE `anno_tech`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
