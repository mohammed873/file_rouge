-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2020 at 02:45 PM
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
(1, 'med', 'med@gmail.com', '$2y$10$HdIdVtrMhbxqasOw5L6ocuVLhcIY8HVqW/heNyc3WnKEPF0WQJwne', 'hhhh.png', 'user'),
(2, 'salwa', 'salwa@gmail.com', 'salwa', 'downolad.png', 'admin'),
(4, 'ayoub', 'ayoub@gmail.com', '$2y$10$6Dp4gtH12n94rdSm7xyFG.GxhD1KAbfFvjjBi7ezbVGj7SitJr.NS', 'Annotation 2020-05-15 151329.png', 'user'),
(5, 'mohammed', 'melhachimi514@gmail.com', '$2y$10$qssIeYYn7UbJFdU6RvX.w.y1aqqX3BsmTFze3ITeFMC0aOn95cFdq', 'Annotation 2020-05-15 151329.png', 'user'),
(6, 'mohammed', 'melhachimi54@gmail.com', '$2y$10$SaG4Oixkp/igXS65nYqSburdlSHMrDKl7BQXTR80pvms0ushKmHzu', 'Annotation 2020-05-15 151329.png', 'user'),
(7, 'jjjj', 'ji@gmail.com', '$2y$10$hCM1HBmslX4vuFHld5IA3.reFRLz87I9bHvautbQI0HlrKcCIsfK2', 'Annotation 2020-05-15 151329.png', 'user'),
(8, 'youssef', 'u@gmail.com', '$2y$10$jSLoUgGKX7e/f/ZaEi1Kxe0LSLvfUVsxweCvLhuOqlbXLQmZ47iBW', 'Annotation 2020-05-15 151329.png', 'user'),
(9, 'hhh', 'hgghh@gmail.com', '$2y$10$ylVu0a9W/k26jjYpqF98b.JfnawRxN43D7VAata83gSt3ByDJJc1O', 'Annotation 2020-05-15 151329.png', 'user'),
(10, 'hhhhlf', 'fhfnfbf@gmail.com', '$2y$10$YrJYa4ePEC4aCmOgWu9x.ecURUuj.o4O/AqAgNboVndAK/phOFFKa', 'Annotation 2020-05-15 151329.png', 'user'),
(11, 'hhsgshs', 'kkkkk@gmail.com', '$2y$10$e4Sna4Tw3l8Ro4rIHWfum.ZinmCAYljBco8CegLgX.kY6Xpm1uUne', 'Annotation 2020-05-15 151329.png', 'user'),
(12, 'hi', 'hid@gmail.com', '$2y$10$znKScuk1xD3N7txDZtyL2OFzJdXl6DNnIfO0IaQBmZk2eWHCdMB9W', 'kappel-chair.jpg', 'user');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
