-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 18 déc. 2024 à 22:02
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `website_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` float NOT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `title`, `category`, `price`, `image_path`) VALUES
(4, 'robe', 'Jeans', 120, 'assets/product_images/9883650_3.jpg'),
(5, 'robe', 'Jeans', 120, 'assets/product_images/10050211_2.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `ID` int(1) NOT NULL,
  `title` varchar(55) NOT NULL,
  `price` float NOT NULL,
  `category` varchar(255) NOT NULL,
  `image_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`ID`, `title`, `price`, `category`, `image_path`) VALUES
(11, 'T-shirt nike', 60, 't-shirts', 'assets/product_images/T-Shirt.jpeg'),
(13, 'jean 100', 200, 'Jeans', 'assets/product_images/Djean.jpeg'),
(14, 'jacket', 180, 'Jackets', 'assets/product_images/gillet.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registration_date` date NOT NULL DEFAULT current_timestamp(),
  `user_type` varchar(55) NOT NULL DEFAULT 'Normal_user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`ID`, `first_name`, `last_name`, `email`, `password`, `registration_date`, `user_type`) VALUES
(3, '654', 'sss', 'sasad@d.coma', 'pbkdf2:sha256:600000$FMTmBKbS2C8DCBnR$4010d75a137ea54c5151732042be749e59bb32ac4d6a44dc61c99d2ac073f898', '2024-09-06', ''),
(4, 'sal', 'sss', 'sasad@d.com', 'pbkdf2:sha256:600000$IzVYsW3I3jDPhLRk$00eabb7d18ffb84b4b814577952e83184960afa36d4a7df37c5787f76563b4ed', '2024-09-07', ''),
(6, 'sa', 'saa', 's@s.com', 'pbkdf2:sha256:600000$f7w2J9JEn4FSmzqo$b4ea37ee9bf6771f376d5d53c7dc8d137801b5432d76c5d1e153795531e76d4d', '2024-09-07', ''),
(8, 'sal', 'sss', 'sas@daa.com', 'pbkdf2:sha256:600000$sfhxgQWKrHTOSHy2$5b898173f2cee6ef562d34e3446b7251958dde62026523386f8d7692bfa313ba', '2024-09-12', 'Admin'),
(9, 'saif', 'iddin', 'saifgharbii28@gmail.com', 'pbkdf2:sha256:600000$ZP3WlcmTNR0c0WbC$4c9160f5d8ba3d2655005e648b9ac9404efc8a88fceda27519fa3e41ce77c7f0', '2024-09-12', 'Admin'),
(10, 'amin', 'all', 'amin@mail.com', 'pbkdf2:sha256:600000$bZQdC5Dzl6s8R2n5$77af02a10a3c20e4b03efcaaa3aff41ab19186c52f21df4a4e3698c76c427bca', '2024-09-13', 'Normal_user'),
(11, 'haith', 'em', 'haithem@mail.tn', 'pbkdf2:sha256:600000$8syvalobt5H0MU6a$65320197943dae3663870f45a5dc5676c7c637467fa7f45f44f69368a4a7a34d', '2024-09-14', 'Normal_user'),
(12, 'saifiddin', 'gharbi', 'seifeddine.gharbi@supcom.tn', 'pbkdf2:sha256:600000$fW1s8Z6ILhPwze1P$cec109effe80e0b2cbb0f2b9be428ef505ed3bf5603690983469dbb5c9648b9c', '2024-09-24', 'Normal_user'),
(13, 'saif', 'gharbi', 'saif@mail.com', 'pbkdf2:sha256:600000$kT05A1l6t09CTQG9$76ff692df34be14cbc4a48e3fbf21ddffbae278256507c6bb0dea9d80b7329ed', '2024-10-01', 'Admin'),
(14, 'saifiddin', 'gharbi', 'saifgharbii@gmail.com', 'pbkdf2:sha256:600000$xHoWZUNToEkvqZJI$10dee29eb5eb3d794048de964948d977395bbb9fa8bb65f09e8b9550d3534ff4', '2024-11-18', 'User'),
(15, 'saifiddin', 'gharbi', 'saif@gmail.com', 'pbkdf2:sha256:600000$nu9XoPDrPT98yvWW$9c5f216ad188b26b0df902e3d3668c49a859874751002fc6bf87959448dc6a9a', '2024-12-02', 'Normal_user');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
