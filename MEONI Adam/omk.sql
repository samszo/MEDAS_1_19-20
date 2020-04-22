-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 22 avr. 2020 à 20:18
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
-- Base de données :  `omeka`
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
(3, 'site_pages', 1, 1, 'Espace moniteur', ''),
(4, 'site_pages', 1, 1, 'Espace eleve', ''),
(5, 'items', 1, 1, 'Popiette Cosette', '1\nPopiette\nCosette \n18/12/1997\nM\n10 passage la boule \n54000\nNancy\nPopiette Cosette '),
(6, 'items', 1, 1, 'Jack Bonhomme', '2\nJack\nbonhomme \n18/12/1997\nM\n55 rue de la baguette \n54000\nNancy \nJack Bonhomme '),
(7, 'items', 1, 1, 'jiclenne  morgeau', '3\njiclenne \nmorgeau\n15/12/1999\nF\n7 rue de la pacrette \n54000\nNancy \njiclenne  morgeau'),
(8, 'items', 1, 1, 'roger roger', '4\nroger\nroger\n16/06/1996\nF\n9 rue de la table \n54000\nNancy \nroger roger'),
(9, 'items', 1, 1, 'michelle  la palette', '5\nla palette \nmichelle \n15/12/1910\nM\n45 rue du chalet \n54000\nNancy \nmichelle  la palette '),
(10, 'items', 1, 1, 'moniteur pastis', '1\nregis\npastis\n13/02/2000\nF\nmoniteur pastis'),
(11, 'items', 1, 1, 'moniteur tatane', '2\ntruster\ntatane \n14/04/1988\nM\nmoniteur tatane '),
(12, 'items', 1, 1, 'voiture1', '1\nFF-505-PX\nCitroën C1 \ngris pastel sombre anthracite\n15/05/2019\nvoiture1'),
(13, 'items', 1, 1, 'voiture2', '2\nKL-421-KG\npingpong\nnoire claire matte reflet d\'argent \n14/05/2019\nvoiture2'),
(22, 'item_sets', 1, 1, 'Leçon 24/04/2020 08:30:00 avec Pastis', 'lecon1\n1\nvoiture1\n1\nmoniteur pastis\n24/04/2020 08:30:00\nLeçon 24/04/2020 08:30:00 avec Pastis \nJack Bonhomme'),
(23, 'item_sets', 1, 1, 'Leçon 24/04/2020 08:30:00 avec Tatane', '2\nvoiture2\nmoniteur tatane\n24/04/2020 08:30:00\nLeçon 24/04/2020 08:30:00 avec Tatane \nPopiette Cosette'),
(24, 'item_sets', 1, 1, 'Leçon 24/04/2020 10:00:00 avec pastis', '3\nvoiture1\nmoniteur pastis\n24/04/2020 10:00:00\nLeçon 24/04/2020 10:00:00 avec pastis \nroger roger'),
(25, 'item_sets', 1, 1, 'Leçon 24/04/2020 10:00:00 avec Tatane', '4\nvoiture2\nmoniteur tatane\n24/04/2020 10:00:00\nLeçon 24/04/2020 10:00:00 avec Tatane');

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
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13);

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

--
-- Déchargement des données de la table `item_set`
--

