-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 22 avr. 2020 à 23:51
-- Version du serveur :  5.7.28
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
-- Base de données :  `omeka_cinema_sabri`
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
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`resource`),
  KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(1, 'items', 1, 1, 'Comédie', 'Comédie\nCe qui fera rire petit et grand\n1'),
(2, 'items', 1, 1, 'Bienvenue chez les ch\'tis', 'Bienvenue chez les ch\'tis\nBienvenue chez les Ch\'tis est un film français réalisé par Dany Boon, sorti le 20 février 2008 ...\nComédie'),
(4, 'items', 1, 1, 'UGC Ciné Cité Les Halles', 'UGC Ciné Cité Les Halles\nCinéma situé au centre de Paris plusieurs RER et métro\n7, place de la Rotonde 75001 Paris\nUGC Ciné Cité Les Halles'),
(5, 'items', 1, 1, 'Bernard Couchner', '1\nCouchner\nBenard\n06-11\nBernard Couchner\nMets une bonne ambiance'),
(6, 'items', 1, 1, 'Soldir - salle', 'Soldire\n165\nSoldir - salle\nElle a deux clim de chaque côté et ne peut pas avoir de spectacle \nUGC Ciné Cité Les Halles'),
(7, 'items', 1, 1, 'Brigitte BOULANGERE', '2\nBoulangere\nBrigitte\n06-30\nBrigitte BOULANGERE\nTimide mais serviable'),
(8, 'items', 1, 1, 'Reservation 1', 'Reservation 1\nPour l\'avant-première\n19/02/2008 20:00:00\nBienvenue chez les ch\'tis\nBernard Couchner\nBrigitte BOULANGERE\nSoldir - salle'),
(9, 'items', 1, 1, 'Mario Dariosy', '3\nDariosy\nMario\n11-07\nMario Dariosy\ntoujours à l\'heure'),
(10, 'items', 1, 1, 'Action', 'Action\nça va swinguer !\n2'),
(11, 'items', 1, 1, 'Spider-Man: New Generation', 'Spider-Man: New Generation\npider-Man : New Generation est un film réalisé par Bob Persichetti et Peter Ramsey avec les voix de Stéphane Bak, Camélia Jordana. Synopsis : Spider-Man ...\nAction\n2'),
(12, 'items', 1, 1, 'Minicub', 'MiniCub\n65\nMinicub\nCeci sont pour les amoureux du tout petit\nUGC Ciné Cité Les Halles'),
(13, 'items', 1, 1, 'Reservation 2', 'Reservation 2\nUne heure parfaite pour se prélasser devant un film de super héros\n19/07/2020 11:15:00\nSpider-Man: New Generation\nMario Dariosy\nBrigitte BOULANGERE\nMinicub');

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
(1),
(2),
(4),
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
  `args` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `log` longtext COLLATE utf8mb4_unicode_ci,
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
  `data` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `source` longtext COLLATE utf8mb4_unicode_ci,
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
('YgK9lgmipDSimbWqMEGaYswp1pSz6Qaw', 1, '2020-04-22 15:38:48', 0),
('aVcX1ZB6BGvPgBKci18GlHsTvHx3ltfF', 2, '2020-04-16 09:01:11', 1);

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
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(185, 1, 5, 'hasAlias', 'hasAlias', 'A way to store different alias names of objects (used internally by the application)'),
(186, 1, 5, 'hasCreationTime', 'hasCreationTime', NULL),
(187, 1, 5, 'hasDescription', 'hasDescription', NULL),
(188, 1, 5, 'hasEndTime', 'hadEndTime', NULL),
(189, 1, 5, 'hasStartTime', 'hasStartTime', NULL),
(190, 1, 5, 'hasStatus', 'hasStatus', NULL),
(191, 1, 5, 'contains', 'contains', 'The property which links an artefact (for example, an agenda item , an action item, a travle report, etc ) to the document in which it is mentioned.'),
(192, 1, 5, 'isAssignedTo', 'isAssignedTo', 'This property links a pdo:ActionItem object to a foaf:Person object who is reponsible for the action item'),
(193, 1, 5, 'mentions', 'mentions', 'The property which links an artefact (for example, an agenda item , an action item, a travle report, etc ) to the document in which it is mentioned.'),
(212, 1, 7, 'ID', 'ID', NULL),
(213, 1, 7, 'nomTypeFilm', 'nomTypeFilm', NULL),
(214, 1, 7, 'nomFilm', 'nomFilm', NULL),
(215, 1, 7, 'Durée', 'datetime', NULL),
(216, 1, 7, 'debutProj', 'datetime', NULL),
(217, 1, 7, 'finProj', 'datetime', NULL),
(218, 1, 7, 'nom', 'nom du personnel', NULL),
(219, 1, 7, 'prenom', 'prénom de la personne', NULL),
(220, 1, 7, 'dataNaiss', 'date de naissance', NULL),
(221, 1, 7, 'nomSalle', 'Nom de la salle', NULL),
(222, 1, 7, 'nbrPlace', 'Nombre de place', NULL),
(223, 1, 7, 'nomCinéma', 'nom du cinéma', NULL),
(224, 1, 7, 'adresseCinema', 'adresseCinema', NULL),
(225, 1, 7, 'hasFilm', 'hasFilm', NULL),
(226, 1, 7, 'hasTypeFilm', 'hasTypeFilm', NULL),
(227, 1, 7, 'hasSalle', 'hasSalle', NULL),
(228, 1, 7, 'hasCinema', 'hasCinema', NULL),
(229, 1, 7, 'hasPersonnel', 'hasPersonnel', NULL);

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
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(1, 1, 135, 4, NULL, 'Comédie', 1, '2020-04-22 22:03:35', '2020-04-22 22:03:35', 'Omeka\\Entity\\Item'),
(2, 1, 56, 3, NULL, 'Bienvenue chez les ch\'tis', 1, '2020-04-22 22:05:26', '2020-04-22 22:05:26', 'Omeka\\Entity\\Item'),
(4, 1, 140, 5, NULL, 'UGC Ciné Cité Les Halles', 1, '2020-04-22 22:11:24', '2020-04-22 22:11:24', 'Omeka\\Entity\\Item'),
(5, 1, 94, 2, NULL, 'Bernard Couchner', 1, '2020-04-22 22:13:18', '2020-04-22 22:13:59', 'Omeka\\Entity\\Item'),
(6, 1, 139, 7, NULL, 'Soldir - salle', 1, '2020-04-22 22:18:22', '2020-04-22 23:09:54', 'Omeka\\Entity\\Item'),
(7, 1, 94, 2, NULL, 'Brigitte BOULANGERE', 1, '2020-04-22 22:21:32', '2020-04-22 22:21:32', 'Omeka\\Entity\\Item'),
(8, 1, 138, 6, NULL, 'Reservation 1', 1, '2020-04-22 22:21:58', '2020-04-22 22:21:58', 'Omeka\\Entity\\Item'),
(9, 1, 94, 2, NULL, 'Mario Dariosy', 1, '2020-04-22 23:02:33', '2020-04-22 23:02:33', 'Omeka\\Entity\\Item'),
(10, 1, 135, 4, NULL, 'Action', 1, '2020-04-22 23:04:47', '2020-04-22 23:06:57', 'Omeka\\Entity\\Item'),
(11, 1, 56, 3, NULL, 'Spider-Man: New Generation', 1, '2020-04-22 23:06:33', '2020-04-22 23:06:33', 'Omeka\\Entity\\Item'),
(12, 1, 139, 7, NULL, 'Minicub', 1, '2020-04-22 23:09:11', '2020-04-22 23:09:11', 'Omeka\\Entity\\Item'),
(13, 1, 138, 6, NULL, 'Reservation 2', 1, '2020-04-22 23:12:35', '2020-04-22 23:12:35', 'Omeka\\Entity\\Item');

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
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(106, 1, 5, 'Absentee', 'Absentee', 'Models the absentee role of a person in a meeting context.'),
(107, 1, 5, 'ActionItem', 'ActionItem', 'Subclasses pdo:Artifact and models the structure of an action item/task'),
(108, 1, 5, 'AgendaItem', 'AgendaItem', 'Subclasses pdo:Artifact and models the structure of an agenda item'),
(109, 1, 5, 'Artefact', 'Artefact', 'An abstract class for  any kind of information artifact which can be structured according to its sematics.'),
(110, 1, 5, 'Attendee', 'Attendee', 'Models the attendee role of a person in a meeting context.'),
(111, 1, 5, 'Chair', 'Chair', 'Models the chair role of a person in a meeting context.'),
(112, 1, 5, 'Comment', 'Comment', 'Models a comment made by a person'),
(113, 1, 5, 'Document', 'Document', 'The base class for all kinds of electronic documents in a project-specific setting.'),
(114, 1, 5, 'LeaveReport', 'LeaveReport', 'Subclasses pdo:Artefact and models the structure of a leave report'),
(115, 1, 5, 'Meeting', 'Meeting', 'The class modelling the actual meeting which is the subject of a particular minutes document.'),
(116, 1, 5, 'MeetingMinutes', 'Minutes', 'The class modelling the structure and cotent of an electronic version of the minutes of a meetintg.'),
(117, 1, 5, 'PersonRole', 'PersonRole', 'The abstract class modelling various roles taken by individuals during a particular context ( for example, the attendees, scribe etc in a meeting or the reporter in a status report.)'),
(118, 1, 5, 'Poll', 'Poll', 'Subclasses pdo:Artifact and models the structure of a poll'),
(119, 1, 5, 'PollOption', 'PollOption', 'Models an option in a poll. Each option is linked to a list of people who selected the option during the poll'),
(120, 1, 5, 'Presenter', 'Presenter', 'Models the presenter role of a person in the context of an agenda item.'),
(121, 1, 5, 'Publication', 'Publication', 'Subclasses pdo:Artifact and uses bibliography ontology to model the structure of a publication'),
(122, 1, 5, 'Report', 'TravelReport', 'Subclasses pdo:Artefact and models the structure of a travel report'),
(123, 1, 5, 'Reporter', 'Reporter', 'Models the reporting role of a person in a status reporting context.'),
(124, 1, 5, 'Scribe', 'Scribe', 'Models the scribe role of a person in a meeting context.'),
(125, 1, 5, 'StatusReport', 'Report', 'The class modelling the structure and content of an electronic version of a status reports document'),
(126, 1, 5, 'TravelReport', 'TravelReport', 'Subclasses pdo:Artefact and models the structure of a travel report'),
(134, 1, 7, 'film', 'film', NULL),
(135, 1, 7, 'typefilm', 'type de film', NULL),
(136, 1, 7, 'personnel', 'personnel', NULL),
(137, 1, 7, 'affecter', 'l\'affectation du personnel au salle', NULL),
(138, 1, 7, 'reservesalle', 'reserver les seances', NULL),
(139, 1, 7, 'salle', 'Salle du cinema', NULL),
(140, 1, 7, 'cinema', 'cinema', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource'),
(2, 1, 94, NULL, NULL, 'Personnel'),
(3, 1, 56, NULL, NULL, 'Film'),
(4, 1, 135, NULL, NULL, 'type de film'),
(5, 1, 140, NULL, NULL, 'cinema'),
(6, 1, 138, NULL, NULL, 'ReservationSalle'),
(7, 1, 139, NULL, NULL, 'salle de cinema');

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
  `alternate_comment` longtext COLLATE utf8mb4_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `data_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  KEY `IDX_4689E2F1549213EC` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(24, 2, 10, 'ID', NULL, 1, NULL, 0, 0),
(25, 2, 140, 'Nom', NULL, 2, NULL, 0, 0),
(26, 2, 139, 'prénom', NULL, 3, NULL, 0, 0),
(27, 2, 182, 'dateNaiss', NULL, 4, NULL, 0, 0),
(28, 3, 1, NULL, NULL, 1, NULL, 0, 0),
(29, 3, 4, NULL, NULL, 2, NULL, 0, 0),
(30, 4, 1, NULL, NULL, 1, NULL, 0, 0),
(31, 4, 4, NULL, NULL, 2, NULL, 0, 0),
(33, 4, 212, NULL, NULL, 3, NULL, 0, 0),
(34, 3, 226, NULL, NULL, 3, NULL, 0, 0),
(35, 5, 223, NULL, NULL, 1, NULL, 0, 0),
(36, 5, 4, NULL, NULL, 2, NULL, 0, 0),
(37, 5, 224, NULL, NULL, 3, NULL, 0, 0),
(38, 6, 1, NULL, NULL, 1, NULL, 0, 0),
(39, 6, 4, NULL, NULL, 2, NULL, 0, 0),
(40, 6, 216, NULL, NULL, 3, NULL, 0, 0),
(41, 6, 225, NULL, NULL, 4, NULL, 0, 0),
(42, 6, 229, NULL, NULL, 5, NULL, 0, 0),
(43, 6, 227, NULL, NULL, 6, NULL, 0, 0),
(44, 7, 221, NULL, NULL, 1, NULL, 0, 0),
(45, 7, 222, NULL, NULL, 2, NULL, 0, 0),
(46, 7, 1, NULL, NULL, 3, NULL, 0, 0),
(47, 7, 4, NULL, NULL, 4, NULL, 0, 0);

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
('1m5rr1qoddlima3dd25jhdbaa2', 0x5f5f5a467c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373033303835322e3530363932383b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226f6c6b6c6e7271767563626e346e666c6d696964736476623532223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373033313038323b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373033343334323b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373033343435343b7d733a33343a225a656e645f56616c696461746f725f437372665f73616c745f666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373033313435353b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226361313661363637626539323532626430333937613034383938643833336337223b733a33323a223066376333316232663164366531653335306136643032353261616434663739223b7d733a343a2268617368223b733a36353a2230663763333162326631643665316533353061366430323532616164346637392d6361313661363637626539323532626430333937613034383938643833336337223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313033313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a393a7b733a33323a226661646538306263653162363762363665653163643562656236313331356339223b733a33323a223563666365333234313935393662386333633063316465313933363766633238223b733a33323a226662303437666261623731656538643731616335343534663461343064623533223b733a33323a226434323433653962386165623530356630623566663966353464393038616266223b733a33323a223434636635656662656336363333343963306163326137623736316233633063223b733a33323a223933393833353439646438343237643736626534313264356564383732343565223b733a33323a223032396461313364393261373131616438616466663133313231386535346534223b733a33323a226561363661383266663464383332363564626462386564396436666131396563223b733a33323a226437323736386365393163646337333330356130653439393635663163653936223b733a33323a223465373163386335663665303138303539396333643935303666653362363465223b733a33323a223736623265623331623930363336346661343864323865393338313665666535223b733a33323a226265663664353832383737336464343530643430363165393166306661336139223b733a33323a223235396165346164373233353039346535616235333036386265386339373838223b733a33323a226331653262373238633237326666623533323136376230633932396435613463223b733a33323a226334363961393061333365636239323563303663313332613766303338303764223b733a33323a226235316634343962663663626630343262383138393166393739306462386139223b733a33323a223662336536346566326464343332383265616137616538336338633234363337223b733a33323a223565613936323463393736663736393766646234333937343162623636393065223b7d733a343a2268617368223b733a36353a2235656139363234633937366637363937666462343339373431626236363930652d3662336536346566326464343332383265616137616538336338633234363337223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313131323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31303a7b733a33323a223062663336366563613233353937363839366138356137363964633638613638223b733a33323a223639616338396532346262343263663832616663626263306262613131366362223b733a33323a226664393761653565323839633263336562643261353833613535616230643833223b733a33323a223835333030623032336635383038356266336364346162363931376238376465223b733a33323a223038636438393336613531623830376465326136373236306631333763303632223b733a33323a226131326365303762636564303830303865343332393866323764396137346332223b733a33323a226562663561633963376534633931626435366664356230323136333561373339223b733a33323a223335646336666633653534646638336130386334353239636461633631613239223b733a33323a226463343163316262653731313132396332333463633735333864336430343336223b733a33323a226435363335646331313861396132663733663230646537653763613865393739223b733a33323a226137343635313137613062363163616337633731303065353731623533353061223b733a33323a223537653363306364613564353836623134373064363238306665333032393837223b733a33323a226633373337393438643066663935646666666261643137313665346139383535223b733a33323a223639393437626663313939663832366364353665346261616261333937653730223b733a33323a223562343335383065306237366534313633356334383638616330636530333330223b733a33323a223036666638646239326630393532633361333032376366666635623664393664223b733a33323a223932663863353538366163303735633237643836373961366461346462356133223b733a33323a226161373139613030656338363333316330373331396639346661636234396430223b733a33323a223965373330383732383163633134356639316564303565613365313262326364223b733a33323a223732346364636465373961376464623935313435653063636630323138383333223b7d733a343a2268617368223b733a36353a2237323463646364653739613764646239353134356530636366303231383833332d3965373330383732383163633134356639316564303565613365313262326364223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a223030646266323434323331393431613135393134393864346631396238316537223b733a33323a226335633836666530333263613932373935653765356261356536623763323135223b733a33323a223961303637353763383864346333373566363863326232633034373831346331223b733a33323a223038313535333162633931653131656634636663303131613932376266303865223b733a33323a223062653061373232303361373031313065373634386563353337356261616439223b733a33323a223039333135313963663037363666396537663962336232393764306432356365223b733a33323a223439366534653038333437626233333463386662313666623831376666376339223b733a33323a226633393432633937363263393734376438313261303735373365393636353733223b733a33323a226135636665646138363165383666623863393430393461323735303038386665223b733a33323a223730366461643965356530343064353061663937323632386132343763636664223b7d733a343a2268617368223b733a36353a2237303664616439653565303430643530616639373236323861323437636366642d6135636665646138363165383666623863393430393461323735303038386665223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587030854),
('572ptl15kpflphcipb952chm53', 0x5f5f5a467c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373538313238362e3130333732383b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2239393265356638656264316a356b6b706c39686164676c643465223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373537333538323b7d733a34383a225a656e645f56616c696461746f725f437372665f73616c745f666f72676f7470617373776f7264666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373537333534303b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373537393432393b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373538303432303b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538343838363b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538343838363b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3935313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a226330326561323565316632393638316633646561613861636131343163353030223b733a33323a223265643532383534353234616164393933396363313536643139316265386432223b733a33323a223732326165353533363666366139313039383434393232333333613438336438223b733a33323a226239383366303634386631323864373133666139333132383761353938383933223b733a33323a226464656562663865366234306137343632666233613334353064623337323835223b733a33323a223632383238613731656462386161346663363761373764363163646130373163223b733a33323a223833663438313637396264626432666166323330333033313735303665663364223b733a33323a223339316539336136373562616432366430306235643534643733633333633138223b733a33323a226465346564633463626633323534346137656435656262663137323763333034223b733a33323a223236656535353134643465356138623935303536346238386234353838373738223b733a33323a223565373764356431366133356364316263626535383531653763373333613337223b733a33323a223938336564336563303563653064653933643130326232333337356334633664223b733a33323a223362626432323739656338646232346633636239393233653166616262303231223b733a33323a223365306134613132613266376335393736383632393262623739633031343964223b733a33323a223865343164633362386330663835363061303165363236323166303332643564223b733a33323a223039393234353562393965316531396431626136363562323530643537633939223b7d733a343a2268617368223b733a36353a2230393932343535623939653165313964316261363635623235306435376339392d3865343164633362386330663835363061303165363236323166303332643564223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f666f72676f7470617373776f7264666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226136633332633331373562306433316538383535323430636566663761666235223b733a33323a226662653962376161303839313637623231366363663637656534396364343737223b733a33323a223334306234323338613430633632656666316137323164353037373632386131223b733a33323a223135663864393466643434353033366331353932313538313538373838363536223b7d733a343a2268617368223b733a36353a2231356638643934666434343530333663313539323135383135383738383635362d3334306234323338613430633632656666316137323164353037373632386131223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a323731323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33303a7b733a33323a226634643363363161376665343930313838616234623838383538366337636266223b733a33323a226263356231656661326132343565363363336431386437303036386630316361223b733a33323a223337653637636339623537376132363430353063376164643563616534346437223b733a33323a226132653761656635333563383465366430613466376263643935643930623331223b733a33323a223738653039353833333966353461363566306635633538646266383762646339223b733a33323a226233386632363965363562306236333561643734636438636135633965653432223b733a33323a223432656539613335613964623531653531396536313361323134363337363932223b733a33323a223031323731623338656331626435613433303365636462353162303064663233223b733a33323a226162353161636366353831316261616365623863386130633737663034613939223b733a33323a223535353464626637643561306437656561326164383961303466343962646630223b733a33323a226365623532373038666139333332333965323633346362383531656463663166223b733a33323a226331633035646430333732383836343831396230646536366638646136633264223b733a33323a223961613834646233656131336636623731653730663961636436326230613539223b733a33323a223334383464313638656532653964353961643732393966353363663737623937223b733a33323a226461376635343366343265393833323965336661633130333465356463663230223b733a33323a223137613731356634323433336539656265653539356132313839386437333738223b733a33323a223332663866356639373830323932613562636136313661646263323631663063223b733a33323a223839386362313233386130353038653765363235333832643033343339643239223b733a33323a223233306561366436306435663735363764373463376137623061356232373165223b733a33323a223030653732663735636538353961353033373764613930643938343163363632223b733a33323a223663306133646436643031313332633138656635356136383063353931636663223b733a33323a223462356434393664653135663039316566316566653565643166356134653339223b733a33323a223464616136336233623235653835336430663064336132303466346165343666223b733a33323a223062333839653639306230376261323632316330303664666464636233303136223b733a33323a223432323031396639333037656638373635663236376236366635613333623938223b733a33323a223831366639383633663039316232323334623131616664643136396135623836223b733a33323a226234656231326636373164613463343761643437653532653134633730323135223b733a33323a223838393230653232313133333161623639323438353866323361613661393933223b733a33323a226134643333646162666666666336323931623733316562313836393035376261223b733a33323a223866636366306261633065386134396465623731633964656533396463343336223b733a33323a223734393238623061323030333233663464376264643133636336653038326461223b733a33323a226331623363353064356139363761373734653566303138383539393034333164223b733a33323a226538646632333538313866366238613036323632353164613537303733623839223b733a33323a226432363464386162336135396332396664633439646262653865383061306361223b733a33323a223962636233613030626330646539313034653332376134383665376336313131223b733a33323a226534393263303461333638393534613866636537373666323631383133656363223b733a33323a226165393335366439626363393632326434616233626631613063373931636265223b733a33323a223236396438353765366366646132656661626236616436343832336231653238223b733a33323a223038326162623665376161613636643164383238613934383135396537363431223b733a33323a226135663838363138363162383036353032303238313637303832643865313061223b733a33323a226665323836353938663834373833373463613036353963656432666161396661223b733a33323a226431666432316430643265376534343639316633616638373931363830353038223b733a33323a223333383539316335633863666534383365376336646135663362313633323565223b733a33323a223330363539616535663462663531656438626430323465386538613039633137223b733a33323a223861646666323830343662376634643563633937346639333163393837313761223b733a33323a226634363865623932333339666462353733303337313631653562376538333733223b733a33323a223434316535376632666534356163333839643161333265633563393263623133223b733a33323a226635383063353731613161663134393033356334643132333932353130373563223b733a33323a223764326531633035663239616362333061353932356434386161633131666539223b733a33323a226231636436383131306666353134383562653061643930356335336262346262223b733a33323a223661396363333866643333636538643831353633333761646132383639653430223b733a33323a223735363432393837343236613961616437643361316632383263353135383139223b733a33323a226465636332666361623835346132303032326234383635666361306235366661223b733a33323a223938356632616363363634653739353439353766656462643866386161323864223b733a33323a226163653236663136626331663133336262353534353937656339333838316237223b733a33323a223331356134396462303461383162313664356663363263633833323238386438223b733a33323a226533613839653937373635383036343536666164353863623234323238373230223b733a33323a226434393536313930393237623931666230623461353561383963353230613731223b733a33323a226630353766373464323563393136396637356131653637643530633331356566223b733a33323a226661326636336538386533313763303835636361663763306139316137633934223b7d733a343a2268617368223b733a36353a2266613266363365383865333137633038356363616637633061393161376339342d6630353766373464323563393136396637356131653637643530633331356566223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a223236643037363866633864616337623061313138663431376666383363336439223b733a33323a223838626135333935323066643931633838336132373135323931356331616133223b733a33323a223263343037643165643961383262643162376433393363323837343963633463223b733a33323a223265396365663864303731633763323238313731623231616533303735666431223b733a33323a226563363066343865623439373163323565363035323239306433326536646366223b733a33323a223038376331633934353462643030383530383364666231373437323639313235223b733a33323a226337346135633764613237393562353634316334316431316639333336666136223b733a33323a223635306461626565613539636133646432386532373839666238306461336161223b733a33323a223864643730323938326437323933376161366362636566663261653864373831223b733a33323a223363633234623835623930303134353635376435636331643930623066366364223b7d733a343a2268617368223b733a36353a2233636332346238356239303031343536353764356363316439306230663663642d3864643730323938326437323933376161366362636566663261653864373831223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3935313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a226139643565313833313334323334663531613661383863323837643765383066223b733a33323a223730313537383239666566333032306461633634393764396265643534346464223b733a33323a223061613131363839303935656336613532313539646235386666313265316633223b733a33323a223639393438336231666635393161633538353034313032653533653032323732223b733a33323a223565346239643265616132666538333764663030396433623233656535346431223b733a33323a226164356438326463393261356432303632343736303836323763623430343931223b733a33323a223739333661643233316338356433616666653964636561623562356362613165223b733a33323a223738656633313461613864336331356638373530323261653335373566356561223b733a33323a226336613930333636363066356363353533646132393733386533396539666137223b733a33323a223236643266386138383339373462656232626434363664383331623239336363223b733a33323a226161356437373633323130323639613938376331646333363233653334336635223b733a33323a226637326239376431646365623965313865313538363834393832643436626234223b733a33323a226464303538613363386262376366663134306530373434313439383561343961223b733a33323a223639346263643238336632356338643565396638663439623665636635373464223b733a33323a223839633433386235313939393366616565343166613137353863653430633465223b733a33323a226435643561336264393962373765333638363863396664653663336662383632223b7d733a343a2268617368223b733a36353a2264356435613362643939623737653336383638633966646536633366623836322d3839633433386235313939393366616565343166613137353863653430633465223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3837313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a223336346364623863613266373633636335323066613366613232623531343332223b733a33323a226561613265386137353237303934656362393063663733663562626533633361223b733a33323a226433333664336236313165623464666433376338303961363039326437613863223b733a33323a223933613131373266373031653562393132633834656131656437353161313930223b733a33323a223937326235333031623963643537336337366261663464356639656565323464223b733a33323a226137303762333662646165376338343434626434353030393437373266663230223b733a33323a223536333934663736653139336436343363646238376539333530333431346534223b733a33323a223337373434323464333965656439336462303434303964386661396231373631223b733a33323a223038373466623631303035316335383836316236343636306565353730336237223b733a33323a226135363336373066656335373561366636616433653338626539643737613835223b733a33323a223936343130633837336435343236353761313663616266656664643939373438223b733a33323a223163303836363636363761343338363164663664333761383061383130303734223b733a33323a226439616164336166303732646136346332383837613864303836616439666239223b733a33323a223831643337313135663862393063316662363337343164383139333163376533223b7d733a343a2268617368223b733a36353a2238316433373131356638623930633166623633373431643831393331633765332d6439616164336166303732646136346332383837613864303836616439666239223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587581286);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('dh9p8cs33o0shm3a7o83a40hac', 0x5f5f5a467c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373539393339332e34363037393b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2231673462363638386b7367337676756f6575686c76686d643130223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539303733323b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539363437373b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373630323933373b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373630323930323b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373630323830313b7d7d72656469726563745f75726c7c733a33333a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e2f6974656d223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313033313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a393a7b733a33323a226635303638303965306461316637633663323365613431373330373366613865223b733a33323a223232666565353562303336663633653366373339346666333932356139306465223b733a33323a223633373334343130313531633962323763396165336334383137346532333864223b733a33323a223663346239376465616164363036633237323238366130653239646464366338223b733a33323a223538633230616163633438616130663034373638353839353662336431353038223b733a33323a223836376361356533363432366631356133373964663133383037366534396134223b733a33323a223166376130343033393363346634356365306361393663366630303063313535223b733a33323a226132383764643734663238373339613131336637323761636637333163393238223b733a33323a226136303633303361393461316430623330633233393238626162616539666537223b733a33323a223534663733316633663662373061663835626266386166376162633832336534223b733a33323a226237353864386235333034643134333931323065376463313639353234616530223b733a33323a226261653431316335306534356265333731396134323766656334333138663664223b733a33323a223062616263626230346561626463666262376633373865626664633762323031223b733a33323a223166326465303138626235646238353334643561636136366630633736326463223b733a33323a223232623930366365353232353761326631653630363830366431353262623866223b733a33323a223935323662663136353332643334646666363634636562623536376235396564223b733a33323a223263323336663637303734313361306534633964646331666464666265663534223b733a33323a223637626532343064386136333734363131643337303935383062616234313361223b7d733a343a2268617368223b733a36353a2236376265323430643861363337343631316433373039353830626162343133612d3263323336663637303734313361306534633964646331666464666265663534223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a323739323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33313a7b733a33323a223832663162363966646533333462656337636266666136323733356162396565223b733a33323a223334653136323934626363666335373161613931633934316264326265623636223b733a33323a223461313536333535616535303762376166663337303463306337316531316361223b733a33323a223737613139313737643034313930383965633238316231633631663965306238223b733a33323a223038613665373066326639346135333366653133383239323737653230643565223b733a33323a226161663461306631326261396338363037343039353865386435363237653133223b733a33323a223534623965383663376666646235663635343661636634353331636234663038223b733a33323a223938373631653735613238363439613663323232636534626262336237623832223b733a33323a226130663364323830313233376632393438363662363131623466663438343839223b733a33323a223339303438313737336230396439346361623661616136306561336231363830223b733a33323a223565613662333561396431393265363031306161336535323165313930376336223b733a33323a226666653531326166306237666532393233353232353463303638653231343932223b733a33323a223735343335653036353332663931333737643239313439663334623836313738223b733a33323a223634653861633163393166613232373533386436393338343662613263653064223b733a33323a223562303131666535363333393939393837633663356439393036303231616434223b733a33323a223039366239316633353161623963396130383935323963333535326133613738223b733a33323a223933656161616336353365323861643264363137366332623366373637333261223b733a33323a226663313135633534323432663138646635343835346439363330336435313337223b733a33323a226438613732313363623835643830663465663165653735336161663632326437223b733a33323a223762386138313638333265336532383866646662303931373735393036623961223b733a33323a223738656236353964343236353830643330393964633233326431363038353133223b733a33323a226439633738366239313265663030396362623330356431623666626564393063223b733a33323a223235316237613737386330303836383037353964303939303264616330363130223b733a33323a223535356430393334396435613435643265333665303761343834346634356139223b733a33323a226231663333653435626136373837326539303636623537633264363064356464223b733a33323a226135333961323530626263373666623861336164316262393466616565333530223b733a33323a223836313263343639313066393233323033613931643832346437633866326337223b733a33323a226662336563366333376163353035636331363433336465653234623535663464223b733a33323a223830336638343164623864303764653037656464626538326233383462656537223b733a33323a223830336563353762356135623833633731363434386563373164316465363536223b733a33323a223261346239363962313766313238623665636339373431316362666635636537223b733a33323a223961323364306361373564383362633163663038393736656239326233363838223b733a33323a223535323664653062366631363665326239343763653763343236646333633131223b733a33323a223738346532633064313566393234343966313766323032333266616662656533223b733a33323a223966616134306436356637306631363332343561393730363239306537616130223b733a33323a226330363863383832386465373662313033363636386635666237643437323832223b733a33323a223664383735656432333664636165373663316130383335636437323534383733223b733a33323a226136363663663338303961626538303563306235363131346533323239663461223b733a33323a226531653136333164346162633331393231663062656661623865613336633966223b733a33323a223936626232306262633366306261306438646661333934316237343861373339223b733a33323a223137656462653638393833393033383734396530393761316462306263303563223b733a33323a226230633237313538313133653435306664366631663433353134623738306363223b733a33323a223066623836373364353334343738653836323463303764626637646536653731223b733a33323a226261326164656361666438613637616533316430653062376462623032616366223b733a33323a226432383837363063316166343535326261616261613364653664616663306262223b733a33323a223365366330613837323239626638343563376437366465353530313239643562223b733a33323a223237316235353030633566666132623835313463666436663632626239636236223b733a33323a226235366537366538356331626438396665666336346532616438343036613533223b733a33323a226164613865346239626265666663373133306531646637313461653435363534223b733a33323a223765393836316134373163613032623936343832663931646162316230633930223b733a33323a223036383832306263636566643136393330636234663264376461363434613633223b733a33323a223965343463343666306230663735323062323636316462343932303337396130223b733a33323a223565363461313737613539626666343532383835613833313561386562303566223b733a33323a226164626330383434386639646262626431663563383338633563643061326239223b733a33323a226135396462303665653830363036653235376138363463616362333562343566223b733a33323a226163373533333833313739333930383761613630643930383962633135316666223b733a33323a223439383638383733303631386264323639306337366433303336643638386637223b733a33323a223361666266373936373036303932383531393435643461666661306533643338223b733a33323a223461323638633133663832653164333466333034383434666361633964656162223b733a33323a226461663331333930656266633935363535323937636438396337393164386463223b733a33323a223631666131656461616364613364333330653765633563636635356166333735223b733a33323a223465613333306266316465643261376433336236656134326261313465303434223b7d733a343a2268617368223b733a36353a2234656133333062663164656432613764333362366561343262613134653034342d3631666131656461616364613364333330653765633563636635356166333735223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a363837323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a38323a7b733a33323a223836376165336432343237303136313963333263326164616465343632613534223b733a33323a226439356266336563623566623463643338313239663738653865313838383430223b733a33323a226265323133306264363666623431376362343864643964383032393233323162223b733a33323a223231333562626265353162653835616561616338653566663164313436623563223b733a33323a223432326161306536326435653465306638633433363066656430376138366131223b733a33323a223231663437383538356430663436326238343234313436656262383833393137223b733a33323a226434353630363635333537636531303666393530333731316564643166333162223b733a33323a223635346462333063613361386364363035363361383239373438383934663333223b733a33323a223135303036653932336331626535366262656563303539643631316238363135223b733a33323a223663326430373566303338313266366438643161373434366461363166353034223b733a33323a223361643830343531643830303362626264326538626664663963323764646232223b733a33323a223532656337376164363539666461626664363762646531383961343261363261223b733a33323a226630663664663937316565383739383465646461383435353761376130356530223b733a33323a223936363562666461656233393164386633643365383933306234333435356562223b733a33323a226539346130666132386438646333616135303934396534373631643231393732223b733a33323a223731353939393464643633373161626365366533343764303931316331653164223b733a33323a223731313763643866316563623961353931366366356363633031313738326334223b733a33323a223065343363653334376639343632626637386339383964306264636165373430223b733a33323a223130616233626531613136366237323963633463613639373837303332333939223b733a33323a223735343938656362666437663034346263306561353063643662393934346265223b733a33323a223636316232366362626233303136366562316263623233353864653138623738223b733a33323a226535343762346235333138666538633336656439613962376162393536313365223b733a33323a223461663739303734623933353939613666626464663364303332653463656362223b733a33323a223031353932333537326531376231626536326136366163313265313130373361223b733a33323a223835373632353135633430616336633766383962326630336433643535393030223b733a33323a226330356536626465393664363731393165366536336135303832656561376565223b733a33323a226632656235306463393535336439373735393162646164643166656337663833223b733a33323a223031653338636163323434633064356262366563663962353134396361366337223b733a33323a226538313630653936626333333433383466303934356433323261636161336463223b733a33323a223738336130346636363665643834323438656436313562336262656663356431223b733a33323a223266663263636536333735633236323139316266656234656433313765353162223b733a33323a223339623963656234353566376139616436393636646135636566373930396239223b733a33323a223962386230646231333665303931303739333966636530303031333166386139223b733a33323a226461643232316338353862366363393638373666373236343962333262323062223b733a33323a226131666666333334633836643236323337373237383631663030643634313865223b733a33323a223463653733393438313563653463646233613534393864363161393066303861223b733a33323a223938313162366338303139653166396266623139623238356337323532386565223b733a33323a223137383738356135313764376561373164613732336565643263626338663762223b733a33323a223934386438663536336364653766336665383739376432633937636361373831223b733a33323a223364353063343639323266643065323539633534633939323864306265353861223b733a33323a226163386131656131643135336164633966623863643739373636353936663865223b733a33323a226230396563663332636162663936626437633533663534316338633139323837223b733a33323a223531633161356237653530333561383463643661623436306636306464396135223b733a33323a226636663364636161633664353336613763346439346665316333633361393034223b733a33323a223538626432633035366531393464323236616339366463306439373332383630223b733a33323a226665613638643066363832616165333164333065393832646336303139323037223b733a33323a223037373735616330626662383237333936636236393366333463653730393734223b733a33323a223038363366393764633937303661376363623464616632366463633532623631223b733a33323a226332363566653237306235626365303536396338646633636236656439316430223b733a33323a226364313233633636373637333835346239616638616237656632356366326333223b733a33323a226165643365313562303531363563303230346132646136376564316130353334223b733a33323a223563326661663663306430386639333831636537386135306235666133323366223b733a33323a223736363566363232363433376165333634396366396337323638623630656461223b733a33323a223332326436663836613131386230396635303738333366396264333531306439223b733a33323a226365393934373065336631363939643532643431636436353339336235313737223b733a33323a223530653064663335636435326437373530333337376631326262613263376335223b733a33323a223163323238396361326232386137623465343830346537303430333265366661223b733a33323a223935316264663335383031333038636637316130396633323638306263393531223b733a33323a223539633033346366326432373961306165363163333430643332643232626163223b733a33323a226462323032306535653639633663376536326637333635306665376262353736223b733a33323a223062343865383263323534326365396236663262343730373166333135346239223b733a33323a223465363366663933353033353130643039386339323864613835656434656139223b733a33323a223933346164613665653239306438386266306530353432643232653965373462223b733a33323a223761306533646663333334353165363765623332393961613863633836366238223b733a33323a226466616434306465613231376439623364626332386366393762636236336561223b733a33323a226334396638616336623239393130656139346564653261663037633962306339223b733a33323a223963326462643761383534626339343564663433643066323738636466613438223b733a33323a223661323632343732633465343834336435393765613565363166626135326431223b733a33323a223464623235663432366561663438333666363638326531373461376431326164223b733a33323a223333313639363837373365393561326637383636616164303936666464393334223b733a33323a226137303135376465643761636635356337663230653539323462643834313265223b733a33323a226139323166306138646330343862343233613338346135636539306539373834223b733a33323a226262613932396439643031656461316266616563613537613861656632373338223b733a33323a223133326435366633346134383130386434336661623563376333663861656631223b733a33323a226664306437306532313061646633643262373865633231653539626135353633223b733a33323a223662316635396232323066316432633865383431613537356335633936363063223b733a33323a223361386338396365663731323839346362336366666263373639343863343639223b733a33323a226439303736613235336233363139343333396530626235313236653632636639223b733a33323a223836356138333437346131636133616536333962373865633363373261663965223b733a33323a226534323036643464303236663134343864393837386263663534646565373138223b733a33323a226333323461343339383630386265303830316264376563303038336536333433223b733a33323a223536323838643765303061613531663765346438316339383932373163333636223b733a33323a226564336433633433363535363537636335376362323236323838643530633566223b733a33323a223863303337626339623262386239393736633230633066313139633438333635223b733a33323a226637353938343462313763636661346661336161373036303733383266356435223b733a33323a226563636339323830613231663865313838356166613238633331636539323832223b733a33323a223937393864333338333431633962363932323537336465303062313233653635223b733a33323a226464646462613832383137306339633638656365386164626662633561366330223b733a33323a226365386232303932326164326364633065383534336163383731356364386238223b733a33323a223166636664616234346538363164383939396663613337653838653531346266223b733a33323a226338663537626132616364383333303966663865663665396563343338386666223b733a33323a223264306166623833373437653061666438666434646262636238323265653463223b733a33323a223434393739376563636630376665323862656638616262313163363932316466223b733a33323a226165316139626332373333663233306633383032303365336636333739626431223b733a33323a223730666162353665643139653730646336646337373435313438383438303263223b733a33323a223730653530333038343331656563613633646235333264356264323639653838223b733a33323a226465623764656237383537383737336465303364663534373233626632666637223b733a33323a226532353335633239613539356435306132656265613364383639666163653464223b733a33323a223632366364323730356265303335633034376635333364643636653936396234223b733a33323a223135353465353664373362316161386365336132353530346634663332343261223b733a33323a226666363962303036313531663465346533323337353861616365656336613034223b733a33323a223732623635353561326235636533613834646664363236356334343230383636223b733a33323a223134356462306437343165326334613730353338303031613731396631646130223b733a33323a223866343839666633643363623833623836343630653437613561623638616134223b733a33323a223263373138663561333766313235346638333362343538323137666236346639223b733a33323a223734636363326634353536373366336166666235336330306139623136316338223b733a33323a226638373763633333343435653730383063623866653563646564363233346336223b733a33323a223263353438653436613033656163326533316238396166393962656131313233223b733a33323a226237316431386237323530356538646565396438663261363532663661646430223b733a33323a223864336237653434393338623339663234343661666166623965623238643835223b733a33323a223866646166643062663964333535666666366262336334316230353430323530223b733a33323a223565326338326636326632316166643063356332643730663261656139326531223b733a33323a223863343461383631653331353063306465326232613032623634613363343166223b733a33323a223738633563653135303266313265376530663733656138363565613362653561223b733a33323a223433613430623561396336316537303235373961336230623236666630376235223b733a33323a223732623862656637636335343939653339313031633535343833663737386564223b733a33323a226361393162333365386130383862363864326233643536393039623135393830223b733a33323a223336316231313732633862393866666330303232616533376637656235623966223b733a33323a226133653831306138383464346335653439306430653131343139313933613832223b733a33323a223538653361303337623234643432323766623537613364323032313866326239223b733a33323a223034363932333034373137393030393330343536643163353739363062373039223b733a33323a223331363031653432663837303934313330613464653630643532366139346538223b733a33323a223834616364653533323361353864623436383662396463363433626361636431223b733a33323a223538323535663534653765316461366363343235393461313835323038626165223b733a33323a223463306138653234343835333834393030643432626365313730613530383136223b733a33323a226131313638386466666538356233653763653934613539616538643931383836223b733a33323a223833393365366432333865333535613736343039633130323831633931343032223b733a33323a223334393863333237353032643930346661623961643334333032616236393238223b733a33323a223065383835306237306162656332653863316632333538613336386264613265223b733a33323a223866356537636438636330363633353662653364343435613634613035336264223b733a33323a223262663161313865663164383166366464333165343533613530636436636234223b733a33323a223835326235306233346662643934636633373061333032303032613832306165223b733a33323a223062343261616231316138373433333463316539303865393431363162636130223b733a33323a223431343130373131653638653562336334303138653630653835663062383039223b733a33323a226561316364643032383239386130636435373539356639613236336435336664223b733a33323a223135633364373162313961306265393362633832346265306163643461303064223b733a33323a223964643462363264636236383937353439363739646163383133306430393866223b733a33323a223066393236656339633936363231353530386537346266363534303464306465223b733a33323a226466363762656630636132613733656262343466633962396135363935333265223b733a33323a226435643631653931346563303665393934663331633134326565346639346638223b733a33323a223934313639303739393635666366336533616234343235343434386435623131223b733a33323a226332653563333938336632363036303465303432396536353266373139306661223b733a33323a226232363661303630353331373839343930386232656334313734663465376463223b733a33323a223334343137356265343561303033356661633764656430366232393266323163223b733a33323a223466363738646234646462346532623136313737356337396364356632623534223b733a33323a223564383635336563313730343838303330393439366237333362363766396239223b733a33323a226230376161623432636131303738666661376639343130363734366262663036223b733a33323a226433313739653861356132363834343938363265663366623530613562643439223b733a33323a223837643038306136623638613838323566323934636538636232313164326432223b733a33323a223539636335373866343532346634623438303462653661353165366461636636223b733a33323a223766303831643464356562616132613066353430613264376537303539616463223b733a33323a223734633539366363353832653161646561313737383335373337376462343361223b733a33323a223264653035663234666164386564623137663265313639616662383131626235223b733a33323a226663623834323864363136373839613461643032613132393665616435343461223b733a33323a223039393034313963636535383637666330386539646566616361643665346434223b733a33323a223732653362323938663132373136363337383234376632336462646364646338223b733a33323a223662343535666363663038376362313330343863663034663635643630303531223b733a33323a223266616563353637363063346436633965333332383932663939643238623130223b733a33323a223263316336623735323261626632373661643739343938653262323066616437223b733a33323a223164616261376666313738613035306139373238636332626132646533336565223b733a33323a223139336538663934666334393034356666303837343731383565326537323132223b733a33323a223236376130646163393865636465313537646433663166653332663162333862223b733a33323a223065353936326231383330323463333764303362616535363738613361636538223b733a33323a223135396235616663323861616437343337636266653138666639393062653138223b7d733a343a2268617368223b733a36353a2231353962356166633238616164373433376362666531386666393930626531382d3065353936326231383330323463333764303362616535363738613361636538223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223538366564646339383034306536363262313836336366323830393261366535223b733a33323a223439613738363131656137323962343366326265303935363433663738363537223b7d733a343a2268617368223b733a36353a2234396137383631316561373239623433663262653039353634336637383635372d3538366564646339383034306536363262313836336366323830393261366535223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a323037323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32323a7b733a33323a223130303736316231633137656238643230376633663732633861356339356465223b733a33323a226132363839656266613639663132333161346435656664646630646563353638223b733a33323a223336343164613235396536356364633766333261343037616430613261643933223b733a33323a223234356231656263383663393331363232643034633538643362353536356263223b733a33323a223262366662346639326265333261393530343766646331626638633262383132223b733a33323a223762373563313534313332336265646439623466373865333734333338653030223b733a33323a223635383762323234316164326666656136303261346665353962373339373239223b733a33323a223435386363383234363534306638613338626538323231356235316232623530223b733a33323a223931366561623462356536336630323965356538306438333033353230666239223b733a33323a226231626631636137613564343135353332613634666231356234616166336538223b733a33323a226164386339653231316133613436333336363136386362383630666530303031223b733a33323a226238663538653032306633653764326165623964643538326165623333643730223b733a33323a226665653230636463343637383532316136353364373634356166396430626130223b733a33323a223435366234666661346564396664326263326464376263356236636531376632223b733a33323a223663326363386432343338343764363033353666323162303634316361333864223b733a33323a223739313935373565643134653565656163616661666135386633366664343764223b733a33323a226136323930626463386139613634316432326139613237343238623763633936223b733a33323a226363333362643134646633653938333361653538643366383434623736383139223b733a33323a223466623165626237306235336636636535323033316365373065633831353631223b733a33323a223534663135663834306265626238646564313336393265356431373937313337223b733a33323a226638663066393263393830323930623230366461343036656465313264343238223b733a33323a223037313939336434366634326564343165333231393938343563333335623063223b733a33323a223735636434306233616333393863313433333064653335366337336363656237223b733a33323a223163336463653432346535643530643337323932383231323365336536393964223b733a33323a223734303263306433343636666434336165323863306363633731663938313539223b733a33323a223761646163616639626465343635356164613264666335626365393965613061223b733a33323a223130383637353661643061663934326433386138303564323431333461343864223b733a33323a226463366630376532303034386463396131326630333938323734383436373165223b733a33323a226431353433383166626636383236303435303033663263666265353166323132223b733a33323a226430353735613363363431626335323636386237623366353463323033373863223b733a33323a223032343237366262383739313934623963666663366330353036366163353664223b733a33323a226266623837323838343236366634383537666433646632336635373766376636223b733a33323a223938383430623533333466353630343663653535393762666362633336613330223b733a33323a223734623330653962656664383965356264633437626437636330396137663231223b733a33323a226635653734663362323534333132633632323134316338386639313335323261223b733a33323a226362303936343734313431346331663730623966383237383531306333336135223b733a33323a226464343939616337613434323138656235356364326130386363383366653765223b733a33323a223737633238663932373532303632376537366364363831643164623638616334223b733a33323a223239646161323933376338396339643261616534663965663933386336623433223b733a33323a223566323365613964383962353532646437613532633935666332656661373866223b733a33323a223133666662633532643234386135326433306130646463313537656531353738223b733a33323a226635666331643732313764393432393939383061623130383830333566386666223b733a33323a226562393835383761303561663762376463343935333461396130336238636539223b733a33323a223632353063613638383161336137393830616565643863313335613532363232223b7d733a343a2268617368223b733a36353a2236323530636136383831613361373938306165656438633133356135323632322d6562393835383761303561663762376463343935333461396130336238636539223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587599393),
('jlp3hpcn14ffadsk66pfd7dbti', 0x5f5f5a467c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373539393339332e3536363939363b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226a6c70336870636e313466666164736b36367066643764627469223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373630323939333b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223666643762353464383065656439633631613163363561623935383031316664223b733a33323a223332626431316163656132356261353965323566356635383361343732313636223b7d733a343a2268617368223b733a36353a2233326264313161636561323562613539653235663566353833613437323136362d3666643762353464383065656439633631613163363561623935383031316664223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587599393),
('un8ui9gl7vdjcb275jhb992jcn', 0x5f5f5a467c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373536393736372e3639313237393b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22756e38756939676c3776646a63623237356a68623939326a636e223b7d7d, 1587569774);

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
('administrator_email', '\"abdelsamad.sabri@gmail.com\"'),
('default_site', '\"\"'),
('default_to_private', '\"0\"'),
('disable_file_validation', '\"0\"'),
('disable_jsonld_embed', '\"0\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"cours\"'),
('locale', '\"en_US\"'),
('media_type_whitelist', '{\"0\":\"application\\/msword\",\"1\":\"application\\/ogg\",\"2\":\"application\\/pdf\",\"3\":\"application\\/rtf\",\"4\":\"application\\/vnd.ms-access\",\"5\":\"application\\/vnd.ms-excel\",\"6\":\"application\\/vnd.ms-powerpoint\",\"7\":\"application\\/vnd.ms-project\",\"8\":\"application\\/vnd.ms-write\",\"9\":\"application\\/vnd.oasis.opendocument.chart\",\"10\":\"application\\/vnd.oasis.opendocument.database\",\"11\":\"application\\/vnd.oasis.opendocument.formula\",\"12\":\"application\\/vnd.oasis.opendocument.graphics\",\"13\":\"application\\/vnd.oasis.opendocument.presentation\",\"14\":\"application\\/vnd.oasis.opendocument.spreadsheet\",\"15\":\"application\\/vnd.oasis.opendocument.text\",\"16\":\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"17\":\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"18\":\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"19\":\"application\\/x-gzip\",\"20\":\"application\\/x-ms-wmp\",\"21\":\"application\\/x-msdownload\",\"22\":\"application\\/x-shockwave-flash\",\"23\":\"application\\/x-tar\",\"24\":\"application\\/zip\",\"25\":\"audio\\/midi\",\"26\":\"audio\\/mp4\",\"27\":\"audio\\/mpeg\",\"28\":\"audio\\/ogg\",\"29\":\"audio\\/x-aac\",\"30\":\"audio\\/x-aiff\",\"31\":\"audio\\/x-ms-wma\",\"32\":\"audio\\/x-ms-wax\",\"33\":\"audio\\/x-realaudio\",\"34\":\"audio\\/x-wav\",\"35\":\"image\\/bmp\",\"36\":\"image\\/gif\",\"37\":\"image\\/jp2\",\"38\":\"image\\/jpeg\",\"39\":\"image\\/pjpeg\",\"40\":\"image\\/png\",\"41\":\"image\\/tiff\",\"42\":\"image\\/x-icon\",\"43\":\"text\\/css\",\"44\":\"text\\/plain\",\"45\":\"text\\/richtext\",\"46\":\"video\\/divx\",\"47\":\"video\\/mp4\",\"48\":\"video\\/mpeg\",\"49\":\"video\\/ogg\",\"50\":\"video\\/quicktime\",\"51\":\"video\\/webm\",\"52\":\"video\\/x-ms-asf\",\"54\":\"video\\/x-msvideo\",\"55\":\"video\\/x-ms-wmv\"}'),
('pagination_per_page', '\"25\"'),
('property_label_information', '\"none\"'),
('recaptcha_secret_key', '\"\"'),
('recaptcha_site_key', '\"\"'),
('time_zone', '\"UTC\"'),
('use_htmlpurifier', '\"0\"'),
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
  `summary` longtext COLLATE utf8mb4_unicode_ci,
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
(1, 'abdelsamad.sabri@gmail.com', 'abdelsamadSABRI', '2020-04-16 08:58:00', '2020-04-16 08:58:00', '$2y$10$qqAUOr/zI71TztrrpCgUpu2wzK2KgVC55orrIVCW8TL6tWwgHpkvW', 'global_admin', 1),
(2, 'samuel.szoniecky@univ-paris8.fr', 'professeur', '2020-04-16 09:01:10', '2020-04-16 09:01:38', '$2y$10$WOo8LfIUU9uWPfgWOdPZ6.n7/1PiuiDTfCNdMy7HZYPcwTGNtuCJK', 'global_admin', 1);

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
('default_resource_template', 2, '\"\"'),
('locale', 2, '\"fr\"');

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
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `uri` longtext COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1D77583489329D25` (`resource_id`),
  KEY `IDX_1D775834549213EC` (`property_id`),
  KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  KEY `value` (`value`(190)),
  KEY `uri` (`uri`(190))
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(1, 1, 1, NULL, 'literal', '', 'Comédie', NULL, 1),
(2, 1, 4, NULL, 'literal', '', 'Ce qui fera rire petit et grand', NULL, 1),
(3, 1, 212, NULL, 'literal', '', '1', NULL, 1),
(4, 2, 1, NULL, 'literal', '', 'Bienvenue chez les ch\'tis', NULL, 1),
(5, 2, 4, NULL, 'literal', '', 'Bienvenue chez les Ch\'tis est un film français réalisé par Dany Boon, sorti le 20 février 2008 ...', NULL, 1),
(6, 2, 226, 1, 'resource', NULL, NULL, NULL, 1),
(10, 4, 223, NULL, 'literal', '', 'UGC Ciné Cité Les Halles', NULL, 1),
(11, 4, 4, NULL, 'literal', '', 'Cinéma situé au centre de Paris plusieurs RER et métro', NULL, 1),
(12, 4, 224, NULL, 'literal', '', '7, place de la Rotonde 75001 Paris', NULL, 1),
(13, 4, 1, NULL, 'literal', '', 'UGC Ciné Cité Les Halles', NULL, 1),
(14, 5, 10, NULL, 'literal', '', '1', NULL, 1),
(15, 5, 140, NULL, 'literal', '', 'Couchner', NULL, 1),
(16, 5, 139, NULL, 'literal', '', 'Benard', NULL, 1),
(17, 5, 182, NULL, 'literal', '', '06-11', NULL, 1),
(18, 5, 1, NULL, 'literal', '', 'Bernard Couchner', NULL, 1),
(19, 5, 4, NULL, 'literal', '', 'Mets une bonne ambiance', NULL, 1),
(20, 6, 221, NULL, 'literal', '', 'Soldire', NULL, 1),
(21, 6, 222, NULL, 'literal', '', '165', NULL, 1),
(22, 6, 1, NULL, 'literal', '', 'Soldir - salle', NULL, 1),
(23, 6, 4, NULL, 'literal', '', 'Elle a deux clim de chaque côté et ne peut pas avoir de spectacle ', NULL, 1),
(24, 7, 10, NULL, 'literal', '', '2', NULL, 1),
(25, 7, 140, NULL, 'literal', '', 'Boulangere', NULL, 1),
(26, 7, 139, NULL, 'literal', '', 'Brigitte', NULL, 1),
(27, 7, 182, NULL, 'literal', '', '06-30', NULL, 1),
(28, 7, 1, NULL, 'literal', '', 'Brigitte BOULANGERE', NULL, 1),
(29, 7, 4, NULL, 'literal', '', 'Timide mais serviable', NULL, 1),
(30, 8, 1, NULL, 'literal', '', 'Reservation 1', NULL, 1),
(31, 8, 4, NULL, 'literal', '', 'Pour l\'avant-première', NULL, 1),
(32, 8, 216, NULL, 'literal', '', '19/02/2008 20:00:00', NULL, 1),
(33, 8, 225, 2, 'resource', NULL, NULL, NULL, 1),
(34, 8, 229, 5, 'resource', NULL, NULL, NULL, 1),
(35, 8, 229, 7, 'resource', NULL, NULL, NULL, 1),
(36, 8, 227, 6, 'resource', NULL, NULL, NULL, 1),
(37, 9, 10, NULL, 'literal', '', '3', NULL, 1),
(38, 9, 140, NULL, 'literal', '', 'Dariosy', NULL, 1),
(39, 9, 139, NULL, 'literal', '', 'Mario', NULL, 1),
(40, 9, 182, NULL, 'literal', '', '11-07', NULL, 1),
(41, 9, 1, NULL, 'literal', '', 'Mario Dariosy', NULL, 1),
(42, 9, 4, NULL, 'literal', '', 'toujours à l\'heure', NULL, 1),
(43, 10, 1, NULL, 'literal', '', 'Action', NULL, 1),
(44, 10, 4, NULL, 'literal', '', 'ça va swinguer !', NULL, 1),
(45, 10, 212, NULL, 'literal', '', '2', NULL, 1),
(46, 11, 1, NULL, 'literal', '', 'Spider-Man: New Generation', NULL, 1),
(47, 11, 4, NULL, 'literal', '', 'pider-Man : New Generation est un film réalisé par Bob Persichetti et Peter Ramsey avec les voix de Stéphane Bak, Camélia Jordana. Synopsis : Spider-Man ...', NULL, 1),
(48, 11, 226, 10, 'resource', NULL, NULL, NULL, 1),
(49, 11, 212, NULL, 'literal', '', '2', NULL, 1),
(50, 12, 221, NULL, 'literal', '', 'MiniCub', NULL, 1),
(51, 12, 222, NULL, 'literal', '', '65', NULL, 1),
(52, 12, 1, NULL, 'literal', '', 'Minicub', NULL, 1),
(53, 12, 4, NULL, 'literal', '', 'Ceci sont pour les amoureux du tout petit', NULL, 1),
(54, 12, 228, 4, 'resource', NULL, NULL, NULL, 1),
(55, 6, 228, 4, 'resource', NULL, NULL, NULL, 1),
(56, 13, 1, NULL, 'literal', '', 'Reservation 2', NULL, 1),
(57, 13, 4, NULL, 'literal', '', 'Une heure parfaite pour se prélasser devant un film de super héros', NULL, 1),
(58, 13, 216, NULL, 'literal', '', '19/07/2020 11:15:00', NULL, 1),
(59, 13, 225, 11, 'resource', NULL, NULL, NULL, 1),
(60, 13, 229, 9, 'resource', NULL, NULL, NULL, 1),
(61, 13, 229, 7, 'resource', NULL, NULL, NULL, 1),
(62, 13, 227, 12, 'resource', NULL, NULL, NULL, 1);

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
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  KEY `IDX_9099C97B7E3C61F9` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(5, 1, 'http://ontologies.smile.deri.ie/pdo#', 'pdo', 'Project Documents Ontology', ''),
(7, 1, 'https://localhost/soccinema/', 'socciname', 'soccinema', '');

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
