-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 22 avr. 2020 à 23:49
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `omeka`
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
(3, 'items', 1, 1, 'Soignant_1_Gustave_Eiffel', 'soignant_1\nSoignant_1_Gustave_Eiffel\nGustave\nEiffel \n15/12/1956\n23/02/2013\n16/05/2016\nAnimal_1_Leo\nAnimal_5_Paul\nAnimal_8_Poulette'),
(4, 'items', 1, 1, 'Soignant_2_Mael_Gourves', 'soignant_2\nSoignant_2_Mael_Gourves\nMael\nGourves \n16/01/1997\n12/02/2011\nAnimal_3_Chouquette\nAnimal_5_Paul\nAnimal_8_Poulette'),
(5, 'items', 1, 1, 'Soignant_3_Adam_Meoni', 'soignant_3\nSoignant_3_Adam_Meoni\nAdam\nMeoni\n15/05/1995\n25/05/2015\nAnimal_2_Boulette\nAnimal_7_Kim'),
(6, 'items', 1, 1, 'Soignant_4_Clement_Dareau', 'soignant_4\nSoignant_4_Clement_Dareau\nClement\nDareau\n25/01/1997\n02/04/2012\n07/02/2017\nEspece_6_Singe\nAnimal_4_Chouchou'),
(7, 'items', 1, 1, 'Soignant_5_Octavia_Tran', 'soignant_5\nSoignant_5_Octavia_Tran\nOctavia\nTran\n29/05/1997\n14/02/2015\nAnimal_4_Chouchou\nAnimal_6_Julien\nAnimal_7_Kim'),
(8, 'items', 1, 1, 'Soignant_6_Aenor_Toy', 'soignant_6\nSoignant_6_Aenor_Toy\nAénor\nToy\n24/11/1998\n06/02/20016\nAnimal_1_Leo'),
(9, 'items', 1, 1, 'Soignant_7_Maxime_Ratel', 'soignant_7\nSoignant_7_Maxime_Ratel\nMaxime\nRatel\n05/05/1997\n05/12/2013\n07/11/2015\nAnimal_5_Paul\nAnimal_8_Poulette'),
(10, 'items', 1, 1, 'Soignant_8_Romain_Payet', 'soignant_8\nSoignant_8_Romain_Payet\nRomain\nPayet\n05/02/1952\n16/05/1975\nAnimal_6_Julien\nAnimal_4_Chouchou\nAnimal_7_Kim'),
(11, 'items', 1, 1, 'Soignant_9_Jean_Claude', 'soignant_9\nSoignant_9_Jean_Claude\nJean\nClaude\n25/06/1968\n27/03/2000\nAnimal_1_Leo\nAnimal_3_Chouquette'),
(13, 'items', 1, 1, 'Zoo_1_Beauval', 'zoo_fr_1\nZoo_1_Beauval\nZoo beauval\nFrance'),
(14, 'items', 1, 1, 'Zoo_2_Berlin', 'zoo_all_1\nZoo_2_Berlin\nZoo de berlin\nallemagne'),
(15, 'items', 1, 1, 'Zoo_3_Cologne', 'zoo_all_2\nZoo_3_Cologne\nZoo de cologne\nallemagne'),
(16, 'items', 1, 1, 'Zoo_4_Anvers', 'zoo_be_1\nZoo_4_Anvers\nZoo d\'anvers\nbelgique'),
(17, 'items', 1, 1, 'Secteur_1_Rose', 'secteur_rose\nSecteur_1_Rose\nSecteur rose'),
(18, 'items', 1, 1, 'Secteur_2_Vert', 'secteur_2\nSecteur_2_Vert\nSecteur vert'),
(19, 'items', 1, 1, 'Secteur_3_Jaune', 'secteur_jaune\nSecteur_3_Jaune\nSecteur jaune'),
(20, 'items', 1, 1, 'Secteur_4_Bleu', 'secteur_bleu\nSecteur_4_Bleu\nSecteur bleu'),
(21, 'items', 1, 1, 'Animal_1_Leo', 'animal_1\nAnimal_1_Leo\nLeo\n26/06/2007\nmasculin\n175\nEnclos 1 : Grand\nEspece 1\nZoo 2\nZoo 1\ntaille en cm\nSoignant 1\nSoignant 9\nSoignant 6'),
(22, 'items', 1, 1, 'Animal_2_Boulette', 'animal_2\nAnimal_2_Boulette\nBoulette\n25/03/2016\nmasculin\n50\nEnclos 2 : petit\nEspece 6\nZoo 3\nZoo 3\ntaille en cm\nSoignant 3'),
(23, 'items', 1, 1, 'Animal_3_Chouquette', 'animal_3\nAnimal_3_Chouquette\nChouquette\n14/04/2014\nfeminin\n120\nEnclos  3 : moyen\nEspece 4\nZoo 4\nZoo 3\ntaille en cm\nSoignant 2\nSoignant 9'),
(24, 'items', 1, 1, 'Animal_4_Chouchou', 'animal_4\nAnimal_4_Chouchou\nChouchou\n25/04/2003\nmasculin\n30\nEnclos  3 : moyen\nEspece 3\nZoo 2\nZoo 2\ntaille en cm\nSoignant 4\nSoignant 8'),
(25, 'items', 1, 1, 'Animal_5_Paul', 'animal_5\nAnimal_5_Paul\nPaul\n23/09/2003\nfeminin\n60\nEnclos 6 : Petit\nEspece 4\nZoo 2\nZoo 4\ntaille en cm\nSoignant 1\nSoignant 2\nSoignant 7'),
(26, 'items', 1, 1, 'Animal_6_Julien', 'animal_6\nAnimal_6_Julien\nJulien\n08/11/1996\nfeminin\n213\nEnclos 5 : Grand\nEspece 2\nZoo 2\nZoo 4\ntaille en cm\nSoignant 4\nSoignant 8'),
(27, 'items', 1, 1, 'Animal_7_Kim', 'animal_7\nAnimal_7_Kim\nKim\n05/04/1997\nfeminin\n213 \nEnclos 4 : Moyen\nEspece 7\nZoo 2\nZoo 2\ntaille en cm\nSoignant 3\nSoignant 5\nSoignant 8'),
(28, 'items', 1, 1, 'Animal_8_Poulette', 'animal_8\nAnimal_8_Poulette\nPoulette\n28/04/1985\nmasculin\n25\nEnclos 6 : Petit\nEspece 3\nZoo 2\nZoo 1\ntaille en cm\nSoignant 1\nSoignant 2\nSoignant 7'),
(29, 'items', 1, 1, 'Enclos_1_Grand', 'enclos_1\n1500\nEnclos_1_Grand\nsuperficie en m2\nSecteur 1'),
(30, 'items', 1, 1, 'Enclos_2_Petit', 'enclos_2\n500\nEnclos_2_Petit\nsuperficie en m2\nSecteur 2'),
(31, 'items', 1, 1, 'Enclos_ 3_Moyen', 'enclos_3 \n1000\nEnclos_ 3_Moyen\nsuperficie en m2\nSecteur 3'),
(32, 'items', 1, 1, 'Espece_1_Lion', 'espece_1\nEspece_1_Lion \nLion'),
(33, 'items', 1, 1, 'Espece_2_Elephant', 'espece_2\nEspece_2_Elephant\nElephant'),
(34, 'items', 1, 1, 'Espece_3_Oiseau', 'espece_3\nEspece_3_Oiseau\nOiseau'),
(35, 'items', 1, 1, 'Espece_4_Penguin', 'espece_4\nEspece_4_Penguin\nPenguin'),
(36, 'items', 1, 1, 'Espece_5_Tigre', 'espece_5\nEspece_5_Tigre\nTigre'),
(37, 'items', 1, 1, 'Espece_6_Singe', 'espece_6\nEspece_6_Singe\nSinge'),
(38, 'items', 1, 1, 'Espece_7_Dauphin', 'espece_7\nEspece_7_Dauphin \nDauphin'),
(39, 'items', 1, 1, 'Espece_8_Alpaga', 'espece_8\nEspece_8_Alpaga\nAlpaga'),
(40, 'items', 1, 1, 'Enclos_4 _Moyen', 'enclos_4\n1000\nEnclos_4 _Moyen\nSecteur 4'),
(41, 'items', 1, 1, 'Enclos_5_Grand', 'enclos_5\n2500\nEnclos_5_Grand\nSecteur 3'),
(42, 'items', 1, 1, 'Enclos_6_Petit', 'enclos_6\n500\nEnclos_6_Petit\nSecteur 4'),
(43, 'items', 1, 1, 'Enclos_7_Grand', 'enclos_7\n1800\nEnclos_7_Grand');

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
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
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
(43);

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
('2IcluFG8rLTW5cBvpuhFf42a43IwCDB2', 2, '2020-04-20 21:18:24', 1);

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
(185, 1, 5, 'Date_naissance', 'Date de naissance', NULL),
(186, 1, 5, 'taille', 'Taille', 'taille de l\'animal'),
(187, 1, 5, 'Date_expiration', 'Date d\'expiration', 'date de fin de contrat du soignant'),
(188, 1, 5, 'Superficie', 'Superficie', 'Superficie de l\'enclos'),
(189, 1, 6, 'country', 'pays', 'The country where the thing is located.'),
(190, NULL, 5, 'id_enclos', 'id_enclos', 'clé étrangère enclos'),
(191, NULL, 5, 'id_zoo_origine', 'id_zoo_origine ', 'clé étrangère zoo origine'),
(192, NULL, 5, 'id_zoo_courrant', 'id_zoo_courrant ', 'clé étrangère zoo courrant'),
(193, NULL, 5, 'id_zoo_secteur', 'id_espece ', 'clé étrangère zoo origine'),
(194, NULL, 5, 'id_secteur', 'id_secteur ', 'clé étrangère secteur'),
(195, NULL, 5, 'id_soignant', 'id_soignant ', 'clé étrangère soignant'),
(196, NULL, 5, 'id_animal', 'id_animal ', 'clé étrangère animal');

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
(3, 1, 101, 6, NULL, 'Soignant_1_Gustave_Eiffel', 1, '2020-04-22 15:58:41', '2020-04-22 21:45:26', 'Omeka\\Entity\\Item'),
(4, 1, 101, 6, NULL, 'Soignant_2_Mael_Gourves', 1, '2020-04-22 16:04:24', '2020-04-22 21:45:43', 'Omeka\\Entity\\Item'),
(5, 1, 101, 6, NULL, 'Soignant_3_Adam_Meoni', 1, '2020-04-22 16:06:32', '2020-04-22 21:45:56', 'Omeka\\Entity\\Item'),
(6, 1, 101, 6, NULL, 'Soignant_4_Clement_Dareau', 1, '2020-04-22 16:14:44', '2020-04-22 21:46:08', 'Omeka\\Entity\\Item'),
(7, 1, 101, 6, NULL, 'Soignant_5_Octavia_Tran', 1, '2020-04-22 16:15:53', '2020-04-22 21:46:17', 'Omeka\\Entity\\Item'),
(8, 1, 101, 6, NULL, 'Soignant_6_Aenor_Toy', 1, '2020-04-22 16:18:57', '2020-04-22 21:46:26', 'Omeka\\Entity\\Item'),
(9, 1, 101, 6, NULL, 'Soignant_7_Maxime_Ratel', 1, '2020-04-22 16:20:49', '2020-04-22 21:46:40', 'Omeka\\Entity\\Item'),
(10, 1, 101, 6, NULL, 'Soignant_8_Romain_Payet', 1, '2020-04-22 16:22:43', '2020-04-22 21:46:52', 'Omeka\\Entity\\Item'),
(11, 1, 101, 6, NULL, 'Soignant_9_Jean_Claude', 1, '2020-04-22 16:23:50', '2020-04-22 21:47:57', 'Omeka\\Entity\\Item'),
(13, 1, 9, 5, NULL, 'Zoo_1_Beauval', 1, '2020-04-22 16:28:00', '2020-04-22 21:42:47', 'Omeka\\Entity\\Item'),
(14, 1, 9, 5, NULL, 'Zoo_2_Berlin', 1, '2020-04-22 16:29:05', '2020-04-22 21:43:16', 'Omeka\\Entity\\Item'),
(15, 1, 9, 5, NULL, 'Zoo_3_Cologne', 1, '2020-04-22 16:29:40', '2020-04-22 21:43:14', 'Omeka\\Entity\\Item'),
(16, 1, 9, 5, NULL, 'Zoo_4_Anvers', 1, '2020-04-22 16:30:36', '2020-04-22 21:43:13', 'Omeka\\Entity\\Item'),
(17, 1, 9, 8, NULL, 'Secteur_1_Rose', 1, '2020-04-22 16:38:52', '2020-04-22 21:42:15', 'Omeka\\Entity\\Item'),
(18, 1, 9, 8, NULL, 'Secteur_2_Vert', 1, '2020-04-22 16:39:21', '2020-04-22 21:40:49', 'Omeka\\Entity\\Item'),
(19, 1, 9, 8, NULL, 'Secteur_3_Jaune', 1, '2020-04-22 16:39:47', '2020-04-22 21:40:41', 'Omeka\\Entity\\Item'),
(20, 1, 9, 8, NULL, 'Secteur_4_Bleu', 1, '2020-04-22 16:40:24', '2020-04-22 21:40:33', 'Omeka\\Entity\\Item'),
(21, 1, 106, 2, NULL, 'Animal_1_Leo', 1, '2020-04-22 16:44:12', '2020-04-22 21:29:31', 'Omeka\\Entity\\Item'),
(22, 1, 106, 2, NULL, 'Animal_2_Boulette', 1, '2020-04-22 16:45:39', '2020-04-22 21:30:08', 'Omeka\\Entity\\Item'),
(23, 1, 106, 2, NULL, 'Animal_3_Chouquette', 1, '2020-04-22 16:46:28', '2020-04-22 21:30:26', 'Omeka\\Entity\\Item'),
(24, 1, 106, 2, NULL, 'Animal_4_Chouchou', 1, '2020-04-22 16:47:40', '2020-04-22 21:33:13', 'Omeka\\Entity\\Item'),
(25, 1, 106, 2, NULL, 'Animal_5_Paul', 1, '2020-04-22 16:48:32', '2020-04-22 21:33:47', 'Omeka\\Entity\\Item'),
(26, 1, 106, 2, NULL, 'Animal_6_Julien', 1, '2020-04-22 16:49:29', '2020-04-22 21:33:58', 'Omeka\\Entity\\Item'),
(27, 1, 106, 2, NULL, 'Animal_7_Kim', 1, '2020-04-22 16:50:30', '2020-04-22 21:34:30', 'Omeka\\Entity\\Item'),
(28, 1, 106, 2, NULL, 'Animal_8_Poulette', 1, '2020-04-22 16:51:42', '2020-04-22 21:34:41', 'Omeka\\Entity\\Item'),
(29, 1, 9, 7, NULL, 'Enclos_1_Grand', 1, '2020-04-22 16:54:54', '2020-04-22 21:35:26', 'Omeka\\Entity\\Item'),
(30, 1, 9, 7, NULL, 'Enclos_2_Petit', 1, '2020-04-22 16:55:43', '2020-04-22 21:35:38', 'Omeka\\Entity\\Item'),
(31, 1, 9, 7, NULL, 'Enclos_ 3_Moyen', 1, '2020-04-22 17:02:08', '2020-04-22 21:35:46', 'Omeka\\Entity\\Item'),
(32, 1, 107, 3, NULL, 'Espece_1_Lion', 1, '2020-04-22 17:07:26', '2020-04-22 21:37:44', 'Omeka\\Entity\\Item'),
(33, 1, 107, 3, NULL, 'Espece_2_Elephant', 1, '2020-04-22 17:13:51', '2020-04-22 21:37:54', 'Omeka\\Entity\\Item'),
(34, 1, 107, 3, NULL, 'Espece_3_Oiseau', 1, '2020-04-22 17:14:26', '2020-04-22 21:38:05', 'Omeka\\Entity\\Item'),
(35, 1, 107, 3, NULL, 'Espece_4_Penguin', 1, '2020-04-22 17:17:58', '2020-04-22 21:38:20', 'Omeka\\Entity\\Item'),
(36, 1, 107, 3, NULL, 'Espece_5_Tigre', 1, '2020-04-22 17:22:12', '2020-04-22 21:38:33', 'Omeka\\Entity\\Item'),
(37, 1, 107, 3, NULL, 'Espece_6_Singe', 1, '2020-04-22 17:23:27', '2020-04-22 21:38:41', 'Omeka\\Entity\\Item'),
(38, 1, 107, 3, NULL, 'Espece_7_Dauphin', 1, '2020-04-22 17:24:58', '2020-04-22 21:38:52', 'Omeka\\Entity\\Item'),
(39, 1, 107, 3, NULL, 'Espece_8_Alpaga', 1, '2020-04-22 17:25:44', '2020-04-22 21:39:04', 'Omeka\\Entity\\Item'),
(40, 1, 9, 7, NULL, 'Enclos_4 _Moyen', 1, '2020-04-22 19:00:37', '2020-04-22 21:35:53', 'Omeka\\Entity\\Item'),
(41, 1, 9, 7, NULL, 'Enclos_5_Grand', 1, '2020-04-22 19:02:25', '2020-04-22 21:36:02', 'Omeka\\Entity\\Item'),
(42, 1, 9, 7, NULL, 'Enclos_6_Petit', 1, '2020-04-22 19:03:02', '2020-04-22 21:36:10', 'Omeka\\Entity\\Item'),
(43, 1, 9, 7, NULL, 'Enclos_7_Grand', 1, '2020-04-22 19:04:20', '2020-04-22 21:36:18', 'Omeka\\Entity\\Item');

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
(106, 1, 5, 'Animaux', 'Animaux', NULL),
(107, 1, 5, 'Especes', 'Especes', NULL);

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
(2, 1, 106, NULL, NULL, 'Animaux'),
(3, 1, 107, NULL, NULL, 'Especes'),
(5, 1, 9, NULL, NULL, 'Zoos'),
(6, 1, 101, NULL, NULL, 'Soignants'),
(7, 1, 9, NULL, NULL, 'Enclos'),
(8, 1, 9, NULL, NULL, 'Secteurs');

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
(24, 3, 4, NULL, NULL, 4, NULL, 0, 0),
(34, 8, 4, NULL, NULL, 4, NULL, 0, 0),
(35, 2, 10, NULL, NULL, 1, NULL, 1, 0),
(36, 2, 144, NULL, NULL, 5, NULL, 0, 0),
(37, 2, 125, NULL, NULL, 6, NULL, 0, 0),
(38, 5, 138, NULL, NULL, 3, NULL, 0, 0),
(39, 5, 10, NULL, NULL, 1, NULL, 0, 0),
(40, 8, 10, NULL, NULL, 1, NULL, 1, 0),
(41, 8, 138, NULL, NULL, 3, NULL, 0, 0),
(42, 7, 10, NULL, NULL, 1, NULL, 1, 0),
(43, 3, 138, NULL, NULL, 3, NULL, 0, 0),
(44, 6, 10, NULL, NULL, 1, NULL, 0, 0),
(45, 6, 43, NULL, NULL, 6, NULL, 0, 0),
(46, 6, 139, NULL, NULL, 3, NULL, 0, 0),
(47, 6, 144, NULL, NULL, 4, NULL, 0, 0),
(48, 2, 138, NULL, NULL, 3, NULL, 0, 0),
(49, 2, 185, NULL, NULL, 4, NULL, 0, 0),
(50, 2, 186, NULL, NULL, 7, NULL, 0, 0),
(51, 3, 10, NULL, NULL, 1, NULL, 1, 0),
(53, 6, 185, NULL, NULL, 5, NULL, 0, 0),
(54, 6, 187, NULL, NULL, 7, NULL, 0, 0),
(55, 7, 188, NULL, NULL, 2, NULL, 0, 0),
(56, 5, 189, NULL, NULL, 4, NULL, 0, 0),
(57, 2, 1, NULL, NULL, 2, NULL, 0, 0),
(58, 7, 1, NULL, NULL, 3, NULL, 0, 0),
(59, 3, 1, NULL, NULL, 2, NULL, 0, 0),
(60, 8, 1, NULL, NULL, 2, NULL, 0, 0),
(61, 6, 1, NULL, NULL, 2, NULL, 0, 0),
(62, 5, 1, NULL, NULL, 2, NULL, 0, 0),
(64, 2, 19, NULL, NULL, 8, NULL, 0, 0),
(65, 2, 190, NULL, NULL, 9, NULL, 0, 0),
(66, 2, 193, NULL, NULL, 10, NULL, 0, 0),
(67, 2, 192, NULL, NULL, 11, NULL, 0, 0),
(68, 2, 191, NULL, NULL, 12, NULL, 0, 0);

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
('3db147u7kkodcipkkq8gh7us23', 0x5f5f5a467c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373539323135372e3734393237353b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2276366d726f646e75637132707664356268656334326e70716762223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373536393339333b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539353735383b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373539353530363b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539303430303b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539313237323b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539313238353b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223634613962323465626337623265386530386239643439383762373533343961223b733a33323a223764303434633635326237343661313765666530393264373732313531373765223b7d733a343a2268617368223b733a36353a2237643034346336353262373436613137656665303932643737323135313737652d3634613962323465626337623265386530386239643439383762373533343961223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a34373433333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3538393a7b733a33323a223437656164333234373766366331643833643834636363323234356339633261223b733a33323a223766353134313736363465356639356461306665656461313865656636643766223b733a33323a223938656265363133313565386436633735343034396433363633313935303037223b733a33323a223565653563373465366663626432633431663435343766353134343961353666223b733a33323a226636356131306632343563633033303433366264323865333731326333663364223b733a33323a223836323965616461646539366634626566316561303438613637336132336265223b733a33323a226131376431373665616236353432656135643836653733373133656139336233223b733a33323a223831343964623861386238646436653865643830656564666137353937356138223b733a33323a223733663561663536656366633965376236616561393832336636643639616366223b733a33323a223865333534633736356432373066333664323033646332663061623765373038223b733a33323a226238636262373533363938323138623163656165396462663565346163666161223b733a33323a223836303231363536663263376538653137393034333038633639333661656363223b733a33323a226466396637353962636130613665626630663930383065643934333039326137223b733a33323a223931663961313764303163373231653165306362663038303233373366386237223b733a33323a223564326463393133316163643234633832653039373737326437333135306138223b733a33323a223535383238616537656265663237383239646430313265343739636239653863223b733a33323a223735353830343162356137383666636662336163303436653231636637373265223b733a33323a223636623336383238663261376636386166383764653939393062613338373338223b733a33323a223636326361373838323132323935323435633261363037623730393863623063223b733a33323a223062306231643235653938613937636164663166613536623661336530326235223b733a33323a223136376462376638376336643932663437653562643839383936636335393565223b733a33323a223432356237333430353662303730343261643132663132363433303835353035223b733a33323a223962306331363430643462356539393032373438643533653762343565613531223b733a33323a223235646239303863343337373662666138653430626362653762646364393931223b733a33323a223437353633363838353763623166346230636631373137616166366235636135223b733a33323a226339313435646233353265666366383566356339396533643335626439323037223b733a33323a223638363164633536656434623334363264316632333534653761333666386238223b733a33323a223561643565313838346263386531396430373864623034373332303966653737223b733a33323a223637643031376334356334303261663762653432383838616437376336383838223b733a33323a223162623031316531653362386564366437383436666266623363303036623932223b733a33323a223636353533376637376230393635626234383363626534666262336536363135223b733a33323a226633323964373962386136373266383939303665643634623337393337633739223b733a33323a223133383138306631646362363733356165326162303561656465353838363236223b733a33323a223833383564346237666462656563376161376435663933363237653434373334223b733a33323a223161663337333466333666316335316361303066346263353539353436313733223b733a33323a226161643238333133396562313062396533623033323063643465653835316638223b733a33323a223830653331343137646236623132353463323134653633323632313530656361223b733a33323a226165653238396264396663633435313766323261633834616566663336646632223b733a33323a223236336239343763633035366430366236613464633863623662653930346630223b733a33323a223339366339346236613239636166356134386131613931326262336431313637223b733a33323a223835373665653466666361363438366161613239326434376431666233616662223b733a33323a223235363234663138643839323262666534613430363962343336656662663330223b733a33323a223534353062393561333137326437613661326434626463396238653065323463223b733a33323a223434306162306233656466633938333461366566353436613661333432623835223b733a33323a223838366135633766316537623138363863663337356637633039633263656566223b733a33323a226563623838303861396632303664643332313132376537343361346264663866223b733a33323a223135643062303134393239623131653565313635363236323635333931633530223b733a33323a223231396561336330353132393231616566393036393739396532346531396630223b733a33323a226164306634303361343539383431633462363965303534316466363364636139223b733a33323a226264616264396136386638383933653730333333373130646638646337346133223b733a33323a226332393564653139323036323933373536656130386139633262373764303361223b733a33323a226365646364623338636638613864623638646366633563656464303634636661223b733a33323a223532366264333561623266613232343336653130653437373334663039373432223b733a33323a226365383732626131303762376434646664636262643363323632356437366338223b733a33323a223132333563383563326230626138386630343232323830333135323338643632223b733a33323a223334613938643038656431396231396630326564626166636134323266643933223b733a33323a223366323732303664386239643636616231646533396634653338346438306264223b733a33323a226237613866363933396164663664356133653562376535646562366162616132223b733a33323a223061316232666165383061316636383234646337336530393230663530313965223b733a33323a226163613739353864366364396666333561353466363930636361663962613731223b733a33323a226138363864613665643334623432353065633037336662613361343237326561223b733a33323a226636636535333638353665383537333136613535383231343639613762316334223b733a33323a223535346263323734636632323930306137636630333430666630313636613138223b733a33323a226238306666373832623539656433343962373731663564323061623932363339223b733a33323a223336633635663030383738663330303538373063616333396633396362343636223b733a33323a223061616363353333313639666431386461313330366539313238316661396663223b733a33323a223865643562666164656336396166363934333236383332336135633733363732223b733a33323a223833373562326164643465616630666166623831636361646236663666313034223b733a33323a223162343933323166643933346663646130646536656334333564333138343662223b733a33323a226538333433623335363038383637623262363161346364633232303364353165223b733a33323a226431326438343334343361383133313135396164383263366664383565643835223b733a33323a223230326633636333616230373062656434306562613761336666616535303535223b733a33323a226134646533643138323063383962663062616664653339663935643033626239223b733a33323a223766363565386337303138663264623737653637383266306664353266363863223b733a33323a226466323566313161666566346536633537393964653735373032656535623032223b733a33323a223839323363393934623234353161323938643063376562663833363132663264223b733a33323a223434656239393231336331303734616636323566613531623336616164666165223b733a33323a223762636566376566366233393731313766636539643531623238326565383738223b733a33323a226633653933616362633331393063363437333162346562666364373662396466223b733a33323a223133623861363839343465613131313338393864653064383762323439323231223b733a33323a223236633465646435373263366164366163373665343864646130336435336231223b733a33323a223738326562393530336262303766353965363031663635303735643434376166223b733a33323a223563613435663864663436303131636362326261663136303830326135363232223b733a33323a223965663536303732633138636461613534333762333865613665363462613333223b733a33323a223839393466333863636438303264653833383238643865643436346565323663223b733a33323a226462303566393535393832623631616531386663626535363532336139303732223b733a33323a223031643231616437306332353265333463366364616265323436373530613138223b733a33323a226463346434376234623038616134333463323136363531346536316664623835223b733a33323a223261343464356662313865306339386335383265616139656435336432386461223b733a33323a226363333238343839323933323935616166333537383632396265346362386639223b733a33323a226362373661376366316165353832636531656138393136373362316531303733223b733a33323a223837613736346134646234643831386437303236373938616330383839383066223b733a33323a223339386661366334393366386332363436373461353963346239666663333736223b733a33323a223130386236666563633131366236343136626439316536303361316436353934223b733a33323a226538393161636235366261393839363531383933643739643635653062623534223b733a33323a223863636232616631336663623563396134396234653164636234336131636433223b733a33323a226461653739353936396266626138636661373861613664306666626661636337223b733a33323a223630306636353239643136643230353964366362343235336230666666323439223b733a33323a223666653161343731653566623233386366326665343236383263373431636361223b733a33323a226265343466343530316664333265383234386435376435656638313361346566223b733a33323a226466623136393330383738633136343066663137343961383263323532623562223b733a33323a223463363131643439643336356138336364653232383766393764303438643135223b733a33323a223230373362666266383064343331383264366430353433636234613431326436223b733a33323a226565363463356165663536303566653562386231303261306134383764643566223b733a33323a223662623338613136646134663836373235626162343138653738393231303031223b733a33323a223262373038616433303431623833623537656561386336396366376533323966223b733a33323a223634656338356239643664613131356531656139353164363239623534343663223b733a33323a226239653864393337333766363036616266323533396337356237646263343636223b733a33323a223932663736636535313833303461666263356664386663336263346231636466223b733a33323a226164613364363931643066636535663433653836393235316337343932306166223b733a33323a223766353533386666666465396632646437373361613562336161643761393463223b733a33323a223966396364396661366364313062623761643966626166646163303465623661223b733a33323a226132633138396538366336363731366336623662373761306233356263376637223b733a33323a223631376166626433323766353961323931356366346563663835343335376635223b733a33323a223361393566313939623934643032306566613463306530626339616564343766223b733a33323a223432636438393762633132633033633965333137313430306361343666393433223b733a33323a226666383663633431643439666132346630616235383464376237643766376638223b733a33323a226363313663343036656661623936356333303433353264633563636437343833223b733a33323a223664356466623565643635653436643865343830333066613732626133343630223b733a33323a223562373238336635343939313139653234303961346331313530393335663765223b733a33323a223434633762313631323631646662656330356238356164313061316631323731223b733a33323a223766333962386636346635353235396165313533373034366631363333653632223b733a33323a223366346637353532323237336362626637636635396232666130306238623438223b733a33323a223030363738633635656632386337373134643138373464623265613834653435223b733a33323a223534646439393636326331303461373233383265306638666331386434316130223b733a33323a223837643533623538386665363335343436303735323365303665396430343161223b733a33323a223839633366613461353532313861626134393338346134633332303134336361223b733a33323a226162623536633863656662653466623465636635343163646232363535303765223b733a33323a226162613832393466353039623261666330633038623765633338383232393037223b733a33323a223330653437376539623630313663346665386665626133323835356665643561223b733a33323a226233383732393734626466646536343633336537326331373332343366383830223b733a33323a223633366332666239663362353639323033663866366462356662316635326139223b733a33323a223865373861323334383363303564333037383233656330643062353637333639223b733a33323a223135393438633834363038373530346533336666323565343235363038663332223b733a33323a226239336332663635383837633263633761333331323261393738616136333935223b733a33323a226232363436613763343232346230383934363436386638636136393761643237223b733a33323a226663343862333230333364383337366130303963303363323131346130323436223b733a33323a226137366330303737633763623035356230646261333966336361353963633139223b733a33323a223035626135346234343937633335333937303666323036383738386166373433223b733a33323a223731623365666238653435616563656138363163313731663463663735316666223b733a33323a223763656462383635343765336234636661343763353762306339343431633866223b733a33323a226438623661386562653135363961373137313030393362363535666164343439223b733a33323a223164346530646339383966303231613362333037323565646635383435316431223b733a33323a223861663331386538626431623037303537396338663265346338376661613339223b733a33323a223732613737306661326262663763663232393565643835336561356663383934223b733a33323a226238626334656232623739623639633636303935613531306463626361616339223b733a33323a223930633762653533646438653530323363646261613436386663333439613736223b733a33323a226664643831353538663962356462323935363637343232396530313862376561223b733a33323a223835333139623962333939653433643366663930633130663963376533393331223b733a33323a223837613537643334343662366437373662636366333762346437353662393964223b733a33323a226661626235363264636136346662376436613736313366323865646264303635223b733a33323a223838613466656439623637333162656138633337393335383735313230373066223b733a33323a226533636464353232393134353636616539363931626533366137613935303765223b733a33323a226139393432333838623662623937393061336666366535643738306366316336223b733a33323a223864663535346237386464616439643536653936616535383263376534386265223b733a33323a223736353731373735663335313736666538303334346535616665363461343032223b733a33323a223962343731376635316266663932376639616337613633653937653163336563223b733a33323a223163643263366432623466363235623663356365353338393261626634623736223b733a33323a226539363764356430313137636665353930626266373138646232613634386465223b733a33323a226237333635333762666133663864633136646434646139613637373431326563223b733a33323a226561313065313064346265623763373733323134303736636162336633366137223b733a33323a223130363636313234366362643932353861333966303530643438616663313833223b733a33323a223762636339636363323265323734633861653835336337623562653536343961223b733a33323a226130663733386664633630653363326231333262323534333232386662623933223b733a33323a223863346439343137386563663731353637313030326564333163613165316336223b733a33323a223066383463393663303632323138656562623831356436356234343430323561223b733a33323a226537616636353230386562666161663132326238306463376330663434333462223b733a33323a226264656436646231303164663332613837383232653165333866306563336335223b733a33323a223030376162353261663236343162616262336238323961653535343034346433223b733a33323a226361316530653637396439326162643032623061313336663133353536663764223b733a33323a223365356230366234613939663437333031666534323731313636306431326561223b733a33323a223131393562633431336463343464366131343061663032633934613237326662223b733a33323a226265363032376265373465643263653061643730643739393230313836626236223b733a33323a223762316666373165616430313733633236383931326165623465386138343138223b733a33323a226534386261666637326161623763653239366135396437393535353933313363223b733a33323a223137626365643238366338323332376139333732336565363836646662633261223b733a33323a226131346163636136393635353663653262306134646263393061636164393464223b733a33323a226232653361386536633237353431386236363832343731386532396463643936223b733a33323a226533643335326336393434356661326561373464633864303466313833316263223b733a33323a226562613635353866373863626636333662313633396462363034306239623636223b733a33323a223261336666353535323831346131393265613938643039373333663763353233223b733a33323a226163333633363762313935346633323264306437323438663765303730333639223b733a33323a223631383461633461366539626137626566313061363062396262393534316364223b733a33323a226639663837653836636138353231316166616439316166386163643762323334223b733a33323a223533306532613434306139336261626637393563636637633465613763626436223b733a33323a223730366235646164306632346635373733363830336634333835366138623262223b733a33323a226437326663653732396535636566313739316462306533613037636135363162223b733a33323a223838623739616134333733636330373337363662633433336639343039306464223b733a33323a223365396134333432643437646536333737653063356137303466323963613338223b733a33323a223466303531393934303635383139613335336466666630623963386566306262223b733a33323a223833353363393265393935376437353563623461393439653632343839366163223b733a33323a226330336233383131393838323438613538333537383539643930646533663865223b733a33323a226365646630356138346231353462303334626437376366393664643437373730223b733a33323a226461303661393830383931626166313265343866383466353537356332303632223b733a33323a223961336636303065326432636133653831653161313566616530626231303334223b733a33323a223864383339643764386139656439636438643061346538313131616132666462223b733a33323a223936333538393361373231316565373432386261623330393130613961306636223b733a33323a223437666532643564353135653335623665643463333738613833376134656638223b733a33323a223530386665343033386232393961623136333131316236373938313834343133223b733a33323a223835346566356239343832643063383738363263323366363266633461373937223b733a33323a226161326563326435323863306463306566663739373932313230343934333937223b733a33323a223334316266663731366539646131656662323336623337363535363935656237223b733a33323a223532373364356664633934623765306430333365323533653934306639386461223b733a33323a223030663530663633356366653866623638333731306136336164633862373365223b733a33323a223261633238323637326263303833303633663266333330646136333639386232223b733a33323a226361326430653936356435373861653666363333386231393133333532393535223b733a33323a226239633265363138386561616130663339343336353635633632633264663330223b733a33323a223936343766663361336534323333393635616165366434303562663833393136223b733a33323a223839623366323039373063326239353034613464303632636530653537343531223b733a33323a223964633834353534626239306161633165316538343738343534643265626264223b733a33323a223839306461356164353036333731393066636464353930656362646661343835223b733a33323a226261343931363462343138633861646434616234643561353036663865623364223b733a33323a223933356365343031393534343930626235336161333165386434613731633335223b733a33323a226637623461363834303831326134613161373663346531323966626333633233223b733a33323a226264366330653339313931653865346366633761623739353732663836323839223b733a33323a226366383837613131393432346438636339376333323536643136333237336535223b733a33323a226666343263613564356531363462333535373332653937333133616362303938223b733a33323a223532303830333563323533306233303931663235663465646664376234373764223b733a33323a223864343430653737373330666463666534346366366538663161636365653735223b733a33323a223663353537653335313832383030313339663630303564373034363832363431223b733a33323a223135613866363337633631313364323732626530623061373839373166643763223b733a33323a223138666439313961656636626637303532353962303165303165613334356135223b733a33323a223663363138663331323130376437303535353836376338383636613664316439223b733a33323a226262386166653636663735393830613737633764613539323030363438646630223b733a33323a223934316235303665626339393134353231313561626334653031366138386166223b733a33323a226533396361623961626562336566646361643962623233653737383535313261223b733a33323a226335633432373162346135353762396536613538396635386562373133626636223b733a33323a223463323238386338336538346539626137376135383231333462326333643539223b733a33323a223665346637623935396133626235343866663733303563313434353362323761223b733a33323a226564356131393965386236656631653235306630336231313938363031313066223b733a33323a226361393632343063373537653238323831313634306339323966356434326261223b733a33323a223934663234666436626133646231633266336132373437633262373339316233223b733a33323a223963346639343536303838643363303261333333323232363761373539633530223b733a33323a223262346334306432363835663735336165343134363637613936653961323662223b733a33323a223334303564323933646439326332396135656465626133656233373535626138223b733a33323a226661316538616632333563623566323332303733363362353536376236643061223b733a33323a223365313530313961346366643835356437396630373738313761633766323135223b733a33323a226566313136366263333933623666313266356261663537356464383730326435223b733a33323a226239366632613564613863333863633938663138386135343966383564653833223b733a33323a226237316562343865666632646531343432303033636432633464323963343735223b733a33323a223233366633363766623166333933643164323732633065653933336264633337223b733a33323a223166393730306564313363383165626166383261316164366362313831613766223b733a33323a226636343565343535656332313862383762303633396362373666336430333434223b733a33323a223135396535333336633237363865643961393765366132393866653762363739223b733a33323a226335626239633664653731386339633861653835366462643666303733356231223b733a33323a223163626137373631646239353462613939653137316138353136633164613435223b733a33323a226361613338613535343238316462626239616337363439376531346261396338223b733a33323a223231303839653831663738653630393734366165353161343361356663616231223b733a33323a223538313432373163343166653932373766396633353765363330623536333939223b733a33323a223231303835666262666663623739373238316431666637663637653563343232223b733a33323a223563386466663031376435323837303066383433353831303339363863376534223b733a33323a223563383037633966386631616437303263356330333766343531663565316138223b733a33323a226437316430353364353464353265666162383063656330343237663134656337223b733a33323a223761396637663562626538366165323537653030663435383362386439333463223b733a33323a223063653336333363613730303533356233376133653938393135346638383865223b733a33323a226464636465653064653462396637366438626665356430396664346137303336223b733a33323a226236373732366362653633326261366665643634663963326261663163373233223b733a33323a223931316332633763366435663331313561336261626164626664383865643365223b733a33323a223932626233656330326261666336396639373739333630656661616665313131223b733a33323a226631353537323137633535303064383830383730396530363530383933386664223b733a33323a223063336538333761633861303737353930623963653465643164386432643037223b733a33323a226331653333353636656434353663336664363466643065376164373638393435223b733a33323a223764363663323332663532636238653937303266323739396238633364363265223b733a33323a226332373362633235633261333362333462383139653066663334613939333366223b733a33323a223237383531633431323934656238626631643936353362663733373363306362223b733a33323a226165336131346261383933623433646234306633636463303662363434393064223b733a33323a226437326335653266633766343930393662363535643430313235373736616266223b733a33323a223063366339376431323130653931393864613635373432646531376237663962223b733a33323a223833656661323536633932303233316430393061396635666339643063346462223b733a33323a223163663564633635646364313561643863646264306239316339313831373036223b733a33323a226139333466373437616363643866656237336262353936333631303234393161223b733a33323a223032316165613033323936306130373063313038636465313035656236396633223b733a33323a223531366338353763386164383336663431373532386633393931346132646565223b733a33323a223565616566303065333837626639313030623361306361376535343032386463223b733a33323a226434376164396364663538303539376362333532616639333837336536636233223b733a33323a223265633062653333653066663265313637633330336566306535373261336433223b733a33323a226164376230353637663564313566323738396330363733353030643830383063223b733a33323a223032343239666363643866363630613462653136653561643964626637343336223b733a33323a226563613663616536623135306532626664633436623164623035303061333036223b733a33323a223337373234393138616438306461323234653364313463666366366164383232223b733a33323a223130326363663465353537656234653236666635356566663334643032376333223b733a33323a226238356664393034393863356530326633633739336432653834646163346538223b733a33323a226463393336373035373134646437653430333833386464356133326133356263223b733a33323a226462653163653732666164376366636430353035363166313165356531303138223b733a33323a223236653265666361666161336163636534376361353733333561653065323136223b733a33323a226130333262356138666262393836306566316565316639306437613631653562223b733a33323a223266396239383331636262356435326132623861653737653565656633626162223b733a33323a223665663032326337363962393630653262373634616631363233643438313735223b733a33323a226665386632333065393461356461343466346634373564366334636631663462223b733a33323a226665653466353165313333323030346636346332343435386464373032393630223b733a33323a223933323936653966643735306361656362643761653433383338313661393364223b733a33323a223537356663336265313134633064643638383737623133393238613331343062223b733a33323a223230363165306136343965333566663230656333306337333938623261313362223b733a33323a226263383239326236333931316264626431353034333436653239373232316365223b733a33323a226362393639643666653836616165386435613730623534333330656337363465223b733a33323a223162623237356539383336303735636662643962383033356266376265383563223b733a33323a223665633830623233363264386138613130353466363961643464343464383435223b733a33323a226636346330393734643231363239353936316530376337306465643039353536223b733a33323a223537666337393431366365363333363131646666313662653436373364626236223b733a33323a226561656362643064343238623039653633643364663933656337613164343433223b733a33323a223663663762396633653138636237653439663063656138333132323930346363223b733a33323a223737333463396133616263613662323530386663626162633133393965626637223b733a33323a226466643634333464643665313035326133313866326663663135396132643933223b733a33323a223664383232336564626537646439616230656563663631363032316337643764223b733a33323a226134383262333264303961626439366539323235666662633663333465383865223b733a33323a223961653030353164636435656133636565663532303436343936653964353936223b733a33323a223135316665623739343434333334646235653161383233316663373237653866223b733a33323a226136653166636238363935373832623132663238303963383839653561386463223b733a33323a223532316336623736373565336635643236646635313936303531323665333665223b733a33323a223862396337653130303735346236393230373164633566363738316632646632223b733a33323a223762323465366465636335306532616539663036303066613863363964366237223b733a33323a223033643162353330663666396535633666656333653837316466306133663763223b733a33323a226166356331626534656665346363303434326236613738363636343837393638223b733a33323a223630623030313032326265353632333733373661343064613531636364396435223b733a33323a226164383339323363616264323439623864336137623662363334636330343963223b733a33323a223663613364333330316238393039333633316164356436313536393436636636223b733a33323a226139343432303466623261646539386631636233626132386362653832356238223b733a33323a223031393239613361343939636264623638646436663536613262633035303863223b733a33323a226133643966623737633663643535346461616539623231646162303465333837223b733a33323a226433376464323362383530396135396265623030646164643032323235346565223b733a33323a226566343239323962323730656165616433626630386130353935303064623632223b733a33323a223561666365666163613261323836376237616135396364613832323830653963223b733a33323a223138343639643638613931323236303462333834303135353739333731646233223b733a33323a226236346132316439326266356231363964613034346435646231623734376464223b733a33323a226135313631333035363330393730383730323262303933633937363930386162223b733a33323a223235333139636565653038373636653838633862653730336636663233386564223b733a33323a223861653937656434383433383736626631636666396332386431376565363661223b733a33323a223730323864646564623935386132303561343564393533646431393538306634223b733a33323a223462633430633862613463363533313436303363386531363136363538303938223b733a33323a226438363362613966373532643332353334636661663334313364313166616463223b733a33323a223061333730373330363333313730666635633936333966353532333664306330223b733a33323a223039393761633833313463626137636638666532353230363462366464306239223b733a33323a223239363732666633313437303135346465373439623030336666383534643338223b733a33323a223335316435373831656663373436663932386330643735373866636664373861223b733a33323a223738373766656363396431626664653138643131363062613066306565336465223b733a33323a223434333637393534363934376335343461306337343637396135623264653634223b733a33323a223535376334313464356332333037373732306130373764366639306433313231223b733a33323a223265376632316132373962633263656432343633663661653331393434356664223b733a33323a223535363839303637393765373233646438343733333733373231363066663730223b733a33323a223361306461336530373031646232333963396132316561656630323164396662223b733a33323a223033326662346533383761376232656462663736343530393139326533396566223b733a33323a226233666339666238633630393165653862373434323535626333393238366531223b733a33323a223739613164383936353930376135353833343666363234363137343362373234223b733a33323a226433373332653731366237386664626464306431666430326266663734383933223b733a33323a223931386162643463636664353139646635663634333664643238386535366330223b733a33323a226633623134396661653838326665663638303535396265363435353935316264223b733a33323a226164643436633231323732383762633735386361656230333039653466613664223b733a33323a223039646536343938353666623561656263326563376263663864336335383336223b733a33323a226163383935363133643035366336353535613466306636616632666338663635223b733a33323a223864376663643337646231353934353731663936633939666531663232643634223b733a33323a223930353239613066366661353339666431613062306437646361323638613265223b733a33323a223930613032643539303630363965613933613163656330363732643964653166223b733a33323a223062303637653037643232313761363662373164386361346238396363396132223b733a33323a226630303437623830643931643437656561623138336638646262383162366633223b733a33323a223734616232623661316539396666393862636232613333386230646430633937223b733a33323a223535636266653438356564386338313032666665653138346331323733666137223b733a33323a223239343237346436333263386633373235303361376130623437333166313038223b733a33323a226631386364373163316335616438343730393832613334333939323466306639223b733a33323a226635323837326365323339653935366439313564323961346332383736313339223b733a33323a226133306263333235313632646633376332363038623336373830346439646130223b733a33323a223538396161633533373464393735396337663661363833613435376662323734223b733a33323a223162626365616436633438326662383130626137383664643064626165666331223b733a33323a226166616433613666343466333165663036383465346430306366626564326465223b733a33323a226430363332376531343137356239616133343430303932313835353230636431223b733a33323a223965303262313336393638643039313766343435353037653862366363343961223b733a33323a226536663437653339343738383537663566633431383964646333333232393333223b733a33323a226131326661346231336232613734653037363962363835396135323034333538223b733a33323a226431336535623061633730633731356333643134363539396536336237353639223b733a33323a223638373137613737396437643834386561643866346563626363336431373265223b733a33323a226666636636633131626439363265323332313332336335313364376430323365223b733a33323a226538643963616634613463313337623335646666336161393135336432666339223b733a33323a226336663161616536613562396538353235633739663532313337643538346531223b733a33323a226538303966373930373363356563343833356638333763616163373064396230223b733a33323a223237666166636163626438663537363861633933633932306464363461616636223b733a33323a226464343966323037643039613364383239326466666635376338633462326462223b733a33323a226237626435623463343162333231336231636331396563303735376130656662223b733a33323a226532383461313365613735613632623662393965656233633838653538363364223b733a33323a223931646135653965323366633664363363643163363736396238663335393866223b733a33323a226634343131333062373561376231396666393263643231333765643536303464223b733a33323a223435393032373338653762643933663634336462663931363361643534373839223b733a33323a223334386266616462343137636635393161666239336131643731393162313564223b733a33323a226631623862656533616436653264626562356136346332663864613131663737223b733a33323a223230363534616331303631313065343530613834333264663861373361313732223b733a33323a223262343536323234626662363831623163326561363763316134656662653663223b733a33323a223032346663396163626561666466363537666134626361386433626430626163223b733a33323a226138643730383166363065393835626132373635306635643733303735326464223b733a33323a223465373631633735376664333532346239323937373534643732383033633636223b733a33323a223038323166613532316535353466393336396564303531313364323934373731223b733a33323a226433626264393937313031663030616463643465623936373434613266353435223b733a33323a226637316337373863613535383532613264373563323731343931336537623461223b733a33323a223939396131313936333530653430636466313932316534323661353030623231223b733a33323a226633363331376338636266386464626239396533666361383039363738633536223b733a33323a223037326235666335316635333635363365613131656466633130353430653364223b733a33323a223535396563366234656335646531366161356432323236333564373737643163223b733a33323a226636363866616430613165356262336362346631616566363066653036663732223b733a33323a226135313361383838626636376235303062336535343539326664303339306337223b733a33323a223039373163326137323236363231626361623630303761303234616261303364223b733a33323a226136383237663030656633393939366636633134623162373661396437363237223b733a33323a223638383564303964383262393535313539613065313163643431663864646366223b733a33323a223831393466353366613531396537646163633638356635613265333133653833223b733a33323a223335656164326435623633336561366237396563366264393764323462336637223b733a33323a226437313231313135666363343431663861336563303635643262643163303434223b733a33323a226539646362636237653631303537616132313732363633343562376366306434223b733a33323a223537316636653766643934343264633837343935666561666166636231386439223b733a33323a226636666532353364663631653130626466616631326438306437663733343266223b733a33323a223561383363346638393063323130643935303233633430353531653762346665223b733a33323a226564396435356334326638346362633233383066623034303863333335653866223b733a33323a226631396537343637653137366137313431646562343735376437633763643133223b733a33323a226130376562353666613666666465323839326262613733356261643534336235223b733a33323a223338316238613163343739613933633232643037633562346136633131323432223b733a33323a223764303231666133633533643630313433386163343638373562323630656437223b733a33323a226637366431666337373232303963323134646162636635383361666464653538223b733a33323a223132373538363439393761326364633236636364386262666463333466323463223b733a33323a226639353861373533666238663962396138323935616261353937303732303166223b733a33323a223231393966313932653530343765396564383637336433363232383762353132223b733a33323a223034626162363765636637613437646239363661363464333735393033373834223b733a33323a223631396334313531636534366330646638373161646561623234373134326631223b733a33323a226561643934383763343732313531313331316332386364313531316164643137223b733a33323a226161666139326133383035653738623435316466646666623132373033666134223b733a33323a226132653265646431613162663766383263313836613761323361636263303430223b733a33323a226363306130313565313937383664393230336362383631313136386565626335223b733a33323a226631626530616461383465353665356263313661363065383835663336393239223b733a33323a223364343565633936353166383262393335356438626633613665633462333433223b733a33323a223439353432616466656639366565393333353233393561303631623437343538223b733a33323a223366613664663237356134386637396333663333343935643231636164383364223b733a33323a226433346561643932356636613166666465356561336163386436633639663239223b733a33323a223965313239653966303738363632666439386264346461343061653366353661223b733a33323a223465353534663663656139373266656535626434653936653866616264366366223b733a33323a223965323838613362616533643937326665316530346532626239366161313432223b733a33323a223936303537303831643936363565613630656334323333653861643834353937223b733a33323a226261393237373262343663616637333664626665623265663636626462376564223b733a33323a223431306435646366313964666465306236346165646261303032633361316338223b733a33323a223963396361613537323532326133343133613732393831343139353030346139223b733a33323a223663363764373232313736626634373763323831316539363738343737303063223b733a33323a223434386637313663336161363736393264356265383339343738616237643036223b733a33323a226131336661306237363337306339373035303130393033346663323637356136223b733a33323a226437653233643738333834376561316431383739336538386632663137353139223b733a33323a226433366432363263363431383865636462396661663731643435353538343735223b733a33323a223639323864303737393262643331383835333861313535306535666463313936223b733a33323a226131663834646466646636373336616338393937326363373831316630343534223b733a33323a226131323734666137633137613734316438386365393038343763666665313062223b733a33323a223134343261333230316534653437373061613037353263356337643438373333223b733a33323a226435306666646636356533643935353663373438386364323765346331613264223b733a33323a223861356133306261353966656638366332366365333465313536356537323338223b733a33323a226235393462643036653839613132386665396564663936313162343038346630223b733a33323a223230626161373865383564393533313331343061396237313037633566613935223b733a33323a226530363566643163306333333536303066343065656431313330613937613137223b733a33323a223032613730663738343935316161386435666234623963666433633933353166223b733a33323a223830306533393936366261633737646639336164653636336263316435346130223b733a33323a223137653665636234383330626363336133646536636233616333633365366338223b733a33323a223463363162633461626130646639313430663632666665643866373962346632223b733a33323a223334383235363733326637333161616464313232323463383730666533626665223b733a33323a223264653234353561653338613466633830333863393638613339333065656239223b733a33323a226665316635323336623765326662653739373664333331633835306630333732223b733a33323a223333343033386330303434303530303430363935343365653832383130666266223b733a33323a223964306462333333663134323836323563326531343534333433633837393831223b733a33323a223339633661346537356562616561626365336532643032313131643763623031223b733a33323a226333613963653361383865356664316533333363663462393932616665613266223b733a33323a223234336430623162323063616332313236663433343166366139353366356164223b733a33323a226435333039323235656362666663333665356361303532313737623338333864223b733a33323a223262326232336236626664303133396263356438633737323763303964646635223b733a33323a226434333436663835333834373339663163393130393434653533656535306661223b733a33323a223365623537333930663633346235613262643538333638656666636135306130223b733a33323a223464653039306164326439343734623734646136313461386432323632303262223b733a33323a223439353965396231343365633262663362633436633263316461623166386666223b733a33323a223265393730653137633465313335656231323363616463313033336638313437223b733a33323a223433376138323735626364306362643430303662646466376433643565613133223b733a33323a226261356636343837393633376662363262616632653061613034396665336639223b733a33323a226339393134323332616461313730326463343864303233336263346565376430223b733a33323a223463656233383839356566396133353066643866633934313933666237643666223b733a33323a223636303637623562633964333263313533353837336134633565626561363138223b733a33323a223639303434633534333936633532616464396634333663393937623263306661223b733a33323a226139333438633766623438343631393231333030323164663163323331323238223b733a33323a226539656364396661663035346665653337333039623864663065623766616233223b733a33323a223463376563303038386430646634376431636239336166633331306466343635223b733a33323a226530646439666465383636633366633834633439343339663135353135323833223b733a33323a223033363434336432356531613465633736396334663634333765653133313232223b733a33323a223536363730363735633334656562373665626130653932333837306162376261223b733a33323a226232646639346166643764366565663938316638353230666464353866363338223b733a33323a223361366332363735346139663263643762386630373662356230303932313466223b733a33323a226137646566303866613663356161653739323131326464666637626632356636223b733a33323a223131356134316164636162313164343161343631346262616136653631626235223b733a33323a226134376331303839633366323765326632666139333066306633663132303361223b733a33323a223635653335633839646336633535633461666133616634616266323565643462223b733a33323a223930626332346534613863356663343039383336646630326562306237643162223b733a33323a223165323030333762626666346662313837303739373063393832613666623732223b733a33323a223863373136383133333431373563663065393534316564373963323133646432223b733a33323a226234303462643737633261626463306538393339656133333863336439643830223b733a33323a223964636566636531636633396234663063613032653562366361323131313139223b733a33323a223237663531323037393732633237336238346130306166646638356331316338223b733a33323a223363353561373732323666666530393937366233366134623364363831333430223b733a33323a226233626135613231323764643461313038376234636236353334386238373165223b733a33323a223633336132663366633066636466383365346562386534333965663932383533223b733a33323a226264616430616131366164383262666233646438656434633765616564383134223b733a33323a226634386335336434653439356236313064366361653439313635333865393231223b733a33323a226638333266656364373333643462326263373264313335306264633764663762223b733a33323a223765303035646663323039333337623036343834313766643532613433383534223b733a33323a223132323361393436393433616463343739353863393336636264636165663263223b733a33323a223634346162303836653961636163323838303662623437386637663933303161223b733a33323a223537396266383436316663626138366133336632353630666238636532303063223b733a33323a223839636336383139356233643133383039323239333936316162653863306630223b733a33323a223531383966343535376461353232313033393265653239666438353562306639223b733a33323a223433343932626439383435363663383062363937623539663439643461653635223b733a33323a226664336632613037326439353366363733623935653766343164366430646230223b733a33323a226535326634326663653062623933653364383764396636653936326563346233223b733a33323a226631353430336261313530663063333566383732623866643437633265373731223b733a33323a223033386436613263623137396637643366383339646463663966376434396162223b733a33323a226139343462633266353366623932313963626135373364613639633061313963223b733a33323a223936313830323032343861316539343531363637633734336335376361613030223b733a33323a223635386537646438636565636562356539636661303935316438653434626538223b733a33323a226536343265636531353965663162373964316430643163313361666639336663223b733a33323a226161333134666661653563643537346433363464373566633763623165313039223b733a33323a223532636661666262616438356661386532666262336266663861356638656164223b733a33323a223734333636303638363630646365613566633833356339316335316364383261223b733a33323a226262653430306139323038386233306333623938643661343063373033333964223b733a33323a223937353234326365376133343635396535356236303765663637336662373462223b733a33323a223231383165653934656230336330303438643664343664303561306631326333223b733a33323a223434346165306463653037353532396439353966333738646533356236643163223b733a33323a223662633666616465373431663764306666393462636533373662336564363235223b733a33323a226463326531303433393938643364616133376163333439376562353565383138223b733a33323a226331666433366166303935346165613162653934373637333163653532643935223b733a33323a223666326237633665393839363863613265353064323033373837333739643732223b733a33323a223739383132653831396561353665636633356166363233643333623237636464223b733a33323a226633373637613334346639646138626239636434663531646237313763653830223b733a33323a223132363538623837616362636338396361646337343365613137663833666631223b733a33323a223532316232613466373037663235393234613662323965333063663132313661223b733a33323a223065623137333437663365653932336438396335623866393137316166623136223b733a33323a226134663764366539663734666562316633386662356438373965636239626230223b733a33323a223265333638646261393437343966383132383166653866616136656163396634223b733a33323a223733643462353865343961343033646434316339333035333139326333343830223b733a33323a226463633730313963343633326230643534653863353362353066336131376231223b733a33323a226664616439336133316465353834353264623036616538343261366435353066223b733a33323a226530333432323264316164656364396539353937656537666132313038363238223b733a33323a226632613065613835343837383538663932393139383034366462386231613334223b733a33323a226664633330326439343732303165653438356236666161376637383066373132223b733a33323a223062363235313031623132393830643461363965653366383136633937333534223b733a33323a226534666239386430313037386335383937646636373564613938656465653564223b733a33323a226434313065333465646431323535323537316264336535633236376131333039223b733a33323a226234366232366362346665643235386632303835346361666434313463386336223b733a33323a223137363034343139643064623763396436306632643834333636383735633764223b733a33323a223534653231326239326436623964376430326131343633326132356562633161223b733a33323a223432313761306666303630633039623635366132396538323162343361336662223b733a33323a223631316131313937373132363862303065363364316236336361396663633639223b733a33323a223763376230376637366434393131613737393762363066303535393033383462223b733a33323a223339616462643463323632333166376462383330626263363436613335343035223b733a33323a226634326361643630373032353965336239313438383563643064343936373638223b733a33323a223533356431666231613032633533653161633539353963386433643464613832223b733a33323a223166373063666462333861663261633333316532323932316566346563646530223b733a33323a226561396332666337633936303535313064613931356437303132373730333436223b733a33323a223034396665393030326463363437383061613734316664396632323862636563223b733a33323a223365653565626535663539333862363830316138343964383835353861336539223b733a33323a226430353334333661623030316336313538363062313236343538393837363333223b733a33323a226464386331303934303264326534356464363564643430343564346634616632223b733a33323a223763313636316232613365363138613432613461383236656430646438353735223b733a33323a226264333233653061646236613761653733623466393265616537396237323133223b733a33323a223962323437333838303835656131663137313539643865633432636232356136223b733a33323a226662386630376564663437653035383833316137333663386562383865643839223b733a33323a226132643935366166343465363862616135393339303261373736663766356162223b733a33323a226563613734656534643862633961343038623438643730303262643264613839223b733a33323a223935393238386133616337636336393564666639336330343435663062663932223b733a33323a223362653763346236366338343236353961313263363634656531333235306362223b733a33323a226165383835623639613338366232616131396435636361303363636130393938223b733a33323a223634633963316138643265616335653562396430373837343433383633303262223b733a33323a226435653963623762333163646435373034333664623135663032633064373465223b733a33323a223366643534333963613361363831373237366266613639323466393966646663223b733a33323a223730373462643933663530363866633266353034333063376162306232633965223b733a33323a226335613236373863643037646266313063663066396432393138356564373635223b733a33323a223061363335636136633166343739666537656264346233393462393364313830223b733a33323a223763396634316262633232333833363932313339616161663530303362663763223b733a33323a226131393537323630613766343838626662323339386338336666636537353530223b733a33323a223536656661643033396132626430656130316162643561316334393364653665223b733a33323a223933663633623831333966666237666636303232656331383662613062666234223b733a33323a226664396363313238303538636466306666336234336630373237393263323835223b733a33323a223461633161336464346438393163623165653332616530356462396136376166223b733a33323a223531653463633731386465646230363130373237383131653533343137326335223b733a33323a226130373563663065313766373233666263633337393132373361306530313739223b733a33323a226232333034373139313363616533616431303639303638373062363130316533223b733a33323a226237326330623862333935613035346236323838356231356436373433393538223b733a33323a223636623033373137633637323237303561663438353037353132643062323433223b733a33323a226566616337333335633333393336623261343264636331643564316137306332223b733a33323a226534303338333534333863333639303939623133316531316630393664323065223b733a33323a226565656463383233623865373434343735313435626161336432343038353639223b733a33323a223631383330326435636331623965656461363535663765643734343666363433223b733a33323a223462343730396431613937613863643736366535303464396530623639356265223b733a33323a223333646237623161376437306336613761663865656134636665303966336461223b733a33323a226462616334633266336464383737633838393831643866376564663065306361223b733a33323a223130366434383436393232643664386430333435303734636466393766393964223b733a33323a223235623337326235633437316335373637616164346137303333383136636433223b733a33323a223632613436386139336364396436613537383835656531333337393066666265223b733a33323a223132666530303164643365636634303932376361663036623930383932353139223b733a33323a226264346535666134663939316636646464356163333866343361383631663032223b733a33323a223338393337316139363366356564383030313731373236366330323237386266223b733a33323a223031653534626230633639346130356262643531326264326334653663616636223b733a33323a223332366238356337636637323434336332633736343834636262336233623265223b733a33323a226232356436343039386535303737666439373765313662636535383231633937223b733a33323a226631623831306438343761343561333637363334373462376433636332353630223b733a33323a223764666439343838383337323464613033303133323466333738396163353636223b733a33323a226630666335643239373563386230373761653466643161636365343635633461223b733a33323a226236333731373937343962303132333638616366376437666338363263396265223b733a33323a223965333031653263356636353632666537396331326166353166643433326235223b733a33323a226633366635363665333466626565623961343534326438333364646563313731223b733a33323a223161393662323362343161353238666534326230643563646361336630313439223b733a33323a226431303636393966333464633166386230396538343933313836653634356464223b733a33323a226535313238666237643563653865663932653735633163373661303436633562223b733a33323a226633333664613165316536333237396562326431633361376363393430643932223b733a33323a226639643032323263303030366664656261393233376633333431666466613964223b733a33323a223532656462373231346635393966343932636265383935323166316338643034223b733a33323a226333306262383130363632376539323536393730376530646138663932316531223b733a33323a223238336265373033626533666639336465643733316636656333663939303532223b733a33323a223363346334363564636336646536663863333864636163366234666530313561223b733a33323a223261393738323532303034336437323835633836363264663362343862633632223b733a33323a226363303431316465313063626339613632613965646530373466343932303163223b733a33323a223635353631623864386633303332643030386565383065393461663761643335223b733a33323a226163313331336533313038636431393361353464386336666533393236373135223b733a33323a223636623135306563346235613765643435656234656264323365346338323339223b733a33323a223861343137633662383164613331336566616637366432346262643832643738223b733a33323a223737336337323762633339363635323262326639383933626337613439376132223b733a33323a223030363961373063383538643935366639356436653064326239393931626133223b733a33323a226562663665326539323431393166366564376334366432616435346531626630223b733a33323a226265663664346139646661313032663536333536383163633063613461616437223b733a33323a223230323466363034346235303165326133383736633962663865363431626231223b733a33323a223235643461373637643637623331343230636235626533386639653237396165223b733a33323a223530363133663632353233333162616330643063313862363365316232663661223b733a33323a223435353963376132386663643037366538363061616439373238663836613131223b733a33323a226333383763643361613636393535343835303165306135313230376462333566223b733a33323a226530343363376230353931643535396662623363383364336131623537323263223b733a33323a226135323262316537646264393439323462316331363236303334336563393462223b733a33323a223864326430386666633066383934646165313336356666353831303533656233223b733a33323a223362633433303534653838613337393365633738313162316339363531633435223b733a33323a226138396138646161366233623765663435633539333464623437666237366133223b733a33323a226363353331623435376535313033643137386630643937316230623966356636223b733a33323a223438346536393261323163356130373865303961663939373636356633323665223b733a33323a223766333961343333613534343533363635623738363937626434623164333362223b733a33323a226135396435383763373333343130366165323764356264366539353538386230223b733a33323a223966363361366635333337633137653538613430626538646434383939343632223b733a33323a223666333634656335323932363836316464386564363331373130353830306464223b733a33323a223862303261356165663536373338323464376532663566356634393633373637223b733a33323a223265343063656338363766646465346461383436393938633936613863323132223b733a33323a223935323332316463363534646464353066646264343562303331396635376636223b733a33323a223038636536383131613731653537656366636635363164396536336137616531223b733a33323a226466373834396562633365346562666566646361353830343639336238663564223b733a33323a223761653863346239356231393633643631386435323162303136633530383761223b733a33323a223637306636323434333738323439326466306263336265383037396230313739223b733a33323a226536653565373863316162363636353062626333356636636632636362316233223b733a33323a223634613637303137346566646336656566383735626631356439386635626663223b733a33323a226334343439343939626139336164653938386435356230356439373033316233223b733a33323a223463393739663366653432643966356164663231343732363062316638396632223b733a33323a223234333337646336646430663831633833653638643862626235363363643361223b733a33323a223862623932623664643139326336303639643266633933666638356335666134223b733a33323a223564656533346562656633623539643762653062346266313233643834346434223b733a33323a223465653662373830313831643264306632663763363963663230326335346465223b733a33323a223234613130633535656535393637383632356662366165363131336132363039223b733a33323a223335366139376563383132383062313262333137626562633261636231636438223b733a33323a226537633138323963656330633766666633613632383266656662343936363530223b733a33323a223239336231653165336464623061356163353937623362336533333433633164223b733a33323a226132346139306232323333306362653332653934353934386163646665366164223b733a33323a223633616664653036383030343436653235336634373063346364373134626335223b733a33323a223032383531646137373262386664326438386532386437326164623033646431223b733a33323a223765346538356331316637663965393333316534643636623266343564616631223b733a33323a226266323764313761393561643732326166633533663132623063623337336262223b733a33323a223731656632356264363835656339363038386234376563336137383432653635223b733a33323a226137613134316135343561316462666130383039393230613963616631363235223b733a33323a223934653138616538653730653033316235323138346438663135313663353837223b733a33323a223935636462306234643030623034633531353232613033623462626338316165223b733a33323a223432376537613633656462643561383632356136383938613065333162636633223b733a33323a223864353763633836373333356132353838343466626638656639626264626564223b733a33323a226634343063616466366562373039643939623064363264623161313833343234223b733a33323a223962323763616333373435376639383162313731306237383634376638343865223b733a33323a223531376431623761366130653661343832323038386632666235376566353563223b733a33323a223134306137633562643830306432306334343462666161326431623532313964223b733a33323a223262653066393666373838333964323066393337396636366331313661663638223b733a33323a223234313761366461613534353635303433383937613737323665396637393862223b733a33323a223562336233343563326537353534653230326233623534313031366230643963223b733a33323a223566623063636362323133633163343831356539353565343337393230663266223b733a33323a223161343935656339646535643061376632616431363836646634646238656339223b733a33323a223761633139613663383930343262623066623232396165633264356630356361223b733a33323a223564336139353863303037343730613561333061613336633739613933333832223b733a33323a223039616564656432303830636233316634333337313135333633373539336564223b733a33323a226135313862616630643963363165323638356265643630633565313333333234223b733a33323a223263393837636235333465663935663033363863303936313562666131633830223b733a33323a223939633733613562613234623331353439313662646164326139653162333930223b733a33323a223162323138333036656261663064346233366434393237376435383137313632223b733a33323a226134366565363433353731356364623435666337666561393937363031643465223b733a33323a223563383266623461363635323837663533636364373833313439613666316263223b733a33323a223764643863393935353138346334343161613263313965663938323635616162223b733a33323a223565373963313330633630343831376366363737326436386533616335653164223b733a33323a223866353334393132376162366535356262663930353139373035306330333733223b733a33323a223035333638333263303864336132366461333930396134623964363464386162223b733a33323a226230633030353766616638363665386435383039346131323461306436393435223b733a33323a223739323537336661613164353930323634383036636634376238336137316564223b733a33323a223735623135393130653965383132393633343966383764363163356634356234223b733a33323a223666323265643930616466313233393733393366626631353562326331313365223b733a33323a223266643564346130386164666364316565323865366436303262656530306433223b733a33323a226666303533656638616136646138323636393965326165626236616464316661223b733a33323a226265396562353539386431646532653864653835346239353564656137663534223b733a33323a226364353962396335366561313134663466633531303065623066383533333439223b733a33323a223139663037626463653134653664303066663661633161616666353232333535223b733a33323a223633313132643565316361336339383033613432313236616236626266623235223b733a33323a223331613933326531636333326432303166656130653364633230303831353566223b733a33323a223465653863323135323062333632303432386338333665633934633836653864223b733a33323a223863646363373330336631333332303936376531626464303036623734343061223b733a33323a223265366333333532636165353135333737356664646463653930303133336439223b733a33323a226662356438383633373765343636383831306437656534336338313936396664223b733a33323a223163363135326137353537333862633762373161646238636464646437333166223b733a33323a226534666139613039623061326238383264323632653036633166373235613638223b733a33323a223165323366643435376433366130343634303235623663343463343565643663223b733a33323a223737363466396433346433303963623232346465616164333833316639343762223b733a33323a223961626262636166313964383531356265393266653033376466393262643339223b733a33323a226533623231303839356339343463366462323162373035333131353134646237223b733a33323a226439643131653938663335393864343839363664306136633531653633653564223b733a33323a226165376365386535383630623734616433643765396437626539616234333534223b733a33323a226439656137646361613861623364623137343136383933383532326436626264223b733a33323a226265646236663237326230366462363061346230306135343663666637643737223b733a33323a223630323932616234666664613966656665303132393764393763346234633062223b733a33323a226261393531633032356431396132643231333636386537383035653938353030223b733a33323a226532336237656165636232643136363966343730666339373936303264313865223b733a33323a223038663162383538613133393261316162353662396435303236663063383639223b733a33323a223764626537356663343431636565396333313837616638383939303533666536223b733a33323a223062363432313963343435386537343531626564393766623766616139646631223b733a33323a223731653139316535353664313165353663396635623030343639646538356664223b733a33323a223434386339613264386264373332353366373433316234653830336431663562223b733a33323a223338666532656261653831633738393933306263626466626439326232343462223b733a33323a226433646263336232396366646565303035656666613132666363303531366331223b733a33323a223939626538356132356262363937613663666161326132653834623239333036223b733a33323a223333653934343263666131633666363563656134666465633064393430323738223b733a33323a223834653861373265343632313133343431353063383530353166653630353333223b733a33323a223365363961306533373665313832653065626165323065626663313834396263223b733a33323a223161333432346463313631346635643531653835386337636261386136623137223b733a33323a223532313831393564393333313263353436613462363433626135383062376531223b733a33323a226436396566623963613733336263346530363666343765666364373533336438223b733a33323a223066653139383636393635633561613837363435303363303631313064636138223b733a33323a223263663233376535333638376666386437353337656633613561363135653535223b733a33323a226539663330356536333163303064323433646531303033653237333336396366223b733a33323a226531353361343833313463616663353032326362623232386362313834316564223b733a33323a226638663139386331666435343635363533366566373830346439633637313463223b733a33323a223961653736653235663637633864386436666237616339616536613565666639223b733a33323a223565356131633536346363393763646232323963663262376263373564306462223b733a33323a226465373463376465363635323438353263613635396261353336373639616432223b733a33323a223533353938666631366264656164396330303262383164323966356535343761223b733a33323a223238376266363432316234613266373730643566313664333933326261386166223b733a33323a226636313661653838346437653835653464623163633736666230653132633333223b733a33323a223765306165636637393230613537643161316234643238313131313438396131223b733a33323a223733346531366666376534643634663133383734626335633032626166623564223b733a33323a223662376338333461623830626265303431653137643339613032386564653539223b733a33323a223939666561393066356365363339323565663561363361643532613736346565223b733a33323a223262333165643965646432653062623434353130613037663139633865616438223b733a33323a226466383938333035336261333566663961643362643731646632613937356230223b733a33323a226665386636663831383865633362333864303132663763333930396662346466223b733a33323a226566653930376232633332323364613937373766363133323234613634646562223b733a33323a226662323265373035376461653162383562353535663461373937636532356534223b733a33323a223931326461643837376236316534396337613662343831376663646633353336223b733a33323a226231326262326665396262346164633630643766306634363063623435383532223b733a33323a223563653733316661623562336563383164383337633439393265326461623064223b733a33323a223431633864366431613735633435623063373935633635663637323663333133223b733a33323a226532363136373437343932653764336230656134363332633037376234303263223b733a33323a223865323837633939643730633033646132393332383138336362383165633331223b733a33323a226536393565396461356438643334333561323031356630343637326163626234223b733a33323a226261323336633338313065323765613066636338396164366262663439366634223b733a33323a226138393866303064333638663937373139633838616630393161653932346635223b733a33323a226361646434643835353532346261343063633939306163323330303437616635223b733a33323a226230303430333734393466613865303639346532376532613139656435343234223b733a33323a226164653261363339623339323730373539393833306365646563323861656665223b733a33323a223366373534303131353465333333613434383364336436363833396332356135223b733a33323a223630323230306336376665323938363562303433363731323462613830653836223b733a33323a226239613632653661623263393761346661656366616134613963313330313330223b733a33323a226565333561643262636332363166386234616537343532323031653333306130223b733a33323a223464653463663834616265396330326263656631346431633736313564343830223b733a33323a223935383561326363323365386135346466303662376161393036633039613362223b733a33323a226433643934633837343636643464383365306365373635363434636638323835223b733a33323a223062306632633361343763643836646164646565323964623462336532313637223b733a33323a223363373639326163386631383334373738386239323034383030626236663532223b733a33323a223963613763333264336430663836336130653834393631373662653139366432223b733a33323a223936353539316262646238633134323133343736356439353439303665313565223b733a33323a226261383731613432333433363061643936653065636631393737373638653933223b733a33323a226562323462383338393031336338303238633133353130323837383364616637223b733a33323a223963383736373231633231633039383838386237653037386531386166663630223b733a33323a223039346364333839633734366135336237323166316235336331636135366431223b733a33323a223132386562663638646435346663633836666630353864393162656338383061223b733a33323a223231343462663739656432613533346238663735363035396536323132316532223b733a33323a223162626436333766373839616233626132336639646265663133383362306431223b733a33323a223136363662323365336130346163366364623936303439333364666232306436223b733a33323a223432326336653630616631363561356530643237623935656561386633346461223b733a33323a223837373963646466613939313137346561383738383733316531636636643065223b733a33323a223832393362386635396533323233353038343536383432616233633762366561223b733a33323a223966373334353434316631303037353739336663653036646234343965373137223b733a33323a226634653462326430393033336166306232366663613938326462373962376339223b733a33323a223964316564393939666131613837323633653836326239633961396335356263223b733a33323a226336363933363332613132616433666631376535376466383763346631336337223b733a33323a226533373532323630616136653139383439353936396337636131663638373461223b733a33323a223630363432626364333239326632323863373162323138356330366233626330223b733a33323a226639616139636537663934636263306265373032353133623465343938373632223b733a33323a223066373937353063326565663261376430663931336431333763613438633761223b733a33323a223533396439363463386465353336333363363533363166333430303632653763223b733a33323a223434623830663930356430363762613265356536303865313032346134373337223b733a33323a226233323835613264386238306632306561613966393630373639343461303562223b733a33323a226462333432626362373238373634666464373736376632383066383731346334223b733a33323a226262666335613866306363326335383833393538396239313730626232303831223b733a33323a223135613535383431376333323433656163656166646637313837636466343138223b733a33323a223766623862393535356564343264376563616363383461323531613065636365223b733a33323a223865366162616238353432383533386661303731356339643538636138366164223b733a33323a223630383464613165303561343530396362623561326465346261396633616663223b733a33323a223236306561396335373135616264383035303665326134346136383338343232223b733a33323a223430643133373538653432323231623734333036353166333732656565643061223b733a33323a223333363333353865616163666162656134323039333738396166353330303130223b733a33323a223138306564366234313632636138393136386462346164303034636237633133223b733a33323a223362303263356530313833356365653336333033626366613732613966356463223b733a33323a223839316666313164613037383162643735386536633238333765663039396564223b733a33323a223935343434396432353837313436613131316430356234613131306564346634223b733a33323a223130323332376463333331303466333661666632363361376466643132376464223b733a33323a223364663337616338316438316137333166656239313630333361323732306265223b733a33323a223033616664386139666465633533316634613930313262653830653465656132223b733a33323a223365313362303634643537376665663534333435333631643462343431643731223b733a33323a223261343133636465363430333366623630336536366239323336653762363139223b733a33323a223961333961343363363661623033306130343965373866303337353435346433223b733a33323a223664373761353732633238383534656661623435376464666263623265636534223b733a33323a223235383531656331353137356364646235663163363630303862653336656135223b733a33323a226235646461343966616232396563666261336465353837353064623334393563223b733a33323a226466373762643434383836366535653063363231366432376332323831386564223b733a33323a226363613563333535303735653362636239626634313531323439646334366231223b733a33323a223362376434666664303166626333363562326264353839633961343062643265223b733a33323a226337393332333664653139303634356537653166353431323135376566393466223b733a33323a226232383931326335616430383536383937383533373866313866646165386232223b733a33323a223064363239346661353866353834313261313137656638353665633738393833223b733a33323a223366613362323938613138363436356239316335323836653138663137306566223b733a33323a223561633461386230306233376564636332373961626133366363313235353230223b733a33323a226237643563386662363236653235633539313534396365306538616235623232223b733a33323a223331356464386366653731346235343234653235336539616235643837323633223b733a33323a223434623333663761396234363931373164396635393636656532656638373733223b733a33323a223133323163353261613133393363616263356362326235633932613639356633223b733a33323a223233326163313963656165323430656663336334353565303064316131383437223b733a33323a223661366630666335643337613734396438636539303661343733326165373032223b733a33323a223231626135343736663730343438653438313237313538663230383062663735223b733a33323a223233343031383539623530323965376239313731373162353230356364383236223b733a33323a223336663663316633376632626263616239643034333639663938616438376333223b733a33323a223635343732336365613161613536663663333130356563383937333539663166223b733a33323a223764643537623638663531656235386166653861636363666433643538306631223b733a33323a223362336139646637343561633263636561373538353038626632393965346466223b733a33323a223139663135633934663137376166386335363036323237633633313931336333223b733a33323a223332353765613765653634663236623964353839656634646532633831616639223b733a33323a223364313765666561666138353834393530393636616433643437326234353761223b733a33323a223064623430393961333866336665313134633932643464373861353361386462223b733a33323a226431613937363561313033343963383834613134336364663163663630303165223b733a33323a226264666566636663646163343333303864363731353861653331653161303837223b733a33323a226661326231316437626536666462373765363962663662333861653337336265223b733a33323a223163633361353335383931313566313237303935353464623732343233343630223b733a33323a223564613166306666646334663738636537373333383864316637346532666431223b733a33323a223337643764356539386566346236643430323162363932336338306237323164223b733a33323a226463396237623130613061303234623461663836316433396166323430316162223b733a33323a223066633131663566336266396662626637353166663934363561373039386634223b733a33323a223836393262623166666336663363656135363139643664633264653138636161223b733a33323a226634316632373635326634353432323630393033656236376633383666336562223b733a33323a223034616137623031656433623966363533353162633331353533326436306163223b733a33323a226564366439366136646461663565353330336666396361613065656237613434223b733a33323a223331303863356266623236393036343664376434326563303963663562653831223b733a33323a226336383036666664623764346233623635646335343862306465626235353430223b733a33323a226237313439363337623038353631346161343938373661636332373939643135223b733a33323a223764313234396534333161346233653732343733306266396438633461306433223b733a33323a223735316634336630353535656565666637653462343465313233666465363835223b733a33323a226561326537663363633765626434356635333365633262323366646232303534223b733a33323a226366326563323135313332343731346165663939313533306234313531313464223b733a33323a223163393066356438373163333833393761396361646336653034343665633134223b733a33323a223864623032376435316462636233386539376661353065373637343433656566223b733a33323a226166393336373866643836313661396366653635336466663938323264323131223b733a33323a223232623036313031386239333864316662313963363339353432656136616331223b733a33323a223562663963623662613239646533623733396264306438393735326130333037223b733a33323a223033376263386165353334373861323030623134623730633131316635333533223b733a33323a226261323836313666326237636166623130386132316433626563343636353936223b733a33323a223362363562343939316333663237366534636331373037666366633563663766223b733a33323a226438346332383865373839346364383836323861336464396266353237663763223b733a33323a226362376164333062623237386136376139303264376531376566306139316662223b733a33323a226163653736346439323064663862616163323335396637303965653532633862223b733a33323a226265323063346537636663353765613136303935386435613830363539333965223b733a33323a223230393461363265343962353538323661636330656235616435356430323962223b733a33323a223163353261313639616334356334633332613463303165353034653736623264223b733a33323a226233613233613763333232323334643432363734663665353138356566316138223b733a33323a226337623036616230326565613533643837386538393630616665613236346232223b733a33323a223061303633356433343964383535333632316137376338643630643632623039223b733a33323a223938383335623666353363616134366531356461626332393931633630343530223b733a33323a223835646530373564383538666566636435623862613961663464636639376336223b733a33323a226632333639636465393362353665323438373162363963623738373661623966223b733a33323a223833383938313365653137633736366130393061656463363565623761336639223b733a33323a223239633631643863356430356666623865306538303433393933393236353135223b733a33323a223961316165343930303166373831373064373662653335346335366336363536223b733a33323a226463626565666636333964643233623565383166346337373736656337613731223b733a33323a226636653434636661333131343434643633393335336361313930383636313832223b733a33323a223865336337656330366566316162633739383035663439663333343237313636223b733a33323a226262313361333331356432393662313730346336323830333633666136333730223b733a33323a226330356234363763383230326336383739383936646433653032363937386130223b733a33323a223965613138396564643337306630373564373835633235636638386430633466223b733a33323a223834393137396161323631383238333866326432383436303063343165313263223b733a33323a226435386466653837356239646634616434343031323030643335356533666665223b733a33323a223561326537336333616165643166393738306366366334643639613962646165223b733a33323a226566643837313137346632316536316464626630666130643662636638333730223b733a33323a223439386663306538323761316264303861626165666261616164646234343165223b733a33323a223563306566386666663562393337653362663764353266623933393339343437223b733a33323a226436636636643639323834366230376335376339346664306463376231363438223b733a33323a223838383230316661366330636562306462656461616532653630636561313335223b733a33323a226366616566643461366162653832616536643161346238666439306633613565223b733a33323a226261356130376366383136373764356235396265303734353733656264396666223b733a33323a223035366233386334353863653137333833643630626234656364656635376338223b733a33323a223764663463653732633432613463626132633764323765336338633065336262223b733a33323a223764343437653930653933643430353730306561646361663966303364343265223b733a33323a223564333961646435633432303837313834366461353261393732373961356161223b733a33323a226531333732326636663831393863323461623566346636653932636138373465223b733a33323a223631356265666631613536326634643764353461613763353662363938353663223b733a33323a223832643861336161643338633030616637653336393831636265663130316139223b733a33323a226264656132393762316465663139396565353237323161646161346537393630223b733a33323a226439646639616239383731306138653932383438393532373164323165636537223b733a33323a223861616239323962376239343137643130333261613837366137313933393537223b733a33323a223863323463343664383137643463653139666564353732356231393864343737223b733a33323a223561613036646336316636373936626330363431656430313635333739366434223b733a33323a223962643038303564353334666235656438643737303138333435643339373136223b733a33323a226230303261373032333336386538383364346238353630663662663631313433223b733a33323a226539366461613439353039383535396435316333333864366266303331396133223b733a33323a226564306464633434303461383731666437393762313663393637656639356336223b733a33323a226436643932346434396438353061323335666438626564376330346438623433223b733a33323a226634666337306264646233646534396334643961373537326262353532626437223b733a33323a226161323565626563393136376631316431636237333830373964616238633061223b733a33323a223965643235393433356432363062333663663163663561323039313436306161223b733a33323a226361643865306436333637346262623064383834333266353335663635353261223b733a33323a223635333063363137306434366430353663306163623832356438366339373839223b733a33323a223439343235356130666634373333623432343536623361616431303931386230223b733a33323a226365333134333434323962313531623831366334356461636132336165623265223b733a33323a226536626462653638376561383234383336666632353438303138316263373639223b733a33323a226138343331383938613365653065343933333339353535373838616533306332223b733a33323a223264636465366233316234326433393832343135383431396132653966366537223b733a33323a226532346534353033346233336263646531623666643438353265643039343139223b733a33323a226631613431613833323136303335386463346334646331613739643365383261223b733a33323a223235333236653264636134633964353839613965356235636535643133363062223b733a33323a226566656238343766373466356461633033393132623562353262353734323234223b733a33323a223530643239363034616434356532363932653561343638363262633265656531223b733a33323a223937373931653462383365626165306336316164393337313633313365373365223b733a33323a223364613565376664643135646531323139353331336635663361336166373461223b733a33323a223334353639323639373234333361383631633065383239613039663466303238223b733a33323a223931346235373238646461316563343037373666343037643761313034376532223b733a33323a226335333134346466326533666561663863633133366533393834343864353664223b733a33323a223935613438333939623564383137613331396430343166633131616164396165223b733a33323a223431303561623432613437313631663539323935326162613462653265643463223b733a33323a226430643762396263303838626537666433343437383564633330623439636133223b733a33323a223536306335633130393562656665356130653361663338386339356664653138223b733a33323a223463356564653566346236343734333033663864613962633663373463303061223b733a33323a226265643836343766363164396164333538376139353465343661303935626538223b733a33323a226632323534666232376664653334643639656466653764353130333838383664223b733a33323a226332353634353834393164643037646566343936636133373134613661316136223b733a33323a223839613861633535626136653536366534356135643565666137326436633365223b733a33323a223334306563373064396561646562383266363834343737636332323563386261223b733a33323a223864353633613739303662613435363137333235633631633530323961643266223b733a33323a226431333363386434643836326265646637373632666536343761343139366661223b733a33323a223837373463316331343739323634313530323734306331326464303162353530223b733a33323a223634646562376465656662396438373762323236353838396162396538353634223b733a33323a226632326464396661396563386562616666333061383265346536663035663931223b733a33323a226435383166366631643031366261626666633165663431333766623130376361223b733a33323a223838336233633863383539393961343030633338646231376364646536343063223b733a33323a226239386236313364653933346566316138666439643730643730393862333331223b733a33323a223039393439333438366633623534663662313332393134373236333738303639223b733a33323a223434663435356534386433343432386131393234616533383761316138356339223b733a33323a223838336634383830336330336462393838623762313961306633643466376264223b733a33323a223836313161373737623134333335316661363035613535373830383330653837223b733a33323a226438333665663532376235363764643561336533386638323566346437656363223b733a33323a223963663564316538393632646539326161346334646664333763363962623638223b733a33323a223962653032656265653431666236666435393164343939643233366535646637223b733a33323a223365623566323836366438373335303564633964336135323362316164633564223b733a33323a223830393661633533323832336561353339616366323735616332646230643865223b733a33323a226166666464393835393338386233373063353939323435633734366331626233223b733a33323a226237313466613965336437356435626361623339656366333834326335613264223b733a33323a226463343165363763663661663131326132316163333130653137663637643465223b733a33323a223539373862383966336531356432303863623663396230363463626432336334223b733a33323a223461613638343136343834396361643261396566626132366533623333386162223b733a33323a226661373261396638666232613336353462363166376339363265633666353935223b733a33323a223963353666373536336565386633656137626336393031376665373336653338223b733a33323a223434336362653431653835373161636366636639313363336331333039663439223b733a33323a223965336232346431363066393964613566663336623332666564366661663138223b733a33323a223162313430326531633435393938363064633363656131393863336537333164223b733a33323a223831363765383363373463666630636165373462323034383566663633393763223b733a33323a226532363531626431343330326362616537363630636565633133353566636537223b733a33323a226637623065343439656430316335313639303362666165633430343731323738223b733a33323a226565346266333365333830646639633136306133323139383138383966393137223b733a33323a223734346439303234613136306635316162383431653863373339306638663435223b733a33323a226635383530303637363736653830343134366537623466633734383364363430223b733a33323a223331313936343834636563366564313636663935343838623963623165366561223b733a33323a226336346563663636636338613138636165373631313439363666636233376535223b733a33323a226430623436636331323566373362623430366236373166386231313463306332223b733a33323a223362343139633430393230396564393533343766376236343361333638663835223b733a33323a223235373062306665343232353737393639386461663233373264363735633165223b733a33323a223932653438383234356563313731623537346431333937646530326663313337223b733a33323a223837366362393232356162623036333736633639346332626130623461393461223b733a33323a223639376165386238336530306531646236333235656664386334313961393135223b733a33323a226333323762323235326664323630666666383633653733656437323734346661223b733a33323a223064326531343434313464316533616464366234616332313537316130626565223b733a33323a223964316132373136636432373661356237366663383263376261343766306232223b733a33323a223864323230393035313834316261646132616430336638663335636635326161223b733a33323a223337613536623339323162383333663832383866366332636537666161393336223b733a33323a223131326564643834616237333365396565616139623564393762353538336436223b733a33323a223539356434333565386432376265653364353032646432366432653263616663223b733a33323a226136666331323262613565313561313736393839333061353066393562346632223b733a33323a223438343735326438646232303434653964346532653837303833613431666664223b733a33323a223737366162633466626534303463383035666436316430363762363263633731223b733a33323a223363346632316263663639363334633638653136313866363135386534663464223b733a33323a223565396565616134376339333438666334643132376433356433356138313265223b733a33323a226231373466313830316663666636333838616236373466386265616138323463223b733a33323a223630343035623963313463646239343564643463373963633534626562303038223b733a33323a223564333935663362313737663130303761383135386661316231666131343761223b733a33323a226561646336366535643635646437633733366337306234383062343739306536223b733a33323a223362623739326562653432656138366637363864636337363239653364386530223b733a33323a226263656330383237336163616164383434613138633661386366363533343361223b733a33323a223636623038633233353834336566666439343939643061346261666431323038223b733a33323a226336346263356530643938386630656363303465643435353962383637313038223b733a33323a223531303063656339393938383434643661613764643061663661343338343636223b733a33323a226131376231313233383630383538396136663634336334646532656332373634223b733a33323a223764666638663665346466663738346638383634343666393435343764343939223b733a33323a223262383661623830613939623939343166363739333539616230643439623438223b733a33323a226133636364353934646562346564353963383066333165643838633666366463223b733a33323a226364383264396236366632636335396366323165666266373330383962656430223b733a33323a223961363261346264396539373039613134373434666361336431613935393837223b733a33323a223939303435646164343663616566343237383966316264363465323138333332223b733a33323a223062323534333839613362313462386631383832656536386639346662343936223b733a33323a226532636463396333626263373061386631333534363732623731626336326631223b733a33323a223234336237643061623837623034646366666136613461656165393263313064223b733a33323a223935343734656637303432306338393431616233633035393565353062396436223b733a33323a223738633639646133383333373639323534623237653461396430313035363931223b733a33323a226136393635316263396337363331383362353866313833646463633263663538223b733a33323a223466393133353232356236346461333939653934366564616337363461333065223b733a33323a223062623865613535396639666636346130363538346463613031653036303437223b733a33323a226130303563356466623735383366633831613937636535343663326564356265223b733a33323a223466306131356561333464656565336439633838343462613938323463386464223b733a33323a226135616562636266626265663966303465303366386234636334363035666265223b733a33323a226537653261386338313063303665316230343963326631303536373837396633223b733a33323a226431353535656562626432393631336137393862373335643763313737623366223b733a33323a223061653837613937393932346466386134623937313832323532613439386266223b733a33323a226562653339366665323635653937613731636663316133363633313834663036223b733a33323a226639653266393061303338393663346366326634396135323262306238326636223b733a33323a223465313363616165616666343134306133366632663432316332623132623836223b733a33323a226364323138363532616534333464396235613461333031363962396335376239223b733a33323a226232326361373566373130666538313535663331336363393237396231313362223b733a33323a226635653166316530313661323734636161313764633838643331363138313364223b733a33323a223664343337663431653631633838613262633630333635303237653931393631223b733a33323a226361336633626634653733396462326634633062376531326265346432666630223b733a33323a223264623737323931306133396231316436363461666265306364396562646335223b733a33323a223839656361666136613030323634376638326164373866333230633266376136223b733a33323a226133613063626461663065356434396238616230346439666539326539313966223b733a33323a223431303362313736633462303161363832616430626132663332656335623861223b733a33323a226364316461653232653262366638306664363666626233623736613862653030223b733a33323a223765666433346633333030666438663637386464363261393034656166356261223b733a33323a226661646462643333323238383361663538623130386434656663326430623364223b733a33323a223964616238613236336564326565363233646536396637343530626266393136223b733a33323a223939353961336137363765363262656433396339646137303765656135323431223b733a33323a226136333465366233646533393864356139613564343562373332363664656330223b733a33323a223238663031613061626264313861626663656664316235323330616134623065223b733a33323a223330306164636637373734346366343636626263343239346434616235396231223b733a33323a223632663536363131616462636336303436353135363535623132313564333439223b733a33323a223661313766323061326264663761333331613461663535316164313330376330223b733a33323a223532303938366461613333613633323530356537636437313230356266626131223b733a33323a223431386661613434346333303633316165306231333264326333363662386331223b733a33323a223131346131393166386533393033356131346632633963653962353031336235223b733a33323a223633303462666430633631383835313462643535363232383662393562663635223b733a33323a226231393533343435386263356539616234356366656133646334383262633538223b733a33323a226630393465346539613734353932653834353761316239323165396466393931223b733a33323a226432366131376561323634363666393766373032663336353339353133343564223b733a33323a223161326336623439663131393366353435626235626331393838396432653338223b733a33323a223531613839613033376333353463313939323030373334386538363038666431223b733a33323a226337313737333431613636353664333333303664373439633463616462336530223b733a33323a223738393466303764343731346233613739353332616565626430663466623363223b733a33323a223433386531373163333366643937313938393233663163326437353566646266223b733a33323a226237353639626432643761653039366465343732323839343330393736346237223b733a33323a226432653066373432326566653931393232363830373136306636616635353133223b733a33323a223365613861613363646165323831656631393532336234393139656164373737223b733a33323a226431623738303462353962336665326431653766613238663232383536386261223b733a33323a223261643763386138323362353732663839623365656637373163356234303834223b733a33323a223263313065373366316337633336393836353638643439363663613666633763223b733a33323a226637343836353337653536383535653563636464346565636438376664303031223b733a33323a226663623737326135383662616234656264643766663537383030363635333631223b733a33323a226566353365353832376439326630613761663734346631353765613065336364223b733a33323a226364396266366336346661363463303537336463343761663235393737623231223b733a33323a226139306639366639393238643237306565313137653261313530613966633939223b733a33323a223165303430323230613537656537393562313761383731346337313265333331223b733a33323a223464653738633163636534303631666132663439666136343562646639396366223b733a33323a223535636538646236666366333631386134383363326465336563303538663861223b733a33323a226433313630363838626230616666646133643039376363643832343461363038223b733a33323a226661346265623065356366386131356634373162653261383533646139623365223b733a33323a223732663664323862343331333931363565356130633033653131383031356263223b733a33323a226435613565363730646537386239386437336161353663396433383765306464223b733a33323a223865653437376133386363383638613836666563353732653862353765313862223b733a33323a226131376332613539633636313630393032343665313835323332646364353934223b733a33323a226535366238393738376330306236343264366663393639383733653736356333223b733a33323a223637376666316265363139326333646439353862613066646335653962343932223b733a33323a226561393965636338656634633239633339396131653339333336303736356337223b733a33323a223434313037653934626439623566616138353935366632333536626335346138223b733a33323a226432623537363036316462333838396539333934636538633235626262396535223b733a33323a223865343331393361376330303639616237643966373131363262333164373832223b733a33323a226266383563373862383533343231373733306530343031386538313264666437223b733a33323a226636353763383766333833653637613764393032303934336633353130366162223b733a33323a226238343234323263323031653034663364323665663439336161613832623133223b733a33323a223235363235396265353633636337613365353762376138376165353766396538223b733a33323a226138336136383563333737613864313365616466383166353566353363346161223b733a33323a223531633030666531343036363365323466616439666534313936623166336230223b733a33323a223231383261666165356665353838613364343534656633353166376466333762223b733a33323a226135353165663732303939383264643532306163613838376334343532353430223b733a33323a223336353236376236306639316437633861666236373932656635636664623136223b733a33323a226639616565383039393162323266326233386138633336343130323739336133223b733a33323a223232396430356437303165393431336135366464363038626465333865363461223b733a33323a226461663933343862396265636664663539303434653131376463653364653165223b733a33323a226165376566393037333661663736343735666663373262333534363634393563223b733a33323a223965393833353062623066666631663161313063323639623363303036663664223b733a33323a223864316261373965633839653033636662333438633565383339636537323731223b733a33323a226566313631356566396263363033336263313437316464636364626465386631223b733a33323a223064363831303131313562376436343065323331313136643530313331323266223b733a33323a223030326261303563376331636438663638316130626663353530356461613961223b733a33323a223633336639303061666263616439306565393237393163373733653338356162223b733a33323a223830643935646635613062343135383638373437343765303738323364663535223b733a33323a223433343666646134393235613836323763333738643961373830373135633361223b733a33323a226239633965663039393137653335356138653931326161613533393162383262223b733a33323a223137336431336438346363633737666237636561666466656266643134343232223b733a33323a223037396338303935623135323962653863346638633065353333633331616434223b733a33323a226536653634386632643031616334336331623732356362306136343861366330223b733a33323a223139353363316130393931396661333831393662636664643236336464373463223b733a33323a223962326263643862323835313133326566613262383536613663656635663839223b733a33323a223063396265666632376363623463343261613430356335383837313735393930223b733a33323a223639386333386262633833643533643935633962393333623333346363306430223b733a33323a223265353438313630313437333532323564393366343464313331383565663164223b733a33323a223137313037383563643035646466616661303338646339343634376536613331223b733a33323a226265333832306235343531656664363434383763386563326465653361346264223b733a33323a223265396132383935333766393633393861376264383637376439356130643732223b733a33323a226364313032376661303231633461306165366461353362326539306561313337223b733a33323a223837323766653861366439316235306263366333316263363861336164613139223b733a33323a223161613333323538633032393566306639346263313939666337666465363330223b733a33323a223965336463323433313862363566653663306562613864363238343138343236223b733a33323a223364366636623133353433333636386365383965623633613635313766393263223b733a33323a223037643731326533323661336332306466326236646430633736666261656535223b733a33323a226230386437383835333866623337383830643461653436333837653566626431223b733a33323a223362383039663339353831333237613634363537333538313965303930623037223b733a33323a223266646165383431316266353730386561323765343436333831366336366163223b733a33323a226362343132376334633138326638626137643136643036643332386565306338223b733a33323a226365386131636132613537323430663635343634313161383630636435633264223b733a33323a223437383331643236343833623336326464643166306433613063316533656664223b733a33323a223464356237343835616461303066356432653566653936343136333036336636223b733a33323a223862636331346631376535663839623234373832326336663832653566643037223b733a33323a223962616630623662366530363866666162326561653833653731356439303333223b733a33323a223436633839616161343161623435646162626538613430306465373131366462223b733a33323a223134373437373764343637383530663763646463316638306664383831653235223b733a33323a223938306334643235366463336337343630356462633939353866393239353235223b733a33323a223832656166386562656534653939373734643231326338303036663464666263223b733a33323a226338613938303764313530333332373738613832666436363364366239326262223b733a33323a223835663132373661313536346238373537386362656632383139323430393362223b733a33323a223561366439343764393862393335663265326330623831666430353932633765223b733a33323a226239363839326331643936326465363639393930356638323933613862666163223b733a33323a226563626136663930396166323030646266353837333335643165663434383861223b733a33323a223364356430653462656537396232636438313231336639376338383236353564223b733a33323a223434383331303838626336306439336430656163653434303631336432333832223b733a33323a223336656165383435623336376465383461623166396338353235363265343963223b733a33323a226631653130353032316232623338633763376165383433343063326236366431223b733a33323a223630646165303262646662383562326438346136653739633831623333316465223b733a33323a223434653861363537376431626330663165633136626633653139366332663137223b733a33323a223765383437626230363766383438326264613130363630343937383462623531223b733a33323a226338636439353835636239323737636365646366333166646263653133663436223b733a33323a223365346263336262373838303338306364396664353935663431376234663233223b733a33323a223137633534613438383535303862383434316438356131363035646365643165223b733a33323a226662313564336263643836313832666662646230373064313666303837646535223b733a33323a223765643634626661326663343466613536383465333661393834376134643566223b733a33323a226365396535313737316365616436633661653132643831643161396538613533223b733a33323a223232666433326563336335653264646135636233326633333632333038633032223b733a33323a226565313830643931653238663738303961626437303734313133366636656464223b733a33323a223735666238383766636533373962623164363339656134313738636464316462223b733a33323a223638623665396437316163393331623635316135363638626163333735613066223b733a33323a223561626338646430643433643036313164623338393030636636303263616437223b733a33323a226339323632373063656366336265326237663234366565376430636138313932223b733a33323a223162653635313039653033376636656432313863363861353136386131666238223b733a33323a223138623365313635626235396231613938613862613133643263353236303564223b733a33323a226134646436613735373238616136366635643739663761386632616361663261223b733a33323a223235323133616537396432633036623963666632396630313464653862653535223b733a33323a223630363435376230303163646133313232643064323465316265666662653136223b733a33323a226131303333643433616337626538346431323765306535323565653633393737223b733a33323a226261333237616565353637343131343061623066663665386164363435313936223b733a33323a226338646262623465313966313665613137306662646237306161346561343166223b733a33323a226638626131663766623234333432663033316266393834306630396132383438223b733a33323a223663386530656431663762653336336633376636623134386139663430616366223b733a33323a226236323866653638393634336339343530656132383539306438386562386333223b733a33323a226566303966373635653263643230396664343230396535623231316638373833223b733a33323a226633666161616637323461343031616464363139363732333930623465656264223b7d733a343a2268617368223b733a36353a2266336661616166373234613430316164643631393637323339306234656562642d6566303966373635653263643230396664343230396535623231316638373833223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a31323935333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3135383a7b733a33323a223631633066366535326661316462336335653436363435306237373164623239223b733a33323a223837623337373932376335363265643837653431366133316665653833396634223b733a33323a226463333436616135626638313636646630376337393966383862316630643932223b733a33323a223231633339386466303235353630313339383536346530363966363164386135223b733a33323a223531353532383066643939613332343038666130613961376562323633326530223b733a33323a223132356138623937633437383534393139613966333061623830656234333931223b733a33323a223531393334363464343265633738386462326238353734653737396233353733223b733a33323a223565643132333539643962613366303263653733656337363139623437336232223b733a33323a226232636665393061363766333931376135333466323238313864626434653633223b733a33323a226633383365363932663632343866393239346331333135633338306663316131223b733a33323a226339323935393764356137366238386131356364636636303333313837393131223b733a33323a223763323364663465616238613566386661666438373736613063636234373034223b733a33323a226363396662623533303466323564383164313265373763333539326330613139223b733a33323a223861396233396432666362373663393866366465626564303464366665346566223b733a33323a226637323065663865613061623365336233323666383732646438336332633538223b733a33323a223037306538326534326135363639363137306130333138616461623332396530223b733a33323a223836353630633630623837326637633435656261653461643463623030636430223b733a33323a223531666565353838346332386334366536366338303737636561323335363730223b733a33323a223036313933306231353332323862623530366434623933653866343037333564223b733a33323a223761373037663964383564623837663833383563616166393033653635366237223b733a33323a223832303665306130346238303730643234623534653434343230663763303739223b733a33323a223862356463363932353130383638663261363232383464353563396236643438223b733a33323a223536303561656233346632366235333737376337373061323562373631346564223b733a33323a226230373331373364353664666533326430353333666264316564376662623237223b733a33323a226261366464323336323334366639636638396538366365313264326266326339223b733a33323a223130616666303636633565646433366165373564333136323133353462383036223b733a33323a223665643163363464303136306561633133656439303332393863633934626130223b733a33323a226136343462666561663232643462353935653733363464376266623037626530223b733a33323a223031653962646530383736633633323762303238623762613830333834393636223b733a33323a223164393637663238623531353463626233303263363738616462643664653461223b733a33323a223938346632393631343432383036653862663062613330643631623431646564223b733a33323a226638346136393063336336386336383361323733393136623265376464656134223b733a33323a223165613065366238653130343737636537373534366263623361316636306231223b733a33323a226362636166393138383365623134306339363463613965346366396364613337223b733a33323a223632316633653865386661643939306465636661376236636633323430656433223b733a33323a223036633335363136393736343565373137303062343033353737373030343435223b733a33323a223636306463633031613533386534653363356532656364393737613862623837223b733a33323a226635313234326331626334383633376662333233386635313436623031323930223b733a33323a226637636262626137623334636263303134353363363934613234333539313964223b733a33323a223431366230303263343139646364353661383839356433646435363438363630223b733a33323a226664366562336265313561373032386338336565643233396663616361373135223b733a33323a223835333836383038666239303761323631303332326631373838323733326638223b733a33323a223237333565346333666135623466323337636630363931333930643131393539223b733a33323a223232353265653861336537633065316132616365336639303239313465363438223b733a33323a223937336461346238323961653461626130393734393036633663353136326462223b733a33323a223031373964333135343730356136633137316432383062653363373330626464223b733a33323a226461346331663237353965656239343438346531376662353535383664613365223b733a33323a226436623961353464333165353564623737333664306166323734366538393934223b733a33323a226535613330643335373238336336303930303663623435633836623836653661223b733a33323a223034316563626634633333373032353238346562376231393865666335393831223b733a33323a226164333337663139633262333036643337613365613131353263663438396462223b733a33323a223733643735653432336636316133376165663965393231336364333062396135223b733a33323a223531393534656637613734626365636233653038613837316664303435663737223b733a33323a223063363562626131636335653132666162393936323664316430636561303663223b733a33323a223739353432303833333663363230336634663966326634306437613433616430223b733a33323a223765383531643565353439373037643630303736626566383236666263656337223b733a33323a226136353939636438346361663638643430323335316663616462323433393561223b733a33323a223335333733343535666330363066333262376235343631633738356463313036223b733a33323a226162343137396136333238346363636332376139353035333936653139386538223b733a33323a226163393632663463666339376236336630373736613063366466333764356530223b733a33323a226535353033363139313336313135313038633131373263336264613136666335223b733a33323a223662353432643037626334656137626336383531623030386361666263396164223b733a33323a223565393631353437613566313965323032613164623032623132623632316437223b733a33323a223331623364396236383233333939363165313064636639616463326432366532223b733a33323a223162656134383539336132646463356465303466303763636434336636336334223b733a33323a223733333334386639313130336638616331663736366263343339313032303037223b733a33323a226565303338333837633866636238373465633330616665303961663037646264223b733a33323a223761343836623866373633326663363531313831663532326438616137653763223b733a33323a226562363761306339363430373266386336363731633766643765346239666562223b733a33323a223435633738663636663934316432663433323734363861303833343465366666223b733a33323a223732663439316461356661363933396333633038666137656434636139356363223b733a33323a223735643333383235376163653831333161656438323664396331656332373932223b733a33323a226364376164336330306235653932303335633338633663656665323161666230223b733a33323a223231643765376131353631326236326363663662383232386233393538366163223b733a33323a226433353061366163633535623131356261303236303938353631316566646132223b733a33323a223638373732613438383038393338306662343237386237636135343039313037223b733a33323a226338656134386233306332336132363833393166393435396437623261383761223b733a33323a226633386163323965386634626463353932366238663832366232616538656561223b733a33323a226465383364636262313731633664333364333561636330643838363166653532223b733a33323a223637353165313930653331393165656235623438663739623639343634373134223b733a33323a226430366431333165623633363736353038633764383365333362366662396430223b733a33323a226430626534663538346536336438646530313966373430376165616336613061223b733a33323a223965646333343238373037613639303431363665386430656637633162326636223b733a33323a223734653263666239393361396665653734353731396139393437393362326431223b733a33323a226330633936653138373836336438643039613936376539616637366662323765223b733a33323a223139383139306131623266653137376334623931386263633036383039623034223b733a33323a223964303765376438346665326434623637623139633031363536373335383265223b733a33323a223264303664346338363238396636383030646265343338323363663265343466223b733a33323a223932366565366537623062353437333661323865336265313366386362636536223b733a33323a226562376437393936316134656261613663363634323665363837393964633830223b733a33323a226338656431396665333532313630393065353465396339343061333761303734223b733a33323a226131386666313337343235343633313034653861613132323265313232623833223b733a33323a223764336564396563633965316165383861623433353633366164373862666335223b733a33323a226235343336616361353466633635323862386234636536333836333534333736223b733a33323a226331616662336236623336303935343764366130366638383637613538343536223b733a33323a223866646230363138623861653463663830633935633737393362646661363237223b733a33323a223665643563363030336463343239336137373734306330353932373635333739223b733a33323a223635346337613830356164306334636630613437643865366365663064626537223b733a33323a226433363364396130626161653231393564393162306365366234663362333035223b733a33323a226231373265393834366365626564663531353131666461626233376236656331223b733a33323a226638356534336535633033303161633032363939393161353536663436373636223b733a33323a226431653839666235353037313139323130313462396238313833616266346162223b733a33323a223732666466373861653433313164366563646461373761653163363230616462223b733a33323a223533643637616135363366383861373761316165336363643265643164343839223b733a33323a223063356631623866346539623532303737633039336361613636373066323436223b733a33323a223665343231366261323435333061353733653562313036343763633337313434223b733a33323a226539623232333262656264653330663661623234303730316138643532383561223b733a33323a226337383764616236616531333232643933613533643366326134323865306533223b733a33323a223739636165396465343037663538316364653135353833306464346262376138223b733a33323a223266656530313931343638353034376338396130666338636462626635623765223b733a33323a223034623030366137383837353635323031366336316334393237396434356365223b733a33323a223831613966663264623833623235336134663735353533663331333263323862223b733a33323a223735633862343638616432383035333363373663383562396364653031386530223b733a33323a223961646332626631643639343661636336613836323730366633333762353566223b733a33323a223739326166356533363364353762383463346637353264343465336633656336223b733a33323a223366343761353331303231613161343063303664626166386230656539626466223b733a33323a223235343336346137643931306334303830396132393639306636336561393738223b733a33323a223836656131333431346634323266333836353234383066393064336339323161223b733a33323a223435366263353933373332346261376234373037326566353933356437386465223b733a33323a223863396463346235333465613235636337343330623730386230326465383435223b733a33323a223866626235333835363666313834613730383934343965323934633438326661223b733a33323a226236363162616530656138336530346335303338613839663838613935343733223b733a33323a226532356337303432613839623935323566643965643761373031326434623831223b733a33323a223162666337623261613463306434376261653566663836363338343932663862223b733a33323a223537623031643333383063626330326362326366366138616564643534393662223b733a33323a223936326261396435383439313564383864306162303736333334366366346164223b733a33323a226433623535346139356265373733383961316232623531303239636238303531223b733a33323a226232376533383833353933323539653539343738646536376139653731333061223b733a33323a226132663330356630393435396539623838376136303531366464306163326161223b733a33323a223165656132306361616366353035653232356661333830393838346535343539223b733a33323a226230316434336337386438626336383633356164343137313932306362386133223b733a33323a226230383965633638656133396134396263343963326636363963386335383964223b733a33323a223261626365393233346435366232353537346365326264386165633364313734223b733a33323a223338323136656438346364373138623435373839326362333534333638633162223b733a33323a223136313665666637306338393930353430316338343134616330306334373436223b733a33323a223262376133636462643536303038346466643637376463636636666565376635223b733a33323a223061326330373337346536373265306439663962313938386232366537656433223b733a33323a223066396165356638386239656538616435316536343162663636383562626333223b733a33323a223964323837616265383638626533666630323265373437353865633239636432223b733a33323a223531386531636164333035356439626233363261346665303636653861383732223b733a33323a223435323862646433376239666462323366343361336265303565633761663633223b733a33323a223864366562646365326438323961396666626138313631643563373231613131223b733a33323a226163363835343434616531646433383331373938623865363232623231643133223b733a33323a226530323934353238333939363136653934313464343739656363626430663762223b733a33323a223661663631643935303665356631626133663432393766636631393365666534223b733a33323a223063333634646438316661343762613163623230333638386237313564646439223b733a33323a226138383364646564646438643238613132623864653832663532333330336437223b733a33323a226433343565323163393363353133333535303939653836313866393833323435223b733a33323a223163353732396662613265396131313936643439623364653035373566623563223b733a33323a223732363962333532323561326166363431383737653632306165396532316365223b733a33323a223131356334343438623366663436343661636330373663363130336235653662223b733a33323a223662326163306162303035313932303035376365396437333366386465376239223b733a33323a223135363335346139393634303662353563323134623830353938636664666466223b733a33323a223831316166363365373465633236613964653761626132333339376266363533223b733a33323a223534323131396639623939306235323661343936323839626436636635383430223b733a33323a223136323434623964666636333232663636353662373638633131313639386534223b733a33323a223564623561616231353039376533346539343731663761356639383065313163223b733a33323a223738323536623565623835396566383733363733353366363933643838663564223b733a33323a223435323834393561626662353731653239346566303631633539356537303830223b733a33323a223530363832313939303831366662643133623366363065636134303062323665223b733a33323a226535613131636638373937306264336461326564613264653063373831333938223b733a33323a223164666539306633396232303263376538646465386136346639316635663531223b733a33323a223135306430396563346634653233613861323935643837323863613832646361223b733a33323a223135333533656531373230303937346439333738343239653066646530396165223b733a33323a223765346133323936356630386332336337636235303637616365323166323939223b733a33323a223763643266666332636264353339653064353133303366356663373731613732223b733a33323a223535346633316666346635343034613733343731383265333661363539663862223b733a33323a226630333561643733313234356636656132363437623362633432353531306466223b733a33323a223232303432313536653338353432346264633934656630313132333434633732223b733a33323a223732326262363139343963626433373839316430313636653966653164306234223b733a33323a223838396334386364306238316339373036323464396232383564643936313635223b733a33323a226132373730393030376435613832343566663734643439633732386436323733223b733a33323a223237363666333663353830366161346431356533666364656637313864643831223b733a33323a226438383030373964316237363039346632333964656265366461303731643539223b733a33323a223864303562366236343539393464623831663733396637303235643836633430223b733a33323a223263633863393262323135313030363865356631646364646665666261393466223b733a33323a223034383138636434626636383533393462393562613830303261326163626566223b733a33323a226539396236393933306362383033336166303165363863363930303863633638223b733a33323a226566376435383338626438353935373039343139643132663965393031356561223b733a33323a226465316339343066643962353862643130666231343064376336663536613535223b733a33323a223662613434356161313538303134343434326232366364343535363839653637223b733a33323a223338363738613162393431383833313535326436383135666363326637666261223b733a33323a223331373831383563653637383236356538323736666465306530303034663433223b733a33323a226663316238383337343034666462336439656539653635333563636530386161223b733a33323a223262386637323739316536666363303364653765663764343639366135336665223b733a33323a223039643036386630316636643836336664623130356134313263636339313938223b733a33323a223663303437313837343134313337343463336130616232393534306538626162223b733a33323a223935353136356538633339313039643363356237656632363466643065396333223b733a33323a226333666561656333343738373836393932363339396431653438356133396538223b733a33323a223030363239393031653630623766353339383864653132653663353731303536223b733a33323a223236613735303563393232313239653337373537653432663064386266313438223b733a33323a223934616163383337653564326364393761323736326439616636373139396336223b733a33323a226430623638636637643333653536393138643839656231316532623434386666223b733a33323a223933613235643431376363623633313262653966643238386363383637666632223b733a33323a223839343836313534653236356534336533313738323865373830343239313033223b733a33323a223731306239633461313938306563303533356335663464383163303138373263223b733a33323a223362623539336535323535663933663764646562353538653134386233333635223b733a33323a223039353461316537323335343036363962336537646136386633383137363365223b733a33323a223133323262373830333864313364613563333631356561616265643739363062223b733a33323a226635376438623531646334616233346263366332643165346462616465383965223b733a33323a226630636234373935366633353530643139336435633036636231663335326135223b733a33323a223233633764396337666137333239626438636663313536643065326663353139223b733a33323a223437346631333739666632663039623861386136636433373035613061396237223b733a33323a223064336261613161313832376262343163346637663530646531653966616237223b733a33323a226531653533623336316432363637366262613837306330663934363034613865223b733a33323a226536383438303665363635383539373465363662623539336165653434363236223b733a33323a223238386263316665653137323661353235393633343365323966346332653133223b733a33323a223738366165393133343332323934653533346365666134656530633335616662223b733a33323a223732326136383762376365653066313232646163326135316330373261393036223b733a33323a223964373562646133663132336533366335386130653833353161663863373537223b733a33323a223162316262323334356339333463356238336336393434306134636634303837223b733a33323a223034393831383139653434383934373439346239653365323963323563306433223b733a33323a223862333538636465653661313438353035316666366465343064393438356631223b733a33323a223036653234366437646234636564383830326162313639643564383835376661223b733a33323a226338333639616464316135626266383832393735653231306362326535306266223b733a33323a223766333434333361316466613061306162313364316166643538333934313339223b733a33323a226364393435356435323331623535326363366337323635663136356239353934223b733a33323a226266383334336537643662353065353234643162336366356663393734353130223b733a33323a223263613438363961613366613033306537616133663366323838643963326639223b733a33323a226630346133393239313834313933396465343434373939653932666266336233223b733a33323a226565356430323366316233386162653336333963323364396166613130356438223b733a33323a226532663465643939343962393735313035633936643631643938313562643166223b733a33323a223765343766303966636635663263313362386636363461613339316638633164223b733a33323a223837313539616631623165306434323732626532616261633037356332623364223b733a33323a226462633934316636313762303663656264306237336335323139343966306561223b733a33323a226230663631306232323036323162333537633330316261636161313732616565223b733a33323a226233626237343664343261633464343566323337653836306332366565356637223b733a33323a226563623436356438633037343530363539663030623362353066383065663132223b733a33323a223864313732336236643136326638306336656266613537313631626236386363223b733a33323a223631643635643334343432353934393435623666393730663535303936323834223b733a33323a223435303239316261646331663532353638313434633931373364633862623931223b733a33323a223938623232363130373333386166613162656634323234636464386133333861223b733a33323a226566643334386661323437646231306462616139303333623734343266356336223b733a33323a223430363437343233333830323632316633646363396335613766326230643533223b733a33323a226632346565646134666561663334376632353437666437323764326236343730223b733a33323a223334313366303036626164313062643130636635373866383232363838386430223b733a33323a226430653637376431313833313535396336363563323537306163336361656436223b733a33323a226234353664653437323763346232343336366263366134633439326539313338223b733a33323a226261313464366161353839346636373339333861333739363737363738323863223b733a33323a223837303530396264616338616330373038336633633261353139343766653364223b733a33323a223264356162363930386331353435356131346363323935653762393563623437223b733a33323a226163336164323638653730636230636533356137343633373265393164373537223b733a33323a226538646661376536623238323438653936656466303238343737376532303332223b733a33323a223162623132633236383932636635646261633534633831336330313130663965223b733a33323a223331313465646562383533653864326231363365646630346135333738396266223b733a33323a226163316465653832626235376665333565343866326463626531663761323766223b733a33323a226336643730366630356238393734393463306564313663653937393965653762223b733a33323a223930353565636435326465306664363437636465386565306265633736303938223b733a33323a226162386238656262316361393564633165353338396362383931343330376361223b733a33323a226231346635303161353765663230623433333064323063616230666665313830223b733a33323a223834316562303338633631653934303264616162613262373330656562646632223b733a33323a223331343036643135616139356235366238643764653463316563663338643765223b733a33323a223736663236343765623538393163316362383661353537663137636362313631223b733a33323a226165636533666564383439666233346436626163366339633133326163383937223b733a33323a223061353166363938323263386462653734373266393663363435656261356230223b733a33323a223630333038643332336131656464326564616231303037656661323434333066223b733a33323a223366393963323861313135383030646635376339376262353939363464633038223b733a33323a223666326135303363363538326434323232346336366236643761393431666561223b733a33323a226234653663383339366330356131373139626433393363613930653133323733223b733a33323a223263666435636632376330353766376635326431366666643132363038313631223b733a33323a226665613334383366653335313136383161346536643838313365313237333436223b733a33323a223566356234356133636138613735323737663035316130303264623432376663223b733a33323a223663386235346134393731353930323230643662376663366433653265636632223b733a33323a223731313030626430393638636534346661636338623430326433376461666239223b733a33323a223933373364353635383530383834336163336239306361306235353635626562223b733a33323a226133303237396536636533343434653364303939653931613532333835613733223b733a33323a226637613037306235336130646336646462396136613233356564343665366161223b733a33323a223264373432343639373133346136316463346366333030663236636336666364223b733a33323a226536643262393331303733643366373035313531636432393033663234376637223b733a33323a226431613236396634333965623965383732366362656464613965636336666436223b733a33323a226561613063326339363664373035616566393435653461666135326131643133223b733a33323a223466663166323935613930616434373665613437326664656137383664373262223b733a33323a223332396465663066333935353265643762303863383439373762643565386463223b733a33323a223265366635616136376366353931333462363265353363663362646466373662223b733a33323a223730663332653965333765646435323964646139633163656465373962323837223b733a33323a223432336237636138303566366233383865636432663864373635323839313732223b733a33323a226631646133346565656138646336363864613666343664393936613365623665223b733a33323a226564303235633635663964373966663766333335323165393039343566353665223b733a33323a226463303232666435656433633432323132613233356463393966623739393437223b733a33323a223362386636313563653835366437653962353062323730393132316438393431223b733a33323a226263363338656234376535356130316131316464316531613732346464663235223b733a33323a226461656532393736643265646333336532366138393661316138313364393762223b733a33323a223664326236306432343636636631356466363462623937326461383666313030223b733a33323a223535613166383436636631393362666635383138616533386132663065343838223b733a33323a226339666262626333373161623136616466333565666266303834626362663639223b733a33323a226239646130636535663336383033633462633633373836663534616361633231223b733a33323a226535643665393533643632343934386632356536643631393034346235616438223b733a33323a226336373131396231363336363435613730666330633036333630623462316237223b733a33323a223231393135316530383163353737356635646339356661656163663032393831223b733a33323a223561333965653162623761313965656534666533393635616665356135373764223b733a33323a223731386330333130323130383230336563646362373063393262323262306365223b733a33323a226530326136663261306530386136613730313230383530386134633864646135223b733a33323a223466653330356564663061383731363439616565656333656166393836326638223b733a33323a226335366566363433653038643064376433393733396662343934313433376564223b733a33323a226363643061316265663233663336663234363962643831343437396632636634223b733a33323a223365373164313635376332383934386432633735663939313232643039636439223b733a33323a223533306561343835633937613162353161323135666338366433663431656565223b733a33323a226663653763613332303933386163643835613337366564306464633765626333223b733a33323a223465383134306264666239363762386530626432623866383533653330316233223b733a33323a223139623466333036616138653732393439333334626631646635343963333361223b733a33323a223134333339313931393539333435623562353238666138363130663564383561223b733a33323a223135626262386530653237303133303031633164613435386265336365396636223b733a33323a223865646666303137353932646364613661643938333766663736626139306430223b733a33323a223163366431333563353331323532623063653661646564636366366237353839223b733a33323a223639653166366365646165376638396239643831323261363230623936353338223b733a33323a223530613534626637303566623733396463373665366136653864643339323764223b733a33323a223035386133313338376264383537653830356666663238353132393336373730223b733a33323a226362646161313965643539636563623266333839613863653937346464316639223b733a33323a223635636535306631626334343037653239373934333063363364636434613430223b733a33323a223731336531313135373365323435366432653238396364643164303338383137223b733a33323a226537326631666430633830343932346339663231616166656364626130333034223b733a33323a226638306239643237316138663237363531333139326133393064313039386234223b733a33323a223866643335643638363834363664613330356331336138663361353531353765223b733a33323a223766663939343036656664386263333438386365376231383338646236393434223b733a33323a223964323136643764363761613263373034616636666663316666663139643432223b733a33323a226261333836316362353432383234646336316536623033616632373132393232223b7d733a343a2268617368223b733a36353a2262613338363163623534323832346463363165366230336166323731323932322d3964323136643764363761613263373034616636666663316666663139643432223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3837313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a223564356630313837303437376263616434633361623764313866343963626434223b733a33323a223466336166383164313038376337363534313032356535333666666366636365223b733a33323a226161356666373231666630643831656261613364313864313065366435356331223b733a33323a226131643264626661623163326132373264343939633930633332636661313336223b733a33323a223636383464386336336363636237366431633464653437316663383236613836223b733a33323a226466623936653163663731336133303339323731633031643533323837643533223b733a33323a223931633436616666636663353430393961663738646638656164333961343336223b733a33323a223136653239656337316538376636643739653139336330623636643138313137223b733a33323a226338303166623239333131623935613938643039396136373537356634333264223b733a33323a223965393635383566303330623337646365633961323539353830366166306665223b733a33323a226633393238653531613435633938333636343666643661666139306363653337223b733a33323a223361343838613234373737623162626538343064343064623330393038303232223b733a33323a226638663234633630346436306430373637336133306637356439643933333661223b733a33323a223566306566356239656361356138353735356331306562663834616562656134223b7d733a343a2268617368223b733a36353a2235663065663562396563613561383537353563313065626638346165626561342d6638663234633630346436306430373637336133306637356439643933333661223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223838653833393161623630663133653736386130386666636566343138643363223b733a33323a223166313165333332643534353738383436306636663138613431613264303633223b733a33323a223933306435326232323732326530613236623163306465396233663864373433223b733a33323a223938306265303334346530643933346466356261313066356339353534346533223b7d733a343a2268617368223b733a36353a2239383062653033343465306439333464663562613130663563393535343465332d3933306435326232323732326530613236623163306465396233663864373433223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223534636431633634393164383934656133383235396233656336373831386561223b733a33323a226166656363376634613832393661666133303934663962393237316537633232223b7d733a343a2268617368223b733a36353a2261666563633766346138323936616661333039346639623932373165376332322d3534636431633634393164383934656133383235396233656336373831386561223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587592158);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('6ospvkhc0jtv3emt59r7hvd6qi', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373431383330342e3637383731383b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a223563336f6c363067347538637639613836657433336d6a71626b223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373432303137313b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373432313337323b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373432313238313b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223632643864643765336236363837653839363835633530666534373665613434223b733a33323a223931623334353466393631653237656434656464643432343630666666343661223b7d733a343a2268617368223b733a36353a2239316233343534663936316532376564346564646434323436306666663436612d3632643864643765336236363837653839363835633530666534373665613434223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313433323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31343a7b733a33323a223433396265663765623731633464386236626436633636393266626264613937223b733a33323a223836636261653065393366353232353465616639666530316239343131373436223b733a33323a223037656432393066653865343237396535336466363138383561373533386634223b733a33323a226130663134383966663265303539353633646333353039373132656264656234223b733a33323a223933633862356464316565376434613337363032356230623832613835363536223b733a33323a223536316366353637333762323531323737353161303561643866623738643230223b733a33323a223736306438333463616364353539363164386162336438313439646437356137223b733a33323a223266623363656433653235393437613963303131383431326537393038353535223b733a33323a226337656334323632333632636335393435343231313539376535383838663666223b733a33323a223833343238373136373532666263613361356633656664343466653537373136223b733a33323a226463623065393963343630303439653961646338356363323337626266313038223b733a33323a226239636465366163643166376533613662373138626630386232376264643939223b733a33323a226539346339653937336666616161633063353038303139383035356233633363223b733a33323a223337643236663566383835386532363163313036653836643765646433323338223b733a33323a223061663961333438656531303866366539656231313934396365393837623162223b733a33323a226434386162366332636639393832336331326561383335616139646334663666223b733a33323a223735323938653464333330316361353633303365663661316363646162303466223b733a33323a223265323831646339326663376235363039313032373038303136303337393264223b733a33323a223062303966613765363264386539373630623939313066633431336461393132223b733a33323a223431383538333433636263653264363462393435633639623362393261303366223b733a33323a226565616434393137656466353063666466633036393635323531393765396432223b733a33323a223736383336343231376634626139333561393565326330353661656337356334223b733a33323a226331336534376165303737646139666238623639373133363565353032306632223b733a33323a223764396631353736623234373330656332343363303133613062356233623166223b733a33323a223030353962663932613330363531633762353637663664343563316338303630223b733a33323a223835306333656635346266666139653130336534656131323965383834646430223b733a33323a226264393862386130366438363338373335366264653864383032616430613663223b733a33323a223931396531636430343363623336326163313662306266323462393663356134223b7d733a343a2268617368223b733a36353a2239313965316364303433636233363261633136623062663234623936633561342d6264393862386130366438363338373335366264653864383032616430613663223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3837313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a226232633431626662323932626633653132333562616436333235316666323065223b733a33323a223831373964376463666365626632663731616666653764353335613539346364223b733a33323a223161623666613462623039323933646565613033333862646637616265636534223b733a33323a226661666262386136303931643238343337633132376166313535386137323737223b733a33323a223036353033333234393265663665626161656235373136386562373332373436223b733a33323a223431373263633432666437646630316131303966386339393235313064323635223b733a33323a223638663665353062326566306261333765306665623265353030333566346331223b733a33323a226635356137616535303463313262653161303735383533643337383835643962223b733a33323a223039663431343635363630333135386438626337366135626231313565393263223b733a33323a226566393363643461363964643338383834633532336337646165393234323965223b733a33323a223034633338306233343237646366353234336338623838383933633634376236223b733a33323a223330623161343438373561376262366236636232343336396333346531386239223b733a33323a226531636561633431626265376434633765653163633630633135666261363339223b733a33323a226332383766393861623333353063306561643336643837376335376537633131223b7d733a343a2268617368223b733a36353a2263323837663938616233333530633065616433366438373763353765376331312d6531636561633431626265376434633765653163633630633135666261363339223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587418304),
('qpu0v5u2r137l5dnk286qc7ln2', 0x5f5f5a467c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373439363439382e3239333930323b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226862317669646d706c7264766a737164706435756137726b3470223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373438313737353b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373439393638343b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373439393638343b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373439383734353b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373439393936343b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223163643538356437393135376562633863333434623139623937386436656335223b733a33323a226661386166383562386366373530373761356439343263643566616634643063223b733a33323a226263623439383863656132343732373831306434653731396434373933386165223b733a33323a226465346462306332656233646166396666393539653931623165616665366332223b733a33323a223130333033306531343639343866653131313833366364313331353535613435223b733a33323a223466346338343661336465656366666531353164646633386230323031333435223b7d733a343a2268617368223b733a36353a2234663463383436613364656563666665313531646466333862303230313334352d3130333033306531343639343866653131313833366364313331353535613435223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a333833323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a34343a7b733a33323a226265383035616665356331356532616239656236623665393538393964333165223b733a33323a226465393638653538623665393438373562346435383832353066353336383137223b733a33323a223030613261393561343337393330336432396536363365646636653231303532223b733a33323a226362616463376132303364636437626162393164393734313535646137613036223b733a33323a223562623333643866653134663465616237336634663033306536366464326530223b733a33323a226638636333393061356537326230373433363166306264653265623435316337223b733a33323a226363666532633534316534626461633165326339393239646130396537383734223b733a33323a223664613638313537666231353137393932303934636164396439343661376338223b733a33323a226566306361633532366566653239303934633066666166623065346165353837223b733a33323a226262636132313165376362383236316333653635643431613230613066326332223b733a33323a223339343765623731303531303166626561343261323363356665313662346639223b733a33323a223532643665333265383238353862326335373431636532383939346461663264223b733a33323a226434616638643636623030386561376537633631666132393832386530306666223b733a33323a223562623535336233323863323039636664623765643931376362326165383561223b733a33323a223334633166303165333066353134663666313031363637393630323365623434223b733a33323a226363366230383038313831343234366134386536323066636537393838373665223b733a33323a223736323436623630363330616535363266346361653735663465396565616635223b733a33323a223865326262373433386662636538633061656363653932343633343439663665223b733a33323a223438633236626562346463323239303335326633353937373361646534623230223b733a33323a223339343963646636376638326631636462363863313630373430376164633666223b733a33323a223166313561383435633833336635653265313631373436363161333637633334223b733a33323a223961303336356634373462386362363666343763336136613430303132373761223b733a33323a226564356136346230643531373932373036373861656366363939306465303263223b733a33323a226531366337646330666139326636656361653762376566363133376662326265223b733a33323a223438373434306463393361363730313935343366346235373335653033353930223b733a33323a223736333966373639396430363566626331623663363838636139343635356366223b733a33323a226639353236636161386465626161393662336534336630623431656134333730223b733a33323a226635393937336465663238363563386633616638616130353237323831326461223b733a33323a226664343664393439326332343164353865633866313939316537623661623035223b733a33323a223163383033656235386336643166663461326361383532303834383839666561223b733a33323a226165393661333030396333623736323566343936373664323764323831386331223b733a33323a226637303632343635323865386432306132666461376335326365663839316333223b733a33323a226262333764323065383864633863376632633664653062353337323161313362223b733a33323a226363373961623365393835643661333934313663386434373239636337663135223b733a33323a223063306135663265396238666666643633353262656164623735636231316564223b733a33323a226365663862306437363939333437366531376666346663353061663533376232223b733a33323a223662616531363062623430393165356563653537363935333965343966343766223b733a33323a226436383762653032343237326533653863316465373035336538383237353839223b733a33323a226635313132366236303539616231633830393332393735356234636566663237223b733a33323a226532363533613432353638646439346366373032353834383532343734383866223b733a33323a226433386564303939366364306632373438353033393035333637306265313362223b733a33323a226365383263666430666463643534373836363235383032393637323638303564223b733a33323a226566613462646634653566393262333535346133373266313366326434396562223b733a33323a223137623166373063363633356434613537656565316431663464393165306237223b733a33323a226337373734646337666561363063323062636231366262323638383237353664223b733a33323a223065356233326235396131313761303962353966383966306131383663306466223b733a33323a223139343236373032396539653832303433656537613533633831333861356637223b733a33323a223065656261663530336165306561306338343965613565376332333238646262223b733a33323a226138666465383531633634633064396237356232393339623836626665353866223b733a33323a223239356436353766383934623464613164643465326531326532363034633936223b733a33323a223835323136643566646263356530363233386161653232323434373366616533223b733a33323a223836376230386162386239323033333939313334666162646439316436656535223b733a33323a223431623931626238326363333231363666633236316132636535353132393765223b733a33323a226162646465616633653132663531373539366463373665313933626332353664223b733a33323a226238316632666638663935346165386362393138643239326436613961316666223b733a33323a223066353462386539633163633463376566613461393036306565643639613665223b733a33323a223336343735656139353836636137316233383335656237656539383234653635223b733a33323a223735303633343061353238343333653739323230383031336362666266376364223b733a33323a223964613434653436633935636235663230656331383163346336643431643763223b733a33323a226637323033613237663566366333376433383636376339623033333363373562223b733a33323a226433333665323461353636303334356166333634636139663235303034363236223b733a33323a223938316538386465663530323339373334306634316331623366373237616439223b733a33323a223763363134363433653464646362666132383763323036636531363233643362223b733a33323a223837366466323831653931333134356339396562656439343836653638363466223b733a33323a223935376231633038613335396533663265666337336437326263306134626262223b733a33323a226261373837613433356635336630333331363666623135613563316364383737223b733a33323a226637326561656663326362393930626232353761636432643436316238353466223b733a33323a223066306139373539346331373562663261336535643631323338366437353930223b733a33323a223961663661633533383563646134616664353330653439346339613735313463223b733a33323a226331316362396231353135356231366666313434616530356365646666373735223b733a33323a223530366531626335343263303134323631313762643562396565663565303962223b733a33323a226230323431393938356264373935393365316336626163316339623730623765223b733a33323a226630616431366339333335393362623435353139373334363534313531306437223b733a33323a223539636134633535383763343262326333643061363630393266326138393331223b733a33323a226465636261393134343862303964666436373066346636333430643638393336223b733a33323a226635353063313632353630336534323938366438373638623437633266653162223b733a33323a226563653936396430306466353830653965343362336233613335393964336564223b733a33323a223263323336346663623662353862636239656135613064326264343761303635223b733a33323a223831633264663362623838313961636330356134613966303365306566666363223b733a33323a223537616663326465313231333130363935393236306236636237663464373362223b733a33323a226564643237353130306133333662393030373330643536626233303334353861223b733a33323a226262363064643233663039653633616333353535633239353166303235396439223b733a33323a223561646431366265666164313632343431363037313539366531383963366133223b733a33323a226233633132653735613363373139353866323937303734353861626235333563223b733a33323a223131303265353763643961626536306233353434343031353930353961383261223b733a33323a223030326564393234613732363034323062393938633630616539616566653262223b733a33323a223936303562626463303336373266303033313762346166336130383266386233223b733a33323a223665316635386461333535613338313366336539373062613763343361396639223b7d733a343a2268617368223b733a36353a2236653166353864613335356133383133663365393730626137633433613966392d3936303562626463303336373266303033313762346166336130383266386233223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a333335323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33383a7b733a33323a223837313065643435306337343733383531663138343635396362313835333763223b733a33323a226366396665313666646566386138633232303638393165353039313866633538223b733a33323a223936316532323164366430333663376534623561343463363433663437376366223b733a33323a226532313132383938366266633530353933333462646163343533366633316538223b733a33323a226565346132373562643834356664646331666434653465303731336162376366223b733a33323a223835666165363639376139623166333662386132346431643831663231663731223b733a33323a223561346539396331646365666363666664323764663531366232313134366665223b733a33323a226636316332373964336639393631613761363866646239346564356161303633223b733a33323a223963386530393532313064633037376232666562303335353530333835616137223b733a33323a226234316135343235323633333630333363613366376565333165353133633435223b733a33323a223165613438333732323233643162303937333062313839356262623932373931223b733a33323a226362623836633438626137303465343835373331393835323636656461613264223b733a33323a223036363537323265653462343565613661363933363864636461323230383730223b733a33323a223631653666393861636439396132373166623537346265363832666363633338223b733a33323a223462323065353837323635613338313537663530656635323135383536613064223b733a33323a226135316363323832613431343334393263363462383937326439646239633262223b733a33323a223239303634643631303937363661363530313761383031323333626234306236223b733a33323a226134306562663733393663663730393834333266353935363537316236333335223b733a33323a226163353830343235376639353237643135663665323733616361623339343433223b733a33323a226531626561383231613836343264306337376166323032346131336361366432223b733a33323a223338303935306163616463303936616531396461396162306136613162613766223b733a33323a223934643761616664613666633033656533313564306233343238396636346430223b733a33323a223732656465653939363732396565336134396463616563623532633334386439223b733a33323a223630633632363831303138653738356336386132326166663639356136633933223b733a33323a223162303833346234626262373734353066303535366139613461313638353961223b733a33323a223137623666316334383938626536393830323561653135376466643564303439223b733a33323a226362343061356261393663363136623139636536653237326339626462646462223b733a33323a223632363637633736653063336161336637313235643830383837616231363161223b733a33323a223965376230336566326134663537303165373138396265396361326639613530223b733a33323a223338643133333230663631323533306131333536636232343661653962303633223b733a33323a226630383765666166666430373730346363373439386631653866363664636237223b733a33323a223735323861626464343032616463353531643331333263623164386462623138223b733a33323a226439346565373833386336613563623365393762333362323138386637353661223b733a33323a223333336235623465316130306133346438653737633032366233363766393236223b733a33323a223635613234326638653861653566613135303932353763373263643939616136223b733a33323a223835663932313264656264326664333664316238366563313834343638663936223b733a33323a223030356163653837396532303565616161633733643731646336366433336233223b733a33323a223164313862613833396631663339373763386432363636646365353637343366223b733a33323a223536383563663864656339663163323130356434666361373036636239653666223b733a33323a223531346263396530333834376465393232626365306666633936323164373438223b733a33323a223862336539386165666333613330666535633236316634343161633530633738223b733a33323a226263353961613932633162666561653363653837303732343439613834633364223b733a33323a223133393466663466656264393264656434653261663537653030613666333161223b733a33323a226465633735363061663233316234613665633230363466633732373235626162223b733a33323a223032396361353361326532646364313430393263313531636664383161643966223b733a33323a223065363764323230376630363933386134326263646631386566343062323939223b733a33323a223332646236343134313739393639323531623936353031643765346433333732223b733a33323a223163363966383665386638333863333336353764346461333866323936333238223b733a33323a223636343663346162353233373162636433376366303263626232663964393634223b733a33323a223230623032346132316635633061393936313937363063653039643133333235223b733a33323a223564663831323165343738373831366230376132306663316637306433386635223b733a33323a223039363335306639356237623133626130653031383236623534653431623632223b733a33323a226264656231343633663439306465383835353930376265356563336137313832223b733a33323a223535326532313831326661643639366332613363316335396639326132663862223b733a33323a223466623965663030346565303632303865323565616136626232633138333139223b733a33323a223136306339323264383331306336363034336439636432633962656132393664223b733a33323a223131353231346633386461376364366531626662333535633735616265303964223b733a33323a223737376661316462363765323666376230353161346235613132363462656263223b733a33323a223737653764363135303331336366373434663931323138663662623761333562223b733a33323a226165353938303838343061643364663533303833343538363136383937633066223b733a33323a223632333666623432643165353134333039363066373665633663663634373866223b733a33323a223930313733636461386364663662366533336432613662363335343332323063223b733a33323a226465623165313033363631303536373430656238323637663834303138323833223b733a33323a223430313731333632373963303730386139353862383235653461303536663037223b733a33323a226339623135613937326137353332623431373334383234353734323539366363223b733a33323a223131346132366233366637623432633435633838393831633063643535366632223b733a33323a223937663035336538356563613436306239633466653665316132343566643338223b733a33323a223065306465653661333633343361383936323335383132393333613463353435223b733a33323a223534663137333438376130633538616236666433376563623463373465373739223b733a33323a226662396139663863323034313062626532386332386131366261333039383935223b733a33323a223035303565393461636136643637343565623364343035666566353838353061223b733a33323a223165636136303165303961323063343666356263623131323065333732613265223b733a33323a223239343932363762353263383264616437316233643763393536366666303337223b733a33323a226439323835623230633337396438643561303463373839393063663637303832223b733a33323a223339376664646261363237656365303766323433353132373535383661316261223b733a33323a223732656666316630666338646661383864363262386330633938303939353633223b7d733a343a2268617368223b733a36353a2237326566663166306663386466613838643632623863306339383039393536332d3339376664646261363237656365303766323433353132373535383661316261223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3837313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a223161643666353963353231646166353239366463393163316634313262306334223b733a33323a226132356530316233653138303261356437356138653834306563356263363531223b733a33323a226535626562666262303138353631303932633439393861643235333730353534223b733a33323a226262616135316636396630636132613135313562323337303264623266383538223b733a33323a223633663934636331396464396161333862333264373762646264383235393264223b733a33323a226531633931323830343566613066623338623062346461333666636662643739223b733a33323a226661313539346364636134393235313734383135613231666564663034313739223b733a33323a226135376632353835656235366238303130326337373565376361313134396436223b733a33323a226263343532303133653037313730623839623062346664383031663337616530223b733a33323a223239323766363761383361313634646162646261636534613437396661646466223b733a33323a226262613136616537626633626263656661326232643362396537623237306566223b733a33323a223061333561396339613134393735373163323264643235656336633732376334223b733a33323a223535356565333832393335613731323639333064363663623539343938663135223b733a33323a226564363464383163396233323161663139666335633030626366623838663539223b7d733a343a2268617368223b733a36353a2265643634643831633962333231616631396663356330306263666238386635392d3535356565333832393335613731323639333064363663623539343938663135223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223165656332336233636465653531353239393033636563343261653539616164223b733a33323a223634363038353962653530616565356632646230326163346230383534396164223b733a33323a226361363961633066316636643833653364376431393834316633346563376562223b733a33323a223539353331356539383930643039373462646339633637383736386364303332223b733a33323a223138343464656262653964376364623263643438306137363662383761373962223b733a33323a226137656431313336656535656434643633396238363232356338396636613832223b7d733a343a2268617368223b733a36353a2261376564313133366565356564346436333962383632323563383966366138322d3138343464656262653964376364623263643438306137363662383761373962223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587496498);

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
('administrator_email', '\"tranoctavia@gmail.com\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"medas1920\"'),
('locale', '\"fr\"'),
('media_type_whitelist', '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf,\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
('pagination_per_page', '25'),
('time_zone', '\"Europe\\/Paris\"'),
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
(1, 'tranoctavia@gmail.com', 'Octavia Tran', '2020-04-20 21:02:51', '2020-04-20 21:02:51', '$2y$10$nJrNgPNTM.7zf11wu/LyruDSdXgdOLVNM6Snll0UJDeCaV0VLwiHK', 'global_admin', 1),
(2, 'samuel.szoniecky@univ-paris8.fr', 'Samuel', '2020-04-20 21:18:24', '2020-04-20 21:20:17', '$2y$10$PHkG4paRdG9dtyLz5OVRYOCk98kBzQ/9mVerebvDA90Jzu9pN8EhK', 'global_admin', 1);

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
('default_resource_template', 2, '\"\"'),
('locale', 2, '\"fr\"');

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
(10, 3, 10, NULL, 'literal', '', 'soignant_1', NULL, 1),
(11, 3, 1, NULL, 'literal', '', 'Soignant_1_Gustave_Eiffel', NULL, 1),
(12, 3, 139, NULL, 'literal', '', 'Gustave', NULL, 1),
(13, 3, 144, NULL, 'literal', '', 'Eiffel ', NULL, 1),
(14, 3, 185, NULL, 'literal', '', '15/12/1956', NULL, 1),
(15, 3, 43, NULL, 'literal', '', '23/02/2013', NULL, 1),
(16, 4, 10, NULL, 'literal', '', 'soignant_2', NULL, 1),
(17, 4, 1, NULL, 'literal', '', 'Soignant_2_Mael_Gourves', NULL, 1),
(18, 4, 139, NULL, 'literal', '', 'Mael', NULL, 1),
(19, 4, 144, NULL, 'literal', '', 'Gourves ', NULL, 1),
(20, 4, 185, NULL, 'literal', '', '16/01/1997', NULL, 1),
(21, 5, 10, NULL, 'literal', '', 'soignant_3', NULL, 1),
(22, 5, 1, NULL, 'literal', '', 'Soignant_3_Adam_Meoni', NULL, 1),
(23, 5, 139, NULL, 'literal', '', 'Adam', NULL, 1),
(24, 5, 144, NULL, 'literal', '', 'Meoni', NULL, 1),
(25, 5, 185, NULL, 'literal', '', '15/05/1995', NULL, 1),
(26, 6, 10, NULL, 'literal', '', 'soignant_4', NULL, 1),
(27, 6, 1, NULL, 'literal', '', 'Soignant_4_Clement_Dareau', NULL, 1),
(28, 6, 139, NULL, 'literal', '', 'Clement', NULL, 1),
(29, 6, 144, NULL, 'literal', '', 'Dareau', NULL, 1),
(30, 6, 185, NULL, 'literal', '', '25/01/1997', NULL, 1),
(31, 6, 43, NULL, 'literal', '', '02/04/2012', NULL, 1),
(32, 6, 187, NULL, 'literal', '', '07/02/2017', NULL, 1),
(33, 7, 10, NULL, 'literal', '', 'soignant_5', NULL, 1),
(34, 7, 1, NULL, 'literal', '', 'Soignant_5_Octavia_Tran', NULL, 1),
(35, 7, 139, NULL, 'literal', '', 'Octavia', NULL, 1),
(36, 7, 144, NULL, 'literal', '', 'Tran', NULL, 1),
(37, 7, 185, NULL, 'literal', '', '29/05/1997', NULL, 1),
(38, 7, 43, NULL, 'literal', '', '14/02/2015', NULL, 1),
(39, 5, 43, NULL, 'literal', '', '25/05/2015', NULL, 1),
(40, 4, 43, NULL, 'literal', '', '12/02/2011', NULL, 1),
(41, 3, 187, NULL, 'literal', '', '16/05/2016', NULL, 1),
(42, 8, 10, NULL, 'literal', '', 'soignant_6', NULL, 1),
(43, 8, 1, NULL, 'literal', '', 'Soignant_6_Aenor_Toy', NULL, 1),
(44, 8, 139, NULL, 'literal', '', 'Aénor', NULL, 1),
(45, 8, 144, NULL, 'literal', '', 'Toy', NULL, 1),
(46, 8, 185, NULL, 'literal', '', '24/11/1998', NULL, 1),
(47, 8, 43, NULL, 'literal', '', '06/02/20016', NULL, 1),
(48, 9, 10, NULL, 'literal', '', 'soignant_7', NULL, 1),
(49, 9, 1, NULL, 'literal', '', 'Soignant_7_Maxime_Ratel', NULL, 1),
(50, 9, 139, NULL, 'literal', '', 'Maxime', NULL, 1),
(51, 9, 144, NULL, 'literal', '', 'Ratel', NULL, 1),
(52, 9, 185, NULL, 'literal', '', '05/05/1997', NULL, 1),
(53, 9, 43, NULL, 'literal', '', '05/12/2013', NULL, 1),
(54, 9, 187, NULL, 'literal', '', '07/11/2015', NULL, 1),
(55, 10, 10, NULL, 'literal', '', 'soignant_8', NULL, 1),
(56, 10, 1, NULL, 'literal', '', 'Soignant_8_Romain_Payet', NULL, 1),
(57, 10, 139, NULL, 'literal', '', 'Romain', NULL, 1),
(58, 10, 144, NULL, 'literal', '', 'Payet', NULL, 1),
(59, 10, 185, NULL, 'literal', '', '05/02/1952', NULL, 1),
(60, 10, 43, NULL, 'literal', '', '16/05/1975', NULL, 1),
(61, 11, 10, NULL, 'literal', '', 'soignant_9', NULL, 1),
(62, 11, 1, NULL, 'literal', '', 'Soignant_9_Jean_Claude', NULL, 1),
(63, 11, 139, NULL, 'literal', '', 'Jean', NULL, 1),
(64, 11, 144, NULL, 'literal', '', 'Claude', NULL, 1),
(65, 11, 185, NULL, 'literal', '', '25/06/1968', NULL, 1),
(66, 11, 43, NULL, 'literal', '', '27/03/2000', NULL, 1),
(73, 13, 10, NULL, 'literal', '', 'zoo_fr_1', NULL, 1),
(74, 13, 1, NULL, 'literal', '', 'Zoo_1_Beauval', NULL, 1),
(75, 13, 138, NULL, 'literal', '', 'Zoo beauval', NULL, 1),
(76, 13, 189, NULL, 'literal', '', 'France', NULL, 1),
(77, 14, 10, NULL, 'literal', '', 'zoo_all_1', NULL, 1),
(78, 14, 1, NULL, 'literal', '', 'Zoo_2_Berlin', NULL, 1),
(79, 14, 138, NULL, 'literal', '', 'Zoo de berlin', NULL, 1),
(80, 14, 189, NULL, 'literal', '', 'allemagne', NULL, 1),
(81, 15, 10, NULL, 'literal', '', 'zoo_all_2', NULL, 1),
(82, 15, 1, NULL, 'literal', '', 'Zoo_3_Cologne', NULL, 1),
(83, 15, 138, NULL, 'literal', '', 'Zoo de cologne', NULL, 1),
(84, 15, 189, NULL, 'literal', '', 'allemagne', NULL, 1),
(85, 16, 10, NULL, 'literal', '', 'zoo_be_1', NULL, 1),
(86, 16, 1, NULL, 'literal', '', 'Zoo_4_Anvers', NULL, 1),
(87, 16, 138, NULL, 'literal', '', 'Zoo d\'anvers', NULL, 1),
(88, 16, 189, NULL, 'literal', '', 'belgique', NULL, 1),
(89, 17, 10, NULL, 'literal', '', 'secteur_rose', NULL, 1),
(90, 17, 1, NULL, 'literal', '', 'Secteur_1_Rose', NULL, 1),
(91, 17, 138, NULL, 'literal', '', 'Secteur rose', NULL, 1),
(92, 18, 10, NULL, 'literal', '', 'secteur_2', NULL, 1),
(93, 18, 1, NULL, 'literal', '', 'Secteur_2_Vert', NULL, 1),
(94, 18, 138, NULL, 'literal', '', 'Secteur vert', NULL, 1),
(95, 19, 10, NULL, 'literal', '', 'secteur_jaune', NULL, 1),
(96, 19, 1, NULL, 'literal', '', 'Secteur_3_Jaune', NULL, 1),
(97, 19, 138, NULL, 'literal', '', 'Secteur jaune', NULL, 1),
(98, 20, 10, NULL, 'literal', '', 'secteur_bleu', NULL, 1),
(99, 20, 1, NULL, 'literal', '', 'Secteur_4_Bleu', NULL, 1),
(100, 20, 138, NULL, 'literal', '', 'Secteur bleu', NULL, 1),
(101, 21, 10, NULL, 'literal', '', 'animal_1', NULL, 1),
(102, 21, 1, NULL, 'literal', '', 'Animal_1_Leo', NULL, 1),
(103, 21, 138, NULL, 'literal', '', 'Leo', NULL, 1),
(104, 21, 185, NULL, 'literal', '', '26/06/2007', NULL, 1),
(105, 21, 125, NULL, 'literal', '', 'masculin', NULL, 1),
(106, 21, 186, NULL, 'literal', '', '175', NULL, 1),
(107, 21, 190, 29, 'resource', NULL, NULL, NULL, 1),
(108, 22, 10, NULL, 'literal', '', 'animal_2', NULL, 1),
(109, 22, 1, NULL, 'literal', '', 'Animal_2_Boulette', NULL, 1),
(110, 22, 138, NULL, 'literal', '', 'Boulette', NULL, 1),
(111, 22, 185, NULL, 'literal', '', '25/03/2016', NULL, 1),
(112, 22, 125, NULL, 'literal', '', 'masculin', NULL, 1),
(113, 22, 186, NULL, 'literal', '', '50', NULL, 1),
(114, 22, 190, 30, 'resource', NULL, NULL, NULL, 1),
(115, 23, 10, NULL, 'literal', '', 'animal_3', NULL, 1),
(116, 23, 1, NULL, 'literal', '', 'Animal_3_Chouquette', NULL, 1),
(117, 23, 138, NULL, 'literal', '', 'Chouquette', NULL, 1),
(118, 23, 185, NULL, 'literal', '', '14/04/2014', NULL, 1),
(119, 23, 125, NULL, 'literal', '', 'feminin', NULL, 1),
(120, 23, 186, NULL, 'literal', '', '120', NULL, 1),
(121, 23, 190, 31, 'resource', NULL, NULL, NULL, 1),
(122, 24, 10, NULL, 'literal', '', 'animal_4', NULL, 1),
(123, 24, 1, NULL, 'literal', '', 'Animal_4_Chouchou', NULL, 1),
(124, 24, 138, NULL, 'literal', '', 'Chouchou', NULL, 1),
(125, 24, 185, NULL, 'literal', '', '25/04/2003', NULL, 1),
(126, 24, 125, NULL, 'literal', '', 'masculin', NULL, 1),
(127, 24, 186, NULL, 'literal', '', '30', NULL, 1),
(128, 24, 190, 31, 'resource', NULL, NULL, NULL, 1),
(129, 25, 10, NULL, 'literal', '', 'animal_5', NULL, 1),
(130, 25, 1, NULL, 'literal', '', 'Animal_5_Paul', NULL, 1),
(131, 25, 138, NULL, 'literal', '', 'Paul', NULL, 1),
(132, 25, 185, NULL, 'literal', '', '23/09/2003', NULL, 1),
(133, 25, 125, NULL, 'literal', '', 'feminin', NULL, 1),
(134, 25, 186, NULL, 'literal', '', '60', NULL, 1),
(135, 25, 190, 42, 'resource', NULL, NULL, NULL, 1),
(136, 26, 10, NULL, 'literal', '', 'animal_6', NULL, 1),
(137, 26, 1, NULL, 'literal', '', 'Animal_6_Julien', NULL, 1),
(138, 26, 138, NULL, 'literal', '', 'Julien', NULL, 1),
(139, 26, 185, NULL, 'literal', '', '08/11/1996', NULL, 1),
(140, 26, 125, NULL, 'literal', '', 'feminin', NULL, 1),
(141, 26, 186, NULL, 'literal', '', '213', NULL, 1),
(142, 26, 190, 41, 'resource', NULL, NULL, NULL, 1),
(143, 27, 10, NULL, 'literal', '', 'animal_7', NULL, 1),
(144, 27, 1, NULL, 'literal', '', 'Animal_7_Kim', NULL, 1),
(145, 27, 138, NULL, 'literal', '', 'Kim', NULL, 1),
(146, 27, 185, NULL, 'literal', '', '05/04/1997', NULL, 1),
(147, 27, 125, NULL, 'literal', '', 'feminin', NULL, 1),
(148, 27, 186, NULL, 'literal', '', '213 ', NULL, 1),
(149, 27, 190, 40, 'resource', NULL, NULL, NULL, 1),
(150, 28, 10, NULL, 'literal', '', 'animal_8', NULL, 1),
(151, 28, 1, NULL, 'literal', '', 'Animal_8_Poulette', NULL, 1),
(152, 28, 138, NULL, 'literal', '', 'Poulette', NULL, 1),
(153, 28, 185, NULL, 'literal', '', '28/04/1985', NULL, 1),
(154, 28, 125, NULL, 'literal', '', 'masculin', NULL, 1),
(155, 28, 186, NULL, 'literal', '', '25', NULL, 1),
(156, 28, 190, 42, 'resource', NULL, NULL, NULL, 1),
(157, 29, 10, NULL, 'literal', '', 'enclos_1', NULL, 1),
(158, 29, 188, NULL, 'literal', '', '1500', NULL, 1),
(159, 29, 1, NULL, 'literal', '', 'Enclos_1_Grand', NULL, 1),
(160, 29, 4, NULL, 'literal', '', 'superficie en m2', NULL, 1),
(161, 30, 10, NULL, 'literal', '', 'enclos_2', NULL, 1),
(162, 30, 188, NULL, 'literal', '', '500', NULL, 1),
(163, 30, 1, NULL, 'literal', '', 'Enclos_2_Petit', NULL, 1),
(164, 30, 4, NULL, 'literal', '', 'superficie en m2', NULL, 1),
(165, 31, 10, NULL, 'literal', '', 'enclos_3 ', NULL, 1),
(166, 31, 188, NULL, 'literal', '', '1000', NULL, 1),
(167, 31, 1, NULL, 'literal', '', 'Enclos_ 3_Moyen', NULL, 1),
(168, 31, 4, NULL, 'literal', '', 'superficie en m2', NULL, 1),
(169, 32, 10, NULL, 'literal', '', 'espece_1', NULL, 1),
(170, 32, 1, NULL, 'literal', '', 'Espece_1_Lion ', NULL, 1),
(171, 32, 138, NULL, 'literal', '', 'Lion', NULL, 1),
(172, 33, 10, NULL, 'literal', '', 'espece_2', NULL, 1),
(173, 33, 1, NULL, 'literal', '', 'Espece_2_Elephant', NULL, 1),
(174, 33, 138, NULL, 'literal', '', 'Elephant', NULL, 1),
(175, 34, 10, NULL, 'literal', '', 'espece_3', NULL, 1),
(176, 34, 1, NULL, 'literal', '', 'Espece_3_Oiseau', NULL, 1),
(177, 34, 138, NULL, 'literal', '', 'Oiseau', NULL, 1),
(178, 35, 10, NULL, 'literal', '', 'espece_4', NULL, 1),
(179, 35, 1, NULL, 'literal', '', 'Espece_4_Penguin', NULL, 1),
(180, 35, 138, NULL, 'literal', '', 'Penguin', NULL, 1),
(181, 36, 10, NULL, 'literal', '', 'espece_5', NULL, 1),
(182, 36, 1, NULL, 'literal', '', 'Espece_5_Tigre', NULL, 1),
(183, 36, 138, NULL, 'literal', '', 'Tigre', NULL, 1),
(184, 37, 10, NULL, 'literal', '', 'espece_6', NULL, 1),
(185, 37, 1, NULL, 'literal', '', 'Espece_6_Singe', NULL, 1),
(186, 37, 138, NULL, 'literal', '', 'Singe', NULL, 1),
(187, 38, 10, NULL, 'literal', '', 'espece_7', NULL, 1),
(188, 38, 1, NULL, 'literal', '', 'Espece_7_Dauphin ', NULL, 1),
(189, 38, 138, NULL, 'literal', '', 'Dauphin', NULL, 1),
(190, 39, 10, NULL, 'literal', '', 'espece_8', NULL, 1),
(191, 39, 1, NULL, 'literal', '', 'Espece_8_Alpaga', NULL, 1),
(192, 39, 138, NULL, 'literal', '', 'Alpaga', NULL, 1),
(193, 21, 193, 32, 'resource', NULL, NULL, NULL, 1),
(194, 21, 192, 14, 'resource', NULL, NULL, NULL, 1),
(195, 21, 191, 13, 'resource', NULL, NULL, NULL, 1),
(196, 21, 4, NULL, 'literal', '', 'taille en cm', NULL, 1),
(197, 29, 194, 17, 'resource', NULL, NULL, NULL, 1),
(198, 22, 193, 37, 'resource', NULL, NULL, NULL, 1),
(199, 22, 192, 15, 'resource', NULL, NULL, NULL, 1),
(200, 22, 191, 15, 'resource', NULL, NULL, NULL, 1),
(201, 22, 4, NULL, 'literal', '', 'taille en cm', NULL, 1),
(202, 30, 194, 18, 'resource', NULL, NULL, NULL, 1),
(203, 23, 193, 35, 'resource', NULL, NULL, NULL, 1),
(204, 23, 192, 16, 'resource', NULL, NULL, NULL, 1),
(205, 23, 191, 15, 'resource', NULL, NULL, NULL, 1),
(206, 23, 4, NULL, 'literal', '', 'taille en cm', NULL, 1),
(207, 31, 194, 19, 'resource', NULL, NULL, NULL, 1),
(208, 24, 193, 34, 'resource', NULL, NULL, NULL, 1),
(209, 24, 192, 14, 'resource', NULL, NULL, NULL, 1),
(210, 24, 191, 14, 'resource', NULL, NULL, NULL, 1),
(211, 24, 4, NULL, 'literal', '', 'taille en cm', NULL, 1),
(212, 40, 10, NULL, 'literal', '', 'enclos_4', NULL, 1),
(213, 40, 188, NULL, 'literal', '', '1000', NULL, 1),
(214, 40, 1, NULL, 'literal', '', 'Enclos_4 _Moyen', NULL, 1),
(215, 41, 10, NULL, 'literal', '', 'enclos_5', NULL, 1),
(216, 41, 188, NULL, 'literal', '', '2500', NULL, 1),
(217, 41, 1, NULL, 'literal', '', 'Enclos_5_Grand', NULL, 1),
(218, 42, 10, NULL, 'literal', '', 'enclos_6', NULL, 1),
(219, 42, 188, NULL, 'literal', '', '500', NULL, 1),
(220, 42, 1, NULL, 'literal', '', 'Enclos_6_Petit', NULL, 1),
(221, 43, 10, NULL, 'literal', '', 'enclos_7', NULL, 1),
(222, 43, 188, NULL, 'literal', '', '1800', NULL, 1),
(223, 43, 1, NULL, 'literal', '', 'Enclos_7_Grand', NULL, 1),
(224, 25, 193, 35, 'resource', NULL, NULL, NULL, 1),
(225, 25, 192, 14, 'resource', NULL, NULL, NULL, 1),
(226, 25, 191, 16, 'resource', NULL, NULL, NULL, 1),
(227, 25, 4, NULL, 'literal', '', 'taille en cm', NULL, 1),
(228, 42, 194, 20, 'resource', NULL, NULL, NULL, 1),
(229, 26, 193, 33, 'resource', NULL, NULL, NULL, 1),
(230, 26, 192, 14, 'resource', NULL, NULL, NULL, 1),
(231, 26, 191, 16, 'resource', NULL, NULL, NULL, 1),
(232, 26, 4, NULL, 'literal', '', 'taille en cm', NULL, 1),
(233, 41, 194, 19, 'resource', NULL, NULL, NULL, 1),
(234, 27, 193, 38, 'resource', NULL, NULL, NULL, 1),
(235, 27, 192, 14, 'resource', NULL, NULL, NULL, 1),
(236, 27, 191, 14, 'resource', NULL, NULL, NULL, 1),
(237, 27, 4, NULL, 'literal', '', 'taille en cm', NULL, 1),
(238, 40, 194, 20, 'resource', NULL, NULL, NULL, 1),
(239, 28, 193, 34, 'resource', NULL, NULL, NULL, 1),
(240, 28, 192, 14, 'resource', NULL, NULL, NULL, 1),
(241, 28, 191, 13, 'resource', NULL, NULL, NULL, 1),
(242, 28, 4, NULL, 'literal', '', 'taille en cm', NULL, 1),
(243, 21, 195, 3, 'resource', NULL, NULL, NULL, 1),
(244, 21, 195, 11, 'resource', NULL, NULL, NULL, 1),
(245, 3, 196, 21, 'resource', NULL, NULL, NULL, 1),
(246, 3, 196, 25, 'resource', NULL, NULL, NULL, 1),
(247, 3, 196, 28, 'resource', NULL, NULL, NULL, 1),
(248, 4, 196, 23, 'resource', NULL, NULL, NULL, 1),
(249, 4, 196, 25, 'resource', NULL, NULL, NULL, 1),
(250, 4, 196, 28, 'resource', NULL, NULL, NULL, 1),
(251, 5, 196, 22, 'resource', NULL, NULL, NULL, 1),
(252, 5, 196, 27, 'resource', NULL, NULL, NULL, 1),
(253, 6, 196, 37, 'resource', NULL, NULL, NULL, 1),
(254, 6, 196, 24, 'resource', NULL, NULL, NULL, 1),
(255, 7, 196, 24, 'resource', NULL, NULL, NULL, 1),
(256, 7, 196, 26, 'resource', NULL, NULL, NULL, 1),
(257, 7, 196, 27, 'resource', NULL, NULL, NULL, 1),
(258, 8, 196, 21, 'resource', NULL, NULL, NULL, 1),
(259, 9, 196, 25, 'resource', NULL, NULL, NULL, 1),
(260, 9, 196, 28, 'resource', NULL, NULL, NULL, 1),
(261, 10, 196, 26, 'resource', NULL, NULL, NULL, 1),
(262, 10, 196, 24, 'resource', NULL, NULL, NULL, 1),
(263, 10, 196, 27, 'resource', NULL, NULL, NULL, 1),
(264, 11, 196, 21, 'resource', NULL, NULL, NULL, 1),
(265, 11, 196, 23, 'resource', NULL, NULL, NULL, 1),
(266, 21, 195, 8, 'resource', NULL, NULL, NULL, 1),
(267, 22, 195, 5, 'resource', NULL, NULL, NULL, 1),
(268, 23, 195, 4, 'resource', NULL, NULL, NULL, 1),
(269, 23, 195, 11, 'resource', NULL, NULL, NULL, 1),
(270, 24, 195, 6, 'resource', NULL, NULL, NULL, 1),
(271, 24, 195, 10, 'resource', NULL, NULL, NULL, 1),
(272, 25, 195, 3, 'resource', NULL, NULL, NULL, 1),
(273, 25, 195, 4, 'resource', NULL, NULL, NULL, 1),
(274, 25, 195, 9, 'resource', NULL, NULL, NULL, 1),
(275, 26, 195, 6, 'resource', NULL, NULL, NULL, 1),
(276, 26, 195, 10, 'resource', NULL, NULL, NULL, 1),
(277, 27, 195, 5, 'resource', NULL, NULL, NULL, 1),
(278, 27, 195, 7, 'resource', NULL, NULL, NULL, 1),
(279, 27, 195, 10, 'resource', NULL, NULL, NULL, 1),
(280, 28, 195, 3, 'resource', NULL, NULL, NULL, 1),
(281, 28, 195, 4, 'resource', NULL, NULL, NULL, 1),
(282, 28, 195, 9, 'resource', NULL, NULL, NULL, 1);

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
(5, 1, 'https://vocabulaires_zoo_octavia.fr', 'zoobd', 'Vocabulaire Zoo', ''),
(6, 1, 'http://dbpedia.org/ontology/', 'Class', 'DBpedia', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
