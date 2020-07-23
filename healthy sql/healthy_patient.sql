-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 23 juil. 2020 à 17:10
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `healthy_patient`
--

-- --------------------------------------------------------

--
-- Structure de la table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `service_type` varchar(250) NOT NULL,
  `time` varchar(50) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `user_name`, `user_email`, `service_type`, `time`, `message`) VALUES
(1, 'salwa', 'salouaelabyad@gmail.com', '3', '0000-00-00', 'gelo'),
(2, 'elabyad', 'salouaelabyad@gmail.com', '2', '0000-00-00', 'kurgbk'),
(3, 'ikram', 'ikram@gmail.com', '4', '0000-00-00', 'ergfeks'),
(5, 'ayoub', 'ayoub@gmail.com', 'Doctor care', '0000-00-00', 'helo'),
(6, 'hisham', 'hiham@gmail.com', 'Doctor care', '0000-00-00', 'hu'),
(7, 'hicham', 'hiham@gmail.com', 'Doctor care', '0000-00-00', 'hii'),
(8, 'sal', 'sal@gmail.com', 'Nursing care', '0000-00-00', 'hii'),
(9, 'elabyad', 'sal@gmail.com', 'Nursing care', '0000-00-00', 'azazaza'),
(10, 'rachida', 'rachida@gmail.com', 'Nursing care', '0000-00-00', 'salut'),
(11, 'mohammed', 'mohamed@gmail.com', 'Doctor care', '0000-00-00', 'helo doctor'),
(13, 'wissal', 'wissal@gmail.com', 'Medical social services', '10 AM TO 12PM', 'hii doctor');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`contact_id`, `firstname`, `email`, `comment`) VALUES
(1, 'saloua', 'salouaelabyad@gmail.com', 'helo'),
(9, 'kamilia', 'kamilia@gmail.com', 'doctor care'),
(10, 'mohammed', 'mohammed@gmail.com', 'can you call me');

-- --------------------------------------------------------

--
-- Structure de la table `users`
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
-- Déchargement des données de la table `users`
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
(12, 'hi', 'hid@gmail.com', '$2y$10$znKScuk1xD3N7txDZtyL2OFzJdXl6DNnIfO0IaQBmZk2eWHCdMB9W', 'kappel-chair.jpg', 'user'),
(13, 'saloua', 'salouaelabyad@gmail.com', '$2y$10$L8fmm6hl1je.iaPziLGLXOLW/m9zqSpKdulJYJ2KRcPE09UF/AnlK', 'WhatsApp Image 2020-05-08 at 18.17.27.jpeg', 'user'),
(14, 'wissal', 'wisal@gmail.com', '$2y$10$0xN/KdsyIgAQBAUZ7SuyCupgdQ4AgHHP.keNfoSDT15gAST/Avctq', '22.jpg', 'user');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
