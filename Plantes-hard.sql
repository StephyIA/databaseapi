-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 09 mars 2022 à 18:47
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Plantes-hard`
--

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `id-client` varchar(10) NOT NULL,
  `Nom-client` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Client`
--

INSERT INTO `Client` (`id-client`, `Nom-client`) VALUES
('C1', 'Stéphane  ZANLE'),
('C2', 'Océane');

-- --------------------------------------------------------

--
-- Structure de la table `Commandes`
--

CREATE TABLE `Commandes` (
  `id-commande` varchar(10) NOT NULL,
  `id-client` varchar(10) NOT NULL,
  `id-produit` varchar(10) NOT NULL,
  `Date-commande` date NOT NULL,
  `quantité-commande` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Commandes`
--

INSERT INTO `Commandes` (`id-commande`, `id-client`, `id-produit`, `Date-commande`, `quantité-commande`) VALUES
('cmd1', 'C1', 'P1', '2022-03-09', 10),
('cmd2', 'C2', 'P2', '2022-03-09', 15);

-- --------------------------------------------------------

--
-- Structure de la table `nom-produit`
--

CREATE TABLE `nom-produit` (
  `id-plante` varchar(10) NOT NULL,
  `nom-plante` varchar(25) NOT NULL,
  `Qiuantité-produit` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `nom-produit`
--

INSERT INTO `nom-produit` (`id-plante`, `nom-plante`, `Qiuantité-produit`) VALUES
('P1', 'Sansevière', 200),
('P2', 'Aloès', 100),
('P3', 'Pilea', 70);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`id-client`);

--
-- Index pour la table `Commandes`
--
ALTER TABLE `Commandes`
  ADD PRIMARY KEY (`id-commande`);

--
-- Index pour la table `nom-produit`
--
ALTER TABLE `nom-produit`
  ADD PRIMARY KEY (`id-plante`),
  ADD UNIQUE KEY `id-plante` (`id-plante`),
  ADD UNIQUE KEY `nom-plante` (`nom-plante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
