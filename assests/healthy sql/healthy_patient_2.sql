-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2020 at 02:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthy_patient`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_picture` varchar(200) NOT NULL,
  `admin_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_picture`, `admin_status`) VALUES
(1, 'salwa', 'salwa@gmail.com', '$2y$10$c2UJZe35m4iFKWkqcNQcWOpLKVkp6fnUboEmXv.PBsPilZPxmPkxO', 'luna.jpg', 'doctor'),
(2, 'mohammed', 'mohammed@gmail.com', '$2y$10$0yGGfJfIQM9clkMWdeyXguE/5OELYPV6payIJerV6Dh7kiVOONw5e', 'potter.jpg', 'Secertaire');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `service_type` varchar(250) NOT NULL,
  `time` varchar(50) NOT NULL,
  `message` varchar(250) NOT NULL,
  `appointement_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `user_id`, `doctor_id`, `user_name`, `user_email`, `service_type`, `time`, `message`, `appointement_status`) VALUES
(1, 1, 8, 'mohammed', 'melhachimi514@gmail.com', 'Doctor care', '8 AM TO 10AM', 'hi doctor i really need your help', 'Accepted'),
(2, 1, 13, 'mohammed', 'melhachimi514@gmail.com', 'Doctor care', '10 AM TO 12PM', 'hi doctor salwa it is me again i really need your help', 'On Hold'),
(3, 1, 19, 'mohammed', 'melhachimi514@gmail.com', 'Nursing care', '12PM TO 2PM', 'dhhbhbhdbd', 'Accepted'),
(4, 1, 19, 'mohammed', 'melhachimi514@gmail.com', 'Nursing care', '2PM TO 4PM', 'hi doctor salwa', 'On Hold'),
(5, 1, 19, 'mohammed', 'melhachimi514@gmail.com', 'Nursing care', '12PM TO 2PM', 'vhfvhfvf', 'Accepted'),
(6, 1, 0, 'mohammed', 'melhachimi514@gmail.com', 'Doctor care', '10 AM TO 12PM', 'dnddj', 'On Hold'),
(7, 1, 0, 'mohammed', 'melhachimi514@gmail.com', 'Medical social services', '4PM TO 6PM', 'test', 'Declined'),
(8, 1, 19, 'mohammed', 'melhachimi514@gmail.com', 'Pharmaceutical services', '8 AM TO 10AM', 'hhh', 'Accepted'),
(9, 1, 21, 'mohammed', 'med@gmail.com', 'Doctor care', '2PM TO 4PM', 'jjjjj', 'On Hold');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `sender_name` varchar(11) NOT NULL,
  `recevier_id` int(11) NOT NULL,
  `recevier_name` varchar(11) NOT NULL,
  `message` text NOT NULL,
  `message_status` varchar(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`message_id`, `sender_id`, `sender_name`, `recevier_id`, `recevier_name`, `message`, `message_status`, `date`) VALUES
(1, 7, 'ahmed', 21, 'salwa', 'hi doctor my name is ahmed', 'unread', '2020-08-21 08:07:53'),
(2, 21, 'salwa', 7, 'ahmed', 'hi dear ahmed my name is doctor salwa how i can help you', '', '2020-08-21 08:14:29'),
(3, 21, 'salwa', 7, 'ahmed', '?', '', '2020-08-21 08:16:17'),
(4, 21, 'salwa', 7, 'ahmed', 'hi', 'unread&', '2020-08-21 08:18:35'),
(5, 1, 'mohammed', 21, 'salwa', 'hi doctor salwa my name is mohammed', 'unread', '2020-08-21 08:38:35'),
(6, 21, 'salwa', 1, 'mohammed', 'hi mohammed how i can help you', 'unread', '2020-08-21 08:39:37'),
(7, 1, 'mohammed', 21, 'salwa', 'that medecin you gave me is no longer working', 'unread', '2020-08-21 09:04:27'),
(8, 0, '<br />\r\n<b>', 1, 'mohammed', 'mmm oki ', 'unread', '2020-08-21 09:05:19'),
(9, 21, 'salwa', 1, 'mohammed', 'oki', 'unread', '2020-08-21 09:07:36'),
(10, 21, 'salwa', 1, 'mohammed', 'awadi hadxi bzaf 3liya wlah', 'unread', '2020-08-21 09:20:49'),
(11, 21, 'salwa', 1, 'mohammed', 'test', 'unread', '2020-08-21 09:24:30'),
(12, 21, 'salwa', 1, 'mohammed', 'zqfin q qy;qn ', 'unread', '2020-08-22 19:26:20'),
(13, 21, 'salwa', 1, 'mohammed', 'wafin asat', 'unread', '2020-08-22 19:26:31'),
(14, 1, 'mohammed', 21, 'salwa', 'hi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well me', 'unread', '2020-08-24 00:26:05'),
(15, 0, '', 1, 'mohammed', 'hi med', 'unread', '2020-08-24 23:14:34'),
(16, 0, 'salwa', 1, 'mohammed', 'test', 'unread', '2020-08-24 23:17:01'),
(17, 1, 'mohammed', 0, '', 'btbtbtbt', 'unread', '2020-08-24 23:17:53'),
(18, 1, 'mohammed', 1, '<br />\r\n<b>', 'oki', 'unread', '2020-08-24 23:20:22'),
(19, 1, 'mohammed', 1, '<br />\r\n<b>', 'oki', 'unread', '2020-08-24 23:21:04'),
(20, 1, 'mohammed', 1, 'salwa', 'jnfjnfjnf', 'unread', '2020-08-24 23:22:01'),
(21, 1, 'salwa', 1, 'mohammed', 'ok', 'unread', '2020-08-24 23:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `user_id`, `firstname`, `email`, `comment`) VALUES
(1, 1, 'mohammed elhachimi', 'melhachimi514@gmail.com', 'i was hoping to see a list of doctors to see when taking an appointement'),
(2, 1, 'mohammed elhachimi', 'melhachimi514@gmail.com', 'you need to fix that website'),
(3, 1, 'mohammed elhachimi', 'melhachimi514@gmail.com', 'duhfuhufhfuhu');

-- --------------------------------------------------------

--
-- Table structure for table `medical_notes`
--

CREATE TABLE `medical_notes` (
  `note_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(12) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medical_notes`
--

INSERT INTO `medical_notes` (`note_id`, `patient_id`, `patient_name`, `note`) VALUES
(1, 0, '', ''),
(2, 0, '<br />\r\n<b>N', 'test'),
(3, 0, '', ''),
(4, 0, '', ''),
(5, 0, '', ''),
(6, 0, '', ''),
(7, 0, '', ''),
(8, 0, '', ''),
(9, 1, 'mohammed', 'test 2'),
(10, 1, 'mohammed', 'knknk'),
(11, 1, 'mohammed', 'i that he needs to cange his behaviour and also his sjchfjhjchjdhjdhdjhdjhdjhdchbdchgdgvdhcvdcghvcgv'),
(12, 7, 'ahmed', 'ahmed is a good patient'),
(13, 7, 'ahmed', 'ahmed is a good patient'),
(14, 7, 'ahmed', 'knknk'),
(15, 7, 'ahmed', 'test 2'),
(16, 7, 'ahmed', 'test 2'),
(17, 1, 'mohammed', 'test'),
(18, 1, 'mohammed', 'final test'),
(19, 15, 'ikram', 'nice girl');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(250) NOT NULL,
  `user_picture` varchar(200) NOT NULL,
  `user_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_picture`, `user_status`) VALUES
(1, 'mohammed', 'med@gmail.com', '$2y$10$7Vv.gglK7hb9IxpjgCv4MuyGq8oadYSeMTbujF7UwZB9DeMDYCQqO', 'kappel-chair.jpg', 'user'),
(7, 'ahmed', 'ahmed@gmail.com', '$2y$10$TekJ2CBn5uN1jK1hhFzZXeqj5ghSrXYHqisKYXEMaS93CAkneGVPK', 'Angry-Tokyo-Ghoul-HD-Mobile-Wallpaper.jpg', 'user'),
(9, 'ayoub', 'ayoub@gmai.com', '$2y$10$eMtpbv9UCU6ZBVwmIAzfoO5Z.YXVNOCVYiDwCt2FwsBWuurBTxzbq', 'images.jpg', 'user'),
(11, 'ahmed', 'ahmekd@gmail.com', '$2y$10$dwBKgm1qVJ2Wp76bVqys6uraff/hpEw12fxFIVG4ut/9psPsJexka', 'hh2.jpg', 'user'),
(12, 'mohammed', 'admin1@gmail.com', '$2y$10$TwJCWJSg63hk7qeu1scn9e4.mDZuq7NXTk9nXCqHlQTsQnOetHmNW', 'hh.jpg', 'user'),
(15, 'ikram', 'ikram@gmail.com', '$2y$10$Xdz1Xsb28klf.PGEsWVQRO.VQEAUzQTnfi.RhQ5GmVZHa7RzWP7E.', '1.jpg', 'user'),
(24, 'mohammed', 'mohammed@gmail.com', '$2y$10$ybStGztkUVywcGDi6jHG3uDOwRXhcWd4rTkBDnpDR8QJVEUx78Hfa', 'rone.jpg', 'patient');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `medical_notes`
--
ALTER TABLE `medical_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medical_notes`
--
ALTER TABLE `medical_notes`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
