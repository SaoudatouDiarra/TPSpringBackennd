-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 12 oct. 2021 à 19:27
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `odk_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `apprenant`
--

CREATE TABLE `apprenant` (
  `id` bigint(20) NOT NULL,
  `age` int(11) NOT NULL,
  `apprenant_statut` varchar(255) DEFAULT NULL,
  `date_creation` date DEFAULT NULL,
  `date_modification` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `telephone` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `apprenant`
--

INSERT INTO `apprenant` (`id`, `age`, `apprenant_statut`, `date_creation`, `date_modification`, `email`, `genre`, `login`, `nom`, `password`, `prenom`, `telephone`) VALUES
(1, 24, 'ACTIVE', '2021-10-12', '2021-10-12', 'sassia@gmail.com', 'femme', 'Sassi', 'Diarra', 'abc', 'Saoudatou', 565),
(2, 24, 'ACTIVE', '2021-10-12', '2021-10-12', 'fatou@gmail.com', 'Femme', 'fatou', 'fatou', 'abc', 'diagouraga', 6788),
(3, 26, 'DESACTIVE', '2021-10-12', '2021-10-12', 'ibrahimsanogo@gmail.com', 'Homme', 'IB', 'Sanogo', 'azerty', 'Ibrahima', 75906885);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `apprenant`
--
ALTER TABLE `apprenant`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `apprenant`
--
ALTER TABLE `apprenant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
