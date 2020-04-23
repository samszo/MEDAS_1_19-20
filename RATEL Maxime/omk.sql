-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 23 avr. 2020 à 02:35
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `omkmedas_19-20`
--

-- --------------------------------------------------------

--
-- Structure de la table `api_key`
--

CREATE TABLE `api_key` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credential_hash` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_ip` varbinary(16) DEFAULT NULL COMMENT '(DC2Type:ip_address)',
  `last_accessed` datetime DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fulltext_search`
--

CREATE TABLE `fulltext_search` (
  `id` int(11) NOT NULL,
  `resource` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(4, 'items', 1, 1, 'Jean-Pascal Ciboulette', 'Jean-Pascal Ciboulette\nCiboulette\nJean-Pascal\n17/04/1968\n0645643365\njeanpascalciboulette@wanadoo.fr\nHomme\nAdresse Ciboulette\nn°10037694\nn°0923145678'),
(5, 'items', 1, 1, 'Jean-Frédéric Safran', 'Jean-Frédéric Safran \nSafran\nJean-Frédéric\n12/12/1976\n0649239786\njeanfredericsafran@gmail.com\nHomme\nAdresse M Safran\nn°86539701\nn°0912345678'),
(6, 'items', 1, 1, 'Jean-Michel Coriandre', 'Jean-Michel Coriandre\nCoriandre\nJean-Michel\n30/06/1990\n0765121232\njeanmichelcoriandre@outlook.fr\nHomme\nAdresse M Coriandre\nn°14679456\nn°0891234567'),
(7, 'items', 1, 1, 'Jean-François Moutarde', 'Jean-François Moutarde\nMoutarde\nJean-François\n24/05/1984\n0656904310\njfmoutarde@gmail.com\nHomme\nAdresse M Moutarde\nn°34573930\nn°0789123456'),
(8, 'items', 1, 1, 'Octavia Tran', 'Octavia Tran\nTran\nOctavia\n14/03/1997\n0657600104\noctaoctatran@outlook.fr\nFemme\nAdresse Mme Tran\nn°95679218\nn°0678912345'),
(10, 'items', 1, 1, 'Albert Reporter', 'Albert Reporter\nReporter\nAlbert\n19/08/1995\n0743509248\nalbertreporter@gmail.com\nHomme\nAdresse M Reporter\nn°76309547\nn°0567891234'),
(11, 'items', 1, 1, 'Aénor Toy', 'Aénor Toy \nToy\nAénor\n12/12/1999\n0649080264\naenortoy@outlook.fr\nFemme\nAdresse Mme Toy\nn°23854901\nn°0456789123'),
(12, 'items', 1, 1, 'Charlotte Pirelli', 'Charlotte Pirelli\nPirelli\nCharlotte\n12/04/1985\n0678939804\ncharlottepirelli@gmail.com\nFemme\nAdresse Mme Pirelli\nn°75340974\nn°0234567891'),
(13, 'items', 1, 1, 'Mathilde Senior', 'Mathilde Senior\nSenior\nMathilde\n19/03/1989\n0671080456\nmatgildesenior@outlook.fr\nFemme\nAdresse Mme Senior\nn°15487236\nn°0345678912'),
(14, 'items', 1, 1, 'Sophie Miller', 'Sophie Miller\nMiller\nSophie\n15/11/1980\n0789253469\nsophiemiller@gmail.com\nFemme\nAdresse Mme Miller\nn°45679872\nn°0123456789'),
(15, 'items', 1, 1, 'Adresse Mme Tran', 'Adresse Mme Tran\n6\nRue du bout du monde\n75009\nParis\nOctavia Tran'),
(16, 'items', 1, 1, 'Adresse Mme Toy', 'Adresse Mme Toy\n54\navenue des Champs\n75010\nParis\nAénor Toy'),
(17, 'items', 1, 1, 'Adresse Mme Miller', 'Adresse Mme Miller\n69\nboulevard Saint-Antoine\n75007\nParis\nSophie Miller'),
(18, 'items', 1, 1, 'Adresse Mme Senior', 'Adresse Mme Senior\n23\nrue de la montagne\n69000\nLyon\nMathilde Senior'),
(19, 'items', 1, 1, 'Adresse Mme Pirelli', 'Adresse Mme Pirelli\n10\nplace de la mairie\n78000\nVersailles\nCharlotte Pirelli'),
(20, 'items', 1, 1, 'Adresse M Reporter', 'Adresse M Reporter\n15\navenue des oiseaux\n57000\nMetz\nAlbert Reporter'),
(21, 'items', 1, 1, 'Adresse M Moutarde', 'Adresse M Moutarde\n45\nrue du paradis\n28000\nDreux\nJean-François Moutarde'),
(22, 'items', 1, 1, 'Adresse M Coriandre', 'Adresse M Coriandre\n1\nimpasse du midi\n34000\nMontpellier\nJean-Michel Coriandre'),
(23, 'items', 1, 1, 'Adresse M Safran', 'Adresse M Safran\n8\nrue des champs\n76000\nRouen\nJean-Frédéric Safran'),
(24, 'items', 1, 1, 'Adresse M Ciboulette', 'Adresse M Ciboulette\n9\nrue des coquelicots\n06000\nNice\nJean-Pascal Ciboulette'),
(25, 'items', 1, 1, 'n°0123456789', 'n°0123456789\n1\n40€\n50€\n14/04/2020\nSophie Miller\nCasque\nn°45679872'),
(26, 'items', 1, 1, 'n°0345678912', 'n°0345678912\n1\n80\n100\n13/02/2020\nMathilde Senior\nSac à dos\nn°15487236'),
(27, 'items', 1, 1, 'n°0234567891', 'n°0234567891\n1\n80\n100\n19/01/2020\nCharlotte Pirelli\nAspirateur\nn°75340974'),
(28, 'items', 1, 1, 'n°0456789123', 'n°0456789123\n1\n40\n50\n12/05/2020\nAénor Toy\nJeu vidéo\nn°23854901'),
(29, 'items', 1, 1, 'n°0567891234', 'n°0567891234\n1\n8\n10\n20/03/2020\nAlbert Reporter\nClé USB\nn°76309547'),
(30, 'items', 1, 1, 'n°0678912345', 'n°0678912345\n1\n88\n110\n08/03/2020\nOctavia Tran\nMixeur\nn°95679218'),
(31, 'items', 1, 1, 'n°0789123456', 'n°0789123456\n1\n24\n30\n30/03/2020\nJean-François Moutarde\nClavier d\'ordinateur\nn°34573930'),
(32, 'items', 1, 1, 'n°0891234567', 'n°0891234567\n1 \n24\n30\n27/12/2019\nJean-Michel Coriandre\nBon d\'achat\nn°14679456'),
(33, 'items', 1, 1, 'n°0912345678', 'n°0912345678\n1\n16\n20\n19/01/2020\nJean-Frédéric Safran\nBatterie externe\nn°86539701'),
(34, 'items', 1, 1, 'n°0923145678', 'n°0923145678\n1\n80\n100\n27/02/2020\nJean-Pascal Ciboulette\nConsole\nn°10037694'),
(35, 'items', 1, 1, 'Aspirateur', '2345678901\nAspirateur\n100€\nn°0234567891'),
(36, 'items', 1, 1, 'Sac à dos', '2456789013\nSac à dos\n100€\nn°0345678912'),
(37, 'items', 1, 1, 'Console', '25678901234\nConsole\nConsole de jeux-vidéo\n100€\nn°0923145678'),
(38, 'items', 1, 1, 'Batterie externe', '2678901345\nBatterie externe\n20€\nn°0912345678'),
(39, 'items', 1, 1, 'Bon d\'achat', '2789013456\nBon d\'achat \nBon d\'achat d\'une valeur de 30€ utilisable dans la durée d\'un an\n30€\nn°0891234567'),
(40, 'items', 1, 1, 'Clavier d\'ordinateur', '2890134567\nClavier d\'ordinateur\n30€\nn°0789123456'),
(41, 'items', 1, 1, 'Mixeur', '2901345678\nMixeur\n110€\nn°0678912345'),
(42, 'items', 1, 1, 'Clé USB', '2013456789\nClé USB\n10€\nn°0567891234'),
(43, 'items', 1, 1, 'Jeu vidéo', '2134567890\nJeu vidéo\n50€\nn°0456789123'),
(44, 'items', 1, 1, 'Casque de son', '2234567890\nCasque de son\n50€\nn°0123456789'),
(45, 'items', 1, 1, 'n°45679872', 'n°45679872\n12/11/2019\n1000\nPrenium\nSophie Miller\nn°0123456789'),
(46, 'items', 1, 1, 'n°15487236', 'n°15487236\n23/03/2018\n1500\nPrenium\nMathilde Senior\nn°0345678912'),
(47, 'items', 1, 1, 'n°75340974', 'n°75340974\n20/06/2019\n1300\nPrenium\nCharlotte Pirelli\nn°0234567891'),
(48, 'items', 1, 1, 'n°23854901', 'n°23854901\n19/11/2018\n2400\nGold\nAénor Toy\nn°0456789123'),
(49, 'items', 1, 1, 'n°76309547', 'n°76309547\n19/09/2019\n800\nIntermédiaire\nAlbert Reporter\nn°0567891234'),
(50, 'items', 1, 1, 'n°95679218', 'n°95679218\n27/08/2018\n2150\nGold\nOctavia Tran\nn°0678912345'),
(51, 'items', 1, 1, 'n°34573930', 'n°34573930\n01/05/2019\n1800\nPrenium\nJean-François Moutarde\nn°0789123456'),
(52, 'items', 1, 1, 'n°14679456', 'n°14679456\n10/12/2019\n700\nIntermédiaire\nJean-Michel Coriandre\nn°0891234567'),
(53, 'items', 1, 1, 'n°86539701', 'n°86539701\n02/11/2019\n1140\nPrenium\nJean-Frédéric Safran\nn°0912345678'),
(54, 'items', 1, 1, 'n°10037694', 'n°10037694\n19/12/2019\n550\nIntermédiaire\nJean-Pascal Ciboulette\nn°0923145678');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL
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
(54);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

CREATE TABLE `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

CREATE TABLE `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `args` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `log` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started` datetime NOT NULL,
  `ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
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
  `lang` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL
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

CREATE TABLE `module` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_creation`
--

CREATE TABLE `password_creation` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `activate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_creation`
--

