-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 22 avr. 2020 à 19:56
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `omk_medas1920`
--

-- --------------------------------------------------------

--
-- Structure de la table `api_key`
--

DROP TABLE IF EXISTS `api_key`;
CREATE TABLE IF NOT EXISTS `api_key` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credential_hash` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_ip` varbinary(16) DEFAULT NULL COMMENT '(DC2Type:ip_address)',
  `last_accessed` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C912ED9D7E3C61F9` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `asset`
--

DROP TABLE IF EXISTS `asset`;
CREATE TABLE IF NOT EXISTS `asset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2AF5A5C5CC5DB90` (`storage_id`),
  KEY `IDX_2AF5A5C7E3C61F9` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `custom_vocab`
--

DROP TABLE IF EXISTS `custom_vocab`;
CREATE TABLE IF NOT EXISTS `custom_vocab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_set_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8533D2A5EA750E8` (`label`),
  KEY `IDX_8533D2A5960278D7` (`item_set_id`),
  KEY `IDX_8533D2A57E3C61F9` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `custom_vocab`
--

INSERT INTO `custom_vocab` (`id`, `item_set_id`, `owner_id`, `label`, `lang`, `terms`) VALUES
(1, NULL, 1, 'Type_produit', NULL, 'Boulangerie\nEpicerie\nProduitsHygiène\nProduitsLaitiers\nViande'),
(2, NULL, 1, 'Type magasin', NULL, 'Web\nBasique\nExpress\nMaxi');

-- --------------------------------------------------------

--
-- Structure de la table `fulltext_search`
--

DROP TABLE IF EXISTS `fulltext_search`;
CREATE TABLE IF NOT EXISTS `fulltext_search` (
  `id` int(11) NOT NULL,
  `resource` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`resource`),
  KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(4, 'items', 1, 1, 'Julien Dupont', 'Julien Dupont\njulien_dupont\nDupont\nJulien\n04/04/1967\n12 rue ....\njulien_dupont@....'),
(5, 'items', 1, 1, 'Beurre demi-sel', 'Beurre demi-sel\nBeurre demi-sel\nProduit laitier\n2,50'),
(6, 'items', 1, 1, 'Baguette', 'Baguette\nBaguette\nBoulangerie\n0,80'),
(7, 'items', 1, 1, 'Magasin de Châtelet', 'Magasin de Châtelet\nChâtelet\nchatelet les halles\n75001\nBasique'),
(8, 'items', 1, 1, 'Achat 2 beurre demi sel', 'Achat 2 beurre demi sel\n2\n5\n16/04/2020\nBeurre demi-sel\nMagasin de Châtelet'),
(9, 'items', 1, 1, 'Achat 3 baguettes', 'Achat 3 baguettes\n3\n2,40\n16/04/2020\nBaguette\nMagasin de Châtelet'),
(10, 'items', 1, 1, 'achats du 16/04/2020 de Mr Dupon', 'achats du 16/04/2020 de Mr Dupon\n16/04/2020\n7,50\nJulien Dupont\nAchat 2 beurre demi sel\nAchat 3 baguettes'),
(11, 'items', 1, 1, 'Emma Bernard', 'Emma Bernard\nEmma\nBernard\n04/09/1990\nadresse...\n0000000000\nemma.bernard@...'),
(12, 'items', 1, 1, 'Crème solaire', 'Crème solaire\nCrème solaire\nProduits d\'hygiène\n5,00'),
(13, 'items', 1, 1, 'Spaghettis 500g', 'Spaghettis 500g\nSpaghettis\nBoulangerie\nEpicerie\nProduits d\'hygiène\nProduits laitiers\nViande\n0,95'),
(14, 'items', 1, 1, 'Achat d\'une crème solaire', 'Achat d\'une crème solaire\n1\n5,00\n17/04/2020\nCrème solaire'),
(15, 'items', 1, 1, 'Achat de 3 packets de spaghettis 500g', 'Achat de 3 packets de spaghettis 500g\n3\n2,85\n17/04/2020\nSpaghettis 500g'),
(16, 'items', 1, 1, 'Achats du 07/04/2020 de Mme Emma Bernard', 'Achats du 07/04/2020 de Mme Emma Bernard\n04/04/2020\n0000\nEmma Bernard\nAchat de 3 packets de spaghettis 500g\nAchat d\'une crème solaire\nMagasin de Châtelet'),
(17, 'items', 1, 1, 'Magasin rue de Rivoli', 'Magasin rue de Rivoli\nRivoli\nrue de rrivoli\n75001\nExpress'),
(18, 'items', 1, 1, 'Agathe Dubois', 'Agathe Dubois\nDubois\nAgathe\n30/03/1997\n...\n0000000000\nagathe.dubois@...'),
(19, 'items', 1, 1, 'Tomates (1kg)', 'Tomates (1kg)\nTomate\nLégume\n3,00'),
(20, 'items', 1, 1, 'Achat de 500g de tomates', 'Achat de 500g de tomates\n0,5\n1,50\nTomates (1kg)'),
(21, 'items', 1, 1, 'Lot de 4 steack hachés', 'Lot de 4 steack hachés\n4 steacks hachés\nViande\n5,00'),
(22, 'items', 1, 1, 'Achat 2 lots de 4 steacks hachés', 'Achat 2 lots de 4 steacks hachés\n2\n10,00\nLot de 4 steack hachés'),
(23, 'items', 1, 1, 'Achat 1 spaghettis 500g', 'Achat 1 spaghettis 500g\n1\n0,95\nSpaghettis 500g'),
(24, 'items', 1, 1, 'Achats du 07/04/2020 de Mme Agathe Dubois', 'Achats du 07/04/2020 de Mme Agathe Dubois\n07/04/2020\n10,95\nAgathe Dubois\nAchat 1 spaghettis 500g\nAchat 2 lots de 4 steacks hachés\nMagasin rue de Rivoli'),
(25, 'items', 1, 1, 'Magasin de la Défense', 'Magasin de la Défense\nLa Défense\nla défense Paris\n92060\nMaxi'),
(26, 'items', 1, 1, 'Magasin de Marseilles', 'Magasin de Marseilles\nMarseilles\n...\n13000\nBasique'),
(27, 'items', 1, 1, 'Magasin de Chamonix', 'Magasin de Chamonix\nChamonix\nchamonix\n74400\nExpress'),
(28, 'items', 1, 1, 'Web', 'Web\nweb\nmagasin.com\nWeb'),
(29, 'items', 1, 1, 'Magasin Rennes Le Blosne', 'Magasin Rennes Le Blosne\nRennes Le Blosne\nrennes\n35000\nExpress'),
(30, 'items', 1, 1, 'Magasin Rennes Alma', 'Magasin Rennes Alma\nRennes Alma\n5 Rue du Bosphore, 35000  Rennes\n35000\nMaxi'),
(31, 'items', 1, 1, 'Magasin Tours Les Atlantes', 'Magasin Tours Les Atlantes\nTours les Atlantes\nAvenue Jacques Duclos, 37700 Saint-Pierre-des-Corps\n37700\nMaxi'),
(32, 'items', 1, 1, 'Magasin Tours Ma Petite Madeleine', 'Magasin Tours Ma Petite Madeleine\nTours Ma Petite Madeleine\n213-215 Avenue du Grand S, 37170 Chambray-lès-Tours\n37170\nBasique'),
(33, 'items', 1, 1, 'Magasin Lyon Confluence', 'Magasin Lyon Confluence\nLyon Confluence\n112 cours charlemagne, 69002 Lyon\n69002\nExpress'),
(34, 'items', 1, 1, 'Magasin Lyon La Part Dieu', 'Magasin Lyon La Part Dieu\nLyon La Part Dieu\n17, rue du Docteur Bouchut , 69431 LYON \n69431\nMaxi'),
(35, 'items', 1, 1, 'Salade', 'Salade\nSalade\nLégumes\n1,00'),
(36, 'items', 1, 1, 'Pommes (1kg)', 'Pommes (1kg)\nPommes\nFruits\n3,00'),
(37, 'items', 1, 1, 'Clémentines (1kg)', 'Clémentines (1kg)\nClémentines\nFruits\n6,00'),
(38, 'items', 1, 1, 'Sauce tomate 250g', 'Sauce tomate 250g\nSauce tomate 250g\nCondiments\n2,50'),
(39, 'items', 1, 1, '500g escalope de dinde', '500g escalope de dinde\nEscalope de dinde (500g)\nViande\n9,00'),
(40, 'items', 1, 1, 'Achat 2 escalopes de dinde 500g', 'Achat 2 escalopes de dinde 500g\n2\n18,00\n500g escalope de dinde'),
(41, 'items', 1, 1, 'Achat 3 sauces tomates 250g', 'Achat 3 sauces tomates 250g\n3\n7,50\nSauce tomate 250g'),
(42, 'items', 1, 1, 'Achats du 20/04/2020 de Mme Emma Bernard', 'Achats du 20/04/2020 de Mme Emma Bernard\n20/04/2020\n16,50\nEmma Bernard\nAchat 3 sauces tomates 250g\n500g escalope de dinde\nMagasin de la Défense'),
(43, 'items', 1, 1, 'Achat de 1kg de clémentines', 'Achat de 1kg de clémentines\n1\n6,00\nClémentines (1kg)'),
(44, 'items', 1, 1, 'Achat de 2kg de clémentines', 'Achat de 2kg de clémentines\n2\n12,00\nClémentines (1kg)'),
(45, 'items', 1, 1, 'Achat de 4 packets de 500g d\'escalopes de dinde', 'Achat de 4 packets de 500g d\'escalopes de dinde\n4\n36\n500g escalope de dinde'),
(46, 'items', 1, 1, 'Philippe Legrand', 'Philippe Legrand\nLegrand\nPhilippe\n30/03/1970\n...\n000000000\nphilippe.legrd@...'),
(47, 'items', 1, 1, 'Catherine Thomas', 'Catherine Thomas\nThomas\nCatherine\n12/05/1980\n...\n0000000000'),
(48, 'items', 1, 1, 'Jean Rousseau', 'Jean Rousseau\nRousseau\nJean\n08/07/1970'),
(49, 'items', 1, 1, 'Christine Moreau', 'Christine Moreau\nMoreau\nChristine\n15/08/1965'),
(50, 'items', 1, 1, 'Alain Muller', 'Alain Muller\nMuller\nAlain\n18/09/1980'),
(51, 'items', 1, 1, 'Brigitte Mercier', 'Brigitte Mercier\nMercier\nBrigitte\n30/05/1974'),
(52, 'items', 1, 1, 'Eric Lambert', 'Eric Lambert\nLambert\nEric\n16/05/1970'),
(53, 'items', 1, 1, 'Achats du 18/05/2019 de Mme Brigitte Mercier', 'Achats du 18/05/2019 de Mme Brigitte Mercier\n18/05/2019\n49,50\nBrigitte Mercier\nAchat de 4 packets de 500g d\'escalopes de dinde\nAchat de 2kg de clémentines\nAchat de 500g de tomates\nMagasin Tours Ma Petite Madeleine'),
(54, 'items', 1, 1, 'Achat de 5kg de pommes', 'Achat de 5kg de pommes\n5\n15,00\nPommes (1kg)'),
(55, 'items', 1, 1, 'Achats du 22/04/2020 de M. Eric Lambert', 'Achats du 22/04/2020 de M. Eric Lambert\n22/04/2020\n21,00\nEric Lambert\nAchat de 5kg de pommes\nAchat de 1kg de clémentines\nMagasin Lyon Confluence'),
(56, 'items', 1, 1, 'Achat de 2 sauces tomates de 250g', 'Achat de 2 sauces tomates de 250g\n2\n5\nSauce tomate 250g'),
(57, 'items', 1, 1, 'Achat de 4 paquets de spaghettis 500g', 'Achat de 4 paquets de spaghettis 500g\n4\n3,80\nSpaghettis 500g'),
(58, 'items', 1, 1, 'Achat de 1 lot de steack hachés', 'Achat de 1 lot de steack hachés\n1\n5,00\nLot de 4 steack hachés'),
(59, 'items', 1, 1, 'Achat de 200g de tomates', 'Achat de 200g de tomates\n0,2\n0,60\nTomates (1kg)'),
(60, 'items', 1, 1, 'Achat de 1 salade', 'Achat de 1 salade\n1\n1,00\nSalade'),
(61, 'items', 1, 1, 'Achat de 2 crèmes solaires', 'Achat de 2 crèmes solaires\n2\n10\nCrème solaire'),
(62, 'items', 1, 1, 'Achat de 1 baguette', 'Achat de 1 baguette\n1\n0,80\nBaguette'),
(63, 'items', 1, 1, 'Yaourts x4', 'Yaourts x4\nlot de 4 yaourts\nLaitier\n2,00'),
(64, 'items', 1, 1, 'Boite de chewing-gum', 'Boite de chewing-gum \nBoite de chewing-gum\nSucreries\n1,50'),
(65, 'items', 1, 1, 'Achat de 2 boites de chewing-gum', 'Achat de 2 boites de chewing-gum\n2\n3,00\nBoite de chewing-gum'),
(66, 'items', 1, 1, 'Achat de 1 beurre demi-sel', 'Achat de 1 beurre demi-sel\n1\n2,50\nBeurre demi-sel'),
(67, 'items', 1, 1, 'Achat de 2 paquets de 500g de spaghettis', 'Achat de 2 paquets de 500g de spaghettis\n2\n1,90\nSpaghettis 500g'),
(68, 'items', 1, 1, 'Achat de 1kg de pommes', 'Achat de 1kg de pommes\n1\n3\nPommes (1kg)'),
(69, 'items', 1, 1, 'Achat de 2 salades', 'Achat de 2 salades\n2\n2,00\nSalade'),
(70, 'items', 1, 1, 'Achat de 1,5 kg de pommes', 'Achat de 1,5 kg de pommes\n1,5\n4,50\nPommes (1kg)'),
(71, 'items', 1, 1, 'Achat de 1,5 kg de clémentines', 'Achat de 1,5 kg de clémentines\n1,5\n9,00\nClémentines (1kg)'),
(72, 'items', 1, 1, 'Achat de 1kg de tomates', 'Achat de 1kg de tomates\n1\n3,00\nTomates (1kg)'),
(73, 'items', 1, 1, 'Achat de 3 lots de 4 yaourts', 'Achat de 3 lots de 4 yaourts\n3\n6\nYaourts x4'),
(74, 'items', 1, 1, 'Achats du 13/05/2020 de M. Alain Muller', 'Achats du 13/05/2020 de M. Alain Muller\n13/05/2020\n14,30\nAlain Muller\nAchat de 4 paquets de spaghettis 500g\nAchat de 2 sauces tomates de 250g\nAchat de 1 lot de steack hachés\nAchat de 200g de tomates\nWeb'),
(75, 'items', 1, 1, 'Achats du 30/03/2020 de Mme Brigitte Mercier', 'Achats du 30/03/2020 de Mme Brigitte Mercier\n30/03/2020\n11,80\nBrigitte Mercier\nAchat de 1 salade\nAchat de 2 crèmes solaires\nAchat de 1 baguette\nMagasin Tours Les Atlantes'),
(76, 'items', 1, 1, 'Achats du 03/03/2020 de M. Philippe Legrand', 'Achats du 03/03/2020 de M. Philippe Legrand\n03/03/2020\n9,40\nPhilippe Legrand\nAchat de 2 boites de chewing-gum\nAchat de 1 beurre demi-sel\nAchat de 2 paquets de 500g de spaghettis\nAchat de 1kg de pommes\nMagasin Rennes Alma'),
(77, 'items', 1, 1, 'Achats du 28/02/2020 de M. Jean Rousseau', 'Achats du 28/02/2020 de M. Jean Rousseau\n28/02/2020\n24,50\nJean Rousseau\nAchat de 2 salades\nAchat de 1,5 kg de pommes\nAchat de 1,5 kg de clémentines\nAchat de 1kg de tomates\nAchat de 3 lots de 4 yaourts\nMagasin de Marseilles');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`) VALUES
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(56),
(57),
(58),
(59),
(60),
(61),
(62),
(63),
(64),
(65),
(66),
(67),
(68),
(69),
(70),
(71),
(72),
(73),
(74),
(75),
(76),
(77);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

DROP TABLE IF EXISTS `item_item_set`;
CREATE TABLE IF NOT EXISTS `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  PRIMARY KEY (`item_id`,`item_set_id`),
  KEY `IDX_6D0C9625126F525E` (`item_id`),
  KEY `IDX_6D0C9625960278D7` (`item_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

DROP TABLE IF EXISTS `item_set`;
CREATE TABLE IF NOT EXISTS `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

DROP TABLE IF EXISTS `job`;
CREATE TABLE IF NOT EXISTS `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `args` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `log` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started` datetime NOT NULL,
  `ended` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FBD8E0F87E3C61F9` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `ingester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `renderer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `source` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_id` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sha256` char(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `has_original` tinyint(1) NOT NULL,
  `has_thumbnails` tinyint(1) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `lang` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6A2CA10C5CC5DB90` (`storage_id`),
  KEY `IDX_6A2CA10C126F525E` (`item_id`),
  KEY `item_position` (`item_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migration`
--

DROP TABLE IF EXISTS `migration`;
CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration`
--

INSERT INTO `migration` (`version`) VALUES
('20171128053327'),
('20180412035023'),
('20180919072656'),
('20180924033501'),
('20181002015551'),
('20181004043735'),
('20181106060421'),
('20190307043537'),
('20190319020708'),
('20190412090532'),
('20190423040354'),
('20190423071228'),
('20190514061351'),
('20190515055359'),
('20190729023728'),
('20190809092609'),
('20190815062003');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`id`, `is_active`, `version`) VALUES
('CustomVocab', 1, '1.2.0'),
('EasyInstall', 1, '3.2.5');

-- --------------------------------------------------------

--
-- Structure de la table `password_creation`
--

