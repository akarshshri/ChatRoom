-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2019 at 08:14 AM
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
-- Table structure for table `anno_cricket`
--

CREATE TABLE `anno_cricket` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `anno` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anno_cricket`
--

INSERT INTO `anno_cricket` (`id`, `name`, `anno`) VALUES
(2, 'test account', 'Cricket trials are scheduled to be held on 18/04/19. ');

-- --------------------------------------------------------

--
-- Table structure for table `anno_football`
--

CREATE TABLE `anno_football` (
  `id` int(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `anno` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anno_football`
--

INSERT INTO `anno_football` (`id`, `name`, `anno`) VALUES
(6, 'test account', 'Football trials are scheduled to be held on 13/04/19.\n');

-- --------------------------------------------------------

--
-- Table structure for table `anno_gaming`
--

CREATE TABLE `anno_gaming` (
  `id` int(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `anno` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anno_gaming`
--

INSERT INTO `anno_gaming` (`id`, `name`, `anno`) VALUES
(2, 'Akarsh Shrivastava', 'This is to inform that selection trials for CSGO, TheBlur will be held on 12/04/19');

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
(10, 'Akarsh Shrivastava', 'Technical Quiz Competition is going to be held on 12/04/19');

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
(43, 'Admin', 'This chat is for Technology section.\n', '10:39:10'),
(46, 'Akarsh Shrivastava', 'hello\n', '23:21:26'),
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
(2, 'Admin', 'This is a Cricket Chat Room\n', '17:19:55'),
(3, 'James Mathew', 'CSK is gonna win 2019 IPL for sure.', '12:09:40');

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
(2, 'Admin', 'This is football chat only.\n', '16:26:50'),
(3, 'James Mathew', 'FA is now investigation Ross Barkley coin throwing incident ', '12:07:38');

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
(2, 'Admin', 'This chat is for E-Gaming', '17:55:29'),
(3, 'Akarsh Shrivastava', 'Last night in CSGO, Vitality was able to defeat Na\'vi. Shocking.', '10:11:53'),
(4, 'Parth Jaiswal', 'Yes, I saw that and could not believe it.', '10:12:34'),
(5, 'Akarsh Shrivastava', 'What about Nick\'s match?', '10:12:57'),
(6, 'Parth Jaiswal', 'Gonna watch that for sure.', '10:13:06');

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
  `user_status` varchar(100) NOT NULL DEFAULT '0',
  `management` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_country`, `user_status`, `management`) VALUES
(1, 'Akarsh Shrivastava', 'test@gmail.com', '123', '1', '1', 0),
(3, 'Shravan Kumar', 'test2@gmail.com', '123', '1', '1', 1),
(4, 'Parth Jaiswal', 'test3@gmail.com', '123', '1', '0', 0),
(5, 'James Mathew', 'test4@gmail.com', '123', '1', '0', 0),
(9, 'Aviraj Chatterjee', 'qwe@asd.com', 'qwew', '1', '0', 0),
(17, 'Sharath T R', 'asd@sad.com', 'asd', '1', '0', 0),
(18, 'test account', 'lkg@gmail.com', '123', '1', '0', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anno_cricket`
--
ALTER TABLE `anno_cricket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anno_football`
--
ALTER TABLE `anno_football`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anno_gaming`
--
ALTER TABLE `anno_gaming`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `anno_cricket`
--
ALTER TABLE `anno_cricket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `anno_football`
--
ALTER TABLE `anno_football`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `anno_gaming`
--
ALTER TABLE `anno_gaming`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `anno_tech`
--
ALTER TABLE `anno_tech`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `football`
--
ALTER TABLE `football`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gaming`
--
ALTER TABLE `gaming`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