INSERT INTO `item_set` (`id`, `is_open`) VALUES
(22, 0),
(23, 0),
(24, 0),
(25, 0);

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
('b7fuUgoZbD8fNOv0grcl3ifoeoQ6RZvw', 4, '2020-04-22 20:14:33', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(231, 1, 8, 'Nom', 'Nom', NULL),
(232, 1, 8, 'Prenom', 'Prenom', NULL),
(233, 1, 8, 'Adresse', 'Adresse', NULL),
(234, 1, 8, 'CP', 'CP', NULL),
(235, 1, 8, 'Ville', 'Ville', NULL),
(236, 1, 8, 'Date_lecon', 'Date_lecon', NULL),
(237, 1, 8, 'Nom_moniteur', 'Nom_moniteur', NULL),
(238, 1, 8, 'Prenom_moniteur', 'Prenom_moniteur', NULL),
(239, 1, 8, 'Date_naissance', 'Date_naissance', NULL),
(240, 1, 8, 'Sexe', 'Sexe', NULL),
(241, 1, 8, 'Num_imatriculation', 'Num_imatriculation', NULL),
(242, 1, 8, 'Modele', 'Modele', NULL),
(243, 1, 8, 'couleur', 'couleur', NULL),
(244, 1, 8, 'date_mise_circulation', 'date_mise_circulation', NULL),
(245, 1, 8, 'idEleves', 'idEleves', NULL),
(246, 1, 8, 'idLecon', 'idLecon', NULL),
(247, 1, 8, 'idMoniteur', 'idMoniteur', NULL),
(248, 1, 8, 'idVoiture', 'idVoiture', NULL),
(298, 1, 10, 'accepts', 'accepts', 'Indicates that a user who is willing to help accepted the request.'),
(299, 1, 10, 'endsRepeatingOn', 'ends repeating on', 'Indicates that a time-interval is repeating until this time and date.'),
(300, 1, 10, 'excludesUserByLimitation', 'excludes user by limitation', 'This property is used to describe that a request exludes helpers having a certain limitation.'),
(301, 1, 10, 'excludesUserFrom', 'excludes user from', 'This property is used to describe that a certain limitation excludes certain helpers from the request.'),
(302, 1, 10, 'hasAccreditedDuration', 'has accredited duration', 'The accredited duration of the request. This is the amount of time which will be transferred from the originator the the assigned helper of the request. Do not use this property to indicate the estimated duration of the task. Use hasExpectedDuration instead.'),
(303, 1, 10, 'hasAddressPart', 'has address part', 'An address part that describes the location of a specific request.'),
(304, 1, 10, 'hasEnvironment', 'has environment', 'Indicates that a certain Location Specifier has a specific environmental factor.'),
(305, 1, 10, 'hasExpectedDuration', 'has expected duration', 'The expected duration indicates the duraction of the request estimated by the originator of the request. Do not use this property to assert the actual time credits associated to this request. Use hasAccreditedDuration instead.'),
(306, 1, 10, 'hasLimitation', 'has limitation', 'Indicates that a Timebank user suffers from a certain limitation.'),
(307, 1, 10, 'hasNotEnvironment', 'has not environment', 'Indicates that a certain Location Specifier has a specific environmental factor.'),
(308, 1, 10, 'hasOriginator', 'has originator', 'Indicates that the request has the specific originator.'),
(309, 1, 10, 'hasSeverity', 'has severity', 'Indicates the severity of a limitation.'),
(310, 1, 10, 'hasSkill', 'has skill', 'Describes the Skill of a certain Timebank user.'),
(311, 1, 10, 'hasSkillLevel', 'has skill level', 'Describes the proficiency level of a skill.'),
(312, 1, 10, 'hasStatus', 'has status', 'Every request can have at most one status assigned to it.'),
(313, 1, 10, 'hasSubPart', 'has sub-part', 'Indicates that the address part is a sub-part of another. A sub-part defines a place more precisely. A sub-part is always in the context of its super-part. For example, a streetnumber is a sub- part of the street.'),
(314, 1, 10, 'hasTimeBalance', 'has time-balance', 'Indicates the current time-balance of a Timebank user.'),
(315, 1, 10, 'hasTimeWindow', 'has time window', 'Indicates the time window in which the request can/should be completed.'),
(316, 1, 10, 'isAcceptanceDateOf', 'is acceptance date of', 'Indicates the time and date when the Timebank request was accepted by the assigned helper.'),
(317, 1, 10, 'isAcceptedBy', 'is accepted by', 'Indicates that a request is accepted by a user who is willing to help completing the request.'),
(318, 1, 10, 'isAcceptedOn', 'is accepted on', 'Indicates the time and date when the Timebank request was accepted by the assigned helper.'),
(319, 1, 10, 'isAccreditedTo', 'is accredited to', 'The accredited duration of the request. This is the amount of time which will be transferred from the originator the the assigned helper of the request. Do not use this property to indicate the estimated duration of the task. Use hasExpectedDuration instead.'),
(320, 1, 10, 'isAdressPartOf', 'is adress part of', 'An address part that describes the location of a specific request.'),
(321, 1, 10, 'isAvailabilityOf', 'is availability of', 'Indicates the availability of a Timebank user to act as a helper for a Timebank request.'),
(322, 1, 10, 'isAvailableOn', 'is available on', 'Indicates the availability of a Timebank user to act as a helper for a Timebank request.'),
(323, 1, 10, 'isCancellationDateOf', 'is cancellation date of', 'Indicates the time and date when the Timebank request was cancelled.'),
(324, 1, 10, 'isCancelledOn', 'is cancelled on', 'Indicates the time and date when the Timebank request was cancelled.'),
(325, 1, 10, 'isCompletedOn', 'is completed on', 'Indicates the time and date of the completion of a Timebank request.'),
(326, 1, 10, 'isCompletionDateOf', 'is completion date of', 'Indicates the time and date of the completion of a Timebank request.'),
(327, 1, 10, 'isEnvironmentOf', 'is environment of', 'Indicates that a certain Location Specifier has a specific environmental factor.'),
(328, 1, 10, 'isExpectedDurationOf', 'is expected duration of', 'The expected duration indicates the duraction of the request estimated by the originator of the request. Do not use this property to assert the actual time credits associated to this request. Use hasAccreditedDuration instead.'),
(329, 1, 10, 'isLimitationOf', 'is limitation of', 'Indicates that a certain limitation applies to the Timebank user.'),
(330, 1, 10, 'isNotEnvironmentOf', 'is not environment of', 'Indicates that a certain Location Specifier has a specific environmental factor.'),
(331, 1, 10, 'isOriginatorOf', 'is originator of', 'Indicates that the user is the originator of the request.'),
(332, 1, 10, 'isPublicationDateOf', 'is publication date of', 'Indicates the time and date of the publication of a Timebank request.'),
(333, 1, 10, 'isPublishedOn', 'is published on', 'Indicates the time and date of the publication of a Timebank request.'),
(334, 1, 10, 'isRepeatingEndpointOf', 'is repeating endpoint of', 'Indicates that a specific time and date marks the end of a repetition of a time-interval.'),
(335, 1, 10, 'isRepetitionDayOf', 'is repetition date of', 'Indicates that a time interval repeats on the specified weekdays.'),
(336, 1, 10, 'isRequiredBy', 'is required by', 'The skill associated with a Timebank request.'),
(337, 1, 10, 'isSeverityOf', 'is severity of', 'Indicates the severity of a limitation.'),
(338, 1, 10, 'isSkillLevelOf', 'is skill level of', 'Describes the proficiency level of a skill.'),
(339, 1, 10, 'isSkillOf', 'is skill of', 'Describes the Skill of a certain Timebank user.'),
(340, 1, 10, 'isStatusOf', 'is status of', 'Every request can have at most one status assigned to it.'),
(341, 1, 10, 'isSubPartOf', 'is sub-part of', 'Indicates that the address part is a sub-part of another. A sub-part defines a place more precisely. A sub-part is always in the context of its super-part. For example, a streetnumber is a sub- part of the street.'),
(342, 1, 10, 'isTimeBalanceOf', 'is time-balance of', 'Indicates the current time-balance of a Timebank user.'),
(343, 1, 10, 'isTimeWindowOf', 'is time window of', 'Indicates the time window in which the request can/should be completed.'),
(344, 1, 10, 'repeatsOn', 'repeats on', 'Indicates that a time interval repeats on the specified weekdays.'),
(345, 1, 10, 'requiresSkill', 'requires skill', 'The skill associated with a Timebank request.'),
(346, 1, 10, 'rating', 'rating', 'The rating given by the originator of a request to the assigned helper for completing the specific request.');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(5, 1, 118, 6, NULL, 'Popiette Cosette', 1, '2020-04-22 16:29:09', '2020-04-22 18:21:13', 'Omeka\\Entity\\Item'),
(6, 1, 118, 6, NULL, 'Jack Bonhomme', 1, '2020-04-22 16:30:34', '2020-04-22 18:21:49', 'Omeka\\Entity\\Item'),
(7, 1, 118, 6, NULL, 'jiclenne  morgeau', 1, '2020-04-22 16:31:56', '2020-04-22 18:22:09', 'Omeka\\Entity\\Item'),
(8, 1, 118, 6, NULL, 'roger roger', 1, '2020-04-22 16:33:09', '2020-04-22 18:22:26', 'Omeka\\Entity\\Item'),
(9, 1, 118, 6, NULL, 'michelle  la palette', 1, '2020-04-22 16:34:40', '2020-04-22 18:22:44', 'Omeka\\Entity\\Item'),
(10, 1, 119, 8, NULL, 'moniteur pastis', 1, '2020-04-22 16:36:22', '2020-04-22 18:23:01', 'Omeka\\Entity\\Item'),
(11, 1, 119, 8, NULL, 'moniteur tatane', 1, '2020-04-22 16:37:10', '2020-04-22 18:23:23', 'Omeka\\Entity\\Item'),
(12, 1, 120, 9, NULL, 'voiture1', 1, '2020-04-22 16:40:10', '2020-04-22 16:40:10', 'Omeka\\Entity\\Item'),
(13, 1, 120, 9, NULL, 'voiture2', 1, '2020-04-22 16:42:48', '2020-04-22 16:42:48', 'Omeka\\Entity\\Item'),
(22, 1, 121, 7, NULL, 'Leçon 24/04/2020 08:30:00 avec Pastis', 1, '2020-04-22 18:26:15', '2020-04-22 18:47:27', 'Omeka\\Entity\\ItemSet'),
(23, 1, 121, 7, NULL, 'Leçon 24/04/2020 08:30:00 avec Tatane', 1, '2020-04-22 18:29:00', '2020-04-22 18:34:24', 'Omeka\\Entity\\ItemSet'),
(24, 1, 121, 7, NULL, 'Leçon 24/04/2020 10:00:00 avec pastis', 1, '2020-04-22 18:38:16', '2020-04-22 18:47:56', 'Omeka\\Entity\\ItemSet'),
(25, 1, 121, 7, NULL, 'Leçon 24/04/2020 10:00:00 avec Tatane', 1, '2020-04-22 18:50:34', '2020-04-22 18:50:34', 'Omeka\\Entity\\ItemSet');

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
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(118, 1, 8, 'Eleves', 'Eleves', NULL),
(119, 1, 8, 'Moniteur', 'Moniteur', NULL),
(120, 1, 8, 'Voiture', 'Voiture', NULL),
(121, 1, 8, 'Lecon', 'Lecon', NULL),
(249, 1, 10, 'Accessibility', 'Accessibility', 'Describes any revelant information regarding the accessibility of a location of a request.'),
(250, 1, 10, 'AccessibleByPublicTransport', 'Accessible by Public Transport', 'The location is accessible by public transport.'),
(251, 1, 10, 'AddressPart', 'Address Part', 'An address part indicates part of an address like region, city, etc. If two places share the same address part, they also share the same environmental factors.'),
(252, 1, 10, 'Advice', 'Advice', 'Skills to provide particular services which requires some sort of education or training.'),
(253, 1, 10, 'Allergy', 'Allergy', 'A collection of allergies, which is caused by hypersensitivity of the immune system.'),
(254, 1, 10, 'Assembling', 'Assembling', 'The skill to assemble items like furniture and other things.'),
(255, 1, 10, 'AutomobileRepair', 'Automobile Repair', 'The skill to repair automobiles.'),
(256, 1, 10, 'Baking', 'Baking', 'The skill to assist with baking.'),
(257, 1, 10, 'Carpeting', 'Carpenting', 'The skill to do carpenting.'),
(258, 1, 10, 'Catering', 'Catering', 'The skill to assist with catering requirements.'),
(259, 1, 10, 'Cats', 'Cats', 'Indicates that cats might be present.'),
(260, 1, 10, 'ChildCare', 'Child Care', 'The skill to provide care for children.'),
(261, 1, 10, 'Cleaning', 'Cleaning', 'The skill to assist with general cleaning tasks.'),
(262, 1, 10, 'ClimbingStairsDifficulty', 'Difficulty in Climbing Stairs', 'The person has difficulty in climbing up stairs.'),
(263, 1, 10, 'ClothesWashing', 'Clothes Washing', 'The skill to assist with washing clothes.'),
(264, 1, 10, 'CognitiveImpairment', 'Cognitive Impairment', 'A person with cognitive impairment can\'t think and remember things clearly.'),
(265, 1, 10, 'CommonDisease', 'Common Disease', 'A collection of diseases that are common, especially for elderly people'),
(266, 1, 10, 'ComputerProcessing', 'Computer Processing', 'The skill to assist with processing data computers.'),
(267, 1, 10, 'ComputerRepair', 'Computer Repair', 'The skill to fix problems with computers.'),
(268, 1, 10, 'Cooking', 'Cooking', 'The skill to assist with cooking in general.'),
(269, 1, 10, 'Counseling', 'Counseling', 'The skill to advice people on psychological matters.'),
(270, 1, 10, 'Crafting', 'Crafting', 'Crafting skills.'),
(271, 1, 10, 'CraftingClothes', 'Crafting Clothes', 'The ability to craft any kind of clothes.'),
(272, 1, 10, 'DancingCompanion', 'Dancing Companion', 'The ability to act as a dancing companion.'),
(273, 1, 10, 'Depression', 'Depression', 'A person with depression has a depressed mood over a long period and may even have thoughts of suicide.'),
(274, 1, 10, 'Diabetes', 'Diabetes Mellitus', 'A disorder characterized by high blood sugar levels during a long period.'),
(275, 1, 10, 'Dishwashing', 'Dishwashing', 'The skill to assist with washing dishes.'),
(276, 1, 10, 'Dogs', 'Dogs', 'Indicates that dogs might be present.'),
(277, 1, 10, 'DressingAssistance', 'Dressing Assistance', 'The skill to assist someone with dressing.'),
(278, 1, 10, 'DressingProblem', 'Dressing Problem', 'The person has difficulties dressing himself.'),
(279, 1, 10, 'DrivingCars', 'Driving Cars', 'Experience in driving cars.'),
(280, 1, 10, 'DrivingHeavyVehicles', 'Driving Heavy Vehicles', 'Experience in driving heavy vehicles.'),
(281, 1, 10, 'DrivingLightVehicles', 'Driving Light Vehicles', 'Experience in driving light vehicles.'),
(282, 1, 10, 'DrivingTractors', 'Driving Tractors', 'Experience in driving tractors.'),
(283, 1, 10, 'DrivingTrucks', 'Driving Trucks', 'Experience in driving with trucks.'),
(284, 1, 10, 'DrivingVans', 'Driving Vans', 'Experience in driving vans.'),
(285, 1, 10, 'DrivingWithTrailers', 'Driving with Trailers', 'Experience in driving with trailers.'),
(286, 1, 10, 'DrugAllergy', 'Drug Allergy', 'An allergy to drugs.'),
(287, 1, 10, 'EggAllergy', 'Egg Allergy', 'Allergy to eggs.'),
(288, 1, 10, 'ElderlyCare', 'Care for Elderly', 'The skill to provide care and support for the elderly.'),
(289, 1, 10, 'Electricity', 'Electricity', 'Electric outlet available.'),
(290, 1, 10, 'ElectronicRepair', 'Electronic Repair', 'The skill to repair electronic devices.'),
(291, 1, 10, 'Environment', 'Environment', 'The environment describes relevant environmental factors of a request.'),
(292, 1, 10, 'EnvironmentalAllergy', 'Environmental Allergy', 'An allergy to something in the environment such as dust mites, pollen, pet hair and cigarette smoke.'),
(293, 1, 10, 'EventPlanning', 'Event Planning', 'The skill to assist in planning and hosting events.'),
(294, 1, 10, 'FearOfAnimals', 'Fear of Animals', 'Fear of animals. This can include dogs, cats, snakes, insects, etc.'),
(295, 1, 10, 'FearOfCats', 'Fear of Cats', 'Fear of cats.'),
(296, 1, 10, 'FearOfDark', 'Fear of Dark', 'Fear of dark places.'),
(297, 1, 10, 'FearOfDogs', 'Fear of Dogs', 'Fear of dogs.'),
(298, 1, 10, 'FearOfHeights', 'Fear of Heights', 'Fear or phobia of heights.'),
(299, 1, 10, 'FinancialAdvice', 'Financial Advice', 'Specialized in providing assistance with financial services. This can include helping with taxes and book keeping.'),
(300, 1, 10, 'FoodAllergy', 'Food Allergy', 'An allergy to food such as milk, peanuts, eggs, fish, tree nuts, and fruit.'),
(301, 1, 10, 'FoodPreparation', 'Food Preparation', 'The skill to assist with food preparation like meat cutting, washing of food, etc.'),
(302, 1, 10, 'FoodService', 'Food Service', 'The skill to provide services related to food products.'),
(303, 1, 10, 'Games', 'Games', 'The skill to participate in board games, card games, etc.'),
(304, 1, 10, 'GlutenAllergy', 'Gluten Allergy', 'Allergies to grains with gluten such as wheat, barley, rye, and oats.'),
(305, 1, 10, 'Groceries', 'Groceries', 'The skill to help buying groceries.'),
(306, 1, 10, 'HairCutting', 'Hair Cutting', 'Ability to cut someone else\'s hair.'),
(307, 1, 10, 'HeartDisease', 'Heart Diseases', 'A condition of diseases that negatively affect one\'s heart such as blood vessel diseases and heart rhythm problems.'),
(308, 1, 10, 'HouseholdEquipmentRepair', 'Houseshold Equipment Repair', 'The skill to repair household equipment.'),
(309, 1, 10, 'HygieneAssitance', 'Hygiene Assitance', 'The skill to assist someone on hygienical matters.'),
(310, 1, 10, 'Hypertension', 'Hypertension', 'The blood pressure is high in a long period.'),
(311, 1, 10, 'Hypotension', 'Hypotension', 'The blood pressure is low in a long period.'),
(312, 1, 10, 'Internet', 'Internet', 'Internet is available.'),
(313, 1, 10, 'InventoryManagement', 'Inventory Management', 'The skill to assist with inventory management.'),
(314, 1, 10, 'Knitting', 'Knitting', 'Specialized in knitting clothes.'),
(315, 1, 10, 'LegalAdvice', 'Legal Advice', 'Specialized in providing legal assistance.'),
(316, 1, 10, 'Level', 'Level', 'The level can be low, medium, or high.'),
(317, 1, 10, 'Lift', 'Lift', 'A lift/elevator is available.'),
(318, 1, 10, 'Limitation', 'Limitation', 'Limitations can be anything which prevents or limits the extent to which a user can help somebody else.'),
(319, 1, 10, 'LimitedAccessibilityRain', 'Limited Accessibility: Rain', 'The place is difficult to access during rainfall.'),
(320, 1, 10, 'LimitedAccessibilitySnow', 'Limited Accessibility: Snow', 'The place is difficult to access during snowfall.'),
(321, 1, 10, 'Maintenance', 'Maintenance', 'The skill to help with maintenance of equipment.'),
(322, 1, 10, 'MentalDisorder', 'Mental Disorder', 'Disorders that affect the mental states of a person.'),
(323, 1, 10, 'MentallyIllCare', 'Care Mentally Ill People', 'The skill to provide care for the mentally ill.'),
(324, 1, 10, 'MilkAllergy', 'Milk Allergy', 'Allergy to milk.'),
(325, 1, 10, 'MobilityProblem', 'Mobility Problem', 'Difficulties with moving around physically such as having difficulties using toliet, dressing, walking and so on.'),
(326, 1, 10, 'Mopping', 'Mopping', 'The skill to assist with mopping floors, etc.'),
(327, 1, 10, 'Mowing', 'Mowing', 'The skill to assist with mowing the grass.'),
(328, 1, 10, 'NutsAllergy', 'Nuts Allergy', 'Allergy to nuts such as almonds, walnuts, pecans, and peanuts.'),
(329, 1, 10, 'OfficeWork', 'Office Work', 'The skill to provide help with office related work.'),
(330, 1, 10, 'OnlineShopping', 'Online Shopping', 'The skill to assist in buying things online.'),
(331, 1, 10, 'PeopleCare', 'Care for People', 'The skill to provide care for people.'),
(332, 1, 10, 'PerformingMusic', 'Performing Music', 'The skill to entertain others by performing music.'),
(333, 1, 10, 'PersonalService', 'Personal Service', 'Personal services which include hygiene and daily care.'),
(334, 1, 10, 'Pets', 'Pets', 'Indicates that pets might be present.'),
(335, 1, 10, 'PhoneCalls', 'Phone Calls', 'The skill to perform phone calls.'),
(336, 1, 10, 'PhysicalInconvenience', 'Physical Inconvenience', 'This is a collection of physical disorders that negatively affect a person\'s daily life.'),
(337, 1, 10, 'PhysicallyDisabledCare', 'Care for Physically Disabled', 'The skill to provide care for the physically disabled.'),
(338, 1, 10, 'Plumbing', 'Plumbing', 'Skill to perform plumbing and repairs on pipe installation.'),
(339, 1, 10, 'PoorEyesight', 'Poor Eyesight', 'Having difficulties seeing objects clearly.'),
(340, 1, 10, 'PoorHearing', 'Poor Hearing', 'Having difficulties hearing voices clearly.'),
(341, 1, 10, 'Pruning', 'Pruning', 'The skill to assist with pruning shrubs and twigs.'),
(342, 1, 10, 'PsychoticEpisode', 'Psychotic Episode', 'A person with psychotic episode can not tell the difference between the reality and unreality and may have difficulty with social activities in daily life.'),
(343, 1, 10, 'RecordingNotes', 'Recording Notes', 'The skill to assist with recording notes and entries.'),
(344, 1, 10, 'Recreation', 'Recreation', 'The skill to provide services related to recreation.'),
(345, 1, 10, 'Repair', 'Repair', 'The Skill to repair equipment and facilities.'),
(346, 1, 10, 'Request', 'Request', 'A request for help from a Timebank user.'),
(347, 1, 10, 'Rheumatism', 'Rheumatism', 'Diseases that causes chronic pain in joints and muscles such as back, shoulder and neck.'),
(348, 1, 10, 'SalesService', 'Sales Service', 'The skill to help with selling and buying products.'),
(349, 1, 10, 'SeafoodAllergy', 'Seafood Allergy', 'Allergy to any kind of seafood.'),
(350, 1, 10, 'SensitiveSkin', 'Sensitive Skin', 'Skins are too sensitive to a wide variety of factors such as weather, pets, stress and dust.'),
(351, 1, 10, 'Sewing', 'Sewing', 'Specialized in sewing clothes.'),
(352, 1, 10, 'SickCare', 'Care for Sick People', 'The skill to provide care for sick people.'),
(353, 1, 10, 'Skill', 'Skill', 'Skills define the capabilities of a user. Users and Timebank requests can be associated to a certain skill (or multiple skills) to facilitate the matching of helper and requester.'),
(354, 1, 10, 'SlipperyFloor', 'Splippery Floor', 'The person needs to be aware of slippery floor.'),
(355, 1, 10, 'SpeakingProblem', 'Speaking Problem', 'The person has difficulties speaking clearly due to body function problems such as injuries to the brain, mouth or throat.'),
(356, 1, 10, 'SpecificPhobia', 'Specific Phobia', 'Fear of specific objects such as dogs, cats, heights, dark places, and so on.'),
(357, 1, 10, 'Sports', 'Sports', 'The skill to participate in sport activities.'),
(358, 1, 10, 'Stairs', 'Stairs', 'The person might have to climb stairs to complete the task.'),
(359, 1, 10, 'Status', 'Status', 'The status of a request.'),
(360, 1, 10, 'StrokeHistory', 'History of Strokes', 'It indicates a person once had a storke. A stroke happens when blood flow to the brain is blocked and oxygen for the brain cells is insufficient, which could leads to cell death.'),
(361, 1, 10, 'Supplies', 'Supplies', 'Availability of specific supplies to complete a task.'),
(362, 1, 10, 'Tailoring', 'Tailoring', 'Specialized in providing tailoring services.'),
(363, 1, 10, 'ToiletUsingProblem', 'Toilet Using Problem', 'The person has difficulties using toilet.'),
(364, 1, 10, 'Tools', 'Tools', 'Tools can be provided.'),
(365, 1, 10, 'Transportation', 'TransportationServices', 'The skill to provide services related to transportation.'),
(366, 1, 10, 'TransportationAvailable', 'Transportation Available', 'Transportation necessary to complete the task can be provided.'),
(367, 1, 10, 'TravelCompanion', 'Travel Companion', 'The ability to act as a travel companion.'),
(368, 1, 10, 'UnevenTerrain', 'Uneven Terrain', 'The person needs equipment (e.g. shoes) suitable for uneven terrain.'),
(369, 1, 10, 'User', 'User', 'A user of the Timebank.'),
(370, 1, 10, 'WalkingProblem', 'Walking Problem', 'The person has difficulties walking.'),
(371, 1, 10, 'Water', 'Water', 'Water outlet is available.'),
(372, 1, 10, 'WeatherConstraint', 'Weather Constraint', 'The place is difficult to access during bad weather (e.g. snow).'),
(373, 1, 10, 'WoodCarving', 'Wood Carving', 'The skill to Carve items out of wood.'),
(374, 1, 10, 'WoodCrafting', 'Wood Crafting', 'Crafting skill with wood as base material.'),
(375, 1, 10, 'Writing', 'Writing', 'The skill to assist with written work, like writing or reading a letter.');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource'),
(6, 1, 118, NULL, NULL, 'Eleve'),
(7, 1, 121, NULL, NULL, 'Lecon'),
(8, 1, 119, NULL, NULL, 'Moniteur'),
(9, 1, 120, NULL, NULL, 'Voiture');

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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(35, 6, 245, NULL, NULL, 1, NULL, 0, 0),
(36, 6, 231, NULL, NULL, 2, NULL, 0, 0),
(37, 6, 232, NULL, NULL, 3, NULL, 0, 0),
(38, 6, 240, NULL, NULL, 5, NULL, 0, 0),
(39, 6, 234, NULL, NULL, 7, NULL, 0, 0),
(40, 6, 235, NULL, NULL, 8, NULL, 0, 0),
(41, 6, 239, NULL, NULL, 4, NULL, 0, 0),
(42, 7, 246, NULL, NULL, 1, NULL, 0, 0),
(43, 7, 248, NULL, NULL, 2, NULL, 0, 0),
(44, 7, 247, NULL, NULL, 3, NULL, 0, 0),
(45, 7, 236, NULL, NULL, 4, NULL, 0, 0),
(46, 8, 247, NULL, NULL, 1, NULL, 0, 0),
(47, 8, 237, NULL, NULL, 2, NULL, 0, 0),
(48, 8, 238, NULL, NULL, 3, NULL, 0, 0),
(49, 8, 239, NULL, NULL, 4, NULL, 0, 0),
(50, 8, 240, NULL, NULL, 5, NULL, 0, 0),
(51, 9, 248, NULL, NULL, 1, NULL, 0, 0),
(52, 9, 241, NULL, NULL, 2, NULL, 0, 0),
(53, 9, 242, NULL, NULL, 3, NULL, 0, 0),
(54, 9, 243, NULL, NULL, 4, NULL, 0, 0),
(55, 9, 244, NULL, NULL, 5, NULL, 0, 0),
(56, 6, 233, NULL, NULL, 6, NULL, 0, 0);

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
('07a7ahqeo79259iq269a02upko', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373538363536332e3038313033383b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22326e32706b3268676a326d6e6a6e3533386d726c6c6369347337223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538393936393b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539303133303b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373539303135393b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226564616535313365343161353638643561613561333831383965616664323666223b733a33323a226333376231376535343631663238616239633464313665373163343466373238223b733a33323a223633333136363362366365393139353730323336363733343163393237343837223b733a33323a223931356237306533393930663162653661313638643936656637346565666530223b7d733a343a2268617368223b733a36353a2239313562373065333939306631626536613136386439366566373465656665302d3633333136363362366365393139353730323336363733343163393237343837223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313735323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31383a7b733a33323a223731656332663335336133336136396463616433306536616235373266386139223b733a33323a223039356530306539623130616262666433343131356338353733616662323232223b733a33323a226331623561383164313761643365643765666236313466653761303365623866223b733a33323a223233393730333462653562316466316139663436323233323036653632633131223b733a33323a226138623366646339316235316232326163633063323064623362393731626434223b733a33323a223835363638393862643439653730366133653234333935363664346635393832223b733a33323a223930373965383862656131653064386134396636323765386337653832616337223b733a33323a223936616332356662383464343931303137613535373030343465653263626438223b733a33323a223138313339626363356632373736313365653731313838346135613031663336223b733a33323a223233353632356438353464613034646538316535646461353966376534656666223b733a33323a226565303866653231343265323166383261363038303165656439656130643561223b733a33323a223239613966656438656465653835623061666463383434646262626430373832223b733a33323a223835333530343634343736326531363263633338666439643932336338393261223b733a33323a226662316535633733323339626237353562323632353462396264623935623933223b733a33323a223466616261646564616365393264376536663562343233353862646338613765223b733a33323a223932386338326361646631396365393332353131633665353464643235383366223b733a33323a223930623733666135363831356466376537366637396161656661343533613339223b733a33323a223765333666663630663839366131313231656432633662343433303638373439223b733a33323a223234633066383234396163356134643039373038316365633963393239383833223b733a33323a226134366563326439616264643364383934616665383034353162313536623263223b733a33323a226237633034336438353338386336313135316165623632336539643032343937223b733a33323a226635333434636164303734656534323064333266323266383638636161616430223b733a33323a223930363737396139376234366434633661623561656139386664396235363433223b733a33323a223237393736316361633762393664363836303738373736613866386530383439223b733a33323a223962353065363535356434383336663163393737323838346339656334643864223b733a33323a223130386433336330613766666330393666333939646435346538396164623439223b733a33323a226233313831313464366630623363346237343732353936313265613934323036223b733a33323a223032623632353834386338616139306133323538616264393339353938393962223b733a33323a223264353832366263376262646131393163346636633033663839363462346536223b733a33323a223265373862633062396332363334396137306566393439386363653465663634223b733a33323a223432326231343732323136393430343932633561636235623234383930663530223b733a33323a223166303032356136333366353730636164396466613434316333366266616337223b733a33323a223464386363316431303237343562316334356530626231336535366464353066223b733a33323a223766326663383830656137646364393165393663633738303465616533393031223b733a33323a223238336562633463623736343436356661613462373031386436393365636161223b733a33323a223065653731613938313637633863633635343230373730653336306639323733223b7d733a343a2268617368223b733a36353a2230656537316139383136376338636336353432303737306533363066393237332d3238336562633463623736343436356661613462373031386436393365636161223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3935313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a223630333731393936633163366561663031613261616339333765323361323665223b733a33323a226563323337353631326530653038626634643130366538353734376465343262223b733a33323a223736323435656363656663383739316539653534323562336338643138646137223b733a33323a226136623864323035313466643630303366386537646633623737613836653239223b733a33323a226534363739313038313232626331303964393565633862613165373932666563223b733a33323a223639623665363666396338386563343135646138333335376163353134653062223b733a33323a223465396164323166313933316239663161303737383062636263323630656331223b733a33323a226461653762643737396434623632656135613064643833396661663561346466223b733a33323a223734396366663861343662306337366666353664666233656462363636653666223b733a33323a223038626263613335323561363435636230656462316661623965653337393236223b733a33323a223131346334316337376362386435663031313935326235303135643565636362223b733a33323a226232626634316439306137343239653662323338386631646566653062353339223b733a33323a223363663739353463656230656536613865326231363163616433636630376665223b733a33323a226438343762343063363562356433313039656435346363623833616261363730223b733a33323a223332336436616164646564336565386164613365613731356435383266353163223b733a33323a226333633365356333333566653961623239646362343164663761643836626535223b7d733a343a2268617368223b733a36353a2263336333653563333335666539616232396463623431646637616438366265352d3332336436616164646564336565386164613365613731356435383266353163223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587586563),
('2k236keb3qrf6td5cp6gqvdnt8', 0x5f5f5a467c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373439343435392e3335303133353b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2271716973713070663931766f6439686266703667377039356c6d223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373439353031343b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373439353035363b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226536363530373436383134643230343835646664623930613233316661303231223b733a33323a226566363866313330313565336436393966613734303634653661616633656237223b7d733a343a2268617368223b733a36353a2265663638663133303135653364363939666137343036346536616166336562372d6536363530373436383134643230343835646664623930613233316661303231223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226238653832303637326135323031666239346438316264653766326438366639223b733a33323a223263663332616564303566613263656464383033336364613936623430303539223b7d733a343a2268617368223b733a36353a2232636633326165643035666132636564643830333363646139366234303035392d6238653832303637326135323031666239346438316264653766326438366639223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587494459),
('cuftnag1lhj80smma90fe2nool', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373538363236312e3932393232393b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2274746e303230353467746e6671696c393837356a373837387134223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538393830343b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538393834303b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373538393835383b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223564383766353964376131323234623934316534373436663236356462363561223b733a33323a223437643336336466396139613965663965643233623834343166373265303964223b733a33323a223664656532663266383338646162663632633637333836653938306136663262223b733a33323a223039396332636435306261646266366238656339353638616234633930613666223b7d733a343a2268617368223b733a36353a2230393963326364353062616462663662386563393536386162346339306136662d3664656532663266383338646162663632633637333836653938306136663262223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226566333966313937643761313236393239393635646365373339633333653438223b733a33323a223439306430383338316430626564663365313066646164316533646665323231223b733a33323a226235396138613832643263333633333062633738396236613065383434323563223b733a33323a223233366566343865303232373333316438656139383263316133363035393664223b7d733a343a2268617368223b733a36353a2232333665663438653032323733333164386561393832633161333630353936642d6235396138613832643263333633333062633738396236613065383434323563223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226138386332653863646563346163666534636630353934313037643466613334223b733a33323a226534633563666532386462353763343934363766393036386165633439353736223b733a33323a226639313163393037393662303538653630353261633235393233666130346462223b733a33323a226532643033626635363463643833636339646365376633393737323039316335223b7d733a343a2268617368223b733a36353a2265326430336266353634636438336363396463653766333937373230393163352d6639313163393037393662303538653630353261633235393233666130346462223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587586261),
('o62lei16u55cmminm158uv3v3k', 0x5f5f5a467c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373538363539392e3432313236313b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22726d34696e3673636276633067396365717475646b6e71643368223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539303136333b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226432653132656235393631373430643165616632306137383736393430373161223b733a33323a223330343431643665313162663939363361626334313762356431353363336538223b7d733a343a2268617368223b733a36353a2233303434316436653131626639393633616263343137623564313533633365382d6432653132656235393631373430643165616632306137383736393430373161223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a343b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b, 1587586599);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('tu9ksok2b3e051mnqobamv8nlo', 0x5f5f5a467c613a31313a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373538363139312e3439353831323b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226561346a6a33656636626c68343739677463336b36676f313861223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373534383436373b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373538393736303b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538393034323b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538393638353b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373537373430303b7d733a35363a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373537353932313b7d733a33343a225a656e645f56616c696461746f725f437372665f73616c745f666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538363531393b7d733a34323a225a656e645f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538363631343b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538383736363b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223664393430613565613734363564616135386465666637333064336533303062223b733a33323a226536333837343365626139393461333564633632306639343537636264376333223b733a33323a226333643662626437353531643332626462373830303934393861353437386139223b733a33323a223565383730336639636662613161653665356333356239386464613335363531223b7d733a343a2268617368223b733a36353a2235653837303366396366626131616536653563333562393864646133353635312d6333643662626437353531643332626462373830303934393861353437386139223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a373833323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a39343a7b733a33323a226661633939396135313639333133366630316437336230373930376632373964223b733a33323a223330376436663963373964616137376163323638666366656531373563656335223b733a33323a223939343534633864363030633764663130303461646362353838346636363036223b733a33323a223131363162323439323936613937353639623265356566653436386661333962223b733a33323a223565313365656565383066653864303339323234303837343137313663343437223b733a33323a223230646461623365343330346433323237363061643938373866383764376633223b733a33323a223863396165663965636235393464633737363263613463383664313432643962223b733a33323a226232663336633434633964653832623335646536336133623838346666336431223b733a33323a223237663462383737653738343663313163323831353233303934303263363866223b733a33323a226633373161646139666637323735333565323130336631613836333539623162223b733a33323a223738623238356137366433323738653663613637303063616134383132653464223b733a33323a223961383936363639623664626137643534636634303263363733393237656663223b733a33323a223933653932666330376136353633646566656233333230616665353036306438223b733a33323a226430363936643633303265303034616336613038326463393631633633333931223b733a33323a226438613439383264396236613331353930306437356335393763366664623466223b733a33323a223539623136646535623162663561376230626237613234656234396466373563223b733a33323a223135623939616536303539633465666434373837306366356231353734663864223b733a33323a223431356333346361663230356234636466356165396234323535626631626236223b733a33323a223438323139663932356466623039613066636263356566343738646132316366223b733a33323a226637346466363764383233613731393566653439396539646334303963386638223b733a33323a226137623961333834633230623431353730666634353431313439386639393232223b733a33323a226236393363653931363339643665376561626231333566316133623164366633223b733a33323a223932356465376133356338666362353532333837333062393034373566653334223b733a33323a223635376162656234663933613937346464633535316432323564336464656635223b733a33323a226335363363656231663932656137363538323539653330333638636334316235223b733a33323a223263383161623936356539323232643162363365663635303763396464343666223b733a33323a223832363762303339333535656664336633643364656361373063336538333064223b733a33323a223833373563633661666437333436393733353231613733633865363163643734223b733a33323a226530313265356366656334303434613562303536376432643334643134646632223b733a33323a223066393664323366663838656236643361393633353036633939343365383366223b733a33323a223832376538643466303430653831643932396164623234353865393238623831223b733a33323a226635333365643966643132353964333339393836326439303834663761336139223b733a33323a223137633236643233393562316439313866666337653032653632356265633830223b733a33323a223932386237373166646135616639303263646637386430376261376634623232223b733a33323a223731366335366165383131653566303964633063353537316662643133386666223b733a33323a223337356330656162613831346563306335613539313832363962613766646631223b733a33323a223639656134313433376534623663393938373531366165383539303433373536223b733a33323a226332653731666365373736333037653833653338333437303365623765393461223b733a33323a223432363063353334373263346438313236343332653633353866653634616234223b733a33323a226561663262653263353539646466656264323035656337303634656436363438223b733a33323a223035313230363537336338353531376162653634623461636636663034393362223b733a33323a223938326439626336613964393735396330386233343930333363393236336565223b733a33323a226632383934396463336439306563363930343037363664613432363932636134223b733a33323a223534633339313130626430663561383433336538393130316630316261616134223b733a33323a223432383838373430653034326364356534653737336630633835383164656365223b733a33323a223966346266376462653964356339376636396531343662386532636132363363223b733a33323a223061323134373864336166316538366531633130613330613833363331373532223b733a33323a223237363338306538356437616339623535346233363735363335386339656434223b733a33323a223237396433343235653534646662656532333261383939393261346361383462223b733a33323a226234643430306636623339646163633563663762643832353961343030663231223b733a33323a226233623630386266633462643337633932353238643636623634343637363639223b733a33323a223236363063363430663662373539313531626237393131376230353038346233223b733a33323a226266313335643835316163393362656636306330633864656339666632373635223b733a33323a226535366361623233353632636161363334363935626137373931386633663431223b733a33323a226466396638633464663964616437656432663433623630626564396531393735223b733a33323a223466393062626630386266303565643332303832383938623739666561663061223b733a33323a226265323036386236623831373261646363303930623039356462373232303062223b733a33323a226331366536353763353366316266333331633463396338383364646539636133223b733a33323a223062323730343038393336333438633230623131326466653733636339376333223b733a33323a223231323232323036643362346632336633633633663035353731633631636666223b733a33323a223531623738386537663837333962376135616137393966363638626630366535223b733a33323a226236376435333063386663393134366362386339666330643661326163633538223b733a33323a226635363764373764316531366665303030636537623734326231333132383664223b733a33323a226637333930313064653862386537323435353838363234356330636466333733223b733a33323a223433626564643038383138376538313366633832653461346135316539613663223b733a33323a226663383830666530316266643662323636336430666262626438393138383535223b733a33323a223231356230393130306236373537383664653734383332306338333135623538223b733a33323a223864343335383032653533643061336163633332653965636537313061613538223b733a33323a226437366433343030623361386365616533353864333336313730366539393761223b733a33323a223861663262613031346363326234313039386235353032396133376530633332223b733a33323a223438303866653164313636343865326439656264346261383664323437393930223b733a33323a223461636263383236396566303662636366666565633937656662303334626162223b733a33323a223637316362373865343738326665376230623139653763616335323932666563223b733a33323a226266666366376434383730613834666633623237373365616362663538663332223b733a33323a223537373861646330396333633565336463633830343365316637613532626233223b733a33323a223039666161356664336331323962363839336236346265633564316362376638223b733a33323a226164376131386166356563316133643663343039613236396431383037333133223b733a33323a223564303933363733343164623864383733336565376662333434373030633030223b733a33323a223161393161363136386332303735653935316133366162363537636662343737223b733a33323a226564323764616130653062653637633363623738626339356562303630356662223b733a33323a223931366437663139353261363933336462623632356337353366666635363530223b733a33323a223338626564613736656163656362363664666533353234633131623262653161223b733a33323a223963636231303639353238306139613537383762653237633430623864353030223b733a33323a223431333036636432366637393234393466366263633238323339366637633462223b733a33323a223634343333326261613234633064666334663364336638653334363531323361223b733a33323a223938363032326131636234333064336232356162383937386464363434343938223b733a33323a223661653837343064333135356130386135363039383839333730356232393830223b733a33323a223265346630306565326265633865336365363866316533363230343738396465223b733a33323a223031663632623463383665326136373661613034333566313931326231383736223b733a33323a226166356533306536393432373662623538666562363038326337643266386264223b733a33323a223332323332643965666332373133313537393531316236313962636161366563223b733a33323a223537303932366566383661313933653939343937336463616237636231303634223b733a33323a223963373238326136353433363663386663353063303362643738356363323263223b733a33323a223431363664643762623939356161343165646131336664316337343364396138223b733a33323a226166316637366465343864326630323733323830323137346531663162666263223b733a33323a226466316635636562313834636231313538613461303031633731646362353539223b733a33323a223265643237323835343037373735336634303237373739313538666237333431223b733a33323a226239613934346238343238626363646630643333356461373661663563653936223b733a33323a223936336663666331633036313164363762353730663236616138366232313761223b733a33323a226531636139653266613836383038303435643665376138303162346262626630223b733a33323a223237363439343033656531393965663639333533663335303138376239383633223b733a33323a223734663038313366333964353235323936383463303063346638633866356437223b733a33323a223361323738386362623164373932376364353736386436326239356462653837223b733a33323a223031623039613432303162316235343137323931353538373735323238376130223b733a33323a223930333164613166346238643263616636363238353061323165353837353866223b733a33323a226338363032343965383739633361343138376433323565343661386635626363223b733a33323a223532373264613661346463623236376630363637636564353737663137313339223b733a33323a226134643737326563643638633261393334333362336139363266396530363433223b733a33323a223538643461383934393235383762393932373439616432613935656265613532223b733a33323a223735613638376135373965613362386263356138653831333534633565366338223b733a33323a226637363930306465613461393636386539313034643834326566333161646236223b733a33323a226163323864643663346633646138343838376133613661306236356530353430223b733a33323a223739313263343831326334366536383164633638356562623032313338333732223b733a33323a223432653566393462636461303532336362333431653939653663396138366531223b733a33323a223338613261383463636630636134383764383962393932366666353533353262223b733a33323a223135643230636439383162383731393162623631336336363064333439313738223b733a33323a226165643930376161643237346136666265313737653836663561386633343466223b733a33323a223035363639353636623961623130386563356136616562333834343534306238223b733a33323a223863323337663132623435613337386637623335623332393438303663636265223b733a33323a223166373833633139353238303466366132363562653634343135396437373666223b733a33323a226166323865623430393138353430623335333137646433376362396530643838223b733a33323a223566383435343839663762303062383466343634343965386335613932393635223b733a33323a223734333930373537626662623635643936633765383338666263656136313866223b733a33323a223663656264313339383563356361343734666136376634393532303037366330223b733a33323a226662643362613739376464636336623231356164613164366233656362363464223b733a33323a223564366534323062393463366664386532386631343436656531646161633866223b733a33323a226530393137313139383131633265346432646333646131316137656463646566223b733a33323a223735616161636139653838323964303566666635373766643063653836306161223b733a33323a226233303430303064616661333631613865373636376665646639396234646436223b733a33323a223164626365373062353132376664383039303435363437373532623835356633223b733a33323a223431376437346338633331353832396631623266613637623835326133653839223b733a33323a223631656164313739363338363062383339656432393663666538623635636464223b733a33323a223666663738386538333839376632393539626261613133613330653935376338223b733a33323a226661383639336439353133343530393938326363366464323838613330386234223b733a33323a226138336364616532623639326538323139653832306636626439343634373235223b733a33323a226261613636656166666130323332366566623461666637313937363262306531223b733a33323a226134363139333930633135373837623235633133303738303239653130396538223b733a33323a223833623763366435316136333261396330313461373235393535373736393465223b733a33323a226634633534386132323365663430326630363130333630313532393266383333223b733a33323a226539306139643135383734376261616131623063366633653536343466623731223b733a33323a226563626439643739633633656363333062656333653731336333306462623962223b733a33323a226235323936653832616432323766393432313231326635373761366438303136223b733a33323a223462363038376536623330613266383364653166303638336361623834336639223b733a33323a223831313734383038653661646165336631626533366138333134326230656563223b733a33323a223630313734656238623261663333626632393261336336303836396437393662223b733a33323a223437363538313136316563383131636464653431376631356362316161333134223b733a33323a226664356431343334656332343665316138363932303434633061316365666664223b733a33323a223237386331613639356137626537663139393134383136343266613463316332223b733a33323a223763383638356631643463303634383465656232363833363161326338623535223b733a33323a223761386435653731616264323061646662396438346531393939396233643330223b733a33323a223738333737303966383037643763633435336437663365373435616663626234223b733a33323a223731386136636562656636643539386432373465316638653730353263656437223b733a33323a223738393133636338353365633732353664303064663130376562333764616662223b733a33323a223130373262323039653831303737616139383066376236366436616665323138223b733a33323a223863376438343436613538366661343132643561656332636238396163623261223b733a33323a223835613138333262313762636636323761336165303134366338643366663130223b733a33323a226437383465383539633031616266323961383062626232643335356132626130223b733a33323a223464373863336635626261383230313639633665303036383539316236626163223b733a33323a226466336262636437343565626639623530353732303938633631666362643437223b733a33323a223239313335366634623865663730626337643734383434353139626435656331223b733a33323a226666653662393936646636303334363766326361663534383332316165613436223b733a33323a223964356335643232303762323065346366303961646264626236323662613564223b733a33323a223935653434633064333135303265353665613934623961313139653961343532223b733a33323a226534396634303033316561303830366230363634346133653165346634363930223b733a33323a226539633863646532666537393633393437303330663238306365393033646239223b733a33323a223266326630303839393438663561323462353764396532626430353430333566223b733a33323a223365356132323264316231623461656534383637356264373432646266343833223b733a33323a223535623762646266343862373238646531356463616630646463613735396266223b733a33323a226665303937353635613135623434316135336238633065316634356632666337223b733a33323a223037363263383165393537326566303339646264313839383866363035613566223b733a33323a226132333565373061396132306565353462373962646565353930623438383138223b733a33323a223764633235326264343162393035343062616630663637363661333132323135223b733a33323a226664303039356233643930326639656130623235356232663132613431333831223b733a33323a223332656130616639306530646337313265376332653566623036326163373637223b733a33323a223165373635346632636335636465656430393836633634633331383464353663223b733a33323a223936336566363131386366333062316431383665666361366266303635643130223b733a33323a226531623635323763393363656538383466656234656437343139643436643835223b733a33323a226337383061653738343734333335633531383064643134356133326531353463223b733a33323a226366616434363636353762366664373631643239393033623439316135303337223b733a33323a223036393432346531626633633437373932656539346338343730636664303430223b733a33323a223566313238333734363139333634386365333130616365636537643833373931223b733a33323a226566626539343339666130323038643934366331313035376262646566343365223b733a33323a226465623261393234643064343165343439376639396162306234623462363038223b733a33323a223061633535323762613563656130356665306162383030373562336531323538223b733a33323a223563366138386134383061373061313562376661366662303665366431343730223b733a33323a223538326166633635343533323139363035653530613662656365626366333732223b733a33323a226465343833613831623962353533373664363066313739313330333337643736223b733a33323a226632396638633130346164633436653035346561393463653563633063386437223b7d733a343a2268617368223b733a36353a2266323966386331303461646334366530353465613934636535636330633864372d6465343833613831623962353533373664363066313739313330333337643736223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313637323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31373a7b733a33323a226363333961313735373630636261326261663134333065303137653362313862223b733a33323a223835336631386538326635313337656537393965336132323265626362343763223b733a33323a226564323438646231613136316636316338383534343139366465616633393434223b733a33323a226439383462313766386665333134356333313331663033613438356235323063223b733a33323a223130346361336237353866336162313939303164393732396265306465323937223b733a33323a223137306433313664333831383338663537623235643730363438326535313031223b733a33323a223235346438396139616430656563633639666635363330303633633536326265223b733a33323a223136313838343233366665363436313665333934376535353335303934636435223b733a33323a223432646165353562326164353165353339343732303365366365616134353435223b733a33323a226161333366333265363563366462636364356437663831643165346434303530223b733a33323a226632343935313235323739643937303462326231393534336336313066656630223b733a33323a226166613535383439323939363239323961613865313632346465333231643537223b733a33323a223830303638313938373231633165333331343661306132343531396239663938223b733a33323a223132633264363939613935643264663534663433373739313032333234346437223b733a33323a223533386330363632346336303135373763616435646365356364376431313337223b733a33323a226237313865356266613737346233646537636266396533323438626237333737223b733a33323a223632363730663130636636643238633832396635666631333266386238363562223b733a33323a226162386239343861303438303536656130383630393130343434636665636666223b733a33323a226536623632343432663834353833343439623439346566313530303730613836223b733a33323a223833393831666362306536396337356165646636623035613531663763383835223b733a33323a226162303238343734613934333165616566353465323162613366626538656634223b733a33323a226639643235383464653332636535376433316561316661303431356231303261223b733a33323a226435303337313736343638323235323238303066666538366337613733633965223b733a33323a226630663761343035333565663430636131643533346465343336373965333236223b733a33323a223935326436303261366161656338303966383866386166303535346235333966223b733a33323a223361346463646130666438323164633333383133623535313763363430663533223b733a33323a226131613162623234396234336365333930666131316437323535646336643164223b733a33323a226137353462373333386335383763326432666539613530343539343666383862223b733a33323a226536393833303833386664306435636664353861363664396438376532653035223b733a33323a226162373735373930313361343830653331336238646365313637373834343464223b733a33323a223864633162623135333866666634656338353364623961613364303165303461223b733a33323a226130303966616636626239346136333565336239623666643933386130383061223b733a33323a226632353866333335643866663365626332393164613639326133343437306131223b733a33323a226562633432353461646236666262343034326563396339393831616435633463223b7d733a343a2268617368223b733a36353a2265626334323534616462366662623430343265633963393938316164356334632d6632353866333335643866663365626332393164613639326133343437306131223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a32383437333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3335323a7b733a33323a223564623063616361396632396164303665353865303433336662393339633330223b733a33323a223763393032306632333734363666386162383966653330393564613464663836223b733a33323a223034626539356536316165613563383630396632396164643131353863316339223b733a33323a223135636232383665313961393733303639623238383864653936333734356632223b733a33323a226339386333373831666465393731386130373435393930333233383366383231223b733a33323a226266393336626462356164326563626662383463336235643731393535373533223b733a33323a223163653834333433666431313864316138363337373064326631353263323364223b733a33323a226638393330613766393564643434346166646337393562643932306239643331223b733a33323a223737636432353765346362313239373364396233663636343839386264386564223b733a33323a223738353535336461646465656464366235353135383837663335616130396633223b733a33323a223161336331666332363232386363386561336239626232646564656431666264223b733a33323a223330353730333961643737636461626234323837346436376632373130303666223b733a33323a223336666662623537626664633831376332623530313232343130343039336261223b733a33323a223865343639633932653137636436386639343630656665616634326532383765223b733a33323a223531373262346530313163396366643237646437363835613334643333653833223b733a33323a223166303262643835326662353363356264313039643737393562316262636365223b733a33323a226632323930303832383638663163313835353161386162626430646230353233223b733a33323a223938343634353334383961303833666132656630326639333663646634306539223b733a33323a223663336235353562623438653962666536643033626133633136323933393032223b733a33323a223737643461363636346330363766633038303431653930363562646234636237223b733a33323a226239373666306331353237343239393030626238653634313431303235386363223b733a33323a226364306238636236383966363666626538626664373538663237333433303435223b733a33323a226436653731333063323164643534306537616666343861646264313864643831223b733a33323a223639653137343565623631323036666233393338313637353132316439636630223b733a33323a223537373636663132623838346638313630666635363536373466333237363235223b733a33323a226261343161313866393465646136323663636365646433336366363336333466223b733a33323a226563623162343733613338653562343133306166383830303431313134366431223b733a33323a223936633231366237653537303832303865623132626136666566353232613931223b733a33323a223765323134653234343130376263323461353739343137323734373064376136223b733a33323a226665326338313235623130623461316433353762303839643439303563343538223b733a33323a223039653866373330346437316332303734633436623064656535323538343361223b733a33323a226166656236323462613532383736616139653036373639616235303061613138223b733a33323a223366646666346538653135616464313430363262633736613639616434393166223b733a33323a226539623962616438356333663834343665353838396662366363383337323135223b733a33323a223365393631323865363531393232343134653833336463666364333139663934223b733a33323a223863623965343862653965326632636266333361663933323431393330313866223b733a33323a223033643437636232663364386139376530326330383766366237313336636365223b733a33323a226233383762653536666330666163623031383837626136386431623363343166223b733a33323a226365663433396432313836346531633965393836663533616362303162633661223b733a33323a223531663235366132613163396364353535333865363132643235353365653430223b733a33323a223262333837633234386437343731623861376635383063306637633835346537223b733a33323a223461393465633366376332663530663031393739656661383330613963396639223b733a33323a223463343530333761656365373632613564323533396266346165343735313633223b733a33323a223533393031323032643136336630386634663865633966363138396531663338223b733a33323a223837336233396562323162643434616162386637356665386330643265366166223b733a33323a226630653039383831613234386665383631366361303435303366393564653335223b733a33323a223165666565393036636539656231303963316637326537373461303664623533223b733a33323a223536393962336435613665616538303237356232616366396535663962653437223b733a33323a226333633839316261643330346136343465656363373631633762623439623935223b733a33323a226365353961303662353636613333356234323464653031303663366632393331223b733a33323a226435366434656365326163366136333633386365393033356365313563313561223b733a33323a223863356430326131653137303536353662393637626635613766326439326239223b733a33323a223436303361656135633831383934623232663865643038333936386261336634223b733a33323a223864383333636130363035346661303233303437363663633762303234363161223b733a33323a226264386263636230366365623335613737343431333333396138623237616333223b733a33323a223766386238616339333238353064343136386363356537353236356536663635223b733a33323a223938376338396365656337313262313531346431383536303933313165323264223b733a33323a223633303966366337643533636461306362373230626435343862643661396535223b733a33323a226638646336313933666238623561373864363237383933333064393731396662223b733a33323a223033626333376164323562333237373134356232313138643231303433326461223b733a33323a223430353665393738353263316365373239333866663639653738376165376664223b733a33323a226463386361353239636630333937613761636231336434616331366562326262223b733a33323a223237616266343563386639613163613436613737353866383765633738323465223b733a33323a226361346364646266366537353962303937343065303234393235393831613930223b733a33323a226138303337633365313538316465333730336435356561396133326666656563223b733a33323a226462373733356362356430396565386230333435343239663764366438373863223b733a33323a226135363830653037306636623834333230313035396134336230366134666263223b733a33323a223264303661653166346439323964626330653738343730313866316164656335223b733a33323a223935383730376131633137636633656262393632313663623266663037616439223b733a33323a223162373434626261373761323932393565393664393135356431303361313362223b733a33323a226361656335636131363862316263366532343031353732636163626133633634223b733a33323a223838303966366639663830656465353235386237343363646633663266613830223b733a33323a223165356237343335623664616231646533346238303161393766643032353366223b733a33323a223534383636633231653033346232373037393539373065313066363435313138223b733a33323a223831343566373836386263643063656562383861366437373261633564356637223b733a33323a223464633231636261386235326130363937353635343866313633313530343162223b733a33323a226365616532653063636535636661613134656265353265343766323363336331223b733a33323a226637353036633965333637613239363734346264366336646361386435306431223b733a33323a223861333438303538616464663938303963306432303364326663396235363966223b733a33323a226363346561333062336335643336663261383737643036363035306561326139223b733a33323a223663303163356534373334353330333833323339336635313764316139353065223b733a33323a226462623530633565306532643735373666376230663035343939356632383836223b733a33323a226265643062313433663235393864616634643765633634626435313364303739223b733a33323a223432326432366462323538393164356236306261633737663562323530386539223b733a33323a226363613964393531386639623762663035363161346530343937393361373732223b733a33323a223763323032353530616132346432316630306335643538393333643234323466223b733a33323a223139376232646132313334396565383765356434376462653935386333306537223b733a33323a223634623337393965366638316132393265343462303034613131303932633162223b733a33323a223132353530373566356561333631633065306635393433363630393238666330223b733a33323a223666343736613332313236326361356530616535386566303863636566366133223b733a33323a226633356432643363343762633066616536646630643663663936316561323936223b733a33323a223036373235356435376131666433303938386534353433343565396166346231223b733a33323a223231633934323537356535343930383531333166613931353132633135303765223b733a33323a226461363963613164653831396432353131623862313131373532323564306438223b733a33323a223933313562373933353365343664313064613165613730366336656135666234223b733a33323a223035646535396639333836623265313837333761646239643930653231313335223b733a33323a223866396238373235323865353165663166306264333731326163323832383264223b733a33323a226135326138663230316633646237376364373631333739616433613962326563223b733a33323a223565303536616263656563613263366238363938643864383733333633306665223b733a33323a223131636666396435343931333039646466363265393861373738386265323938223b733a33323a223131343036353835653362323531366436393130613862306262353365383166223b733a33323a223435623263386665636235393866303635653431633566353435633239623737223b733a33323a223133316138336139623561316331616164396337386439663431376234343866223b733a33323a226439393739393662643765626163373466646434666236343132353537326466223b733a33323a226135336333393633356132616530383135343036663361303463383364633966223b733a33323a226438306266373939623735333864326232316663306465303535383962633863223b733a33323a223431383233366135356164303865643239306566306432653465353739353737223b733a33323a226563666234326366663866363034303330613530323036326232393164323438223b733a33323a223365636535623863393430633861636437316333326439643835356534316164223b733a33323a223163633633663864376632353237613937626239373238393437316235613535223b733a33323a223835333664333535393737613938313232393234616664376239316335393663223b733a33323a226633353365616463633762633163363866666561643862626433373734613561223b733a33323a223862316266356239353662353064353864333365653132333438306363313434223b733a33323a226634343665333565656164323734373865633037326336663066656534333764223b733a33323a226463396461353832366536393437623365323832303964393431646439666262223b733a33323a226430336633383136613539666439353431383133313234396433306536363430223b733a33323a223135646137333534306363623831613466646539383564623335343366653337223b733a33323a223938303565333861393562653261653638303566366464393862303363613432223b733a33323a226162633861323063643731643964393737626134623530366362373037666539223b733a33323a226163633230336538303132653534623133623865333761653139633536333835223b733a33323a223737646561633430646164383262613635316438386230383738633165653239223b733a33323a223164663137633463383733353235613837633038343737353331636634363362223b733a33323a223236346132616332333234656232303934363837353861303438653638383735223b733a33323a223266336631313234366533386537653637656363613937323565316433373033223b733a33323a223365383963663638323164363034383532326534303237366330633432303733223b733a33323a223135306266666462306139373339326464623031396130353637646266383263223b733a33323a223863316637303835626235393239633033333262303036366466306565623639223b733a33323a226166646530616336616365393161343631336364666261613462636464646561223b733a33323a223762656432356337336134303439346633633865336163306331633134336563223b733a33323a223236396237346236383565636336663963383632356431316134616464363234223b733a33323a226266613365663639656139333665373836303364336233383738363964326431223b733a33323a226165623133616631633432356330333261356530303863633930383762643439223b733a33323a226362386232303530363666383636333934626438316561653438393130383965223b733a33323a223533363035626639373530663537643332343064333763343531363261363430223b733a33323a226235383236643738633263353830373337643132366532633033663032326363223b733a33323a223266656263636666643731323936623465373361323361613130653664313162223b733a33323a226132653662393166346434626132353866386663643939333863326633653032223b733a33323a223935313332646261313430643663346366633831393962646535633639306262223b733a33323a223464613039643232393137613463316139353064636335653666346563363334223b733a33323a223631346130376331633933633636313031666161393337323066336437333730223b733a33323a223463363934646539616564653661633438353239323936363232383637393632223b733a33323a223238323339316563313832383637636230303062623730343333356436333835223b733a33323a226330383234326435626134363663363562326539326466373534643765616366223b733a33323a226331303261383433336562326231323530653838303937366564663832393433223b733a33323a223963383361633839373331663830383936623039323263306639656234366135223b733a33323a223031393637323931663263393461623131363665626166383265393137633437223b733a33323a226139313533613636663036633432326262303539373763366338663562363432223b733a33323a223061666336373266616261313464306138666263356437376137336466656433223b733a33323a223931393637366138386363643537366639326533653763363938616438643565223b733a33323a226633303437613735336134636632666465323263316565613230656164653962223b733a33323a226464336436623764313739646561366131643861643733303439343865326361223b733a33323a223666316630393734663565636439613166613137613462323037653862626138223b733a33323a223966393362656363306136333939626466303163616334353230636565643166223b733a33323a223265393365623534633366616465383164343161356339623538316462616166223b733a33323a223130643166656232656637643262376530326261383334346233663062323237223b733a33323a226461666132623339616664363862633964663366336565323535376263306139223b733a33323a223234386361383835366533366630343163653763326537393033646133616439223b733a33323a223937663433323561373764653938366264636231303931316237313565363234223b733a33323a223565303638363833306163373364333665306237393961643063643933666131223b733a33323a223331646332636338613539613564333161346263313630633466333130333062223b733a33323a226363643832663330346638613361373665326332366239386161353537313032223b733a33323a223735663035373934313433623136363239376463353437323831633130643631223b733a33323a223762376330323534323239366634616532666636656438396639386164346565223b733a33323a223561646565633538626366373638366665353962383364653761393761346231223b733a33323a223239393932646236383337666266363865363936303631383739653265663733223b733a33323a223031366163613830303130363733643834343139323761613433626562386138223b733a33323a226238343766663263666434393136366533616232386634303461646338316663223b733a33323a226561396631356461366233313232656362656134623261356336633039636365223b733a33323a223533366562363366333038643933646662323931386130623235353965393966223b733a33323a226534353337356163613435623862336139313933626134613765373335386531223b733a33323a226534343562326365666431633737303766333738373964393731356363346331223b733a33323a223631336135613131383730396162346261306361336231303637353538353665223b733a33323a223264373834643764323262346363353539313734333636306261396334643861223b733a33323a223565303434633734366565363765383165393534626461363861303935376430223b733a33323a223864343832633834313865353438343565313837333561373138313963396338223b733a33323a226335333339316464346437303561353666396665616130383338613233383934223b733a33323a223963663461353036323538353138613162623538393164373664623230373765223b733a33323a226637613138336335356362613934366238633062616230353065386239656363223b733a33323a226665633033333539616437656330363331643139656439336162393239363235223b733a33323a223065643333643539353864313833353836316539353831343063353937353163223b733a33323a223532346134323464653537306261383834633932383738346537643063363734223b733a33323a223235626665303638376239346437386131353134303961356333366233313939223b733a33323a223362623030646263396435306662373930353539373532666661353436626132223b733a33323a223436643639636430663566373238636230366437613762653466653636303136223b733a33323a226462643030396634663331323837393832383466626461336136323934633734223b733a33323a226266306263353834633232663534643831356439396336353866666238653233223b733a33323a226135373165653238633462333263663364396631323365353231646135386661223b733a33323a226537363666356130363937373966343237336264343834316436326139643834223b733a33323a226266653430373462396565616362356661616135353637386531313266646234223b733a33323a223331343036613337323239363162373466653731303837623861333538363137223b733a33323a226636343430353837393865333337333334396234626563656130376363373439223b733a33323a223431666330306437643639346631373334643866373361396631643636343239223b733a33323a223036633337383433393937366339373536616136303662373538643536353466223b733a33323a223734653864326632333864646539646432316337336138333136336632353832223b733a33323a223063656532613534613666363432323930656431356234616562306438393132223b733a33323a226462336133393161643166366164666639653739633963353065356138633936223b733a33323a226135323432386435656633343364343961393062653266353032316562346134223b733a33323a223230376335303037313935333865353336653532396666396564363937363262223b733a33323a223162613533323231353331336563616437303962323339643531613931656364223b733a33323a226635356631356565663436316135616163333736343637383431633562623965223b733a33323a226132623766366130383136373565346439383535326362636162653739633961223b733a33323a223834666233623563313038616539373832653866633433306565376430643135223b733a33323a223330323964353963626538386462646536343036383563623166373763666365223b733a33323a226363396131396462363466636263383339643835393734363566663233623837223b733a33323a226662323435663435613630313037306634636661666461333134356239643762223b733a33323a226436336531653332636639666136643631623637633265336137373265633237223b733a33323a223763613638643336353465626437353034643135383663636462373230343139223b733a33323a226264653266333033366664346536643132613736333437386230306365643034223b733a33323a223332313039613031626566353834323039656264353961386363303537396661223b733a33323a223239353566303136663938623866313634386235363166346437383036333965223b733a33323a226139323365316638646633313137353930313234373330303266363237306163223b733a33323a223930626633663762393531663064666337353731383061336638616439623565223b733a33323a223363353630333265643237393331303863633730616361643131366232393632223b733a33323a223861313563616135663136376365616538333836386536306232303036396335223b733a33323a223038616565363931333463643135363163346462373365366139303130653165223b733a33323a223037646161326537373639646562326538643237623632653833616637323762223b733a33323a223130303031393130393039363933373962383437366239333836643537306339223b733a33323a223430663832633965633866643338633332396232383832396234383061653232223b733a33323a223632383733616135613062643863643435623332316139633164653830333530223b733a33323a223532336539653030363939623031396666336238663666663530313366363061223b733a33323a223833303133653639376636313066323235653763666336373935653062346130223b733a33323a223361393062373631666330326431616237646661346663396637613530633961223b733a33323a226434633831633965356663383131313339373165643835656431326330386234223b733a33323a223830373730633332643333353739663062303363363830376566363235636163223b733a33323a226531396137363535633039613663313464663536653836323165333231626530223b733a33323a226463356663316337343266383062623539376265383163393936643762656366223b733a33323a226261363832363563626165666562306130346664643639316436643637353836223b733a33323a226463366237366535363461323635353463343962346437373936356330373630223b733a33323a226237626230313561666662313561643537633865646263376465663363653635223b733a33323a223263353835326162303838333736306263633861323131393534343336633530223b733a33323a223431316439386664613663303864646335656133646630326636653865643966223b733a33323a223863613166363461326466636166613564313832363934626535336635613939223b733a33323a223339646632336562343339616630613933663830623731636466313362626330223b733a33323a223365343661383133303339613334383933376532656163333338323633636136223b733a33323a223232323038363861313936363631386635343332346238366465663334616233223b733a33323a223762636261386330376632323166366338363030636539376431343937376432223b733a33323a223964353535393334323032366562383465333433616231316630353039336636223b733a33323a223764616566643631653838313064643562643032353333646265663062666435223b733a33323a223339383132633062363262656362333561333934376331353132316161333036223b733a33323a226361336437666530363439383033363835316366366133383633353336373162223b733a33323a226439343130666531623965306138353039393661363566626263356134326161223b733a33323a223661333332373938373435366366323665393638656564643362653366643965223b733a33323a223664393930666138633831636439636137613466363266663764333561616433223b733a33323a223136336564616433313933663664396631653435393838656162336430613438223b733a33323a223361306234303031343066316666633630353263623735313466363133396235223b733a33323a223035363936643764356162363237633666363338363833613562343332636133223b733a33323a226461343934353535663939626137343038643836356633353566386661353666223b733a33323a226364643762623037616263616432373066306339393739323030353734353034223b733a33323a226535383733383035353035316264313434616561623034646430313134376164223b733a33323a223831613133333862383061356438353339636337383630383633313939353361223b733a33323a223533346233646665313064303765363636643563623038336666323036623062223b733a33323a226635343230623231613461386434616430313636353463623166323430666631223b733a33323a223961616361366466656334336161636336376465356136383663333739343262223b733a33323a226436356536313831383464313765623032383135373063376339303262333262223b733a33323a223763386533616234353430646537343731333631626633323232653138656465223b733a33323a226234306461613632643634303535333764363566336139306136316337376562223b733a33323a223633636330616632666563333436346333383364333366613938646239393031223b733a33323a226462353532356237313664633430356633376664663337643063633131386531223b733a33323a226638626130653436343836396334303163633837303563633361323733363061223b733a33323a226239333265376530346162633030326463306236636562386533313835643363223b733a33323a226463653638616366623435636135646634323131323731353362336639313132223b733a33323a226435643239633736363766613834383831363838316464313137653434356637223b733a33323a226236653738306561346364663364313366333330316432353562383561633734223b733a33323a223530356464373436333530623434393535663432303366356565636335646337223b733a33323a223964363537393839343266353036343331633231323639376232376235363065223b733a33323a223063326261326336626337623363303339313965656331396230663937336534223b733a33323a223263396539376538386265383531623638396339396636396165363231646439223b733a33323a226331616331353863643237313862636134656361643963303165636666333965223b733a33323a223230313732653962343535336633623430646334306534343838393432623137223b733a33323a223565376365636539353861663764393730613866396238656638313565656364223b733a33323a226439623831353930363430386434343863653338643833666664613231616234223b733a33323a226230626333613363363035383638636162363137633433323531393963643138223b733a33323a223030616361636463393035613239386632663030346438386235343933636466223b733a33323a223931346564666139366335343332356434656239623532653933613538336235223b733a33323a223832396531626638356530306132353262336662303464653433386634636263223b733a33323a223966636131653539393863396439616161356634613033383030666637616535223b733a33323a226634396136613138313032643333323039633134353762613962396331323261223b733a33323a226236386537393437663132623433653062353863623335363732363361613139223b733a33323a223039343731346636383466393863623032313063623135353237623461306562223b733a33323a226666383239326434386633306664366462353737343166613338366133363033223b733a33323a223864613137326430646466363261373562613535313839323236343064663938223b733a33323a226339356536613362666338363331373334323566313563306338313235666362223b733a33323a226331343436326339656363653861303037353566306265646135343731343762223b733a33323a223430306361613032643237666562613536313932663262393935623739306237223b733a33323a223134346434636432643337366563653535353464306165613437633736323135223b733a33323a223132356535363262383236373037316562376438613861356363363562626638223b733a33323a223765346138623133316137386335623634616664383736353462636461646135223b733a33323a226338323530653365616133653933643835613461393363303934666235646532223b733a33323a223337626136653263396166613534383833303238366631323139626166303030223b733a33323a223031386664616231353738313964326631373065313238366436613330626431223b733a33323a223838333537393236396333636161373763313535613038643162363838393266223b733a33323a226263333439323466353735353838613062626164373264383239316635353463223b733a33323a226637366637316434303835386263653764636563653135383534336237613931223b733a33323a223565333533356132613633643661313766306633336462656164383661343837223b733a33323a223562343730316336663932666462613931653335633533323561626362376664223b733a33323a226335313538643135323139353063343937383331643632303434383564363433223b733a33323a226130343735363364353833666433353763323265333132346366626366373535223b733a33323a226661336433353530376636643964313838666335353564393463376439666463223b733a33323a223965313735393665316132383332633364653330336635306332353931366661223b733a33323a223766353633343961313037336339626463323865643366653931636233313863223b733a33323a223736303034616430386332396537643636363837313932396238636266663336223b733a33323a226163303936393363633233346538313639663034663239656163336432356266223b733a33323a226537393262633566656235376238326464633536343930646163623265366135223b733a33323a226130623738653164633965633962383965656662393736613264343964656436223b733a33323a223636653638396366633262303137313862613761663364636635633166653333223b733a33323a223237313135653363313439326139333864313738313161636462653034343561223b733a33323a223135383537363431643733393262653666353433396262316162626232663161223b733a33323a223538393265363730393265336230303463666465336130303833316366653065223b733a33323a223635643637663232656233333464666636653833643239383233626632633866223b733a33323a226339303730353932613031363364633365313631653962353961663765316231223b733a33323a226233616330393138393834313339636133343833653131373439363762306365223b733a33323a223933326232363139613165623661353866346137636439653237636562393038223b733a33323a223335613732363032386530613833363763636530346362613261356232306263223b733a33323a226363353434643635636561656437353633653065663033623465313433646264223b733a33323a226166393235666635653432613430666334393266346238326531386463346130223b733a33323a226135356539356563623861393330633566613636653862353962323031363061223b733a33323a223761373061303838626532383730616339613733613334303238363938633334223b733a33323a226266373335306263316139646564353439323337633039366637393862353434223b733a33323a226139336663666665646134613266646331363335336365366539303137363830223b733a33323a226461656465373032633930653538613736663639386333623662623332623833223b733a33323a226634626438333164346136353030303334316132306439666131333235343739223b733a33323a223438323061636531643562393139613139616236663734353232616466303964223b733a33323a223935613266646432613263313337346535666236343035313164353138636661223b733a33323a226532356264613166623838646432333630633836613636383438323762396639223b733a33323a223130366430323463376633636332373536393333623965333661396139336538223b733a33323a223065346436393165343937643830626237303034306531313530616161376130223b733a33323a223439666335346136653238313034353064643064653232323535393835336336223b733a33323a223037646464623862386663303035633130633362303362313432366238326633223b733a33323a223061363835613830323534616332633232323033633638376561323234323836223b733a33323a226334303665663266333135353834373165306661333630613865646164616664223b733a33323a223063396531376238363237353564313636383264343130636132623665316131223b733a33323a223936353765323936306333666435623863373364656233333033396232373966223b733a33323a223031656463333864333735316435646261353339363435343932353131663464223b733a33323a223633336261353739346437383266333536636561646539646639653962663934223b733a33323a223461383964346430303166336131363562396639323833363065393333333562223b733a33323a226163313332633636323361616238653361386164396461666663353638306234223b733a33323a226465373931666165336531666435653335356165646539333561326230633931223b733a33323a223536653937343134353938326331636436646639623566323636383861346130223b733a33323a223230363232316135343562623033336134383937373939616134353566356132223b733a33323a223766643736313565393962323632643431393739316632646434333766303763223b733a33323a223833326463346530346662373230363233633263326230336366313665383865223b733a33323a226336343339626161643262346434616435353533313132653665643631633538223b733a33323a223030653035383430653932643261306566396162653664636533313536316435223b733a33323a226461326535396266316137633265653334623032613966663563353435396234223b733a33323a226261356235386338626335306235333537636439376233383132653862356439223b733a33323a226239316131393739303539376362343831616433636234643939393735653137223b733a33323a223635626632613539363636303239393238613934643465393134343838396232223b733a33323a226562373235343039383663396138646339326535666461613066373230383630223b733a33323a223939383463336162613436313138643831333238393836363363316137316139223b733a33323a226465333264373766376232376338386235636463353331666563366134363135223b733a33323a226535326463613062366234616363626236306330356634366430363563336334223b733a33323a223266303439663930393134643738376366326636353262323965643332333530223b733a33323a226436336433386234346434363636356562353736383864636163653631393434223b733a33323a223030303230396461653564373230393630383838326162376630643866306332223b733a33323a223235613231636337616430336461313465346334366361626235626337343238223b733a33323a226361323831323236303662373833616231336532333933393630313637336331223b733a33323a223861636337656366383362373065363364666331626530613735356538393536223b733a33323a223534613031373933363036623131373061316636373662396438313762613565223b733a33323a223234386561336630653764633533363935333335366631363334396234653763223b733a33323a226437353764396466333131636563303630646466383764303436343137663762223b733a33323a223638303132383462356534383939393239303664383764646532353336343131223b733a33323a223231303134656139653734393966623665663337373364633666643832646239223b733a33323a223936306461653936393161636138333262656237323635376366366434336538223b733a33323a223266363630636338376537323630656237643161626236396461363039396536223b733a33323a226365366236326161616162653166333165303264366233396632313261666230223b733a33323a223363373933326535386563653562333033326438393137373938303836653334223b733a33323a223432343437333365376636373531376564313861636337623932653062303365223b733a33323a226462313633313630343134396633616634383636366165346633636238636139223b733a33323a223866356465313731353361306161633663393734636664663631653232303261223b733a33323a223266613463356339366337663537613161393263313238373464313764653663223b733a33323a223339313766313033386636636438363963313637663236373239623666303062223b733a33323a226264303663303936396538656665383433323834363531396265633231333636223b733a33323a223661643762663335616432643530393939393634323934306164396631376334223b733a33323a226264306436616338616364653438646338376565656131656336363765636237223b733a33323a223737663563363561303264373764353235656534393131386635313130383961223b733a33323a223332393035386434306131623237633034343033353430636334303063313239223b733a33323a226531613966333661393233336137363836663438303238343130323239663831223b733a33323a223230636530356161396237353362613066356635623161343533333333393437223b733a33323a223566393738383535663963663334323239343030396630633061333635363236223b733a33323a226333366431346435376465633864386665663734393537613033623239356632223b733a33323a223861306235356635653663376639313439373630643331386637323430633137223b733a33323a226262656437376338636663653161653930323139646466396138303532623464223b733a33323a223130366131633862613866396337663364323933363037343862333862653164223b733a33323a223161343338393533303839666339386164666233396232353731356136663961223b733a33323a223534383662623232383963626131656262376630393831333432393537643437223b733a33323a226138346264353635646432356262353835623038656330643932646364386361223b733a33323a226637356561666165376163646463343566333261393765616433343565336532223b733a33323a223066373761383161383063623565346633316263383664393661613337653636223b733a33323a223363333162326338626364396561333664326163633734623033306338363163223b733a33323a223565316633613639383637613836656130386336393261333735353837633665223b733a33323a223336633231366332303162633935363664666234383566383963363761383137223b733a33323a223138666561326339613161623632396565303833363037353332623765636634223b733a33323a223261393361626563323935376439663438393432363761366565613338303264223b733a33323a223065313336316238353163383762396366623336623063343433613635383565223b733a33323a226436643737666638303035383264346237656134643962623530393334393438223b733a33323a223661303465343932393130343039303438653761633831646265356431373239223b733a33323a223437313832646435633565393334373134633136336131313533393232303262223b733a33323a223561336263373335343733653039373331396531306261643038626338623338223b733a33323a226634346430613563623234323031366632643066366663356364336238323263223b733a33323a226138666135306261306566313530306535636232653563393963346539343461223b733a33323a223362386463623539663038356336633232326664633361376636313831616138223b733a33323a223666333632333031336134383538353366376330323635306265366462383365223b733a33323a223561646266623138613432333361326561626135333264363063356538343261223b733a33323a223235623235643361663933336131613164626361333164633331393738313866223b733a33323a223430613363343861633532306562613437316531373131613230313762393466223b733a33323a226634386336303264653562643539383363393134373261633566333434326361223b733a33323a223165333836636331633738613563373132363566303662663761646138303163223b733a33323a223335643733386261326330333735353832303363326339626663333932636464223b733a33323a223462323134353936366230336234303231343337653766656138623265313363223b733a33323a223765363932656434306361333737376434386665633039343862306662333664223b733a33323a223666636138326339353033373164343531636363626135376133613432396161223b733a33323a223132346365333365373636353232613337636564313565386361353035363630223b733a33323a223063646134653734306262626466306535343331376462306664623464326438223b733a33323a223334323861363833643934653031346631633734386639636234323361353230223b733a33323a223663643630343662386137376332643866323434393264613661633736633763223b733a33323a226361373534616363623031323933663534336430386362633339623935376433223b733a33323a223634303636376463366439303239353731653661623037343939363138353166223b733a33323a223134376432643639313930353035333935633238353530633837333530343136223b733a33323a223730323136343961313866383839393265656130646439656234346136316431223b733a33323a223039646532626330633139303163643131333533643134626163386337373631223b733a33323a223339386236393831343238653666373666636333613139386233613561353738223b733a33323a226436613339633236643063353762303136656138643966386665366636363233223b733a33323a223365383734343230373463313034646639346561653636636165633935393334223b733a33323a223239333463386536643439633736663239623934633935353961626637313135223b733a33323a223261343936626335616338356334656436373761373137313961653561373130223b733a33323a226562373763666139356264313239633736313439373963326534666436323966223b733a33323a223133666432656339636538353233656363643262363965643939366530356535223b733a33323a223538386161616266333239633037623762343861313133663034636461323930223b733a33323a223862633132613163386365373066353461333337393265613865633330333238223b733a33323a226631353535326465643536316163663037626433633263366136396439666139223b733a33323a226434363938393362363861623065373965333962393837333538323832623430223b733a33323a223439386539313830306237333834313461333061633534333539326665313031223b733a33323a223463323132386532633362613134653035376462373338303932633135663961223b733a33323a223337653930613533346330616366663363383538643638653230303431333261223b733a33323a223733623831653737666163323862326334373039326339366265383637333937223b733a33323a223338346230643364393731316231306432633364663162396663653732393835223b733a33323a226366373331306562646265303037643761323238383533376465393931306365223b733a33323a223361376630646534376539323562303366346633633537646464323362346364223b733a33323a226565636663326231316465636133333863646139313135323731336231666333223b733a33323a226665633663333438616638343632306561333564326436393266343766373632223b733a33323a226631386562616366623934356138316639373661313638313961646530303139223b733a33323a223035623238353238366233636237383765633334663263386266643934636536223b733a33323a223136623663396233653130616435306131323261346137633039646462393935223b733a33323a226365663332373834643737656162663062636336666538393831353364303233223b733a33323a226666356234636232366232333731353662393533333035343265373339633235223b733a33323a226261323438383230623736313961313138623563633038306162656539663731223b733a33323a223238323265323236373434386662373234343831356434663634313962386435223b733a33323a226339623536323762336434366138636531636132303131353938366338396362223b733a33323a223161626261663836316262303064646436663831323937316536663636363934223b733a33323a223132643966303338316137313832623461323037303334666532363839613462223b733a33323a223238386263656561316532313437336539306166613665656537316235323664223b733a33323a223838396337393863346461316438313763376166353136376264646462343665223b733a33323a223432303766316166666136626261666462353337613966323963333131646530223b733a33323a226662626266653734666365623736646132323063366635616435393136366339223b733a33323a226661323331303637363163326438313565666632643338656461646134613737223b733a33323a223130356265393936333238373635613862666639313162396434393932343561223b733a33323a223432363466616562623735613463633735346134306332646462643663353833223b733a33323a223238643036633436336238653438333431623636336534646634666165643035223b733a33323a223635643732643064633238373938653362303766653230333362383761373034223b733a33323a223437626238383464303632613864303337643636663534313564616161303132223b733a33323a223831653630633631323130343934663438323234316438343938336530383661223b733a33323a226235356432346264343430663733653330363262643031323934373265663535223b733a33323a223330346163326565373030306434636136346637343063303162653939303535223b733a33323a223232306136643662646531356666663763393033386262633935353738326331223b733a33323a226263353034633839623037613361623538303737663531313035336164303336223b733a33323a223630666165356333316132393264323434653432303862386137613931336165223b733a33323a223739653339303530393131393730343335323330353139376233643631373731223b733a33323a223261356562386462336230386266336331306366393531356661613834613339223b733a33323a223665663362386261633261646564623363393739363164306566353438376361223b733a33323a223336646630383861346565363434373762336236636362646632663431326231223b733a33323a223466633033343933616338313238313564393939396337633233333332363235223b733a33323a226538626431623030326330633630306365643231393532653038613134376130223b733a33323a226338306363636537653663353531623430386165343238376632373364653064223b733a33323a226464313862656664646164396231326333333239353662333836356236393233223b733a33323a223932383764626361396363343033326339633937353965633136386565326334223b733a33323a223736653736346663376639376331613138373436666639643735653462653465223b733a33323a223736616364623630643935643266613332623865323764373835653031633062223b733a33323a223764386261613332393435623562363135353136636263383264316164383538223b733a33323a226433633834633331393232343732353437633366356261393230326566363339223b733a33323a223163303063363438376437383931373936656530636163326436666533626564223b733a33323a223464313630313063626264623730653930643038313264306364303262366534223b733a33323a223166313764626636343566663934316632393162633762363339383462323863223b733a33323a226664313533323337376238666330396438356535666461306338663737373363223b733a33323a223666306336303065323837376130333364366638656165336264333933376639223b733a33323a223332313161646263343466643734626366366330623237663162313866626665223b733a33323a223263393135306130336134623065383738316164303637376265636132376632223b733a33323a226239366665396231303933373430663638313333393237373639343366383162223b733a33323a223165663532623730343439646530373039616266396139616135653431636236223b733a33323a226165343632396365353564653431306133666531653937363866356263376139223b733a33323a223364353665343938333435316231366566643466313166303531653935646663223b733a33323a223666323832373337306463643232383339343133323364326633396539343531223b733a33323a223463313464353038636563326162333038316130326331386339383365303166223b733a33323a226436326538386364386565306437393233643431636463373033373730643564223b733a33323a223265383531656138623562303661643036326361316664343531303037373961223b733a33323a223963626234376564653734383034636639623532393935303831343433613461223b733a33323a226132303362616666653438653636653764353336386131643030636330393933223b733a33323a223332366539646237653162353533373839306239323736343465383934346530223b733a33323a226232323932653236363064306534663463643137633939653266643133626362223b733a33323a226331396266333561386363643264303132646264306662343239323334663464223b733a33323a223362656233353765333066643361633263656136303633633931623733616339223b733a33323a226339353535356239636166346633643764633336656538303833323136336134223b733a33323a226661656265633535393737653961363262306133356162666462626430313138223b733a33323a223964396261353864643830386330393435386231376338343830633632616536223b733a33323a226539316332653032613433653566613230373466623336363862656434303861223b733a33323a223935303937363038336232653036613431316236333865383162613834623762223b733a33323a223336656363616439613233383937386630666531313761643962656361316364223b733a33323a223334633632643463616365656165363730373064646334396363663238633238223b733a33323a223963393764353936613061356231666236323363653562313662363738323762223b733a33323a223861313834613733636430646234666162316434326437316663393131313266223b733a33323a223439396234636663663861613764636638623565663935646466343134366663223b733a33323a226238306664343138636234373939666233313465346163313534393638656531223b733a33323a223431386135393239383835613732633661646363303962666361326666353038223b733a33323a223334353239623838623634343039643039393963366634356338343637653439223b733a33323a223338393336623863663961303631666533383266303933666432623738666539223b733a33323a223866616436633532396334663033346136386132336539343431666633373030223b733a33323a223338303238616436303033376564646335616631353064666535363236346263223b733a33323a223239393333613565636466353035303734336337653566306165656665363530223b733a33323a223339386333333331636531393437343565353135326139636563316134643063223b733a33323a223562646163386431383338383033396234663362333861633830326536646139223b733a33323a223764646533346636663435343233353137306666376633306639636261656130223b733a33323a223830616366306435653365336337333464386134643634346239653934323733223b733a33323a223531656630376665336435313462663838663561326336316232333237343061223b733a33323a223763356530643737376664303339393537303332663130616464313062613763223b733a33323a223433616133653634383265356333666162343238643031323231356334633334223b733a33323a223766313339643930383166656539373961663466393130393263346539343035223b733a33323a223337663833613134363166343364393430373637646636363235306661656663223b733a33323a226136316133306637666139623436386536373634623035613464666162383962223b733a33323a223465333831313232313136346534613031366462616566396566306466336631223b733a33323a226164643462383464333764653730626537316466646131613464326233646666223b733a33323a223063626530663234386430343761326562613732333130623336303531663838223b733a33323a223333636665626261396563326139383636313633613064303837643162326135223b733a33323a223139363434303865663966373730363431376230393731303161343036373638223b733a33323a226430336138393932343562633637346138363130323936316639396331643538223b733a33323a223733346338333830376136306261623935643635656664616462373263353931223b733a33323a223462653561376461653663343130373763636637313839366439313866316336223b733a33323a223237306564373635353661396464306434376434646631656538313466306463223b733a33323a223938633764613231386166643965616430633737396463666534363335393563223b733a33323a223931383636626433396462393661653037303836386166386234326539356566223b733a33323a223565316662303662313439666165663034613063323735323837633939646237223b733a33323a223937653465666436633730646236316165643135366632636564376232646539223b733a33323a223363616431303531343633373066653633663535386662313366613463616535223b733a33323a223364336230383331343639383162616264653866653264346635303734316430223b733a33323a223535336132636130306166643962333966313331356433333134623432633732223b733a33323a226165613337636566633465626637376465323763373161626664363830636336223b733a33323a226434373637633764306538383562616564343139326336623238643463336331223b733a33323a223332313437653030313538363739316335383531396432623761376663343464223b733a33323a223438366634343462343030616162653833373834663234313862333331616635223b733a33323a223237326265393463386238376234366265646230326435623039663564303565223b733a33323a226164386434373438356639313533643930666232313465366536623836303435223b733a33323a226130326161326536316233393339626635373231636134623161376262343366223b733a33323a226137323862393937333561363731633063353962626235306563353733353033223b733a33323a226530376532613262636337346466303036303638373236303165393039313738223b733a33323a223439626635383464356436386235663635316632623661333237373538383135223b733a33323a226666626262313731343937656366363138303030373032396635616161653232223b733a33323a226236396665363938666539306639393162383661656339343831633961333635223b733a33323a223935376335613265306366363637303736663162393038623265643236623662223b733a33323a223238396133323738376164323935396137396233363933316533306632343764223b733a33323a223238316235356432626265613037323164343839613430663161313265666533223b733a33323a223061636666306161396466323137313061646236623835666335653063613536223b733a33323a223262316665633739626463646566613739633361366434396636356233376634223b733a33323a226461343632393263393761376338376661636265373839306666636464613636223b733a33323a223337386231613437306531363164303437663734373730386365333263346433223b733a33323a226334323537373862323764636134396133386136313634623464363838353333223b733a33323a223532323038656435393465626236366561356161636130383462613631366534223b733a33323a223363363539323539363661363731633861373063623766386138323065343938223b733a33323a223263353833623038353364323464356636363234666434386464666639303665223b733a33323a226431613837383463373536346563613162313633373032343139613433306539223b733a33323a223435626664316562633561373539636138616338353332326337376432303334223b733a33323a223837626335373734663465653233643138386531393936306365336365383131223b733a33323a226361666639343963393534303331343533663637393962366561373730663939223b733a33323a226138343839336336336139353637376232303634396134636232306264393562223b733a33323a226131343634353466393235303834626364313130636531323937323530356662223b733a33323a226531386234373936303932316437363831303535303937643035373135383766223b733a33323a226532386631666464373161313239346637343839643737353164306362386663223b733a33323a223435373534326636363339623330333765373835613930616637346535613739223b733a33323a223565336136376332623836326434633534616438396661316538396264646230223b733a33323a226337323234313535313561383536393263646533353936343532633461373466223b733a33323a223434666233336437346366383538366533326233626164396237373134636164223b733a33323a223034346438613337623839363839393065343965366331303261326563393832223b733a33323a226432656535636535386363316433373265396536313339353931663261343735223b733a33323a226538356135353964333665653635386532396565636334333832343163623336223b733a33323a226234623861646235343838643838326435323033623361666534653235363738223b733a33323a226463323131383938653630313861323066316139653132336661613166633335223b733a33323a226133616437626130376162663663326461346563386534316539303436313763223b733a33323a223439373635613631383130396630626236376437343338303830303339373034223b733a33323a223132386261373539623362316330376436353065346266633136623132396161223b733a33323a226465383365363962363737656666343266643164303733616533346261666463223b733a33323a223438333632373862643736663766306630363037663264343933366531303530223b733a33323a223261613464343639393839623732666361336339343664656266306238633239223b733a33323a223961616164316161316234396163366661343733613764356235343064643861223b733a33323a226464643632633836353865363530643932643930636366303834323161626231223b733a33323a226330343131363264313133373031356564623533306462346638613637666165223b733a33323a223139636536383563306362393830636565393539363736623866316130363933223b733a33323a223339636633393564326261663038303432643462383166663561663361353861223b733a33323a223265396561376534613430396233613861636361313439663832646463653430223b733a33323a223430333634636664643233653432356635396165643036616130656439323765223b733a33323a223365386630663935323364303363643062323231653038616535633839346335223b733a33323a226436303663626139333439313636333133653031623661616435333735656361223b733a33323a223133373732656461623964376264666237613131333334393866316239356161223b733a33323a223138363861626232343463663562656633376438663631636366653464356165223b733a33323a223536363232626232616639373861306230613932356432303163666265353966223b733a33323a223231356564363332353137663565643035663164376136316561316439643266223b733a33323a223631313063396363373463373665363965643432633332333637643564333863223b733a33323a223561663338383433666463313662633036353233663232343132386230303831223b733a33323a223737313036613632363865616433663362653537643630653061303563656364223b733a33323a223564303562383262303737383663323931633337393064656232323836343562223b733a33323a223337666664653465623931393364393265613639643337383637643365343035223b733a33323a223466383662373963623862376264366463623834346466326563326464383539223b733a33323a226565656338306562636137336333346561383063396639636366363730646134223b733a33323a223933656464383736346665306537623333626139316161616434623535363232223b733a33323a226564666236326163343061366132316430346332656666633362333833363161223b733a33323a223136633234313437666434323630353864316236346266356131663464663236223b733a33323a226565663939363933306430306463396437623636356339323562383630346238223b733a33323a226366323762353234626236623134346439376232363535343639353033373031223b733a33323a223137373964326564663265343830313036373332343364666636303332393831223b733a33323a223039663730303534363035366564333566376262396162633764373163303364223b733a33323a223333343237373936343165353532643162343630336338323964396530363666223b733a33323a223235616266326539613333343238313434383638306166313666323061363661223b733a33323a226132353265373939613134323432383566363464386336323866636236333364223b733a33323a226337353239613065393631636665383336383462353365386364363761353039223b733a33323a226430646336623237313135616136313438333031616337353335306334343635223b733a33323a223864333461663464386162383131393062616261643666633734376331643031223b733a33323a226536653833363462363835303364333036613038393161623566346637316461223b733a33323a223835343439373833326232643835363761653364316665363335663539613935223b733a33323a223962366339343936396264333531613763326436623632323963343766633864223b733a33323a223463326161363537326464386332623936376364653331333032646661353064223b733a33323a226663343162346661643536643237376566663634636231643835623535663432223b733a33323a223030636336653163353032633462303564343161306232363063623563653530223b733a33323a223331643733363731613331373837393665653366366661373732353964656634223b733a33323a226262373664363435663930393666666434623532633166636235353330336365223b733a33323a223436373939396534343738373430663861353863666261646261316563303066223b733a33323a226330373865653632653535386338626465346231343465643564633532616136223b733a33323a223666386134646430666230333663656631646431323833386131636338656265223b733a33323a223765303437383165613037376232386634643633343832343738646538633863223b733a33323a226465323035663837303832363561643936303731383336333938623964643831223b733a33323a223431313232616266353065303438653662616130396639336164303237393661223b733a33323a226364363062303565383862633432626665333532353763366333373766353139223b733a33323a226635353733663337333134326138633066623537613366363964326365343863223b733a33323a223638343331646431383034326263383136633666306565613633626366643933223b733a33323a223532633665353333376537356266383138636363646161623866326663663566223b733a33323a223335656330376530303430393637613764313536666335303939313336333261223b733a33323a223465336566346538613665646232356261626339326538666466623061653834223b733a33323a223837633739326366636365373965623938386337393137383236383639376131223b733a33323a226661383835663537656662396165316666326535353538373433383363663561223b733a33323a226164336136633334373535323238313639386164643737363262386338626564223b733a33323a226237333162663034363437323365663230313239656234303935383631666332223b733a33323a223734613466376534333364666638623866643639303466323436613431393365223b733a33323a223838646136643763396334373135643038373063613931356561323338333763223b733a33323a223565393264373738366561323632626435303363363666373138623063393965223b733a33323a223431373865373263356431393464376239386563613036626434363763383538223b733a33323a223437366566346133323063376337306165633561313165373131323031653066223b733a33323a226336646530303638393130393962393662613036626434643735336666316164223b733a33323a223934343961393664356561383337653063393930376231383462653939666165223b733a33323a223032303139643938366366313162363764363861613564353666333831313637223b733a33323a226234643232626465643163616438333266346362336233663139613039363563223b733a33323a226333343463643235623864376164653261313635316132323738353630643735223b733a33323a223231303961323438336561373033373833613261316266383365623261613039223b733a33323a226462646133353836646339313233626666363665316564303566393432343264223b733a33323a223366333137356564636230366332373139653662306639663233616539666365223b733a33323a223735316361636633656433623835313162626364386232333839363564346430223b733a33323a226239353162633265366266626138386237633137633235626663666431326339223b733a33323a223736373662373737336564616534373133653861663337653064393963643364223b733a33323a223235623464666337663938306566386266643439663766623330393432323132223b733a33323a223030333836636432623264316231653064326236306130396139323736636631223b733a33323a223634313632373337313337663839343332616238373833306233363631666139223b733a33323a223936393633373335353265316465643431303032393131626538633635373934223b733a33323a226538356163323138626430363637386636643265656564643566626538373632223b733a33323a223138386633613936346335303530666164316636653638636437353233646639223b733a33323a226664396165363937633330666337366662343834313733663337646531623835223b733a33323a223862356639353031633735353838613866636132323766363562376638656565223b733a33323a223232376438343736616330383466306161623930653631663131646537633939223b733a33323a223062623837353233613034666662343966326334333339643566633634383333223b733a33323a223133613635353863303131386633663137623036633937356535643163393737223b733a33323a223861313739623533616231393236363138366235356437303831343263663533223b733a33323a223035366334353066613037386666356530613731323631623733623432366565223b733a33323a223136643766386439306263323139653530303338396366643861633531653166223b733a33323a223239323834363063656563306366313232306561343431666664643236396136223b733a33323a223363323438323364303030396239303330656337336438656666323333303936223b733a33323a223466386262343139646666626165336161373261346434356631666632363031223b733a33323a223763323864396539373436343038393834303935376465346663643764366462223b733a33323a223166393138626534643266663238353636383131383462663436356439323839223b733a33323a223438353438363635636430386162346239386232316265306332383764666166223b733a33323a223937393365313636613538613534346139393432303837623661366536363235223b733a33323a226230323332363861656266343961313330616161343133643461316439353330223b733a33323a223333303864326339363738346638633661383530653761373933623435303430223b733a33323a223061353930343738353239646133653162346434363866313735343132363531223b733a33323a223563656133646164343435326235633838363566373766663231396563663061223b733a33323a223233653037313530303830313534376661313232386365636435346361663261223b733a33323a223330376463653962616166363234383336633339376565316563666439623438223b733a33323a223230313438383136666566613038303530653837303064663538656566373862223b733a33323a223630326361653362636362613061356339323031653836363731363931366334223b733a33323a226263623962373438626335366362343664356639306263663634633539623432223b733a33323a223962633432323034383766323265383634333562626539353765633962333064223b733a33323a226563623034363261626231383264313565613065653966643038313735383930223b733a33323a223239653365346363316338343239343063626639366661633237363162336238223b733a33323a223137616466316237383032663766336165333433396438383036363331323561223b733a33323a223531623566396161623965386162656230616236356565346131656532623262223b733a33323a223132633039343564643031383431396136643731356232623765646532646332223b733a33323a223736656163323530363534383036636135303762343162653339323131623665223b733a33323a223238613961333763366461396561613534663166303762333333303761663930223b733a33323a223831353564343632333265656232323465343534613630333435643365373365223b733a33323a223865333464303761373033303963623333313238353231656135643564343634223b733a33323a223739313364343461373361663737393837323937353939396537353339383832223b733a33323a223034643032313435646166633234326362636632616666323761393937616461223b7d733a343a2268617368223b733a36353a2230346430323134356461666332343263626366326166663237613939376164612d3739313364343461373361663737393837323937353939396537353339383832223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313931323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32303a7b733a33323a223165336664666435666338326565663130303538626135316534306339393838223b733a33323a226465306535643862656536386336316364386430333931626339386662623364223b733a33323a223130353532396163623430383638316136363339393735633535313462306134223b733a33323a223731303136396238346263303434326363343966313830613762363663633835223b733a33323a226438363238336161393163643135636438663032616639646133646464636332223b733a33323a223463633765313631643635336366386366656639346137303662313531303637223b733a33323a223831623362363634316362346466633563396364663533313732336561653435223b733a33323a223666316637303366646233333562636539383036303561393761346238326265223b733a33323a226639636533633634656334636231343561663434633336613835343865316331223b733a33323a223865333436306638303463373237633162383735663638313963313765636265223b733a33323a226632373163343230343261313562653466623764626361333164643864623633223b733a33323a226235633563663265303266303365313465616135383661616235376364373762223b733a33323a223831393963666236656437633764646439633436386537376162316233336366223b733a33323a223965316364663135326462313030626433656635323436353437323335333333223b733a33323a226536303539323534663864656539643234306431353161653465356530316664223b733a33323a223165316335356163616262663735333130353561333431383837616437336538223b733a33323a226234626531336434336232633734336135383537623363323134653164346235223b733a33323a226330373137633234393434626563653536653164333961383163316233353238223b733a33323a223534356265393739303266643262643034393062366131333461343639363235223b733a33323a226232313361303765663635396563346539356233383333623934363666353361223b733a33323a223537316233366166333030306163666536313333313865343630626466343262223b733a33323a226137636531333236666633393463613930303233333934626438383236323562223b733a33323a223866363563656564656663303932633330666238353663323435653966353931223b733a33323a223437356265646263663838393464613535653235653366353734363561323336223b733a33323a226632313334323262376562636436323162663830346264316130663037386434223b733a33323a223430373837663931316261626631383932333162323636633462353939316137223b733a33323a226162666139633139323439393630346133353962393634623035613061316635223b733a33323a226538353239396364613963376638356531653633373337623636623631376530223b733a33323a223037333935396333643665373237343564626336333565633234356135396439223b733a33323a223431323533373835333937663766323033363131633639313633373166316133223b733a33323a223066383630616661303163343163326336386133386539643061396637353366223b733a33323a223962633138643466666532316335323230386133656634363830623131623561223b733a33323a226563313937623065666362396366333132356532623339663632336165386531223b733a33323a223536343964383061653130633666386664376333343861353261356338633762223b733a33323a226435663231623962373932356562363966373738316663356538656238323536223b733a33323a226331613032373563323834623836623461333233393732643838653030383631223b733a33323a226435373436323834383763656132333832316534663361666339373166666634223b733a33323a223535303931653339646333633665383332653664323039616137626561643133223b733a33323a223163343736383239313037366430663134633432663366646634383861386330223b733a33323a223561636362303766646330396639613561383130646533326163653266623566223b7d733a343a2268617368223b733a36353a2235616363623037666463303966396135613831306465333261636532666235662d3163343736383239313037366430663134633432663366646634383861386330223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226638333539633132323436356534306338383833633766393862646633376337223b733a33323a223261653663656363326532653962613139313134623166356664653931653762223b7d733a343a2268617368223b733a36353a2232616536636563633265326539626131393131346231663566646539316537622d6638333539633132323436356534306338383833633766393862646633376337223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a353433323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a36343a7b733a33323a223930313535643837356136643939326537313764616534366233336266376564223b733a33323a223164626139376366373739303936333133653930653134396134353234333862223b733a33323a226535376265383833366166376233323731356431303530623539346239303736223b733a33323a223531636664663536656137333465383438343561336535333939376362373564223b733a33323a226535353234333861396430393538353636653135653339353033323362326262223b733a33323a226563633233656465666538393434316161366334623435643266366562376231223b733a33323a223030646330316466666530346566333432363266386239313064316239616663223b733a33323a226466316165646433366336643636663339336131336535306136666338633831223b733a33323a223434353738636163346163376562336566306161366535383439363665656564223b733a33323a223263643235373062636237343133343638363032333632613963646663396430223b733a33323a226332616666343761623137303830363733383836346366646532336365616162223b733a33323a226333313264303133353066383962366237363163396636633534653433306232223b733a33323a223138363930643538623064306562376639333333326633353032303537343039223b733a33323a223538373331386165353533356333643362386238653133306261323932306631223b733a33323a223535663861353761373965623563353935626234343062633863306531323231223b733a33323a226637626466316361653066663165656266643133383165386630636137653334223b733a33323a223734613531313737396635383731313339623861303338316363613637323962223b733a33323a223136323364343733633830616361343031613161346463636137336437336332223b733a33323a223037666262373733656466303935316166306232313339396630633431666133223b733a33323a226438333966353631373335323961356466356561323931303834353331356531223b733a33323a223965373733373365663666626436396165343837346230333439613539363933223b733a33323a223664323832326264346237393961323736326366373165313435356363323737223b733a33323a223636643634653166383239366563653932663965346634646131383761373334223b733a33323a223036613938323736336236326362626665363335613438353737353533343362223b733a33323a223462356566386464303166323035643665346430333430336265376664303965223b733a33323a223139326365646637316366663339363861363930666238633837313735353239223b733a33323a226363353965386366643666626130346230383630386461383835623431633436223b733a33323a226131666234363537326433633934383938383531346333353662313330393263223b733a33323a223736393932396661346138316435623762316437306633633137323233633537223b733a33323a226133373263653039623538306561343365626564303635313965376437623432223b733a33323a223630333230326637366436393235323837626564386533666466633738343530223b733a33323a223830346562633238623862666439373362346431376161363362366465613466223b733a33323a226334393136366431366135616332643733383761353337343534323333363933223b733a33323a223635633364376164323662626563663166316164316164626165623337393033223b733a33323a223432626339373262316439356337613132653839636335623137343133623236223b733a33323a223261376333363436353737323466653536613766353231616265353562663630223b733a33323a223337336262383464303333653730313532313961613133353133383233363735223b733a33323a223266396537333665366633383332353532653632333836633632366533383331223b733a33323a226438313963633332623264613731353833346336663433303234623565636263223b733a33323a223063656133363066333833636238623063346463623364653662376637616633223b733a33323a223730366562623130383032366562393762613864336130663637616631323261223b733a33323a226361623631353332366437653230373439376535656636666334646333646264223b733a33323a226330633338343039353934383739646332393536663762303437313036346461223b733a33323a223036633361326462313739316131363038336536313039656333313431393163223b733a33323a226237613763663962663939373733653439366539633332633137666563636439223b733a33323a223433643132393939303535313364343133356539346263396663393863626535223b733a33323a223733383330646365303763346564383761346261316639653862656565636461223b733a33323a226138373534363965356462663437363738633131613765316566396163396462223b733a33323a226366353333386531613561353131306134343133316436376435326238666633223b733a33323a223532353436666630383163383138626239376335613164613634663264636564223b733a33323a223266313134363530623738663331396130376132313361666466633831636632223b733a33323a223561653263663039393838366536616539666135343038333436306362333533223b733a33323a223563336361303165303035366461623764383566323537373462366461386233223b733a33323a223431346165323466396164656233363032636264636133633365663836316639223b733a33323a223465343565363437366138633361663030613436363866343139613631396566223b733a33323a223331653366313037623138376466353033306530343034383235663839356166223b733a33323a226131653863396339376430663666633132643432656433373634306238646662223b733a33323a223837633837633963626635633037393134666232366435616239353161373730223b733a33323a223136313664623835626231343437633466653635333432616661303563623036223b733a33323a226566646537366337383332653038663466336665336133353864633930366635223b733a33323a226631666264616563616535636663663339643962346166306561396461613966223b733a33323a226231346464323939363663666261636165303065383638643232656262336236223b733a33323a226232333232626633646137653431356161366663336431396634333436313832223b733a33323a223237636235323034613732393339323539633436396634636464623532336233223b733a33323a226536343634346133326537313639316637616362646338613638343937656364223b733a33323a226138356232326637363862336632376464396165356463383263343166643361223b733a33323a223534636336373139393834386137656262616163353862313765386262363061223b733a33323a223661633633383062653730633534313661636362356531333731383032393935223b733a33323a226164363864643366633738323237363239376466313331633961356233353535223b733a33323a226163343365333135386136333730613761316437613937313562386339313539223b733a33323a223865363135363336326366666561633239306633396334643635366338613833223b733a33323a223764623262376566323535383763316631656131643262316434373632303334223b733a33323a226533626264636166346162383665326536636464393661386261356662643531223b733a33323a223632323830616330656139616331356132616561376134303436646366623835223b733a33323a223839656263313732353864303263663766613834383637373333326333313137223b733a33323a226263326431313033623932613639626565343331343831633563396662336238223b733a33323a226266636365663363336363353163323031663064653764646436393730303036223b733a33323a223563653939376436616435623834643465386662346232383362393235333862223b733a33323a223138333266323464333436306165343665383463653661383030363432356132223b733a33323a226665313139316561393763313861333362623030373063353730333739653430223b733a33323a226266373135663735666266313063643934336134333535363636376234376662223b733a33323a223966373836653330333966396561663764313132613135323631646534343539223b733a33323a226261316336336562376331653265633339626430306238623530613264363933223b733a33323a223864633266386564383937326364333636373433633532326230616537623234223b733a33323a223063303366363036386566613461316132646532303931656363373366326262223b733a33323a226638306137363764633732346137353637653239356535643062343063666632223b733a33323a223437353936613538646166646631346633653733386136323262623830376361223b733a33323a223865653861333839613839353935646361363636316664656437626330383135223b733a33323a223637376339396462643433353734656138646539376238333135623730663130223b733a33323a226161386463643766396436313931306430373637653039663636343166616630223b733a33323a226261643632623366313131613136393264333863366563393761643739323533223b733a33323a223034346364363131346333376333663166636132336432356163626666653734223b733a33323a226630363439373137373130323165656239383339666561343236346163656561223b733a33323a226664366161616239313565646235323934626562653133643365386566366666223b733a33323a226261613362333966663066356430313766313862613761343333323161653334223b733a33323a223864376436663136303263623739636363653438623934306265383965333261223b733a33323a223161666339633735316530376634623538326131396161656463373562373666223b733a33323a223864633464616538643332396535356234666264363739343631363136376331223b733a33323a223961373635636163386664346366306465323639343331313831646638323464223b733a33323a223662343865376561393463636464306262623239353861633335306364316635223b733a33323a226538336662366565616634636564383737633362616537323331653330346435223b733a33323a223333393839633235666134393565643731616532343638303137353636316438223b733a33323a223431636536353061353439326533393761306362303831343366646364633632223b733a33323a223539623537633935653466383533343764633732363635343837376363646434223b733a33323a226566323536356662623762633366636639646562343562386130646132643536223b733a33323a223265636563333636666138303661653733376466633134393738656163653261223b733a33323a226565336464333761396638636232653664383037366361366630613265366262223b733a33323a223830333166333666653435633234643962613836373237303938353461346131223b733a33323a223831306262386630623431656265396336326237643035656163613666616562223b733a33323a223833396165646264663231636561393063616164613961623535303132346131223b733a33323a223661613064616463666265656537643864636264303537336161303362383465223b733a33323a223434303935343264653130623237383666303762633736346130373330326533223b733a33323a226265633361626466383564646432383330333962626235613635653034386164223b733a33323a226430383634396534643434353234356462646237326531323932313132343766223b733a33323a223239336339363037666131613134316333393062353535343936616531373134223b733a33323a223264303761393137303635653262313934323065333933333538656164626132223b733a33323a223235393536373238373737333066656639313834383131633637616633363436223b733a33323a223139666164346665393939323233656662623736626661643739643937393461223b733a33323a223930323039343337633135373234633465386137313239643639653665353732223b733a33323a226436363562313662613630373865343536663465316566373631343537366131223b733a33323a223638616665646662353231643434373365323630303731383265613538316332223b733a33323a226462393166616338636135666665386132353933316639643739313964663462223b733a33323a226438336365333535323262353635386230383430343032626535373066363561223b733a33323a226639643465316232333765343263353435333565323430313133666161653733223b733a33323a226130316137663831666530643735636230633736346237303666616439386362223b733a33323a226537366466393461363338613663653531356230306638643763353030326265223b733a33323a223330306138646431366566656166626566656330633637643238623261366334223b733a33323a223935643962613462396632633637623266656236343564616235323661396339223b7d733a343a2268617368223b733a36353a2239356439626134623966326336376232666562363435646162353236613963392d3330306138646431366566656166626566656330633637643238623261366334223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a323037323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32323a7b733a33323a226431316335633161313966376464313335646136326535323737373135363832223b733a33323a223339353837366435363333393839393831346334346663326461336130663863223b733a33323a223137373636333330663930303864396363613539303366303965633865613135223b733a33323a226431393933376239383265383435363037636337626230333666346430613665223b733a33323a226662653030316665336137303536376639633661323965383033383864363862223b733a33323a223865323733336539363839616230613132343631323434306363633739343864223b733a33323a223030326336376663643962623338646562643562636238373266663737316635223b733a33323a226331366435383564666265316538663066626663633862656563636166616530223b733a33323a223734326564366134326263396536363063303230383862616238666666663536223b733a33323a223236633164373839366663373964353833666666336438663531613733383932223b733a33323a226530643361363639356161386636653465353130656539636330613039623730223b733a33323a223136366463303162383938373936363935353732303031306334376362313131223b733a33323a223637663739376437373466666631343535613538663434616239366233303864223b733a33323a223733666366303332336238326235636531616537306431663936613165356237223b733a33323a223566346363363961636436633830636138363733363236386430303235363866223b733a33323a226365343131616132386461653234613830623630636639636137663138363637223b733a33323a226666376231353236343534616232656436643137303464653733356664656362223b733a33323a223764666530636131303366333535316538626364366134376335626337326631223b733a33323a223662323262336538663036356334666566643431333331336333333331626534223b733a33323a223335366631656166323566333062626136313238646630343664323337323332223b733a33323a223036623436303566343731343233643736383238653536356263643161396435223b733a33323a223837353336376463613061393335383061653761626631356536386463313464223b733a33323a223838366664393166653736643239643931356233313066393531313564636434223b733a33323a226338326535366466636332643037613663633930643639346530303132343039223b733a33323a226164626338313866373931656236386362383366363339616230353262643832223b733a33323a223764306236393138353164303437333739346431623565356433636133303861223b733a33323a226666316165636638363833393466363436663364313435656238386164393334223b733a33323a226631323163316364653263663731616134363639663935646433386237363531223b733a33323a223139653136643039396633343138323261626561363263643934623263373262223b733a33323a223439316232613539616531336339316535636336626465646361323738326666223b733a33323a223238613039343131663761613963333631313462333164316431333439306637223b733a33323a223030633933633338656339373366643535333339616439343732393936306134223b733a33323a223264353436663063363339653663356662643765343765373063323062343239223b733a33323a226138363331386237646164343239383930363761666534363461373662623834223b733a33323a223934656137333336373337363136373739626164303538336562376130616539223b733a33323a226135386639663865326465656661376366653638663934383562656333343433223b733a33323a223465393665613931326634646237656430653137653962383131316461646530223b733a33323a226132643632393831303639363332633264313963646564613261386532396361223b733a33323a226433326639316664363134633633343035666135386634383231316235356430223b733a33323a226230373465623433643237343733666438333534643330666637633835353732223b733a33323a223062626134666365353265396663303465333666393138313965663061306439223b733a33323a226631656233353034663137366239666264633934366131376637386234623031223b733a33323a226662353762663461363037366334396636383039363836646266346331616339223b733a33323a223535396433633634333264636634333534633663343638336534303436616131223b7d733a343a2268617368223b733a36353a2235353964336336343332646366343335346336633436383365343034366161312d6662353762663461363037366334396636383039363836646266346331616339223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223832383935366438333164666364306236666266376664383139333162386431223b733a33323a226131343336353737633934666564343735323530633936653733613934336237223b7d733a343a2268617368223b733a36353a2261313433363537376339346665643437353235306339366537336139343362372d3832383935366438333164666364306236666266376664383139333162386431223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587586191);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('ud0rph0bcon5md1h8ckj1ogknp', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373538363335302e3335303937363b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226f71346f6176306262326d70306b32746337766d7438306c3137223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538393839303b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538393931343b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373538393933373b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a226465323733323931656463313931396631656237366436613966316432393233223b733a33323a226461376233626230393634396566343566396462653138616261613136613132223b733a33323a226536386338396566346136666266383438373266396337333532663264626233223b733a33323a226130356161663662303931636331623233393861663635343663323036353766223b733a33323a223062333833616162656465643565666261353365393738326462306165653034223b733a33323a226364356464316631333733376339306137643463383266386165323935626262223b7d733a343a2268617368223b733a36353a2263643564643166313337333763393061376434633832663861653239356262622d3062333833616162656465643565666261353365393738326462306165653034223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223863303530616562313639396530663665383561623239643061656639323166223b733a33323a226364303634663538346638613132333134323964306530393137323437663433223b733a33323a226461643330633261643037626262353562616336383135386138386466363733223b733a33323a226664326437666663366335666233346533353330326439653165356531373830223b7d733a343a2268617368223b733a36353a2266643264376666633663356662333465333533303264396531653565313738302d6461643330633261643037626262353562616336383135386138386466363733223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223330313064386433626430623862313737333236656239386136326564366237223b733a33323a226130393132663433393065363135323138343036656531386638663338383763223b733a33323a223234653039386465313935323331653439313461303530666238356131383838223b733a33323a223639373166653465313337383731643630646462366164663538306234386631223b7d733a343a2268617368223b733a36353a2236393731666534653133373837316436306464623661646635383062343866312d3234653039386465313935323331653439313461303530666238356131383838223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587586350);

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
('administrator_email', '\"adammeoni54000@gmail.com\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"omeka_CNAM\"'),
('locale', '\"fr\"'),
('media_type_whitelist', '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf,\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
('pagination_per_page', '25'),
('time_zone', '\"Europe\\/Amsterdam\"'),
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site`
--

INSERT INTO `site` (`id`, `homepage_id`, `owner_id`, `slug`, `theme`, `title`, `summary`, `navigation`, `item_pool`, `created`, `modified`, `is_public`) VALUES
(2, 2, 1, 'auto_ecole', 'default', 'Auto Ecole Latouchette de la Manchette', NULL, '[{\"type\":\"page\",\"data\":{\"label\":\"\",\"id\":2},\"links\":[]},{\"type\":\"page\",\"data\":{\"label\":\"\",\"id\":3},\"links\":[]},{\"type\":\"page\",\"data\":{\"label\":\"\",\"id\":4},\"links\":[]}]', '{\"fulltext_search\":\"lecon_liste\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"121\"],\"resource_template_id\":[\"7\"],\"item_set_id\":[\"22\",\"23\",\"24\",\"25\"],\"o:site_item_set\":[{\"o:item_set\":{\"o:id\":\"22\"}},{\"o:item_set\":{\"o:id\":\"23\"}},{\"o:item_set\":{\"o:id\":\"24\"}},{\"o:item_set\":{\"o:id\":\"25\"}}]}', '2020-04-22 18:05:46', '2020-04-22 19:03:47', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_item_set`
--

INSERT INTO `site_item_set` (`id`, `site_id`, `item_set_id`, `position`) VALUES
(3, 2, 22, 1),
(4, 2, 23, 2),
(5, 2, 24, 3),
(6, 2, 25, 4);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_page`
--

INSERT INTO `site_page` (`id`, `site_id`, `slug`, `title`, `created`, `modified`) VALUES
(2, 2, 'welcome', 'Bienvenue', '2020-04-22 18:05:46', '2020-04-22 18:05:46'),
(3, 2, 'espace_moniteur', 'Espace moniteur', '2020-04-22 18:10:27', '2020-04-22 19:01:53'),
(4, 2, 'espace_eleve', 'Espace eleve', '2020-04-22 18:52:19', '2020-04-22 19:02:06');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_page_block`
--

INSERT INTO `site_page_block` (`id`, `page_id`, `layout`, `data`, `position`) VALUES
(2, 2, 'html', '{\"html\":\"Bienvenue sur votre nouveau site. Ceci est une page d\\u2019exemple.\"}', 1),
(3, 3, 'pageTitle', '[]', 1),
(4, 3, 'browsePreview', '{\"resource_type\":\"item_sets\",\"query\":\"\",\"limit\":\"12\",\"heading\":\"\",\"link-text\":\"Browse all\"}', 2),
(5, 4, 'pageTitle', '[]', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_permission`
--

INSERT INTO `site_permission` (`id`, `site_id`, `user_id`, `role`) VALUES
(2, 2, 1, 'admin');

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

--
-- Déchargement des données de la table `site_setting`
--

INSERT INTO `site_setting` (`id`, `site_id`, `value`) VALUES
('theme_settings_default', 2, '{\"accent_color\":\"#920b0b\",\"nav_depth\":\"0\",\"logo\":\"\",\"footer\":\"auto \\u00e9cole super g\\u00e9nial \"}');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'adammeoni54000@gmail.com', 'adam', '2020-04-21 17:50:14', '2020-04-21 17:50:14', '$2y$10$snZQAvOfkbwjfEpKKnvCm.tvtpd8evHxRra4TYuCavSt2iY4Q2sKC', 'global_admin', 1),
(4, 'samuel.szoniecky@univ-paris8.fr', 'samuel', '2020-04-22 20:14:33', '2020-04-22 20:15:59', '$2y$10$hjk0cS/kXppdq8Hfzch9OeTEPgxU7reA4lo6M9gHGnYi/iULpRKNS', 'global_admin', 1);

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
('default_resource_template', 4, '\"\"'),
('locale', 4, '\"fr\"');

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
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(25, 5, 245, NULL, 'literal', '', '1', NULL, 1),
(26, 5, 231, NULL, 'literal', '', 'Popiette', NULL, 1),
(27, 5, 232, NULL, 'literal', '', 'Cosette ', NULL, 1),
(28, 5, 239, NULL, 'literal', '', '18/12/1997', NULL, 1),
(29, 5, 240, NULL, 'literal', '', 'M', NULL, 1),
(30, 5, 233, NULL, 'literal', '', '10 passage la boule ', NULL, 1),
(31, 5, 234, NULL, 'literal', '', '54000', NULL, 1),
(32, 5, 235, NULL, 'literal', '', 'Nancy', NULL, 1),
(33, 5, 1, NULL, 'literal', '', 'Popiette Cosette ', NULL, 1),
(34, 6, 245, NULL, 'literal', '', '2', NULL, 1),
(35, 6, 231, NULL, 'literal', '', 'Jack', NULL, 1),
(36, 6, 232, NULL, 'literal', '', 'bonhomme ', NULL, 1),
(37, 6, 239, NULL, 'literal', '', '18/12/1997', NULL, 1),
(38, 6, 240, NULL, 'literal', '', 'M', NULL, 1),
(39, 6, 233, NULL, 'literal', '', '55 rue de la baguette ', NULL, 1),
(40, 6, 234, NULL, 'literal', '', '54000', NULL, 1),
(41, 6, 235, NULL, 'literal', '', 'Nancy ', NULL, 1),
(42, 6, 1, NULL, 'literal', '', 'Jack Bonhomme ', NULL, 1),
(43, 7, 245, NULL, 'literal', '', '3', NULL, 1),
(44, 7, 231, NULL, 'literal', '', 'jiclenne ', NULL, 1),
(45, 7, 232, NULL, 'literal', '', 'morgeau', NULL, 1),
(46, 7, 239, NULL, 'literal', '', '15/12/1999', NULL, 1),
(47, 7, 240, NULL, 'literal', '', 'F', NULL, 1),
(48, 7, 233, NULL, 'literal', '', '7 rue de la pacrette ', NULL, 1),
(49, 7, 234, NULL, 'literal', '', '54000', NULL, 1),
(50, 7, 235, NULL, 'literal', '', 'Nancy ', NULL, 1),
(51, 7, 1, NULL, 'literal', '', 'jiclenne  morgeau', NULL, 1),
(52, 8, 245, NULL, 'literal', '', '4', NULL, 1),
(53, 8, 231, NULL, 'literal', '', 'roger', NULL, 1),
(54, 8, 232, NULL, 'literal', '', 'roger', NULL, 1),
(55, 8, 239, NULL, 'literal', '', '16/06/1996', NULL, 1),
(56, 8, 240, NULL, 'literal', '', 'F', NULL, 1),
(57, 8, 233, NULL, 'literal', '', '9 rue de la table ', NULL, 1),
(58, 8, 234, NULL, 'literal', '', '54000', NULL, 1),
(59, 8, 235, NULL, 'literal', '', 'Nancy ', NULL, 1),
(60, 8, 1, NULL, 'literal', '', 'roger roger', NULL, 1),
(61, 9, 245, NULL, 'literal', '', '5', NULL, 1),
(62, 9, 231, NULL, 'literal', '', 'la palette ', NULL, 1),
(63, 9, 232, NULL, 'literal', '', 'michelle ', NULL, 1),
(64, 9, 239, NULL, 'literal', '', '15/12/1910', NULL, 1),
(65, 9, 240, NULL, 'literal', '', 'M', NULL, 1),
(66, 9, 233, NULL, 'literal', '', '45 rue du chalet ', NULL, 1),
(67, 9, 234, NULL, 'literal', '', '54000', NULL, 1),
(68, 9, 235, NULL, 'literal', '', 'Nancy ', NULL, 1),
(69, 9, 1, NULL, 'literal', '', 'michelle  la palette ', NULL, 1),
(70, 10, 247, NULL, 'literal', '', '1', NULL, 1),
(71, 10, 237, NULL, 'literal', '', 'regis', NULL, 1),
(72, 10, 238, NULL, 'literal', '', 'pastis', NULL, 1),
(73, 10, 239, NULL, 'literal', '', '13/02/2000', NULL, 1),
(74, 10, 240, NULL, 'literal', '', 'F', NULL, 1),
(75, 10, 1, NULL, 'literal', '', 'moniteur pastis', NULL, 1),
(76, 11, 247, NULL, 'literal', '', '2', NULL, 1),
(77, 11, 237, NULL, 'literal', '', 'truster', NULL, 1),
(78, 11, 238, NULL, 'literal', '', 'tatane ', NULL, 1),
(79, 11, 239, NULL, 'literal', '', '14/04/1988', NULL, 1),
(80, 11, 240, NULL, 'literal', '', 'M', NULL, 1),
(81, 11, 1, NULL, 'literal', '', 'moniteur tatane ', NULL, 1),
(82, 12, 248, NULL, 'literal', '', '1', NULL, 1),
(83, 12, 241, NULL, 'literal', '', 'FF-505-PX', NULL, 1),
(84, 12, 242, NULL, 'literal', '', 'Citroën C1 ', NULL, 1),
(85, 12, 243, NULL, 'literal', '', 'gris pastel sombre anthracite', NULL, 1),
(86, 12, 244, NULL, 'literal', '', '15/05/2019', NULL, 1),
(87, 12, 1, NULL, 'literal', '', 'voiture1', NULL, 1),
(88, 13, 248, NULL, 'literal', '', '2', NULL, 1),
(89, 13, 241, NULL, 'literal', '', 'KL-421-KG', NULL, 1),
(90, 13, 242, NULL, 'literal', '', 'pingpong', NULL, 1),
(91, 13, 243, NULL, 'literal', '', 'noire claire matte reflet d\'argent ', NULL, 1),
(92, 13, 244, NULL, 'literal', '', '14/05/2019', NULL, 1),
(93, 13, 1, NULL, 'literal', '', 'voiture2', NULL, 1),
(156, 22, 246, NULL, 'literal', '', 'lecon1', NULL, 1),
(157, 22, 248, NULL, 'literal', '', '1', NULL, 1),
(158, 22, 248, 12, 'resource', NULL, NULL, NULL, 1),
(159, 22, 247, NULL, 'literal', '', '1', NULL, 1),
(160, 22, 247, 10, 'resource', NULL, NULL, NULL, 1),
(161, 22, 236, NULL, 'literal', '', '24/04/2020 08:30:00', NULL, 1),
(162, 22, 1, NULL, 'literal', '', 'Leçon 24/04/2020 08:30:00 avec Pastis ', NULL, 1),
(163, 22, 1, 6, 'resource', NULL, NULL, NULL, 1),
(164, 23, 246, NULL, 'literal', '', '2', NULL, 1),
(165, 23, 248, 13, 'resource', NULL, NULL, NULL, 1),
(166, 23, 247, 11, 'resource', NULL, NULL, NULL, 1),
(167, 23, 236, NULL, 'literal', '', '24/04/2020 08:30:00', NULL, 1),
(168, 23, 1, NULL, 'literal', '', 'Leçon 24/04/2020 08:30:00 avec Tatane ', NULL, 1),
(169, 23, 1, 5, 'resource', NULL, NULL, NULL, 1),
(170, 24, 246, NULL, 'literal', '', '3', NULL, 1),
(171, 24, 248, 12, 'resource', NULL, NULL, NULL, 1),
(172, 24, 247, 10, 'resource', NULL, NULL, NULL, 1),
(173, 24, 236, NULL, 'literal', '', '24/04/2020 10:00:00', NULL, 1),
(174, 24, 1, NULL, 'literal', '', 'Leçon 24/04/2020 10:00:00 avec pastis ', NULL, 1),
(176, 24, 1, 8, 'resource', NULL, NULL, NULL, 1),
(177, 25, 246, NULL, 'literal', '', '4', NULL, 1),
(178, 25, 248, 13, 'resource', NULL, NULL, NULL, 1),
(179, 25, 247, 11, 'resource', NULL, NULL, NULL, 1),
(180, 25, 236, NULL, 'literal', '', '24/04/2020 10:00:00', NULL, 1),
(181, 25, 1, NULL, 'literal', '', 'Leçon 24/04/2020 10:00:00 avec Tatane', NULL, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(8, 1, 'https://localhost/auto_ecole', 'auto_ecole', 'auto_ecole', ''),
(10, 1, 'https://w3id.org/timebank', 'voiture_marque_linked', 'voiture_marque_linked', '');

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
