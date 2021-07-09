-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 09 juil. 2021 à 13:10
-- Version du serveur : 5.7.33
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `oto`
--

-- --------------------------------------------------------

--
-- Structure de la table `accesoire`
--

CREATE TABLE `accesoire` (
  `acces_id` int(20) NOT NULL,
  `acces_nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acces_prix` int(20) NOT NULL,
  `acces_descritpion` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `cli_id` int(20) NOT NULL,
  `cli_nom` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cli_prenom` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cli_adresse` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cli_d_naissance` date NOT NULL,
  `cli_tel` int(30) NOT NULL,
  `cli_mail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `com_id` int(10) NOT NULL,
  `com_d_achat` date NOT NULL,
  `com_paie` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_cli_id` int(10) NOT NULL,
  `com_sal_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `salarie`
--

CREATE TABLE `salarie` (
  `sal_id` int(20) NOT NULL,
  `sal_nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sal_prenom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sal_phone` int(20) NOT NULL,
  `sal_date_naissance` date NOT NULL,
  `sal_mail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sal_poste` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sal_adresse` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `serv_id` int(20) NOT NULL,
  `serv_prix` int(100) NOT NULL,
  `serv_nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serv_description` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `véhicule`
--

CREATE TABLE `véhicule` (
  `véhi_id` int(20) NOT NULL,
  `véhi_couleur` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `véhi_prix` int(20) NOT NULL,
  `véhi_marque` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `véhi_état` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `véhi_age` date NOT NULL,
  `véhi_références` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accesoire`
--
ALTER TABLE `accesoire`
  ADD PRIMARY KEY (`acces_id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`cli_id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `com_cli_id` (`com_cli_id`) USING BTREE,
  ADD KEY `com_sal_id` (`com_sal_id`);

--
-- Index pour la table `salarie`
--
ALTER TABLE `salarie`
  ADD PRIMARY KEY (`sal_id`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`serv_id`);

--
-- Index pour la table `véhicule`
--
ALTER TABLE `véhicule`
  ADD PRIMARY KEY (`véhi_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `com_id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