DROP TABLE IF EXISTS `password_creation`;
CREATE TABLE IF NOT EXISTS `password_creation` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `activate` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_creation`
--

INSERT INTO `password_creation` (`id`, `user_id`, `created`, `activate`) VALUES
('46ONfC8SnRrNpDmBPMkrRKtybDskHx7j', 2, '2020-04-15 13:39:43', 1);

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE IF NOT EXISTS `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'title', 'Title', 'A name given to the resource.'),
(2, NULL, 1, 'creator', 'Creator', 'An entity primarily responsible for making the resource.'),
(3, NULL, 1, 'subject', 'Subject', 'The topic of the resource.'),
(4, NULL, 1, 'description', 'Description', 'An account of the resource.'),
(5, NULL, 1, 'publisher', 'Publisher', 'An entity responsible for making the resource available.'),
(6, NULL, 1, 'contributor', 'Contributor', 'An entity responsible for making contributions to the resource.'),
(7, NULL, 1, 'date', 'Date', 'A point or period of time associated with an event in the lifecycle of the resource.'),
(8, NULL, 1, 'type', 'Type', 'The nature or genre of the resource.'),
(9, NULL, 1, 'format', 'Format', 'The file format, physical medium, or dimensions of the resource.'),
(10, NULL, 1, 'identifier', 'Identifier', 'An unambiguous reference to the resource within a given context.'),
(11, NULL, 1, 'source', 'Source', 'A related resource from which the described resource is derived.'),
(12, NULL, 1, 'language', 'Language', 'A language of the resource.'),
(13, NULL, 1, 'relation', 'Relation', 'A related resource.'),
(14, NULL, 1, 'coverage', 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.'),
(15, NULL, 1, 'rights', 'Rights', 'Information about rights held in and over the resource.'),
(16, NULL, 1, 'audience', 'Audience', 'A class of entity for whom the resource is intended or useful.'),
(17, NULL, 1, 'alternative', 'Alternative Title', 'An alternative name for the resource.'),
(18, NULL, 1, 'tableOfContents', 'Table Of Contents', 'A list of subunits of the resource.'),
(19, NULL, 1, 'abstract', 'Abstract', 'A summary of the resource.'),
(20, NULL, 1, 'created', 'Date Created', 'Date of creation of the resource.'),
(21, NULL, 1, 'valid', 'Date Valid', 'Date (often a range) of validity of a resource.'),
(22, NULL, 1, 'available', 'Date Available', 'Date (often a range) that the resource became or will become available.'),
(23, NULL, 1, 'issued', 'Date Issued', 'Date of formal issuance (e.g., publication) of the resource.'),
(24, NULL, 1, 'modified', 'Date Modified', 'Date on which the resource was changed.'),
(25, NULL, 1, 'extent', 'Extent', 'The size or duration of the resource.'),
(26, NULL, 1, 'medium', 'Medium', 'The material or physical carrier of the resource.'),
(27, NULL, 1, 'isVersionOf', 'Is Version Of', 'A related resource of which the described resource is a version, edition, or adaptation.'),
(28, NULL, 1, 'hasVersion', 'Has Version', 'A related resource that is a version, edition, or adaptation of the described resource.'),
(29, NULL, 1, 'isReplacedBy', 'Is Replaced By', 'A related resource that supplants, displaces, or supersedes the described resource.'),
(30, NULL, 1, 'replaces', 'Replaces', 'A related resource that is supplanted, displaced, or superseded by the described resource.'),
(31, NULL, 1, 'isRequiredBy', 'Is Required By', 'A related resource that requires the described resource to support its function, delivery, or coherence.'),
(32, NULL, 1, 'requires', 'Requires', 'A related resource that is required by the described resource to support its function, delivery, or coherence.'),
(33, NULL, 1, 'isPartOf', 'Is Part Of', 'A related resource in which the described resource is physically or logically included.'),
(34, NULL, 1, 'hasPart', 'Has Part', 'A related resource that is included either physically or logically in the described resource.'),
(35, NULL, 1, 'isReferencedBy', 'Is Referenced By', 'A related resource that references, cites, or otherwise points to the described resource.'),
(36, NULL, 1, 'references', 'References', 'A related resource that is referenced, cited, or otherwise pointed to by the described resource.'),
(37, NULL, 1, 'isFormatOf', 'Is Format Of', 'A related resource that is substantially the same as the described resource, but in another format.'),
(38, NULL, 1, 'hasFormat', 'Has Format', 'A related resource that is substantially the same as the pre-existing described resource, but in another format.'),
(39, NULL, 1, 'conformsTo', 'Conforms To', 'An established standard to which the described resource conforms.'),
(40, NULL, 1, 'spatial', 'Spatial Coverage', 'Spatial characteristics of the resource.'),
(41, NULL, 1, 'temporal', 'Temporal Coverage', 'Temporal characteristics of the resource.'),
(42, NULL, 1, 'mediator', 'Mediator', 'An entity that mediates access to the resource and for whom the resource is intended or useful.'),
(43, NULL, 1, 'dateAccepted', 'Date Accepted', 'Date of acceptance of the resource.'),
(44, NULL, 1, 'dateCopyrighted', 'Date Copyrighted', 'Date of copyright.'),
(45, NULL, 1, 'dateSubmitted', 'Date Submitted', 'Date of submission of the resource.'),
(46, NULL, 1, 'educationLevel', 'Audience Education Level', 'A class of entity, defined in terms of progression through an educational or training context, for which the described resource is intended.'),
(47, NULL, 1, 'accessRights', 'Access Rights', 'Information about who can access the resource or an indication of its security status.'),
(48, NULL, 1, 'bibliographicCitation', 'Bibliographic Citation', 'A bibliographic reference for the resource.'),
(49, NULL, 1, 'license', 'License', 'A legal document giving official permission to do something with the resource.'),
(50, NULL, 1, 'rightsHolder', 'Rights Holder', 'A person or organization owning or managing rights over the resource.'),
(51, NULL, 1, 'provenance', 'Provenance', 'A statement of any changes in ownership and custody of the resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(52, NULL, 1, 'instructionalMethod', 'Instructional Method', 'A process, used to engender knowledge, attitudes and skills, that the described resource is designed to support.'),
(53, NULL, 1, 'accrualMethod', 'Accrual Method', 'The method by which items are added to a collection.'),
(54, NULL, 1, 'accrualPeriodicity', 'Accrual Periodicity', 'The frequency with which items are added to a collection.'),
(55, NULL, 1, 'accrualPolicy', 'Accrual Policy', 'The policy governing the addition of items to a collection.'),
(56, NULL, 3, 'affirmedBy', 'affirmedBy', 'A legal decision that affirms a ruling.'),
(57, NULL, 3, 'annotates', 'annotates', 'Critical or explanatory note for a Document.'),
(58, NULL, 3, 'authorList', 'list of authors', 'An ordered list of authors. Normally, this list is seen as a priority list that order authors by importance.'),
(59, NULL, 3, 'citedBy', 'cited by', 'Relates a document to another document that cites the\nfirst document.'),
(60, NULL, 3, 'cites', 'cites', 'Relates a document to another document that is cited\nby the first document as reference, comment, review, quotation or for\nanother purpose.'),
(61, NULL, 3, 'contributorList', 'list of contributors', 'An ordered list of contributors. Normally, this list is seen as a priority list that order contributors by importance.'),
(62, NULL, 3, 'court', 'court', 'A court associated with a legal document; for example, that which issues a decision.'),
(63, NULL, 3, 'degree', 'degree', 'The thesis degree.'),
(64, NULL, 3, 'director', 'director', 'A Film director.'),
(65, NULL, 3, 'distributor', 'distributor', 'Distributor of a document or a collection of documents.'),
(66, NULL, 3, 'editor', 'editor', 'A person having managerial and sometimes policy-making responsibility for the editorial part of a publishing firm or of a newspaper, magazine, or other publication.'),
(67, NULL, 3, 'editorList', 'list of editors', 'An ordered list of editors. Normally, this list is seen as a priority list that order editors by importance.'),
(68, NULL, 3, 'interviewee', 'interviewee', 'An agent that is interviewed by another agent.'),
(69, NULL, 3, 'interviewer', 'interviewer', 'An agent that interview another agent.'),
(70, NULL, 3, 'issuer', 'issuer', 'An entity responsible for issuing often informally published documents such as press releases, reports, etc.'),
(71, NULL, 3, 'organizer', 'organizer', 'The organizer of an event; includes conference organizers, but also government agencies or other bodies that are responsible for conducting hearings.'),
(72, NULL, 3, 'owner', 'owner', 'Owner of a document or a collection of documents.'),
(73, NULL, 3, 'performer', 'performer', NULL),
(74, NULL, 3, 'presentedAt', 'presented at', 'Relates a document to an event; for example, a paper to a conference.'),
(75, NULL, 3, 'presents', 'presents', 'Relates an event to associated documents; for example, conference to a paper.'),
(76, NULL, 3, 'producer', 'producer', 'Producer of a document or a collection of documents.'),
(77, NULL, 3, 'recipient', 'recipient', 'An agent that receives a communication document.'),
(78, NULL, 3, 'reproducedIn', 'reproducedIn', 'The resource in which another resource is reproduced.'),
(79, NULL, 3, 'reversedBy', 'reversedBy', 'A legal decision that reverses a ruling.'),
(80, NULL, 3, 'reviewOf', 'review of', 'Relates a review document to a reviewed thing (resource, item, etc.).'),
(81, NULL, 3, 'status', 'status', 'The publication status of (typically academic) content.'),
(82, NULL, 3, 'subsequentLegalDecision', 'subsequentLegalDecision', 'A legal decision on appeal that takes action on a case (affirming it, reversing it, etc.).'),
(83, NULL, 3, 'transcriptOf', 'transcript of', 'Relates a document to some transcribed original.'),
(84, NULL, 3, 'translationOf', 'translation of', 'Relates a translated document to the original document.'),
(85, NULL, 3, 'translator', 'translator', 'A person who translates written document from one language to another.'),
(86, NULL, 3, 'abstract', 'abstract', 'A summary of the resource.'),
(87, NULL, 3, 'argued', 'date argued', 'The date on which a legal case is argued before a court. Date is of format xsd:date'),
(88, NULL, 3, 'asin', 'asin', NULL),
(89, NULL, 3, 'chapter', 'chapter', 'An chapter number'),
(90, NULL, 3, 'coden', 'coden', NULL),
(91, NULL, 3, 'content', 'content', 'This property is for a plain-text rendering of the content of a Document. While the plain-text content of an entire document could be described by this property.'),
(92, NULL, 3, 'doi', 'doi', NULL),
(93, NULL, 3, 'eanucc13', 'eanucc13', NULL),
(94, NULL, 3, 'edition', 'edition', 'The name defining a special edition of a document. Normally its a literal value composed of a version number and words.'),
(95, NULL, 3, 'eissn', 'eissn', NULL),
(96, NULL, 3, 'gtin14', 'gtin14', NULL),
(97, NULL, 3, 'handle', 'handle', NULL),
(98, NULL, 3, 'identifier', 'identifier', NULL),
(99, NULL, 3, 'isbn', 'isbn', NULL),
(100, NULL, 3, 'isbn10', 'isbn10', NULL),
(101, NULL, 3, 'isbn13', 'isbn13', NULL),
(102, NULL, 3, 'issn', 'issn', NULL),
(103, NULL, 3, 'issue', 'issue', 'An issue number'),
(104, NULL, 3, 'lccn', 'lccn', NULL),
(105, NULL, 3, 'locator', 'locator', 'A description (often numeric) that locates an item within a containing document or collection.'),
(106, NULL, 3, 'numPages', 'number of pages', 'The number of pages contained in a document'),
(107, NULL, 3, 'numVolumes', 'number of volumes', 'The number of volumes contained in a collection of documents (usually a series, periodical, etc.).'),
(108, NULL, 3, 'number', 'number', 'A generic item or document number. Not to be confused with issue number.'),
(109, NULL, 3, 'oclcnum', 'oclcnum', NULL),
(110, NULL, 3, 'pageEnd', 'page end', 'Ending page number within a continuous page range.'),
(111, NULL, 3, 'pageStart', 'page start', 'Starting page number within a continuous page range.'),
(112, NULL, 3, 'pages', 'pages', 'A string of non-contiguous page spans that locate a Document within a Collection. Example: 23-25, 34, 54-56. For continuous page ranges, use the pageStart and pageEnd properties.'),
(113, NULL, 3, 'pmid', 'pmid', NULL),
(114, NULL, 3, 'prefixName', 'prefix name', 'The prefix of a name'),
(115, NULL, 3, 'section', 'section', 'A section number'),
(116, NULL, 3, 'shortDescription', 'shortDescription', NULL),
(117, NULL, 3, 'shortTitle', 'short title', 'The abbreviation of a title.'),
(118, NULL, 3, 'sici', 'sici', NULL),
(119, NULL, 3, 'suffixName', 'suffix name', 'The suffix of a name'),
(120, NULL, 3, 'upc', 'upc', NULL),
(121, NULL, 3, 'uri', 'uri', 'Universal Resource Identifier of a document'),
(122, NULL, 3, 'volume', 'volume', 'A volume number'),
(123, NULL, 4, 'mbox', 'personal mailbox', 'A  personal mailbox, ie. an Internet mailbox associated with exactly one owner, the first owner of this mailbox. This is a \'static inverse functional property\', in that  there is (across time and change) at most one individual that ever has any particular value for foaf:mbox.'),
(124, NULL, 4, 'mbox_sha1sum', 'sha1sum of a personal mailbox URI name', 'The sha1sum of the URI of an Internet mailbox associated with exactly one owner, the  first owner of the mailbox.'),
(125, NULL, 4, 'gender', 'gender', 'The gender of this Agent (typically but not necessarily \'male\' or \'female\').'),
(126, NULL, 4, 'geekcode', 'geekcode', 'A textual geekcode for this person, see http://www.geekcode.com/geek.html'),
(127, NULL, 4, 'dnaChecksum', 'DNA checksum', 'A checksum for the DNA of some thing. Joke.'),
(128, NULL, 4, 'sha1', 'sha1sum (hex)', 'A sha1sum hash, in hex.'),
(129, NULL, 4, 'based_near', 'based near', 'A location that something is based near, for some broadly human notion of near.'),
(130, NULL, 4, 'title', 'title', 'Title (Mr, Mrs, Ms, Dr. etc)'),
(131, NULL, 4, 'nick', 'nickname', 'A short informal nickname characterising an agent (includes login identifiers, IRC and other chat nicknames).'),
(132, NULL, 4, 'jabberID', 'jabber ID', 'A jabber ID for something.'),
(133, NULL, 4, 'aimChatID', 'AIM chat ID', 'An AIM chat ID'),
(134, NULL, 4, 'skypeID', 'Skype ID', 'A Skype ID'),
(135, NULL, 4, 'icqChatID', 'ICQ chat ID', 'An ICQ chat ID'),
(136, NULL, 4, 'yahooChatID', 'Yahoo chat ID', 'A Yahoo chat ID'),
(137, NULL, 4, 'msnChatID', 'MSN chat ID', 'An MSN chat ID'),
(138, NULL, 4, 'name', 'name', 'A name for some thing.'),
(139, NULL, 4, 'firstName', 'firstName', 'The first name of a person.'),
(140, NULL, 4, 'lastName', 'lastName', 'The last name of a person.'),
(141, NULL, 4, 'givenName', 'Given name', 'The given name of some person.'),
(142, NULL, 4, 'givenname', 'Given name', 'The given name of some person.'),
(143, NULL, 4, 'surname', 'Surname', 'The surname of some person.'),
(144, NULL, 4, 'family_name', 'family_name', 'The family name of some person.'),
(145, NULL, 4, 'familyName', 'familyName', 'The family name of some person.'),
(146, NULL, 4, 'phone', 'phone', 'A phone,  specified using fully qualified tel: URI scheme (refs: http://www.w3.org/Addressing/schemes.html#tel).'),
(147, NULL, 4, 'homepage', 'homepage', 'A homepage for some thing.'),
(148, NULL, 4, 'weblog', 'weblog', 'A weblog of some thing (whether person, group, company etc.).'),
(149, NULL, 4, 'openid', 'openid', 'An OpenID for an Agent.'),
(150, NULL, 4, 'tipjar', 'tipjar', 'A tipjar document for this agent, describing means for payment and reward.'),
(151, NULL, 4, 'plan', 'plan', 'A .plan comment, in the tradition of finger and \'.plan\' files.'),
(152, NULL, 4, 'made', 'made', 'Something that was made by this agent.'),
(153, NULL, 4, 'maker', 'maker', 'An agent that  made this thing.'),
(154, NULL, 4, 'img', 'image', 'An image that can be used to represent some thing (ie. those depictions which are particularly representative of something, eg. one\'s photo on a homepage).'),
(155, NULL, 4, 'depiction', 'depiction', 'A depiction of some thing.'),
(156, NULL, 4, 'depicts', 'depicts', 'A thing depicted in this representation.'),
(157, NULL, 4, 'thumbnail', 'thumbnail', 'A derived thumbnail image.'),
(158, NULL, 4, 'myersBriggs', 'myersBriggs', 'A Myers Briggs (MBTI) personality classification.'),
(159, NULL, 4, 'workplaceHomepage', 'workplace homepage', 'A workplace homepage of some person; the homepage of an organization they work for.'),
(160, NULL, 4, 'workInfoHomepage', 'work info homepage', 'A work info homepage of some person; a page about their work for some organization.'),
(161, NULL, 4, 'schoolHomepage', 'schoolHomepage', 'A homepage of a school attended by the person.'),
(162, NULL, 4, 'knows', 'knows', 'A person known by this person (indicating some level of reciprocated interaction between the parties).'),
(163, NULL, 4, 'interest', 'interest', 'A page about a topic of interest to this person.'),
(164, NULL, 4, 'topic_interest', 'topic_interest', 'A thing of interest to this person.'),
(165, NULL, 4, 'publications', 'publications', 'A link to the publications of this person.'),
(166, NULL, 4, 'currentProject', 'current project', 'A current project this person works on.'),
(167, NULL, 4, 'pastProject', 'past project', 'A project this person has previously worked on.'),
(168, NULL, 4, 'fundedBy', 'funded by', 'An organization funding a project or person.'),
(169, NULL, 4, 'logo', 'logo', 'A logo representing some thing.'),
(170, NULL, 4, 'topic', 'topic', 'A topic of some page or document.'),
(171, NULL, 4, 'primaryTopic', 'primary topic', 'The primary topic of some page or document.'),
(172, NULL, 4, 'focus', 'focus', 'The underlying or \'focal\' entity associated with some SKOS-described concept.'),
(173, NULL, 4, 'isPrimaryTopicOf', 'is primary topic of', 'A document that this thing is the primary topic of.'),
(174, NULL, 4, 'page', 'page', 'A page or document about this thing.'),
(175, NULL, 4, 'theme', 'theme', 'A theme.'),
(176, NULL, 4, 'account', 'account', 'Indicates an account held by this agent.'),
(177, NULL, 4, 'holdsAccount', 'account', 'Indicates an account held by this agent.'),
(178, NULL, 4, 'accountServiceHomepage', 'account service homepage', 'Indicates a homepage of the service provide for this online account.'),
(179, NULL, 4, 'accountName', 'account name', 'Indicates the name (identifier) associated with this online account.'),
(180, NULL, 4, 'member', 'member', 'Indicates a member of a Group'),
(181, NULL, 4, 'membershipClass', 'membershipClass', 'Indicates the class of individuals that are a member of a Group'),
(182, NULL, 4, 'birthday', 'birthday', 'The birthday of this Agent, represented in mm-dd string form, eg. \'12-31\'.'),
(183, NULL, 4, 'age', 'age', 'The age in years of some agent.'),
(184, NULL, 4, 'status', 'status', 'A string expressing what the user is happy for the general public (normally) to know about their current activity.'),
(186, 1, 6, 'location', 'τοποθεσία', 'The location of the thing.'),
(187, 1, 7, 'text', 'text', 'The textual content of this CreativeWork.'),
(188, 1, 7, 'alternativeHeadline', 'alternativeHeadline', 'A secondary title of the CreativeWork.'),
(189, 1, 7, 'interactivityType', 'interactivityType', 'The predominant mode of learning supported by the learning resource. Acceptable values are \'active\', \'expositive\', or \'mixed\'.'),
(190, 1, 7, 'encodings', 'encodings', 'A media object that encodes this CreativeWork.'),
(191, 1, 7, 'encoding', 'encoding', 'A media object that encodes this CreativeWork. This property is a synonym for associatedMedia.'),
(192, 1, 7, 'accessModeSufficient', 'accessModeSufficient', 'A list of single or combined accessModes that are sufficient to understand all the intellectual content of a resource. Expected values include:  auditory, tactile, textual, visual.'),
(193, 1, 7, 'video', 'video', 'An embedded video object.'),
(194, 1, 7, 'courseCode', 'courseCode', 'The identifier for the <a class=\"localLink\" href=\"http://schema.org/Course\">Course</a> used by the course <a class=\"localLink\" href=\"http://schema.org/provider\">provider</a> (e.g. CS101 or 6.001).'),
(195, 1, 7, 'acquireLicensePage', 'acquireLicensePage', 'Indicates a page documenting how licenses can be purchased or otherwise acquired, for the current item.'),
(196, 1, 7, 'usageInfo', 'usageInfo', 'The schema.org <a class=\"localLink\" href=\"http://schema.org/usageInfo\">usageInfo</a> property indicates further information about a <a class=\"localLink\" href=\"http://schema.org/CreativeWork\">CreativeWork</a>. This property is applicable both to works that are freely available and to those that require payment or other transactions. It can reference additional information e.g. community expectations on preferred linking and citation conventions, as well as purchasing details. For something that can be commercially licensed, usageInfo can provide detailed, resource-specific information about licensing options.<br/><br/>\n\nThis property can be used alongside the license property which indicates license(s) applicable to some piece of content. The usageInfo property can provide information about other licensing options, e.g. acquiring commercial usage rights for an image that is also available under non-commercial creative commons licenses.'),
(197, 1, 7, 'schemaVersion', 'schemaVersion', 'Indicates (by URL or string) a particular version of a schema used in some CreativeWork. For example, a document could declare a schemaVersion using an URL such as http://schema.org/version/2.0/ if precise indication of schema version was required by some application.'),
(198, 1, 7, 'additionalType', 'additionalType', 'An additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. In RDFa syntax, it is better to use the native RDFa syntax - the \'typeof\' attribute - for multiple types. Schema.org tools may have only weaker understanding of extra types, in particular those defined externally.'),
(199, 1, 7, 'review', 'review', 'A review of the item.'),
(200, 1, 7, 'educationalCredentialAwarded', 'educationalCredentialAwarded', 'A description of the qualification, award, certificate, diploma or other educational credential awarded as a consequence of successful completion of this course or program.'),
(201, 1, 7, 'author', 'author', 'The author of this content or rating. Please note that author is special in that HTML 5 provides a special mechanism for indicating authorship via the rel tag. That is equivalent to this and may be used interchangeably.'),
(202, 1, 7, 'potentialAction', 'potentialAction', 'Indicates a potential Action, which describes an idealized action in which this thing would play an \'object\' role.'),
(203, 1, 7, 'workExample', 'workExample', 'Example/instance/realization/derivation of the concept of this creative work. eg. The paperback edition, first edition, or eBook.'),
(204, 1, 7, 'exampleOfWork', 'exampleOfWork', 'A creative work that this work is an example/instance/realization/derivation of.'),
(205, 1, 7, 'isBasedOn', 'isBasedOn', 'A resource from which this work is derived or from which it is a modification or adaption.'),
(206, 1, 7, 'description', 'description', 'A description of the item.'),
(207, 1, 7, 'occupationalCredentialAwarded', 'occupationalCredentialAwarded', 'A description of the qualification, award, certificate, diploma or other occupational credential awarded as a consequence of successful completion of this course or program.'),
(208, 1, 7, 'expires', 'expires', 'Date the content expires and is no longer useful or available. For example a <a class=\"localLink\" href=\"http://schema.org/VideoObject\">VideoObject</a> or <a class=\"localLink\" href=\"http://schema.org/NewsArticle\">NewsArticle</a> whose availability or relevance is time-limited, or a <a class=\"localLink\" href=\"http://schema.org/ClaimReview\">ClaimReview</a> fact check whose publisher wants to indicate that it may no longer be relevant (or helpful to highlight) after some date.'),
(209, 1, 7, 'coursePrerequisites', 'coursePrerequisites', 'Requirements for taking the Course. May be completion of another <a class=\"localLink\" href=\"http://schema.org/Course\">Course</a> or a textual description like \"permission of instructor\". Requirements may be a pre-requisite competency, referenced using <a class=\"localLink\" href=\"http://schema.org/AlignmentObject\">AlignmentObject</a>.'),
(210, 1, 7, 'publisher', 'publisher', 'The publisher of the creative work.'),
(211, 1, 7, 'comment', 'comment', 'Comments, typically from users.'),
(212, 1, 7, 'awards', 'awards', 'Awards won by or for this item.'),
(213, 1, 7, 'award', 'award', 'An award won by or for this item.'),
(214, 1, 7, 'isAccessibleForFree', 'isAccessibleForFree', 'A flag to signal that the item, event, or place is accessible for free.'),
(215, 1, 7, 'thumbnailUrl', 'thumbnailUrl', 'A thumbnail image relevant to the Thing.'),
(216, 1, 7, 'genre', 'genre', 'Genre of the creative work, broadcast channel or group.'),
(217, 1, 7, 'accountablePerson', 'accountablePerson', 'Specifies the Person that is legally accountable for the CreativeWork.'),
(218, 1, 7, 'accessibilityControl', 'accessibilityControl', 'Identifies input methods that are sufficient to fully control the described resource (<a href=\"http://www.w3.org/wiki/WebSchemas/Accessibility\">WebSchemas wiki lists possible values</a>).'),
(219, 1, 7, 'funder', 'funder', 'A person or organization that supports (sponsors) something through some kind of financial contribution.'),
(220, 1, 7, 'sponsor', 'sponsor', 'A person or organization that supports a thing through a pledge, promise, or financial contribution. e.g. a sponsor of a Medical Study or a corporate sponsor of an event.'),
(221, 1, 7, 'isPartOf', 'isPartOf', 'Indicates an item or CreativeWork that this item, or CreativeWork (in some sense), is part of.'),
(222, 1, 7, 'hasPart', 'hasPart', 'Indicates an item or CreativeWork that is part of this item, or CreativeWork (in some sense).'),
(223, 1, 7, 'publication', 'publication', 'A publication event associated with the item.'),
(224, 1, 7, 'provider', 'provider', 'The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.'),
(225, 1, 7, 'version', 'version', 'The version of the CreativeWork embodied by a specified resource.'),
(226, 1, 7, 'fileFormat', 'fileFormat', 'Media type, typically MIME format (see <a href=\"http://www.iana.org/assignments/media-types/media-types.xhtml\">IANA site</a>) of the content e.g. application/zip of a SoftwareApplication binary. In cases where a CreativeWork has several media type representations, \'encoding\' can be used to indicate each MediaObject alongside particular fileFormat information. Unregistered or niche file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia entry.'),
(227, 1, 7, 'encodingFormat', 'encodingFormat', 'Media type typically expressed using a MIME format (see <a href=\"http://www.iana.org/assignments/media-types/media-types.xhtml\">IANA site</a> and <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types\">MDN reference</a>) e.g. application/zip for a SoftwareApplication binary, audio/mpeg for .mp3 etc.).<br/><br/>\n\nIn cases where a <a class=\"localLink\" href=\"http://schema.org/CreativeWork\">CreativeWork</a> has several media type representations, <a class=\"localLink\" href=\"http://schema.org/encoding\">encoding</a> can be used to indicate each <a class=\"localLink\" href=\"http://schema.org/MediaObject\">MediaObject</a> alongside particular <a class=\"localLink\" href=\"http://schema.org/encodingFormat\">encodingFormat</a> information.<br/><br/>\n\nUnregistered or niche encoding and file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia/Wikidata entry.'),
(228, 1, 7, 'contributor', 'contributor', 'A secondary contributor to the CreativeWork or Event.'),
(229, 1, 7, 'accessibilityHazard', 'accessibilityHazard', 'A characteristic of the described resource that is physiologically dangerous to some users. Related to WCAG 2.0 guideline 2.3 (<a href=\"http://www.w3.org/wiki/WebSchemas/Accessibility\">WebSchemas wiki lists possible values</a>).'),
(230, 1, 7, 'publisherImprint', 'publisherImprint', 'The publishing division which published the comic.'),
(231, 1, 7, 'contentReferenceTime', 'contentReferenceTime', 'The specific time described by a creative work, for works (e.g. articles, video objects etc.) that emphasise a particular moment within an Event.'),
(232, 1, 7, 'accessMode', 'accessMode', 'The human sensory perceptual system or cognitive faculty through which a person may process or perceive information. Expected values include: auditory, tactile, textual, visual, colorDependent, chartOnVisual, chemOnVisual, diagramOnVisual, mathOnVisual, musicOnVisual, textOnVisual.'),
(233, 1, 7, 'educationalUse', 'educationalUse', 'The purpose of a work in the context of education; for example, \'assignment\', \'group work\'.'),
(234, 1, 7, 'reviews', 'reviews', 'Review of the item.'),
(235, 1, 7, 'conditionsOfAccess', 'conditionsOfAccess', 'Conditions that affect the availability of, or method(s) of access to, an item. Typically used for real world items such as an <a class=\"localLink\" href=\"http://schema.org/ArchiveComponent\">ArchiveComponent</a> held by an <a class=\"localLink\" href=\"http://schema.org/ArchiveOrganization\">ArchiveOrganization</a>. This property is not suitable for use as a general Web access control mechanism. It is expressed only in natural language.<br/><br/>\n\nFor example \"Available by appointment from the Reading Room\" or \"Accessible only from logged-in accounts \".'),
(236, 1, 7, 'contentRating', 'contentRating', 'Official rating of a piece of content&#x2014;for example,\'MPAA PG-13\'.'),
(237, 1, 7, 'abstract', 'abstract', 'An abstract is a short description that summarizes a <a class=\"localLink\" href=\"http://schema.org/CreativeWork\">CreativeWork</a>.'),
(238, 1, 7, 'producer', 'producer', 'The person or organization who produced the work (e.g. music album, movie, tv/radio series etc.).'),
(239, 1, 7, 'image', 'image', 'An image of the item. This can be a <a class=\"localLink\" href=\"http://schema.org/URL\">URL</a> or a fully described <a class=\"localLink\" href=\"http://schema.org/ImageObject\">ImageObject</a>.'),
(240, 1, 7, 'contentLocation', 'contentLocation', 'The location depicted or described in the content. For example, the location in a photograph or painting.'),
(241, 1, 7, 'typicalAgeRange', 'typicalAgeRange', 'The typical expected age range, e.g. \'7-9\', \'11-\'.'),
(242, 1, 7, 'mainEntityOfPage', 'mainEntityOfPage', 'Indicates a page (or other CreativeWork) for which this thing is the main entity being described. See <a href=\"/docs/datamodel.html#mainEntityBackground\">background notes</a> for details.'),
(243, 1, 7, 'mainEntity', 'mainEntity', 'Indicates the primary entity described in some page or other CreativeWork.'),
(244, 1, 7, 'audience', 'audience', 'An intended audience, i.e. a group for whom something was created.'),
(245, 1, 7, 'alternateName', 'alternateName', 'An alias for the item.'),
(246, 1, 7, 'sameAs', 'sameAs', 'URL of a reference Web page that unambiguously indicates the item\'s identity. E.g. the URL of the item\'s Wikipedia page, Wikidata entry, or official website.'),
(247, 1, 7, 'maintainer', 'maintainer', 'A maintainer of a <a class=\"localLink\" href=\"http://schema.org/Dataset\">Dataset</a>, software package (<a class=\"localLink\" href=\"http://schema.org/SoftwareApplication\">SoftwareApplication</a>), or other <a class=\"localLink\" href=\"http://schema.org/Project\">Project</a>. A maintainer is a <a class=\"localLink\" href=\"http://schema.org/Person\">Person</a> or <a class=\"localLink\" href=\"http://schema.org/Organization\">Organization</a> that manages contributions to, and/or publication of, some (typically complex) artifact. It is common for distributions of software and data to be based on \"upstream\" sources. When <a class=\"localLink\" href=\"http://schema.org/maintainer\">maintainer</a> is applied to a specific version of something e.g. a particular version or packaging of a <a class=\"localLink\" href=\"http://schema.org/Dataset\">Dataset</a>, it is always  possible that the upstream source has a different maintainer. The <a class=\"localLink\" href=\"http://schema.org/isBasedOn\">isBasedOn</a> property can be used to indicate such relationships between datasets to make the different maintenance roles clear. Similarly in the case of software, a package may have dedicated maintainers working on integration into software distributions such as Ubuntu, as well as upstream maintainers of the underlying work.'),
(248, 1, 7, 'position', 'position', 'The position of an item in a series or sequence of items.'),
(249, 1, 7, 'accessibilityFeature', 'accessibilityFeature', 'Content features of the resource, such as accessible media, alternatives and supported enhancements for accessibility (<a href=\"http://www.w3.org/wiki/WebSchemas/Accessibility\">WebSchemas wiki lists possible values</a>).'),
(250, 1, 7, 'about', 'about', 'The subject matter of the content.'),
(251, 1, 7, 'hasCourseInstance', 'hasCourseInstance', 'An offering of the course at a specific time and place or through specific media or mode of study or to a specific section of students.'),
(252, 1, 7, 'translationOfWork', 'translationOfWork', 'The work that this work has been translated from. e.g. 物种起源 is a translationOf “On the Origin of Species”'),
(253, 1, 7, 'workTranslation', 'workTranslation', 'A work that is a translation of the content of this work. e.g. 西遊記 has an English workTranslation “Journey to the West”,a German workTranslation “Monkeys Pilgerfahrt” and a Vietnamese  translation Tây du ký bình khảo.'),
(254, 1, 7, 'materialExtent', 'materialExtent', 'The quantity of the materials being described or an expression of the physical space they occupy.'),
(255, 1, 7, 'correction', 'correction', 'Indicates a correction to a <a class=\"localLink\" href=\"http://schema.org/CreativeWork\">CreativeWork</a>, either via a <a class=\"localLink\" href=\"http://schema.org/CorrectionComment\">CorrectionComment</a>, textually or in another document.'),
(256, 1, 7, 'dateCreated', 'dateCreated', 'The date on which the CreativeWork was created or the item was added to a DataFeed.'),
(257, 1, 7, 'accessibilitySummary', 'accessibilitySummary', 'A human-readable summary of specific accessibility features or deficiencies, consistent with the other accessibility metadata but expressing subtleties such as \"short descriptions are present but long descriptions will be needed for non-visual users\" or \"short descriptions are present and no long descriptions are needed.\"'),
(258, 1, 7, 'sdDatePublished', 'sdDatePublished', 'Indicates the date on which the current structured data was generated / published. Typically used alongside <a class=\"localLink\" href=\"http://schema.org/sdPublisher\">sdPublisher</a>'),
(259, 1, 7, 'headline', 'headline', 'Headline of the article.'),
(260, 1, 7, 'spatial', 'spatial', 'The \"spatial\" property can be used in cases when more specific properties\n(e.g. <a class=\"localLink\" href=\"http://schema.org/locationCreated\">locationCreated</a>, <a class=\"localLink\" href=\"http://schema.org/spatialCoverage\">spatialCoverage</a>, <a class=\"localLink\" href=\"http://schema.org/contentLocation\">contentLocation</a>) are not known to be appropriate.'),
(261, 1, 7, 'editor', 'editor', 'Specifies the Person who edited the CreativeWork.'),
(262, 1, 7, 'name', 'name', 'The name of the item.'),
(263, 1, 7, 'copyrightHolder', 'copyrightHolder', 'The party holding the legal copyright to the CreativeWork.'),
(264, 1, 7, 'identifier', 'identifier', 'The identifier property represents any kind of identifier for any kind of <a class=\"localLink\" href=\"http://schema.org/Thing\">Thing</a>, such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See <a href=\"/docs/datamodel.html#identifierBg\">background notes</a> for more details.'),
(265, 1, 7, 'locationCreated', 'locationCreated', 'The location where the CreativeWork was created, which may not be the same as the location depicted in the CreativeWork.'),
(266, 1, 7, 'subjectOf', 'subjectOf', 'A CreativeWork or Event about this Thing.'),
(267, 1, 7, 'mentions', 'mentions', 'Indicates that the CreativeWork contains a reference to, but is not necessarily about a concept.'),
(268, 1, 7, 'associatedMedia', 'associatedMedia', 'A media object that encodes this CreativeWork. This property is a synonym for encoding.'),
(269, 1, 7, 'license', 'license', 'A license document that applies to this content, typically indicated by URL.'),
(270, 1, 7, 'creator', 'creator', 'The creator/author of this CreativeWork. This is the same as the Author property for CreativeWork.'),
(271, 1, 7, 'isFamilyFriendly', 'isFamilyFriendly', 'Indicates whether this content is family friendly.'),
(272, 1, 7, 'temporalCoverage', 'temporalCoverage', 'The temporalCoverage of a CreativeWork indicates the period that the content applies to, i.e. that it describes, either as a DateTime or as a textual string indicating a time period in <a href=\"https://en.wikipedia.org/wiki/ISO_8601#Time_intervals\">ISO 8601 time interval format</a>. In\n      the case of a Dataset it will typically indicate the relevant time period in a precise notation (e.g. for a 2011 census dataset, the year 2011 would be written \"2011/2012\"). Other forms of content e.g. ScholarlyArticle, Book, TVSeries or TVEpisode may indicate their temporalCoverage in broader terms - textually or via well-known URL.\n      Written works such as books may sometimes have precise temporal coverage too, e.g. a work set in 1939 - 1945 can be indicated in ISO 8601 interval format format via \"1939/1945\".<br/><br/>\n\nOpen-ended date ranges can be written with \"..\" in place of the end date. For example, \"2015-11/..\" indicates a range beginning in November 2015 and with no specified final date. This is tentative and might be updated in future when ISO 8601 is officially updated.'),
(273, 1, 7, 'isBasedOnUrl', 'isBasedOnUrl', 'A resource that was used in the creation of this resource. This term can be repeated for multiple sources. For example, http://example.com/great-multiplication-intro.html.'),
(274, 1, 7, 'commentCount', 'commentCount', 'The number of comments this CreativeWork (e.g. Article, Question or Answer) has received. This is most applicable to works published in Web sites with commenting system; additional comments may exist elsewhere.'),
(275, 1, 7, 'url', 'url', 'URL of the item.'),
(276, 1, 7, 'sourceOrganization', 'sourceOrganization', 'The Organization on whose behalf the creator was working.'),
(277, 1, 7, 'disambiguatingDescription', 'disambiguatingDescription', 'A sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation.'),
(278, 1, 7, 'timeRequired', 'timeRequired', 'Approximate or typical time it takes to work with or through this learning resource for the typical intended target audience, e.g. \'PT30M\', \'PT1H25M\'.'),
(279, 1, 7, 'keywords', 'keywords', 'Keywords or tags used to describe this content. Multiple entries in a keywords list are typically delimited by commas.'),
(280, 1, 7, 'datePublished', 'datePublished', 'Date of first broadcast/publication.'),
(281, 1, 7, 'character', 'character', 'Fictional person connected with a creative work.'),
(282, 1, 7, 'spatialCoverage', 'spatialCoverage', 'The spatialCoverage of a CreativeWork indicates the place(s) which are the focus of the content. It is a subproperty of\n      contentLocation intended primarily for more technical and detailed materials. For example with a Dataset, it indicates\n      areas that the dataset describes: a dataset of New York weather would have spatialCoverage which was the place: the state of New York.'),
(283, 1, 7, 'citation', 'citation', 'A citation or reference to another creative work, such as another publication, web page, scholarly article, etc.'),
(284, 1, 7, 'discussionUrl', 'discussionUrl', 'A link to the page containing the comments of the CreativeWork.'),
(285, 1, 7, 'aggregateRating', 'aggregateRating', 'The overall rating, based on a collection of reviews or ratings, of the item.'),
(286, 1, 7, 'releasedEvent', 'releasedEvent', 'The place and time the release was issued, expressed as a PublicationEvent.'),
(287, 1, 7, 'sdLicense', 'sdLicense', 'A license document that applies to this structured data, typically indicated by URL.'),
(288, 1, 7, 'dateModified', 'dateModified', 'The date on which the CreativeWork was most recently modified or when the item\'s entry was modified within a DataFeed.'),
(289, 1, 7, 'learningResourceType', 'learningResourceType', 'The predominant type or kind characterizing the learning resource. For example, \'presentation\', \'handout\'.'),
(290, 1, 7, 'educationalAlignment', 'educationalAlignment', 'An alignment to an established educational framework.'),
(291, 1, 7, 'numberOfCredits', 'numberOfCredits', 'The number of credits or units awarded by a Course or required to complete an EducationalOccupationalProgram.'),
(292, 1, 7, 'interactionStatistic', 'interactionStatistic', 'The number of interactions for the CreativeWork using the WebSite or SoftwareApplication. The most specific child type of InteractionCounter should be used.'),
(293, 1, 7, 'translator', 'translator', 'Organization or person who adapts a creative work to different languages, regional differences and technical requirements of a target market, or that translates during some event.'),
(294, 1, 7, 'audio', 'audio', 'An embedded audio object.'),
(295, 1, 7, 'accessibilityAPI', 'accessibilityAPI', 'Indicates that the resource is compatible with the referenced accessibility API (<a href=\"http://www.w3.org/wiki/WebSchemas/Accessibility\">WebSchemas wiki lists possible values</a>).'),
(296, 1, 7, 'sdPublisher', 'sdPublisher', 'Indicates the party responsible for generating and publishing the current structured data markup, typically in cases where the structured data is derived automatically from existing published content but published on a different site. For example, student projects and open data initiatives often re-publish existing content with more explicitly structured metadata. The\n<a class=\"localLink\" href=\"http://schema.org/sdPublisher\">sdPublisher</a> property helps make such practices more explicit.'),
(297, 1, 7, 'material', 'material', 'A material that something is made from, e.g. leather, wool, cotton, paper.'),
(298, 1, 7, 'creativeWorkStatus', 'creativeWorkStatus', 'The status of a creative work in terms of its stage in a lifecycle. Example terms include Incomplete, Draft, Published, Obsolete. Some organizations define a set of terms for the stages of their publication lifecycle.'),
(299, 1, 7, 'recordedAt', 'recordedAt', 'The Event where the CreativeWork was recorded. The CreativeWork may capture all or part of the event.'),
(300, 1, 7, 'offers', 'offers', 'An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use <a class=\"localLink\" href=\"http://schema.org/businessFunction\">businessFunction</a> to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a <a class=\"localLink\" href=\"http://schema.org/Demand\">Demand</a>. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.'),
(301, 1, 7, 'publishingPrinciples', 'publishingPrinciples', 'The publishingPrinciples property indicates (typically via <a class=\"localLink\" href=\"http://schema.org/URL\">URL</a>) a document describing the editorial principles of an <a class=\"localLink\" href=\"http://schema.org/Organization\">Organization</a> (or individual e.g. a <a class=\"localLink\" href=\"http://schema.org/Person\">Person</a> writing a blog) that relate to their activities as a publisher, e.g. ethics or diversity policies. When applied to a <a class=\"localLink\" href=\"http://schema.org/CreativeWork\">CreativeWork</a> (e.g. <a class=\"localLink\" href=\"http://schema.org/NewsArticle\">NewsArticle</a>) the principles are those of the party primarily responsible for the creation of the <a class=\"localLink\" href=\"http://schema.org/CreativeWork\">CreativeWork</a>.<br/><br/>\n\nWhile such policies are most typically expressed in natural language, sometimes related information (e.g. indicating a <a class=\"localLink\" href=\"http://schema.org/funder\">funder</a>) can be expressed using schema.org terminology.'),
(302, 1, 7, 'copyrightYear', 'copyrightYear', 'The year during which the claimed copyright for the CreativeWork was first asserted.'),
(303, 1, 7, 'temporal', 'temporal', 'The \"temporal\" property can be used in cases where more specific properties\n(e.g. <a class=\"localLink\" href=\"http://schema.org/temporalCoverage\">temporalCoverage</a>, <a class=\"localLink\" href=\"http://schema.org/dateCreated\">dateCreated</a>, <a class=\"localLink\" href=\"http://schema.org/dateModified\">dateModified</a>, <a class=\"localLink\" href=\"http://schema.org/datePublished\">datePublished</a>) are not known to be appropriate.'),
(304, 1, 7, 'inLanguage', 'inLanguage', 'The language of the content or performance or used in an action. Please use one of the language codes from the <a href=\"http://tools.ietf.org/html/bcp47\">IETF BCP 47 standard</a>. See also <a class=\"localLink\" href=\"http://schema.org/availableLanguage\">availableLanguage</a>.'),
(305, 1, 8, 'address', 'address', 'The locn:address property relationship associates any resource with the locn:Address class '),
(306, 1, 8, 'addressArea', 'address area', 'The name or names of a geographic area or locality that groups a number of addressable objects for addressing purposes, without being an administrative unit. This would typically be part of a city, a neighbourhood or village. The domain of locn:addressArea is locn:Address.'),
(307, 1, 8, 'addressId', 'address ID', 'The concept of adding a globally unique identifier for each instance of an address is a crucial part of the INSPIRE data spec. The domain of locn:addressId is locn:Address.'),
(308, 1, 8, 'adminUnitL1', 'admin unit level 1', 'The uppermost administrative unit for the address, almost always a country. The domain of locn:adminUnitL1 is locn:Address and the range is a literal, conceptually defined by the INSPIRE Geographical Name data type.'),
(309, 1, 8, 'adminUnitL2', 'admin unit level 2', 'The region of the address, usually a county, state or other such area that typically encompasses several localities. The domain of  locn:adminUnitL2 is locn:Address and the range is a literal, conceptually defined by the INSPIRE Geographical Name data type.'),
(310, 1, 8, 'fullAddress', 'full address', 'The complete address written as a string, with or without formatting. The domain of locn:fullAddress is locn:Address.'),
(311, 1, 8, 'geographicName', 'geographic name', '\nA geographic name is a proper noun applied to a spatial object. Taking the example used in the relevant INSPIRE data specification (page 18), the following are all valid geographic names for the Greek capital:\n- Αθήνα (the Greek endonym written in the Greek script)\n- Athína (the standard Romanisation of the endonym)\n- Athens (the English language exonym)\nFor INSPIRE-conformant data, provide the metadata for the geographic name using a skos:Concept as a datatype.\n'),
(312, 1, 8, 'geometry', 'geometry', 'Associates any resource with the corresponding geometry.'),
(313, 1, 8, 'location', 'location', 'The location property links any resource to the Location Class. Asserting the location relationship implies only that the domain has some connection to a Location in time or space. It does not imply that the resource is necessarily at that location at the time when the assertion is made.'),
(314, 1, 8, 'locatorDesignator', 'locator designator', 'A number or a sequence of characters that uniquely identifies the locator within the relevant scope(s). The full identification of the locator could include one or more locator designators.\n    '),
(315, 1, 8, 'locatorName', 'locator name', 'Proper noun(s) applied to the real world entity identified by the locator. The locator name could be the name of the property or complex, of the building or part of the building, or it could be the name of a room inside a building. \n    '),
(316, 1, 8, 'poBox', 'PO box', 'The Post Office Box number. The domain of locn:poBox is locn:Address.'),
(317, 1, 8, 'postCode', 'post code', 'The post code (a.k.a postal code, zip code etc.). Post codes are common elements in many countries\' postal address systems. The domain of locn:postCode is locn:Address.'),
(318, 1, 8, 'postName', 'post name', 'The key postal division of the address, usually the city. (INSPIRE\'s definition is \"One or more names created and maintained for postal purposes to identify a subdivision of addresses and postal delivery points.\"). The domain of locn:postName is locn:Address.'),
(319, 1, 8, 'thoroughfare', 'thoroughfare', 'An address component that represents the name of a passage or way through from one location to another. A thoroughfare is not necessarily a road, it might be a waterway or some other feature. The domain of locn:thoroughfare is locn:Address.'),
(320, 1, 9, 'quantity', 'quantité de produits achetés', NULL),
(321, 1, 9, 'price', 'Prix', NULL),
(322, 1, 9, 'product_name', 'Nom du produit', NULL),
(323, 1, 9, 'product_category', 'Catégorie du produit', NULL),
(324, 1, 9, 'unit_price', 'Prix unitaire', NULL),
(325, 1, 9, 'type_shop', 'Type du magasin', NULL),
(326, NULL, 9, 'shop_name', 'Nom du magasin', NULL),
(327, NULL, 9, 'id_commande', 'Lien commande', NULL),
(328, NULL, 9, 'lien_detail_cmd', 'Details de la commande', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource`
--

DROP TABLE IF EXISTS `resource`;
CREATE TABLE IF NOT EXISTS `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `resource_template_id` int(11) DEFAULT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(4, 1, 94, 4, NULL, 'Julien Dupont', 1, '2020-04-16 10:05:48', '2020-04-17 11:47:49', 'Omeka\\Entity\\Item'),
(5, 1, 113, 7, NULL, 'Beurre demi-sel', 1, '2020-04-16 10:07:19', '2020-04-16 10:08:45', 'Omeka\\Entity\\Item'),
(6, 1, 113, 7, NULL, 'Baguette', 1, '2020-04-16 10:09:18', '2020-04-16 10:09:18', 'Omeka\\Entity\\Item'),
(7, 1, 112, 8, NULL, 'Magasin de Châtelet', 1, '2020-04-16 10:13:45', '2020-04-17 11:47:18', 'Omeka\\Entity\\Item'),
(8, 1, 114, 6, NULL, 'Achat 2 beurre demi sel', 1, '2020-04-16 10:14:27', '2020-04-17 12:13:05', 'Omeka\\Entity\\Item'),
(9, 1, 114, 6, NULL, 'Achat 3 baguettes', 1, '2020-04-16 10:15:11', '2020-04-17 12:12:54', 'Omeka\\Entity\\Item'),
(10, 1, 111, 5, NULL, 'achats du 16/04/2020 de Mr Dupon', 1, '2020-04-16 10:20:53', '2020-04-17 12:14:36', 'Omeka\\Entity\\Item'),
(11, 1, 94, 4, NULL, 'Emma Bernard', 1, '2020-04-17 12:24:04', '2020-04-17 12:24:04', 'Omeka\\Entity\\Item'),
(12, 1, 113, 7, NULL, 'Crème solaire', 1, '2020-04-17 12:24:58', '2020-04-17 12:24:58', 'Omeka\\Entity\\Item'),
(13, 1, 113, 7, NULL, 'Spaghettis 500g', 1, '2020-04-17 12:25:46', '2020-04-17 14:46:13', 'Omeka\\Entity\\Item'),
(14, 1, 114, 6, NULL, 'Achat d\'une crème solaire', 1, '2020-04-17 12:26:39', '2020-04-17 12:26:39', 'Omeka\\Entity\\Item'),
(15, 1, 114, 6, NULL, 'Achat de 3 packets de spaghettis 500g', 1, '2020-04-17 12:29:31', '2020-04-17 12:29:31', 'Omeka\\Entity\\Item'),
(16, 1, 111, 5, NULL, 'Achats du 07/04/2020 de Mme Emma Bernard', 1, '2020-04-17 12:30:43', '2020-04-17 12:30:43', 'Omeka\\Entity\\Item'),
(17, 1, 112, 8, NULL, 'Magasin rue de Rivoli', 1, '2020-04-22 09:34:40', '2020-04-22 09:35:05', 'Omeka\\Entity\\Item'),
(18, 1, 94, 4, NULL, 'Agathe Dubois', 1, '2020-04-22 09:37:32', '2020-04-22 09:37:32', 'Omeka\\Entity\\Item'),
(19, 1, 113, 7, NULL, 'Tomates (1kg)', 1, '2020-04-22 09:38:35', '2020-04-22 09:38:35', 'Omeka\\Entity\\Item'),
(20, 1, 114, 6, NULL, 'Achat de 500g de tomates', 1, '2020-04-22 09:39:30', '2020-04-22 09:39:30', 'Omeka\\Entity\\Item'),
(21, 1, 113, 7, NULL, 'Lot de 4 steack hachés', 1, '2020-04-22 09:40:12', '2020-04-22 09:40:12', 'Omeka\\Entity\\Item'),
(22, 1, 114, 6, NULL, 'Achat 2 lots de 4 steacks hachés', 1, '2020-04-22 09:40:57', '2020-04-22 09:40:57', 'Omeka\\Entity\\Item'),
(23, 1, 114, 6, NULL, 'Achat 1 spaghettis 500g', 1, '2020-04-22 10:00:30', '2020-04-22 10:00:30', 'Omeka\\Entity\\Item'),
(24, 1, 111, 5, NULL, 'Achats du 07/04/2020 de Mme Agathe Dubois', 1, '2020-04-22 10:03:23', '2020-04-22 10:28:03', 'Omeka\\Entity\\Item'),
(25, 1, 112, 8, NULL, 'Magasin de la Défense', 1, '2020-04-22 10:06:04', '2020-04-22 10:06:04', 'Omeka\\Entity\\Item'),
(26, 1, 112, 8, NULL, 'Magasin de Marseilles', 1, '2020-04-22 10:06:41', '2020-04-22 10:06:41', 'Omeka\\Entity\\Item'),
(27, 1, 112, 8, NULL, 'Magasin de Chamonix', 1, '2020-04-22 10:07:29', '2020-04-22 10:07:29', 'Omeka\\Entity\\Item'),
(28, 1, 112, 8, NULL, 'Web', 1, '2020-04-22 10:08:19', '2020-04-22 10:08:19', 'Omeka\\Entity\\Item'),
(29, 1, 112, 8, NULL, 'Magasin Rennes Le Blosne', 1, '2020-04-22 10:09:28', '2020-04-22 10:09:28', 'Omeka\\Entity\\Item'),
(30, 1, 112, 8, NULL, 'Magasin Rennes Alma', 1, '2020-04-22 10:10:54', '2020-04-22 10:10:54', 'Omeka\\Entity\\Item'),
(31, 1, 112, 8, NULL, 'Magasin Tours Les Atlantes', 1, '2020-04-22 10:12:10', '2020-04-22 10:12:10', 'Omeka\\Entity\\Item'),
(32, 1, 112, 8, NULL, 'Magasin Tours Ma Petite Madeleine', 1, '2020-04-22 10:13:06', '2020-04-22 10:13:06', 'Omeka\\Entity\\Item'),
(33, 1, 112, 8, NULL, 'Magasin Lyon Confluence', 1, '2020-04-22 10:14:32', '2020-04-22 10:14:32', 'Omeka\\Entity\\Item'),
(34, 1, 112, 8, NULL, 'Magasin Lyon La Part Dieu', 1, '2020-04-22 10:15:53', '2020-04-22 10:15:53', 'Omeka\\Entity\\Item'),
(35, 1, 113, 7, NULL, 'Salade', 1, '2020-04-22 10:16:38', '2020-04-22 10:16:38', 'Omeka\\Entity\\Item'),
(36, 1, 113, 7, NULL, 'Pommes (1kg)', 1, '2020-04-22 10:17:16', '2020-04-22 10:17:16', 'Omeka\\Entity\\Item'),
(37, 1, 113, 7, NULL, 'Clémentines (1kg)', 1, '2020-04-22 10:17:51', '2020-04-22 10:17:51', 'Omeka\\Entity\\Item'),
(38, 1, 113, 7, NULL, 'Sauce tomate 250g', 1, '2020-04-22 10:19:21', '2020-04-22 10:19:21', 'Omeka\\Entity\\Item'),
(39, 1, 113, 7, NULL, '500g escalope de dinde', 1, '2020-04-22 10:21:31', '2020-04-22 10:21:31', 'Omeka\\Entity\\Item'),
(40, 1, 94, 6, NULL, 'Achat 2 escalopes de dinde 500g', 1, '2020-04-22 10:22:48', '2020-04-22 10:22:48', 'Omeka\\Entity\\Item'),
(41, 1, 114, 6, NULL, 'Achat 3 sauces tomates 250g', 1, '2020-04-22 10:23:36', '2020-04-22 10:23:36', 'Omeka\\Entity\\Item'),
(42, 1, 111, 5, NULL, 'Achats du 20/04/2020 de Mme Emma Bernard', 1, '2020-04-22 19:03:59', '2020-04-22 19:03:59', 'Omeka\\Entity\\Item'),
(43, 1, 114, 6, NULL, 'Achat de 1kg de clémentines', 1, '2020-04-22 19:06:12', '2020-04-22 19:06:12', 'Omeka\\Entity\\Item'),
(44, 1, 114, 6, NULL, 'Achat de 2kg de clémentines', 1, '2020-04-22 19:07:10', '2020-04-22 19:07:10', 'Omeka\\Entity\\Item'),
(45, 1, 114, 6, NULL, 'Achat de 4 packets de 500g d\'escalopes de dinde', 1, '2020-04-22 19:08:49', '2020-04-22 19:08:49', 'Omeka\\Entity\\Item'),
(46, 1, 94, 4, NULL, 'Philippe Legrand', 1, '2020-04-22 19:10:39', '2020-04-22 19:10:39', 'Omeka\\Entity\\Item'),
(47, 1, 94, 4, NULL, 'Catherine Thomas', 1, '2020-04-22 19:11:53', '2020-04-22 19:11:53', 'Omeka\\Entity\\Item'),
(48, 1, 94, 4, NULL, 'Jean Rousseau', 1, '2020-04-22 19:12:34', '2020-04-22 19:12:34', 'Omeka\\Entity\\Item'),
(49, 1, 94, 4, NULL, 'Christine Moreau', 1, '2020-04-22 19:13:13', '2020-04-22 19:13:13', 'Omeka\\Entity\\Item'),
(50, 1, 94, 4, NULL, 'Alain Muller', 1, '2020-04-22 19:14:06', '2020-04-22 19:14:06', 'Omeka\\Entity\\Item'),
(51, 1, 94, 4, NULL, 'Brigitte Mercier', 1, '2020-04-22 19:15:02', '2020-04-22 19:15:02', 'Omeka\\Entity\\Item'),
(52, 1, 94, 4, NULL, 'Eric Lambert', 1, '2020-04-22 19:15:31', '2020-04-22 19:15:31', 'Omeka\\Entity\\Item'),
(53, 1, 111, 5, NULL, 'Achats du 18/05/2019 de Mme Brigitte Mercier', 1, '2020-04-22 19:17:46', '2020-04-22 19:17:46', 'Omeka\\Entity\\Item'),
(54, 1, 114, 6, NULL, 'Achat de 5kg de pommes', 1, '2020-04-22 19:20:25', '2020-04-22 19:20:25', 'Omeka\\Entity\\Item'),
(55, 1, 111, 5, NULL, 'Achats du 22/04/2020 de M. Eric Lambert', 1, '2020-04-22 19:22:41', '2020-04-22 19:23:29', 'Omeka\\Entity\\Item'),
(56, 1, 114, 6, NULL, 'Achat de 2 sauces tomates de 250g', 1, '2020-04-22 19:24:34', '2020-04-22 19:24:34', 'Omeka\\Entity\\Item'),
(57, 1, 114, 6, NULL, 'Achat de 4 paquets de spaghettis 500g', 1, '2020-04-22 19:25:45', '2020-04-22 19:25:45', 'Omeka\\Entity\\Item'),
(58, 1, 114, 6, NULL, 'Achat de 1 lot de steack hachés', 1, '2020-04-22 19:27:30', '2020-04-22 19:27:30', 'Omeka\\Entity\\Item'),
(59, 1, 114, 6, NULL, 'Achat de 200g de tomates', 1, '2020-04-22 19:28:17', '2020-04-22 19:28:17', 'Omeka\\Entity\\Item'),
(60, 1, 114, 6, NULL, 'Achat de 1 salade', 1, '2020-04-22 19:29:01', '2020-04-22 19:29:01', 'Omeka\\Entity\\Item'),
(61, 1, 114, 6, NULL, 'Achat de 2 crèmes solaires', 1, '2020-04-22 19:30:26', '2020-04-22 19:30:26', 'Omeka\\Entity\\Item'),
(62, 1, 114, 6, NULL, 'Achat de 1 baguette', 1, '2020-04-22 19:31:28', '2020-04-22 19:31:28', 'Omeka\\Entity\\Item'),
(63, 1, 113, 7, NULL, 'Yaourts x4', 1, '2020-04-22 19:32:57', '2020-04-22 19:32:57', 'Omeka\\Entity\\Item'),
(64, 1, 113, 7, NULL, 'Boite de chewing-gum', 1, '2020-04-22 19:33:38', '2020-04-22 19:33:38', 'Omeka\\Entity\\Item'),
(65, 1, 114, 6, NULL, 'Achat de 2 boites de chewing-gum', 1, '2020-04-22 19:35:28', '2020-04-22 19:35:28', 'Omeka\\Entity\\Item'),
(66, 1, 114, 6, NULL, 'Achat de 1 beurre demi-sel', 1, '2020-04-22 19:36:07', '2020-04-22 19:36:07', 'Omeka\\Entity\\Item'),
(67, 1, 114, 6, NULL, 'Achat de 2 paquets de 500g de spaghettis', 1, '2020-04-22 19:37:09', '2020-04-22 19:37:09', 'Omeka\\Entity\\Item'),
(68, 1, 114, 6, NULL, 'Achat de 1kg de pommes', 1, '2020-04-22 19:37:45', '2020-04-22 19:37:45', 'Omeka\\Entity\\Item'),
(69, 1, 114, 6, NULL, 'Achat de 2 salades', 1, '2020-04-22 19:38:16', '2020-04-22 19:38:16', 'Omeka\\Entity\\Item'),
(70, 1, 114, 6, NULL, 'Achat de 1,5 kg de pommes', 1, '2020-04-22 19:38:47', '2020-04-22 19:38:47', 'Omeka\\Entity\\Item'),
(71, 1, 114, 6, NULL, 'Achat de 1,5 kg de clémentines', 1, '2020-04-22 19:39:33', '2020-04-22 19:39:33', 'Omeka\\Entity\\Item'),
(72, 1, 114, 6, NULL, 'Achat de 1kg de tomates', 1, '2020-04-22 19:40:21', '2020-04-22 19:40:21', 'Omeka\\Entity\\Item'),
(73, 1, 114, 6, NULL, 'Achat de 3 lots de 4 yaourts', 1, '2020-04-22 19:40:55', '2020-04-22 19:40:55', 'Omeka\\Entity\\Item'),
(74, 1, 111, 5, NULL, 'Achats du 13/05/2020 de M. Alain Muller', 1, '2020-04-22 19:44:01', '2020-04-22 19:44:01', 'Omeka\\Entity\\Item'),
(75, 1, 111, 5, NULL, 'Achats du 30/03/2020 de Mme Brigitte Mercier', 1, '2020-04-22 19:45:31', '2020-04-22 19:45:31', 'Omeka\\Entity\\Item'),
(76, 1, 111, 5, NULL, 'Achats du 03/03/2020 de M. Philippe Legrand', 1, '2020-04-22 19:48:13', '2020-04-22 19:48:13', 'Omeka\\Entity\\Item'),
(77, 1, 111, 5, NULL, 'Achats du 28/02/2020 de M. Jean Rousseau', 1, '2020-04-22 19:49:59', '2020-04-22 19:49:59', 'Omeka\\Entity\\Item');

-- --------------------------------------------------------

--
-- Structure de la table `resource_class`
--

DROP TABLE IF EXISTS `resource_class`;
CREATE TABLE IF NOT EXISTS `resource_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_class`
--

INSERT INTO `resource_class` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'Agent', 'Agent', 'A resource that acts or has the power to act.'),
(2, NULL, 1, 'AgentClass', 'Agent Class', 'A group of agents.'),
(3, NULL, 1, 'BibliographicResource', 'Bibliographic Resource', 'A book, article, or other documentary resource.'),
(4, NULL, 1, 'FileFormat', 'File Format', 'A digital resource format.'),
(5, NULL, 1, 'Frequency', 'Frequency', 'A rate at which something recurs.'),
(6, NULL, 1, 'Jurisdiction', 'Jurisdiction', 'The extent or range of judicial, law enforcement, or other authority.'),
(7, NULL, 1, 'LicenseDocument', 'License Document', 'A legal document giving official permission to do something with a Resource.'),
(8, NULL, 1, 'LinguisticSystem', 'Linguistic System', 'A system of signs, symbols, sounds, gestures, or rules used in communication.'),
(9, NULL, 1, 'Location', 'Location', 'A spatial region or named place.'),
(10, NULL, 1, 'LocationPeriodOrJurisdiction', 'Location, Period, or Jurisdiction', 'A location, period of time, or jurisdiction.'),
(11, NULL, 1, 'MediaType', 'Media Type', 'A file format or physical medium.'),
(12, NULL, 1, 'MediaTypeOrExtent', 'Media Type or Extent', 'A media type or extent.'),
(13, NULL, 1, 'MethodOfInstruction', 'Method of Instruction', 'A process that is used to engender knowledge, attitudes, and skills.'),
(14, NULL, 1, 'MethodOfAccrual', 'Method of Accrual', 'A method by which resources are added to a collection.'),
(15, NULL, 1, 'PeriodOfTime', 'Period of Time', 'An interval of time that is named or defined by its start and end dates.'),
(16, NULL, 1, 'PhysicalMedium', 'Physical Medium', 'A physical material or carrier.'),
(17, NULL, 1, 'PhysicalResource', 'Physical Resource', 'A material thing.'),
(18, NULL, 1, 'Policy', 'Policy', 'A plan or course of action by an authority, intended to influence and determine decisions, actions, and other matters.'),
(19, NULL, 1, 'ProvenanceStatement', 'Provenance Statement', 'A statement of any changes in ownership and custody of a resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(20, NULL, 1, 'RightsStatement', 'Rights Statement', 'A statement about the intellectual property rights (IPR) held in or over a Resource, a legal document giving official permission to do something with a resource, or a statement about access rights.'),
(21, NULL, 1, 'SizeOrDuration', 'Size or Duration', 'A dimension or extent, or a time taken to play or execute.'),
(22, NULL, 1, 'Standard', 'Standard', 'A basis for comparison; a reference point against which other things can be evaluated.'),
(23, NULL, 2, 'Collection', 'Collection', 'An aggregation of resources.'),
(24, NULL, 2, 'Dataset', 'Dataset', 'Data encoded in a defined structure.'),
(25, NULL, 2, 'Event', 'Event', 'A non-persistent, time-based occurrence.'),
(26, NULL, 2, 'Image', 'Image', 'A visual representation other than text.'),
(27, NULL, 2, 'InteractiveResource', 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced.'),
(28, NULL, 2, 'Service', 'Service', 'A system that provides one or more functions.'),
(29, NULL, 2, 'Software', 'Software', 'A computer program in source or compiled form.'),
(30, NULL, 2, 'Sound', 'Sound', 'A resource primarily intended to be heard.'),
(31, NULL, 2, 'Text', 'Text', 'A resource consisting primarily of words for reading.'),
(32, NULL, 2, 'PhysicalObject', 'Physical Object', 'An inanimate, three-dimensional object or substance.'),
(33, NULL, 2, 'StillImage', 'Still Image', 'A static visual representation.'),
(34, NULL, 2, 'MovingImage', 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession.'),
(35, NULL, 3, 'AcademicArticle', 'Academic Article', 'A scholarly academic article, typically published in a journal.'),
(36, NULL, 3, 'Article', 'Article', 'A written composition in prose, usually nonfiction, on a specific topic, forming an independent part of a book or other publication, as a newspaper or magazine.'),
(37, NULL, 3, 'AudioDocument', 'audio document', 'An audio document; aka record.'),
(38, NULL, 3, 'AudioVisualDocument', 'audio-visual document', 'An audio-visual document; film, video, and so forth.'),
(39, NULL, 3, 'Bill', 'Bill', 'Draft legislation presented for discussion to a legal body.'),
(40, NULL, 3, 'Book', 'Book', 'A written or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.'),
(41, NULL, 3, 'BookSection', 'Book Section', 'A section of a book.'),
(42, NULL, 3, 'Brief', 'Brief', 'A written argument submitted to a court.'),
(43, NULL, 3, 'Chapter', 'Chapter', 'A chapter of a book.'),
(44, NULL, 3, 'Code', 'Code', 'A collection of statutes.'),
(45, NULL, 3, 'CollectedDocument', 'Collected Document', 'A document that simultaneously contains other documents.'),
(46, NULL, 3, 'Collection', 'Collection', 'A collection of Documents or Collections'),
(47, NULL, 3, 'Conference', 'Conference', 'A meeting for consultation or discussion.'),
(48, NULL, 3, 'CourtReporter', 'Court Reporter', 'A collection of legal cases.'),
(49, NULL, 3, 'Document', 'Document', 'A document (noun) is a bounded physical representation of body of information designed with the capacity (and usually intent) to communicate. A document may manifest symbolic, diagrammatic or sensory-representational information.'),
(50, NULL, 3, 'DocumentPart', 'document part', 'a distinct part of a larger document or collected document.'),
(51, NULL, 3, 'DocumentStatus', 'Document Status', 'The status of the publication of a document.'),
(52, NULL, 3, 'EditedBook', 'Edited Book', 'An edited book.'),
(53, NULL, 3, 'Email', 'EMail', 'A written communication addressed to a person or organization and transmitted electronically.'),
(54, NULL, 3, 'Event', 'Event', NULL),
(55, NULL, 3, 'Excerpt', 'Excerpt', 'A passage selected from a larger work.'),
(56, NULL, 3, 'Film', 'Film', 'aka movie.'),
(57, NULL, 3, 'Hearing', 'Hearing', 'An instance or a session in which testimony and arguments are presented, esp. before an official, as a judge in a lawsuit.'),
(58, NULL, 3, 'Image', 'Image', 'A document that presents visual or diagrammatic information.'),
(59, NULL, 3, 'Interview', 'Interview', 'A formalized discussion between two or more people.'),
(60, NULL, 3, 'Issue', 'Issue', 'something that is printed or published and distributed, esp. a given number of a periodical'),
(61, NULL, 3, 'Journal', 'Journal', 'A periodical of scholarly journal Articles.'),
(62, NULL, 3, 'LegalCaseDocument', 'Legal Case Document', 'A document accompanying a legal case.'),
(63, NULL, 3, 'LegalDecision', 'Decision', 'A document containing an authoritative determination (as a decree or judgment) made after consideration of facts or law.'),
(64, NULL, 3, 'LegalDocument', 'Legal Document', 'A legal document; for example, a court decision, a brief, and so forth.'),
(65, NULL, 3, 'Legislation', 'Legislation', 'A legal document proposing or enacting a law or a group of laws.'),
(66, NULL, 3, 'Letter', 'Letter', 'A written or printed communication addressed to a person or organization and usually transmitted by mail.'),
(67, NULL, 3, 'Magazine', 'Magazine', 'A periodical of magazine Articles. A magazine is a publication that is issued periodically, usually bound in a paper cover, and typically contains essays, stories, poems, etc., by many writers, and often photographs and drawings, frequently specializing in a particular subject or area, as hobbies, news, or sports.'),
(68, NULL, 3, 'Manual', 'Manual', 'A small reference book, especially one giving instructions.'),
(69, NULL, 3, 'Manuscript', 'Manuscript', 'An unpublished Document, which may also be submitted to a publisher for publication.'),
(70, NULL, 3, 'Map', 'Map', 'A graphical depiction of geographic features.'),
(71, NULL, 3, 'MultiVolumeBook', 'Multivolume Book', 'A loose, thematic, collection of Documents, often Books.'),
(72, NULL, 3, 'Newspaper', 'Newspaper', 'A periodical of documents, usually issued daily or weekly, containing current news, editorials, feature articles, and usually advertising.'),
(73, NULL, 3, 'Note', 'Note', 'Notes or annotations about a resource.'),
(74, NULL, 3, 'Patent', 'Patent', 'A document describing the exclusive right granted by a government to an inventor to manufacture, use, or sell an invention for a certain number of years.'),
(75, NULL, 3, 'Performance', 'Performance', 'A public performance.'),
(76, NULL, 3, 'Periodical', 'Periodical', 'A group of related documents issued at regular intervals.'),
(77, NULL, 3, 'PersonalCommunication', 'Personal Communication', 'A communication between an agent and one or more specific recipients.'),
(78, NULL, 3, 'PersonalCommunicationDocument', 'Personal Communication Document', 'A personal communication manifested in some document.'),
(79, NULL, 3, 'Proceedings', 'Proceedings', 'A compilation of documents published from an event, such as a conference.'),
(80, NULL, 3, 'Quote', 'Quote', 'An excerpted collection of words.'),
(81, NULL, 3, 'ReferenceSource', 'Reference Source', 'A document that presents authoritative reference information, such as a dictionary or encylopedia .'),
(82, NULL, 3, 'Report', 'Report', 'A document describing an account or statement describing in detail an event, situation, or the like, usually as the result of observation, inquiry, etc..'),
(83, NULL, 3, 'Series', 'Series', 'A loose, thematic, collection of Documents, often Books.'),
(84, NULL, 3, 'Slide', 'Slide', 'A slide in a slideshow'),
(85, NULL, 3, 'Slideshow', 'Slideshow', 'A presentation of a series of slides, usually presented in front of an audience with written text and images.'),
(86, NULL, 3, 'Standard', 'Standard', 'A document describing a standard'),
(87, NULL, 3, 'Statute', 'Statute', 'A bill enacted into law.'),
(88, NULL, 3, 'Thesis', 'Thesis', 'A document created to summarize research findings associated with the completion of an academic degree.'),
(89, NULL, 3, 'ThesisDegree', 'Thesis degree', 'The academic degree of a Thesis'),
(90, NULL, 3, 'Webpage', 'Webpage', 'A web page is an online document available (at least initially) on the world wide web. A web page is written first and foremost to appear on the web, as distinct from other online resources such as books, manuscripts or audio documents which use the web primarily as a distribution mechanism alongside other more traditional methods such as print.'),
(91, NULL, 3, 'Website', 'Website', 'A group of Webpages accessible on the Web.'),
(92, NULL, 3, 'Workshop', 'Workshop', 'A seminar, discussion group, or the like, that emphasizes zxchange of ideas and the demonstration and application of techniques, skills, etc.'),
(93, NULL, 4, 'LabelProperty', 'Label Property', 'A foaf:LabelProperty is any RDF property with texual values that serve as labels.'),
(94, NULL, 4, 'Person', 'Person', 'A person.'),
(95, NULL, 4, 'Document', 'Document', 'A document.'),
(96, NULL, 4, 'Organization', 'Organization', 'An organization.'),
(97, NULL, 4, 'Group', 'Group', 'A class of Agents.'),
(98, NULL, 4, 'Agent', 'Agent', 'An agent (eg. person, group, software or physical artifact).'),
(99, NULL, 4, 'Project', 'Project', 'A project (a collective endeavour of some kind).'),
(100, NULL, 4, 'Image', 'Image', 'An image.'),
(101, NULL, 4, 'PersonalProfileDocument', 'PersonalProfileDocument', 'A personal profile RDF document.'),
(102, NULL, 4, 'OnlineAccount', 'Online Account', 'An online account.'),
(103, NULL, 4, 'OnlineGamingAccount', 'Online Gaming Account', 'An online gaming account.'),
(104, NULL, 4, 'OnlineEcommerceAccount', 'Online E-commerce Account', 'An online e-commerce account.'),
(105, NULL, 4, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.'),
(106, 1, 7, 'CreativeWork', 'CreativeWork', 'The most generic kind of creative work, including books, movies, photographs, software programs, etc.'),
(107, 1, 7, 'Course', 'Course', 'A description of an educational course which may be offered as distinct instances at which take place at different times or take place at different locations, or be offered through different media or modes of study. An educational course is a sequence of one or more educational events and/or creative works which aims to build knowledge, competence or ability of learners.'),
(108, 1, 7, 'Thing', 'Thing', 'The most generic type of item.'),
(109, 1, 8, 'Address', 'Address', 'An \"address representation\" as conceptually defined by the INSPIRE Address Representation data type. The locn:addressId property may be used to link this locn:Address to other representations.'),
(110, 1, 8, 'Geometry', 'Geometry', 'The locn:Geometry class provides the means to identify a location as a point, line, polygon, etc. expressed using coordinates in some coordinate reference system.'),
(111, 1, 9, 'Commande', 'Commande', NULL),
(112, NULL, 9, 'Shop', 'Magasin', NULL),
(113, NULL, 9, 'Product', 'Produit', NULL),
(114, NULL, 9, 'Det_commd', 'Détail Commande', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource_template`
--

DROP TABLE IF EXISTS `resource_template`;
CREATE TABLE IF NOT EXISTS `resource_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `title_property_id` int(11) DEFAULT NULL,
  `description_property_id` int(11) DEFAULT NULL,
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_39ECD52EEA750E8` (`label`),
  KEY `IDX_39ECD52E7E3C61F9` (`owner_id`),
  KEY `IDX_39ECD52E448CC1BD` (`resource_class_id`),
  KEY `IDX_39ECD52E724734A3` (`title_property_id`),
  KEY `IDX_39ECD52EB84E0D1D` (`description_property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource'),
(4, 1, 94, 1, NULL, 'C_Client'),
(5, 1, 111, 1, NULL, 'C_Commande'),
(6, 1, 114, 1, NULL, 'C_Detail Commande'),
(7, 1, 113, 1, NULL, 'C_Produit'),
(8, 1, 112, 1, NULL, 'C_Magasin');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template_property`
--

DROP TABLE IF EXISTS `resource_template_property`;
CREATE TABLE IF NOT EXISTS `resource_template_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_template_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `alternate_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `data_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  KEY `IDX_4689E2F1549213EC` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template_property`
--

INSERT INTO `resource_template_property` (`id`, `resource_template_id`, `property_id`, `alternate_label`, `alternate_comment`, `position`, `data_type`, `is_required`, `is_private`) VALUES
(1, 1, 1, NULL, NULL, 1, NULL, 0, 0),
(2, 1, 15, NULL, NULL, 2, NULL, 0, 0),
(3, 1, 8, NULL, NULL, 3, NULL, 0, 0),
(4, 1, 2, NULL, NULL, 4, NULL, 0, 0),
(5, 1, 7, NULL, NULL, 5, NULL, 0, 0),
(6, 1, 4, NULL, NULL, 6, NULL, 0, 0),
(7, 1, 9, NULL, NULL, 7, NULL, 0, 0),
(8, 1, 12, NULL, NULL, 8, NULL, 0, 0),
(9, 1, 40, 'Place', NULL, 9, NULL, 0, 0),
(10, 1, 5, NULL, NULL, 10, NULL, 0, 0),
(11, 1, 17, NULL, NULL, 11, NULL, 0, 0),
(12, 1, 6, NULL, NULL, 12, NULL, 0, 0),
(13, 1, 25, NULL, NULL, 13, NULL, 0, 0),
(14, 1, 10, NULL, NULL, 14, NULL, 0, 0),
(15, 1, 13, NULL, NULL, 15, NULL, 0, 0),
(16, 1, 29, NULL, NULL, 16, NULL, 0, 0),
(17, 1, 30, NULL, NULL, 17, NULL, 0, 0),
(18, 1, 50, NULL, NULL, 18, NULL, 0, 0),
(19, 1, 3, NULL, NULL, 19, NULL, 0, 0),
(20, 1, 41, NULL, NULL, 20, NULL, 0, 0),
(34, 4, 1, NULL, 'Nom du client', 1, NULL, 1, 0),
(35, 4, 4, NULL, NULL, 2, NULL, 0, 0),
(36, 4, 145, NULL, NULL, 3, NULL, 1, 0),
(37, 4, 139, NULL, NULL, 4, NULL, 1, 0),
(38, 4, 182, NULL, NULL, 5, NULL, 0, 0),
(39, 4, 305, NULL, NULL, 6, NULL, 0, 0),
(40, 4, 146, NULL, NULL, 7, NULL, 0, 0),
(41, 4, 123, NULL, NULL, 8, NULL, 0, 0),
(42, 5, 1, NULL, NULL, 1, NULL, 1, 0),
(43, 5, 4, NULL, NULL, 2, NULL, 0, 0),
(44, 5, 7, NULL, NULL, 3, NULL, 1, 0),
(45, 6, 1, NULL, NULL, 1, NULL, 1, 0),
(46, 6, 4, NULL, NULL, 2, NULL, 0, 0),
(47, 5, 321, NULL, NULL, 4, NULL, 1, 0),
(48, 6, 320, NULL, NULL, 3, NULL, 1, 0),
(49, 6, 321, NULL, NULL, 4, NULL, 1, 0),
(51, 6, 322, NULL, NULL, 5, 'resource:item', 1, 0),
(52, 5, 179, NULL, NULL, 5, 'resource:item', 0, 0),
(55, 7, 1, NULL, NULL, 1, NULL, 1, 0),
(56, 7, 4, NULL, NULL, 2, NULL, 0, 0),
(57, 7, 322, NULL, NULL, 3, NULL, 1, 0),
(58, 7, 323, NULL, NULL, 4, 'literal', 1, 0),
(59, 7, 324, NULL, NULL, 5, NULL, 1, 0),
(60, 8, 1, NULL, NULL, 1, NULL, 1, 0),
(61, 8, 4, NULL, NULL, 2, NULL, 0, 0),
(62, 8, 326, NULL, NULL, 3, NULL, 1, 0),
(63, 8, 305, NULL, NULL, 4, NULL, 1, 0),
(64, 8, 317, NULL, NULL, 5, NULL, 0, 0),
(65, 8, 325, NULL, NULL, 6, 'literal', 1, 0),
(68, 5, 328, NULL, NULL, 6, 'resource:item', 1, 0),
(69, 5, 326, NULL, NULL, 7, 'resource:item', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE IF NOT EXISTS `session` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longblob NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('57g7ekb4v0cmgeaj3hb3lms516', 0x5f5f5a467c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373538353239342e3332303936383b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226f3469756a396a363033326170376b337432316b6f65746c6863223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373535313531333b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538383839343b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373538383439363b7d733a34353a225a656e645f56616c696461746f725f437372665f73616c745f637573746f6d766f636162666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373535333737383b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373535313538343b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226538623763336136646433303438343539303738366634613039633135346433223b733a33323a223030326536633238626562616163363231653438623062653864323264643437223b7d733a343a2268617368223b733a36353a2230303265366332386265626161633632316534386230626538643232646434372d6538623763336136646433303438343539303738366634613039633135346433223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a353637323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a36373a7b733a33323a223732356136303332616665323633363733323630376663646230343030303662223b733a33323a223035313865623730383737303533666636646135623462613630353365623464223b733a33323a226335396434643061313736663435393464336264636134353262383038643663223b733a33323a223364363830313063623032323262316338393963366436343339656432373632223b733a33323a223066303666343633326139623033663930356637396261333964613937393766223b733a33323a226362396639383037323932356166643262393730656436306439393030376663223b733a33323a223761386437326635333435643464653466303865653336396461653463616630223b733a33323a223332383066653039323533346631633232313961646362383262333662393434223b733a33323a223533366565366533363264366663396134636662393065623233636639623938223b733a33323a223535353966366163366639323562316238343735396630373730626635346261223b733a33323a223336653135386431646635616536313531303932623431383663333832393239223b733a33323a223437306432666538613832376564306435666361366135303963626439303432223b733a33323a223666316434333266363836333433343639393737623231666631633962383430223b733a33323a223663343434633865356232663263326137333232666538303563653038613066223b733a33323a226166663836663238393634613432313130623130663261633339353932643962223b733a33323a226663303136356366626133613432336664613532623761373932633464636638223b733a33323a226238336635313835396631356637356433383137666462363933636662623831223b733a33323a223832393235373130363661303739316537656434343332656563633831653164223b733a33323a226433313832313337646135303531613236633730303831366333646562313333223b733a33323a223863633238393963343931313265663463663866646363626461626333396165223b733a33323a226664623263383336663039373561326630303334653533653332313232303832223b733a33323a223738666132636633333366336136326130386335333132633734636638306338223b733a33323a226437306233643736643635383462363933643831613230616562316631323738223b733a33323a223433633338343038353064346161616133636633393234646662366261666337223b733a33323a223566643465636163643564653237346230313738363863396462386530613835223b733a33323a226463396165323863666631326637613633643365393361373465306230663130223b733a33323a226434656639653061376238616236326334393639313430376664646166303832223b733a33323a223534396137316464356631646364313263373163373038663062313966623730223b733a33323a223065366361616162653663633863303064636237323438323662646461383333223b733a33323a226363376666363864663765326561316466306261633037353839663835656431223b733a33323a223763666632313063643864623366376462643334323131396630313262383564223b733a33323a223230623536303638663931353834366436356336316565616665636134656564223b733a33323a223136623361636535643331373566636139643635316434323437333530303365223b733a33323a226236373764386162346236646234663639333632653838633031643635653131223b733a33323a223066353563666433643532323138333639383963643032383036356663343239223b733a33323a226537636637613332333562336262366464346134626361373763373961336430223b733a33323a226534333137386436306635376331353239663637373461313139353039353364223b733a33323a223531333233643439363231656261616666626434313164353039363363386134223b733a33323a223830633635613132303564306634616563306237313937633038663237626362223b733a33323a223233366236633037626563613234363735386536663366346437623961616565223b733a33323a223962353335323833373733353537656237376264383138656331323033383132223b733a33323a226137366464373832633436393531626338653130653934333932613732646633223b733a33323a226134393265313736653536666163316534373133333936323432313161343431223b733a33323a223163666533646238333531373331626435343338373162616339633636306536223b733a33323a226139613833396237393066616233616530613362656435626361353831323338223b733a33323a223639383862316236306265323534626530613636323466303265353038646130223b733a33323a223439393933316432386437663666303933323836623631663663386633323966223b733a33323a223234393166653065336332316234306465626432323964313266303431643430223b733a33323a223030386237313336643731663738626632396361633666323964333834663761223b733a33323a223337383830383765376663646435656539326631623166303966303735316635223b733a33323a226130613639333766353363333037306137623436333436366438626464346431223b733a33323a226135316262653061376633646564343565613532643466373265343531363539223b733a33323a226634363961333839383238393961343837663161343931396563343364333264223b733a33323a223061336331633631316665646262373933343866393431313164396264393836223b733a33323a223265613564386331613734363639663161393732363766376563313364356438223b733a33323a226564383564653737666661646564333230353862366162633431313264383037223b733a33323a226562613465396666366535626261393061623562393037613262326164363230223b733a33323a223761353761326463353637313538396365653834663466326264306235626566223b733a33323a223966326632623063363535333062653235373138363030316463356532366466223b733a33323a223862306664363031316164366639306566333465633061383964666565383564223b733a33323a223366326365386136383764373834303461383266336432376661316231353161223b733a33323a226232353137376436636235386262373665323664346231636261336330363035223b733a33323a223735663934333566363038656134343536396366363138343634393935323931223b733a33323a223833356631393964373735633430643830386334316632323437353961343535223b733a33323a223734303331663437393362316634636234656332343039313666636438663838223b733a33323a223134393861623164643630616336376661363532653733633461343837363261223b733a33323a226638633230363539363662623033633933393035666538636532343033313731223b733a33323a226430393135613261363566656335653166373966383432353730373738386336223b733a33323a223534373763663439666631306536343464383533646463373733363730353165223b733a33323a223664376330336530363962313661373932356562356162346436656434333532223b733a33323a226437306538386533643036303039663664303766303837303064356261613665223b733a33323a226565303933643838306539626338316364323136643738313736623964316438223b733a33323a223964373965376230633930653733633334323264646364363563333065396130223b733a33323a223939646562346166346662643361393833343531646438363831343137363963223b733a33323a226233623136373533306235656663616533376163393463643832336663316537223b733a33323a223038346239366330626333323939323661646266306361623263653836633534223b733a33323a223135613936303461626464613730306531653566303439323739386235343033223b733a33323a223735636530643238316163393336346461663365393930656366383066346134223b733a33323a223665346631353938306562333332356431636438363636616630643566623933223b733a33323a223263616563646536666661323566376366383065313137353532653837373466223b733a33323a226533336236386333396537353963643264393232313438636264633563653436223b733a33323a223539623336383937363766623234376637666562343734656666633631666463223b733a33323a226561663762633461346166366466343531633633653236653366663633366133223b733a33323a226332613533376632363138666662663535633934356138633062653239373864223b733a33323a226366653635656234306333643034323333373862663631353962316636333431223b733a33323a223662303733383336313262373266626333613035623339333065303032393539223b733a33323a226530313633303635613038333339653238393465353966353136363865306164223b733a33323a226231633539376531313333303631376339636135323938663733653866623166223b733a33323a223439383964386265366231396439353765373330653738633766356663653664223b733a33323a223232373930653535393036663662363863373161643833666633656338626232223b733a33323a226637396133376136636432343961626466333362636464613534666436316563223b733a33323a223363643764626633656132653962313835326635393433383235316338623634223b733a33323a223738333263626437393766336165646334346465646633646434353936643636223b733a33323a223432323935623665333064663639623861353631393431666532313238316536223b733a33323a223465343761356333343565636430613433656639656465613166623337626264223b733a33323a223263343131643664623532623265623663363430633336633639383237376338223b733a33323a223035343033393863303161373064316437303238356264383364666434643336223b733a33323a223165363437383130373836336232656330636665346334646263656166356535223b733a33323a226138633434363536646537343031623836666365643739613633316362656265223b733a33323a226532393533626462613034666537313365353533613936646330313964326463223b733a33323a223039353965313138353163336530663932313064616138666634396230626339223b733a33323a223735373262373766363538373162663635346331636335376633316661396532223b733a33323a223430353135383536623562396235383566653062313034656461336462316237223b733a33323a223638326339663161366166373564653361386235306664646666636239663831223b733a33323a226263663964383133623465653565323464313633336437393834316533383637223b733a33323a226638363836613535313932306133623461396164653838323633633362623033223b733a33323a223736306531623866373231626564373431306239663131626636316361336661223b733a33323a223638636461326633386432393233613039316239616431373235636466306163223b733a33323a223231363439323235653836363031323331653038376334376334346239353732223b733a33323a226333636663343837393533643734353365303030616432393730303262613961223b733a33323a226563343165643664333636323764303230643166633362653737333366353862223b733a33323a223965656237353463393666303632636165646539313530383733356438356637223b733a33323a223933373066623936353936313863396439323335343039303531343462376432223b733a33323a226166643466366461646563313237346165343133303233303736616663353831223b733a33323a223565376632376536363832306165663831336131633433386235333137663937223b733a33323a223562316166323964343334653237666338636134666166353764343261343466223b733a33323a223933353037663536343036323666656363333836303163626137346132363735223b733a33323a223663356564363664323764656161343665633832313231353662626363616633223b733a33323a226438633538363262626138336163313162646531333334613739656536373738223b733a33323a223439353439373633316466336539616362303738356361363835613739353762223b733a33323a223762373166373462343936363535383832343435373430326337343335613638223b733a33323a223839653138396433646630323436383833316461313762623832616361343636223b733a33323a226164643132386639636337303533356261613836653431373965663637613335223b733a33323a223365616139353462313961313737396436303830326235613933343365613237223b733a33323a223766636564326337393532613738643430303434353430316332363036343434223b733a33323a223134353664333063333431313730366665636431383039663530356630316338223b733a33323a223739636637633965303264396430616531363330643537343930613530643634223b733a33323a223430663334613864323031613839336130636332623639373031303665316666223b733a33323a223765333731363666326430383138333466636530346461613531303266666433223b733a33323a226339343530613432326361356134313635343131333266656333396562373961223b733a33323a223032666436613361366265306530633738656632353330313838663331366537223b733a33323a226562386333336261316135636235303735663633353963653334663962613835223b733a33323a223038346434653438396433376333313432376538316130393562396131613530223b733a33323a223339323431663266376137656235333030356533383466626238366430383934223b7d733a343a2268617368223b733a36353a2233393234316632663761376562353330303565333834666262383664303839342d3038346434653438396433376333313432376538316130393562396131613530223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a333939323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a34363a7b733a33323a226434326239383564356262663464373666393031666638646361663531643636223b733a33323a226431306533363231383433653264373135646239353037353730306233363863223b733a33323a226461316335613430356334336434326466616236643862363761363762306530223b733a33323a223563323862323334643962346666316432383766323565373832346234303833223b733a33323a223333323033353162396138343839623863326336306532373661646239653135223b733a33323a223366343433663438643764626235663565353233356235663634336632326232223b733a33323a223234366663653064663765343761323430323564643932623935633237666436223b733a33323a226466303235666235636165666333373636313831666134353238646363666232223b733a33323a223338323831383334313539616233346262666330326234306639646132333964223b733a33323a223963643266663038363431383631663032343262326137333032313566346666223b733a33323a223666373464336663343731656538363166653939633464303365643437636664223b733a33323a226438343932306535626161616231323531373835343463373232643865313563223b733a33323a223161366134646636336162383035633035616633613465313465323934346462223b733a33323a223964343865643865623231383561323335303466356434386264343233346431223b733a33323a223132623031646536303966386337363838626631633335346533663437373937223b733a33323a223466303137373965643030656237663034356335343030636539316138333135223b733a33323a226464646636373661633130386435303537653764356231343432663031393261223b733a33323a223562633833336461353232313431373339383231303537346335343132386237223b733a33323a223461323363616363376630383638343865313838333561316234313531323331223b733a33323a226664666561396338383934633932383530353566306430346363393665336435223b733a33323a223261313864613333316336303863636166356533366366323237336364663134223b733a33323a226637373230656338326333386364663262613734333131386163303765353336223b733a33323a223932633732306564653339343133306563623836623233393632373833356137223b733a33323a226464616637306330623230396136333262303064636531656364346333396261223b733a33323a226435636135623339613262613432356130643664313435616538326664353266223b733a33323a223662353534363666613839366461343730616261643466356463633864366638223b733a33323a226431303231613838396631666163396434343935303734326537353366623337223b733a33323a223133663464366637363535333835643735366265636266636430383130383737223b733a33323a223736346136333461336638313332613335343630306430313732366438636433223b733a33323a223765393465386139316361373066616133373230316236613039633438363031223b733a33323a223438386662633235633335306435396265663033323639363234653965393830223b733a33323a223864623962386132343365663163666539393738666562373162376565646539223b733a33323a223765636531613937323366643638386464333039323138363339623166326332223b733a33323a223563303035333632306665636463316331363262386238356539646234636462223b733a33323a223031336339646134623339333036613931663333656161326561313635396266223b733a33323a226638353766323631656532346163316532356238646661346566373537626665223b733a33323a223733376161313466383731383966643533383661393563646664353930633833223b733a33323a226434653134303331353161356336633365633764616138623362373733323336223b733a33323a223731306233626536343033373365356236303933623164363464633265333337223b733a33323a223835633637303563353034613463333965326365333838363761393231666635223b733a33323a223530363037353938623435316636613637333035643535633461383234306165223b733a33323a226633313438643436333464633363373262666632303331336630386335653530223b733a33323a223534366665343536616532376136313161303365366563643833613434306132223b733a33323a223964326330636531396465613563623639633532326132623163653437356465223b733a33323a223965306462303337653732386433633566333764393939626338316237353330223b733a33323a226432313131373739663163363035333763636533653935363532366633646138223b733a33323a226438623838373838386336353539363865326531333530663837393333613965223b733a33323a223063623833366535636530626436313763373637363831653165656333386266223b733a33323a223531366364666237333335333236393636626639346565636361663162376333223b733a33323a226634383161373136356163346263636439643262373936393366383032393832223b733a33323a223732373363393631316632663832356535356537393162353738636137616563223b733a33323a226365653961633635393530336464323531303861373262343230323062393563223b733a33323a226438343762636231626635633730333562356438363032346266373133613731223b733a33323a226265643762323937633634636232343833333237646165343633373436343965223b733a33323a226538336265353064306130326639663565653030353338613038356166653334223b733a33323a223136333331333666663562373638316161326535633637343837383036313331223b733a33323a223730396434626334613236353734376330643563323364366163343461616165223b733a33323a226236396664663830663336393138363036303431323538333839373535333532223b733a33323a223261623636623037636261386237326463626137373661313464306631303365223b733a33323a226664306162666336373631373561356333333762343638306163393765383565223b733a33323a223531646138343062366265326438346134386162393863363337623765383239223b733a33323a226639383862616438666365663130633265316536343031613936383731373635223b733a33323a226537626534643132653731313935646635663032663635663363333364343432223b733a33323a223032616532373330343865336366393166633735383464656634313066316164223b733a33323a226231656136366435373962303463383239656630646430663434333239656432223b733a33323a223832666263373234643633313130373436643432353465646437366661313337223b733a33323a223634386165343535646564393934303938613032336634623930383163313231223b733a33323a226563363037613061383033646238396164363931313663313065336436366638223b733a33323a223862326435303638376239303864613230636462333666333638616331623439223b733a33323a226262306132303130653934343534623737326633373637376139323266616631223b733a33323a223133393566326438323236363535653230616230633531323634346439653563223b733a33323a223064373831356437336234386136363633383930666365343465646563383730223b733a33323a223336656561363466323835346330326463616266666631616331396263366531223b733a33323a223032303062346161623132633439303363643736633264663762316331363238223b733a33323a223962613432313762356537386337383931376563383463333466623363396334223b733a33323a223836396265393731626530386636663761636666373036363565376266306266223b733a33323a223634343536386330336537346431333836333631333230616463663137396466223b733a33323a226165366638366566333330343436313662623661306231316437656334323635223b733a33323a223164613933663665343238313263363932373133326632386361396537313138223b733a33323a223361336562396461643161363762386539663966626337643634653638663134223b733a33323a223834343238666537303362363866353633666332333930343139316233323638223b733a33323a226237646338626138613665363363333065373731323866653530373133373138223b733a33323a226164623362653838303437396238383537326331366339653638353839383932223b733a33323a223835386230663063366332313736663161346661663738646234346533393730223b733a33323a223831653033343466623762643336306266353264326664393866366133613233223b733a33323a223233396132373639383263383865656334376239373930336364356530663464223b733a33323a226262366138663364316131323834373066396463373530633966393938376631223b733a33323a223834643839643664396634613936313239336665303865383739383164393634223b733a33323a223935306264336233613630356662376664663031313633653362643061656533223b733a33323a223066656166353265353930656439626462613862313435633531366432316636223b733a33323a223436633330323761366233623833643435316566346665656239326530393662223b733a33323a226165633961323034376364363362303137363437313862366531636331376630223b7d733a343a2268617368223b733a36353a2261656339613230343763643633623031373634373138623665316363313766302d3436633330323761366233623833643435316566346665656239326530393662223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637573746f6d766f636162666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a226366343039376336306363383735333464373834363230666234666339346431223b733a33323a226134366662663363633663366431626135616662333063376433643236643039223b733a33323a223637626533303665613036313634346439633738326462663561396562363966223b733a33323a223139353137366239633833353765613733663763643162366334326436356135223b733a33323a223063663638396130353031643933646266333366373263333634623330356462223b733a33323a226563333333326632383933376632346330633533633838663664356139336438223b733a33323a226433383837643839623761656432386562353934636633353164636634623838223b733a33323a226464626631666532666434616663303864373532343833366335366430656432223b7d733a343a2268617368223b733a36353a2264646266316665326664346166633038643735323438333663353664306564322d6433383837643839623761656432386562353934636633353164636634623838223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223138663939383066353034366639663063653134376435656162656666313866223b733a33323a226261656162306330303864653832376533663564356265663531303931653438223b733a33323a223532316130383564363330626539613865333763363231643635623833613336223b733a33323a223434386230366335306261363330646266663337353433366435396631656233223b7d733a343a2268617368223b733a36353a2234343862303663353062613633306462666633373534333664353966316562332d3532316130383564363330626539613865333763363231643635623833613336223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587585295),
('6nqv0n5nberh6mtgdh4t556lhv', 0x5f5f5a467c613a31303a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373133353432312e3831303737343b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22636c6a706e71676764316c7632656d3971736c37646c616e3631223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538363935393637303b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373133383631333b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373133383631333b7d733a31313a2245617379496e7374616c6c223b613a323a7b733a363a22455850495245223b693a313538363936323135323b733a31313a224558504952455f484f5053223b613a323a7b733a343a22686f7073223b693a31303b733a323a227473223b643a313538363935383535312e3638353430383b7d7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373133383235313b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373132393131333b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373132393131393b7d733a34353a225a656e645f56616c696461746f725f437372665f73616c745f637573746f6d766f636162666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373133383632333b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223733616466363436613232333134663239616532613230393363653438356233223b733a33323a223665653338316563653362323765313865626365663661353033623437323932223b7d733a343a2268617368223b733a36353a2236656533383165636533623237653138656263656636613530336234373239322d3733616466363436613232333134663239616532613230393363653438356233223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a323633323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32393a7b733a33323a223733653630326231303538353830666166313030333637356264656464616433223b733a33323a226330393434633566646161653339393733653563663230633463363966356239223b733a33323a223664623265353837633633636331633133316664363336613761656234313364223b733a33323a223862376231653633343334323838656430346338396565336338333831616535223b733a33323a223133633361653039666232636564353763623662626239633730663637393237223b733a33323a226436346431343835646636366664313731303566643931646562646563366164223b733a33323a223765656131373039616433623462616534393563363938666135373230636566223b733a33323a223338623665343633353266613832646537353136313261663834663763626531223b733a33323a223636613934626461653864633836353935386533393436646566383833313935223b733a33323a223236633238333964323432373631336362623939346330633931346263343264223b733a33323a223464653064633765656134356339653537306166636135373663663066303566223b733a33323a226432633037666537646532613965383639383264383231643436393538616561223b733a33323a223962623235356538666634366632623035336532666364616634363139333233223b733a33323a223166303330613936303139656131613036666266363364393535356234343464223b733a33323a223331326166333334346262613237633463343830343134366161623966343765223b733a33323a223338353636636361353763313138633535653765663138643632623661326561223b733a33323a223030663539373630623461616332336130363233633533306430363936376265223b733a33323a226139366235663130363431633665343165393762326466616261363631336565223b733a33323a223036386161633439613737623739646235343765613335663361633361373164223b733a33323a226537323538346163386462396537366139623236356631353135663839373162223b733a33323a223464623165313561323331613330353061333631653361366666643866373762223b733a33323a226435323735363538656430643632396638323961353063626337613361323939223b733a33323a223932333830646164613235613335326435336666653032306235653237396164223b733a33323a226563363131363066666336336362333731343437383833616262663662373433223b733a33323a226164643064346162313335653631323961323436326234383634646339353865223b733a33323a223664666366316561623338353535363335386233336362326539353935356331223b733a33323a226334373438656634653639333834393062353539393665623932653963383665223b733a33323a226331383536663565346634646530383934653130356337613762353439336338223b733a33323a223835393236373165393262316266323530376233393532643338353131636138223b733a33323a223566623837383031636262326366653338653836396536316534643837393063223b733a33323a226462636264636162376430313031656663373666323133636466323430373162223b733a33323a223766323331666337313637616232386432613161623163653561653636363461223b733a33323a226639346366366163326532333761356631366532356132336463326262393666223b733a33323a226264626431333663313430646163666637653832303138623735663363336362223b733a33323a223961323138396163316532393130646661396463363130343261306534373937223b733a33323a223730663835336234393032396263376536323831666364373139663937396661223b733a33323a223738613564303239623462383031633537383362643730363939306562326430223b733a33323a223862626333653165346338633330393839396432653266373131313661376662223b733a33323a223231656336653135333634343434343665386339353939346339666136383262223b733a33323a226161363230393737396564623339643262386438373165333162323036333531223b733a33323a223635633165323933663638313239666663366564656337666661396263646362223b733a33323a223334353361626638303434626137643864383861383535613631333761396433223b733a33323a226436633538303562646631613730383065633433343137343163656165343332223b733a33323a226639623430323235316233353765633132343565353935326137623036333131223b733a33323a223664613430643831303561333131383931303731626239303334373562343162223b733a33323a226564616136353466343136323934393539633031353763373137663266663561223b733a33323a226633643038346463353838393337336131626666353630306262376631653264223b733a33323a226136323530646463633265363663636637353533646263386266633832343161223b733a33323a223166656339623035353761313961306634333265636566386263623731623437223b733a33323a223837666663636332626437323136613832396438663634613034613632613634223b733a33323a223034646664656236363064343237373535333964383733623330623732393134223b733a33323a223364396539326436316139356130316662346336326263333662616531313637223b733a33323a223365336265303364626233636235393761323338353231356132323539643235223b733a33323a226564363736303235396632373562666161383466383837373562353831306264223b733a33323a223331333431383166626530336266366639663732376665333363626363616363223b733a33323a226461653737386338633033363539316564303730653765363466353634626461223b733a33323a223132616162316437393664333563653432656138646363613735333862616362223b733a33323a226664393632323239646366656163323366353131643337626535336135616662223b7d733a343a2268617368223b733a36353a2266643936323232396463666561633233663531316433376265353361356166622d3132616162316437393664333563653432656138646363613735333862616362223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313237323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31323a7b733a33323a226364383362613736643361396361383866353339363034636263646135343665223b733a33323a223465313739333464346432653338333166353632346334393865633131633236223b733a33323a226138336165663938333862396530653034306265336163343835646663323365223b733a33323a223863386639396361613466333435346361643638346236373433366336613038223b733a33323a223838393330646239326238326633623032636465633234363364343661323735223b733a33323a223066623532666266623431393631326238356630313065336238333430623261223b733a33323a223934333539333366323061323066653665616565623338323830613238323963223b733a33323a226662383734303766633937653132323539623764636166343935396633306132223b733a33323a223936633363333232653536613739363236376336353462316261366262666338223b733a33323a226530633638346463346430616165323632386531313739343337626564343365223b733a33323a223837623266653661653238333961333832326239323732363561393464636366223b733a33323a226431626436313365313664636661326563626434316663376136643862313439223b733a33323a223262333233373338333634346161653263663932633864633236353166653134223b733a33323a223065316336303233393966613334613938653366393765643164663632343661223b733a33323a226232623537306238663138636133616432376236376330323863353634313838223b733a33323a223833616636623435346538353361333636373832376561636538383964643232223b733a33323a226363306662613866363632393535633536393532323536326364663737646534223b733a33323a223361353032303738633834376636626363393035396664343736656165306363223b733a33323a226363383861313236623632333238313461633336316261626163616232326532223b733a33323a226130333639373731363765356337386139396132336435363433643762366566223b733a33323a223765343837346437343062346265646362326566613862666566666261376439223b733a33323a226333366466343033333232373363636233306362613434353764323136646533223b733a33323a226331666136656661396461663833396563363263356231376566373930336130223b733a33323a223834353433366130373465333736316637373163326232383536343635353932223b7d733a343a2268617368223b733a36353a2238343534333661303734653337363166373731633262323835363436353539322d6331666136656661396461663833396563363263356231376566373930336130223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d45617379496e7374616c6c7c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3331303a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a363a226164646f6e73223b613a343a7b733a31313a226f6d656b616d6f64756c65223b613a303a7b7d733a31303a226f6d656b617468656d65223b613a303a7b7d733a363a226d6f64756c65223b613a303a7b7d733a353a227468656d65223b613a303a7b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226631363638333839633065643363303366396163333338333034633138326361223b733a33323a223538356438623564313638306238353634653538366363393538613036356431223b733a33323a223863656265333664373166323831356339616530353337323332623332613465223b733a33323a226534616466313162323031333037383136663332663338373837303866393238223b7d733a343a2268617368223b733a36353a2265346164663131623230313330373831366633326633383738373038663932382d3863656265333664373166323831356339616530353337323332623332613465223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223134353064333664336565616634396634386435373663623261636362643463223b733a33323a226562353862373062663366393662393431663638326463653862396562326162223b733a33323a223263336364376233346432333331356538353635343166613733633135626665223b733a33323a226439643435656666363437616265303462636137333063306435303531663637223b7d733a343a2268617368223b733a36353a2264396434356566663634376162653034626361373330633064353035316636372d3263336364376233346432333331356538353635343166613733633135626665223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223135616633616464626638383032363233313438643962306236323635646234223b733a33323a223530656563386532663433396332666663343138383831386163363862336536223b733a33323a226538656634316366316666666139633437346564363731616436656538346532223b733a33323a223132643264396432323364636530386533323434343930643438633135303230223b7d733a343a2268617368223b733a36353a2231326432643964323233646365303865333234343439306434386331353032302d6538656634316366316666666139633437346564363731616436656538346532223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637573746f6d766f636162666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313131323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31303a7b733a33323a223831343462373131353262373764643934663766313234626432613133623563223b733a33323a223064363462653532323630633766663765363835366436356433623461656632223b733a33323a223065376635366639323266313631346365663765353564353937663335306366223b733a33323a223632346535656239383835383436616661386535656562343930366131366435223b733a33323a226366356163396166356364353538336236666561373462333163633261363036223b733a33323a223765323038333864623866303834363037633039643364363838353465303562223b733a33323a223561613732326337353361393735376633663732383231653838303730656232223b733a33323a226665386666373937366530316234313137613337313434636433666231383135223b733a33323a223662326466383662373335373166646665313762353634353538386233653063223b733a33323a223639333761306137373134663433613263636363336232373236613732633336223b733a33323a223139643236336531636439363264356634306630363436353335383062393664223b733a33323a226337383530376265633661616166396535353161366466353064313435666464223b733a33323a226639636537653935356661353161633464636433353561663434393563326536223b733a33323a223430353730323862343839643866326137393266313865383430656361346261223b733a33323a223465653764623636316536633735373632323731386136386664326164633862223b733a33323a226236633063646563653232303132643463633063366536613030363731323665223b733a33323a223966663737303736653830623565343462633236376531373961616365626531223b733a33323a226562653433646464663639616365376166613939636434383436633835333739223b733a33323a223838373662393865616662343261653837303135666530323835653934633839223b733a33323a223666383739343539336164303938356263636431326262636439616131393265223b7d733a343a2268617368223b733a36353a2236663837393435393361643039383562636364313262626364396161313932652d3838373662393865616662343261653837303135666530323835653934633839223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587135421);

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `setting`
--

INSERT INTO `setting` (`id`, `value`) VALUES
('administrator_email', '\"aenor.toy.auditeur@lecnam.net\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"MEDAS 19-20\"'),
('locale', '\"\"'),
('media_type_whitelist', '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf,\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
('pagination_per_page', '25'),
('time_zone', '\"UTC\"'),
('version', '\"2.1.1\"'),
('version_notifications', '\"1\"');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE IF NOT EXISTS `site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `homepage_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navigation` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `item_pool` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_694309E4989D9B62` (`slug`),
  UNIQUE KEY `UNIQ_694309E4571EDDA` (`homepage_id`),
  KEY `IDX_694309E47E3C61F9` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_block_attachment`
--

DROP TABLE IF EXISTS `site_block_attachment`;
CREATE TABLE IF NOT EXISTS `site_block_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `caption` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_236473FEE9ED820C` (`block_id`),
  KEY `IDX_236473FE126F525E` (`item_id`),
  KEY `IDX_236473FEEA9FDD75` (`media_id`),
  KEY `block_position` (`block_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_item_set`
--

DROP TABLE IF EXISTS `site_item_set`;
CREATE TABLE IF NOT EXISTS `site_item_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D4CE134F6BD1646960278D7` (`site_id`,`item_set_id`),
  KEY `IDX_D4CE134F6BD1646` (`site_id`),
  KEY `IDX_D4CE134960278D7` (`item_set_id`),
  KEY `position` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page`
--

DROP TABLE IF EXISTS `site_page`;
CREATE TABLE IF NOT EXISTS `site_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2F900BD9F6BD1646989D9B62` (`site_id`,`slug`),
  KEY `IDX_2F900BD9F6BD1646` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page_block`
--

DROP TABLE IF EXISTS `site_page_block`;
CREATE TABLE IF NOT EXISTS `site_page_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `layout` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C593E731C4663E4` (`page_id`),
  KEY `page_position` (`page_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_permission`
--

DROP TABLE IF EXISTS `site_permission`;
CREATE TABLE IF NOT EXISTS `site_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C0401D6FF6BD1646A76ED395` (`site_id`,`user_id`),
  KEY `IDX_C0401D6FF6BD1646` (`site_id`),
  KEY `IDX_C0401D6FA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_setting`
--

DROP TABLE IF EXISTS `site_setting`;
CREATE TABLE IF NOT EXISTS `site_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`,`site_id`),
  KEY `IDX_64D05A53F6BD1646` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'aenor.toy.auditeur@lecnam.net', 'Aenor Toy', '2020-04-15 13:07:50', '2020-04-15 13:07:50', '$2y$10$C55.YYa65S1kwv9/9u6PPO7sHKuB4Bwcve2hL0BqAOa2gJql2OsB6', 'global_admin', 1),
(2, 'samuel.szoniecky@univ-paris8.fr', 'Samuel SZONIECKY', '2020-04-15 13:39:43', '2020-04-15 13:40:09', '$2y$10$ytPzuc57Ko88eN4cqbDTW.Dp6VTVMTFUwmYc8nre7AlYb2DjfNkpq', 'global_admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_setting`
--

DROP TABLE IF EXISTS `user_setting`;
CREATE TABLE IF NOT EXISTS `user_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`,`user_id`),
  KEY `IDX_C779A692A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_setting`
--

INSERT INTO `user_setting` (`id`, `user_id`, `value`) VALUES
('default_resource_template', 1, '\"\"'),
('default_resource_template', 2, '\"\"'),
('locale', 1, '\"\"'),
('locale', 2, '\"\"');

-- --------------------------------------------------------

--
-- Structure de la table `value`
--

DROP TABLE IF EXISTS `value`;
CREATE TABLE IF NOT EXISTS `value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value_resource_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1D77583489329D25` (`resource_id`),
  KEY `IDX_1D775834549213EC` (`property_id`),
  KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  KEY `value` (`value`(190)),
  KEY `uri` (`uri`(190))
) ENGINE=InnoDB AUTO_INCREMENT=389 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(20, 4, 1, NULL, 'literal', '', 'Julien Dupont', NULL, 1),
(21, 4, 179, NULL, 'literal', '', 'julien_dupont', NULL, 1),
(22, 4, 145, NULL, 'literal', '', 'Dupont', NULL, 1),
(23, 4, 139, NULL, 'literal', '', 'Julien', NULL, 1),
(24, 4, 182, NULL, 'literal', '', '04/04/1967', NULL, 1),
(25, 4, 305, NULL, 'literal', '', '12 rue ....', NULL, 1),
(26, 4, 123, NULL, 'literal', '', 'julien_dupont@....', NULL, 1),
(27, 5, 1, NULL, 'literal', '', 'Beurre demi-sel', NULL, 1),
(28, 5, 322, NULL, 'literal', '', 'Beurre demi-sel', NULL, 1),
(29, 5, 323, NULL, 'literal', '', 'Produit laitier', NULL, 1),
(30, 5, 324, NULL, 'literal', '', '2,50', NULL, 1),
(33, 6, 1, NULL, 'literal', '', 'Baguette', NULL, 1),
(34, 6, 322, NULL, 'literal', '', 'Baguette', NULL, 1),
(35, 6, 323, NULL, 'literal', '', 'Boulangerie', NULL, 1),
(36, 6, 324, NULL, 'literal', '', '0,80', NULL, 1),
(37, 7, 1, NULL, 'literal', '', 'Magasin de Châtelet', NULL, 1),
(38, 7, 326, NULL, 'literal', '', 'Châtelet', NULL, 1),
(39, 7, 305, NULL, 'literal', '', 'chatelet les halles', NULL, 1),
(40, 7, 317, NULL, 'literal', '', '75001', NULL, 1),
(41, 7, 325, NULL, 'literal', '', 'Basique', NULL, 1),
(42, 8, 1, NULL, 'literal', '', 'Achat 2 beurre demi sel', NULL, 1),
(43, 8, 320, NULL, 'literal', '', '2', NULL, 1),
(44, 8, 321, NULL, 'literal', '', '5', NULL, 1),
(45, 8, 7, NULL, 'literal', '', '16/04/2020', NULL, 1),
(46, 8, 322, 5, 'resource:item', NULL, NULL, NULL, 1),
(47, 8, 326, 7, 'resource:item', NULL, NULL, NULL, 1),
(48, 9, 1, NULL, 'literal', '', 'Achat 3 baguettes', NULL, 1),
(49, 9, 320, NULL, 'literal', '', '3', NULL, 1),
(50, 9, 321, NULL, 'literal', '', '2,40', NULL, 1),
(51, 9, 7, NULL, 'literal', '', '16/04/2020', NULL, 1),
(52, 9, 322, 6, 'resource:item', NULL, NULL, NULL, 1),
(53, 9, 326, 7, 'resource:item', NULL, NULL, NULL, 1),
(54, 10, 1, NULL, 'literal', '', 'achats du 16/04/2020 de Mr Dupon', NULL, 1),
(55, 10, 7, NULL, 'literal', '', '16/04/2020', NULL, 1),
(56, 10, 321, NULL, 'literal', '', '7,50', NULL, 1),
(57, 10, 179, 4, 'resource:item', NULL, NULL, NULL, 1),
(58, 10, 328, 8, 'resource:item', NULL, NULL, NULL, 1),
(59, 10, 328, 9, 'resource:item', NULL, NULL, NULL, 1),
(60, 11, 1, NULL, 'literal', '', 'Emma Bernard', NULL, 1),
(61, 11, 145, NULL, 'literal', '', 'Emma', NULL, 1),
(62, 11, 139, NULL, 'literal', '', 'Bernard', NULL, 1),
(63, 11, 182, NULL, 'literal', '', '04/09/1990', NULL, 1),
(64, 11, 305, NULL, 'literal', '', 'adresse...', NULL, 1),
(65, 11, 146, NULL, 'literal', '', '0000000000', NULL, 1),
(66, 11, 123, NULL, 'literal', '', 'emma.bernard@...', NULL, 1),
(67, 12, 1, NULL, 'literal', '', 'Crème solaire', NULL, 1),
(68, 12, 322, NULL, 'literal', '', 'Crème solaire', NULL, 1),
(69, 12, 323, NULL, 'literal', '', 'Produits d\'hygiène', NULL, 1),
(70, 12, 324, NULL, 'literal', '', '5,00', NULL, 1),
(71, 13, 1, NULL, 'literal', '', 'Spaghettis 500g', NULL, 1),
(72, 13, 322, NULL, 'literal', '', 'Spaghettis', NULL, 1),
(73, 13, 323, NULL, 'customvocab:1', NULL, 'Boulangerie\nEpicerie\nProduits d\'hygiène\nProduits laitiers\nViande', NULL, 1),
(74, 13, 324, NULL, 'literal', '', '0,95', NULL, 1),
(75, 14, 1, NULL, 'literal', '', 'Achat d\'une crème solaire', NULL, 1),
(76, 14, 320, NULL, 'literal', '', '1', NULL, 1),
(77, 14, 321, NULL, 'literal', '', '5,00', NULL, 1),
(78, 14, 7, NULL, 'literal', '', '17/04/2020', NULL, 1),
(79, 14, 322, 12, 'resource:item', NULL, NULL, NULL, 1),
(80, 15, 1, NULL, 'literal', '', 'Achat de 3 packets de spaghettis 500g', NULL, 1),
(81, 15, 320, NULL, 'literal', '', '3', NULL, 1),
(82, 15, 321, NULL, 'literal', '', '2,85', NULL, 1),
(83, 15, 7, NULL, 'literal', '', '17/04/2020', NULL, 1),
(84, 15, 322, 13, 'resource:item', NULL, NULL, NULL, 1),
(85, 16, 1, NULL, 'literal', '', 'Achats du 07/04/2020 de Mme Emma Bernard', NULL, 1),
(86, 16, 7, NULL, 'literal', '', '04/04/2020', NULL, 1),
(87, 16, 321, NULL, 'literal', '', '0000', NULL, 1),
(88, 16, 179, 11, 'resource:item', NULL, NULL, NULL, 1),
(89, 16, 328, 15, 'resource:item', NULL, NULL, NULL, 1),
(90, 16, 328, 14, 'resource:item', NULL, NULL, NULL, 1),
(91, 16, 326, 7, 'resource:item', NULL, NULL, NULL, 1),
(92, 17, 1, NULL, 'literal', '', 'Magasin rue de Rivoli', NULL, 1),
(93, 17, 326, NULL, 'literal', '', 'Rivoli', NULL, 1),
(94, 17, 305, NULL, 'literal', '', 'rue de rrivoli', NULL, 1),
(95, 17, 317, NULL, 'literal', '', '75001', NULL, 1),
(96, 17, 325, NULL, 'literal', '', 'Express', NULL, 1),
(97, 18, 1, NULL, 'literal', '', 'Agathe Dubois', NULL, 1),
(98, 18, 145, NULL, 'literal', '', 'Dubois', NULL, 1),
(99, 18, 139, NULL, 'literal', '', 'Agathe', NULL, 1),
(100, 18, 182, NULL, 'literal', '', '30/03/1997', NULL, 1),
(101, 18, 305, NULL, 'literal', '', '...', NULL, 1),
(102, 18, 146, NULL, 'literal', '', '0000000000', NULL, 1),
(103, 18, 123, NULL, 'literal', '', 'agathe.dubois@...', NULL, 1),
(104, 19, 1, NULL, 'literal', '', 'Tomates (1kg)', NULL, 1),
(105, 19, 322, NULL, 'literal', '', 'Tomate', NULL, 1),
(106, 19, 323, NULL, 'literal', '', 'Légume', NULL, 1),
(107, 19, 324, NULL, 'literal', '', '3,00', NULL, 1),
(108, 20, 1, NULL, 'literal', '', 'Achat de 500g de tomates', NULL, 1),
(109, 20, 320, NULL, 'literal', '', '0,5', NULL, 1),
(110, 20, 321, NULL, 'literal', '', '1,50', NULL, 1),
(111, 20, 322, 19, 'resource:item', NULL, NULL, NULL, 1),
(112, 21, 1, NULL, 'literal', '', 'Lot de 4 steack hachés', NULL, 1),
(113, 21, 322, NULL, 'literal', '', '4 steacks hachés', NULL, 1),
(114, 21, 323, NULL, 'literal', '', 'Viande', NULL, 1),
(115, 21, 324, NULL, 'literal', '', '5,00', NULL, 1),
(116, 22, 1, NULL, 'literal', '', 'Achat 2 lots de 4 steacks hachés', NULL, 1),
(117, 22, 320, NULL, 'literal', '', '2', NULL, 1),
(118, 22, 321, NULL, 'literal', '', '10,00', NULL, 1),
(119, 22, 322, 21, 'resource:item', NULL, NULL, NULL, 1),
(120, 23, 1, NULL, 'literal', '', 'Achat 1 spaghettis 500g', NULL, 1),
(121, 23, 320, NULL, 'literal', '', '1', NULL, 1),
(122, 23, 321, NULL, 'literal', '', '0,95', NULL, 1),
(123, 23, 322, 13, 'resource:item', NULL, NULL, NULL, 1),
(124, 24, 1, NULL, 'literal', '', 'Achats du 07/04/2020 de Mme Agathe Dubois', NULL, 1),
(125, 24, 7, NULL, 'literal', '', '07/04/2020', NULL, 1),
(126, 24, 321, NULL, 'literal', '', '10,95', NULL, 1),
(127, 24, 179, 18, 'resource:item', NULL, NULL, NULL, 1),
(128, 24, 328, 23, 'resource:item', NULL, NULL, NULL, 1),
(129, 24, 328, 22, 'resource:item', NULL, NULL, NULL, 1),
(130, 24, 326, 17, 'resource:item', NULL, NULL, NULL, 1),
(133, 25, 1, NULL, 'literal', '', 'Magasin de la Défense', NULL, 1),
(134, 25, 326, NULL, 'literal', '', 'La Défense', NULL, 1),
(135, 25, 305, NULL, 'literal', '', 'la défense Paris', NULL, 1),
(136, 25, 317, NULL, 'literal', '', '92060', NULL, 1),
(137, 25, 325, NULL, 'literal', '', 'Maxi', NULL, 1),
(138, 26, 1, NULL, 'literal', '', 'Magasin de Marseilles', NULL, 1),
(139, 26, 326, NULL, 'literal', '', 'Marseilles', NULL, 1),
(140, 26, 305, NULL, 'literal', '', '...', NULL, 1),
(141, 26, 317, NULL, 'literal', '', '13000', NULL, 1),
(142, 26, 325, NULL, 'literal', '', 'Basique', NULL, 1),
(143, 27, 1, NULL, 'literal', '', 'Magasin de Chamonix', NULL, 1),
(144, 27, 326, NULL, 'literal', '', 'Chamonix', NULL, 1),
(145, 27, 305, NULL, 'literal', '', 'chamonix', NULL, 1),
(146, 27, 317, NULL, 'literal', '', '74400', NULL, 1),
(147, 27, 325, NULL, 'literal', '', 'Express', NULL, 1),
(148, 28, 1, NULL, 'literal', '', 'Web', NULL, 1),
(149, 28, 326, NULL, 'literal', '', 'web', NULL, 1),
(150, 28, 305, NULL, 'literal', '', 'magasin.com', NULL, 1),
(151, 28, 325, NULL, 'literal', '', 'Web', NULL, 1),
(152, 29, 1, NULL, 'literal', '', 'Magasin Rennes Le Blosne', NULL, 1),
(153, 29, 326, NULL, 'literal', '', 'Rennes Le Blosne', NULL, 1),
(154, 29, 305, NULL, 'literal', '', 'rennes', NULL, 1),
(155, 29, 317, NULL, 'literal', '', '35000', NULL, 1),
(156, 29, 325, NULL, 'literal', '', 'Express', NULL, 1),
(157, 30, 1, NULL, 'literal', '', 'Magasin Rennes Alma', NULL, 1),
(158, 30, 326, NULL, 'literal', '', 'Rennes Alma', NULL, 1),
(159, 30, 305, NULL, 'literal', '', '5 Rue du Bosphore, 35000  Rennes', NULL, 1),
(160, 30, 317, NULL, 'literal', '', '35000', NULL, 1),
(161, 30, 325, NULL, 'literal', '', 'Maxi', NULL, 1),
(162, 31, 1, NULL, 'literal', '', 'Magasin Tours Les Atlantes', NULL, 1),
(163, 31, 326, NULL, 'literal', '', 'Tours les Atlantes', NULL, 1),
(164, 31, 305, NULL, 'literal', '', 'Avenue Jacques Duclos, 37700 Saint-Pierre-des-Corps', NULL, 1),
(165, 31, 317, NULL, 'literal', '', '37700', NULL, 1),
(166, 31, 325, NULL, 'literal', '', 'Maxi', NULL, 1),
(167, 32, 1, NULL, 'literal', '', 'Magasin Tours Ma Petite Madeleine', NULL, 1),
(168, 32, 326, NULL, 'literal', '', 'Tours Ma Petite Madeleine', NULL, 1),
(169, 32, 305, NULL, 'literal', '', '213-215 Avenue du Grand S, 37170 Chambray-lès-Tours', NULL, 1),
(170, 32, 317, NULL, 'literal', '', '37170', NULL, 1),
(171, 32, 325, NULL, 'literal', '', 'Basique', NULL, 1),
(172, 33, 1, NULL, 'literal', '', 'Magasin Lyon Confluence', NULL, 1),
(173, 33, 326, NULL, 'literal', '', 'Lyon Confluence', NULL, 1),
(174, 33, 305, NULL, 'literal', '', '112 cours charlemagne, 69002 Lyon', NULL, 1),
(175, 33, 317, NULL, 'literal', '', '69002', NULL, 1),
(176, 33, 325, NULL, 'literal', '', 'Express', NULL, 1),
(177, 34, 1, NULL, 'literal', '', 'Magasin Lyon La Part Dieu', NULL, 1),
(178, 34, 326, NULL, 'literal', '', 'Lyon La Part Dieu', NULL, 1),
(179, 34, 305, NULL, 'literal', '', '17, rue du Docteur Bouchut , 69431 LYON ', NULL, 1),
(180, 34, 317, NULL, 'literal', '', '69431', NULL, 1),
(181, 34, 325, NULL, 'literal', '', 'Maxi', NULL, 1),
(182, 35, 1, NULL, 'literal', '', 'Salade', NULL, 1),
(183, 35, 322, NULL, 'literal', '', 'Salade', NULL, 1),
(184, 35, 323, NULL, 'literal', '', 'Légumes', NULL, 1),
(185, 35, 324, NULL, 'literal', '', '1,00', NULL, 1),
(186, 36, 1, NULL, 'literal', '', 'Pommes (1kg)', NULL, 1),
(187, 36, 322, NULL, 'literal', '', 'Pommes', NULL, 1),
(188, 36, 323, NULL, 'literal', '', 'Fruits', NULL, 1),
(189, 36, 324, NULL, 'literal', '', '3,00', NULL, 1),
(190, 37, 1, NULL, 'literal', '', 'Clémentines (1kg)', NULL, 1),
(191, 37, 322, NULL, 'literal', '', 'Clémentines', NULL, 1),
(192, 37, 323, NULL, 'literal', '', 'Fruits', NULL, 1),
(193, 37, 324, NULL, 'literal', '', '6,00', NULL, 1),
(194, 38, 1, NULL, 'literal', '', 'Sauce tomate 250g', NULL, 1),
(195, 38, 322, NULL, 'literal', '', 'Sauce tomate 250g', NULL, 1),
(196, 38, 323, NULL, 'literal', '', 'Condiments', NULL, 1),
(197, 38, 324, NULL, 'literal', '', '2,50', NULL, 1),
(198, 39, 1, NULL, 'literal', '', '500g escalope de dinde', NULL, 1),
(199, 39, 322, NULL, 'literal', '', 'Escalope de dinde (500g)', NULL, 1),
(200, 39, 323, NULL, 'literal', '', 'Viande', NULL, 1),
(201, 39, 324, NULL, 'literal', '', '9,00', NULL, 1),
(202, 40, 1, NULL, 'literal', '', 'Achat 2 escalopes de dinde 500g', NULL, 1),
(203, 40, 320, NULL, 'literal', '', '2', NULL, 1),
(204, 40, 321, NULL, 'literal', '', '18,00', NULL, 1),
(205, 40, 322, 39, 'resource:item', NULL, NULL, NULL, 1),
(206, 41, 1, NULL, 'literal', '', 'Achat 3 sauces tomates 250g', NULL, 1),
(207, 41, 320, NULL, 'literal', '', '3', NULL, 1),
(208, 41, 321, NULL, 'literal', '', '7,50', NULL, 1),
(209, 41, 322, 38, 'resource:item', NULL, NULL, NULL, 1),
(210, 42, 1, NULL, 'literal', '', 'Achats du 20/04/2020 de Mme Emma Bernard', NULL, 1),
(211, 42, 7, NULL, 'literal', '', '20/04/2020', NULL, 1),
(212, 42, 321, NULL, 'literal', '', '16,50', NULL, 1),
(213, 42, 179, 11, 'resource:item', NULL, NULL, NULL, 1),
(214, 42, 328, 41, 'resource:item', NULL, NULL, NULL, 1),
(215, 42, 328, 39, 'resource:item', NULL, NULL, NULL, 1),
(216, 42, 326, 25, 'resource:item', NULL, NULL, NULL, 1),
(217, 43, 1, NULL, 'literal', '', 'Achat de 1kg de clémentines', NULL, 1),
(218, 43, 320, NULL, 'literal', '', '1', NULL, 1),
(219, 43, 321, NULL, 'literal', '', '6,00', NULL, 1),
(220, 43, 322, 37, 'resource:item', NULL, NULL, NULL, 1),
(221, 44, 1, NULL, 'literal', '', 'Achat de 2kg de clémentines', NULL, 1),
(222, 44, 320, NULL, 'literal', '', '2', NULL, 1),
(223, 44, 321, NULL, 'literal', '', '12,00', NULL, 1),
(224, 44, 322, 37, 'resource:item', NULL, NULL, NULL, 1),
(225, 45, 1, NULL, 'literal', '', 'Achat de 4 packets de 500g d\'escalopes de dinde', NULL, 1),
(226, 45, 320, NULL, 'literal', '', '4', NULL, 1),
(227, 45, 321, NULL, 'literal', '', '36', NULL, 1),
(228, 45, 322, 39, 'resource:item', NULL, NULL, NULL, 1),
(229, 46, 1, NULL, 'literal', '', 'Philippe Legrand', NULL, 1),
(230, 46, 145, NULL, 'literal', '', 'Legrand', NULL, 1),
(231, 46, 139, NULL, 'literal', '', 'Philippe', NULL, 1),
(232, 46, 182, NULL, 'literal', '', '30/03/1970', NULL, 1),
(233, 46, 305, NULL, 'literal', '', '...', NULL, 1),
(234, 46, 146, NULL, 'literal', '', '000000000', NULL, 1),
(235, 46, 123, NULL, 'literal', '', 'philippe.legrd@...', NULL, 1),
(236, 47, 1, NULL, 'literal', '', 'Catherine Thomas', NULL, 1),
(237, 47, 145, NULL, 'literal', '', 'Thomas', NULL, 1),
(238, 47, 139, NULL, 'literal', '', 'Catherine', NULL, 1),
(239, 47, 182, NULL, 'literal', '', '12/05/1980', NULL, 1),
(240, 47, 305, NULL, 'literal', '', '...', NULL, 1),
(241, 47, 146, NULL, 'literal', '', '0000000000', NULL, 1),
(242, 48, 1, NULL, 'literal', '', 'Jean Rousseau', NULL, 1),
(243, 48, 145, NULL, 'literal', '', 'Rousseau', NULL, 1),
(244, 48, 139, NULL, 'literal', '', 'Jean', NULL, 1),
(245, 48, 182, NULL, 'literal', '', '08/07/1970', NULL, 1),
(246, 49, 1, NULL, 'literal', '', 'Christine Moreau', NULL, 1),
(247, 49, 145, NULL, 'literal', '', 'Moreau', NULL, 1),
(248, 49, 139, NULL, 'literal', '', 'Christine', NULL, 1),
(249, 49, 182, NULL, 'literal', '', '15/08/1965', NULL, 1),
(250, 50, 1, NULL, 'literal', '', 'Alain Muller', NULL, 1),
(251, 50, 145, NULL, 'literal', '', 'Muller', NULL, 1),
(252, 50, 139, NULL, 'literal', '', 'Alain', NULL, 1),
(253, 50, 182, NULL, 'literal', '', '18/09/1980', NULL, 1),
(254, 51, 1, NULL, 'literal', '', 'Brigitte Mercier', NULL, 1),
(255, 51, 145, NULL, 'literal', '', 'Mercier', NULL, 1),
(256, 51, 139, NULL, 'literal', '', 'Brigitte', NULL, 1),
(257, 51, 182, NULL, 'literal', '', '30/05/1974', NULL, 1),
(258, 52, 1, NULL, 'literal', '', 'Eric Lambert', NULL, 1),
(259, 52, 145, NULL, 'literal', '', 'Lambert', NULL, 1),
(260, 52, 139, NULL, 'literal', '', 'Eric', NULL, 1),
(261, 52, 182, NULL, 'literal', '', '16/05/1970', NULL, 1),
(262, 53, 1, NULL, 'literal', '', 'Achats du 18/05/2019 de Mme Brigitte Mercier', NULL, 1),
(263, 53, 7, NULL, 'literal', '', '18/05/2019', NULL, 1),
(264, 53, 321, NULL, 'literal', '', '49,50', NULL, 1),
(265, 53, 179, 51, 'resource:item', NULL, NULL, NULL, 1),
(266, 53, 328, 45, 'resource:item', NULL, NULL, NULL, 1),
(267, 53, 328, 44, 'resource:item', NULL, NULL, NULL, 1),
(268, 53, 328, 20, 'resource:item', NULL, NULL, NULL, 1),
(269, 53, 326, 32, 'resource:item', NULL, NULL, NULL, 1),
(270, 54, 1, NULL, 'literal', '', 'Achat de 5kg de pommes', NULL, 1),
(271, 54, 320, NULL, 'literal', '', '5', NULL, 1),
(272, 54, 321, NULL, 'literal', '', '15,00', NULL, 1),
(273, 54, 322, 36, 'resource:item', NULL, NULL, NULL, 1),
(274, 55, 1, NULL, 'literal', '', 'Achats du 22/04/2020 de M. Eric Lambert', NULL, 1),
(275, 55, 7, NULL, 'literal', '', '22/04/2020', NULL, 1),
(276, 55, 321, NULL, 'literal', '', '21,00', NULL, 1),
(277, 55, 179, 52, 'resource:item', NULL, NULL, NULL, 1),
(278, 55, 328, 54, 'resource:item', NULL, NULL, NULL, 1),
(279, 55, 328, 43, 'resource:item', NULL, NULL, NULL, 1),
(280, 55, 326, 33, 'resource:item', NULL, NULL, NULL, 1),
(281, 56, 1, NULL, 'literal', '', 'Achat de 2 sauces tomates de 250g', NULL, 1),
(282, 56, 320, NULL, 'literal', '', '2', NULL, 1),
(283, 56, 321, NULL, 'literal', '', '5', NULL, 1),
(284, 56, 322, 38, 'resource:item', NULL, NULL, NULL, 1),
(285, 57, 1, NULL, 'literal', '', 'Achat de 4 paquets de spaghettis 500g', NULL, 1),
(286, 57, 320, NULL, 'literal', '', '4', NULL, 1),
(287, 57, 321, NULL, 'literal', '', '3,80', NULL, 1),
(288, 57, 322, 13, 'resource:item', NULL, NULL, NULL, 1),
(289, 58, 1, NULL, 'literal', '', 'Achat de 1 lot de steack hachés', NULL, 1),
(290, 58, 320, NULL, 'literal', '', '1', NULL, 1),
(291, 58, 321, NULL, 'literal', '', '5,00', NULL, 1),
(292, 58, 322, 21, 'resource:item', NULL, NULL, NULL, 1),
(293, 59, 1, NULL, 'literal', '', 'Achat de 200g de tomates', NULL, 1),
(294, 59, 320, NULL, 'literal', '', '0,2', NULL, 1),
(295, 59, 321, NULL, 'literal', '', '0,60', NULL, 1),
(296, 59, 322, 19, 'resource:item', NULL, NULL, NULL, 1),
(297, 60, 1, NULL, 'literal', '', 'Achat de 1 salade', NULL, 1),
(298, 60, 320, NULL, 'literal', '', '1', NULL, 1),
(299, 60, 321, NULL, 'literal', '', '1,00', NULL, 1),
(300, 60, 322, 35, 'resource:item', NULL, NULL, NULL, 1),
(301, 61, 1, NULL, 'literal', '', 'Achat de 2 crèmes solaires', NULL, 1),
(302, 61, 320, NULL, 'literal', '', '2', NULL, 1),
(303, 61, 321, NULL, 'literal', '', '10', NULL, 1),
(304, 61, 322, 12, 'resource:item', NULL, NULL, NULL, 1),
(305, 62, 1, NULL, 'literal', '', 'Achat de 1 baguette', NULL, 1),
(306, 62, 320, NULL, 'literal', '', '1', NULL, 1),
(307, 62, 321, NULL, 'literal', '', '0,80', NULL, 1),
(308, 62, 322, 6, 'resource:item', NULL, NULL, NULL, 1),
(309, 63, 1, NULL, 'literal', '', 'Yaourts x4', NULL, 1),
(310, 63, 322, NULL, 'literal', '', 'lot de 4 yaourts', NULL, 1),
(311, 63, 323, NULL, 'literal', '', 'Laitier', NULL, 1),
(312, 63, 324, NULL, 'literal', '', '2,00', NULL, 1),
(313, 64, 1, NULL, 'literal', '', 'Boite de chewing-gum ', NULL, 1),
(314, 64, 322, NULL, 'literal', '', 'Boite de chewing-gum', NULL, 1),
(315, 64, 323, NULL, 'literal', '', 'Sucreries', NULL, 1),
(316, 64, 324, NULL, 'literal', '', '1,50', NULL, 1),
(317, 65, 1, NULL, 'literal', '', 'Achat de 2 boites de chewing-gum', NULL, 1),
(318, 65, 320, NULL, 'literal', '', '2', NULL, 1),
(319, 65, 321, NULL, 'literal', '', '3,00', NULL, 1),
(320, 65, 322, 64, 'resource:item', NULL, NULL, NULL, 1),
(321, 66, 1, NULL, 'literal', '', 'Achat de 1 beurre demi-sel', NULL, 1),
(322, 66, 320, NULL, 'literal', '', '1', NULL, 1),
(323, 66, 321, NULL, 'literal', '', '2,50', NULL, 1),
(324, 66, 322, 5, 'resource:item', NULL, NULL, NULL, 1),
(325, 67, 1, NULL, 'literal', '', 'Achat de 2 paquets de 500g de spaghettis', NULL, 1),
(326, 67, 320, NULL, 'literal', '', '2', NULL, 1),
(327, 67, 321, NULL, 'literal', '', '1,90', NULL, 1),
(328, 67, 322, 13, 'resource:item', NULL, NULL, NULL, 1),
(329, 68, 1, NULL, 'literal', '', 'Achat de 1kg de pommes', NULL, 1),
(330, 68, 320, NULL, 'literal', '', '1', NULL, 1),
(331, 68, 321, NULL, 'literal', '', '3', NULL, 1),
(332, 68, 322, 36, 'resource:item', NULL, NULL, NULL, 1),
(333, 69, 1, NULL, 'literal', '', 'Achat de 2 salades', NULL, 1),
(334, 69, 320, NULL, 'literal', '', '2', NULL, 1),
(335, 69, 321, NULL, 'literal', '', '2,00', NULL, 1),
(336, 69, 322, 35, 'resource:item', NULL, NULL, NULL, 1),
(337, 70, 1, NULL, 'literal', '', 'Achat de 1,5 kg de pommes', NULL, 1),
(338, 70, 320, NULL, 'literal', '', '1,5', NULL, 1),
(339, 70, 321, NULL, 'literal', '', '4,50', NULL, 1),
(340, 70, 322, 36, 'resource:item', NULL, NULL, NULL, 1),
(341, 71, 1, NULL, 'literal', '', 'Achat de 1,5 kg de clémentines', NULL, 1),
(342, 71, 320, NULL, 'literal', '', '1,5', NULL, 1),
(343, 71, 321, NULL, 'literal', '', '9,00', NULL, 1),
(344, 71, 322, 37, 'resource:item', NULL, NULL, NULL, 1),
(345, 72, 1, NULL, 'literal', '', 'Achat de 1kg de tomates', NULL, 1),
(346, 72, 320, NULL, 'literal', '', '1', NULL, 1),
(347, 72, 321, NULL, 'literal', '', '3,00', NULL, 1),
(348, 72, 322, 19, 'resource:item', NULL, NULL, NULL, 1),
(349, 73, 1, NULL, 'literal', '', 'Achat de 3 lots de 4 yaourts', NULL, 1),
(350, 73, 320, NULL, 'literal', '', '3', NULL, 1),
(351, 73, 321, NULL, 'literal', '', '6', NULL, 1),
(352, 73, 322, 63, 'resource:item', NULL, NULL, NULL, 1),
(353, 74, 1, NULL, 'literal', '', 'Achats du 13/05/2020 de M. Alain Muller', NULL, 1),
(354, 74, 7, NULL, 'literal', '', '13/05/2020', NULL, 1),
(355, 74, 321, NULL, 'literal', '', '14,30', NULL, 1),
(356, 74, 179, 50, 'resource:item', NULL, NULL, NULL, 1),
(357, 74, 328, 57, 'resource:item', NULL, NULL, NULL, 1),
(358, 74, 328, 56, 'resource:item', NULL, NULL, NULL, 1),
(359, 74, 328, 58, 'resource:item', NULL, NULL, NULL, 1),
(360, 74, 328, 59, 'resource:item', NULL, NULL, NULL, 1),
(361, 74, 326, 28, 'resource:item', NULL, NULL, NULL, 1),
(362, 75, 1, NULL, 'literal', '', 'Achats du 30/03/2020 de Mme Brigitte Mercier', NULL, 1),
(363, 75, 7, NULL, 'literal', '', '30/03/2020', NULL, 1),
(364, 75, 321, NULL, 'literal', '', '11,80', NULL, 1),
(365, 75, 179, 51, 'resource:item', NULL, NULL, NULL, 1),
(366, 75, 328, 60, 'resource:item', NULL, NULL, NULL, 1),
(367, 75, 328, 61, 'resource:item', NULL, NULL, NULL, 1),
(368, 75, 328, 62, 'resource:item', NULL, NULL, NULL, 1),
(369, 75, 326, 31, 'resource:item', NULL, NULL, NULL, 1),
(370, 76, 1, NULL, 'literal', '', 'Achats du 03/03/2020 de M. Philippe Legrand', NULL, 1),
(371, 76, 7, NULL, 'literal', '', '03/03/2020', NULL, 1),
(372, 76, 321, NULL, 'literal', '', '9,40', NULL, 1),
(373, 76, 179, 46, 'resource:item', NULL, NULL, NULL, 1),
(374, 76, 328, 65, 'resource:item', NULL, NULL, NULL, 1),
(375, 76, 328, 66, 'resource:item', NULL, NULL, NULL, 1),
(376, 76, 328, 67, 'resource:item', NULL, NULL, NULL, 1),
(377, 76, 328, 68, 'resource:item', NULL, NULL, NULL, 1),
(378, 76, 326, 30, 'resource:item', NULL, NULL, NULL, 1),
(379, 77, 1, NULL, 'literal', '', 'Achats du 28/02/2020 de M. Jean Rousseau', NULL, 1),
(380, 77, 7, NULL, 'literal', '', '28/02/2020', NULL, 1),
(381, 77, 321, NULL, 'literal', '', '24,50', NULL, 1),
(382, 77, 179, 48, 'resource:item', NULL, NULL, NULL, 1),
(383, 77, 328, 69, 'resource:item', NULL, NULL, NULL, 1),
(384, 77, 328, 70, 'resource:item', NULL, NULL, NULL, 1),
(385, 77, 328, 71, 'resource:item', NULL, NULL, NULL, 1),
(386, 77, 328, 72, 'resource:item', NULL, NULL, NULL, 1),
(387, 77, 328, 73, 'resource:item', NULL, NULL, NULL, 1),
(388, 77, 326, 26, 'resource:item', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vocabulary`
--

DROP TABLE IF EXISTS `vocabulary`;
CREATE TABLE IF NOT EXISTS `vocabulary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `namespace_uri` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  KEY `IDX_9099C97B7E3C61F9` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(6, 1, 'http://dbpedia.org/ontology/', 'dbpedia-owl', 'dbpedia', ''),
(7, 1, 'http://schema.org/', 'schema', 'Schema', ''),
(8, 1, 'http://www.w3.org/ns/', 'locn', 'Location', ''),
(9, 1, 'https://monsitetest.com/cmmd#', 'cmmd#', 'Commande', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search` ADD FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD CONSTRAINT `FK_C912ED9D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `FK_2AF5A5C7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `custom_vocab`
--
ALTER TABLE `custom_vocab`
  ADD CONSTRAINT `FK_8533D2A57E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8533D2A5960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD CONSTRAINT `FK_AA31FE4A7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD CONSTRAINT `FK_6D0C9625126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6D0C9625960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD CONSTRAINT `FK_1015EEEBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_FBD8E0F87E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_6A2CA10C126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK_6A2CA10CBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD CONSTRAINT `FK_C77917B4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `FK_8BF21CDE7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8BF21CDEAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `FK_BC91F41616131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F4167E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD CONSTRAINT `FK_C6F063AD7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C6F063ADAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD CONSTRAINT `FK_39ECD52E448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E724734A3` FOREIGN KEY (`title_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52EB84E0D1D` FOREIGN KEY (`description_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD CONSTRAINT `FK_4689E2F116131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`),
  ADD CONSTRAINT `FK_4689E2F1549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `FK_694309E4571EDDA` FOREIGN KEY (`homepage_id`) REFERENCES `site_page` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E47E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD CONSTRAINT `FK_236473FE126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_236473FEE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `site_page_block` (`id`),
  ADD CONSTRAINT `FK_236473FEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD CONSTRAINT `FK_D4CE134960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D4CE134F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD CONSTRAINT `FK_2F900BD9F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`);

--
-- Contraintes pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD CONSTRAINT `FK_C593E731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `site_page` (`id`);

--
-- Contraintes pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD CONSTRAINT `FK_C0401D6FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C0401D6FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD CONSTRAINT `FK_64D05A53F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD CONSTRAINT `FK_C779A692A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `value`
--
ALTER TABLE `value`
  ADD CONSTRAINT `FK_1D7758344BC72506` FOREIGN KEY (`value_resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D775834549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D77583489329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`);

--
-- Contraintes pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD CONSTRAINT `FK_9099C97B7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