INSERT INTO `password_creation` (`id`, `user_id`, `created`, `activate`) VALUES
('LoMwMPFdi0H92hZByz52EjxGSTf8eaxp', 2, '2020-04-15 17:08:52', 1);

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(203, 1, 10, 'NomProduit', 'Nom du produit', 'Intitulé du produit acheté par le client'),
(204, 1, 10, 'Prix', 'Prix ', 'Prix d\'achat du produit'),
(205, 1, 10, 'Quantité', 'Quantité', 'Quantité de produits achetée'),
(206, 1, 10, 'PrixHT', 'Prix HT', 'Prix hors taxe du produit indiqué sur la facture'),
(207, 1, 10, 'PrixTTC', 'Prix TTC', 'Prix toutes taxes comprises du produit indiqué sur la facture'),
(208, 1, 10, 'DateFacturation', 'Date de facturation', 'Date de facturation du produit acheté'),
(209, 1, 10, 'NumRue', 'Numéro de rue', 'Numéro du rue du client indiqué sur son compte client'),
(210, 1, 10, 'Rue', 'Rue', 'Nom de rue du client indiqué sur son compte client'),
(211, 1, 10, 'CodePostal', 'Code Postal', 'Code postal du client indiqué sur son compte client'),
(212, 1, 10, 'DateFidélité', 'Date de fidélité', 'Date à laquelle la carte de fidélité du client à été activée'),
(213, 1, 10, 'Points', 'Points', 'Nombre de points présents sur la carte de fidélité du client'),
(214, 1, 10, 'NiveauFidélité', 'Niveau de fidélité', 'Niveau de fidélité atteint par le client sur sa carte en fonction de paliers'),
(215, 1, 10, 'DateNaissance', 'Date de naissance', 'Date de naissance du client'),
(216, 1, 10, 'AdresseMail', 'Adresse e-mail', 'Adresse e-mail du client'),
(224, NULL, 10, 'AdresseCommerciale', 'Adresse commerciale', 'Adresse commerciale du client'),
(225, NULL, 10, 'AdresseFacturation', 'Adresse de facturation', 'Adresse de facturation du client'),
(226, 1, 15, 'locationCity', 'ville', 'City the thing is located.'),
(227, NULL, 10, 'NombreProduit', 'Nombre de produit', 'Nombre de produit acheté'),
(228, NULL, 10, 'DateCommande', 'Date de commande', 'Date de la commande effectuée'),
(229, NULL, 10, 'idAdresse', 'Identifiant Adresse', NULL),
(230, NULL, 10, 'idClient', 'Identifiant Client', NULL),
(231, NULL, 10, 'idFidélité', 'Identifiant Fidélité', NULL),
(232, NULL, 10, 'idCommande', 'Identifiant Commande', NULL),
(233, NULL, 10, 'idProduit', 'Identifiant Produit', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource`
--

CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `resource_template_id` int(11) DEFAULT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(4, 1, 94, 2, NULL, 'Jean-Pascal Ciboulette', 1, '2020-04-22 18:22:30', '2020-04-22 22:08:27', 'Omeka\\Entity\\Item'),
(5, 1, 94, 2, NULL, 'Jean-Frédéric Safran', 1, '2020-04-22 18:24:26', '2020-04-22 23:55:44', 'Omeka\\Entity\\Item'),
(6, 1, 94, 2, NULL, 'Jean-Michel Coriandre', 1, '2020-04-22 18:26:36', '2020-04-22 22:14:03', 'Omeka\\Entity\\Item'),
(7, 1, 94, 2, NULL, 'Jean-François Moutarde', 1, '2020-04-22 18:30:35', '2020-04-22 22:16:31', 'Omeka\\Entity\\Item'),
(8, 1, 94, 2, NULL, 'Octavia Tran', 1, '2020-04-22 18:33:51', '2020-04-22 22:18:27', 'Omeka\\Entity\\Item'),
(10, 1, 94, 2, NULL, 'Albert Reporter', 1, '2020-04-22 18:41:35', '2020-04-22 22:19:59', 'Omeka\\Entity\\Item'),
(11, 1, 94, 2, NULL, 'Aénor Toy', 1, '2020-04-22 18:49:17', '2020-04-22 22:20:46', 'Omeka\\Entity\\Item'),
(12, 1, 94, 2, NULL, 'Charlotte Pirelli', 1, '2020-04-22 18:50:59', '2020-04-22 22:22:15', 'Omeka\\Entity\\Item'),
(13, 1, 94, 2, NULL, 'Mathilde Senior', 1, '2020-04-22 18:54:04', '2020-04-22 22:23:25', 'Omeka\\Entity\\Item'),
(14, 1, 94, 2, NULL, 'Sophie Miller', 1, '2020-04-22 18:55:33', '2020-04-22 22:24:32', 'Omeka\\Entity\\Item'),
(15, 1, 9, 3, NULL, 'Adresse Mme Tran', 1, '2020-04-22 18:58:23', '2020-04-22 22:25:54', 'Omeka\\Entity\\Item'),
(16, 1, 9, 3, NULL, 'Adresse Mme Toy', 1, '2020-04-22 19:00:55', '2020-04-22 22:26:39', 'Omeka\\Entity\\Item'),
(17, 1, 9, 3, NULL, 'Adresse Mme Miller', 1, '2020-04-22 19:05:20', '2020-04-22 22:28:30', 'Omeka\\Entity\\Item'),
(18, 1, 9, 3, NULL, 'Adresse Mme Senior', 1, '2020-04-22 19:08:06', '2020-04-22 22:32:22', 'Omeka\\Entity\\Item'),
(19, 1, 9, 3, NULL, 'Adresse Mme Pirelli', 1, '2020-04-22 19:10:06', '2020-04-22 22:30:33', 'Omeka\\Entity\\Item'),
(20, 1, 9, 3, NULL, 'Adresse M Reporter', 1, '2020-04-22 19:12:30', '2020-04-22 23:07:59', 'Omeka\\Entity\\Item'),
(21, 1, 9, 3, NULL, 'Adresse M Moutarde', 1, '2020-04-22 19:15:43', '2020-04-22 23:09:24', 'Omeka\\Entity\\Item'),
(22, 1, 9, 3, NULL, 'Adresse M Coriandre', 1, '2020-04-22 19:17:14', '2020-04-22 23:10:19', 'Omeka\\Entity\\Item'),
(23, 1, 9, 3, NULL, 'Adresse M Safran', 1, '2020-04-22 19:18:24', '2020-04-22 23:11:13', 'Omeka\\Entity\\Item'),
(24, 1, 9, 3, NULL, 'Adresse M Ciboulette', 1, '2020-04-22 19:19:57', '2020-04-22 22:14:19', 'Omeka\\Entity\\Item'),
(25, 1, 110, 6, NULL, 'n°0123456789', 1, '2020-04-22 19:27:16', '2020-04-22 23:15:43', 'Omeka\\Entity\\Item'),
(26, 1, 110, 6, NULL, 'n°0345678912', 1, '2020-04-22 19:28:23', '2020-04-22 23:20:39', 'Omeka\\Entity\\Item'),
(27, 1, 110, 6, NULL, 'n°0234567891', 1, '2020-04-22 19:32:11', '2020-04-22 23:23:36', 'Omeka\\Entity\\Item'),
(28, 1, 110, 6, NULL, 'n°0456789123', 1, '2020-04-22 19:33:37', '2020-04-22 23:25:58', 'Omeka\\Entity\\Item'),
(29, 1, 110, 6, NULL, 'n°0567891234', 1, '2020-04-22 19:36:59', '2020-04-22 23:58:06', 'Omeka\\Entity\\Item'),
(30, 1, 110, 6, NULL, 'n°0678912345', 1, '2020-04-22 19:39:56', '2020-04-22 23:32:26', 'Omeka\\Entity\\Item'),
(31, 1, 110, 6, NULL, 'n°0789123456', 1, '2020-04-22 19:42:29', '2020-04-22 23:34:22', 'Omeka\\Entity\\Item'),
(32, 1, 110, 6, NULL, 'n°0891234567', 1, '2020-04-22 19:44:45', '2020-04-22 23:36:46', 'Omeka\\Entity\\Item'),
(33, 1, 110, 6, NULL, 'n°0912345678', 1, '2020-04-22 19:46:12', '2020-04-22 23:37:36', 'Omeka\\Entity\\Item'),
(34, 1, 110, 6, NULL, 'n°0923145678', 1, '2020-04-22 19:47:53', '2020-04-22 23:39:14', 'Omeka\\Entity\\Item'),
(35, 1, 109, 4, NULL, 'Aspirateur', 1, '2020-04-22 19:58:12', '2020-04-22 23:44:46', 'Omeka\\Entity\\Item'),
(36, 1, 109, 4, NULL, 'Sac à dos', 1, '2020-04-22 20:08:01', '2020-04-22 21:35:51', 'Omeka\\Entity\\Item'),
(37, 1, 109, 4, NULL, 'Console', 1, '2020-04-22 21:17:27', '2020-04-22 21:18:07', 'Omeka\\Entity\\Item'),
(38, 1, 109, 4, NULL, 'Batterie externe', 1, '2020-04-22 21:22:30', '2020-04-22 21:28:08', 'Omeka\\Entity\\Item'),
(39, 1, 109, 4, NULL, 'Bon d\'achat', 1, '2020-04-22 21:25:07', '2020-04-22 21:28:39', 'Omeka\\Entity\\Item'),
(40, 1, 109, 4, NULL, 'Clavier d\'ordinateur', 1, '2020-04-22 21:27:01', '2020-04-22 21:28:57', 'Omeka\\Entity\\Item'),
(41, 1, 109, 4, NULL, 'Mixeur', 1, '2020-04-22 21:29:47', '2020-04-22 21:30:08', 'Omeka\\Entity\\Item'),
(42, 1, 109, 4, NULL, 'Clé USB', 1, '2020-04-22 21:31:30', '2020-04-22 21:31:30', 'Omeka\\Entity\\Item'),
(43, 1, 109, 4, NULL, 'Jeu vidéo', 1, '2020-04-22 21:32:47', '2020-04-22 21:32:47', 'Omeka\\Entity\\Item'),
(44, 1, 109, 4, NULL, 'Casque de son', 1, '2020-04-22 21:35:19', '2020-04-22 23:16:10', 'Omeka\\Entity\\Item'),
(45, 1, 108, 5, NULL, 'n°45679872', 1, '2020-04-22 21:39:03', '2020-04-22 21:40:25', 'Omeka\\Entity\\Item'),
(46, 1, 108, 5, NULL, 'n°15487236', 1, '2020-04-22 21:41:57', '2020-04-22 21:42:55', 'Omeka\\Entity\\Item'),
(47, 1, 108, 5, NULL, 'n°75340974', 1, '2020-04-22 21:44:43', '2020-04-22 21:44:43', 'Omeka\\Entity\\Item'),
(48, 1, 108, 5, NULL, 'n°23854901', 1, '2020-04-22 21:47:41', '2020-04-22 21:47:41', 'Omeka\\Entity\\Item'),
(49, 1, 108, 5, NULL, 'n°76309547', 1, '2020-04-22 21:49:49', '2020-04-22 21:55:57', 'Omeka\\Entity\\Item'),
(50, 1, 108, 5, NULL, 'n°95679218', 1, '2020-04-22 21:51:41', '2020-04-22 21:51:41', 'Omeka\\Entity\\Item'),
(51, 1, 108, 5, NULL, 'n°34573930', 1, '2020-04-22 21:55:44', '2020-04-22 21:55:44', 'Omeka\\Entity\\Item'),
(52, 1, 108, 5, NULL, 'n°14679456', 1, '2020-04-22 21:58:25', '2020-04-22 21:58:25', 'Omeka\\Entity\\Item'),
(53, 1, 108, 5, NULL, 'n°86539701', 1, '2020-04-22 21:59:49', '2020-04-22 21:59:49', 'Omeka\\Entity\\Item'),
(54, 1, 108, 5, NULL, 'n°10037694', 1, '2020-04-22 22:02:18', '2020-04-22 22:02:18', 'Omeka\\Entity\\Item');

-- --------------------------------------------------------

--
-- Structure de la table `resource_class`
--

CREATE TABLE `resource_class` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(108, 1, 10, 'Carte', 'Carte de fidélité', 'Carte de fidélisation commportant un nombre de points à échanger pour des avantages clientèles. 1 point correspond à 1€'),
(109, 1, 10, 'Objet', 'Objet', 'Type d\'objet acheté par le client'),
(110, NULL, 10, 'Justificatifachat', 'Récapitulatif de commande', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource_template`
--

CREATE TABLE `resource_template` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `title_property_id` int(11) DEFAULT NULL,
  `description_property_id` int(11) DEFAULT NULL,
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource'),
(2, 1, 94, 10, NULL, 'Client'),
(3, 1, 9, 10, NULL, 'Adresse'),
(4, 1, 109, 203, NULL, 'Produit'),
(5, 1, 108, 10, NULL, 'Fidélité'),
(6, 1, 110, 10, NULL, 'Commande');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template_property`
--

CREATE TABLE `resource_template_property` (
  `id` int(11) NOT NULL,
  `resource_template_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `alternate_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `data_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(23, 2, 10, 'Client', NULL, 1, NULL, 1, 0),
(24, 2, 139, NULL, NULL, 3, NULL, 0, 0),
(25, 2, 140, NULL, NULL, 2, NULL, 0, 0),
(27, 2, 146, NULL, NULL, 5, NULL, 0, 0),
(32, 3, 10, 'Adresse complète', NULL, 1, 'resource:item', 1, 0),
(34, 2, 125, NULL, NULL, 7, NULL, 0, 0),
(42, 6, 10, 'Numéro de commande', NULL, 1, NULL, 1, 0),
(43, 5, 10, 'Numéro de fidélité', NULL, 1, NULL, 1, 0),
(44, 4, 10, 'Numéro de produit', 'Correspond au code barres du produit', 1, NULL, 0, 0),
(47, 3, 209, NULL, NULL, 2, NULL, 0, 0),
(48, 3, 210, NULL, NULL, 3, NULL, 0, 0),
(49, 3, 211, NULL, NULL, 4, NULL, 0, 0),
(54, 2, 215, NULL, NULL, 4, NULL, 0, 0),
(55, 2, 216, NULL, NULL, 6, NULL, 0, 0),
(57, 6, 206, NULL, NULL, 3, NULL, 0, 0),
(58, 6, 207, NULL, NULL, 4, NULL, 0, 0),
(61, 5, 212, NULL, NULL, 2, NULL, 0, 0),
(62, 5, 213, NULL, NULL, 3, NULL, 0, 0),
(63, 5, 214, NULL, NULL, 4, NULL, 0, 0),
(65, 4, 204, NULL, NULL, 4, NULL, 0, 0),
(72, 4, 4, NULL, NULL, 3, NULL, 0, 0),
(77, 3, 226, NULL, NULL, 5, NULL, 0, 0),
(78, 6, 227, NULL, NULL, 2, NULL, 0, 0),
(79, 6, 228, NULL, NULL, 5, NULL, 0, 0),
(81, 3, 230, NULL, NULL, 6, 'resource:item', 1, 0),
(82, 4, 203, NULL, NULL, 2, NULL, 1, 0),
(83, 4, 232, NULL, NULL, 5, 'resource:item', 1, 0),
(84, 5, 230, NULL, NULL, 5, 'resource:item', 1, 0),
(85, 5, 232, NULL, NULL, 6, 'resource:item', 1, 0),
(86, 6, 230, NULL, NULL, 6, 'resource:item', 1, 0),
(87, 6, 233, NULL, NULL, 7, 'resource:item', 1, 0),
(88, 6, 231, NULL, NULL, 8, 'resource:item', 0, 0),
(89, 2, 229, NULL, NULL, 8, 'resource:item', 0, 0),
(90, 2, 231, NULL, NULL, 9, 'resource:item', 0, 0),
(91, 2, 232, NULL, NULL, 10, 'resource:item', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longblob NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('708er6jftsrudav3cihhb3qjci', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373134313737332e3230383634313b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a223270366e626a30716a626f317439303737706439633274636663223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373132373135303b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373132383231353b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373132383230353b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226434623034396461343532616635363839613935386634623832366665353666223b733a33323a223337306261373566636664383839393334393065613431356336623938393230223b7d733a343a2268617368223b733a36353a2233373062613735666366643838393933343930656134313563366239383932302d6434623034396461343532616635363839613935386634623832366665353666223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223766316163303030393635623435326535366135616362616361356633613632223b733a33323a223166356433333234646638303366613262373031646335616566666436643562223b733a33323a226531343464306331393533616461313262373466656639636530343461626630223b733a33323a226637386630663233616638623036366666316434343436393536373137353937223b733a33323a223861343263646331633830383936616463343731303938393130323834653932223b733a33323a223963343936373332643337363036393731393663613265643438616564633839223b733a33323a223666343836633538636331376635353834616166306137356163303865303536223b733a33323a226338333965666231313564316632343566346364316132376639373631363032223b7d733a343a2268617368223b733a36353a2263383339656662313135643166323435663463643161323766393736313630322d3666343836633538636331376635353834616166306137356163303865303536223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223733386433373239346239323666363561646162396433333563613231393433223b733a33323a223131333634656364666363373263653230343934343636643833353135323737223b733a33323a223331356563376237373538346639616264656537343430646263393535646436223b733a33323a226234303532663631656263376265643166383832616530663534616564616364223b7d733a343a2268617368223b733a36353a2262343035326636316562633762656431663838326165306635346165646163642d3331356563376237373538346639616264656537343430646263393535646436223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587141773);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('90mlqf1uu0qkjslvvfgnfn5ffh', 0x5f5f5a467c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373630313937362e3236323832313b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a223832757563337168713366706b33743173616974686e63386368223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373534383438363b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373630343238393b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373630353530313b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373630353537343b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373630343239353b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373630333639303b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226465646634656133383363363864376561393539663863643965363163386634223b733a33323a223936396133383236386234663161333965393463303337383336363637383038223b7d733a343a2268617368223b733a36353a2239363961333832363862346631613339653934633033373833363636373830382d6465646634656133383363363864376561393539663863643965363163386634223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223364633965313932613465663234643766646563363566313066666464356336223b733a33323a223538336462626336626638656335396634313839666639616136643165353765223b733a33323a226432653862326231356333353139386363346464373663326539333235643633223b733a33323a223837643662643466343031393338316634363139646536633739343233316630223b7d733a343a2268617368223b733a36353a2238376436626434663430313933383166343631396465366337393432333166302d6432653862326231356333353139386363346464373663326539333235643633223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3935313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a226431316366303233656234666262353661613365383262386462623636363232223b733a33323a223138356265626539623637623366346463396132373466303363613363363434223b733a33323a223661613835343935666637663365373232623438353439386231666235336633223b733a33323a223937663165376665656265366631343136653761373165663661323439663464223b733a33323a226331646632323835346161643366316362643530356537666364336162663634223b733a33323a223464393133343233303235313365313239353836623335343761653861623564223b733a33323a223530333739303266356364326334343037396639343439623432313762323239223b733a33323a223530386439636664333636643430323834333131373033646161653935653432223b733a33323a223233343337663962636235363464366566373939313931636637616133373337223b733a33323a223238623039333830646439663936313263333834323236623636323363636633223b733a33323a226333336462316339616662366638613136633438633832393462613264613062223b733a33323a223863356264613830623631643963333736383135363433343633613733656532223b733a33323a223138663636383531363864306437396162613031386338396361343463376339223b733a33323a226561663034386438663934383965616634346337636164383633323236303035223b733a33323a223739663239623137643930396539306434383132383438306538323865643461223b733a33323a226264366161336534376630393961623063316266663461643833626464666235223b7d733a343a2268617368223b733a36353a2262643661613365343766303939616230633162666634616438336264646662352d3739663239623137643930396539306434383132383438306538323865643461223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a37373531333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3936353a7b733a33323a223335303563373833656634393964306236376463643062333933343563626232223b733a33323a223661303133363836373831633939323233323836373134333865633731366336223b733a33323a223430343335623435343833396265313865616538633832626237313962303738223b733a33323a226432346433383131313931353766623631626136653862363636333232373531223b733a33323a223539633532333062353334643432376663656261666166626639623666306663223b733a33323a223434653339613830653639643130643562366361616561363031306539393461223b733a33323a226632363931356431623163626663383063346232363034636164653262613631223b733a33323a223463633533663337343230666132373932353936653832386239326133666635223b733a33323a223138343130373030363730393330636662643537386331646164656130356661223b733a33323a226537643238306632633465303535316465643236616532333435666563623137223b733a33323a223537303566646633633734343930336533313236343139386539316265343063223b733a33323a223531323163653035373033383035643765633466643163336231313465663031223b733a33323a226361356639363834343833393235373338393131363166633830613738303732223b733a33323a223636363935323039386361356363303535633130623562323131643161333038223b733a33323a226166303766396164626261316361343038343461653132313565333135356465223b733a33323a223134306535373564643739396632616265656438633766333631653538323936223b733a33323a226134653635383238316239333662323533353433613832363763373539316130223b733a33323a223937363266646366333162386638613838396135346438363639653766353632223b733a33323a223131333262666433643162363431613337336364363139373863303632656366223b733a33323a223535376630316230373064316239333462353330336138326234643932613830223b733a33323a223762623465386638373336343230366666633465316433396236666531373238223b733a33323a223864306637313938373331653033656663303336366535666234303265633062223b733a33323a223636616535633864326633356133363962306338623337336431616131653337223b733a33323a226264626262313530343435616430326239383839333032373766386366336436223b733a33323a226134353135636431316561613537323163373163316235666665626164616165223b733a33323a223238643231313062613062613031333930663634396364356261336662396566223b733a33323a226465373835653332303734613735376239333535616466356536343038353434223b733a33323a223436643737326539353964303434376234616135643563633835363535336162223b733a33323a223831376130653234623833376563336261336264353433393232633631363262223b733a33323a223033326535343333336536633862643038396333616462623066666562323733223b733a33323a223365313031306439303839633734306637363734366332373163663234376365223b733a33323a223737383636313762363634623732393235386636383230656366366138643934223b733a33323a223763393235373431613132653265613639353862613632363438643863306233223b733a33323a223966316135386664656533376563363932616636623730303438326130386333223b733a33323a226537636562333763616464323736633839306238633363653832383235343463223b733a33323a223235323133396465373065313264363634353963333061353661303964396263223b733a33323a226238633561623231373066373730323062613437363330376432303630653133223b733a33323a226463323538363130626430366637666264363261623866373635303665306665223b733a33323a223030633836613036306238613035663939653838386531643164356635633337223b733a33323a223330376664393561363738303838363333626635373630366131646165353432223b733a33323a226461646234383030383461316165323434386437313331663066376565623563223b733a33323a223036383838353832393931383565613332383363313732353134636662633836223b733a33323a223332346464653338353434346264613736383936386564633232353864396130223b733a33323a226238343939646461323164663262336162656337643332383934653765306337223b733a33323a223736363663366339306534373238323731616332613162613836643333336266223b733a33323a226366393630316465386132363963383135646162353837393239303231313365223b733a33323a223536663561646164653661663639656336613565356661393366646663306337223b733a33323a223663383636303463383366323331643931316662393034613861336663666432223b733a33323a223964353337336337343363633938303233393736386365616138383236636364223b733a33323a223234363239323566373939393234383162323934613934313335663733613461223b733a33323a226230303133316139613737336132303430333263643637633231653737353938223b733a33323a223733373938303235623763393162386630633137613233376530303562653032223b733a33323a226266656566353130343865356365653233613235663433616534333238336538223b733a33323a223462646538393339653162653031393831356532323430383235626330633538223b733a33323a226539353836303532343361643532313632343839373635653663636439343533223b733a33323a226266633263616366616533396231623465363466383637393333633139633036223b733a33323a223065333633653634623933306635313662333364626164373039306565613030223b733a33323a223234353735323864656634383632643361376234323637316133383238646661223b733a33323a223164663830633865386165363830306432653537396263356135653534653361223b733a33323a223562373461353636336431346365616536336361373164386563323461663438223b733a33323a223630353337323337666230633364363262633064313165366331323261623732223b733a33323a223062383766366333363765373932333161303861346264666432363735656262223b733a33323a223365613164303161323934383431663738356131363335393137333038356262223b733a33323a226339333665336131353835616364336565313239383230316339666662343761223b733a33323a226231636337633630656662346661626535326336363338623737653464346430223b733a33323a226636373638643034616330323364656432643035323862666566333166343962223b733a33323a223461313333346537336538656434376164396138303036393162373933666335223b733a33323a226363353536316432623537623738616533366230656636313961343465383537223b733a33323a223963323861303430613337366464376339636137333734663531626164323166223b733a33323a223562636666623562363663643037353831643632613033383238306132616532223b733a33323a223634383163346435353539616462646666613139333264356137373839343961223b733a33323a226265373966363635363132626530303237333861313233656162626666366437223b733a33323a226366353232316164306165353463343234333639633864323339636236323562223b733a33323a226635306539326265333063386464633736666233343662383732343536366537223b733a33323a226132623132633866343166623734363633336637363464316261303330323463223b733a33323a223236376630336130313563393339616236616535366534646332356238613164223b733a33323a226139336336633631666538323766643133363031643734616562613535623336223b733a33323a223164303363633136386139643435663939353931303933663232353237623861223b733a33323a226237666234363632356333353034656266643066666535373965356564316338223b733a33323a226336343966376365636264636532393364643365313462616631313838343565223b733a33323a223332633734663033353436663036346633366464636434633662303236363162223b733a33323a223037623666353130393738666538323938383064336430633733356261343334223b733a33323a226564383463363863376463363564626362363238666431333334666235353930223b733a33323a223566613563393733316163383338656465623764356363383464626236336337223b733a33323a226239633062653733336633613938626464623933303036383963343832333663223b733a33323a226637353164613934313162373161343439313737363762376131343334646464223b733a33323a226135663063383334383333346464386333613835343436386434356338363962223b733a33323a223831306537336265623963613731616137646462303762376362626238393634223b733a33323a226137613730646138646236663164323965353236383335333762356464363664223b733a33323a223666666564663161356631613865643830323037303130396166306433643865223b733a33323a223461343863613135356265353930616262343139373634623939336134383730223b733a33323a226637373332393837656565383934323664653764373138323463306135326234223b733a33323a226361653962663834663134313038343335346330303037613536303532393265223b733a33323a226433663565336432313631373432633535333738323438333063376461363937223b733a33323a226439353262346632626161663661373830316239643133316166346330326465223b733a33323a223462616166323136633166646537333365626566356630653963333463356162223b733a33323a223464386232623964343632643963383135396238326331616563623930636439223b733a33323a223437636163383466323266366161353234376565306239646261633962656162223b733a33323a223832376632313038663564363061383661646235393734663138333834393530223b733a33323a223035313165346266623434353362323135353265353965303566653138656532223b733a33323a223163356435633865383061383833343534303162623138616362363639626635223b733a33323a223132323736353362363935633665393362323930303137616335613763383463223b733a33323a223331623663653339343135636437356131623364306266356634323535333533223b733a33323a226661376638356464356130353663363062653833616565356663343032386335223b733a33323a226566623939336562633531353336663838373636343535643065376239663836223b733a33323a223131373063356339653065333362343766623135323561663839336662376362223b733a33323a223963383866613538626332323332393839653339386535343931643864303539223b733a33323a226134356437353764653237646238376564653038643439396238386132666330223b733a33323a226537363936316339656261333137336337643633663932646562333263613234223b733a33323a226663303335323638343961356133363937663639393465326134666138343637223b733a33323a226162646231393634316634323162646238616565383932303637363564633033223b733a33323a223963666465306538353938663464343533303330313663626537663133616532223b733a33323a226233396362643365363231303835363335343862346331373335363762656130223b733a33323a223965383264643766306330386633306265313164303063363062646233383639223b733a33323a223263306233636437363435616362623736626538666332383536383331643431223b733a33323a223461666630333233393764626366613532656564663366353637346132323537223b733a33323a223532306363626633666437666132306635333833636261333363363338643034223b733a33323a223736666438363831313063343535356636366333653832633134386364626533223b733a33323a223566653866643464353338363965346463646163613637663932313630306636223b733a33323a223661663031313138646136333739663539323530343539383665373733346136223b733a33323a226566633463366433353834313535653061653864376132383035613932646339223b733a33323a223964306537616361393966643965633631666339336631346661386137663661223b733a33323a223435613031326432363765653439643362306561363132653361373766303930223b733a33323a226535656537333761326534623463373562636465663834636539653264383136223b733a33323a223536666533353636333230643333643539376436323630333062333735333863223b733a33323a226363303537323564666230306538336536393131633432653962346364363364223b733a33323a223833316163323563636339656664363438333663366134343965346663656537223b733a33323a226435303338353261373935646639396564636336366135626332656435393931223b733a33323a226231303438373539393232626137646230363634323766633132313332646431223b733a33323a226462633730666533346537613738396139623562373134623132623437303734223b733a33323a226234653034666134653764333965646165333731333231643337373832326532223b733a33323a226537663265353132333465653535373636663465393635396531623364303161223b733a33323a223663326665613336663533353465386333333831393965303961376263343132223b733a33323a226461363865626633366463363730626533336161323237613837633566333436223b733a33323a223433626437346538383633353364326234313430393931333363353437663361223b733a33323a226639323535623932386539623561646263393962316362616662383566313132223b733a33323a223633316539306239346432346132643865653062373230303364363163306637223b733a33323a223138313235343031303762303634373063666430303933366131636439353639223b733a33323a223837616131623836623061613265373234323137333335613865626236336362223b733a33323a226536396463343830366538633763323438626534376266323731313564303162223b733a33323a223139616562626334393739663732383837393833356537653836666661396237223b733a33323a226130383664666664366637666532613266386139303339653338346563616635223b733a33323a226230616133626130346539656435313331373432653033303238666138386235223b733a33323a223038643639396365643566346638623730333637366564313566366130343663223b733a33323a223832666636313464396536636439306534623966623937396433326262393561223b733a33323a223363393730366235663936383632643763666466356236656635663562623739223b733a33323a223839383266623862383663383233633030336631363331393634393838666236223b733a33323a226264616638373930633734626139326539656538353930373232636366353139223b733a33323a226233656239376563396537333563623261326162363764633165346466373136223b733a33323a223830396235663932303265393662346331613235346435386662343366653030223b733a33323a226463383632346231633537646564636130343732313435346165666438333964223b733a33323a223833363662623336643631393561363562303464336363333530303962663739223b733a33323a226266363964333038636366363634656337366130623132653437343065623533223b733a33323a226238373235613834663339653563633434613031316465356464363961303164223b733a33323a223836623932376163643461346536653366323966393233316538623536643134223b733a33323a223832346534626466306538376365346361663637626139336134353565333265223b733a33323a223532383231363234636666616533633262363933353165393962656637323433223b733a33323a223864616432303266336531396162383732383239386532613835383539663832223b733a33323a226563613432633961313262303662336136636339623265626136343232666632223b733a33323a223237326633376664633331336535363233653233653839336236363865373438223b733a33323a223563336138616465313434636231666661333733343263636233663831643863223b733a33323a223233343665613631373232663537636362386437633134336238626165623263223b733a33323a223634326464346636333462363032616463636439303533393534363932656636223b733a33323a223164343236343138323664346132326632323931303761323035343339373939223b733a33323a223737393461333930393765383863333837653566633633366532376662663762223b733a33323a223464313230316561353665616132663231373533313437313239303738333436223b733a33323a226265356462366333366139303762303763666237366135336532373361336236223b733a33323a223435616661303538306666636130626335663062643066366536613966366565223b733a33323a223430323261613435313736666334656139303535653966333236623565393234223b733a33323a226336313130623762313537633132653064313839633330323331616262373466223b733a33323a223235613731663261653436633365636539326336323637396465613762363130223b733a33323a223331323135363636343936613964373231306663386162633537623633376338223b733a33323a223534643461343531336561643661353135393563653737643937623865313038223b733a33323a223165616664356232653336616537633737303335313339633236306635383936223b733a33323a223539363237633636633033616535313232316331346265653439643166306439223b733a33323a223633666638313137353735633734363762666464633465396534626537323034223b733a33323a223937393566623937333434383261363234653564303763333237313839623639223b733a33323a226336613164623461303638653831643536383537343139333162646438376536223b733a33323a223434613565653965656139303465326338656262323537386339393937343435223b733a33323a223237636163636231313233313766396138626139613638316433313932363031223b733a33323a226231633435613166353034656533616432393330363063613930396536363337223b733a33323a223636393233313166393831386664353564623734653936343464613030386435223b733a33323a226239663166333564376463613236653834663436633163373332656638313536223b733a33323a223237623934666539343430623665316638613664656235383437366630653438223b733a33323a223537663061306661386539383033386436616139663038363736613061613763223b733a33323a226163646434383430343435353933653061633137663635393465623835336661223b733a33323a223663663163613933363538643034623439633161343564346431393337376134223b733a33323a223563613461626335386134333737663932393934646266623365656534376433223b733a33323a226237336163363236643762386361353930366663323636366537396462313866223b733a33323a226533316166373633303933376161643564663161656564396334306464666266223b733a33323a223533343562343730613561313038636162303537653766656461393964303136223b733a33323a223061326564306361346461616230646261633333363132303833303734373966223b733a33323a226461313737386533343762633839613935646461393239633065393931653161223b733a33323a226237343234366163613665623138653266633736353766326631373332333061223b733a33323a226637323230336566313864383937346533343736383639306461383835386633223b733a33323a226137346261663532653161373865616639653435336432643238666166663738223b733a33323a226462356137383431393930303136346537323034643436333532336338343334223b733a33323a223763353838376463646332353861366237663930346565653133643733323733223b733a33323a223232666662323237326137346166656261616265366432623331373032646330223b733a33323a223731376261386535356438363265393762306230643431383330366237356532223b733a33323a223732313830653131346432383532343962343132633738666133663834336538223b733a33323a226561343437323032363237633864323036633838666137323363373361393962223b733a33323a223239623536626432353863393737356530383961376636353534646631663935223b733a33323a223466633765653163643336396135303033613263623964663435303231343562223b733a33323a223834306265636436316630343239343265613138306638626565363565626636223b733a33323a223463386462663638636135643666363865326337323030363936633032306465223b733a33323a223062613464396331313134316265623761663033653935303963376639336632223b733a33323a223837346138646236636533313330376234363262656331303763646664363737223b733a33323a223636653531373235336132623835646662626363353262323965313139343333223b733a33323a223663663666613365373363623935343930366639346365666231636239643166223b733a33323a223366376665383961333333396534666532363730636131373934636663313635223b733a33323a223934646663386430646361336230333632373232633434666434653431633035223b733a33323a223235343437306339613336626537653365393936623234306233326432323231223b733a33323a223038383933326365363532613739343565623930356434356132616635386536223b733a33323a223365393861613935353738636438306537643835383664316432623766666363223b733a33323a223633383563663339393131303733623537616262396532373739653561633266223b733a33323a223230353739343763663362313031353965656439633266613630306662363030223b733a33323a223838306366633963333134383930326662656133633631333636333136336466223b733a33323a223963393765383333343934326438346330643030323737376632353366663730223b733a33323a223438663330653562646238653133663130663436333937366635303663343536223b733a33323a223761633363386238363138663362323766316538373864336166343530393131223b733a33323a223862396430303463356665383039346237666337323536663432356336306466223b733a33323a226631666530333235663334626131316433396435383635623832663462646266223b733a33323a223333643930613839613239343662363734326437383439336134323032343139223b733a33323a223731666163303836323030346463613732353961636632333237363865333839223b733a33323a226138343530393838636636636564366533333761386433363935663238303339223b733a33323a226161363362313637326631363432323764613961363130303262366431626334223b733a33323a223330353033313635373233393039613061626533346531373364356333663139223b733a33323a223136303861656535353266313236336661636435383032393930323932346230223b733a33323a223635323261653236653564633465366662633037663462303064303838346639223b733a33323a226639633064636230663431626662323739313364623564356164363738323565223b733a33323a226139666635363763636530373861636437353062633433653534346534623230223b733a33323a226466303332306130386630316233336439646533663435313836343834646563223b733a33323a226235646231346536373766383738353239323763363837373964356563366465223b733a33323a226330383161633762383238383432396432616635353061643236646366353638223b733a33323a223436653831353530346166313230333039666564333339356238653134623766223b733a33323a226566613364373038643966313936356338326438636139383431303063646361223b733a33323a223134396335653130373433303332353063316261646132313232323238396663223b733a33323a223462383133656130663032333030616566313034373631633365376461646531223b733a33323a223639383832303135613034663437653831313965383662663966313562313537223b733a33323a223433336462336531643863326363353631653464616539363763653663316334223b733a33323a223933363033636535343561326161656465373636613962646439643937373835223b733a33323a226565643139393639373337646462616562383234313832333031636166636535223b733a33323a223031643462353066633562333730346431356233653965653034306536623364223b733a33323a223337633931633166373239303830343234333464616137353731343433393331223b733a33323a223632303438666531386136623933366433353030646638656162623764613930223b733a33323a223839383232333130306266366231366666666431316262643663663162363535223b733a33323a226365636561323235663038633063346530656130383165303738636433386564223b733a33323a223865623763336337373737316235396262373134353634313531363361376538223b733a33323a223235376437363530356336633363393037633539383232613831336235393561223b733a33323a223038356635623533303733373239616561616436313037316138303037303236223b733a33323a226233386635623762613530343239386130363335636665663239396637353434223b733a33323a223162336139383665633036653531343733326263363232316363623430316162223b733a33323a223639383635336534323166366362643964303234336130306135656662623231223b733a33323a223832323764643564343530626635333337356162343064646135626664373332223b733a33323a226230386632366264616335393431393164633330616530626432653234356561223b733a33323a223135303630396661383136653866643034396666646664666636313636663933223b733a33323a223733376261363064343230346634323661303638373232356266373831353839223b733a33323a226538336366346131363439366164623930363930626462323431383035343431223b733a33323a226333663535616232366462643065663534313136333335653434346266613435223b733a33323a223235666361633964306234643238363063333666306538346538313965316339223b733a33323a223038396661356165613938336636363863373538366138343939336261313164223b733a33323a223437356161356638366361386232663032656462336435616530666563316334223b733a33323a226366313639353036336461353462376437623034343339376438656363303930223b733a33323a226462363661333330303239646364356139333538633234366662373139633234223b733a33323a223639373934313961313066383061393162663637646434356164396332356535223b733a33323a223330343731336261356663323538333762373961613538343036663162626435223b733a33323a223366306637303261366665396538633330383732623261626638313831346239223b733a33323a223164306364626435313365646537636465633862323663326131376234336335223b733a33323a223566636133363066386264313039633764626436356232373264383733323664223b733a33323a223366373763373362643865646532636438376533383637343165623764653638223b733a33323a223532306630373162323332666439356635343666623930333334366661363530223b733a33323a223934643330343835633964336363306263646338386636316464616137633532223b733a33323a223463336433313635326535376566336438383331343033653633393465623465223b733a33323a223266306365303437653330653933656165366461623637616363633364656132223b733a33323a223630383465386637313835343162316562343763356461363238666261663036223b733a33323a226632393830663535303535313138316434666562653265356238383864343639223b733a33323a223537343432363564356161386663646362373663383666366665373030653066223b733a33323a223233383265306638323639366234613239666632333662323935346633633830223b733a33323a223639373338636266323964393962393461616334313963663064323763613337223b733a33323a226636633739656537313065623161633765643464626661616139356338343834223b733a33323a223531353631356633366663396365643662643636623531626431376364326166223b733a33323a223536363037313437396663363038366632323134323737313130623239363935223b733a33323a223431333863383830373833643265363632353130626163613065323636336234223b733a33323a226134666166383266323863633965306635353666623138353135626330306638223b733a33323a223437643565626666363666613761356131313165396162623938646333653463223b733a33323a226234336464336135663165623937303633303332303837303236343237306661223b733a33323a226463393664363230656134356163353331333836326238333534646663356333223b733a33323a223230316238346139653630333066313763376331653734336231303838383936223b733a33323a223338343636616433336161613461366566643766663031376631386365313830223b733a33323a223562643632623038323435653936353734633365336238303063646566626661223b733a33323a223065393032656466623030656636343164316262323966343635323839653838223b733a33323a226633626263366337303462656263343063616365613466376235646631366137223b733a33323a223365656331666364663766356165333538643363633033356532383462313831223b733a33323a226537303037653436643366336139333331383066356565393338636533656562223b733a33323a223834663165343430636338323665616463616632343034633232303433346339223b733a33323a226239393331303365343431366234303861326366323333633062666432303238223b733a33323a226466303163376238666431653631643736633761386562633731396632653262223b733a33323a223063373036366465333262623561383738303564646261336438366464313531223b733a33323a226164386433373530346638323937643165333165646264346537623036313961223b733a33323a223334653837633833303536303334343935386638396130343032303866643836223b733a33323a223333663462306233346638383336343063633962316538353639653730636236223b733a33323a226137653864363135333865343062303133353264316632343531316131323238223b733a33323a223632383535316537613839383762373462343962653165393764623838373466223b733a33323a226237376462313935646235373865643261333639643833666133363333656136223b733a33323a223361366164323165326330646336663762376133663362623363313331656435223b733a33323a223162666639343665633139663364343139613666386261336136376331316430223b733a33323a226464366566613637323133343538326437666537626337613339626531373666223b733a33323a223061333264386139636137643465656439346331363762346566633939303337223b733a33323a223838643663396433346536373038346534306633306566343735653839336366223b733a33323a223435666163633538376436646336646266666364393163326161366330626162223b733a33323a223138636331336564633738636537333161623964626238633861373638336438223b733a33323a223536346636646539333732313361396134323733316333656339656163383266223b733a33323a223633356331646262336564653363303539633734386566343038623238303736223b733a33323a226433353366636331386435663437326139333563643735366136373032353066223b733a33323a223265396265636366303565366463633639643165343537656335373334373634223b733a33323a223135303039333938316138303661363239656438633731386138343337373636223b733a33323a226561343261373037333836333630653166373536306634323736323338613563223b733a33323a226261363439633763643332636433626362303033373466333837633566616333223b733a33323a226163363864373238643132363634356264663536383438346164656434306131223b733a33323a226531343530393931666538313637356565623039663536306637623232333834223b733a33323a223039613665616632363339636532653731626266653735633439323832316636223b733a33323a223061343737383865636130393466653063346139343035656334343265316565223b733a33323a223432303430623236373431343561326463663661613735313037383932326233223b733a33323a223239636632373531326634393533333263636430356439383934336664653665223b733a33323a226561636166336263303066396431313865353264373466626563666162393336223b733a33323a223533303664323665383931366438336331356534316565383235623034393765223b733a33323a223361336661303033326236393636343766663661386232383666333364616331223b733a33323a223161376631636532303435316262656439643538363431646565333733353662223b733a33323a226166636633333831313862386635383133346431653764343365343264396361223b733a33323a223839353333383937366538373139356630336335643434643039303666363638223b733a33323a223138393833383835636465633039326237613739326135613265353539303835223b733a33323a223933393464353339636131663137633232363462373965306237386539656265223b733a33323a223163613639623238386264393662666464643531636661316536613936363931223b733a33323a223336313266643964616535633364616661663064663131343162303562303835223b733a33323a226561666130363132653831653330616630396234353462313735363830356264223b733a33323a223332616439316133656162383066393463343165356263666261643131343366223b733a33323a223138393739626432313637643866656436346632323463313066323037653066223b733a33323a226234353830333031656362366535313236363733396635316139623965623733223b733a33323a226136343239393634363530323861613035663662383663643837373732336632223b733a33323a223236323631656566373534393631633039653236613861356539613034323037223b733a33323a226232323634326663366135373066613336626633616466626563633230663134223b733a33323a226266343663666161303464643035343863363339386361383938363230383136223b733a33323a223834326332326339653535366437353535386137343063343534353638653339223b733a33323a226664383264656265326432396166613865326231376162643765333963646261223b733a33323a223933343865663231386435616134323231313538336133393138343434363031223b733a33323a223362626264323230336562656663366434653161356163633332363338343133223b733a33323a223434656363386139623235363663666333323033306130613838616634333231223b733a33323a223531653739313636386361386264383430666661623636666138636636653462223b733a33323a223137316163343964316633356537336336353433356437343539383539623837223b733a33323a223864393763633465346539343336613166643332396366343361623233613961223b733a33323a226235663261666630333233646666663166336138396134643636646338666437223b733a33323a223630656665663331626464303534643939333638613062393939323165386334223b733a33323a226334306435613362396635363738323536363139643266303936303734376437223b733a33323a223435343030326534653032653931356463633761653536356532306166363566223b733a33323a226433633632336135613533383761343962636539343436633332356262353432223b733a33323a223834346530636331373162346262366561353539343738306332303736633136223b733a33323a223437303936316632393266623939653837386563616362613766306437303134223b733a33323a223631303761383736353735353234636561316364613565333832366166636537223b733a33323a223736326632363930623939653332383033343234623634623665646362663530223b733a33323a226632613032376162616661633233336233323737383638373130353463353065223b733a33323a223563646563396666306539656233333632346438623637653961613737663034223b733a33323a223136373933663563656563393534306562326263393466613539623763626662223b733a33323a226635633562616530633130653363626165396166663264626364363932643336223b733a33323a223134616131323565363036336536313965386434653433623661343136663638223b733a33323a223666373635373631363933373665393638313165626465613931343032363732223b733a33323a226133646533386530396536613865343865393461343232333134623032303734223b733a33323a226462366334616135653334363035346330366234333539393835303164383533223b733a33323a226531613433646533363364626139623137343466346665633361373230323436223b733a33323a226331656338336130643933356361313861333036353537343032653262363666223b733a33323a226262643831663032383166653931623434336465623866346633656163396430223b733a33323a223266353036613836623431633330313436336336373466616435373831343035223b733a33323a223966366236343665666230333332316637386338313335643338353332303566223b733a33323a226632653165316361623935303239623663383332633431343964623662356162223b733a33323a226135303934643131373463353035363562363634663330356666326339313165223b733a33323a223437396365613631633663333833343835393039393334663233316466393764223b733a33323a223263393239303462303636323137613537643364393233396432343536363566223b733a33323a226334633634386430323065383836623234346139653934623030333861653861223b733a33323a226231353238386436393836643461313637633962303761396361393038626534223b733a33323a226239386137656532626161396665393535363137373535623738386465613661223b733a33323a226366363737383762346439303837666236323738363237643435343339353461223b733a33323a226361653434306336353132313466656532303064303436306163666339623434223b733a33323a223833643538373463636562386462663535336435353134333763623638303337223b733a33323a223831356436656534386665613331386632373630373139323632613765616238223b733a33323a223131636261353361393866323936373631633463393036346665376462613839223b733a33323a223631366132376163353232626434663863633839653130366530383764363864223b733a33323a223161666265333466333536383565383231613664613839313235326339313636223b733a33323a226661623164366661633039353734306134333239613930373531633634633035223b733a33323a226637613830333131616635623435343930656365346537366565396638656334223b733a33323a226134356332333032353061396164636535316437663439343632636263363137223b733a33323a226233646136386638313234333235356233373863343030653534363962623461223b733a33323a223761613937393831626331656561363564366236343135333132373361616665223b733a33323a226338396232636532616539386238393466343963353136303033313339653963223b733a33323a223033316466376435393037613437356366343139313737383736393161613266223b733a33323a223236313537643333333333613738643536633530626261333938633936633061223b733a33323a223962643832613938366264386233363631613731613933396137346163353566223b733a33323a226537346664363431353365363332366336383533363465393431656635663635223b733a33323a223936343964613034343865386136356465323164623337393366653030343737223b733a33323a223162396534333535393237336662393563646137386266386539383237336262223b733a33323a223837663864643939626266636333663565313464383361393430333934303364223b733a33323a223462306565613565363334386235633766626436353531383631363165373738223b733a33323a226239323032656536366366303730356666336562336166363166323730376539223b733a33323a223265336164653932643438386263363266656432383461386262653764623930223b733a33323a223465666265353235616432333138663863613264363631666430643861396463223b733a33323a226234633335663036336236323630396665306561363164366232623064616634223b733a33323a226134383563373338366239656337313735323730333134396664623365353938223b733a33323a223334626361346433656637633561353232306163336366323164313063353036223b733a33323a223731313334313065366663323230366166653235343366666331356537346435223b733a33323a226131373434336132636333336662656262316431313866303437343862663130223b733a33323a223461623338306366613562366239643163613332353437346135383137313138223b733a33323a226463643531333830313362323531623566373936626430306265633939343337223b733a33323a223265376661336335393031353266396330626561363532626330663539376430223b733a33323a223835663765396234613931323136613064303566656639363564383532323436223b733a33323a223430393733346132633363666131366438663865396330336362663362373134223b733a33323a223361316131373831383362303936376636333936613363353661313861353735223b733a33323a223836336563373038343133326330616232653337626232356366656330613966223b733a33323a226562386563653934323137373132343437666661396164663339613830383561223b733a33323a226535393663393435326565386437643736376333633662376634393337356566223b733a33323a223436333562666338353437333561396239396630326331376463333838343361223b733a33323a223937326564343164623965386232616636623135313164666663333930393365223b733a33323a223233346539646564373339303165346164643639356238396432666465363231223b733a33323a226462613638666265333564613031343931303264306132623032646539646666223b733a33323a223339363134346161363962396435356334303931373433663361393966353064223b733a33323a223664383839643662353437663733386239373835326234396361386461653031223b733a33323a223463663865623739666130626239363439303732386662356331336530366637223b733a33323a226636393662656265626362653633353037316532616461303934363231396534223b733a33323a226439386261393730336230373965383431666234393835623931663963366135223b733a33323a223233623232306534623961353333326266323361343564333630383734336261223b733a33323a223533383566326433393037363330656438373836323831383162323062343636223b733a33323a226263626635383565353937343131646237303536376663303538316133336231223b733a33323a223361356462386662633630643539323732643837336639333233353739373065223b733a33323a226139656431646265643862636464613262633131623862386232356539613637223b733a33323a223831633136313434313962613036383130613065386361313930653131656533223b733a33323a223734643038393733666531653638363431636534323934326465323635383963223b733a33323a223234356337313030336663323965343033316136656536343837626236323432223b733a33323a223565383839356433646265306562616236333134356234636331303937663662223b733a33323a226630613664343835363038356264306637343165623339646566383730656161223b733a33323a223033653234343863316463353939633134316630373634343635653562623262223b733a33323a223466383830643932363334366436383132376533643333343261663262656631223b733a33323a226537626332323463666534353364303139393463623632316434346631313830223b733a33323a223234363131393135373330386164623063343334323362306633626633363062223b733a33323a226537343032316134633965666439663761343431653632346164383339653062223b733a33323a226436663939613337636336663938376565313064333334353833333532343865223b733a33323a226263666331633163333832363430666461363061633930633739633434363934223b733a33323a226562363035646537343461313039613837316534343965643831653366653661223b733a33323a223962663130346131313333363931346461343162666436353661316362393732223b733a33323a226136663838323935333533363265316435336434343162383161306637643637223b733a33323a223035643535633162373661623363393266633065333065353762663635313362223b733a33323a223361363962353465333834323430356333393633326561343437613065303038223b733a33323a223938326133646632303633356131643035656436343133356434633265383135223b733a33323a223338336432303734346334616139343561333461366137323431303533623566223b733a33323a223639653931363530663461613030646631326538343236636363383934326632223b733a33323a223632643662366363623464386638613837653931303366643534633063666634223b733a33323a226534373934653633393565626235363866656335646563373836666537326562223b733a33323a223132616563333932383035383737663464663631626166623266346631366436223b733a33323a223839646166653238346238303266303239636161313464366332336537303638223b733a33323a223063313931386134323538613136326533353838636530613563623730373739223b733a33323a226634326638666231343662643163326338356236323932353531316639323436223b733a33323a223663343730373666393064633032393234323338663938343162643039616236223b733a33323a223764646234613331363261313762393836333061383964346631313265303236223b733a33323a223437356332336337616431323464396234343237353635333230396262633736223b733a33323a223431626261383862616437656561366363313336393461383139663936363566223b733a33323a223039313838653262353333396366626232616538613634383638313438373432223b733a33323a223237333039633134613930303664303731366535366630316265316633666637223b733a33323a226432663366633334396339396335643435323038316139323838363065613733223b733a33323a226563383362383339663835383237613339316264626462666338333034366339223b733a33323a226138626338626363376534363166333663626664613966313234366266353461223b733a33323a226361373231383134303631626365326337313036306463323631383634323630223b733a33323a226361353235373834313734646237336463643965356632653634373233383561223b733a33323a226534313434376665366338663939663661306265383266303234653963643338223b733a33323a223261393262343239666138383231376161313333376239343238343062373437223b733a33323a223865623664653731623439383362383538346235343764653064396638316334223b733a33323a226631393835383364316366396162653863326264376365393438663665636630223b733a33323a226265383539623137306435613736353363656132333962393233313465636265223b733a33323a223238306361623966666433616332646336333732653332373261656231643233223b733a33323a223538366163383635396239623232623461643139303964326533383761306362223b733a33323a223062613536323965383135353531643132316431373933646236646139613264223b733a33323a223161616461393766646636326434373930623532383165343262626632346361223b733a33323a226531356262306137343566613336646637343833333234386237623562393530223b733a33323a223466633538623839633639613030333061353461383762306363316139306265223b733a33323a226136306662373565646338386166303666616366613734393332653263353533223b733a33323a226638653631623064616131646366356631663963363634623063636366343431223b733a33323a223837383232633238323730313232303435623233666463323834343366363333223b733a33323a223364383031313732323938643139373239376239336532653635633863306464223b733a33323a223338346366626335626431376636393064366138636233323965376139646562223b733a33323a226437623733626363306338636265386630323766373561353635653161386466223b733a33323a223266303834353561326533393133346138373762366665366564663466343830223b733a33323a223934313463346536373430376235643364303539343462633539626464613132223b733a33323a223462376562353333373433336466373537663666353666613431626565613431223b733a33323a226535316663373939313937346632363061323762386266633862313565393535223b733a33323a226536353132316539323763363835653534616530613063633765333463613331223b733a33323a223361306639663331623238623639663662386534626637633162326535663665223b733a33323a223232366538623134313033623264373063376261663163656435373332333835223b733a33323a226563613333346166306561346539656335303465303334393036626563343566223b733a33323a226238663761646263623362343130616463306333333061396138313736383062223b733a33323a223338363165353436343337336165663535663462316135653865303535396231223b733a33323a223335343734623039356330306135356539386266343365656663636339643463223b733a33323a226434616132306163663063643739366161666465636163623561326365643535223b733a33323a223433653761326136636362396533396231653561613637356366656563323338223b733a33323a226538646532333631653435396536393065663834643438646162626532343838223b733a33323a223964653835666264353737326635666334326135393462313963303762636237223b733a33323a223038303463346130376361393165363362613962373264633335353432353437223b733a33323a223634396533656437306439636233363737663836623731393032343038326264223b733a33323a226232623835383161376163643839656337303737616334623465626466666636223b733a33323a226536393565363237386232393435303239356338383963313264633537363165223b733a33323a223464323336653834333736306661336632313739633332376662636634646136223b733a33323a223563643630616336616239653639643235323461613136393135316238306561223b733a33323a226262386137373639316166363363373031366133623232356633306434666563223b733a33323a223861653030636539306564623065303535323664333334386538383737323365223b733a33323a226134326363616365396135333730666137316330363366633337663232323033223b733a33323a223835333265623935623861373666633731633534386266623639306564373934223b733a33323a223736623563316366643733333662383432653639333964303365653062356165223b733a33323a226261623237343035636335306465393063376337356633623538333964313831223b733a33323a226265663036613166623037393365303564346636643562633264386537656534223b733a33323a223634316631336334396134656562353231306133626232653130353064303131223b733a33323a223734653834653136616565323038653939663035316336616633393065353139223b733a33323a223231353366633066356130646361313230343137346131346261366462393863223b733a33323a223235643565363964366265623162666533343631326635346430623831316134223b733a33323a223335663763343138633639373836363737643635653361626266366263343639223b733a33323a226239393135336662636264346637353138363334313533633063633235393861223b733a33323a223733653036613135356562323033643737653938373230663236663264666464223b733a33323a223264613265653063333633353361653832393635363465343339353866343465223b733a33323a223863346530366261363930396265313963623962643434366662343765343230223b733a33323a223937303462643037656536636532643634613832306530613338363264646162223b733a33323a226331363539353438303434323465323962633530666635313133333265656232223b733a33323a223539343533616438353134393263386261363266343338303939363334316130223b733a33323a223730363537373136663062663939356666646639326461303236613465343963223b733a33323a226535636165333233613637343363633163393737333662636565313234633833223b733a33323a226139316638363139393365643463663830393635326335343761303230646632223b733a33323a223863366532393633306131653438353937363432653661616464623834353762223b733a33323a226132383432326139386465623139343665613039363966663163333066323234223b733a33323a223530363362663963643765643032643038396663643935666165636130353761223b733a33323a226239343135393261303637373637643361663132623030333735383932393339223b733a33323a223032396564663230653361386534623335356132323037353435633134346263223b733a33323a226234326431343934346436386365396633323033613137333663636135666235223b733a33323a223631376636383562383664346433663939613738643665373938353162613137223b733a33323a223362343161616231343934666666333661666665616664656234303063393561223b733a33323a223630653361313538303039326237633931356231353530346531346633643131223b733a33323a223135386238373236616635353534646665663466663137633964393639323566223b733a33323a223135393937333835376462653864326338656631656536313062303239653034223b733a33323a223166316263323932623336623037336339626634636630373665383834303466223b733a33323a223662366463376366333463353232313666353731323839643164336364316464223b733a33323a223437616134623862613062303764643666393338663362363438393063613930223b733a33323a223835333861363639333133306338313561396435396362346265306263303366223b733a33323a226233373261363264643565336230313062316336336537306362663630306163223b733a33323a223364313730326566373932343963633230343233373263363230366264616435223b733a33323a223935643231666532316162363931383231666238626433613532303163626464223b733a33323a223930306438396264363863653938303762323763353831383535383734663937223b733a33323a223632303532326662313865316636363533613432613833313139663133353463223b733a33323a223438643264383061373234653432356332326131306134353237396266356564223b733a33323a223039313934303837613930393262653330643835613537373235376431343430223b733a33323a223262353332396537653938343335663138393939643463396263646437356231223b733a33323a223137376266633262643536313863626634396263313864356339316333323539223b733a33323a226132653433363562653933353038303165646363633130613264393836656532223b733a33323a223862616262616231646263636438303966613935343662336665333039316464223b733a33323a223165646364633630303032653061333161386230656434373838666565623231223b733a33323a226438386262333039646338646239333434636531346335306433613362373239223b733a33323a223730336434316366343739616535383039666365366166313438366364333032223b733a33323a223130323762396139366339383165646164366333636338316635383965346434223b733a33323a226336666236636334356664616139626139346563366563326661343563356562223b733a33323a223837306461613035353634643762333333663865343431393533343737363064223b733a33323a226331623133306363343837383664383933626131663233366463656437663530223b733a33323a223762353164383665643830653865383764336237613533363237306535323263223b733a33323a226338626539643934366161356366376636356435333466333966666130353663223b733a33323a223463393139303033313139633161383665306139313566396137643564613165223b733a33323a223238336366313036366337323263663765343738323939646138306166626337223b733a33323a226630383165333962323138303735623566366235306638623461346466343033223b733a33323a226633656130363462636662313466636435393661363233633033643630353166223b733a33323a223065393363333231363339303331623239323662616235636335313263366133223b733a33323a223035323630313333323637623462313365316562303337383564636133353662223b733a33323a226464656432663531363331343333343964346365373864666535393830313730223b733a33323a226665363263636438383839666339336531303065636433653433333833366564223b733a33323a223362633438383461346637633635623961643439626532653230376262366366223b733a33323a226438656361326232356262353365656335356232663963663162316135633561223b733a33323a223735366339363434336466636435363661633263623566366361363363363637223b733a33323a226335666137393630633735613663303830396538386334366164393133366333223b733a33323a223730393030333463396664386331356434323939393138356363396336323061223b733a33323a223762313632653230366635383636376133653162323037643330316562376561223b733a33323a223462666566626136306430633165313830336364323861656232623137316666223b733a33323a223762613736363335323033393266323337303932313836333732336635616133223b733a33323a223838306238626434643835336238383165353433356438663864643531623534223b733a33323a226364356634333933326461376566646462333936353532636237343638333735223b733a33323a226636633332623435363130363630343161653437646661646230663766303561223b733a33323a223262393863366566393863643265313935613066623831356435613935326136223b733a33323a223865626330666164653065393030353863346161623162626434383932386262223b733a33323a226630383637393035643835393537623230333138613835363331373232653766223b733a33323a223663663965373535666563663831383134383038633537343264666361353463223b733a33323a226235343964356631333131353638666534663139643965346165306230306233223b733a33323a223035636631353462373364656434363333363234323530616435616664333661223b733a33323a226239326263646362373234366333633933636164306130343030646538356532223b733a33323a223536623762353138646236393032383161313263376164663961366264616666223b733a33323a223365353161383364326132376133663565363530373335613535646234346562223b733a33323a226437326462613932386131363832396335316535346266333631376632303039223b733a33323a223436303939643832636634623335646330323636386137386332373738386339223b733a33323a223765666564663265386239386262363465333938343265633433643562306234223b733a33323a223463643133343237303761343431396239343738343336613531633830393030223b733a33323a223138306631653065363836373934323935313438636138396337386438396235223b733a33323a223231356238353262383536623730323263373437306561356665353461626130223b733a33323a223531373339316639656462636635303561613538643130653462393331653562223b733a33323a223366346635356231353762346639333664656237656233666265613430323365223b733a33323a223638623634666137643732613731633266306238346435633364666261363032223b733a33323a223263323362396262333339663233616335333534343238656261366634326530223b733a33323a223239353839636263363839656534383533313237356233303066663864646336223b733a33323a226261663532333630333634626435663634343664396361326465353730336530223b733a33323a223566643036376532313461633961626639623463646464303732613364323861223b733a33323a223939636263366432333765663731363165613932366337663535616237303236223b733a33323a226264393733393238346264363537666565316366366431366535623733383563223b733a33323a223738653230323036613633656139333766653431393262373565353834336264223b733a33323a226232653965333161326334653130626463383264393763323562636365376435223b733a33323a223032313234636461653230626164663461643830656566386437356638646333223b733a33323a226462623934363130313638313837366235653638643161343463633564636662223b733a33323a223764393933663662353632316337643666373736653435373634643737633635223b733a33323a223361643837653432643334373364613062343466666637373864383466646130223b733a33323a226664336635303363343562363139616232303137396236373463343239313861223b733a33323a223136303133303165373230313963353639346432616662623261653434646162223b733a33323a223938313661663733376139623934613866316664363662633633363033316335223b733a33323a223261666330633636333239666663373065393635326236363930336465633631223b733a33323a226163303664626434383666656438363637366631616266346331346465613963223b733a33323a226637326636646462353036636538623530366537313039656162616461316461223b733a33323a223839323739313432386633353734383965666164613134633833623030393031223b733a33323a226435333365386631383734643363366561343662313731366535316564306430223b733a33323a223539303565343035376664333333376232326136343865363436643564386261223b733a33323a223234356465373831623530616532323666663031333433323237656436663165223b733a33323a223066616431393861383237336439613461613334636439316133623731346137223b733a33323a223233313537396133363161333235633935643164343062643730366139383537223b733a33323a223565663664623865366136363265323735653634353265306235386564313436223b733a33323a223539343533663963303762313833656563336239326336363766306239656463223b733a33323a226630323635643038346165343033303463306339393036616630363432313063223b733a33323a223064373266666237376263626439326335376432633132373639393633306639223b733a33323a223733653032663335646635356330393261653761613133626165646465663736223b733a33323a223536323939643333666261346162343233636435346463336661336135303039223b733a33323a226435613932343439383636336161303837663037633032386263626665313238223b733a33323a223530323234663764656233643463353833373736336464613463396364633532223b733a33323a226635333661396161353066326431653065633932663337356131663036623737223b733a33323a226334336164393964383766366632663539636132343635346436633166386235223b733a33323a226562666562316430326666303638626265363836663164353864373736383038223b733a33323a223361373438363834656561376430313763303730363266646330623731363038223b733a33323a223336383163376430643936633863303031336235623164356139333930376438223b733a33323a226664643639326238646337333836366333333033343563663965386534323964223b733a33323a226434313963393236333236396531656237613165653037643333346461356262223b733a33323a223335613235396431383733653266386434623466633166346636656339643865223b733a33323a223638643563333930656664313965653534626435353164376333333032363635223b733a33323a226365323339313835343935306464303837623638623535316430633333323537223b733a33323a226436666538363665383435346638353931336433653862663837626364363165223b733a33323a223530613139316534623135623633366431346535383135336261373236353937223b733a33323a223962386666386233623732636466353334386533303766653533363936376230223b733a33323a226565653432643734306163636533313663363133613662343235306265646366223b733a33323a226437636535346333363963383564346261346130343464643831346339316635223b733a33323a223030326534386235616533346333663062333066643831646464653562616161223b733a33323a223339333064306330376432663132383031376565616665333462333436653364223b733a33323a226234343866633039336165336266363336353638643638656136633439316236223b733a33323a226264383433643936666235663765313133653238636634333733343533323439223b733a33323a226535353932643964346464393664643733643430383530383635363762653537223b733a33323a226164353233326232633932353733646265623637336631616638643761373363223b733a33323a226438653065333137626131386333363965646561343634386166343338336237223b733a33323a223934616533323730356537323364343934396239313930396238386239643330223b733a33323a223162643565353930353865343937363162373438626363356634663838323766223b733a33323a223538323164363366623438313436623435343833323632346338626361626362223b733a33323a223437333635356232646138333365363239333235303038353134316330373762223b733a33323a226436323763313837323934613961373232323637323436353630636637376161223b733a33323a226461646263303637663463643765346433653536376636323465643837336533223b733a33323a226237376632326165663333623139613730313134343261633966386332356663223b733a33323a223763666332353563376264313230666632326330366231393436386366323936223b733a33323a223031633062326238653835623735636239396636643433313365346366333432223b733a33323a226633336662383961383633646466626235373837316530333335386336366536223b733a33323a223766616132366665303262666431373434306237643365366435333564303836223b733a33323a226535623230346665626465393466663061396339653136643330393861653730223b733a33323a226430336635363763393233666364336466373937303338373130633562346231223b733a33323a223032333132626132653137306366353633336562653861316634666462353034223b733a33323a223036373638623837653065346433353630613937326236643835663030333062223b733a33323a223532653363353631383832653165356361643736393430333837313364376232223b733a33323a223231616136643830613263343365306337656233646330666336663037306237223b733a33323a226137373339313336303830323361323235313762333830363530613939343637223b733a33323a226434383230643436303430343765666462616639353539386231343264373733223b733a33323a223937323738633936353861333963656266376132333863623335356162323661223b733a33323a223363336666303633363164626233616435313936383964356462663030363633223b733a33323a223661303961643437323830333637303535356637353038623835336665303733223b733a33323a226631633736343337393963666634303531313166356539386533326531383264223b733a33323a223762336262333637393734623961626166336461663966373238393335373432223b733a33323a226261336162666337356563316361653333663063313064306465656563346236223b733a33323a223862383432326564643434356566313230656331323033313934306563373432223b733a33323a223764643734376361623531383461663765623331653333366464333237366365223b733a33323a226631316139626363633064626632393239623335366361613565333165313939223b733a33323a226634646430353334386137656366393361366235313463393934383832323039223b733a33323a223933353637663934303330353234396336393666393962333036636430393435223b733a33323a226465383635666165363132326231663333393932326364336239323234363537223b733a33323a226138393561353732636235386437613537653538663036343033666137303934223b733a33323a223533336164326439336163623032333935613964373266383266633361313337223b733a33323a226366303038653366326564626534353465623938383664386434653439623435223b733a33323a223138633030356133363365336634646366333634646261303333393465633730223b733a33323a226439663666663165633761393064333163616337313136376461646331333332223b733a33323a223239336561326139363832353536653237333561316166383639643633663937223b733a33323a223765383066333933343162356535353365356533353833366262386662326530223b733a33323a226537356532363464346535316561373032623566663730316132626433353366223b733a33323a223430373834393439626666366436383031396561336133653263373466643130223b733a33323a226234616466323636393932636539313032643038333366633932356638663035223b733a33323a223131373838326130353533623038316139666538656138623232386537333565223b733a33323a223262363135313364316137653434353235333031353265626565663630313033223b733a33323a226331666431346666386366623037396632303263333665393233613464623639223b733a33323a223861663133373537316634303838656337623561336161663030623064653634223b733a33323a223138323863333434373066396535373061323262313763656166393365663530223b733a33323a223830663265303835333534616232616664373831323661306634363662653330223b733a33323a226433626330646630366336643635316536653762333731633762306561636531223b733a33323a226564343635613431356538303562336162383031663031613831633163653134223b733a33323a223066383932353962633537316563643431646537623861613632336434363333223b733a33323a223562643662336233643666623334376237323533363531656638356439656261223b733a33323a223834396234366662313431343038396465393336316262396665373561656233223b733a33323a223333373361323063366630303363363062373432363764636334616535343233223b733a33323a223530376330326332323430306631383538646438346434303934303365323031223b733a33323a226462363565623366646638326235383632613633356134306666653930633361223b733a33323a223866356565663136363430643533626662616531636266343531333032316561223b733a33323a226239323837326661313262636463646638636561363034303963336263666530223b733a33323a223362613233346661376437353363393063633036613238306231363939376639223b733a33323a223166346337303830383436616339643462356237323362306432386334393866223b733a33323a226537313231366161616262613934333935363339363463623131643866613731223b733a33323a223461356433623466613464366139366334336163353865386135343864653031223b733a33323a223735616636323764383362383163363133373065646166643635623766396535223b733a33323a223038346261396633366639353962633363373266616563643235383136336566223b733a33323a226330666164326338636531366336356332386662343535653835306466363937223b733a33323a223162663131333066323938333535646266336561616334396433376465353438223b733a33323a226464646538623434643530323662653062656430653336393863386161393962223b733a33323a223864323938326265316239393765323234636561396531333033323730313134223b733a33323a223736663039613636643838306664626264313031613832313738646236303334223b733a33323a223835363166316463666361613732346236376538303036616330346562623436223b733a33323a226263396239316530666530343134666635346264323839613635396137333637223b733a33323a223233323964373434376130316365313134376430666433306439396165636439223b733a33323a226565373162663332316539613766353539346664306434646362613039323866223b733a33323a226336616161613766313234356538666234383830636338643133323439653836223b733a33323a223434613464623265613932383362333237306537666361356432383836303738223b733a33323a223563643764363261663863383838613236346633353339623337303237613766223b733a33323a223434343732373163313437306533613064386366393532323433356462333339223b733a33323a223965363264363035643835343135623161393539613531363762313734306364223b733a33323a226232323031623334386365396662366331353031623064386532613339333430223b733a33323a223262656338666136386462323130393533373639363963333134376431653464223b733a33323a223934346437366264666237373333393964316565313231386432646666393063223b733a33323a226138333166353766373065663038363435346666396237643164636135356434223b733a33323a226132393763363562633164353433666565343036336333303032356365396334223b733a33323a226564343236366531663766366539323737383661653630336536393464633265223b733a33323a226635396331363037366164353338326630643437316536666430623562313234223b733a33323a223335383939656466356663366662393935333864373761613630333035376563223b733a33323a226337613939373063313735316330396136386537616664616534363461646438223b733a33323a223132663565626638376563323439386165663636316263343238313863613966223b733a33323a226436626432613031656361633535613038393133363233653531333763386536223b733a33323a223331663330333432643035303264373564646364373033343539376166613933223b733a33323a226132386261346639613033643461616139663064326536666330656561616465223b733a33323a223232313838666564376262353163333136393663373064363432666335363063223b733a33323a223864623530353332616463353630646530633130396464363035373638393431223b733a33323a226364653134656133356635626338303733313635306437333838343866353666223b733a33323a223435393863313564323334316438663966303365353333353830653664633432223b733a33323a226463613962613531616232613236343930306335326362393435666561626233223b733a33323a223761343636366336333231613031663830663263343561653836323364626432223b733a33323a226466633633613731613066643633363766663237643134643166353066336665223b733a33323a226566313537306234316530656564383535613864633039343861316661343033223b733a33323a223865383064333336303838363739343935386235633036333238623665333163223b733a33323a223966356435353430666539363265363962653630323130666234303061626335223b733a33323a223432383237663433633666306334366164663530366532636332396134623335223b733a33323a223930353138373062333766313963656439303630313136636139366430383465223b733a33323a223061333535396537396665363030626564643234616566653361323937316636223b733a33323a226433636239376666346332313334626361643138363235636530383737323030223b733a33323a226134343866646161356634333638316465643933663262306630343938643934223b733a33323a223733396232353562396664386564666134613962376632393531366130636161223b733a33323a226465646461653561353538626361393836303462356139333461303030363636223b733a33323a226432613231393130656132636435366164613436336665623035313164626166223b733a33323a226163633834326537663666306462343238646230306331306435303164383437223b733a33323a226438656333363965666431333138373337626434666431316532663232643739223b733a33323a226237626661343331653863643135396437366339356564643461643262376361223b733a33323a223265613963333536616366333936353262346162616430333164313639623434223b733a33323a223161393461393038366536626664616439646365343031323232663938393238223b733a33323a226661306663393064336538633662373366643036386438386535356439653831223b733a33323a223562316435373034323961623636336138653136343636346335613133303566223b733a33323a226135346333363936333734386663353261323730656534643736623839323530223b733a33323a226535663432653036613833353139353439313362343762666633613832353664223b733a33323a226462663533653164303365303765366131356263646538626331326233323733223b733a33323a223431366364306231396139616132383930376630643036333432333630656336223b733a33323a223938303732383935353835366236306564383930333934666432336434333436223b733a33323a223063376166623632343236623532363133313930376538623934613630663034223b733a33323a223363656665346431666465376561616632643539363864636664343430663261223b733a33323a223165353164323331313938613331656135613463356638316635633861333534223b733a33323a223861323364663861303135336634666137623231346634386130363033326563223b733a33323a223635613063613064636231663738393863326532383134663062323030373430223b733a33323a226438633636396666343034626465353536343831623031613835646338363438223b733a33323a226162336366616636353436323336353862376333333963366666663536613636223b733a33323a223166633737326533336236363562613966313637623063633535326165636666223b733a33323a223462663266343233333065346264306364363063623561356162623838663565223b733a33323a226666626461663133646261306435623533613962663866653435323736373537223b733a33323a223230383937343137383135623464363239393539323437396535313732393864223b733a33323a226532336438333766633134396331326365313465376133643664653438653632223b733a33323a223264663331646136353134636163373766663465366633383630393830653231223b733a33323a223961323262383231363761336661346537356266663935633231323636316666223b733a33323a223361336236373165396439633433653631303933613835643861333833383432223b733a33323a223034646162343939663734653639316137316434666265376632643835343330223b733a33323a223334346163383763343139373862343430306138343635343034376630396663223b733a33323a223535333764396530343039326236663734366531356335303431383466373365223b733a33323a223262306666343963633832313731653564343735303131623738326562306262223b733a33323a226639346139363262613637313065373530353539633437623461383834623765223b733a33323a226165313539396539303330336338653762643331666130333863666533663130223b733a33323a223231616261626661636163613333383839393038633631343936633030323262223b733a33323a226566616139383439383934366365613932623131636233353339323466386231223b733a33323a223062306261663364643138353331663566383765316532313230303239393234223b733a33323a226334663137363263303264376566396430386233383930376233353732626432223b733a33323a226237333035333835333766346265663462356661326139616463333633346263223b733a33323a226566356139316465303234353939623432373737396530333239346239643462223b733a33323a223832313638333132623365376532343030323961373666326465346562623535223b733a33323a226638616462373932303635323339616163623037376330636261376138346433223b733a33323a226166633937643666386536383636623438353231356531343631323332363936223b733a33323a226263636232363664653536643639386533326238633362633862366166626430223b733a33323a223534613635313135373262613862636235653638336631313333323736366335223b733a33323a223564653534343337366234656564323165636433386435333738646130363830223b733a33323a223662363461653061326437326533343238346435373638653231316665336537223b733a33323a223936363362336466663231623132653036373633366565376333363439653961223b733a33323a223962343865326632373430396261663831646137633765363461363836333166223b733a33323a223634343233663338656637646132386532343830646364643137666430386131223b733a33323a223130343531306533343666393061663431373364643566383436623163613263223b733a33323a226433346162663561353939333633363739373138616561343437323132643336223b733a33323a223133633332653866613966623732303266313537306463616338323962636337223b733a33323a226465633064343066623330313665353565343733303961613166343539356531223b733a33323a226263616463363135643331666139383335323738653931323539366564663036223b733a33323a223961646365356631326334613738323638626263656534633830303238303935223b733a33323a226562383036636635613530646432373063336534363661633535363666356361223b733a33323a223864383538656238623434346632346665316266333963386265376330613862223b733a33323a223963306438663261356430623163353061666438663934666364636137363336223b733a33323a226561386237643934306639356133333437353362613736346232316438633639223b733a33323a223263353863653262363636383163363935643163646339303637383265393461223b733a33323a223637666366313931336466323639303234653430333239306438636661643566223b733a33323a223533636464383630323335376235313733633534396236396530633466393033223b733a33323a226236336435356331366366623439373139326436363562666339316436336136223b733a33323a223236626661623664623338613064653239303963316432663264633832323831223b733a33323a226533373333313431356264303533613434623733623434346332353930353636223b733a33323a226362363636333033396538346564346239623236623433636264353265653231223b733a33323a226364383531396638343239346362323039306430323530366132393330353837223b733a33323a223231343061646131623934343163343239623338623763663063363033643433223b733a33323a226134363261626337656231383833376462316332396364653130343364306565223b733a33323a223465346134636562626137376533336261376261383239353865356436346430223b733a33323a223439333930393062396237316433356532393931316235616234323738333631223b733a33323a223230373164383363366363313466626231636535346463333638313035346332223b733a33323a223931646537313834373530346336633536316534356331346562663639656362223b733a33323a223035383965626661626432666665316462393365646433663366363161646431223b733a33323a223035383666633437333162633130376163383362653835613137663862613134223b733a33323a223833386333636634656132373937653237613737666231336163353037356636223b733a33323a226339313763656238363231306534306665373264656639393231346534373537223b733a33323a226139356139633236326633363462646638346364313230363539333533376633223b733a33323a223063373938393633623935626563623937636633323936386438373837356364223b733a33323a223662653961666539623262643361343363323361373162343266663936666237223b733a33323a223364666332613839373531303861396338613934643639306633373930333230223b733a33323a226561386230373235343339396433646265666664323037376266343736306436223b733a33323a223464653338303335633334393665343636323730623038343065306562373431223b733a33323a223838623839366136343235356130336333313165616331333239363365336339223b733a33323a223934616639333963343562666536303035656365396364613631336434663835223b733a33323a226665636662346539333737303238643830353934336563316632313239653338223b733a33323a226564626164373335633637363537393163653138613334353934333362386636223b733a33323a226336363564633733623432326438356632366233393638646364306264626461223b733a33323a226564353730336138396564353632636364643162386637343530323564653064223b733a33323a223763656537643866323435356663343436656539663161333663616535333337223b733a33323a223766643235663831633833376438313337666330303163666239633436373433223b733a33323a223762326335303762623435643331656562383634343334393935376437346232223b733a33323a226562633663343031373831613964663435353538633437626230646633313339223b733a33323a223365383561623739323961653263633334303263303134626439333333376261223b733a33323a226463653664626230613062646266633163653630396638646132353463346535223b733a33323a226266313639386635386536623765393437333763656535666633616438346366223b733a33323a223561326632366662383432356139343230623862356133663734613331633962223b733a33323a223834303865366233626531396134343663323762393930333166653838313836223b733a33323a223130646331663431653937663834613038326532346630396437353530336461223b733a33323a223033343237353733343563383936623433623337613163306330333266313835223b733a33323a223536386266653337373636336337353835353634306663353231666463386561223b733a33323a226632666335386435626135356636613832656134656535353931353939653438223b733a33323a226334366362306163386233373664393930653636363430326434663639633161223b733a33323a223537316133633132353237393063356239663831343432373331643037346332223b733a33323a226433303739613063383838333966353261633332623734396631326630656361223b733a33323a223838323365623630303964393039363838313038613830376161363732363334223b733a33323a223165366466373938633464643964363261643462373461326237383866313936223b733a33323a223963376136653737373835643661313335383664656137383966613533643836223b733a33323a226666316234353161373065373766343030313635343837356231306537363930223b733a33323a223966653262303935666532316563626234346338656630366339633062303834223b733a33323a226534653138383761393166383439316563653132316335323538316637666631223b733a33323a223335643865363866386232656163616365323062666634616261646536663339223b733a33323a223437613366333565336432353562616165616636343637643865616166396632223b733a33323a226238336134653037393337363531303264393435396463613966353838303939223b733a33323a226333323162356433376462306366373762383963323762333730653832663535223b733a33323a223066333739656435356531386666383933646139616561393439613162653833223b733a33323a226265663065346432633038303066613334653833383730366464306336376534223b733a33323a226662363333326564653338663738323638306365646531323834663836633035223b733a33323a226433666230336430323465623439336134373835353061656334353763346361223b733a33323a223736623235356239346265303937366430666636616662306363356537363430223b733a33323a223330386632643931623732643632633638323135356635366532333830633231223b733a33323a226430666161343162373439363533666462633230656133323133343937653161223b733a33323a223664656331336436323032656661633535346663633430393062653538623162223b733a33323a226338633133383562323432633133373362353835666339373837666138373539223b733a33323a223338383138663139393662366334663764306434623961626363646165336164223b733a33323a223461333961313632336139303262363566393836356461656535643836396233223b733a33323a226532663330633037353935623237323864363634656163623031613465626436223b733a33323a226165373461633034653335393831663361356336306130396638303239363737223b733a33323a223464336466326431373431643064396663353334626238353363656530623533223b733a33323a223336623238303238383032313431393837303638396335643533373265353939223b733a33323a223264333232333566366464633563653561353234363634626337646538643163223b733a33323a223434343739333132653832663161393435376461303562383263646461323932223b733a33323a226430316136326535633833636334363937616336376265343732383564623439223b733a33323a223934636165336233353132636130633565393930393733646139633139666663223b733a33323a223465626234663032326262316337333739313938383135633465626463633238223b733a33323a223638386134376632376630316435643161396130616564366438313364333134223b733a33323a223866336235666562353265306534636363626332366539336635666635373139223b733a33323a223233306330633738353365306664356562613863353065313061306533656139223b733a33323a226138636135633130633631643433336239373566373761323433376236396461223b733a33323a223163343665303537356630653963626134343030353865633135306631623431223b733a33323a226435633037653966613664303839373265646461346231353864376131346638223b733a33323a223865623334633335653238313261613765636365393961363433623566313135223b733a33323a226333343836643262326538333533333536623439653866643462366339333532223b733a33323a223831353137396135663038323266343239663031653930316339633865643262223b733a33323a226566313733336164646630343765396530333133623064646233383765303962223b733a33323a223131346334663162323434393537326134346133363364366662383137343132223b733a33323a223235366138333066383964376438643336663763303165653630613738376365223b733a33323a226635656536643665386135646530373433613236396663376435366664633139223b733a33323a223461316261366134383130373661366235306433393862643436383534363934223b733a33323a226432666634666332623333333138303564396236336230373738376637653935223b733a33323a223532396336363131613631373434666333346439356461656533393662616366223b733a33323a226366653633346630373134393836333339313436306461656265383237666166223b733a33323a223164316633336635383764306338303834373565633435393739623863393866223b733a33323a223266306138643766396434356333346132613466663739636234643734383236223b733a33323a223966376266636335396331383434643930336137613563306263663839363462223b733a33323a223364323238353535356164333736616565323836616535666439333837366436223b733a33323a223361613962616663323136396162616130333336633933666263386534343136223b733a33323a226531323661643437663961366661623835383035663966346630666232343230223b733a33323a223264616162333538656133353035333332323363313034663538343535326663223b733a33323a223832623665303538303263383464313130323734323064663261623939386332223b733a33323a223930626135316234386334633138633134303265343033353765653966613234223b733a33323a223331633533396537316262366262333062336239393861313363623965643366223b733a33323a223863313863336636323131636130393236656336386663383036633536343635223b733a33323a223963313764393663393735653632323264343539333163623364626130396432223b733a33323a226261306262646161313339336565316432366339343831356165396130646662223b733a33323a226532383662306264386665383335343062373237653864633836623836343663223b733a33323a223036346535323363303664353366306232326531303432626339393662633962223b733a33323a223036376266363031393536353038636261666362313030363735313736386638223b733a33323a226266636366303038373538653363393030336333396236353437343236633964223b733a33323a223734616236303935303232643037653630373839613763663065633761616538223b733a33323a226431306335343065646431623939306436313435366162656333373536663936223b733a33323a226663636563363663323535633034333230623431353430626663343234653138223b733a33323a223534313637653730613665633161316236326563383539393331373633626264223b733a33323a226366653039326665613232366636373138393162613264656638623765626339223b733a33323a223437376132663766313661393761323930636465393730613939323666666264223b733a33323a223238396664616235393462626235343064393139343963333031343634663034223b733a33323a223935313639346333653763633063323863323138623433373432613838316432223b733a33323a226138323465363662346135363139643636356263623163366239353632663237223b733a33323a223931623062303466353362303538663065633838333965383135666232303365223b733a33323a226566636230663530306631653934393634343665346236333632613635666338223b733a33323a226134353336333831396238653536666438636132373164343463396561663237223b733a33323a226136396164616333633165643361633863653163326366636166373533366164223b733a33323a223566303033656139306232353930323230326434373165613439633239376334223b733a33323a223533613238336439326230663933393763303636326561633461383963373763223b733a33323a223332323036336566346332303536393939643539363230333465343035386433223b733a33323a226365316562386364356666666265623165613135636132336630623663326435223b733a33323a226662626438643439663639646232366462626532366466323834323537383833223b733a33323a223638643632306533373731653938613333633130623263346430373164643363223b733a33323a223538623236623639396139386239363333343365306264383537656232663261223b733a33323a223339333030303335313430336561313837373430623066363339383735396564223b733a33323a223939326431366163663961613766336631343034326638613530323462363061223b733a33323a223931383561336639326137666532396663666435643862313935333336633137223b733a33323a223064643461663861313836363135343061316538636465623862383866323532223b733a33323a223532623063626132343562663133343966323632303834323537346237643934223b733a33323a226363366435303133646331663466633830613963343037353438663662363238223b733a33323a226235393461646230393862313630663239643461616639643834393466336332223b733a33323a223136393362373838333835316264353238306230333134383438623866333230223b733a33323a226462653834383939326630663633623033353865386366343166383032366336223b733a33323a223839653138386366656436666337663864383638336434343831343030356334223b733a33323a223239366164336464363938336237323537323938333032333861326666326564223b733a33323a226265373131393431653134616335303431633539633262313036376433356339223b733a33323a223966363663653935613165326433393833393062363335616531323238306566223b733a33323a223435353230363462626564613736663835346165336635393032306465316664223b733a33323a223238353865306539363561343165303833646331616230326537383834613861223b733a33323a226261353538346666646433666263303065666638623461313634393264653134223b733a33323a223338393135616639366462383864363266303639656231643063316466616438223b733a33323a226633656439393463653831393830343165663532656337363664616461663237223b733a33323a223862363739303165356666656533323934366565623430386136363032626264223b733a33323a226561313837613936356630393339343362323366353063393739636237653738223b733a33323a226461653136666333626632363065626164303964373435613636656636343362223b733a33323a226130376438613562343063663438356539626330623635656130646331326361223b733a33323a223466363531626332623661656135653966613264353363386365346538333136223b733a33323a223136383038623837363566373338383130646362633733363432663938623062223b733a33323a223366373635363563313363613862353936346663626636353565326438633338223b733a33323a223333303862636264653338346432653366633638313665616234316136646435223b733a33323a223133366633363833313263663639353734316631663433373162646663326635223b733a33323a223436363237656635613266323934363336633263636638356231303134333738223b733a33323a223066646333663433333363306662343365623138666430303964393065316534223b733a33323a223464393131313564656166306636363236323464396430363431643839303738223b733a33323a223439333464663437356465643339613431326638356332303163613839656365223b733a33323a226331316265356330643739306164623638393830663930623761643331396364223b733a33323a223334663937666331653930313435343966386365313531656636366239303333223b733a33323a223964623934623831666631323665376263333164616664373364383634616636223b733a33323a223339613665356539393837306238613637333765623937623737633339373830223b733a33323a223462653935633238353135383732313636303761303733633062353436363366223b733a33323a226436376138343333626533333266363539356161616435346561323031383731223b733a33323a223266376236653066333536333362633338326636643537383931643264313932223b733a33323a226466613862326534336134626663393263396636656337613534383530636233223b733a33323a223163643737646563373637386564646261663539663963396436376632313732223b733a33323a223837386263323637623636643939616633613536336438386337356537383937223b733a33323a223130633233616438663961363932666339366636366333636463626139376561223b733a33323a223539383761653065336439666263363839633536383161383965663864333738223b733a33323a226663623831363033633863363731313063323533366631356439613435366466223b733a33323a226230393865313733396538356366303934353132623336356131333730346665223b733a33323a226465393931613164313861386639346532373633356632386234653834303966223b733a33323a226139316635326138656132333934663263613161396436623332646465623335223b733a33323a223639616664343338616335633461363837333434666561393438633735366133223b733a33323a226463313135303963366339616433333737636661633338643062656439363332223b733a33323a226334366133353430613537393036613766313237303961626332326437353139223b733a33323a223962613237636266663336366238366236663834656562303731653762336562223b733a33323a226539373130646162663633306535623338333230363834646661303134653639223b733a33323a223031396333336534306333616461613361346532306331333232643462316265223b733a33323a223164336234633535663664633934653266646533333533316231353832313034223b733a33323a223863396364323837303165363464326436313432383262666633373035613031223b733a33323a223332623065376233313133623034343638616333376433626565333538366238223b733a33323a223464366530363533323530326162633337613939363231613336326131373434223b733a33323a223838646135366230633232616335633738386435643339323535333034633266223b733a33323a226261326437323966366238393666363462343031613230303064643361383566223b733a33323a226331333932633434356130326239303663633966383436333564646664636138223b733a33323a223930303731623363396430336630663261363937336561386430386334336139223b733a33323a226432393135393364316266383563323137306265306662643139356436326333223b733a33323a223339663366326561633561633530646236393266646464386331303233373030223b733a33323a226136313830643030633561306339306464616461373461613362623864666534223b733a33323a223339316435393661623238303032353131656666376364393630613666353461223b733a33323a223262376135313365373836613934636333646561636235316232643365623234223b733a33323a223634333165386338663962316530663231373534633138373662316239316639223b733a33323a223436643765666230623832343034623933393434633335616466306632373464223b733a33323a223963356638616135303366373636316635363434363631313862333436313936223b733a33323a223831343264353763366533313937373136376531646536636235366266636535223b733a33323a223563386266616364373737313466353934656636303764626464623232393632223b733a33323a223933393166663934373161363764373164313566333764373765303735666135223b733a33323a223439646432623837383039303935633833306163343234303630333932613737223b733a33323a226430326535663362393135646462646633623264633135626133343838653833223b733a33323a223932646439346232363436633637316166373237373037613934346230396235223b733a33323a223164323763616338666337316632336535663231356636393339666139633239223b733a33323a226237343632613464316131386535336163343166343230356165616564643361223b733a33323a223131626336333863306366333630323364636631383663356665316461633666223b733a33323a226239663732363364616464323636663930383462613838376263333563363233223b733a33323a226561306465346536393062373132643462313361323166643639363862666437223b733a33323a223539396531343136303466316232366338646665323738306131323965306437223b733a33323a226637376239323663626338633734653063323135336265336435396231323739223b733a33323a226231653238623562313235626530323233613939313366313437346663663132223b733a33323a223265656262373962306363353738353061646363346265653037646139303864223b733a33323a223463306437633630396336306130383034346362626664323134393130376137223b733a33323a223935326530656562353736636338633736346262623632666135396264356263223b733a33323a226265313835323866643265346264656662623765326439336639616133323765223b733a33323a226431363138656263643435646163663963313463306531376238303464613663223b733a33323a223131333138386134353133323966343739346633613764323237356433613864223b733a33323a223437643533356165323936613534666333346265383931336130353362633330223b733a33323a226533343432616236366263316561366631666365613566323030663466636566223b733a33323a223130323437393331623066303561326261636634643435623630373935306365223b733a33323a226532626266373763393365323765386339633836646661376465643037616333223b733a33323a223035396564663338383336653131373566626265326632653633623362613334223b733a33323a226136366464623435316539326132346435653531623837353532393462623335223b733a33323a223062373833616136303663646330353937613530306665306461626132633661223b733a33323a223932383561353439613731336632613136663836306535373335346231376464223b733a33323a223561643834323035663738613332343663373939353236633366356231613862223b733a33323a223661636563626363373036653461383332363332393731663137666266396433223b733a33323a226634306266656233303532326639393237353464333439353963306133653839223b733a33323a226461633938353232633237663031656530636435363930373235656661336263223b733a33323a223461383630643939383634383938343833363261366661396331383131383239223b733a33323a226430316439626133333733333963363539623265653363663062646134393963223b733a33323a223137663066303134643432656235323432366135623239353664623263623637223b733a33323a223661353765393865333939383133643038396631303136373863306135336463223b733a33323a223830666434626463323734386532386134323636306264663234323164623038223b733a33323a226137376261666563663036613064633832313436316330633632346232366462223b733a33323a223139643161316437353562336537323435353535623339633338353834653838223b733a33323a226562646161386530343763323730353761386537333466323038303831376333223b733a33323a226534333432343861323530366232646566313235376632643133343534666234223b733a33323a223462386639363231313636393261356462663431336433643936333231383934223b733a33323a223133333166656133346664353163633230303232356232333736396339613162223b733a33323a223764653131663131626530303931316335393836363939353733333563373730223b733a33323a223233616231343865336562663131346532636662623461643139643762626136223b733a33323a223234306232643837616232386635316434353633303263663562633161303764223b733a33323a226132326434373735386664616536373263346231346338636332386663663334223b733a33323a226262366539323766316632623263326131343837633161383265303330616233223b733a33323a223030613636343632303936643666326163393136643561613030346533346439223b733a33323a226637373138616161393062616662373538633164373866343334333336393462223b733a33323a226265393134613664333664306666343865613662633465363065343161393730223b733a33323a226335623837643430623362633061623438326430393535663031393663353761223b733a33323a223531306162343835343330323632666565633531613539613861303466393235223b733a33323a226566663734643332356334643031333633366334303537643735346631323063223b733a33323a223366306238333961383836636339646264363932623038353236373861376533223b733a33323a223937313635383264666133306462636234313166643532326538386236666537223b733a33323a226661343133333839623961626431353536363838333636326236643930636136223b733a33323a223634356131613434373539393536623838633166396463653034633263633130223b733a33323a223339646563613437663232623933303034386635326238313038353332663166223b733a33323a223962373531346432663762396335303132353363343662616537646539336565223b733a33323a223332383732353761326462646261336437396362613661626536353736313265223b733a33323a223865323763356136386566663737656430313565376338353561386661363339223b733a33323a223834363534346631323761636331373034643036636433623566623436623031223b733a33323a223232313032313030646134633364653439613363356333373436396363366666223b733a33323a223039656466663264353262353764356539316661353637623166353732313434223b733a33323a223833336630376634623766646637303330373862343462646638633334303130223b733a33323a226364626538633361363665363837616164336164396133393830303539373565223b733a33323a223737386562626539633537643861323839386232643837656438353437643333223b733a33323a223430316561643164613134393434633830313666386131663139393636316233223b733a33323a223334653966656362656334306435633664383039646130383838656332633134223b733a33323a226637643434353464353331663830393135653566613333356238633233306266223b733a33323a226532356132343161306337353837353665386438356235303131623239303231223b733a33323a226437636534303831346362613936616434353239336137363137613732653637223b733a33323a226166656166623533306336303339343064623833383862653833323033396439223b733a33323a223333383738386438323062393833656566356462366139666230326431336464223b733a33323a223462303562383963613335323432626663636632656261353737656234653034223b733a33323a226637383432333665376331366432386665616666343766303638336266383437223b733a33323a223433646565646462353364356639643134326165363761343539646534663632223b733a33323a223732306133616236653465306435313866363161313866393061613932633932223b733a33323a223533313038376462623263343131613838333662393731303732383962343964223b733a33323a226535306463306130353034363461323633363466323466333163643035333966223b733a33323a223230393666626136363236353633396537353330316235343830663363336238223b733a33323a226330616431643865303663323266393539326630383032633335356334383139223b733a33323a226666396633363634623536616335666665363032656637393061616461333763223b733a33323a223535633033646363663538663362656363323334306263626366356638376661223b733a33323a226266373132376339643335666562323730616562326135303538313839323863223b733a33323a223737653765616161393836643061326132376566656433383662363064656436223b733a33323a223833646135313333646363333862353232313536373730316466386437323035223b733a33323a226630616332333737363334343166336437646438363932363539383533383935223b733a33323a226462613336666439333137396238663465643332636539643765633664616538223b733a33323a226538626330393363333465363239316131613364386562393336373464666563223b733a33323a223962323333613262343265303937656331366664303236323161343733313437223b733a33323a223832323065313539363964613838346665373963646539356339346134613066223b733a33323a226339613736663361343736313138363866633362393937613434633533323236223b733a33323a223334336431356231656637366334356366366530653637333231386433353263223b733a33323a223364373564353435313838663262313735306536316639343163393963353837223b733a33323a226339663139363135653637373063613931373662313965353132306363663664223b733a33323a226234666331646263663464343333366136346631323261313135323865613765223b733a33323a223038626566326162636662343434306161346265616163336238343731323561223b733a33323a223831633463616162336332653261366135383663373837303939626237356237223b733a33323a226434386461363866323463623037353931336564346136376563613230396633223b733a33323a223935326330313934363433626163373263306134376432323237613966646534223b733a33323a223533356361363031616337633337613934306239613561623166393763353735223b733a33323a223361663766346636393431393038646531306465383166386331333730656566223b733a33323a223631323662646534343434646166326338386537316638316532333161663862223b733a33323a223731373839386663653266663062653166383537343166363639636561383935223b733a33323a226434313566626130383334303233656138373535363935336631326362303738223b733a33323a226137386337663666653032633730663336663061343435656532313535383734223b733a33323a226463383434613139376630663065653561656330646239636537373662393130223b733a33323a223434353133643333376235643033306332363761626636396630343261323166223b733a33323a226131616439383831353736333866366263396531663537333734363539646233223b733a33323a223035616339386236356133383662336664343038366130376437363939333937223b733a33323a223737343634626433386235386664346264616562623337633839633361373136223b733a33323a226161616237383731383931643938343036353133653435326164313965613162223b733a33323a226236333532393036633736323638636534363537646265343961376361613037223b733a33323a226531363561643532396561613931313132323064623161623661396234633731223b733a33323a226435323033353338386535396133626364653837366535656132393233303466223b733a33323a223065356339643934636663363935396464616633353437643530633130313466223b733a33323a223934343166666233356262636538383563313863633336303863653130613839223b733a33323a223964393966383465373038303064666539333436393638353030396261343064223b733a33323a223862343564383038343666353962326433366466316362323234386534353235223b733a33323a223835313930343763323630663035656439613262363365636235646665663461223b733a33323a226466353965653162336332613939376333663862303661306336343663616432223b733a33323a226331383830336365353136313435366339356433643330613630356433633035223b733a33323a223861323338383363396339303830663337396664376636613633323931643135223b733a33323a223536616165366336363030303130383731323336366165643966613835643863223b733a33323a226261623763623264343539366637353935366635656361653762373361383831223b733a33323a223865626564336332616563323363666338366138663265633435316362356535223b733a33323a226631366635643463656133313365353938393661386432316464353365616139223b733a33323a223966303862306235656163656536313961623332313963396532346536626539223b733a33323a223138663039663534326338353130636662383439343236366262323565363461223b733a33323a223162666133383363343430633832643363363331373235643161333562643038223b733a33323a226431383736613266626638313730343962633965656364386330323839316131223b733a33323a223134626434306634653338366539376165613263323339366461303761393165223b733a33323a223163333561663938623635383334653063336336396162323735643939303137223b733a33323a223264623061323838316632353731356363613130326438326366333835386134223b733a33323a223735323662393865323263653333653862393562613230633336333936333466223b733a33323a223036623938633133386465363934313366393536396639646232393666313436223b733a33323a223862613336303137323939653231363561366534376138326162313435656162223b733a33323a223338396164653938333764663466316236353936386433343038643232373235223b733a33323a226336626439376335373366626166333763343639346362356466656331363861223b733a33323a223036376639343666663034346365303033343234613238353362336461653536223b733a33323a226436636262643334613331303063333038356238333634386132313134326633223b733a33323a226561376131306238313534363233353631323934626434663530636163623865223b733a33323a223032353539326362633363333434663239363430343963336565636439376432223b733a33323a226432303766636130306632363239633332353332363032623536313630383734223b733a33323a226464333439613231313666623561616562336532656466363737323030303230223b733a33323a223534633565313464626333366138333764633862626635643436336237383139223b733a33323a223964353037666633363539616234353739636461343564646466306535383636223b733a33323a223265666630636530383262353431373532653965333836666534323763393765223b733a33323a223764363734643333313062333635626166376430326432613035316366633763223b733a33323a223133393536393031383961623034376531363564393630613265326538663538223b733a33323a223465316461623337623964613663316631333237346633666461333230366361223b733a33323a223237333138616537343765663936353236373138343537653133653066353634223b733a33323a226361336532636164353135336365616131616332646464323830636230613238223b733a33323a223539333566663030636634333130616131316130666133616230356465623265223b733a33323a226333386437623964366465653061616134353631306236303930613665616561223b733a33323a226262623663656461366136613465613263666133336231373635333530376435223b733a33323a223861373539383064333433666166633138343165633863316135363362333533223b733a33323a223934643661623530383864613965613032616532633331653833633463303738223b733a33323a223265353537373034346366383962343337656531303262636533646134386336223b733a33323a223263363534663535346163653164303865363234333765623037353639386437223b733a33323a223461373632663937663063326538303565613033366430653330656363623433223b733a33323a223335333666626235386361373634663732376138353138626561313636386530223b733a33323a223862626433306333333632353266353462306231623239313932313762653066223b733a33323a226164333434316663363432383139386535363230386565323962346464333933223b733a33323a223562643538333631363338323964376238613561643436383434346633346433223b733a33323a226662616133653962356162356464393165626538323137313033363165623961223b733a33323a223032666565363363636639356232303039643832383739613262373431336336223b733a33323a223830343161353934356261316137663136663761333765313961396638663530223b733a33323a226434663037346166303138666239346132336265336239623534366564613133223b733a33323a223161336234633331376130306639643831616535663834383438373763383766223b733a33323a226134396437643566393637346633333539303264643537343763656131616436223b733a33323a223232356365616339313763656333313261643931363930633930343061613434223b733a33323a223332663266373665356564393236656637646337633961613235343462306531223b733a33323a226633666637326137646366356539396636613961643564393132316266373439223b733a33323a226234303531636331363733626361666136653461353133633936626233306430223b733a33323a223839396234653231386438643163353930376430656239363561623637613461223b733a33323a223133366431656261316237313534373137613635623134383539373136653633223b733a33323a223038616464613661633331663261613765353264346164393864363361353037223b733a33323a223863666664386561376263313237346333333563316633373030353862383839223b733a33323a226533653235373665323165363264386665313739366437633364333764343363223b733a33323a223866323135363561326237646232643766636162343232363730393166653132223b733a33323a223738393761653539366131646632333636663265333330646139306664626630223b733a33323a226235356538316662393264316339306333646265306437616538333238663262223b733a33323a226534643665313933313066633036363737343736366633396432636639653363223b733a33323a223834643165333265366133653033343732346462346235636538343462636131223b733a33323a226431386162333936346132323165386335373262636565653066383430376163223b733a33323a226162366434376339383439356238386135323366396562636639666136666535223b733a33323a223362626263653839616562353565346534613535353638626631346530343266223b733a33323a223034373039336633376231356339346637643636366663316161396635316433223b733a33323a223064633062386635633766306433616433313031303230373362326336643433223b733a33323a223832356466366361343265316530663038373038376234343365393739343439223b733a33323a223932643939393065363862336530353736303839636330306430343831326462223b733a33323a226233396138633833626235356337633261663032613833626531396633663735223b733a33323a223265656261383963336533363566666533323030383262626339346132323263223b733a33323a223030326536383964306633656336663138643265333032313164666634393931223b733a33323a226264336434383765633664343163356432626636623533616462393137623065223b733a33323a223335343635623834623266613666363036623539393066383563643566333239223b733a33323a223032656438383335313065313734656534636637336437316532373035653738223b733a33323a223035386330366430313162616531343737353933656162343866653866333439223b733a33323a223862373461343030333438633331393934366538383936323262613730393931223b733a33323a223164316262663834633238303631663863356166633630343531363238653162223b733a33323a223735643662396261313564626465663762306663343763393362646230386663223b733a33323a223962663132626439363534643130633632353639323535333138373532646334223b733a33323a223436326364333136373031336436336563643238323165326332306637633335223b733a33323a226234626536373264616635363765623363356466626461613436666339383662223b733a33323a226263626264333265363434383265346162623334353162343235393533363462223b733a33323a223937646332636430326336386366653465643030316437373233643332393130223b733a33323a226332346365616364366664326564616434313662393638633264326231396535223b733a33323a223566366165653566346162613038326539663536663437383965666437633062223b733a33323a226133316530376538313332306562623861616433633836383832633261343239223b733a33323a226130656430363033313339306664323462656364313337353662623939666137223b733a33323a223062376162623232333466363063346137356565393066653234353662306664223b733a33323a226630616639356338613338393732656239333231376264623463353665333137223b733a33323a223262316235343939356433303338343938393135353033366364303033303462223b733a33323a223463333161396434373334346563653335323033333338623866616335323237223b733a33323a226462653839366234663139613066653735323061633261636539313262616264223b733a33323a226361353064633735383737313638633730363163313638366265326365663766223b733a33323a223138343965663662363538353235663464326565613266383334373835316666223b733a33323a223137623061646439363135613230306531373236316530623031393534376438223b733a33323a223238363935313035643933626334373639366266623539366539353166376261223b733a33323a223936616637313439633635383966366262636637363962653236373563316563223b733a33323a226532633664323865663863333830623936323465623434633136656265306433223b733a33323a226633636230326337306365393864326434326636636465623537343233373639223b733a33323a226264363166633164323161616235646666623233393164323831393364353861223b733a33323a226339333635656130303535613931303034303265316435316335303235353539223b733a33323a226462383866323636633930383733306136376165313463613931373736383839223b733a33323a226339346262653632313563353937633936356338343033623364633637336330223b733a33323a226431333234613833316665646439326463613232666164646339663439353662223b733a33323a223332633462393133343862383036383964303330323735643564333237366232223b733a33323a226230666638393531316265363630616564326562663438346233383238636563223b733a33323a223937363065353039326361613832313331666239346535303064663732333833223b733a33323a223665666464386564626139343366623362393666393139363430393936633263223b733a33323a223032383366346236646161366533653663396136333835383565393064623765223b733a33323a223636336638313836393438363762623862623463343634613066383834333864223b733a33323a226163373531653838666631623836613364346236316335376366333662353063223b733a33323a223539656466653639336238663364633836646138333462653066613839323730223b733a33323a223666363834373166343535626665653563333530656566336330376631646565223b733a33323a223361353963623331373566363936336436393833396532643737323961353539223b733a33323a226535663166333536633531303964663464376435626462613362313764666335223b733a33323a223661663535306165376662336262356339313831356466373161393935323936223b733a33323a226162616562623430616232653661613032326363323734363363623639393534223b733a33323a223038663664303936623835656338396362666436633632326530303731626663223b733a33323a226631333163646363623163333164323361376233666539333361336634613066223b733a33323a226363333334366639613735373163643638663038643133376461336461356261223b733a33323a223966613630633066346664333534356137663930366437306131656636626336223b733a33323a226639663066356630396665633135356333306332643966386533386164356165223b733a33323a223331633738376434383736376435646435633137363438633036323730363564223b733a33323a223333316230336465386665646339393462666435666639346465613732653662223b733a33323a226561366161646338316632383961303663363264666261306131636164333632223b733a33323a223738316335323665666634623266643266666431306461343535383337633861223b733a33323a223933316533313939373264663032663334396335363933396561643530346566223b733a33323a226334613539633233643934383431393762303533393835616332313137626361223b733a33323a223831656462666636333731333332353632383964633863313339333764623936223b733a33323a223835333236346139373131333665333137623637333131636662383132663331223b733a33323a223932373066663837633730333164333030333030316565303563633132313337223b733a33323a223165303932316134333132396130356261393232336361393630366637333262223b733a33323a226536303762396336343462623066636336393561633866616564373733383638223b733a33323a223163643662393035303536366331343262306236346536366463613731666164223b733a33323a226235343439353538643661336538393133623630626663323831376131646634223b733a33323a223562373161313564346338373063656535336436373030656431663036636531223b733a33323a223637623665653433663565376432323836633339623636353339393836313966223b733a33323a226562653364373534663833306239613135613134393862323733373837653834223b733a33323a223664336337663165323665643030633732656339343839313738356165656662223b733a33323a223262626635303438353932393335383661626338333236383636323832643637223b733a33323a223238653664646434373165663433656562636465323738636332353530316362223b733a33323a226639303832396135643965316238616564346565343435343336323237306132223b733a33323a226162653235663337653065333866386130613764356339306330303438663539223b733a33323a226233393034613134646434653732633730663130393734653739373335616637223b733a33323a226239343633313866666164313666636235356534346366323361656463306138223b733a33323a226466383961363638346163323937306636333838653935313038636265613337223b733a33323a226632333236363930356539666131646361623632313036653564313134333230223b733a33323a226261326664656466633232373639663564383138643761313563366364346535223b733a33323a223630616365383338316361306233306538393766356664633035376531383732223b733a33323a223137386634663937303464666366393839303165373764646262663030313135223b733a33323a226635653531343063343566396133613461653439316236613135393637373132223b733a33323a223936613331623431656436323161356565353237616633643737393236613863223b733a33323a223264663830623730643939663761353530636363383532623435393764356136223b733a33323a223231633533643733363234313961306465306261343936313864343163386261223b733a33323a223537346635613439333733333665366262323335636537633137393961366330223b733a33323a226561323736656461396236303061396639343764313435656331373538303361223b733a33323a223166383930363031373539623931363962613862316166663961386462353666223b733a33323a226537643161623662326336303162373231383765343431623064663639626138223b733a33323a226530366138623336353934316137333935386332633933643063393432346132223b733a33323a226532326636653535383433643937663134666136346163353830326264363837223b733a33323a223633303838333736313030393164613135376237646638326132303935306433223b733a33323a226639663166393334366364643361343139363664373732333165363336653563223b733a33323a223934306462303664343434333031623538383232346131646165313839393737223b733a33323a223365323362313037313039336462323938326138353862653330613630626339223b733a33323a223733363035393236626639333439396538326261393034656237363165663233223b733a33323a223438313464313935396336323731336133616363383066336439343737636139223b733a33323a226633623266623134376365623735313037623463363765326564663565393563223b733a33323a223636336235303366306433653261623362343164653963356534396433323439223b733a33323a223534383533646166333836393532653265663832383732363135366266393933223b733a33323a223636376337633761346632633933323738396139373461633765373165653761223b733a33323a223330323064386137393835363761353338353730383763366566316234646234223b733a33323a223462643737306635393763623834623266313231623037316563313062383430223b733a33323a223536366438316536643562303666326330353331326663366431626231306234223b733a33323a226331323631623635376464356365323834383061663637323365623731396230223b733a33323a223439396138343862316639316631356530373034323065326636613061336562223b733a33323a226630366335323630343535646433386161623632363235373632643564333139223b733a33323a223434393065336165616432386465336234666462326366313631383566323763223b733a33323a223437353336663066383535316461366566346266373930333935656134306330223b733a33323a226333623566306636336131386564373130376531643231383335336633373532223b733a33323a226565353038663464643832313766383931663033343337376338373465626362223b733a33323a226139663866373735656438613831643931653662353164333839313632633230223b733a33323a223161613566306133643336333933383434613433386663653931326635313862223b733a33323a223732363135363436326336346334663137353964623966643330373165666166223b733a33323a223665643563383638336232613264313663353066633264383135306438633466223b733a33323a223232336336653666363938623337323262343936363935653731623139343239223b733a33323a226264656262316531333930343963633066326430346161663239663539646339223b733a33323a226639653738343065383332356264383063393366653536306233303430656262223b733a33323a226461636364353261396630373234363934383061353761323930623835313666223b733a33323a226530383366383466353130666637323465383061626138373462393937613336223b733a33323a223262343036383763643338373930303430656131313531646530666434626337223b733a33323a226635623166323835623631663434393966343063313139313237303464656434223b733a33323a223366636330303838336635626135363138313237386334376661396433383863223b733a33323a223131646335346434616438316363636165326134636339656236666337366639223b733a33323a226563663361656335633631393562623030363234373231376263356635316463223b733a33323a226364646132376437336630336362353465343063303933306636306438363436223b733a33323a223232396531616162353032353364323632366461633932613230333339336630223b733a33323a226137343435313634653432623965643836343936366334353738363831356266223b733a33323a226238663562323030616438363862323062353937623365383234616663316434223b733a33323a223938623434623131353864643838323765666665383065303634653864343031223b733a33323a223436306636366433633538653633303565343239306631356132376235346265223b733a33323a223338666665613632393765313561663834626134653539333130656563656231223b733a33323a223164316563353361366237313132373931313730326336333339623334653065223b733a33323a223938373033373531393832383164346262356134346238303832323936353766223b733a33323a226636313531373435653239623362376164346335343862316165333638666338223b733a33323a226565653864373032353639656437376430316133343935633437643065323964223b733a33323a223665626130326437373930353462623537323736313133663964643935623238223b733a33323a226536616633396464386661363666303738303732336634623665396566336134223b733a33323a223235346432363634373132353537663864643332333030333566626339343230223b733a33323a223461376237623666346264303363656335646532393536623932633661636139223b733a33323a226132353833653261366335383635333335336130383830353264663335313037223b733a33323a226438363063616634633664633938363132396232323438373336626665663763223b733a33323a223139656562623039626665306536306536643535393764613464326466386438223b733a33323a223564366664633131343761626161616631613334616334376338373262353934223b733a33323a223638363566376139373438316638373061643837396437656632353239653861223b733a33323a223630313963633230396535633736633663393663396435646132653964383765223b733a33323a226237326236663237663039613439356130353630343964313761386465323663223b733a33323a223132316430643261313663323236356533636362303235396362303530363964223b733a33323a223331373834373365643934656363336630316462343537633463346639633066223b733a33323a223361316237366134313335383863356664633136633730303932316361646432223b733a33323a223432633332656535313564363739336664616434613438306462363631393264223b733a33323a226238396432616132396136343464626438303966386533323564313336643966223b733a33323a226435393830663936326262366361646264363238613832623266366339663136223b733a33323a223761643035366162636536333262653437343164623436336639333536356432223b733a33323a223332666237346436333731613438636661363634623836633337383732633830223b733a33323a223338346432323563616633363765373163313163333634626162323962636230223b733a33323a226539393065346661313636323965383035313861366637353836633438643462223b733a33323a223165393436353263383337613433333064653464343964623762353237393136223b733a33323a223563333135323562363839646432323464393661313366393263363337623538223b733a33323a223037633732386532393533666164643138353437336262623131616235613161223b733a33323a223230393464353364393632383831326335636635656431613835383562643565223b733a33323a223861373532646132663263653239313531383636333437343634333334363630223b733a33323a223231643266633637663436353566636239653434356337653730336530376235223b733a33323a223834643462343466363964396430616366393330313931616138323163386435223b733a33323a223762663564616633656236316263333233663566613231633064373433643764223b733a33323a223039666338383565323538303035336335643464346535616661636336656364223b733a33323a226438653961353734396632666465356665666539366461396162633537366533223b733a33323a226338346231356264303336616439656634316633336135323665353033333466223b733a33323a223134636638646233663632363238663162343564356638636661356665633238223b733a33323a226135613862663966643838313733353436353263636631646534643334326161223b733a33323a226637383935326565653733636539643561646432626265393464383833363132223b733a33323a226536633732303365336339343534663233613766366337326562616633633965223b733a33323a226537633132393930653733383435663835303031343835333566376563613065223b733a33323a223337316263343234383639636235653261393739396437346339313461643630223b733a33323a223535653135336338373563653836363034343535643830666666633138626462223b733a33323a223539333836663066633766333163663238323033643261663761356166383837223b733a33323a226566666231373937623961626430313531383566666430313930613431626337223b733a33323a223961653163643165346362643032396165336564323966393530633536336361223b733a33323a223163386137356632303931303630656361653837366134383335646333656164223b733a33323a226132386237373734326432346635646630626136326639306431613637346261223b733a33323a223866393461343935663964623236366137356364336533313539306131343162223b733a33323a223736633430376337656532323131313733353438393231313662383830373831223b733a33323a223637656266653164333336383134363037306163623731353737636234393063223b733a33323a223063623533383066316234373664333437613930373862303232646532343132223b733a33323a223837313661613839323931323938363966353038376564626230343362616261223b733a33323a223736633661383163643262393061373839376134663136396335616234363531223b733a33323a223937343138623333393061333162336239303565346565636138656136633930223b733a33323a223738383961636133333033636535323638366138333937646465653034636666223b733a33323a223962626536353336323838326664623734613834383530336464343765633966223b733a33323a223630333736393033653065376533323462653532333730356338353132363135223b733a33323a223535336531386664326163613733316339636364636165303439313363373830223b733a33323a223963643334373734326265396536313032633362396231306362393034666232223b733a33323a223335363139623537356134626133393664643133316262386233663237353531223b733a33323a226366333364333638333864323531376635333364396135376138313832376262223b733a33323a223231333332306666356464396363326161653437613936336262653463323433223b733a33323a223939613364613364303561623332346435353966623538356337393463643533223b733a33323a223866316362616163643462646330366664363138396535333465326166626561223b733a33323a226532376633636538356238393732303236373030623162356133373232376337223b733a33323a226433316366633730336131623430346138663165383232343133653730653631223b733a33323a223635316635333831396561643238663338303731363030313231393334333739223b733a33323a223735656336396665373163323333636561346363346630333234646536303830223b733a33323a226462313464303339333236383234613239396335656139313434613834643364223b733a33323a223033663463393536633366613730623664356332653762383662653631303536223b733a33323a226634656232656233316439646339666131333032393932623837383536323563223b733a33323a226430616335666632346539653438656433376138366536336639336361396364223b733a33323a223336373965626535613935633365396362653964353534656234336537333135223b733a33323a223132636236356535663230346535346231323066633762386430613561343533223b733a33323a223263396464366462656461306236313438373331626537363864306530333937223b733a33323a223766396337376432316230396363666662663962316230383364393434316139223b733a33323a223330633630643162323435303138336331383138613335346338653865643364223b733a33323a223031306563346638383436616661316632336432386662356234313066633637223b733a33323a223137653436393036663863333662643230313037623866323534386636306365223b733a33323a223530383163353239333761623437306631646132356534623762353035353963223b733a33323a223466366630323138356330373561323938663766323465336439393334663664223b733a33323a226134333734653766323837323739383831636130663462646563633439613066223b733a33323a223631656463323765613364393231393830323262353066343361316162663765223b733a33323a223461636433326562633636333164356639373765663933613665656235663964223b733a33323a226262326565663964346339363263653338333136666364386135633035333562223b733a33323a223764346635333561613137633962346530363966656533643336656365303566223b733a33323a223863393732326433333861313132363761343832663763333339663166636436223b733a33323a223931333530633638326335393261336465323662626262643038396133646631223b733a33323a223233613739316230313337306235636562633732333137393664646531613565223b733a33323a226633396530343539626366346236643930396236666133306233306336626134223b733a33323a223264643233623332363761663863393338663038656135386438336333663764223b733a33323a223961626365396330633664363266643630326633323832613033323835303434223b733a33323a223834376366363739343961353732323037303463303930343533313232626333223b733a33323a226639633761343161633136666530643437353961353733373136303337323633223b733a33323a223231633664623631383233343266613333383738393732643365373562366633223b733a33323a223133343162613233336265343337653930366632373338383136656561336532223b733a33323a226166363533343363393630353139316165353837646261666634336664636166223b733a33323a223430383361646432313330313038653430623236376538636531616438313433223b733a33323a223333646334396535353036373237633437623133616364336538643636346162223b733a33323a223632366262396532646361326638303738356330656537626662653936363334223b733a33323a223563393465326366653863316664663437653165303531613733643664383164223b733a33323a223731653965313861363331646566336163323434383936623665323365323635223b733a33323a223532326639383235386266383336653165353837323235333130663663343065223b733a33323a223035616230383733643961323230643838366335353066646139376531623632223b733a33323a223337386437646433663433343032376430313332353766613563356137633138223b733a33323a226532626432366265373639386464343331623461373734313832326433333933223b733a33323a226164363231663137343438653937313632613539333330326363346131303133223b733a33323a223066623264656232326336623865623335653564376535323164306638623362223b733a33323a223132616430393365346166353734636464393637656138323562383730306165223b733a33323a223231663664653635616162663030626537613035376166653166626537326463223b733a33323a223030323762396665636235633433626432313734613137623363323466336663223b733a33323a226264666335303437303939623239393861386139383465323432653863353733223b733a33323a223637623038613332343635646436656665646530306137323036333535663133223b733a33323a223961396131643530633763363936363763636663393634316632623732633539223b733a33323a223936616331623039353361376666383864303338626632303536663566326230223b733a33323a226639373037636265306561623765636133626463316332333736396139626462223b733a33323a223963336564663637396532336137643035643137636363333536333730303733223b733a33323a223531626161616535653733373565393830333561343331656433383238396462223b733a33323a223637613533366634666564613235653532303532653637383636393436326539223b733a33323a226431383930636462353665373235663433396236303761303030373039333131223b733a33323a226231323530343762313234323365333135316365653962373430316539633162223b733a33323a226238386663623863653765613433376339613433613535316261396537643238223b733a33323a223663316463353764363835363830623136653965313836646161643463346236223b733a33323a223835313836333230663833336666343634306636373039383561643265616166223b733a33323a223734633761386539396338623536373932663236393339666261613364393264223b733a33323a223565333235316237303438653565376337323639316338643132643761663732223b733a33323a223866396530363662613935363662646534363532653937643936633537393865223b733a33323a223664623361386433396662623034626230356536323365353264326234373234223b733a33323a226632333332333361316563373638323362323037336631623434373534633065223b733a33323a226634343432396537613236616261636430373437333562616334363266366166223b733a33323a223966616435393231663236346264386566626634376430373166366137636664223b733a33323a226164366638376261336339666131653935356431303235396233326232353039223b733a33323a223666613661613338363232646338373139653539626134646138363632663733223b733a33323a223835326230653433633263316339613338363931373333366164366366336634223b733a33323a226663313936356666666138303730343363653738666661333663306365366365223b733a33323a223061326463653637396639323564383838323064303966663266306134316532223b733a33323a223737616637346233626161656633613734633531613436306334656536616135223b733a33323a223534633966323230393261633761666664343163663038373834316633396338223b733a33323a223565383736666566333531366363333238666534303233336533303037363632223b733a33323a226464376261643532323563356638613033323665373733356265386566663765223b733a33323a223739346438316462383931333830653238343539343934333333636439363735223b733a33323a223562633031353638356135313539663930313031313730316639663032336532223b733a33323a223533333962313163376436646662306333386337353262373364613730353833223b733a33323a223765616564646430666538366330376435343663623461346232346661613135223b733a33323a226239636334303335663834666337306438353538626136623132623361363933223b733a33323a223065356232353366666362386262363536653931343930653035393537313263223b733a33323a223762346164626631666161663335393133663934343564336161306230656265223b733a33323a226261386339636331393139326661326133386665316137393164333832373066223b733a33323a223634336437616435623737643465343937346130346432653830616530306535223b733a33323a226633346638373562663961646638376139653834316334663531623365353930223b733a33323a226338636133613630623065396535373530633438363134623638623035343664223b733a33323a226132656432363563356230383964633061343562306534303730623832366666223b733a33323a223036373237353639666530396438386330666133663666396565376137633231223b733a33323a223232646563303562613335616238656265306562633730346630636162663465223b733a33323a223334623738363933653139663433616230333134316537333966653232313666223b733a33323a223735333031623765383961636166393764313031343535383365383034373832223b733a33323a223765343562643739396166393933376634383230346361303365343862353164223b733a33323a226466313839386263313864623437646262656333613831323939366537323232223b733a33323a223232303634343565316335636235323937363763333461363439646333633863223b733a33323a226262383165313538663262366630356664336365623661363166363630366232223b733a33323a223136303031343435323661386166623164306532653861646238366262373933223b733a33323a223839353162356236633037323637653137373766636233336265333938636362223b733a33323a223436303661323431366336366164666462623263353462303534393030626638223b733a33323a226538636435643864363162326632323032376237633262363065396566633032223b733a33323a226231303666653833386132653632613439653334613064666539623864666536223b733a33323a223662623733333061333563383032376335366339376539653238323466386432223b733a33323a223132376161326466386330656237333835613131626664636534343863636562223b733a33323a226339393032336333383962303632366665643135653961353765303466613436223b733a33323a223039326463353333666663346537366337626439316532386465643862636337223b733a33323a223866343465323664663939323232366261336638666435363164626330636166223b733a33323a226430626139373664306337306530623732333964393665643332663961333131223b733a33323a226631616332373061303931303764363230333034356436383565623565343930223b733a33323a223163626336356266633266383731306137623339653737363934656431636566223b733a33323a223965376161383934616438623632616162363461623461656564613762656533223b733a33323a223463323034636266353566376239326566613962613834333963336434623834223b733a33323a223766616164636664643031393432663536373333373135386366323261393864223b733a33323a226135343063396434333861386334393362623338323063303534653038633062223b733a33323a223934316432386564393765343537313337313331363137616433356432323434223b733a33323a226134353436633865356230316562663364386362633732333334383633626634223b733a33323a226133626363383766303764643230336132643064386134303131636334353635223b733a33323a223139383632383939666436313034643635613235326137643931313137323161223b733a33323a226164326132343462346630346539366437386332653863613934313830336138223b733a33323a223637653137653961396666383461353933656436613536623639633563313837223b733a33323a226561653434386463363765396337656664353135626366353731613036303963223b733a33323a223034373666323561316530313733626138376663666333363234616433356461223b733a33323a226235656237663366666432353164356237653635386438636333613537653733223b733a33323a223161623734623861376436376235346433386133623832373565333466643662223b733a33323a223832373164666362333266656337636438363261333361636663643165623862223b733a33323a226165383162623462666530666439393463663838343231643965646333656263223b733a33323a223830666463373236396337636431613533633962616530333137323532343066223b733a33323a223833646536353135306135613633613937343532386535393861383834643933223b733a33323a223163643032343031346334313066373664373836373434316533383064393762223b733a33323a223531343365323264393239373338383161356135366233386336323836326638223b733a33323a226334343262623437613263353938376538643138396264366437633165613465223b733a33323a226262636466333766333063646134346466633037643063373761383464393631223b733a33323a223665336436383962653464313661363830303564373830346632646663336631223b733a33323a223266393563613664663137656236626163616666643962336231326130643437223b733a33323a226465653233646135636234376337383834356364636563656566626338663234223b733a33323a226466356166393838663336623334613264663333656232353465613037626332223b733a33323a226233366335636232356136336333626563303730323563643764393636366138223b733a33323a223032663364383737333665623266626261353664626563343263613965383130223b733a33323a223534636365653631626432623865373361646533663363313663663939666531223b733a33323a223935396561376263313430633830396662376232613638356532306665363730223b733a33323a226464643634386538333463366165383361353861383762323232326234633639223b733a33323a223338613862343766626139333466623736666539613633663936656664393966223b733a33323a223131333564643061316132323236616631636538326466336461343861623332223b733a33323a223431343730336637333032636536643362633134383761383836336161343362223b733a33323a223330643961363165353430343265303163396262616138396563396566346238223b733a33323a226462633138313237373930656461303937356231353236393531633630623030223b733a33323a226131353063653364356365353566613961373863393237376639626631303031223b733a33323a223833363466393939636566316361663662643435353639366231323936356566223b733a33323a226439373036396665623632363665396531653235633833663365393037636164223b733a33323a223632373832386561386462666433643066623534373630353565663334316561223b733a33323a226635393562663932633764363365333833666561336631663463663734646130223b733a33323a223665306363336362373166353165353633356666633933363430343538353632223b733a33323a223139313430323139636534636432643132393734663962336664643032363438223b733a33323a223363646635393030346331646265366162363031383862616433626463353461223b733a33323a223331353066643233636564333037393134643131343736306130646162376531223b733a33323a223464663036646365383432356134626161326262653161666166636639323636223b733a33323a226231623166646238363432316132336230343337613662643462646533643965223b733a33323a226263373061323734663366376361326131356138313035376332376532313830223b733a33323a223637303164386566356332363339383765666239613765643435383761306637223b733a33323a223131643966346134643066363762653336343563396433373135396430363762223b733a33323a223236303438353935383635386636323234363839636638363437666331333438223b733a33323a223730663631663934663832363630333035636530303735336264313364343364223b733a33323a223434663631373833366237663563613136353466636132353465663665613832223b733a33323a226139393139373233303731356131303837353232636665346162333939303361223b733a33323a223134306336313436613765326261613038623232626532656461653361636231223b733a33323a226138646532653739303331326262633735386463363264633134333663643936223b733a33323a226533346531333466646139386631336436626330336365303032363264646530223b733a33323a223163656361363863663261343131396165336330656333353033646330316466223b733a33323a226363323231323435313835613034313534376664623836306532666562633938223b733a33323a223164663134653366613339333839623535626561383265353736356239356135223b733a33323a223639383431346162373133306633383262313135336536643463636539656235223b733a33323a226561663066323835386339643162323636363465326633313932346563353763223b733a33323a226632663836613865393636313365313130616137323063653166363331623035223b733a33323a223563313062313764306239356362653132623363366365383238323832633366223b733a33323a226664316436666531333263353635316136303531663036646539313730383832223b733a33323a223531393234613461336236643065666438643563666630373336626131393138223b733a33323a223961313736646461636634333161346438393936336334633762363564336466223b733a33323a226464633634613165656434643065663764643763306464623066656363633039223b733a33323a223464353437613331393133363133313333626230376435383533303965333437223b733a33323a223665316131363934616430616131623164646236303734663937353037653864223b733a33323a223532336238336566636233393162363730366663383733386132653862613963223b733a33323a226531663066343434623461653233656438636266626231653636386364303535223b733a33323a223036626231653239656566313236633063656332366231353937643462386263223b733a33323a223464343133366137313734636464323637376336386538353765613336313732223b733a33323a223337653630613264326437303333396262383564663436666465353834343039223b733a33323a223830353465653839646436326239373965386238653265303636666535626335223b733a33323a226534376134616633623833346334326136643731633961366261663833623538223b733a33323a223266663063306633623733316562666664373331663031303462343035396235223b733a33323a223965623931386637613266386430363864353563333662393035353233666465223b733a33323a226166373031346363666662343266633965633839346338656339313665636236223b733a33323a223564316131326364636333633536646361633066346463356539613065396633223b733a33323a223863623162313130356163643366353133373762353031623939663761636433223b733a33323a223439636330653032396339303161363034643366383736343435356162393466223b733a33323a223964383936396433363861396566616635653231376137623864333831366634223b733a33323a226630613331366665396538306636643334633734663931366166633531613861223b733a33323a223330653039333961383035393239336636373937323839613832333039383931223b733a33323a226537323866383365393264383837643162346435343030313161643533653664223b733a33323a223836633066656434633666343261323239633939353465313239383230313831223b733a33323a223532666164626431363065306632616166343538326464643364396236316136223b733a33323a226132346662383037653336333338333932376336646237303131653361643962223b733a33323a226239333331613736366430313066336639366531306438323631386532353561223b733a33323a226661323266366137333537653764323936343161643263386538383063313630223b733a33323a223133613735343232303030646431386333393538326136316330633637343938223b733a33323a223434393136323365643731383636373137336362316238303430393066333063223b733a33323a223133626631323333353262343662353036323861323562616132653735306438223b733a33323a223530656539613062653964326462616233666139363235613962333033306335223b733a33323a226131393739663462356366363534393639396230353236343938613834326236223b733a33323a223931363039353036373463633032396538343432663362623439363630613337223b733a33323a226365333665653961623536323839393833326337306536313037303837633732223b733a33323a226133326463363765393937356462343231316264313363313766623165653364223b733a33323a223566303661353366393064353336643331366133316166373731656636396538223b733a33323a226437396631383136623138393763656562303663653530643635643463636166223b733a33323a223837366363633361393563366431636665313634633833316437663063626237223b733a33323a223431323662636631616430373033366536663430653961323339373562376239223b733a33323a223837663162393864626339656662613131386536313736613861656132383039223b733a33323a223539653737333033656337373165656131363461343433373366613038623064223b733a33323a223936373831383636326165643237646665633338396234613535343961613832223b733a33323a223766626163393830393761336334333063303765653665653630646166316463223b733a33323a226561666362386437303336656331393236616537633039343537643762353366223b733a33323a223136663466663438653236386363643938383733363661623834663736616465223b733a33323a226665633036393031633038373863323361333231653838633933613639653032223b733a33323a223534313162636439343565323366386531363830373463343437333936366333223b733a33323a223532306435336161353230366535326535643731613434346431373435643937223b733a33323a226236666333326364623861653839316639623930386330376365633138303835223b733a33323a226364653730643765656231666533656161363732363639643839663364653163223b733a33323a226661353039326462376366363339323338303434326665376362656231623730223b733a33323a226363336436356539323132373562353935386133353438373530313332356431223b733a33323a223330343936313337316666356530376462336535666234326465373165663435223b733a33323a223337343161353364646561383338383264363432366634393334643064343766223b733a33323a226562333365393765393761333234646332336562653530313262653965323933223b733a33323a226666373966346164306431616331373130653438393033336261636461303966223b733a33323a226437356535653637643830626130366666626531663963353932343564653532223b733a33323a223233323434303133633732343061303732313737646638626136366233303264223b733a33323a226430613537333338363562636565346466616332326465656566393964643664223b733a33323a226665386237373233666263343138633837333265633464613132313133656162223b733a33323a226432626562653938636630643634383530636339653761363935333532656235223b733a33323a223439383536616530303061636263363837346563643932633938663431383362223b733a33323a223765363365626463386331313036643733643736633234616561303634616438223b733a33323a226165663532363337613862323534306434363836363137663762393637666537223b733a33323a223138636462383636373965393333336238336661633939363865353963326634223b733a33323a223866376336396431616436313864623562656237303234313433653266313061223b733a33323a223062366133623131393966666362383866396363656231316562326663326166223b733a33323a226636323835306134336132346530366364323762373730326264333636386463223b733a33323a223338633130663266653637656136303335303664356338396638316330656239223b733a33323a223561616662383162643664646161393463303565393333383638656233613930223b733a33323a226134643065333766386132353634653462623538323862303062343236303436223b733a33323a226532366165333661613930306566393064363965333161313761323739653730223b733a33323a226661306164633835323461663030653239343830353437386434386261326666223b733a33323a223537653037336237363331393734303635363763303335663834376539663931223b733a33323a223633343465633262653937636639336335366666623362653333613537326435223b733a33323a226235303364363735623163393366306666346339643633383834323635383631223b733a33323a223332376237326361363134623836633931653038386130663462376334363462223b733a33323a223330356634356535303030616363313431376235313533333730643162616132223b733a33323a226337343866346163613266623139653834336236396265336430333265373264223b733a33323a226632363361646138353033306337346463333533383739323535383530346434223b733a33323a226338623433663661623037303539363164636163303637623633333861343039223b733a33323a226530333832313236343738653863356338373539376164636365636333613566223b733a33323a223063663264383736653464343466303833643739626266303664363236326337223b733a33323a223730373665353665393064346236303032633533326238633433313934663436223b733a33323a226632386361313635333363373161303564303039623030353261663431616361223b733a33323a223262373636363533343331653933333264333266633838623637386164373135223b733a33323a223636616137303732366664326134333031376261343063353364383232316363223b733a33323a223263346437646530323938316663623739613833613838383734666163623436223b733a33323a223063323632306235643736353363303233663430353536346136303834353832223b733a33323a223561396638633838613666323332373438656263623161643836356562336163223b733a33323a223861343936613366376434623261336666326332663562346236346666643832223b733a33323a226137326363653037656161623738353463323537616336346339306666653461223b733a33323a223562616638396533373266363731303638303735306531383866666264646261223b733a33323a226666343632393830396564383233356530373238373861636365333639653538223b733a33323a223630363261633661663637623563333931303430663434376632323334656438223b733a33323a223836646262303461376666303065373563343433623864333437373662313563223b733a33323a223734636332663930383332343063333961663637633339363762666332656562223b733a33323a226263323835323565636632373737346535383763623234623462363932653035223b733a33323a226433393234393233306230386565613733663938326631323737336635633464223b733a33323a226663383838326661623935633566303130323538333037353064616565323939223b733a33323a223863343563366534636339326566646165363262353462376335346331346362223b733a33323a226431336533353039643864373833663663376634363361623861313761653163223b733a33323a223434323438376466333666316638353036643630396137653032303334343138223b733a33323a223732336562356631376363356138666261633034653265363239336238363963223b733a33323a226164326338326238616239626132346131396666393132333434653966653730223b733a33323a226164333861313663323935306162363837343934616435386134643565316363223b733a33323a226136386636656231626635663962636131646433653130616534393535376638223b733a33323a223161303264613362633133613462396165393032343463373032636565633237223b733a33323a226336373562616339656639336464383461346538643730346434303637336330223b733a33323a223938633935343537373637353030383665313163653037336433383963373235223b733a33323a226662386363313664316365353262393065646533623961656566333763623337223b733a33323a223865663162623737316339633462303736336361663135666664353135656361223b733a33323a226339373461376337373035303665333236643632363562336239323863306134223b733a33323a223162656332653664313039376562303539303665666631643666346465393234223b733a33323a223962393161306563333966346164346264343236373836323133626235633336223b733a33323a223136323863633436623331666661313035626663343534386434353333633931223b733a33323a226562653763633261663633373664353537383666303733386565633463386261223b733a33323a223033346135303237333063346536326136316131633963613363633534653266223b733a33323a223738326236386164353434633033396131343735343233643861613365386262223b733a33323a226561303964306362393935343934646430636336633737363838363233303663223b733a33323a226434366337653633373933636636653165313761363463353664623339326564223b733a33323a226232316364393637336166323838313961326334653163643466316130323332223b733a33323a226233386330393035316135363630396437393638373236663863373931353161223b733a33323a223966626434396537626133336530356466643139613237383230376163393366223b733a33323a226136636233643333616434363836373465306163393962303339326239373031223b733a33323a223663663037386531623661616662376265663435313763333963313430336362223b733a33323a226666373631623831303730303564663035633934393564303635396136366439223b733a33323a226430646164306432333964646536326262373062383463663433326365373261223b733a33323a223631393435393763613833363764656363336231303331623932666235646631223b733a33323a223635343264613637316261326239633833313832386537633762663331326265223b733a33323a223239383730613938313461336639363033623037303635393733623364633131223b733a33323a223361396264656639373163633261366637636233333964323735346635343630223b733a33323a223862396432366633383333626465393264626464353031643762386264626634223b733a33323a223665626464656530373135626436653962343632643663303134653235623661223b733a33323a226538333639353430363935613332393664333261303264323861366534636135223b733a33323a223166643962316639346364333665306463306438336261666364363633663161223b733a33323a226433626638373631646231363639613932623365613033303838623630396336223b733a33323a223163366565366137313133376435316361323835336464323030336462366131223b733a33323a223366373231373634653138636166326637613932633737636363373766323461223b733a33323a223766363334336431396436383537613837363239323635316630326633663733223b733a33323a223135653662656663636234326563343532323231663530623332313132373131223b733a33323a223937613831316164343937326333303939646262623035636330613764653065223b733a33323a223162386338386137326462643466323739363335356638373634636432646566223b733a33323a223062346661373138613239623132623962313066626533333938313536373631223b733a33323a223536656239306266323833636530323666336436666461353231363531633932223b733a33323a226562633436393133663133616265623136303466323562366535313032393539223b733a33323a226562373537643734356431653762306538353161383837333631363835616333223b733a33323a223565366333656563333264383066636538303934353861326664343262396633223b733a33323a223464656334663530303835623637653463316362326131343139373866663735223b733a33323a226636646664336331613761643463343665616230383036626561303130353631223b733a33323a226561353465643130393531316265316330356561646234353530633733356236223b733a33323a226366303732316266623666323439316432643664316430353436373731386365223b733a33323a223539303062316633376661316261303166316633366333626533316364663762223b733a33323a223966623733376462346533353836396131376635383762653866383364303130223b733a33323a223030336433633634343665363534343333613034316662343437343163633730223b733a33323a223363653638633865663763663036663261663263383166376430633439366362223b733a33323a223866393430646635333733373832386662303438353637653066636338366166223b733a33323a223532646337636532383137373762363334303864363035383461343231343739223b733a33323a226134396463396266393731633261666333386631396338363063613136343333223b733a33323a223766626561326461633062346333333334366564396161613562646536336334223b733a33323a223736663064616531323634306333646633313934636331373564303236303530223b733a33323a226239643562323937633431643763366561383231303534313966636165363230223b733a33323a223331343535646564656533366130613830623065626433626333643662656266223b733a33323a223962306136343837626361626532303636323538333661613838346464643563223b733a33323a226664326539643166393639636261616665613539656338326133623132383138223b733a33323a226232663563663432613064346561353039373634316166666663343430323736223b733a33323a223562666633656330363731313435383239346239386166643139366431383831223b733a33323a223662613865313638623237666462323663366532326461353463313566613264223b733a33323a223433373264333431623137353761643335633265336233333234616536346335223b733a33323a223235316233333266633630656130353963363563306234313537373435366437223b733a33323a223664353032323032383164656232656131623935376434376162336130396139223b733a33323a226132623231653036613164376238373639313335623035623233343632366335223b733a33323a223632393032646238623761343934393537363836333236383638646166346336223b733a33323a223166376366313661623236653338633732356539633864323165643932393132223b733a33323a223237343637653238626165366331653438613263616463386162663034646566223b733a33323a226634643232386536323335616633663337616561306265353933353562633966223b733a33323a223435653063643461393862303631303139343537663936666263366336393433223b733a33323a223931613033333161663763383961666238336334333339303337363664636163223b733a33323a226232303439393135383535363635313538393431633065356430646466653238223b733a33323a226339353332383031653162346361313337306466636432393236323636616637223b733a33323a223837386635626264363461363633326464623136353064653231656231643833223b733a33323a226330626236656638346135373265656435343335646135666565633136636638223b733a33323a226466346163303738633565616637313231353331386664376434653833353661223b733a33323a226534616234353163303636353038626131383266383361386263613937316335223b733a33323a226361333132343230643164363437346439303934313032633966623631633336223b733a33323a223331336466636431353034666236383363333761633731383762653464366431223b733a33323a226363653533623638323739343264333864643635623331353364623063303237223b733a33323a223064396430373537346463323066333064323436306134643939353630346532223b733a33323a223336633765636532383236626235386262346263616438303530313431653236223b733a33323a223139313232663034666334306566613033613632303533346565356666636262223b733a33323a226333306566643932626130323463626163616664663761333961393134346232223b733a33323a223233623962303734393466666165376534363231636239376239386161663033223b733a33323a226634613932343931353633653161333635653464363834646462636263376436223b733a33323a223435333164303063363462613865333966613636663062393338363435626231223b733a33323a223634326137643232393463323432363761363764663132633265383035633134223b733a33323a226330333066333464636664636661626130653337376562366438623934626563223b733a33323a223661393438616561653537363832363432666637343436656231376636656239223b733a33323a223134646264376432353137613037663431376561303232336135653164623139223b733a33323a223938356336313130363833313365376563333030326362656338623563663961223b733a33323a226263323633623663663565613065303736316365323138323237383264303331223b733a33323a223361303632653339323666383139633630623737623438646361633765633865223b733a33323a226534393365346466343362316661343065666234316363636336613837373364223b733a33323a226662313639373161346339623764306530393765343638356166306432366538223b733a33323a226562386639663966613032633464356363323266376131643632633439373263223b733a33323a223663353639653635633232383835343039333263353361633161343838636162223b733a33323a223438313334613332663461326231363062653765666132643731336434376431223b733a33323a223164386665356438623338363431656664643366323931323637626461383662223b733a33323a226666646261643738633930636133613864626232366438396635383061346136223b733a33323a226366343338646635353863633265316534616134663135656230333562396234223b733a33323a223138393966343237633065396230323939363062653836643838666561356136223b733a33323a223439346666386562303635613536643734306164356134636464356662343339223b733a33323a223963643237303763653535636265663863333833346536366230646266643438223b733a33323a223338313964616564393539313037633630383665386131646336663632666636223b733a33323a226337336631376636356230346463613830346132386536353830366236383938223b733a33323a223164303739633764663339363531646636306131356265636266303764326433223b733a33323a226535343231383566366239653838396564643764376366303931616362323935223b733a33323a223731326330346634366366383831363966393665626461653463653635316630223b733a33323a226162376238303234613238663663636534656532363130353638366335623438223b733a33323a223761306161326662346338626164383964363034323930303538323837663363223b733a33323a223561323232636530633633326366623334663761396433626164633966373632223b733a33323a223232656533376564643336313163333634363231326134376236393961333864223b733a33323a226334376365313966633563396337323538646364636332373039356634633436223b733a33323a223337313533323466326366356230646463343935393031613062653965336265223b733a33323a223861316539343362663861303737623731643164663965356565643732393337223b733a33323a223866386137306636663764373334616461646130643561363062386434616130223b733a33323a223934343237663435333635653936613337356264323165623063393234633662223b733a33323a223961666562643436323534663437663362626666653936356664303336313535223b733a33323a226335666435623131376632616263383939366664316332646133343039333865223b733a33323a223463346262316438623033383438353964316530373265366331323763616634223b733a33323a223330376366363034366363656466643666313432336535333832343263383434223b733a33323a226562306637313436616135336533353937393239313535323461306261303031223b733a33323a226637303563633938353165616135333337616336626331316335353264373932223b733a33323a223965306639366536633930313833373361343164656463666261333536323937223b733a33323a223637336662346439643835323032333761373664653734326537303932623337223b733a33323a226135343436336464343735636363656235633230363937323964363063383162223b733a33323a223461343566343439323833353366656165346662303565336136363234613733223b733a33323a223632356330656437333633383761616231623665386538626664373833363161223b733a33323a226164393338356631633637623535376436393237323562306335633436343564223b733a33323a226363343361333932326430626338396637353063623763363033373132636661223b733a33323a223564643464316634663938616536323263353939363130633539303231323236223b733a33323a223733306538623866666563396330323737313062393238613731623334396234223b733a33323a223562643435336139333037663235623662326361633662353630393865656530223b733a33323a226365626535623934383861303261306666396632356664336231303138386230223b733a33323a226533643133633831386531353837653034656635623963383836653636613565223b733a33323a226661373433613966393734356436336164373439326536636430626336633033223b733a33323a226434653332376531653537333833626130613438373163376266666535306431223b733a33323a223866313264383333386433643431616436373839643832393662376365366137223b733a33323a226266313233633337373830383937393635373934363433333130323837623161223b733a33323a223464643662363636653336303737353835626535376335366464633364616330223b733a33323a226464366631666266636635666130393436383732323666343364376433356534223b733a33323a223862316438303332383662623862623562613638646336383931626131633533223b733a33323a226237393466356539633662306634633138626339613838613031623364363538223b733a33323a226362326533666633633930326136643365343235386138623032643934373638223b733a33323a223433373166383463363634386566616333643863366362363535333133393633223b733a33323a226232613338353366326234383233633563386365633564666135653262333639223b733a33323a223561633861343664663830336637633832313161376330316563373734316363223b733a33323a226164346334303438323935623964616439346666346635663664383330326533223b733a33323a226138326363363463376335646361303736313031646366303464333565643266223b733a33323a223239303738353161616166663131376462353162653862333138616534653965223b733a33323a226631363265333562393735373331643535383365636139303165333032653838223b733a33323a223136616232386336343462333264366337306238396463626433333162623566223b733a33323a223139326237343265376138646163646563663662643535333462313733616235223b733a33323a226139393231653166643361306638393136373631363138626237386236623535223b733a33323a223364326530323336363137653335373839333535346138306461623330626331223b733a33323a223230623331656533376537643736323830613131323633333432636636366430223b733a33323a223862373433666232623163636262396634373032623533623064393933326362223b733a33323a223133653665343330383234336163353664666263353562623534646233613466223b733a33323a223138323962383532346539366561353336323136366634623663373264663262223b733a33323a226565323237393237316337356366346563303233623736366439313165613438223b733a33323a223234306561353934313361383465613562333963396435366431353131613539223b733a33323a226339303766383132393661333931626339363065336164383431326536613439223b733a33323a223833343035623236313135323933316133656530626363383431623031626338223b733a33323a223736323234643538626366326637383261393561336533313866653632653930223b733a33323a223863323661393364383932363163653362393663643632626536386465363266223b733a33323a226431303831383966353932613433636463633263653464356361326530383631223b733a33323a223965646361663661323533633436623433353463663962653936383337633932223b733a33323a223763646634346237393564376465346335353363613565363463393038653233223b733a33323a226334373865613163306138653565333061393161346161646536646637323036223b733a33323a226437626364366661613565383430656434396639303139653338346231646139223b733a33323a226461643961613966353938343363386134383735333939633061653635643230223b733a33323a223038383661616164313131386536656565373363646434316363396266666564223b733a33323a223039376633366639393463313331353463373165323562333332656464663535223b733a33323a223933376135376233396635326535663863636332396438613034646137303036223b733a33323a223836633566363564343337396337626239336563633339613732663966306339223b733a33323a223435333166353663646463643965646430666131373835663431636139306465223b733a33323a226531353139363535633265356531613565646336343161323239336338366533223b733a33323a223734383639323866386531663333396165393839373531323932313165373735223b733a33323a223036306338663561326436333333346130663431396137363436653166386163223b733a33323a226334666565646166353131613232333065376434303536383736623433653635223b733a33323a223436363237346333333364643662346534366361643931653466386664376232223b733a33323a223831623034376461383436363438633739333436363238316332313266646339223b733a33323a223430393263306533663638663638643239383337316335353562316234393233223b733a33323a223537633333366238353231386636313933633037393232303333366637633764223b733a33323a223266613231303464623632363364353133323134646639643439643433336530223b733a33323a226236333861386133393061306634383333353764636636626162316439366166223b733a33323a223335343134376462646563346663363236626438363439663036313431653930223b733a33323a223637333531613834633837353934643063393338363462336337373732356634223b733a33323a223238393538383531386164643238386664346534336138653466663862623765223b733a33323a223561646234623261643435653633373434653939343562643665663631336234223b733a33323a226363303833373032663635393731356661616135363564356566653432643033223b733a33323a223661376161646261303861346436366338623864383635336139633433373733223b733a33323a223464353234363334303132363733336335383966373061333633356634306235223b733a33323a223836613339643265393664343864383334366432363834663834386562643431223b733a33323a226530353132396132373139333333383030663662623662323566373630376138223b733a33323a223266633966323131386331613135333730343239376537353864303532363333223b733a33323a223530353331303031636435343561383933653765386664396164653833376131223b733a33323a226665626530303732633562633532613964643963633163303537306332653763223b733a33323a223337323332346562643362323634326630623435643662666165366539643963223b733a33323a226664653563616263313965613235333366643162626134363363633731643136223b733a33323a226264353766646665373436363334653766636235383031643063363834363361223b733a33323a223765626461383765363166386161376564346131326635616266336237386238223b733a33323a223462346263323865383465626339343866303165616638623061316666343266223b733a33323a226430343266323633636230383731303165333565613834336166303661663064223b733a33323a223936303038333737626339323233646538666135326637353931333634343661223b733a33323a223033303965386537333665373064396632663363346138666632343538356236223b733a33323a223131393539653534663538306639393331306535363933333761626161336138223b733a33323a226166643265633362626462323365386434343864623637343862666463386464223b733a33323a226263663663306538393739636337333334616530303830623737646433633634223b733a33323a223063326433653962656365356161366138303030313830306466636263656638223b733a33323a223232336466623766313634326461323736363936633335356565373964633934223b733a33323a226366313431646238346432313166323966366136346335336533646232653265223b733a33323a226231373735633165396333616561306562613363366133363866373033396666223b733a33323a223463333133333535323166326364656461636664393634616232636265343732223b733a33323a226331316231353833663931636632356434613266666639333137326138343631223b733a33323a223235353663396332356664373562323865346165316237313963653566666635223b733a33323a226332343535353636373332313839383533366566316630383263313737636531223b733a33323a223536303436373962636435646237373665313734663262663465336333333236223b733a33323a223063633238663664343631653762653966326335373537636534656136316634223b733a33323a223130636265346363666334306132643765306464353839313161336363623864223b733a33323a226639646238623763653863366232393965386635356135366164306235373737223b733a33323a223138646532353765633630396263653863623661646336636631623462396433223b733a33323a226632613033613431303837353036643638663839643135663937303438303031223b733a33323a226138356432636135333535336265383738613139366261303764363836326266223b733a33323a223265306564323566393235356238323537636337633134313236303866663834223b733a33323a223162366139393134386635313465396264303230353537643861623762346334223b733a33323a226237623135663433376232316662613161363835386264666532333538306230223b733a33323a226631643430646434303430626438653635306336373864383735396133613237223b733a33323a223964653363326237626262663634643866326465323966353264663334323538223b733a33323a226236323233653266393832633131613839656633616538383264356630323565223b733a33323a223031333239393363633861656434386361366136353061333938316132623266223b733a33323a223634353638383564383934316237656562343230306335613865303736306362223b733a33323a223566613636393961333533663330333536323866393632303230646462646235223b733a33323a226463353564343861366463383735353533343939383737383131323662313033223b7d733a343a2268617368223b733a36353a2264633535643438613664633837353535333439393837373831313236623130332d3566613636393961333533663330333536323866393632303230646462646235223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223532343134383866326630373936333033646433383335636530373934393135223b733a33323a223834386435333961386565376237326565303833653666356637393632646464223b733a33323a223265356465363037356231653761616463666637376331613865393538386436223b733a33323a226433383962303132386665616431636435313066653861643335633562326132223b7d733a343a2268617368223b733a36353a2264333839623031323866656164316364353130666538616433356335623261322d3265356465363037356231653761616463666637376331613865393538386436223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a31353539333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3139313a7b733a33323a226465663733623834633734366264323532646332373562646465636465376135223b733a33323a226632373634393265323334353839383536393432336564663833343538353237223b733a33323a226139366639656337363232656134643861313132653536643863346263383636223b733a33323a223531313830326539336536353534386661616539383465613338663730323337223b733a33323a226264303364613130653965373031666134313961353138363439646231633636223b733a33323a226239306666323134363061323365363433373932656637666433383032623462223b733a33323a223536313131613564373665353238333733333861616636643931643339626337223b733a33323a226263646362373830363861626330356665316431313135333164636132363530223b733a33323a226666356637646166376539306137646639336563333064373735663265633037223b733a33323a226136623438333434356336613832663331653539646565663362383261626131223b733a33323a223737313864373362313530343830326132636362353366376630333735386631223b733a33323a226133366463343664383230626362666265313835653736656630383962386536223b733a33323a223261333666643939363363633036626535393161393366353561616238623666223b733a33323a223439333035666136633734663736626432383839376336633465346233653561223b733a33323a223230396361396262383261363237353065326539343638363833383062626262223b733a33323a226462386566323633313063653638333832663437313266323636323461316366223b733a33323a223939613635616238646363383064393738396137373034393032623061376337223b733a33323a223966343465626532316135323238316232613431643839313935313564366137223b733a33323a226330373964653866643530663739313839363233626139643166393861363166223b733a33323a226436333766316630643833356237656663323136646639376438626363643733223b733a33323a226465306434666564323430373935333036313862626135373363323461623038223b733a33323a226331313936363433663066366135613566383539346664666566343036386430223b733a33323a226664393461623233373635346135346664373662356631653136376365633434223b733a33323a223164386339663530383934333037613066656665366534363161613532633466223b733a33323a223031376563653831343562343034663862353364636135623538343339316338223b733a33323a223666643131306565333137303632323234353137386235656332653838663739223b733a33323a223433386536343334653739663765313539666363303764313439666130623133223b733a33323a226532613262363730353965363339393435303430626530333264336330656333223b733a33323a223763396636333864393863323736663137663261636239616430663865366632223b733a33323a223439333338633961386239363965626533613565396363646531663833306663223b733a33323a226637356238643031326664353164313265393765653139656464386432656663223b733a33323a223539323764653966613536333436333132326433316465363239653939353037223b733a33323a226133383035663338626438656163323761356665343538356466663536653931223b733a33323a226464366232353761653565316165393365613834633636363830613064613436223b733a33323a223834616164306632393265393361373133646333326439386366643664653632223b733a33323a223266636631666539316134386163376533313866363364373339643162343331223b733a33323a226335663563333933353233643361316465383438626466313364646466383439223b733a33323a223831663164346538666535643833336561323565646465626161666234333266223b733a33323a223364653130363235373638666562303666343362353436306566626536393837223b733a33323a226138656363363333616133303637666566303365396261323836316362653263223b733a33323a223531373137396361663161613264643966326233363136396531626361346236223b733a33323a223937346161336336303565313633333237666638666336353132613834656639223b733a33323a223161396532643462373134336666613532383432383463373135383931393366223b733a33323a223866663031383636623130303861363530306134666136353534616137303865223b733a33323a223838346365303262313738356663646439373039613530633830356335323639223b733a33323a223133633236376665633161636437386666303335396338326332356465646363223b733a33323a223963376435313734346330313131363265613861316338636634366365623231223b733a33323a226162373666653966333339313033613334383932383237376266323838643537223b733a33323a223365376665343837646636333636376666336262356564356361616433633564223b733a33323a223930666430373537346566326335363962626639383932353665653538306266223b733a33323a223037336362336634396166373136633837343761623262396132306233633964223b733a33323a223034326137313437323632396238333939616437386361376339363635333962223b733a33323a223562393162316339633534616561663638663933623837643461363562373132223b733a33323a226138326435613162343962636233636561326433333764663761323666366435223b733a33323a226463323163663234653731626563363436363735613134383961666238343834223b733a33323a226538306639623832623761346165333739636565643066376439643463386637223b733a33323a223961353936373562633238636632303735623164386435653433336630313734223b733a33323a223564363039633239396664363634336339343533663031346564393963343631223b733a33323a223232363361626137376235366136353435383637376333363433383134346563223b733a33323a223035316138303335376436373637343039643262376131346130386632383135223b733a33323a226131646262616130366461363430616335376236373139313264653731653036223b733a33323a223939613733646232653932613364613939626562343239343633376133396261223b733a33323a226132663530356565363536613761646364396431383464313535383065656436223b733a33323a223561613636303238646165663239633237316361613630613238326231303930223b733a33323a223734303231306264633461326166383936633639613639663537633531646330223b733a33323a223165333165313432613762333330323930346364656362346333383535653162223b733a33323a223936336233643264393266323564653332353862623364343030653765646666223b733a33323a223761636237363931356232613263373266633032303866363138643933336334223b733a33323a223031353535343963613230353739363632663830623564623030613434663062223b733a33323a223563346335636432653462363762303837353736666432303732343464393336223b733a33323a226230666331363762386136343765303834623465383839316261396132346563223b733a33323a223934333538653730313536363439653466366439343566323364303062326566223b733a33323a226163396537623131313239326334333162356634313738363136303439373434223b733a33323a223836346139656562346136326637666530326161383135666334613033653362223b733a33323a226265346231303138363531653338356161363831333662326662306334323364223b733a33323a223536363936626365633861663831333836323237363665656232373233663838223b733a33323a223633623963653664613063356431336239383163303131323538376665333938223b733a33323a226464353532636537316661616162656564306564663536303139616666343734223b733a33323a223734323036343866613337383431643134663232643635653238613762623763223b733a33323a223230303333366634343935383035656630346166303964613439393232353636223b733a33323a226263656466333536633865316134303361396635383965386534303131303430223b733a33323a226531376534373939613033663336626261343439626333613364323035636563223b733a33323a226639393131343362313666343838656434623236633661303761366265373838223b733a33323a223266313463663131343862653965386132323566646233656437663931613436223b733a33323a226534363436633330343239373164646561643234333137646333373662653135223b733a33323a226134663765393562393737386132636132653435636332613238393030396264223b733a33323a226434633261613038663065316664313030303437313462656233376666376565223b733a33323a223537646432653632323933643233376233383739333064383364663532333038223b733a33323a226363313065393831356533626437336235646564623161323633343534653466223b733a33323a223434313733343061363330616363303962333864303038633136353737663138223b733a33323a223338633336636339373662353230663962393131313666353965356636313330223b733a33323a223432313637333231333334666261653231303134373339336362633339343666223b733a33323a223938386634316363303866393730616131663930643665636263316238623037223b733a33323a226434316132363964393533326330306635376266383162343639616330373262223b733a33323a226434633864303837396463616430323466383732303537356637663639323938223b733a33323a223866626365316539613032643261396465646532396265653133306538323963223b733a33323a223139383938313031666664373562353433306637323664346566363764663063223b733a33323a223935353235373231356136303439383833393032366661333637636134393733223b733a33323a226532313832636131653238363764653636383763653264376435666162376132223b733a33323a223063353834363765323230636530666638303161356333363634363536623630223b733a33323a223762393166663439633235363834353131303634393431666337373765396539223b733a33323a223634643566663864323839323938313037346532643563346162343362353234223b733a33323a226562356161313263306635663361336239616265373933646232356134653265223b733a33323a223161623062383662616461613731383034323166643733326266346436656533223b733a33323a223463663639353033313536613966343733306136653939366462353739633934223b733a33323a223834616631323930636563393261333462353966623735616162373065303334223b733a33323a226430646662353232393238323130363039373964376230306333376137633330223b733a33323a223565373339336335336638336536653833356131323363666438383038316338223b733a33323a226330306139346331356365613566653636386339633731366237353537666331223b733a33323a223930323964356537336239636433626633343762636634343131353064376465223b733a33323a223065626462373931663638373165616663313539653961323034313561383937223b733a33323a223362636666383733393661373365393739363635643136393736616436363634223b733a33323a223136363535356132323732333732313633356162346463633637616666386163223b733a33323a226437653937383562653861333964363238613237346337643566623561316464223b733a33323a223633343035316262316236376136323332373564666436646663633832383430223b733a33323a223438356461363431656565346331353334363538316530363765356365336238223b733a33323a226465623731353633323035333731653861646534623531346166633366396263223b733a33323a223836383337383137393438316537313934343234663231353433366565623166223b733a33323a223731326661376535346632323361363965313265353231306261303438356132223b733a33323a223632626131323534323131636236306134623938653335653234316461326636223b733a33323a223537333336343262386237333230623931303161303063616237626133646263223b733a33323a226462613333346435316134393063346166323937643930366434376336356130223b733a33323a223762316461323830336463383964386662623833383963376136303832353937223b733a33323a223364643232386561636562626337623137336630393961623333623230383861223b733a33323a223562366333663334666238353239646439333032653963656137666136376339223b733a33323a223531633464376566303061346266393463393765316237343637376461316563223b733a33323a223032326432613336323161366635336464363035303662353339363137393537223b733a33323a223830346135373062336333353166356166343731323365653230366337306164223b733a33323a226635636237616362353434633939396536623739616136343135323063313263223b733a33323a223834386161626431356231636238383366643236313839356561616235616238223b733a33323a223335346132306436613964663038343839356631323634386338623163656434223b733a33323a226561643963616163343865633263613666346663313239616334356361613361223b733a33323a223661393165616631326132333633313832396366323231633031323035393862223b733a33323a223261376530656639376366303462656234623865343937343130323865346438223b733a33323a223664343764303137383739623734356331366564366264636234326535663535223b733a33323a226463313533396432623564633863626230306231376237666339666331623434223b733a33323a223831306564653862323531326364366534343961656632303963353665653139223b733a33323a223262343661383239353535343764373264633631313631323961633930356636223b733a33323a226161346434393430323236373135373335346536383063376362663437363665223b733a33323a223234356431346132663930306361386361616265373733326430646439613430223b733a33323a226462666130643735383934373939376262303761346635663232633933383134223b733a33323a223139613665653639623337636361663332386462396263346530616438643438223b733a33323a226635313032396537313533343362346163656665653339383039663938303064223b733a33323a223034306663623639356563333233643731376430656130323862373431633363223b733a33323a226233383331623536313338343437373033613434303965616563336462326536223b733a33323a226231636163316234633432396638323463633030323065363661353330313131223b733a33323a223562346137323335323439653639376538633161356434656634376465356361223b733a33323a226533623936343332326438613831656561303934653838386337316662623730223b733a33323a223362663264656233353663303461366431353238326432333538343438393463223b733a33323a223732376636623634656132323130356237356364663738373166336161623035223b733a33323a226438646330656664626236303531326638353736633265623166616231633536223b733a33323a223734613363386234366265323063363135633231376564376539326134383833223b733a33323a223131626635306535656334306365313336336163333232366331326438653139223b733a33323a223837653663643339306663393034623133663132386338303737376136373434223b733a33323a226235393934643034363630353431303533313263366664623530396565623230223b733a33323a226337653363366463306261376265383739396538613161306339336634333839223b733a33323a223235336135663336313065666136343335316532393637326535616461383831223b733a33323a223163383439623436376662626261336433373536383866353134303936616236223b733a33323a226139633034333337623638303534343862393536353165373533313338633034223b733a33323a226361303539613034353361303463363362643539653666663732386233363736223b733a33323a223931303438383162383231326535616165633036303533303232393964366463223b733a33323a226162633364653764383431653965346664386437376265326230363832353639223b733a33323a223463376230333335656538616339643362633361303736393432613333343233223b733a33323a223031386335623631313431326164363665643639336262316530393462343465223b733a33323a226630373435613466353236656638363266646363366663633133343964613033223b733a33323a226630356139306264616239386363323732353836393164343465646164346232223b733a33323a223562353138616166643835346163343432656263396530613936346365343463223b733a33323a223036393634373839343239326432313866363935363334393766663832316532223b733a33323a223035303738626535306332643333333666306239386538646535313336343932223b733a33323a223366396561613335313333373535316432393830396262366162303461393538223b733a33323a226337643331613334356534353934303934626666626665363331626561306436223b733a33323a226133383964373938393538313633666339306564343639633634366238363636223b733a33323a226464326533336639393363346336303836366131613730636132323463643037223b733a33323a223637376434636666323437333837666132623239616633366632636431356165223b733a33323a223233646464386639393634316466343132383161616363636261323330656136223b733a33323a223332623133643039336634363633396261643864626363343766656438613032223b733a33323a223866333066313236383262623038303564306233323438336233353762356434223b733a33323a223063306463303063393935313132343334646137376266353835353432656631223b733a33323a223765313636616135363933613238353630633834643462363435636264353933223b733a33323a223363633830336265373734323263333636616364393763313035623332323836223b733a33323a223736646361306130353662376666633636373734386538383063623064363930223b733a33323a226465633435313962323331373331316134666464333332333036383537363230223b733a33323a226462663936373033623664666536616465666362666130326137616131396636223b733a33323a223063303434366361376562356139303436633038316133343261323138383264223b733a33323a223736346665656634363863396363386234326133313639666430393437643934223b733a33323a223561343164306636386361626130356539643863376461393439633136373731223b733a33323a226637666661356133306436623661666632393532383634303164663234383862223b733a33323a223566373166353639303766306431323637326637303663353036643630396339223b733a33323a226339303063316637383063636465376266623632353437616130313130316235223b733a33323a226233643830643736353866666465373239646237653336666266643634336331223b733a33323a226330643764613665616130306163663438346366333039346431373262663033223b733a33323a226331373865663362333433316338333266323265306166646435346336623337223b733a33323a223331323666653232323132316532613834653063326163343563376332373631223b733a33323a223565613537346636353738613233383064613038343538373230343735663438223b733a33323a223837323464393939363432376239333130346562646535306133623664346337223b733a33323a226465393564623931633164613535303739333531313030666632633931363032223b733a33323a226132663162303063643661313064313333343230323762393630373730613134223b733a33323a226335316537363239396337623434323436313739626135623838323038653936223b733a33323a226435386635356237303533323533653161326130643935643763646635356362223b733a33323a223734656235646639356239313739343237666232386436633331653232383761223b733a33323a223537346162383563626139633831326632323361323065393564613739623464223b733a33323a226432323930333131363933343637386536643233623638383063376339373835223b733a33323a226264353339646162646564313836643033643538383830376537336237306466223b733a33323a223836616631396562393938626138303437313765303165663837343464323336223b733a33323a226661663536616363306636663562316635386232333935313838616235323834223b733a33323a223231616565303130356630353931396264656561303661386539373731343035223b733a33323a223030633962343665626365386232636636306166643765613261313634373336223b733a33323a223232363834313631663530393936393264646639366539653366353232383431223b733a33323a223331633264363532623964306530623366666533633833623932373731396639223b733a33323a223133663736363766373232656538383839613665316532386365303034393033223b733a33323a226634666164366265613766663237326665613066303235333763303234333665223b733a33323a226239643138623162663936303734313531376462313739383334613835316238223b733a33323a223465316338386465336330383634313436396539623739616231313032626134223b733a33323a223530383066306335393537323238383132353132326363366335643861666236223b733a33323a226534653533393437336338376539393136663539626239346461336336353538223b733a33323a226639396536646236653938366638626134353338316261376234636139326430223b733a33323a223632613437316331356263303565353662633166633763653333306337373361223b733a33323a223463393965633733313365613966623530646566316432666137653565393737223b733a33323a226136316432316637316238336532343531646138336535313566336635613730223b733a33323a223135326634383334633132383463646161306533613738373262646532343530223b733a33323a223863326430336135326139313564393735663332643335616662343662333136223b733a33323a223665656230303135306263616562343431643536653137363838306166396561223b733a33323a226132326461306531643263643431663763663363366335356234336134656665223b733a33323a226661373165303334653563383336343039613732396664326133303535643261223b733a33323a223134643865396230643835396238656633353134636334616136353063333633223b733a33323a226437366631613232393364366337643433643830366331376465326439666561223b733a33323a223536656265353336363339323066343638613131613137346339333933393262223b733a33323a223466363835666136306662383631626462376263333034626464653062653432223b733a33323a226233653461333461613362313866373538373231396466633433663739663836223b733a33323a226639306638656130633361626332383534313633393133666231653536646136223b733a33323a223539396332323637393864393462316565353662313866373430613137633461223b733a33323a223063396263623162613630656561656330323336636563663866653537623566223b733a33323a223933346637336165623036303134363931633963343535383364323937396630223b733a33323a223961343536656236646433326436383061623036366665393236313534343935223b733a33323a223934333935353438653334613662633830626335646663323431353836613362223b733a33323a226665373637316665663431323831336232636135356362346338643734663037223b733a33323a223932363864396363336531383061313063646666333337633538663237633639223b733a33323a223665353639366634633234653637386462613630616666643231373533343862223b733a33323a223634353238623639343932333966306535636562623537333930636363636366223b733a33323a226433333732366563333661333537393239613661313264316662666463313333223b733a33323a223638383732653137386166306131653933306434303831646337313935613864223b733a33323a223063633034396538353136663132326337346533646263303530653834363362223b733a33323a226461373630396466386665613030313732303835633132303862343363313433223b733a33323a226562613537326433383964346664383662326466303762383262663332346635223b733a33323a226366663563353634326464316638363065646330613631656238323064366661223b733a33323a223035323761363032633864663933663335316462626137376162663438613437223b733a33323a223731343962313863616233363734333630393730333233313230666532616538223b733a33323a223962303463366266646366316363383330313432636237656230663630386331223b733a33323a226237663632633733333337653837363538656538393963313836373861316162223b733a33323a226331353634303163613162383832656330316134373665386437326361633763223b733a33323a223938386664363830363533613136633664323765633232386430626261303436223b733a33323a226632653237616538356238653564376336366565616134656565343664343635223b733a33323a223135303236633131313133316164343935613730663237383866646363656264223b733a33323a223938383834636530333335653932643331633163353637393466643732376366223b733a33323a223866636339396334383865633363373330343864393162613362663432333034223b733a33323a226338396164666438616435656334616234646366303535643232646366333063223b733a33323a226631316634393937336532383934343131313065333236653931663139346533223b733a33323a223031653033303637326363363838386134336238663164623232343139333161223b733a33323a223037396435393737646662353232326461346163356636313130373562643235223b733a33323a226335333433656635353064313138353834376136336331633436643736366537223b733a33323a226532623766373266656336643534643334396136663631363336353861613065223b733a33323a226233313239393264393434316235366238303839616639353634383032376463223b733a33323a223362316264373163386535633461373735636330653662346634653536333864223b733a33323a226635663832326262306366376630653438616237353137643635343232316465223b733a33323a223230393739396164393637613134633663636236633432353037626433353238223b733a33323a226261343335346132636238643836623837636233303863613638643231656439223b733a33323a226366336335316330633139333932653930643139313734386335313562643462223b733a33323a223935343730393037356434393630636463336637636561303064393062363066223b733a33323a226165626162373532323763663634386430303435613166336133396163343933223b733a33323a223530313862616133663662666138383433633339356133616538356237626630223b733a33323a223937316563393039616163303035663333303936616630313661633764386339223b733a33323a223966663938616631636564363163326331353035386261396265666431653466223b733a33323a223863646131393862363030346231666135663263393564373762616335343661223b733a33323a223363333536626535613930613861376133323662303131313566346564386362223b733a33323a223161393536323833383534356663643233623563313038323436613465323161223b733a33323a223631643131623532356631663063313762663631633663623330646661353736223b733a33323a223138376439333635666565346166313061353837336333623737636166303464223b733a33323a223730363131363635623332356430616263653163326163613865343139373134223b733a33323a223338383330643034303361393365363561346236646461663464363839663631223b733a33323a223232343638623564653838366534643739393063643263396531653765333463223b733a33323a226661383263303063303664636632346161343362346565333337663564373139223b733a33323a223038313037653830613934393761616236646133643863346661386164343734223b733a33323a223735306433386630353731613030376632646332323261323866346462653032223b733a33323a223461653330366330623663323333633764386636323961633835303930396530223b733a33323a223935356634333061343031316561656364333331373235313136323565303139223b733a33323a223732373639323335373062326335393030323735643734653030626639626639223b733a33323a226564346139333866363064646336663061346163613163626261663961373262223b733a33323a223936663836626634356236663634616533653065356263366231636337336337223b733a33323a223233366132643066336165333031666339653966643834623030376637313434223b733a33323a223438396237373136653964326130373164653739333838363362626531616539223b733a33323a223736326233376262333662313235623765343130366464316436363838383035223b733a33323a226637336631636164303665363635326639613434316662666437336430323730223b733a33323a223038363737323030666130616634323766393762383761623439363937643533223b733a33323a223533636536306362623161313933376466366634346338353038373034353533223b733a33323a226662343362663563303733396330643339373764316339396264626236346533223b733a33323a223635366662376436636530613265356130663964393862643336343735393334223b733a33323a223137373165663132363630383362333434336365346436613131343166386331223b733a33323a223766613165333063616561366139306435323135316261666535323631373732223b733a33323a223133326635626439386237393263323239393733653565353238393230366439223b733a33323a223138343939363330383466363166666666366561333632636334353538656639223b733a33323a223164643731343666393932636438633332626263326436626464353538643134223b733a33323a223638363631353436643531633139316638326434663230383331616134346465223b733a33323a226330373039663266313836333332636235383031333331386437393361396132223b733a33323a223961663762653133623432373463323037613761653564386333396436326130223b733a33323a223166653934363166393532616464393836326238666434336538313562333462223b733a33323a223863636134343736353666313235383135343461386165666432633938333761223b733a33323a226566626437643536653337646332633865323635613533313961393361386465223b733a33323a226139323833313363333939316135323337346239653735633966363135613330223b733a33323a223830376539663062373363616137323132633463653565376436336532623061223b733a33323a223936323936663335323164616463366636363236383439353635393932366331223b733a33323a223933656633656133653161336363376533613931613537383061333130393132223b733a33323a223534643862303766383861333831373239636265343933366361373966333365223b733a33323a226139366234396438656632306661663762626235326463643762613065303230223b733a33323a223430613634343838386466373838336264323138346137636165636436616432223b733a33323a223538623665636436653033393535616432303838323661336666393566613434223b733a33323a223239663534613437353934376566613131616438336166306639663363333236223b733a33323a223264396333653139366366303535393739643961306133333736363030353432223b733a33323a226266376533663133343335656266353031393966353630396131323362633965223b733a33323a223161343231323062303733303033623430386338663131316131346533366364223b733a33323a226532353839363637393333363430373366313138633364366435333235363536223b733a33323a226630303836303361396232396430386338393730393037353866346331313133223b733a33323a223065353932373431643066356633386439326664633866623132336134383266223b733a33323a226366353431356265323831333134386665316466366331353235373132663662223b733a33323a223330613339333438386463336133623761626465626163303538363130386162223b733a33323a226431303530363030313834306666333737333263356635313262386438303465223b733a33323a223066313263633762613936613737343964353639613062366364353263326465223b733a33323a223932663338663064366433353936326432643466633966656434353661646634223b733a33323a223737623435356133653933303737653164613165373766376261396230303934223b733a33323a226662666335356564336135346230306661626130386266326438613635376661223b733a33323a223733356130393239613837366630646664303262343661623034623831633532223b733a33323a223537666339643466653339393561353330633934653664376639323834623539223b733a33323a226466366165363136303931373932373731613062353161633066666563636430223b733a33323a223131663561653534633936363264383435353030303363663431366363626235223b733a33323a223331653761643135623733393632643961336239323263366534623832356462223b733a33323a223430663364353831623765333031663434306233356532633534373334646466223b733a33323a223636313939653437333431316637613864623936623533323064333432643635223b733a33323a223135646233663735636566663734353763323766613964376634636363653934223b733a33323a223566636234366562633331326531636130366663323932613563333331393363223b733a33323a223333323764326530613430383538626630643066626166353661343636313463223b733a33323a226161663639653135343734306435656638653532646361616239646466356339223b733a33323a226530376361333138383761623230646634643532393662373234373838656437223b733a33323a223231386332643036646163633165373461363537383431393633396239306365223b733a33323a226634323166383538666562383835343866653766343661656366646634333334223b733a33323a223037326535636535303634653864353764343130643335653738316338323335223b733a33323a223165323231663565323739653865666238353035353365663434383935613738223b733a33323a226135343030386362373637633234323163663033313237666438346133643839223b733a33323a223736303337653334363931653065356265343865633538626539323331613738223b733a33323a223333353864343636373732386434356334313834306539393964396662326237223b733a33323a223763623063323064613133353234356332356365623466343831303630313137223b733a33323a226130313730376133373463343365356434306631366631306330333937323736223b733a33323a223533306464386139636434663533653366653931613431353665336236343566223b733a33323a223932653434663036643938656238636632343765373336613661616437303336223b733a33323a226530653436623831633336386433623936336562326637306439306139646364223b733a33323a226161396464356461623437623363616437616338623430323066316462346561223b733a33323a223836326339346162306233376639303762303738666261356566653932623232223b733a33323a226439316133653366613435306361316162383565323663303137623634623938223b733a33323a223135623435356361353337616534373330376664323830623132353561626438223b733a33323a223033333532396430343763613832393937333361656261333739306461356166223b733a33323a226630653261666234633366636536343232373930653631643061613066326631223b733a33323a226563633066663933383534333964616533373334666631623565333937366538223b733a33323a223463323236313337303839356139613432663538653133663036316562623363223b733a33323a223263323034323662643865666635376436663931396566393861653839663166223b733a33323a223639613036323333663431396161376537343062633134373337313866663534223b733a33323a226362623865616265346165383961343131623664313562633236633733333964223b733a33323a226134343837383933313230386463633130623366393330366130366532343032223b733a33323a223764623332363663396538663430623235616463376630626464633837336164223b733a33323a223336393162353539376463323165363637393837313235626262623662316134223b733a33323a226363633135316237373265316633396138646134323734363263356666313836223b733a33323a226135653662393235643531323734663566306336626563383438333636383735223b733a33323a226438666335353534663535303864396330373633313163386337653164643665223b733a33323a223166623439303533353866343264646338323937623131656537356632323061223b733a33323a223961663533303034656236393838373738633135396363336339656666343235223b733a33323a226530366230353332366534333666616332666637383337656230336361393432223b733a33323a223731346132393738393932646463316431386138386632343263616635393838223b733a33323a226464626633313266386665386565346366653766343263396466306434643133223b733a33323a223735366337666264383437393332376337306631333666646439663035306264223b733a33323a223262373935663231336238626137303966303536366261356164666131313863223b733a33323a226166623466373736663435356535313935383434616132303138346163613338223b733a33323a226134373262633564356131643863373963373538383534316530306663636535223b733a33323a223034396132356163303637616465613266323332663964663061626335336464223b733a33323a223463363666323032373738633761323635386638373131373833633830656233223b733a33323a223761336337303965393634613663303436663039373533326563636262613230223b7d733a343a2268617368223b733a36353a2237613363373039653936346136633034366630393735333265636362626132302d3463363666323032373738633761323635386638373131373833633830656233223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587601976);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('bhfk01huk06629a5qmdvm7oq5d', 0x5f5f5a467c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373033363934342e3034383034343b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2274336773396b35326a6262626b76336a766536336c6e6c6f7066223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373032343530353b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373032373938373b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373032373938373b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373032393038363b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223964383235333636333839633866623933343634326133313264396233626364223b733a33323a223537626532626436643036353264336438663937373632333536663766663331223b733a33323a223362623934663639336334386662333363643336326162383766643636626230223b733a33323a223536313137636363306136316636313534323433323531373035643730666330223b733a33323a223731336262656534316133333561346532366265333437313632346234393365223b733a33323a226362366663643165386335383630376534613134376432316538643635613366223b7d733a343a2268617368223b733a36353a2263623666636431653863353836303765346131343764323165386436356133662d3731336262656534316133333561346532366265333437313632346234393365223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a226665356632653938633333373066363866343761646439356635333133656165223b733a33323a223037313337393065306230616165373365626633343162313465343533656464223b733a33323a226663323564656236333233306234353266356339343032326436613466346436223b733a33323a223465313739663739613230363131646433666431376666643163346331633064223b733a33323a223036366463343134393730343037653339376331313631653937333037333838223b733a33323a223066306131363439613138353630666632323136636137643136323430373265223b733a33323a223933353261343439623137363362316436663036616533303930623965666433223b733a33323a223238383338363834613535346331333166306634636338323762663734636435223b7d733a343a2268617368223b733a36353a2232383833383638346135353463313331663066346363383237626637346364352d3933353261343439623137363362316436663036616533303930623965666433223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223335653465636431306535653261363038323332663436353438316234333536223b733a33323a223232613264383630313438313531313231636463353732353363303933336338223b733a33323a226532396139393336633334623462663163383966623136336465303531646662223b733a33323a223735313238393332663533316134396235386361373631353033346233646136223b7d733a343a2268617368223b733a36353a2237353132383933326635333161343962353863613736313530333462336461362d6532396139393336633334623462663163383966623136336465303531646662223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3935313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a223437393736303732316233613666303831363736376533623331663133393366223b733a33323a223431656434656138343766613162336235623831643031313734623833383764223b733a33323a223266326235356661316535323537373431663735353263663162356262386364223b733a33323a223239636165356537326361356432386533653466616535663133326665393934223b733a33323a223234383639626535346236643663333635306533346136376264383132383638223b733a33323a226632376466316461363838323639633264356661636536303334333262343162223b733a33323a223766613662646664333562613736373061333863333634303465313430323030223b733a33323a223661363330363336323731646361313063393937316238323338376339313037223b733a33323a223163386530313366363736613361633266616361646566373735653731306162223b733a33323a223062646661326564623839643335613866366464623061643266346630323431223b733a33323a223231326438306565383931323533636563356530626235393432616664663462223b733a33323a223133663738666166653062373864363236356132346662613862656165316434223b733a33323a223037346336333036623862393862373362316631373331633132393238653331223b733a33323a223135656631653964666235326238376466343935353830336562383432653261223b733a33323a223535666637323863663762366439623436383664383036643162326435366230223b733a33323a226466323638616336333031323066396430653262356464373039396666303931223b7d733a343a2268617368223b733a36353a2264663236386163363330313230663964306532623564643730393966663039312d3535666637323863663762366439623436383664383036643162326435366230223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587036944),
('hneujrou3cakk1ds2hqru5edj8', 0x5f5f5a467c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538363937303731302e3031383535393b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2276663865333636396867346b316b36666236356d35396b746169223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538363936383831393b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538363936383932363b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538363937343139343b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538363937343138393b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226661303632353131383062313039396665386133636461393730663064306163223b733a33323a223637323333306333666665313530363831643533363962303266333834666132223b7d733a343a2268617368223b733a36353a2236373233333063336666653135303638316435333639623032663338346661322d6661303632353131383062313039396665386133636461393730663064306163223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226337303331353932303938313836363763343365333530393037353561643735223b733a33323a223033396634363562613033306666303730366564643338323765663030326330223b7d733a343a2268617368223b733a36353a2230333966343635626130333066663037303665646433383237656630303263302d6337303331353932303938313836363763343365333530393037353561643735223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223465386333363366613632643564313337386339383533633965366564343064223b733a33323a223438313331373961316561633764313535323665303934656463326631613530223b733a33323a226132646366363234323332633461626435323066326461636130626562393264223b733a33323a223333646435616235393635383038626361613533653164383733333033656335223b733a33323a226638643563313064316537376562623139636565393732356336666162656164223b733a33323a223061623339373437626537316262613230346337306130656139313564353634223b733a33323a223533326564396435306230333037386535306139373738343366646464336364223b733a33323a226466346334353165653864643962323737613539343664663064393130643365223b7d733a343a2268617368223b733a36353a2264663463343531656538646439623237376135393436646630643931306433652d3533326564396435306230333037386535306139373738343366646464336364223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3739313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a363a7b733a33323a223033366165306361353464643430353435333138366434383262336632353535223b733a33323a223639343161393631376464363562653439373765383061396339303337663133223b733a33323a226361646230626262663935383537303663663339666531353638376531323434223b733a33323a226138346338366633383466656136663165626538666462616464353438343635223b733a33323a226265333665313531353966633633376665333965393635333837306233383661223b733a33323a226631643530653835616461643437373466653638336237383839353766646539223b733a33323a223364633231383331346238366335656332656435303931336631666366666238223b733a33323a223863363263316334643438643231353437383039333865306238303063373563223b733a33323a226565383835323532353261373930363637346262346364353265303431616231223b733a33323a223063373465333830386534393030623561333464303331616436343532323462223b733a33323a223466326164333565653864383264353038333662303534393032636566316539223b733a33323a223864393938623433396137336335323165656638666335643330393432306564223b7d733a343a2268617368223b733a36353a2238643939386234333961373363353231656566386663356433303934323065642d3466326164333565653864383264353038333662303534393032636566316539223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1586970710),
('m234ge1e7e0fjm9m6qum189r8g', 0x5f5f5a467c613a393a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373531323237332e3632313531353b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2239306e7472656c68346968643974756e65707672616e76653971223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373439313233353b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373531353836363b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373531353831393b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373531353833333b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373531353333373b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373531353039313b7d733a35363a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373531353132373b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223933343331336163333936343531306635623330623833306564303238363635223b733a33323a223632633366626539386336336165336532636539663435376630373538333830223b7d733a343a2268617368223b733a36353a2236326333666265393863363361653365326365396634353766303735383338302d3933343331336163333936343531306635623330623833306564303238363635223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a333833323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a34343a7b733a33323a226664356536353036633231313336313132613834383266343739646638333065223b733a33323a226138626239626533313237356366666562326135626565333064623937323264223b733a33323a223763396263656634383565613738623838636335373337333536353131623736223b733a33323a223135303736613231323636366163393565633836653338643130633531656436223b733a33323a226539353334326333623433346433316661376361306163663537333961613138223b733a33323a223738336130303463656238306635333966346432663365376263383832336666223b733a33323a223930396362663039353233333937376562353466636530646232353033363838223b733a33323a223336646665643066623432353030393164343637326534643237356564613361223b733a33323a223033323037376136386538313033303934386164646262376166356231316261223b733a33323a223064393232353265636264316131633235636163336236623764333630303338223b733a33323a226666633537333561656566626664333365323832633064373939343762386631223b733a33323a223561366638313734376337363531643461613432333935633033616637656537223b733a33323a226536393461373532346366346364323534666161626662326262326338393438223b733a33323a226162396264363831626462383861373761393164323335306337646333653838223b733a33323a226365383930396237623736376239383163613364333930363534613739613236223b733a33323a223034663633663861316633316362376561393138633761646432303139333762223b733a33323a223836316162333865323437663635666462333639646337386533303736323664223b733a33323a226531313865323738316230303065366461373837636634326238653033333932223b733a33323a226134333864386234646433303236633230303966363137663636323834643866223b733a33323a226438396462303164313666353862353833663234323162643966633138363837223b733a33323a226562353238356432356162353837386639396166386436633333653163626535223b733a33323a223036303964363234383732363662346461393639613232343064373936333063223b733a33323a226432336437323361363836346362656338303232356165613235626536383165223b733a33323a226338383534353630363039386330613161313738363538623639626335333832223b733a33323a226438623065653330396561393733376430616536303435626139316531623333223b733a33323a223631623038376166356165343461303933336363616266393536653831313431223b733a33323a223139346466306134333530623831663639343861643335626539666264366263223b733a33323a223235393335666132633964323665303432383236313762323631383034313163223b733a33323a226139366234633837346636363133373438376366363239396137626537353030223b733a33323a223636356261633263616164323431653462316365373537393164633865323930223b733a33323a223231386330643037626362353965646236666665323262356631353361363438223b733a33323a223632383664663332336466383332313334363966636439633862633538613962223b733a33323a223432343736663235323866626534613761343831306135396534383565336536223b733a33323a223530643665636333636534393861663265363230653362636535373132376336223b733a33323a223331383564663961363936613962613734626538326338363330663634653430223b733a33323a223837303435613565326434623632663036663764313830313863643064356636223b733a33323a226637303562383136393161323336663261333061356266656562623134663962223b733a33323a226563666361336630303236376231316630626338643161373962316438343662223b733a33323a226134313234623361353131316335633637336637336661383035383965373130223b733a33323a226436386139316234306663366438313239353064303936623666303066613738223b733a33323a226261643735396539653931613336653430653761633332653062613531346131223b733a33323a226563623165386262636633653266616232666232386363636136623363306436223b733a33323a223835636266343839303239336537306435333666653430323237323462636561223b733a33323a223631633866313830343737356661373230303765623530633539383637383634223b733a33323a226339383763306531383966306536306232613663366632303831353136313730223b733a33323a223933313162346439616336646238666532663137316335623466396238393433223b733a33323a223937656639313539626132636331653162393936326237663764663033663433223b733a33323a223761353163356638323239663066336333653132656561646137306232643366223b733a33323a223561613464613863336637313664323036663130396538376663343337626331223b733a33323a223164343366646565356436616366356463373662666332336238373534343264223b733a33323a223135633535633339303237663536383262663034343639613862626130636436223b733a33323a223465363233323738616263313366386534666664633164383931353766393430223b733a33323a223034616161636563616264373837323635653862366566346361663438366434223b733a33323a226663636638393065333937656661666163346134333834636233643637376432223b733a33323a226265383065383433326432636238356537353839376334353932653234316363223b733a33323a223664663330336535643035663365343936336464643935356131656364313339223b733a33323a223130636163396437623930386630636365313161623766633664386633396430223b733a33323a226431363132666663343534396461366162383266393861383137303061393631223b733a33323a223464396563393130623961396134393930613737386665356534313239626265223b733a33323a223338316131663661623539656561643463316131386233316232343539393631223b733a33323a223639306231363462343864336364373536353861356132623530666361326333223b733a33323a223935313330306230336564363530316364346362623836383031353466616664223b733a33323a223263336662326363383762316438656561373065613838356337383964353930223b733a33323a223235306336356634383865663865313932666633383833336437326131613538223b733a33323a226531393161303735326661386631343334646336653038363666616631313335223b733a33323a223866663734613734336631646164373361373334623234653566623038326537223b733a33323a226663303535646237316361626634633535626230616131333238356663396262223b733a33323a223431326630383739356466303331313566376532386662663637646634633337223b733a33323a223363303139633035623935656535666633636364623138366563666633396264223b733a33323a226263643134636135373636373939333535636362356434646232666562366165223b733a33323a223861366536373135306131383431343361636263366431356137643164393636223b733a33323a226664323966643765626361623532653666663863613064333937636264353738223b733a33323a223137366530396262653165623361616361306633383066353830663165393630223b733a33323a223166663337643134363438663964376237383135373764346632396635366265223b733a33323a226166353935643566376634356439643964393031353839623436653834343861223b733a33323a226439393136366137373535623366386334323830643738373233323138356536223b733a33323a226430313836336134613330333531663163313465353934323736383864383264223b733a33323a223830326332303839376561636336356435373638376665666133343737363938223b733a33323a223736386533363035303937656635386461623764363630656439616662653861223b733a33323a223531303436623633376631363833383733383961623762643363363136306363223b733a33323a223163663036323162383637663638376131396638343634393932363331306436223b733a33323a223238326262336137363763333035346564626462376139636163333865633464223b733a33323a226231336464326635333662663430343537666365343037316231393531653435223b733a33323a223937316638353862353162383261336231353361653234623734653461663266223b733a33323a223338323031326335323265303034303537636531613433393639326637316363223b733a33323a223366343037396136343331623135623937373434383132623663623665353664223b733a33323a226433633535303731373430323536363536323237383664656664643761636535223b733a33323a223132303232373438663937643235636238316562633130626366333163393261223b7d733a343a2268617368223b733a36353a2231323032323734386639376432356362383165626331306263663331633932612d6433633535303731373430323536363536323237383664656664643761636535223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313931323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32303a7b733a33323a226532393166323738303935393562353230616432363366363534626635306139223b733a33323a226530396238333534306637633938393364323661336536613961663566653335223b733a33323a226533643031303036336235626131383636346637383438623164336564353663223b733a33323a226465626237656439333332393235643735616564353735316261616436316434223b733a33323a226434353539383462346536366538643534613961646234656436343565333331223b733a33323a226461393937303735323333353235613134656333333030643235343962653838223b733a33323a226238376530613262333938386530653433353965316433323164646133363265223b733a33323a223434386431363566323266303930303039333130363331323136383630353438223b733a33323a226131366565373930373264643539303162643266383238393931633630393531223b733a33323a223034396337633063666433353732616430363337356439373061646232356335223b733a33323a223261666434646537313735613263343135636535336138366361633634326162223b733a33323a223862366535333839646537396166313138333939396535646131663166613538223b733a33323a226666323438393837663238633938326231626339386365363134383536306362223b733a33323a226164396562313732373334313364363939623562356662646631643931323063223b733a33323a223333353637353830613531316566653461616338373761616237303964366536223b733a33323a223335376438373730613834376136343539656633363431363633316439373564223b733a33323a226337383638343333363435623930646139613834663364653532643162343831223b733a33323a226633333136376265643136303136336230663537303531363664346637393463223b733a33323a223731666131623133386533646563376530396632393238376435663162343930223b733a33323a223733363036316664316538656433643932333138663834636465323232646333223b733a33323a223734376330396166313763643231643461313638383530323162366461646534223b733a33323a223130316561383737363339616262633365313033663434356530303362313164223b733a33323a223961366664643761333336396266346334356362303332663131313665356430223b733a33323a223538663638343331313331636636396438396362666266366331326336666666223b733a33323a226533363338373664353733353864323036643032353065356534623637653731223b733a33323a226133356235356133323636326335633263323838663665346636376338366665223b733a33323a226363366238376263303138343039663332623566353831643032353133383337223b733a33323a223261333963643036303164356663666634653531633938613964346130383035223b733a33323a226237306461366461373464306235626234303761396536633637613666373038223b733a33323a223061316635653465356631373461363035326236666265343833666566616636223b733a33323a223964663238643037626262643936393335656362623936346163346462616333223b733a33323a226266323536613936633735323337613639393065366164663961356336353732223b733a33323a223233366338343665333139336561336337346137633565313636373763343635223b733a33323a226265373434623034333530376337343437313161313266363232633563623435223b733a33323a226637366165316339633535366433653162666663323666623837333134343838223b733a33323a226638623532663766396136663965623734653731646531336666646238663961223b733a33323a223137323731613539313064613234613537393964653763333137323039326438223b733a33323a226531356537613434316363386163366434313938663839653062373531303633223b733a33323a223166396436396366353432396262636266303332313735333832643063623833223b733a33323a226436666235623564393362386439633531636534353165333835653966353835223b7d733a343a2268617368223b733a36353a2264366662356235643933623864396335316365343531653338356539663538352d3166396436396366353432396262636266303332313735333832643063623833223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313237323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31323a7b733a33323a226238373830626339346365333966623734363935643566626663323934633837223b733a33323a223434626661363561336664633333396562373761663734393138326364633461223b733a33323a223263376139313536303461613030653262326561363635353461613463396336223b733a33323a223037643335373839393963333030376361373131623265363934666137306464223b733a33323a223061613235356637343063303561653031666330323866366662316234643031223b733a33323a223833626461393435666332366462653733343861656663363233633062626438223b733a33323a223662653231626462363563656366633534383632623838366334323466306365223b733a33323a223430626265376430313833663465663463366235616263326365323764353839223b733a33323a223964643565373035396536393935363162333634393565643137613236363738223b733a33323a223137633735336135653339353835623930623232643932653534396236616530223b733a33323a226664376462306332383039383136636536373164343766663939643065396331223b733a33323a223063363663383963376633336636646231366435656630343366366532333363223b733a33323a226462373764663338663635383064373434313966313234373562666434316561223b733a33323a226665313136656136393434396533376431383431306634356535346439303366223b733a33323a226263643938666331373464323063663464636233633332366164346665643566223b733a33323a223735633263346436316463393439656430396563343431343732343339653863223b733a33323a226639316136613730386330323566623634653839383333353865656230313737223b733a33323a223865376664326465363963356332373134346534303637393632333166336465223b733a33323a223365316534323762383863646331306635653065653039346535383565393461223b733a33323a223831343538336235663932313261663865393962373738623431396363396331223b733a33323a223562393032316166393131346131653162303366653363343133656565633331223b733a33323a226563333837663630356634623533306434336234343134383465383930613865223b733a33323a223938346333376364313864333231323963313535656532396166636665333363223b733a33323a223237323632613630366133346261353738633832366130333437333436373237223b7d733a343a2268617368223b733a36353a2232373236326136303661333462613537386338323661303334373334363732372d3938346333376364313864333231323963313535656532396166636665333363223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313833323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31393a7b733a33323a226638373138306431636432346136323331333065333464613536613066613332223b733a33323a226365656437656135623637653736326362316137613431393961343464366532223b733a33323a223735343661333234306539393065313561326334376266323165323037323931223b733a33323a226461633638313336316232313331646362323631363961626632376234353864223b733a33323a223165383530333461663038393538393861643463306539336435316132343239223b733a33323a223362376563316133613465643335366438666661616561666266356236636336223b733a33323a226666303062363663643563633034346665383461613738636666633037646665223b733a33323a226635303632376133363831663362623662666539656533363332303537313032223b733a33323a223963303966653962636334366664326630646531623765656462633739613365223b733a33323a223161323663653538373662313731353564383737366361663039346464363233223b733a33323a223937303735313363386166363635353432643864306164666363383238386562223b733a33323a226131343861323832666439313363343862623238323431636464636165616632223b733a33323a223639613631626364396362396632316165616136663438323834666530353235223b733a33323a223334373236326130326337613463353365613763313834303138626539666161223b733a33323a223962316562616138666465353162613965616564643935626262343630613231223b733a33323a223232383838633133373464336163353066346130306132666637306533316539223b733a33323a223432393261393465643233663561316234623237613365316365386630323664223b733a33323a223034313130633132303761633133313736613336656438626665303061346564223b733a33323a226233366664353030616436653835626364636161376562376463653236386339223b733a33323a223362633661353264613362623935313863353439663366383637626361383130223b733a33323a223061643237666163613535666366363238303634373463396238643437396632223b733a33323a223433626132633938633863333539626434646261633931636230366434386537223b733a33323a226234323133346139333935666138313361366561313562316264373733643031223b733a33323a226533303932626363306138356330376434613639356239643763363831356361223b733a33323a226365303563633862313234646630376534326234343961363865386430343430223b733a33323a226430323631393666636439326265663338313461393837373831366638626235223b733a33323a223332313336653865316361386331363765366235313838393538633234393664223b733a33323a223038343862396435363135313238393830313362616132653439376662626439223b733a33323a226539373937356566353732333362363037323134343939626665626130356262223b733a33323a223432646463383930383836383661653130626638343565646461656164663436223b733a33323a223064356364396164336530386563383235626463396133616162383335666630223b733a33323a223533663436646635316433383831626136646261663864656563316132376562223b733a33323a223430393665623831346537323261343234396431626337373830346632323132223b733a33323a223366623834666534636461326332386264336131303934386562663464646530223b733a33323a226363643738323461303339346130363131643638616538336136373161663836223b733a33323a226265663437633733613138636438663339626333643732396136393039633061223b733a33323a226232313035643238353962636636663561323932383533393163646534616365223b733a33323a226165336665666235373233643434326132303162663765643930303263376633223b7d733a343a2268617368223b733a36353a2261653366656662353732336434343261323031626637656439303032633766332d6232313035643238353962636636663561323932383533393163646534616365223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a226463373139353266376663313136333363323639636434666337666635323338223b733a33323a223531306537333337643235303661643832396337303766613865306164616565223b733a33323a223739313831333139643033623964313539646263386435653630356464306135223b733a33323a226264336630363336316437616232313139346234616366383638646538616433223b733a33323a223265303461613864336239633233396438353731343433373464326533393531223b733a33323a226636353361613632363064393137356361623436326630616237376631303834223b733a33323a223262326463386235643565616166613133383735393161323436316364636136223b733a33323a226637633838386234613864383466303538623831396164343737393462376133223b733a33323a226137616131613335393838376132353663366465396361383538663265636634223b733a33323a223531333936353332383434623537623830373630343530336435376439386464223b7d733a343a2268617368223b733a36353a2235313339363533323834346235376238303736303435303364353764393864642d6137616131613335393838376132353663366465396361383538663265636634223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226430393564636131343833643965383363363336383836316439313737623065223b733a33323a226266643161643736376431656439623031353762663164343935346266623537223b7d733a343a2268617368223b733a36353a2262666431616437363764316564396230313537626631643439353462666235372d6430393564636131343833643965383363363336383836316439313737623065223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587512273);

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

CREATE TABLE `setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `setting`
--

INSERT INTO `setting` (`id`, `value`) VALUES
('administrator_email', '\"maxime.ratel.auditeur@lecnam.net\"'),
('default_site', '\"\"'),
('default_to_private', '\"0\"'),
('disable_file_validation', '\"0\"'),
('disable_jsonld_embed', '\"0\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"Omeka S\"'),
('locale', '\"fr\"'),
('media_type_whitelist', '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
('pagination_per_page', '\"25\"'),
('property_label_information', '\"term\"'),
('recaptcha_secret_key', '\"\"'),
('recaptcha_site_key', '\"\"'),
('time_zone', '\"Europe\\/Paris\"'),
('use_htmlpurifier', '\"0\"'),
('version', '\"2.1.1\"'),
('version_notifications', '\"1\"');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
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
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_block_attachment`
--

CREATE TABLE `site_block_attachment` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `caption` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_item_set`
--

CREATE TABLE `site_item_set` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page`
--

CREATE TABLE `site_page` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page_block`
--

CREATE TABLE `site_page_block` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `layout` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_permission`
--

CREATE TABLE `site_permission` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'maxime.ratel.auditeur@lecnam.net', 'Maxime Ratel', '2020-04-15 15:40:18', '2020-04-15 15:40:18', '$2y$10$Y4KCF7A6VuvVWPG8RNndC.eYzvjpobYixawA.2rnPnSMphNmo993y', 'global_admin', 1),
(2, 'samuel.szoniecky@univ-paris8.fr', 'Samuel Szoniecky', '2020-04-15 17:08:52', '2020-04-17 11:56:44', '$2y$10$9cDI349G/Cuv.OViGhO7Augm5iW6Ei21hFWZYUMUAatFmedLooHMq', 'global_admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_setting`
--

CREATE TABLE `user_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
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

CREATE TABLE `value` (
  `id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value_resource_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(3, 4, 10, NULL, 'literal', '', 'Jean-Pascal Ciboulette', NULL, 1),
(4, 4, 140, NULL, 'literal', '', 'Ciboulette', NULL, 1),
(5, 4, 139, NULL, 'literal', '', 'Jean-Pascal', NULL, 1),
(6, 4, 215, NULL, 'literal', '', '17/04/1968', NULL, 1),
(7, 4, 146, NULL, 'literal', '', '0645643365', NULL, 1),
(8, 4, 216, NULL, 'literal', '', 'jeanpascalciboulette@wanadoo.fr', NULL, 1),
(9, 4, 125, NULL, 'literal', '', 'Homme', NULL, 1),
(11, 5, 10, NULL, 'literal', '', 'Jean-Frédéric Safran ', NULL, 1),
(12, 5, 140, NULL, 'literal', '', 'Safran', NULL, 1),
(13, 5, 139, NULL, 'literal', '', 'Jean-Frédéric', NULL, 1),
(14, 5, 215, NULL, 'literal', '', '12/12/1976', NULL, 1),
(15, 5, 146, NULL, 'literal', '', '0649239786', NULL, 1),
(16, 5, 216, NULL, 'literal', '', 'jeanfredericsafran@gmail.com', NULL, 1),
(17, 5, 125, NULL, 'literal', '', 'Homme', NULL, 1),
(19, 6, 10, NULL, 'literal', '', 'Jean-Michel Coriandre', NULL, 1),
(20, 6, 140, NULL, 'literal', '', 'Coriandre', NULL, 1),
(21, 6, 139, NULL, 'literal', '', 'Jean-Michel', NULL, 1),
(22, 6, 215, NULL, 'literal', '', '30/06/1990', NULL, 1),
(23, 6, 146, NULL, 'literal', '', '0765121232', NULL, 1),
(24, 6, 216, NULL, 'literal', '', 'jeanmichelcoriandre@outlook.fr', NULL, 1),
(25, 6, 125, NULL, 'literal', '', 'Homme', NULL, 1),
(26, 7, 10, NULL, 'literal', '', 'Jean-François Moutarde', NULL, 1),
(27, 7, 140, NULL, 'literal', '', 'Moutarde', NULL, 1),
(28, 7, 139, NULL, 'literal', '', 'Jean-François', NULL, 1),
(29, 7, 215, NULL, 'literal', '', '24/05/1984', NULL, 1),
(30, 7, 146, NULL, 'literal', '', '0656904310', NULL, 1),
(31, 7, 216, NULL, 'literal', '', 'jfmoutarde@gmail.com', NULL, 1),
(32, 7, 125, NULL, 'literal', '', 'Homme', NULL, 1),
(34, 8, 10, NULL, 'literal', '', 'Octavia Tran', NULL, 1),
(35, 8, 140, NULL, 'literal', '', 'Tran', NULL, 1),
(36, 8, 139, NULL, 'literal', '', 'Octavia', NULL, 1),
(37, 8, 215, NULL, 'literal', '', '14/03/1997', NULL, 1),
(38, 8, 146, NULL, 'literal', '', '0657600104', NULL, 1),
(39, 8, 216, NULL, 'literal', '', 'octaoctatran@outlook.fr', NULL, 1),
(40, 8, 125, NULL, 'literal', '', 'Femme', NULL, 1),
(42, 10, 10, NULL, 'literal', '', 'Albert Reporter', NULL, 1),
(43, 10, 140, NULL, 'literal', '', 'Reporter', NULL, 1),
(44, 10, 139, NULL, 'literal', '', 'Albert', NULL, 1),
(45, 10, 215, NULL, 'literal', '', '19/08/1995', NULL, 1),
(46, 10, 146, NULL, 'literal', '', '0743509248', NULL, 1),
(47, 10, 216, NULL, 'literal', '', 'albertreporter@gmail.com', NULL, 1),
(48, 10, 125, NULL, 'literal', '', 'Homme', NULL, 1),
(49, 11, 10, NULL, 'literal', '', 'Aénor Toy ', NULL, 1),
(50, 11, 140, NULL, 'literal', '', 'Toy', NULL, 1),
(51, 11, 139, NULL, 'literal', '', 'Aénor', NULL, 1),
(52, 11, 215, NULL, 'literal', '', '12/12/1999', NULL, 1),
(53, 11, 146, NULL, 'literal', '', '0649080264', NULL, 1),
(54, 11, 216, NULL, 'literal', '', 'aenortoy@outlook.fr', NULL, 1),
(55, 11, 125, NULL, 'literal', '', 'Femme', NULL, 1),
(56, 12, 10, NULL, 'literal', '', 'Charlotte Pirelli', NULL, 1),
(57, 12, 140, NULL, 'literal', '', 'Pirelli', NULL, 1),
(58, 12, 139, NULL, 'literal', '', 'Charlotte', NULL, 1),
(59, 12, 215, NULL, 'literal', '', '12/04/1985', NULL, 1),
(60, 12, 146, NULL, 'literal', '', '0678939804', NULL, 1),
(61, 12, 216, NULL, 'literal', '', 'charlottepirelli@gmail.com', NULL, 1),
(62, 12, 125, NULL, 'literal', '', 'Femme', NULL, 1),
(63, 13, 10, NULL, 'literal', '', 'Mathilde Senior', NULL, 1),
(64, 13, 140, NULL, 'literal', '', 'Senior', NULL, 1),
(65, 13, 139, NULL, 'literal', '', 'Mathilde', NULL, 1),
(66, 13, 215, NULL, 'literal', '', '19/03/1989', NULL, 1),
(67, 13, 146, NULL, 'literal', '', '0671080456', NULL, 1),
(68, 13, 216, NULL, 'literal', '', 'matgildesenior@outlook.fr', NULL, 1),
(69, 13, 125, NULL, 'literal', '', 'Femme', NULL, 1),
(70, 14, 10, NULL, 'literal', '', 'Sophie Miller', NULL, 1),
(71, 14, 140, NULL, 'literal', '', 'Miller', NULL, 1),
(72, 14, 139, NULL, 'literal', '', 'Sophie', NULL, 1),
(73, 14, 215, NULL, 'literal', '', '15/11/1980', NULL, 1),
(74, 14, 146, NULL, 'literal', '', '0789253469', NULL, 1),
(75, 14, 216, NULL, 'literal', '', 'sophiemiller@gmail.com', NULL, 1),
(76, 14, 125, NULL, 'literal', '', 'Femme', NULL, 1),
(77, 15, 10, NULL, 'literal', '', 'Adresse Mme Tran', NULL, 1),
(78, 15, 209, NULL, 'literal', '', '6', NULL, 1),
(79, 15, 210, NULL, 'literal', '', 'Rue du bout du monde', NULL, 1),
(80, 15, 211, NULL, 'literal', '', '75009', NULL, 1),
(81, 15, 226, NULL, 'literal', '', 'Paris', NULL, 1),
(82, 15, 230, 8, 'resource:item', NULL, NULL, NULL, 1),
(83, 16, 10, NULL, 'literal', '', 'Adresse Mme Toy', NULL, 1),
(84, 16, 209, NULL, 'literal', '', '54', NULL, 1),
(85, 16, 210, NULL, 'literal', '', 'avenue des Champs', NULL, 1),
(86, 16, 211, NULL, 'literal', '', '75010', NULL, 1),
(87, 16, 226, NULL, 'literal', '', 'Paris', NULL, 1),
(88, 16, 230, 11, 'resource:item', NULL, NULL, NULL, 1),
(89, 17, 10, NULL, 'literal', '', 'Adresse Mme Miller', NULL, 1),
(90, 17, 209, NULL, 'literal', '', '69', NULL, 1),
(91, 17, 210, NULL, 'literal', '', 'boulevard Saint-Antoine', NULL, 1),
(92, 17, 211, NULL, 'literal', '', '75007', NULL, 1),
(93, 17, 226, NULL, 'literal', '', 'Paris', NULL, 1),
(94, 17, 230, 14, 'resource:item', NULL, NULL, NULL, 1),
(95, 18, 10, NULL, 'literal', '', 'Adresse Mme Senior', NULL, 1),
(96, 18, 209, NULL, 'literal', '', '23', NULL, 1),
(97, 18, 210, NULL, 'literal', '', 'rue de la montagne', NULL, 1),
(98, 18, 211, NULL, 'literal', '', '69000', NULL, 1),
(99, 18, 226, NULL, 'literal', '', 'Lyon', NULL, 1),
(100, 18, 230, 13, 'resource:item', NULL, NULL, NULL, 1),
(101, 19, 10, NULL, 'literal', '', 'Adresse Mme Pirelli', NULL, 1),
(102, 19, 209, NULL, 'literal', '', '10', NULL, 1),
(103, 19, 210, NULL, 'literal', '', 'place de la mairie', NULL, 1),
(104, 19, 211, NULL, 'literal', '', '78000', NULL, 1),
(105, 19, 226, NULL, 'literal', '', 'Versailles', NULL, 1),
(106, 19, 230, 12, 'resource:item', NULL, NULL, NULL, 1),
(107, 20, 10, NULL, 'literal', '', 'Adresse M Reporter', NULL, 1),
(108, 20, 209, NULL, 'literal', '', '15', NULL, 1),
(109, 20, 210, NULL, 'literal', '', 'avenue des oiseaux', NULL, 1),
(110, 20, 211, NULL, 'literal', '', '57000', NULL, 1),
(111, 20, 226, NULL, 'literal', '', 'Metz', NULL, 1),
(112, 20, 230, 10, 'resource:item', NULL, NULL, NULL, 1),
(113, 21, 10, NULL, 'literal', '', 'Adresse M Moutarde', NULL, 1),
(114, 21, 209, NULL, 'literal', '', '45', NULL, 1),
(115, 21, 210, NULL, 'literal', '', 'rue du paradis', NULL, 1),
(116, 21, 211, NULL, 'literal', '', '28000', NULL, 1),
(117, 21, 226, NULL, 'literal', '', 'Dreux', NULL, 1),
(118, 21, 230, 7, 'resource:item', NULL, NULL, NULL, 1),
(119, 22, 10, NULL, 'literal', '', 'Adresse M Coriandre', NULL, 1),
(120, 22, 209, NULL, 'literal', '', '1', NULL, 1),
(121, 22, 210, NULL, 'literal', '', 'impasse du midi', NULL, 1),
(122, 22, 211, NULL, 'literal', '', '34000', NULL, 1),
(123, 22, 226, NULL, 'literal', '', 'Montpellier', NULL, 1),
(124, 22, 230, 6, 'resource:item', NULL, NULL, NULL, 1),
(125, 23, 10, NULL, 'literal', '', 'Adresse M Safran', NULL, 1),
(126, 23, 209, NULL, 'literal', '', '8', NULL, 1),
(127, 23, 210, NULL, 'literal', '', 'rue des champs', NULL, 1),
(128, 23, 211, NULL, 'literal', '', '76000', NULL, 1),
(129, 23, 226, NULL, 'literal', '', 'Rouen', NULL, 1),
(130, 23, 230, 5, 'resource:item', NULL, NULL, NULL, 1),
(131, 24, 10, NULL, 'literal', '', 'Adresse M Ciboulette', NULL, 1),
(132, 24, 209, NULL, 'literal', '', '9', NULL, 1),
(133, 24, 210, NULL, 'literal', '', 'rue des coquelicots', NULL, 1),
(134, 24, 211, NULL, 'literal', '', '06000', NULL, 1),
(135, 24, 226, NULL, 'literal', '', 'Nice', NULL, 1),
(136, 24, 230, 4, 'resource:item', NULL, NULL, NULL, 1),
(137, 25, 10, NULL, 'literal', '', 'n°0123456789', NULL, 1),
(138, 25, 227, NULL, 'literal', '', '1', NULL, 1),
(139, 25, 206, NULL, 'literal', '', '40€', NULL, 1),
(140, 25, 207, NULL, 'literal', '', '50€', NULL, 1),
(141, 25, 228, NULL, 'literal', '', '14/04/2020', NULL, 1),
(142, 25, 230, 14, 'resource:item', NULL, NULL, NULL, 1),
(143, 26, 10, NULL, 'literal', '', 'n°0345678912', NULL, 1),
(144, 26, 227, NULL, 'literal', '', '1', NULL, 1),
(145, 26, 206, NULL, 'literal', '', '80', NULL, 1),
(146, 26, 207, NULL, 'literal', '', '100', NULL, 1),
(147, 26, 228, NULL, 'literal', '', '13/02/2020', NULL, 1),
(148, 26, 230, 13, 'resource:item', NULL, NULL, NULL, 1),
(149, 27, 10, NULL, 'literal', '', 'n°0234567891', NULL, 1),
(150, 27, 227, NULL, 'literal', '', '1', NULL, 1),
(151, 27, 206, NULL, 'literal', '', '80', NULL, 1),
(152, 27, 207, NULL, 'literal', '', '100', NULL, 1),
(153, 27, 228, NULL, 'literal', '', '19/01/2020', NULL, 1),
(154, 27, 230, 12, 'resource:item', NULL, NULL, NULL, 1),
(155, 28, 10, NULL, 'literal', '', 'n°0456789123', NULL, 1),
(156, 28, 227, NULL, 'literal', '', '1', NULL, 1),
(157, 28, 206, NULL, 'literal', '', '40', NULL, 1),
(158, 28, 207, NULL, 'literal', '', '50', NULL, 1),
(159, 28, 228, NULL, 'literal', '', '12/05/2020', NULL, 1),
(160, 28, 230, 11, 'resource:item', NULL, NULL, NULL, 1),
(161, 29, 10, NULL, 'literal', '', 'n°0567891234', NULL, 1),
(162, 29, 227, NULL, 'literal', '', '1', NULL, 1),
(163, 29, 206, NULL, 'literal', '', '8', NULL, 1),
(164, 29, 207, NULL, 'literal', '', '10', NULL, 1),
(165, 29, 228, NULL, 'literal', '', '20/03/2020', NULL, 1),
(166, 29, 230, 10, 'resource:item', NULL, NULL, NULL, 1),
(167, 30, 10, NULL, 'literal', '', 'n°0678912345', NULL, 1),
(168, 30, 227, NULL, 'literal', '', '1', NULL, 1),
(169, 30, 206, NULL, 'literal', '', '88', NULL, 1),
(170, 30, 207, NULL, 'literal', '', '110', NULL, 1),
(171, 30, 228, NULL, 'literal', '', '08/03/2020', NULL, 1),
(172, 30, 230, 8, 'resource:item', NULL, NULL, NULL, 1),
(173, 31, 10, NULL, 'literal', '', 'n°0789123456', NULL, 1),
(174, 31, 227, NULL, 'literal', '', '1', NULL, 1),
(175, 31, 206, NULL, 'literal', '', '24', NULL, 1),
(176, 31, 207, NULL, 'literal', '', '30', NULL, 1),
(177, 31, 228, NULL, 'literal', '', '30/03/2020', NULL, 1),
(178, 31, 230, 7, 'resource:item', NULL, NULL, NULL, 1),
(179, 32, 10, NULL, 'literal', '', 'n°0891234567', NULL, 1),
(180, 32, 227, NULL, 'literal', '', '1 ', NULL, 1),
(181, 32, 206, NULL, 'literal', '', '24', NULL, 1),
(182, 32, 207, NULL, 'literal', '', '30', NULL, 1),
(183, 32, 228, NULL, 'literal', '', '27/12/2019', NULL, 1),
(184, 32, 230, 6, 'resource:item', NULL, NULL, NULL, 1),
(185, 33, 10, NULL, 'literal', '', 'n°0912345678', NULL, 1),
(186, 33, 227, NULL, 'literal', '', '1', NULL, 1),
(187, 33, 206, NULL, 'literal', '', '16', NULL, 1),
(188, 33, 207, NULL, 'literal', '', '20', NULL, 1),
(189, 33, 228, NULL, 'literal', '', '19/01/2020', NULL, 1),
(190, 33, 230, 5, 'resource:item', NULL, NULL, NULL, 1),
(191, 34, 10, NULL, 'literal', '', 'n°0923145678', NULL, 1),
(192, 34, 227, NULL, 'literal', '', '1', NULL, 1),
(193, 34, 206, NULL, 'literal', '', '80', NULL, 1),
(194, 34, 207, NULL, 'literal', '', '100', NULL, 1),
(195, 34, 228, NULL, 'literal', '', '27/02/2020', NULL, 1),
(196, 34, 230, 4, 'resource:item', NULL, NULL, NULL, 1),
(197, 35, 10, NULL, 'literal', '', '2345678901', NULL, 1),
(198, 35, 203, NULL, 'literal', '', 'Aspirateur', NULL, 1),
(199, 35, 204, NULL, 'literal', '', '100€', NULL, 1),
(200, 35, 232, 27, 'resource:item', NULL, NULL, NULL, 1),
(202, 36, 10, NULL, 'literal', '', '2456789013', NULL, 1),
(203, 36, 203, NULL, 'literal', '', 'Sac à dos', NULL, 1),
(204, 36, 204, NULL, 'literal', '', '100€', NULL, 1),
(205, 36, 232, 26, 'resource:item', NULL, NULL, NULL, 1),
(207, 4, 229, 24, 'resource:item', NULL, NULL, NULL, 1),
(208, 4, 231, 54, 'resource:item', NULL, NULL, NULL, 1),
(209, 37, 10, NULL, 'literal', '', '25678901234', NULL, 1),
(210, 37, 203, NULL, 'literal', '', 'Console', NULL, 1),
(211, 37, 4, NULL, 'literal', '', 'Console de jeux-vidéo', NULL, 1),
(212, 37, 204, NULL, 'literal', '', '100€', NULL, 1),
(213, 37, 232, 34, 'resource:item', NULL, NULL, NULL, 1),
(214, 38, 10, NULL, 'literal', '', '2678901345', NULL, 1),
(215, 38, 203, NULL, 'literal', '', 'Batterie externe', NULL, 1),
(216, 38, 204, NULL, 'literal', '', '20€', NULL, 1),
(217, 38, 232, 33, 'resource:item', NULL, NULL, NULL, 1),
(218, 39, 10, NULL, 'literal', '', '2789013456', NULL, 1),
(219, 39, 203, NULL, 'literal', '', 'Bon d\'achat ', NULL, 1),
(220, 39, 4, NULL, 'literal', '', 'Bon d\'achat d\'une valeur de 30€ utilisable dans la durée d\'un an', NULL, 1),
(221, 39, 204, NULL, 'literal', '', '30€', NULL, 1),
(222, 39, 232, 32, 'resource:item', NULL, NULL, NULL, 1),
(223, 40, 10, NULL, 'literal', '', '2890134567', NULL, 1),
(224, 40, 203, NULL, 'literal', '', 'Clavier d\'ordinateur', NULL, 1),
(225, 40, 204, NULL, 'literal', '', '30€', NULL, 1),
(226, 40, 232, 31, 'resource:item', NULL, NULL, NULL, 1),
(227, 41, 10, NULL, 'literal', '', '2901345678', NULL, 1),
(228, 41, 203, NULL, 'literal', '', 'Mixeur', NULL, 1),
(229, 41, 204, NULL, 'literal', '', '110€', NULL, 1),
(230, 41, 232, 30, 'resource:item', NULL, NULL, NULL, 1),
(231, 42, 10, NULL, 'literal', '', '2013456789', NULL, 1),
(232, 42, 203, NULL, 'literal', '', 'Clé USB', NULL, 1),
(233, 42, 204, NULL, 'literal', '', '10€', NULL, 1),
(234, 42, 232, 29, 'resource:item', NULL, NULL, NULL, 1),
(235, 43, 10, NULL, 'literal', '', '2134567890', NULL, 1),
(236, 43, 203, NULL, 'literal', '', 'Jeu vidéo', NULL, 1),
(237, 43, 204, NULL, 'literal', '', '50€', NULL, 1),
(238, 43, 232, 28, 'resource:item', NULL, NULL, NULL, 1),
(239, 44, 10, NULL, 'literal', '', '2234567890', NULL, 1),
(240, 44, 203, NULL, 'literal', '', 'Casque de son', NULL, 1),
(241, 44, 204, NULL, 'literal', '', '50€', NULL, 1),
(242, 44, 232, 25, 'resource:item', NULL, NULL, NULL, 1),
(243, 45, 10, NULL, 'literal', '', 'n°45679872', NULL, 1),
(244, 45, 212, NULL, 'literal', '', '12/11/2019', NULL, 1),
(245, 45, 213, NULL, 'literal', '', '1000', NULL, 1),
(246, 45, 214, NULL, 'literal', '', 'Prenium', NULL, 1),
(247, 45, 230, 14, 'resource:item', NULL, NULL, NULL, 1),
(248, 45, 232, 25, 'resource:item', NULL, NULL, NULL, 1),
(249, 46, 10, NULL, 'literal', '', 'n°15487236', NULL, 1),
(250, 46, 212, NULL, 'literal', '', '23/03/2018', NULL, 1),
(251, 46, 213, NULL, 'literal', '', '1500', NULL, 1),
(252, 46, 214, NULL, 'literal', '', 'Prenium', NULL, 1),
(253, 46, 230, 13, 'resource:item', NULL, NULL, NULL, 1),
(254, 46, 232, 26, 'resource:item', NULL, NULL, NULL, 1),
(255, 47, 10, NULL, 'literal', '', 'n°75340974', NULL, 1),
(256, 47, 212, NULL, 'literal', '', '20/06/2019', NULL, 1),
(257, 47, 213, NULL, 'literal', '', '1300', NULL, 1),
(258, 47, 214, NULL, 'literal', '', 'Prenium', NULL, 1),
(259, 47, 230, 12, 'resource:item', NULL, NULL, NULL, 1),
(260, 47, 232, 27, 'resource:item', NULL, NULL, NULL, 1),
(261, 48, 10, NULL, 'literal', '', 'n°23854901', NULL, 1),
(262, 48, 212, NULL, 'literal', '', '19/11/2018', NULL, 1),
(263, 48, 213, NULL, 'literal', '', '2400', NULL, 1),
(264, 48, 214, NULL, 'literal', '', 'Gold', NULL, 1),
(265, 48, 230, 11, 'resource:item', NULL, NULL, NULL, 1),
(266, 48, 232, 28, 'resource:item', NULL, NULL, NULL, 1),
(267, 49, 10, NULL, 'literal', '', 'n°76309547', NULL, 1),
(268, 49, 212, NULL, 'literal', '', '19/09/2019', NULL, 1),
(269, 49, 213, NULL, 'literal', '', '800', NULL, 1),
(270, 49, 214, NULL, 'literal', '', 'Intermédiaire', NULL, 1),
(271, 49, 230, 10, 'resource:item', NULL, NULL, NULL, 1),
(272, 49, 232, 29, 'resource:item', NULL, NULL, NULL, 1),
(273, 50, 10, NULL, 'literal', '', 'n°95679218', NULL, 1),
(274, 50, 212, NULL, 'literal', '', '27/08/2018', NULL, 1),
(275, 50, 213, NULL, 'literal', '', '2150', NULL, 1),
(276, 50, 214, NULL, 'literal', '', 'Gold', NULL, 1),
(277, 50, 230, 8, 'resource:item', NULL, NULL, NULL, 1),
(278, 50, 232, 30, 'resource:item', NULL, NULL, NULL, 1),
(279, 51, 10, NULL, 'literal', '', 'n°34573930', NULL, 1),
(280, 51, 212, NULL, 'literal', '', '01/05/2019', NULL, 1),
(281, 51, 213, NULL, 'literal', '', '1800', NULL, 1),
(282, 51, 214, NULL, 'literal', '', 'Prenium', NULL, 1),
(283, 51, 230, 7, 'resource:item', NULL, NULL, NULL, 1),
(284, 51, 232, 31, 'resource:item', NULL, NULL, NULL, 1),
(285, 52, 10, NULL, 'literal', '', 'n°14679456', NULL, 1),
(286, 52, 212, NULL, 'literal', '', '10/12/2019', NULL, 1),
(287, 52, 213, NULL, 'literal', '', '700', NULL, 1),
(288, 52, 214, NULL, 'literal', '', 'Intermédiaire', NULL, 1),
(289, 52, 230, 6, 'resource:item', NULL, NULL, NULL, 1),
(290, 52, 232, 32, 'resource:item', NULL, NULL, NULL, 1),
(291, 53, 10, NULL, 'literal', '', 'n°86539701', NULL, 1),
(292, 53, 212, NULL, 'literal', '', '02/11/2019', NULL, 1),
(293, 53, 213, NULL, 'literal', '', '1140', NULL, 1),
(294, 53, 214, NULL, 'literal', '', 'Prenium', NULL, 1),
(295, 53, 230, 5, 'resource:item', NULL, NULL, NULL, 1),
(296, 53, 232, 33, 'resource:item', NULL, NULL, NULL, 1),
(297, 54, 10, NULL, 'literal', '', 'n°10037694', NULL, 1),
(298, 54, 212, NULL, 'literal', '', '19/12/2019', NULL, 1),
(299, 54, 213, NULL, 'literal', '', '550', NULL, 1),
(300, 54, 214, NULL, 'literal', '', 'Intermédiaire', NULL, 1),
(301, 54, 230, 4, 'resource:item', NULL, NULL, NULL, 1),
(302, 54, 232, 34, 'resource:item', NULL, NULL, NULL, 1),
(303, 4, 232, 34, 'resource:item', NULL, NULL, NULL, 1),
(304, 5, 229, 23, 'resource:item', NULL, NULL, NULL, 1),
(305, 5, 231, 53, 'resource:item', NULL, NULL, NULL, 1),
(306, 5, 232, 33, 'resource:item', NULL, NULL, NULL, 1),
(307, 6, 229, 22, 'resource:item', NULL, NULL, NULL, 1),
(308, 6, 231, 52, 'resource:item', NULL, NULL, NULL, 1),
(309, 6, 232, 32, 'resource:item', NULL, NULL, NULL, 1),
(310, 7, 229, 21, 'resource:item', NULL, NULL, NULL, 1),
(311, 7, 231, 51, 'resource:item', NULL, NULL, NULL, 1),
(312, 7, 232, 31, 'resource:item', NULL, NULL, NULL, 1),
(313, 8, 229, 15, 'resource:item', NULL, NULL, NULL, 1),
(314, 8, 231, 50, 'resource:item', NULL, NULL, NULL, 1),
(315, 8, 232, 30, 'resource:item', NULL, NULL, NULL, 1),
(316, 10, 229, 20, 'resource:item', NULL, NULL, NULL, 1),
(317, 10, 231, 49, 'resource:item', NULL, NULL, NULL, 1),
(318, 10, 232, 29, 'resource:item', NULL, NULL, NULL, 1),
(319, 11, 229, 16, 'resource:item', NULL, NULL, NULL, 1),
(320, 11, 231, 48, 'resource:item', NULL, NULL, NULL, 1),
(321, 11, 232, 28, 'resource:item', NULL, NULL, NULL, 1),
(322, 12, 229, 19, 'resource:item', NULL, NULL, NULL, 1),
(323, 12, 231, 47, 'resource:item', NULL, NULL, NULL, 1),
(324, 12, 232, 27, 'resource:item', NULL, NULL, NULL, 1),
(325, 13, 229, 18, 'resource:item', NULL, NULL, NULL, 1),
(326, 13, 231, 46, 'resource:item', NULL, NULL, NULL, 1),
(327, 13, 232, 26, 'resource:item', NULL, NULL, NULL, 1),
(328, 14, 229, 17, 'resource:item', NULL, NULL, NULL, 1),
(329, 14, 231, 45, 'resource:item', NULL, NULL, NULL, 1),
(330, 14, 232, 25, 'resource:item', NULL, NULL, NULL, 1),
(331, 25, 233, 44, 'resource:item', NULL, NULL, NULL, 1),
(332, 25, 231, 45, 'resource:item', NULL, NULL, NULL, 1),
(333, 26, 233, 36, 'resource:item', NULL, NULL, NULL, 1),
(334, 26, 231, 46, 'resource:item', NULL, NULL, NULL, 1),
(335, 27, 233, 35, 'resource:item', NULL, NULL, NULL, 1),
(336, 27, 231, 47, 'resource:item', NULL, NULL, NULL, 1),
(337, 28, 233, 43, 'resource:item', NULL, NULL, NULL, 1),
(338, 28, 231, 48, 'resource:item', NULL, NULL, NULL, 1),
(339, 29, 233, 42, 'resource:item', NULL, NULL, NULL, 1),
(340, 29, 231, 49, 'resource:item', NULL, NULL, NULL, 1),
(341, 30, 233, 41, 'resource:item', NULL, NULL, NULL, 1),
(342, 30, 231, 50, 'resource:item', NULL, NULL, NULL, 1),
(343, 31, 233, 40, 'resource:item', NULL, NULL, NULL, 1),
(344, 31, 231, 51, 'resource:item', NULL, NULL, NULL, 1),
(345, 32, 233, 39, 'resource:item', NULL, NULL, NULL, 1),
(346, 32, 231, 52, 'resource:item', NULL, NULL, NULL, 1),
(347, 33, 233, 38, 'resource:item', NULL, NULL, NULL, 1),
(348, 33, 231, 53, 'resource:item', NULL, NULL, NULL, 1),
(349, 34, 233, 37, 'resource:item', NULL, NULL, NULL, 1),
(350, 34, 231, 54, 'resource:item', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vocabulary`
--

CREATE TABLE `vocabulary` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `namespace_uri` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(10, 1, 'https://vocabulaireclientele.fr/onto/modeleclient', 'modeleclient', 'Vocabulaire client', ''),
(15, 1, 'http://dbpedia.org/ontology/', 'dbpedia-owl', 'dbpedia', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C912ED9D7E3C61F9` (`owner_id`);

--
-- Index pour la table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2AF5A5C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_2AF5A5C7E3C61F9` (`owner_id`);

--
-- Index pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD PRIMARY KEY (`id`,`resource`),
  ADD KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`);
ALTER TABLE `fulltext_search` ADD FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD PRIMARY KEY (`item_id`,`item_set_id`),
  ADD KEY `IDX_6D0C9625126F525E` (`item_id`),
  ADD KEY `IDX_6D0C9625960278D7` (`item_set_id`);

--
-- Index pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FBD8E0F87E3C61F9` (`owner_id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6A2CA10C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_6A2CA10C126F525E` (`item_id`),
  ADD KEY `item_position` (`item_id`,`position`);

--
-- Index pour la table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`);

--
-- Index pour la table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  ADD KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  ADD KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  ADD KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`);

--
-- Index pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  ADD KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_39ECD52EEA750E8` (`label`),
  ADD KEY `IDX_39ECD52E7E3C61F9` (`owner_id`),
  ADD KEY `IDX_39ECD52E448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_39ECD52E724734A3` (`title_property_id`),
  ADD KEY `IDX_39ECD52EB84E0D1D` (`description_property_id`);

--
-- Index pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  ADD KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  ADD KEY `IDX_4689E2F1549213EC` (`property_id`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_694309E4989D9B62` (`slug`),
  ADD UNIQUE KEY `UNIQ_694309E4571EDDA` (`homepage_id`),
  ADD KEY `IDX_694309E47E3C61F9` (`owner_id`);

--
-- Index pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_236473FEE9ED820C` (`block_id`),
  ADD KEY `IDX_236473FE126F525E` (`item_id`),
  ADD KEY `IDX_236473FEEA9FDD75` (`media_id`),
  ADD KEY `block_position` (`block_id`,`position`);

--
-- Index pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D4CE134F6BD1646960278D7` (`site_id`,`item_set_id`),
  ADD KEY `IDX_D4CE134F6BD1646` (`site_id`),
  ADD KEY `IDX_D4CE134960278D7` (`item_set_id`),
  ADD KEY `position` (`position`);

--
-- Index pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2F900BD9F6BD1646989D9B62` (`site_id`,`slug`),
  ADD KEY `IDX_2F900BD9F6BD1646` (`site_id`);

--
-- Index pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C593E731C4663E4` (`page_id`),
  ADD KEY `page_position` (`page_id`,`position`);

--
-- Index pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C0401D6FF6BD1646A76ED395` (`site_id`,`user_id`),
  ADD KEY `IDX_C0401D6FF6BD1646` (`site_id`),
  ADD KEY `IDX_C0401D6FA76ED395` (`user_id`);

--
-- Index pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`,`site_id`),
  ADD KEY `IDX_64D05A53F6BD1646` (`site_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `IDX_C779A692A76ED395` (`user_id`);

--
-- Index pour la table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1D77583489329D25` (`resource_id`),
  ADD KEY `IDX_1D775834549213EC` (`property_id`),
  ADD KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  ADD KEY `value` (`value`(190)),
  ADD KEY `uri` (`uri`(190));

--
-- Index pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  ADD UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  ADD KEY `IDX_9099C97B7E3C61F9` (`owner_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT pour la table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_page`
--
ALTER TABLE `site_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_permission`
--
ALTER TABLE `site_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
