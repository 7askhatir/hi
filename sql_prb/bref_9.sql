-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 19 mai 2020 à 01:52
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bref_9`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `ID_CAT` int(11) NOT NULL,
  `DESCR` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `ID` varchar(250) NOT NULL,
  `NOM` varchar(250) DEFAULT NULL,
  `PRENOM` varchar(250) DEFAULT NULL,
  `EMAIL` varchar(250) DEFAULT NULL,
  `PASSWORD` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `ID_COMMANDE` int(11) NOT NULL,
  `ID` varchar(250) NOT NULL,
  `DATE_COMMANDE` timestamp NOT NULL DEFAULT current_timestamp(),
  `ID_PFIX` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `contenir`
--

CREATE TABLE `contenir` (
  `ID_PRD` int(11) NOT NULL,
  `ID_COMMANDE` int(11) NOT NULL,
  `QTE` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `contenir_panierfix`
--

CREATE TABLE `contenir_panierfix` (
  `ID_PRD` int(11) NOT NULL,
  `ID_PFIX` int(11) NOT NULL,
  `QTE` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `panier_fixe`
--

CREATE TABLE `panier_fixe` (
  `ID_PFIX` varchar(250) NOT NULL,
  `DATE_PANIER` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `payement`
--

CREATE TABLE `payement` (
  `ID` varchar(250) NOT NULL,
  `ID_PAYEMENT` int(11) NOT NULL,
  `ID_PAYMENT` int(11) DEFAULT NULL,
  `NUM_CART` int(11) DEFAULT NULL,
  `DATE_EXP` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `ID_PRD` int(11) NOT NULL,
  `NOM` varchar(250) DEFAULT NULL,
  `QTE_MAX` float DEFAULT NULL,
  `IMAGE` longblob DEFAULT NULL,
  `Nom_cat` varchar(30) DEFAULT NULL,
  `PRIX` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`ID_PRD`, `NOM`, `QTE_MAX`, `IMAGE`, `Nom_cat`, `PRIX`) VALUES
(1, 'Oignon 1Kg', 5, 0x312e6a7067, 'Legumes_et_fruites', 16),
(2, 'Oignon 1Kg', 5, 0x312e6a7067, 'Legumes_et_fruites', 16),
(3, 'Oignon 1Kg', 5, 0x312e6a7067, 'Legumes_et_fruites', 16),
(4, 'Banane 1Kg', 5, 0x362e6a7067, 'Legumes_et_fruites', 12),
(5, 'Pomme 1Kg', 5, 0x322e6a7067, 'Legumes_et_fruites', 10.5),
(6, 'Poivron 1Kg', 5, 0x332e6a7067, 'Legumes_et_fruites', 8.45),
(7, 'Haricot 750g', 5, 0x392e6a7067, 'Legumes_et_fruites', 13),
(8, 'Mange 1Kg', 5, 0x352e6a7067, 'Legumes_et_fruites', 12),
(9, 'Melon Ananas', 5, 0x31302e6a7067, 'Legumes_et_fruites', 6.95),
(10, 'Pasteque Locale', 5, 0x31362e6a7067, 'Legumes_et_fruites', 7),
(11, 'Pomme de Terre  1Kg', 5, 0x31332e6a7067, 'Legumes_et_fruites', 4.5),
(12, 'Ananace 1Kg', 5, 0x372e6a7067, 'Legumes_et_fruites', 21.45),
(13, 'Pois 750g', 5, 0x382e6a7067, 'Legumes_et_fruites', 12.25),
(14, 'Kiwi  1Kg', 5, 0x342e6a7067, 'Legumes_et_fruites', 22),
(15, 'Orange 1Kg', 5, 0x31312e6a7067, 'Legumes_et_fruites', 8),
(16, 'Courgette 1Kg', 5, 0x31382e6a7067, 'Legumes_et_fruites', 9.15),
(17, 'Poire Importee 1kg', 5, 0x31322e6a7067, 'Legumes_et_fruites', 13),
(18, 'Potiron 1Kg', 5, 0x31342e6a7067, 'Legumes_et_fruites', 6.55),
(19, 'Raisin Blanc Local 1 Kg', 5, 0x31372e6a7067, 'Legumes_et_fruites', 13),
(20, 'Chou-Fleur 1Kg', 5, 0x31352e6a7067, 'Legumes_et_fruites', 11),
(21, 'Ain Atlas 6 x 1L', 5, 0x312e6a7067, 'Eau_et_boissons', 17),
(22, 'Lait Central 6 x 1L', 5, 0x322e6a7067, 'Eau_et_boissons', 22.5),
(23, 'Atay Sultan 330g', 5, 0x332e6a7067, 'Eau_et_boissons', 24),
(24, 'Cocacola  1L', 5, 0x342e6a7067, 'Eau_et_boissons', 5.5),
(25, 'Sidi Ali 6 x 33Cl', 5, 0x352e6a7067, 'Eau_et_boissons', 13.95),
(26, 'YoPro 500ml ', 5, 0x362e6a7067, 'Eau_et_boissons', 9),
(27, 'Gerves Lait 1L ', 5, 0x372e6a7067, 'Eau_et_boissons', 13),
(28, 'Sprite 8 x 1L ', 5, 0x382e6a7067, 'Eau_et_boissons', 33),
(29, 'Burn 12 25Cl', 5, 0x392e6a7067, 'Eau_et_boissons', 74.95),
(30, 'Ciel 6 x 1.5L', 5, 0x31302e6a7067, 'Eau_et_boissons', 9),
(31, 'Pulpy 12 x 25Cl', 5, 0x31312e6a7067, 'Eau_et_boissons', 23.25),
(32, 'Atay Lmossam 250g', 5, 0x31322e6a7067, 'Eau_et_boissons', 9),
(33, 'Jus Ananas 1L', 5, 0x31332e6a7067, 'Eau_et_boissons', 7.95),
(34, 'Pulpy 8 x 1L', 5, 0x31342e6a7067, 'Eau_et_boissons', 63.45),
(35, 'Jus Orange1L', 5, 0x31352e6a7067, 'Eau_et_boissons', 13),
(36, 'Sirops 75 Cl', 5, 0x31362e6a7067, 'Eau_et_boissons', 14.95),
(37, 'Lait Vitahaliv 250g', 5, 0x31372e6a7067, 'Eau_et_boissons', 15),
(38, 'Nido 2kg ', 5, 0x31382e6a7067, 'Eau_et_boissons', 43.45),
(39, 'Couscous 1kg ', 5, 0x312e6a7067, 'Cuisine_et_patisserie', 13),
(40, 'Ble Ebly 750g ', 5, 0x322e6a7067, 'Cuisine_et_patisserie', 21.45),
(41, 'Oil Afia 2L ', 5, 0x332e6a7067, 'Cuisine_et_patisserie', 25.95),
(42, 'cafe L OR 1Kg ', 5, 0x342e6a7067, 'Cuisine_et_patisserie', 47.45),
(43, 'Rozana Fol 1kg ', 5, 0x352e6a7067, 'Cuisine_et_patisserie', 12),
(44, 'Comflakes Schar 250g ', 5, 0x362e6a7067, 'Cuisine_et_patisserie', 23.25),
(45, 'Miel 200Ml ', 5, 0x372e6a7067, 'Cuisine_et_patisserie', 11),
(46, 'Fusilli bio 2kg ', 5, 0x382e6a7067, 'Cuisine_et_patisserie', 41.95),
(47, 'Solss x 3  ', 5, 0x392e6a7067, 'Cuisine_et_patisserie', 23),
(48, 'Farina Schar 1kg ', 5, 0x31302e6a7067, 'Cuisine_et_patisserie', 12.45),
(49, 'Flon Royal ', 5, 0x31312e6a7067, 'Cuisine_et_patisserie', 6.5),
(50, 'Chocomate Aigbel 330g ', 5, 0x31322e6a7067, 'Cuisine_et_patisserie', 16.45);

-- --------------------------------------------------------

--
-- Structure de la table `type_payement`
--

CREATE TABLE `type_payement` (
  `ID_PAYEMENT` int(11) NOT NULL,
  `DESCR` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`ID_COMMANDE`),
  ADD KEY `FK_PASSER` (`ID`);

--
-- Index pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD PRIMARY KEY (`ID_PRD`,`ID_COMMANDE`),
  ADD KEY `FK_CONTENIR` (`ID_COMMANDE`);

--
-- Index pour la table `contenir_panierfix`
--
ALTER TABLE `contenir_panierfix`
  ADD PRIMARY KEY (`ID_PRD`,`ID_PFIX`);

--
-- Index pour la table `payement`
--
ALTER TABLE `payement`
  ADD KEY `FK_EFFECTUER` (`ID`),
  ADD KEY `FK_REGLER` (`ID_PAYEMENT`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`ID_PRD`);

--
-- Index pour la table `type_payement`
--
ALTER TABLE `type_payement`
  ADD PRIMARY KEY (`ID_PAYEMENT`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `ID_PRD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_PASSER` FOREIGN KEY (`ID`) REFERENCES `client` (`ID`);

--
-- Contraintes pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD CONSTRAINT `FK_CONTENIR` FOREIGN KEY (`ID_COMMANDE`) REFERENCES `commande` (`ID_COMMANDE`),
  ADD CONSTRAINT `FK_CONTENIR2` FOREIGN KEY (`ID_PRD`) REFERENCES `produit` (`ID_PRD`);

--
-- Contraintes pour la table `contenir_panierfix`
--
ALTER TABLE `contenir_panierfix`
  ADD CONSTRAINT `FK_CONTENIR_PanierFIX` FOREIGN KEY (`ID_PRD`) REFERENCES `produit` (`ID_PRD`);

--
-- Contraintes pour la table `payement`
--
ALTER TABLE `payement`
  ADD CONSTRAINT `FK_EFFECTUER` FOREIGN KEY (`ID`) REFERENCES `client` (`ID`),
  ADD CONSTRAINT `FK_REGLER` FOREIGN KEY (`ID_PAYEMENT`) REFERENCES `type_payement` (`ID_PAYEMENT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
