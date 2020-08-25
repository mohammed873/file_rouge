-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2020 at 02:07 AM
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
(5, 1, 19, 'mohammed', 'melhachimi514@gmail.com', 'Nursing care', '12PM TO 2PM', 'vhfvhfvf', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `message_id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `reciever` int(11) NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`message_id`, `sender`, `reciever`, `message`, `date`) VALUES
(1, 1, 19, 'hi doctor admin0', '2020-08-17 14:02:46'),
(2, 19, 1, 'hi', '2020-08-17 14:02:50'),
(3, 7, 19, 'hi doctor my name is ahmed', '2020-08-17 14:03:59'),
(4, 1, 19, 'hi doctor salwa sorry to bother you but i am so sick and i need to see , that medicinehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mevvvvvvhi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well me which you gave me last time did not work well me', '2020-08-18 13:43:04'),
(5, 1, 19, 'hi doctor salwa sorry to bother you but i am so sick and i need to see , that medicinehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mevvvvvvhi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well me which you gave me last time did not work well me', '2020-08-18 13:43:24'),
(6, 1, 19, 'hi doctor salwa sorry to bother you but i am so sick and i need to see , that medicinehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mevvvvvvhi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well mehi doctor salwa sorry to bother you but i am so sick and i need to see , that medicine which you gave me last time did not work well me which you gave me last time did not work well me', '2020-08-18 13:44:02'),
(7, 1, 19, 'knknknkn', '2020-08-18 13:47:54'),
(8, 1, 19, 'jnfjnfjnf', '2020-08-18 13:49:27'),
(9, 1, 19, 'knknknkn', '2020-08-18 13:50:24'),
(10, 1, 19, 'jdjidjd', '2020-08-18 13:51:34');

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
(8, 'admin', 'admin@gmail.com', '$2y$10$65osirDR2nNLE.h2xBv5OuTeWvV5SudAt7RuyzGdIaQc4JN14zJMK', 'images.jpg', 'admin'),
(9, 'ayoub', 'ayoub@gmai.com', '$2y$10$eMtpbv9UCU6ZBVwmIAzfoO5Z.YXVNOCVYiDwCt2FwsBWuurBTxzbq', 'images.jpg', 'user'),
(11, 'ahmed', 'ahmekd@gmail.com', '$2y$10$dwBKgm1qVJ2Wp76bVqys6uraff/hpEw12fxFIVG4ut/9psPsJexka', 'hh2.jpg', 'user'),
(12, 'mohammed', 'admin1@gmail.com', '$2y$10$TwJCWJSg63hk7qeu1scn9e4.mDZuq7NXTk9nXCqHlQTsQnOetHmNW', 'hh.jpg', 'user'),
(13, 'salwa', 'salwa@gmail.com', '$2y$10$NvzcxZqMfKK7vv7Gcyq2huOnz0gmGToDOCv8ZKD6xYaQlv61LcF9u', 'kappel-chair.jpg', 'admin'),
(14, 'laila', 'laila@gmail.com', '$2y$10$TzYz9IAkTY70kd4uDTj8PeF1mmWhlyd6IRsxvuwJXI/A9PGYHV.8C', 'images.jpg', 'admin'),
(15, 'ikram', 'ikram@gmail.com', '$2y$10$Xdz1Xsb28klf.PGEsWVQRO.VQEAUzQTnfi.RhQ5GmVZHa7RzWP7E.', '1.jpg', 'user'),
(16, 'admin2', 'admin2@gmail.com', '$2y$10$t.z9QbGqXjzbFYYNXO5cV.GYAVdU2MigxN7D8DlMUi6Gm9QDvuy86', 'hh.jpg', 'Secertaire'),
(17, 'admin3', 'admin3@gmail.com', '$2y$10$70cgS2ED3YFKno.aMDQjZO06ZGZR9oq9dPoYW7P18ehbFpZCEPgM6', 'kappel-chair.jpg', 'social assistance'),
(18, 'maryem', 'maryem@gmail.com', '$2y$10$ij6nM9t1o//wNupbJDvwB.AO0Mf1GtbJzTQbC7jrkO2sm2tFgrV3C', '2.jpg', 'admin'),
(19, 'admin0', 'admin0@gmail.com', '$2y$10$y8gRAeKstpMkfv0xultX7OZxHQoLYYrIepobC6Bdb7JFjFtG8Bc9G', 'h.jpg', 'doctor');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
