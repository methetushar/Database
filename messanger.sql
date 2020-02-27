-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 07:39 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `messanger`
--

-- --------------------------------------------------------

--
-- Table structure for table `amdin_msg`
--

CREATE TABLE `amdin_msg` (
  `msg_id` int(11) NOT NULL,
  `msg_sender_name` varchar(100) NOT NULL,
  `msg_receiver_name` varchar(100) NOT NULL,
  `msg_content` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `msg_status` varchar(50) NOT NULL,
  `msg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `msg_id` int(11) NOT NULL,
  `sender_username` varchar(100) NOT NULL,
  `receiver_username` varchar(100) NOT NULL,
  `msg_content` varchar(200) NOT NULL,
  `msg_status` text NOT NULL,
  `msg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`msg_id`, `sender_username`, `receiver_username`, `msg_content`, `msg_status`, `msg_date`) VALUES
(38, 'Ariyat Sinha', 'Tushar hossen', 'hi i am tushar am a student at bangladesh polytechnic institute', 'Read', '2019-07-27 07:43:14'),
(39, 'Ariyat Sinha', 'Tushar hossen', 'hi i am tushar am a student at bangladesh polytechnic institute', 'Read', '2019-07-27 07:44:06'),
(40, 'Ariyat Sinha', 'Tushar hossen', 'hi i am tushar am a student at bangladesh polytechnic institute', 'Read', '2019-07-27 08:13:25'),
(41, 'tushar ahmed', 'tushar ahmed', 'dghdgb', 'Read', '2019-09-07 15:14:12'),
(42, 'Ariyat Sinha', 'tushar ahmed', 'hello', 'Read', '2019-09-24 16:45:42'),
(43, 'Ariyat Sinha', 'Tushar hossen', 'hello', 'Read', '2019-09-24 16:48:11'),
(44, 'Ariyat Sinha', 'Tushar hossen', 'hello', 'Read', '2019-09-24 16:48:19'),
(45, 'tushar ahmed', 'tushar ahmed', 'vbvbvc', 'Read', '2019-10-19 04:04:26'),
(46, 'tushar ahmed', 'tushar ahmed', 'ccccccccccccccc', 'Read', '2019-10-19 04:04:59'),
(47, 'tushar ahmed', 'Tushar hossen', 'gggjh', 'Read', '2019-10-19 04:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `friend_msg`
--

CREATE TABLE `friend_msg` (
  `msg_id` int(11) NOT NULL,
  `msg_sender_name` varchar(100) NOT NULL,
  `msg_receiver_name` varchar(100) NOT NULL,
  `msg_content` text NOT NULL,
  `msg_status` varchar(50) NOT NULL,
  `msg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `country` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `country`, `gender`, `login`, `image`) VALUES
(2, 'Ariyat', 'Sinha', 'rt.mdtushar@gmail.com', '123', 'Bangladesh', 'Male', 'Online', 'image/avater2.png'),
(3, 'tushar', 'ahmed', 'tushar@gmail.com', '12345', 'India', 'Male', 'Online', 'image/avater1.jpg'),
(4, 'Tushar', 'hossen', 'bappyahmed@gmail.com', '123', 'Bangladesh', 'Male', 'Online', 'image/avater2.png'),
(5, 'Bappy ', 'ahmed', 'itbari@gmail.com', '12', 'USA', 'Male', 'Online', 'image/avater1.jpg'),
(6, 'tushar', 'ahmed', 'tushar@gmail.com', '123', 'Bangladesh', 'Male', 'Online', 'image/avater1.jpg'),
(7, 'Suvro', 'hossen', 'Ariayatsinha@gmail.com', '123', 'Bangladesh', 'Male', 'Offline', 'image/avater2.png'),
(8, 'Ovi', 'hossen', 'ovi@gmail.com', '123', 'India', 'Male', 'Offline', 'image/avater2.png'),
(9, 'tushar', 'ahmed', 'tushar@gmail.com', '123456', 'Bangladesh', 'Male', 'Online', 'image/avater2.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amdin_msg`
--
ALTER TABLE `amdin_msg`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `friend_msg`
--
ALTER TABLE `friend_msg`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amdin_msg`
--
ALTER TABLE `amdin_msg`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `friend_msg`
--
ALTER TABLE `friend_msg`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
