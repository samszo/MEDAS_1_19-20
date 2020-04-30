-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 30 avr. 2020 à 13:59
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `omk_medas`
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
(1, 'items', 1, 1, 'Auteur', 'Auteur\n1859\nHenri\nBergson'),
(2, 'items', 1, 1, 'Auteur', 'Auteur\n1839\nSully\nPrudhomme'),
(3, 'items', 1, 1, 'Auteur', 'Auteur\n1830\nFrédéric\nMistral'),
(4, 'items', 1, 1, 'Auteur', 'Auteur\n1866\nRomain\nRolland'),
(5, 'items', 1, 1, 'Auteur', 'Auteur\n1844\nAnatole\nFrance'),
(6, 'items', 1, 1, 'Auteur', 'Auteur\n1881\nFrançois\nMauriac'),
(7, 'items', 1, 1, 'Auteur', 'Auteur\n1913\nAlbert\nCamus'),
(8, 'items', 1, 1, 'Auteur', 'Auteur\n1905\nJean-Paul\nSartre '),
(9, 'items', 1, 1, 'Auteur', 'Auteur\n1869\nAndré\nGide'),
(10, 'items', 1, 1, 'L\'évolution créatrice', 'L\'évolution créatrice\n1907'),
(11, 'items', 1, 1, 'Le Prisme', 'Le Prisme\n1886'),
(12, 'items', 1, 1, 'Coupo Santo', 'Coupo Santo\n1867'),
(13, 'items', 1, 1, 'Au-dessus de la Mêlée', 'Au-dessus de la Mêlée\n1915'),
(14, 'items', 1, 1, 'Histoire Contemporaine', 'Histoire Contemporaine\n1899'),
(15, 'items', 1, 1, 'Les Thibaut', 'Les Thibaut\n1922-1940'),
(16, 'items', 1, 1, 'L\'Etranger', 'L\'Etranger\n1942'),
(17, 'items', 1, 1, 'Exil', 'Exil\n1945'),
(18, 'items', 1, 1, 'Les Mots', 'Les Mots\n1944'),
(19, 'items', 1, 1, 'Les Faux-Monnayeurs', 'Les Faux-Monnayeurs\n1925'),
(20, 'items', 1, 1, 'Prix Nobel', 'Prix Nobel\n1927'),
(21, 'items', 1, 1, 'Prix Nobel', 'Prix Nobel\n1901'),
(22, 'items', 1, 1, 'Prix Nobel', 'Prix Nobel\n1904'),
(23, 'items', 1, 1, 'Prix Nobel', 'Prix Nobel\n1915'),
(24, 'items', 1, 1, 'Prix Nobel', 'Prix Nobel\n1921'),
(25, 'items', 1, 1, 'Prix Nobel', 'Prix Nobel\n1937'),
(26, 'items', 1, 1, 'Prix Nobel', 'Prix Nobel\n1952'),
(27, 'items', 1, 1, 'Prix Nobel', 'Prix Nobel\n1957'),
(28, 'items', 1, 1, 'Prix Nobel', 'Prix Nobel\n1964'),
(29, 'items', 1, 1, 'Prix Nobel', 'Prix Nobel\n1947'),
(30, 'item_sets', 1, 1, 'Auteur', 'Auteur\nAuteur\nAuteur\nAuteur\nAuteur\nAuteur\nAuteur\nAuteur\nAuteur\nAuteur'),
(31, 'item_sets', 1, 1, 'Oeuvre', 'Oeuvre\nLes Faux-Monnayeurs\nLes Mots\nExil\nL\'Etranger\nLes Thibaut\nHistoire Contemporaine\nAu-dessus de la Mêlée\nCoupo Santo\nLe Prisme\nL\'évolution créatrice'),
(32, 'item_sets', 1, 1, 'Prix Nobel', 'Prix Nobel \nPrix Nobel\nPrix Nobel\nPrix Nobel\nPrix Nobel\nPrix Nobel\nPrix Nobel\nPrix Nobel\nPrix Nobel\nPrix Nobel\nPrix Nobel'),
(33, 'items', 1, 1, 'Auteur', 'Auteur\n1881\nMartin\nRoger');

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
(1),
(2),
(3),
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
(33);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

CREATE TABLE `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_item_set`
--

INSERT INTO `item_item_set` (`item_id`, `item_set_id`) VALUES
(1, 30),
(2, 30),
(3, 30),
(4, 30),
(5, 30),
(6, 30),
(7, 30),
(8, 30),
(9, 30),
(10, 31),
(11, 31),
(12, 31),
(13, 31),
(14, 31),
(15, 31),
(16, 31),
(17, 31),
(18, 31),
(19, 31),
(20, 32),
(21, 32),
(22, 32),
(23, 32),
(24, 32),
(25, 32),
(26, 32),
(27, 32),
(28, 32),
(29, 32),
(33, 30);

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

CREATE TABLE `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_set`
--

INSERT INTO `item_set` (`id`, `is_open`) VALUES
(30, 0),
(31, 0),
(32, 0);

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
('PNZWR8AnPWVrAiRbDZbI59R3auMxGFms', 2, '2020-04-16 09:45:49', 1);

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
(185, 1, 5, 'abstract', 'has abstract', 'Προορίζεται για την DBpedia.'),
(186, 2, 6, 'Nom', 'Nom', NULL),
(187, 2, 6, 'Prénom', 'Prénom', NULL),
(188, 2, 6, 'Naissance', 'Naissance', NULL),
(189, 2, 6, 'Décès', 'Date de naissance', NULL),
(190, 2, 6, 'Parution', 'Parution', NULL),
(191, 2, 6, 'Titre', 'Titre de l\'oeuvre', NULL);

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
(1, 1, 94, 2, NULL, 'Auteur', 1, '2020-04-22 21:48:49', '2020-04-22 22:32:09', 'Omeka\\Entity\\Item'),
(2, 1, 94, 2, NULL, 'Auteur', 1, '2020-04-22 21:49:26', '2020-04-22 22:32:35', 'Omeka\\Entity\\Item'),
(3, 1, 94, 2, NULL, 'Auteur', 1, '2020-04-22 21:51:45', '2020-04-22 22:33:00', 'Omeka\\Entity\\Item'),
(4, 1, 94, 2, NULL, 'Auteur', 1, '2020-04-22 21:55:04', '2020-04-22 22:33:30', 'Omeka\\Entity\\Item'),
(5, 1, 94, 2, NULL, 'Auteur', 1, '2020-04-22 21:55:31', '2020-04-22 22:33:55', 'Omeka\\Entity\\Item'),
(6, 1, 94, 2, NULL, 'Auteur', 1, '2020-04-22 21:57:34', '2020-04-22 22:34:17', 'Omeka\\Entity\\Item'),
(7, 1, 94, 2, NULL, 'Auteur', 1, '2020-04-22 21:58:30', '2020-04-22 22:34:40', 'Omeka\\Entity\\Item'),
(8, 1, 94, 2, NULL, 'Auteur', 1, '2020-04-22 21:59:34', '2020-04-22 22:35:14', 'Omeka\\Entity\\Item'),
(9, 1, 94, 2, NULL, 'Auteur', 1, '2020-04-22 21:59:56', '2020-04-22 22:35:36', 'Omeka\\Entity\\Item'),
(10, 1, 3, 3, NULL, 'L\'évolution créatrice', 1, '2020-04-22 22:00:46', '2020-04-22 22:36:10', 'Omeka\\Entity\\Item'),
(11, 1, 3, 3, NULL, 'Le Prisme', 1, '2020-04-22 22:01:08', '2020-04-22 22:36:29', 'Omeka\\Entity\\Item'),
(12, 1, 3, 3, NULL, 'Coupo Santo', 1, '2020-04-22 22:01:28', '2020-04-22 22:37:41', 'Omeka\\Entity\\Item'),
(13, 1, 3, 3, NULL, 'Au-dessus de la Mêlée', 1, '2020-04-22 22:02:02', '2020-04-22 22:38:01', 'Omeka\\Entity\\Item'),
(14, 1, 3, 3, NULL, 'Histoire Contemporaine', 1, '2020-04-22 22:02:32', '2020-04-22 22:38:37', 'Omeka\\Entity\\Item'),
(15, 1, 3, 3, NULL, 'Les Thibaut', 1, '2020-04-22 22:03:00', '2020-04-22 22:38:53', 'Omeka\\Entity\\Item'),
(16, 1, 3, 3, NULL, 'L\'Etranger', 1, '2020-04-22 22:03:22', '2020-04-22 22:39:08', 'Omeka\\Entity\\Item'),
(17, 1, 3, 3, NULL, 'Exil', 1, '2020-04-22 22:03:49', '2020-04-22 22:39:46', 'Omeka\\Entity\\Item'),
(18, 1, 3, 3, NULL, 'Les Mots', 1, '2020-04-22 22:04:07', '2020-04-22 22:40:07', 'Omeka\\Entity\\Item'),
(19, 1, 3, 3, NULL, 'Les Faux-Monnayeurs', 1, '2020-04-22 22:05:13', '2020-04-22 22:40:42', 'Omeka\\Entity\\Item'),
(20, 1, 3, 4, NULL, 'Prix Nobel', 1, '2020-04-22 22:05:53', '2020-04-22 22:41:05', 'Omeka\\Entity\\Item'),
(21, 1, 3, 4, NULL, 'Prix Nobel', 1, '2020-04-22 22:06:12', '2020-04-22 22:41:20', 'Omeka\\Entity\\Item'),
(22, 1, 3, 4, NULL, 'Prix Nobel', 1, '2020-04-22 22:06:32', '2020-04-22 22:41:34', 'Omeka\\Entity\\Item'),
(23, 1, 3, 4, NULL, 'Prix Nobel', 1, '2020-04-22 22:06:53', '2020-04-22 22:41:51', 'Omeka\\Entity\\Item'),
(24, 1, 3, 4, NULL, 'Prix Nobel', 1, '2020-04-22 22:07:15', '2020-04-22 22:42:14', 'Omeka\\Entity\\Item'),
(25, 1, 3, 4, NULL, 'Prix Nobel', 1, '2020-04-22 22:07:41', '2020-04-22 22:42:30', 'Omeka\\Entity\\Item'),
(26, 1, 3, 4, NULL, 'Prix Nobel', 1, '2020-04-22 22:08:59', '2020-04-22 22:42:50', 'Omeka\\Entity\\Item'),
(27, 1, 3, 4, NULL, 'Prix Nobel', 1, '2020-04-22 22:09:17', '2020-04-22 22:43:07', 'Omeka\\Entity\\Item'),
(28, 1, 3, 4, NULL, 'Prix Nobel', 1, '2020-04-22 22:09:38', '2020-04-22 22:43:27', 'Omeka\\Entity\\Item'),
(29, 1, 3, 4, NULL, 'Prix Nobel', 1, '2020-04-22 22:10:17', '2020-04-22 22:43:42', 'Omeka\\Entity\\Item'),
(30, 1, 94, 2, NULL, 'Auteur', 1, '2020-04-22 22:15:21', '2020-04-22 22:15:21', 'Omeka\\Entity\\ItemSet'),
(31, 1, 3, 3, NULL, 'Oeuvre', 1, '2020-04-22 22:16:13', '2020-04-22 22:16:13', 'Omeka\\Entity\\ItemSet'),
(32, 1, 3, 4, NULL, 'Prix Nobel', 1, '2020-04-22 22:16:48', '2020-04-22 22:16:48', 'Omeka\\Entity\\ItemSet'),
(33, 1, 94, 2, NULL, 'Auteur', 1, '2020-04-22 22:56:13', '2020-04-22 22:56:13', 'Omeka\\Entity\\Item');

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
(106, 2, 6, 'Identité', 'Identité', NULL),
(107, 2, 6, 'Genre', 'Genre', NULL),
(108, 2, 6, 'Auteur', 'Auteur', NULL),
(109, 2, 6, 'Oeuvre', 'Oeuvre', NULL);

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
(2, 1, 94, NULL, NULL, 'Auteur '),
(3, 1, 3, NULL, NULL, 'Oeuvre'),
(4, 1, 3, NULL, NULL, 'Nobel');

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
(21, 2, 1, NULL, NULL, 1, NULL, 0, 0),
(22, 2, 4, NULL, NULL, 2, NULL, 0, 0),
(23, 2, 182, NULL, NULL, 3, NULL, 0, 0),
(24, 2, 139, NULL, NULL, 4, NULL, 0, 0),
(25, 2, 140, NULL, NULL, 5, NULL, 0, 0),
(26, 3, 1, NULL, NULL, 1, NULL, 0, 0),
(27, 3, 4, NULL, NULL, 2, NULL, 0, 0),
(28, 3, 87, NULL, NULL, 3, NULL, 0, 0),
(29, 4, 1, NULL, NULL, 1, NULL, 0, 0),
(30, 4, 4, NULL, NULL, 2, NULL, 0, 0),
(31, 4, 7, NULL, NULL, 3, NULL, 0, 0);

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
('0mijtk7tkvv5dq407454q1lutl', 0x5f5f5a467c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383234373639302e3437363933383b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a223939766c716939336a766f71716934726b326639637162707561223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383234323137303b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538383234383035343b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383234333237333b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383235313233363b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223465653861346632346565313233363039346639323162643535306262383431223b733a33323a223363646530636564633930313034383231353835613535363036643365636363223b733a33323a223830313461363439353565376262653161303539346331383061313162353734223b733a33323a226535346534663664636565646561633265333234643735336631303865386366223b733a33323a223136396335316638663431396131333835343330623532306431303738363637223b733a33323a223030393665396366396261343065633534303132373164333539343565353237223b7d733a343a2268617368223b733a36353a2230303936653963663962613430656335343031323731643335393435653532372d3136396335316638663431396131333835343330623532306431303738363637223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c733a34323a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e2f757365722f322f65646974223b4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223765376265626461336237306363656636383738323064353438633439376439223b733a33323a226634353466396366326133666466613834383533343930316634363431656632223b733a33323a223536336539336530326166333430366439316431313039353031303437633737223b733a33323a226138326532353466333866623439303434346435386431646638663535393039223b7d733a343a2268617368223b733a36353a2261383265323534663338666234393034343464353864316466386635353930392d3536336539336530326166333430366439316431313039353031303437633737223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3935313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a223162383631666137313736663761393030313431663132323862346331396535223b733a33323a223866336634393330353637313639393664616563363566306463303236306636223b733a33323a226366666662656463316461323133643838313933363631386435643161623633223b733a33323a223363323639366232366230333233346263363261363434333733326163633062223b733a33323a223638663832323464363364363832623039636436643537316431353033623430223b733a33323a226262643336396530663033653064393865353330353030393039313434386563223b733a33323a223131306136336561313532313261306535366234343165643932353736366261223b733a33323a226564633665666136373062653638323665306535623834353735316337323266223b733a33323a226162646265626334336566623731336364616637393465396433353266633262223b733a33323a226336616134393239356164373136636337306535336464353831326536656239223b733a33323a223636316562646630626239623132333865393165323638616431666538353065223b733a33323a226638386536366564376337666336343463646532356637643831356639393336223b733a33323a226164636433326234326264633963633962616430323061363064656537616365223b733a33323a223738643562363435396261656533646162663937663634373232306339626239223b733a33323a223838376561656439373634333764343133643933633763666431323037333262223b733a33323a223438346632396561646639666538653438623536383366626361313238623731223b7d733a343a2268617368223b733a36353a2234383466323965616466396665386534386235363833666263613132386237312d3838376561656439373634333764343133643933633763666431323037333262223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223437666130613166666134393862336666613839336661316336646464653865223b733a33323a226362326664663961343363346562376634346261643964313936356565333232223b733a33323a226539613533656561306133383431386231663663636663623435313939643264223b733a33323a226337376331663833356166653665323939353364653230613137343831336463223b733a33323a223831376438646234656461343734663133633638376163613138636137396530223b733a33323a223832343732623964653936346430323265376565323139383764323264616133223b733a33323a226237373966353463616662353233363734626637336239666635616261616261223b733a33323a226334663539386265363665393539336336346634373837303531376363393733223b7d733a343a2268617368223b733a36353a2263346635393862653636653935393363363466343738373035313763633937332d6237373966353463616662353233363734626637336239666635616261616261223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1588247690),
('224k32ru5lg290hfvib0o1fmbv', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373132333537382e3731353138343b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226c30617368346f6338756b396b64693275677035673864717536223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373132373132303b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373132373136303b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373132373137393b7d7d72656469726563745f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e2f75736572223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223634623864626430646264353234653038353238396466646533616535316233223b733a33323a223932346439666338626631343639353461616639393661313239333830323165223b7d733a343a2268617368223b733a36353a2239323464396663386266313436393534616166393936613132393338303231652d3634623864626430646264353234653038353238396466646533616535316233223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226337353661323836393161373537636236346337353962353965323431343239223b733a33323a223936386536613061666661336265376331396636353633666662646163663132223b733a33323a223761396633666232376238373063356137393839666238383564623662666330223b733a33323a223733363862656261323930333934653333346639653064333631623362623864223b7d733a343a2268617368223b733a36353a2237333638626562613239303339346533333466396530643336316233626238642d3761396633666232376238373063356137393839666238383564623662666330223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226362666538383938666562336239663663623938656439326665613137346236223b733a33323a223765336333636363373435343965383632363735383761653330343133646265223b7d733a343a2268617368223b733a36353a2237653363336363633734353439653836323637353837616533303431336462652d6362666538383938666562336239663663623938656439326665613137346236223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587123579),
('2bpd8eh0985ovjfe33fniv42s0', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383233373939302e3034303235313b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2238707573316b64766963646a31637039317533706866616b326b223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383234313533303b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383234313534363b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538383234313538343b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a226539313138393232353639616239363631333863376131386336366562363461223b733a33323a226433626330353464376435396133633039623139653737323135646432656638223b733a33323a226636303561313030613934366163663438386336613532623661323535373831223b733a33323a226433643831616164393765393862383538613562363664623933653466313666223b733a33323a226638363065366232626536356232613637633539316539373439336331333331223b733a33323a223134613435363133663363343163646134396133363964353261616239636232223b7d733a343a2268617368223b733a36353a2231346134353631336633633431636461343961333639643532616162396362322d6638363065366232626536356232613637633539316539373439336331333331223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226636633563323664306563353661313232613764393830306162666638663064223b733a33323a223531373839376437643637313333383334383566393637333439353835346531223b733a33323a223039393464653363356234396538363232653565313966653036303936353236223b733a33323a223736333233316335666631376263646236313431633034333839316636313733223b7d733a343a2268617368223b733a36353a2237363332333163356666313762636462363134316330343338393166363137332d3039393464653363356234396538363232653565313966653036303936353236223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223762313638363238636361333266333537396439306163366233356362666439223b733a33323a226265306438633665366135613166653365323936366433353731623534613632223b733a33323a223634303131616430313336363062623165343037316339363165313061623631223b733a33323a226161653461376337356632613465633939653666366337316236303964383737223b733a33323a223066336336643766666534623831383633643636353364333938323330663361223b733a33323a223364343830373632383030336330373333353064383836643162633661643634223b7d733a343a2268617368223b733a36353a2233643438303736323830303363303733333530643838366431626336616436342d3066336336643766666534623831383633643636353364333938323330663361223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1588237990),
('3bc836lle7df21fi3tgqjk9s5i', 0x5f5f5a467c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383233383038342e3930313438313b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2231646b33316f33766a6e7534346e6e6e386e6a34756c38303765223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383234313630383b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538383234313638323b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a223864393433646563346538393161306630326532633436303265323034323732223b733a33323a223063656632313130306239386466613835363966613665373035633066366563223b733a33323a226266386462613032643635333661653730323661616563613361353837363964223b733a33323a226263646239613161626166386561373231386164363166663134636538623535223b733a33323a223637343066396134373636633137626130303065313531306562626364613533223b733a33323a223962363531663637376138383238373664353136613730643235356535393061223b733a33323a223562646561636261663762316539386333323735353337383539303937343639223b733a33323a226564343764393163323232306538376435336339373033333166393661316131223b733a33323a226134633033356134353730626231313361396337396635393036353135386538223b733a33323a226664393637363137373931366262613630326330333035356364616562366366223b7d733a343a2268617368223b733a36353a2266643936373631373739313662626136303263303330353563646165623663662d6134633033356134353730626231313361396337396635393036353135386538223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c733a34323a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e2f757365722f322f65646974223b5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223936643438663163353466303462303330663061343136346638373365343261223b733a33323a223832393966323061333163343530356235343336353738633763616466356537223b733a33323a223131346635616139666330316433636336643664363230303036613165613930223b733a33323a223031303130623734326666616232646536393234636161653036616661646663223b7d733a343a2268617368223b733a36353a2230313031306237343266666162326465363932346361616530366166616466632d3131346635616139666330316433636336643664363230303036613165613930223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1588238084),
('4kinl845h6arf9aloiq991ffkj', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383233383535302e3931353734393b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2234726575707674326633736d6d67686666333361396331323431223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383234313639323b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383234323133373b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538383234323134363b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223138386166326131373164303538333839333264383531623238353162336630223b733a33323a223766363630366161353034363431366266623337363564313332343661313431223b733a33323a223534616233383535396231666337333263653938333439353836613636363164223b733a33323a223230326162663638326632626239383436363032613633303561336236376334223b7d733a343a2268617368223b733a36353a2232303261626636383266326262393834363630326136333035613362363763342d3534616233383535396231666337333263653938333439353836613636363164223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313433323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31343a7b733a33323a223236323062666332336439653164373662356130343239663436643433613764223b733a33323a223363333261346436323062333135663463326132353165363735613263393764223b733a33323a223832626564613065383739623537616131343466643434396165393935326232223b733a33323a223265346463633865643439623536376139656366316332356666346239636163223b733a33323a223962343763616166396466366264626435333530323932653432306164666131223b733a33323a226530643238356431626139386437303939333732653532623464383236353963223b733a33323a223164646439616364303766346432323964666364316466396361383065396233223b733a33323a226136636439336161663136636135316338366439646333396139333339333337223b733a33323a226263633561626330393531623732346636323037313333666366306264616236223b733a33323a223862383333633632636135343036626566636635313565316562333236363062223b733a33323a226534303766306130313433363235633134666161346433363139616634623832223b733a33323a226335323835663063633036666366353138653232326333363338343432663432223b733a33323a223230636364313864393737653533316532373264353436313466326436653734223b733a33323a223338373837356262656664393763393165626335393438303936633036623761223b733a33323a226233383863383035386435353266393366363230393661323564306361313461223b733a33323a226136353338333834386135646164613535636635623035613434643864306237223b733a33323a223730633736653664663937383234643537353236333938653065373866663834223b733a33323a226265653131646462316639663063313232383731336438303161316638363964223b733a33323a226664393866313762303935353733653036366534333837613535373762346431223b733a33323a223462346161646263396432393333633438373633333764313830396634666334223b733a33323a223063373163653866356636313835663037366634633761343733383363323030223b733a33323a226563646234346262303939396333613637656138393333616533633464376564223b733a33323a223133356136363236323665616663653136373734356539626335306434643961223b733a33323a226239613563633361653635313435393833383663663736653238346332373530223b733a33323a226363356133366639303930373761343739663838613631386131636136306331223b733a33323a223566303539643064323762366632663334356333643262343332636666343137223b733a33323a226361333762613836643931336639656237336339643961663138303266626339223b733a33323a223830303233366335396535616631393464626334356365333931626232343535223b7d733a343a2268617368223b733a36353a2238303032333663353965356166313934646263343563653339316262323435352d6361333762613836643931336639656237336339643961663138303266626339223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223637356332326338396531373465373330636133626332333439313031623934223b733a33323a226132396135633131343266333038383034393564646539373934376239346430223b733a33323a223235323132373933316436326337653833313839333565373065616533663837223b733a33323a226135316638636664356639363534626332303862623533663161306461393265223b733a33323a226339623834666638333661343531616233396638373231663839383030313733223b733a33323a223232613639343334333232346335626364666238316538383237653133313161223b733a33323a226664376263666233393230353032663163663264386330333531366562633363223b733a33323a226430376464363033333930386531323961613238383163663638323533303533223b7d733a343a2268617368223b733a36353a2264303764643630333339303865313239616132383831636636383235333035332d6664376263666233393230353032663163663264386330333531366562633363223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1588238550),
('hhi05t4qcleqjkgsgoudsprj59', 0x5f5f5a467c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373033303438302e3735333737323b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226e636330333732386675676c7665646c72756f6e747336666576223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373033323333323b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373033323731333b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373033343038303b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373033343037383b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226465643463616135323261363662313966613861303133313933323133396462223b733a33323a223937613737336636346536396337633038393537613133326463313831343263223b7d733a343a2268617368223b733a36353a2239376137373366363465363963376330383935376131333264633138313432632d6465643463616135323261363662313966613861303133313933323133396462223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223235663234323836623039363132656635306538346538383437356230303135223b733a33323a223363333730653734346231613762396531356366653261616664346437633861223b7d733a343a2268617368223b733a36353a2233633337306537343462316137623965313563666532616166643464376338612d3235663234323836623039363132656635306538346538383437356230303135223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3739313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a363a7b733a33323a223138656438643431333030393063316563366438663536656462353036656439223b733a33323a226438383538333636353731616136623466373832643066303839613233633539223b733a33323a223830396339643465376139383763373532623063616566393263386339356661223b733a33323a226435666461323831333263363330653863616434613639623137643939326634223b733a33323a226131623233363739626631663539643833366634353435316335613936336534223b733a33323a223861363736623264396361366535323463663163343738366261353939323065223b733a33323a223163356162306537326364376138343661316231663661366561376638653336223b733a33323a223464643139316566333332333434303335663236303835303063336562653862223b733a33323a223539653335303336366133356462376335633433643139623636346233326666223b733a33323a226331383430383163393462323366376430363538666137653339313738303864223b733a33323a223662646431333332313034363237666136636230643131326632653332363262223b733a33323a223130346534373763633666383230323937636361383965306635366637343763223b7d733a343a2268617368223b733a36353a2231303465343737636336663832303239376363613839653066353666373437632d3662646431333332313034363237666136636230643131326632653332363262223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a223531303165643466316533386536646663376130306562336637326531663765223b733a33323a226433343338323334313262613261383265363038616366643732393263373761223b733a33323a223963383065383136316236363435613263323030373233623563316339636137223b733a33323a223666386661623662623237653136626563393833616432626231633162373135223b733a33323a226466663934666266666265373265326338326364653135373734343637633565223b733a33323a226639653634633433383733383965393834623561623435646139613035633831223b733a33323a223866613933323961643437643037393636396231346465303166306263626530223b733a33323a226664313834646461613263303235656364643366613364363034616638356631223b733a33323a223431613165313431343861396666373632343466323864623232393032353666223b733a33323a226633373061396139613063333362653633303562373161663634333435356264223b7d733a343a2268617368223b733a36353a2266333730613961396130633333626536333035623731616636343334353562642d3431613165313431343861396666373632343466323864623232393032353666223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587030480),
('kf6kt0geoa965lv3o1i0beqdf9', 0x5f5f5a467c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383233353039362e3134343435333b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2238373964676269676b706b6b74397533616d67326c6863636f6b223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383233383636333b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226166316130383932633766623538323562373565306635663133333032613235223b733a33323a223131313530323232316164383336353065353862646530343863326236333832223b7d733a343a2268617368223b733a36353a2231313135303232323161643833363530653538626465303438633262363338322d6166316130383932633766623538323562373565306635663133333032613235223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1588235096),
('qqbobrtljhrkv76dpcgkckf1oh', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383234373839362e3632373232363b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a227032703534303535373262757330327331706861746874356b64223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383235313239333b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383235313439373b7d733a35363a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383235313430313b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223665393834303934333539623464613166343563623761333061633939623336223b733a33323a223465646631313266373430643266343135666431306231613933616663653535223b733a33323a223836356239623262376561633961326261343633386236376238346534316434223b733a33323a223736633437386564316437386335353235356163373836643237633035623932223b7d733a343a2268617368223b733a36353a2237366334373865643164373863353532353561633738366432376330356239322d3836356239623262376561633961326261343633386236376238346534316434223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313433323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31343a7b733a33323a223962363935643063646465346363303537336436623638363163353733313965223b733a33323a223434636162303533626632333362656534373639323438333931653065656466223b733a33323a223362326138316561346538316466363536306535623137303835303736613264223b733a33323a223761643738623964336335386536363837373331653364356635333139303530223b733a33323a223738663238613466316666356536323833376438343630363236663761316363223b733a33323a223939336634343734303064613862636436643766373565306136663937653766223b733a33323a223333646134306331343336366662656132386264653562623634666565326434223b733a33323a223961636563346561633164333364643736366336613764656563383037323130223b733a33323a223233663165356436313733383338326463376530383038366264386662343461223b733a33323a226164616634663063356633343231336338363534383234393336323864336562223b733a33323a226464323464653938326337393138613766663739636237383131383235303032223b733a33323a223032393365373237643531646630386233363038623737656234633333613761223b733a33323a223832316566366138346266393435366132663730356566303661656365383430223b733a33323a223136393633323131333030363333643936353438313732393338636531303031223b733a33323a223564646430613066633633313630393334303562333332376631613736373133223b733a33323a223965393337303732356462303339366534626461376534383064353938336535223b733a33323a223337316532363231316166653137306466656636653639353065393562633762223b733a33323a223030386132346565623534306633323765313766326537336236643764363634223b733a33323a223034373130393763343533643235623861643831383864343038333030366330223b733a33323a223166646261373332616234346162323133333230656330376363336637666264223b733a33323a223539643033633334396637366463373134316163633962303532623463643931223b733a33323a226562623966373561356237343633336239646466363131333839363138333831223b733a33323a223265376434303931643864393433356464303639333966353666643834346333223b733a33323a226463363436646636656434646664323765613233613935306361663263356334223b733a33323a226130363764646339666333626664663961623433383064646635313963353631223b733a33323a226165316137623132383232323339383661306166373661323039373938333331223b733a33323a226364626332316631663165636565356434373935613738363936333230623338223b733a33323a226236393263306138323262653862616638376135643132613538383962663035223b7d733a343a2268617368223b733a36353a2262363932633061383232626538626166383761356431326135383839626630352d6364626332316631663165636565356434373935613738363936333230623338223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223930376532333037343632333761613965663034643935613634306234303833223b733a33323a226531653163363235353636633865386438653262643837356433316137323334223b7d733a343a2268617368223b733a36353a2265316531633632353536366338653864386532626438373564333161373233342d3930376532333037343632333761613965663034643935613634306234303833223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1588247897);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('rj08pbrrcn1tns7opk8dbltejh', 0x5f5f5a467c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383233373735382e3930333334383b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a223433667366307166703934696d64656a7437647470766f633872223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383233383639363b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226363356538306630623336373530643538616531323230323963313730616133223b733a33323a226536303635326433616364313066636536623764623632346532363734313038223b7d733a343a2268617368223b733a36353a2265363036353264336163643130666365366237646236323465323637343130382d6363356538306630623336373530643538616531323230323963313730616133223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b, 1588237758);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('sj7nofte4l0hard04of9c8hr8a', 0x5f5f5a467c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373539363137332e3537343538323b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226e6d3768326f72367238646465616e3567306970373461696865223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373530323135393b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539343534333b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539353432353b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373539393733373b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539393733343b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226364656635343261663265663239376634626533373539306238363238363661223b733a33323a226235303534623837313934656235396534643662313531346135333361623963223b7d733a343a2268617368223b733a36353a2262353035346238373139346562353965346436623135313461353333616239632d6364656635343261663265663239376634626533373539306238363238363661223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313433323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31343a7b733a33323a226463356132333463393463316365623234393338613032396137653664326637223b733a33323a226135363166616633303339636366303134613237323434313430616436653831223b733a33323a223135643034363430306232373461613564363862336632623764656634366535223b733a33323a223461663732626663306661633466333131323230373562333435313131356138223b733a33323a226430373664323336386636333638326133623665373934323763666333313038223b733a33323a223039313265313961346233343438636561666561356661353361313466386266223b733a33323a223732343734313661633062376438336531393335353039346231353166353230223b733a33323a226333623266386366333037666561396637363134663164326366626437623532223b733a33323a223062346333633839376533303536636238633939343032613632656164396266223b733a33323a223165353665636539656538643964643836633033623665346263303561626365223b733a33323a223833316464623363656236383731383832343432356239386635313537353839223b733a33323a223939623032656261336338656366303265376339383131303365346638383937223b733a33323a223638363132306630326534346634663465396239386135326330616466383561223b733a33323a223536323766313433386230353730333735386534313166396330383139356661223b733a33323a226366383965353365643237316465353663303537313564303863343735336334223b733a33323a223939623661303539356532653338653961373662343237343130303433363564223b733a33323a223435663265383066353032663063316132366663616363393063643765363763223b733a33323a226131663332623833313434656630613635623731663564646132303066323461223b733a33323a223661646634313937343163346631663233633465633736643261646661316137223b733a33323a223465623435666238303265326131383735346631663738323935366562616164223b733a33323a223339323765616264393032323666306336383736626165393365336631373737223b733a33323a226536653136663437626465363562366462636561353463623636663338326263223b733a33323a226563393135613530656262666131653031326330623235653834353161313733223b733a33323a226364623736363139323063656535343938323761303035373665386633316261223b733a33323a223865336536396563613763316562303739343563613361363930373336623466223b733a33323a223936323631366536643463633336373262633435373863336539333662663463223b733a33323a223734316530313734313464303331363834323963326632636634376332613636223b733a33323a223563613936643632396433653537643039313663613633613665663833363135223b7d733a343a2268617368223b733a36353a2235636139366436323964336535376430393136636136336136656638333631352d3734316530313734313464303331363834323963326632636634376332613636223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223332663939333564373566303435643166356135383430656538326336393939223b733a33323a223865313464663633336434393237396430623339393661616536306439353563223b733a33323a223630613132353639626261663264366165383861613662346662373233383539223b733a33323a223664333239393137636562356237633630623935646365383633376664393633223b733a33323a223637313133346239623139373031323737303635663232373933303962313662223b733a33323a223334633864393066626263376665643465346465613831353565393262653035223b7d733a343a2268617368223b733a36353a2233346338643930666262633766656434653464656138313535653932626530352d3637313133346239623139373031323737303635663232373933303962313662223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a363037323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a37323a7b733a33323a226130353031376666343135376664366664326332393462303733346664306438223b733a33323a226261636133636432323033336635396630373965346637376531343536353439223b733a33323a226434663834316236303431386532663731373064636634366539323236633363223b733a33323a223431336464393830353733306664346430386662393239653031613937313830223b733a33323a223536373762363530386234613932613938383230663930396337323631626161223b733a33323a223763353533333964656237386335333866383862623366633665303232363434223b733a33323a223363306435316235646661373131663134386564636461356238643066633039223b733a33323a223933303336636230363237636237386464353635643766333261653031663737223b733a33323a223363646438343030323731333366343335393161643665383132613062633866223b733a33323a223531313165663338666436643933616535326538396534656663353231616262223b733a33323a223137623564663830373664383166363536323934306433616536336139646666223b733a33323a223265373231306666646430646465396234626162336566633738333561326366223b733a33323a223239383536303836326263663733303938643765663132643064316539353165223b733a33323a226464306466623564663064396564653031323839646262616131313331633061223b733a33323a223332396131643837326665616231386435326439653930333861373266313965223b733a33323a223232316166333333353730616265623033363038303939616361386434356330223b733a33323a226563366663326663616235623034323831383936316363613831363765336563223b733a33323a226635313864663166303435663436333631363336353063313066323736663434223b733a33323a226261323735363266376161626134663563383038383530333963383965323436223b733a33323a223337343061393136363865663331643538623438663635333034343366343164223b733a33323a223034313664646333313764306336326264313266616564383436333832303166223b733a33323a226233666466356163356236336338643261306230666232343034356437646533223b733a33323a226436356434623137326563336263626565623166336363646362353134633032223b733a33323a226531656362303039393961376265666265613331346239323361333232323864223b733a33323a223931303161636165336535663137366466323433313962653136633335616365223b733a33323a226639393261353566393138643061663532383433336639343330633430363335223b733a33323a226565653237303931626564386538393831343636396163306537653036303938223b733a33323a226536623435313961633131656430393539323666363665343861313835373736223b733a33323a223039643433636466343864303762346632393730623233383465306134653134223b733a33323a223831313062656363383339653931366462363531363664373031376263336463223b733a33323a226638303435353962623464353039393432353532376437616531346362303838223b733a33323a223031393430343233303433316333373433666565363766313835623438383334223b733a33323a223138393366326637353265666237623062656233636532383063353037343332223b733a33323a223634306632613063633334303363633732306464303966396133666432626531223b733a33323a223331656363653539373331363561353331333065653437653034623036646531223b733a33323a226139303564353637613762313965313561623837333365343538613137343638223b733a33323a223166613165353232353537376532366538636539616435643232333530613261223b733a33323a223831386636613339303663346362366432353630363733353131643534656138223b733a33323a226263353864633961303631396535313063623333623661373564353039616433223b733a33323a226131323965623432363337326263343633346537626135383038326233303732223b733a33323a223039313266393535626535656566663032376635646465373733636130313635223b733a33323a226362646637326435663261336536343165383163643135333536613561386465223b733a33323a226138636533306335633036363430633266636234386161386335616438616232223b733a33323a226436633566313333333439303535313932643963663162373765656139643566223b733a33323a226237333331353861616664373135613934613639643534636133313062383161223b733a33323a223030323261353535616535326236386533383032636263663630656437653931223b733a33323a226339383036303636383033366234633634373039383665636235393362373733223b733a33323a223539326665336138386365396565373564656462343632393239373139383466223b733a33323a226135653339346639393465646164656434663461343639306666383535616236223b733a33323a226434313664363066653135356338616533666335653465383036323133326537223b733a33323a223261356464303731303130653733336466316162326437356635353535306131223b733a33323a223664343331393436336239323837333966333163656562303135303031323961223b733a33323a223834383563366532326635313265653266626338653665626664653262353563223b733a33323a223530373866343036356132613839633539346531623135393961363466613562223b733a33323a223063356662396632663531656161336531386164396237323231366662646130223b733a33323a223138333465353938306133663238323037316536623234643633336662316563223b733a33323a226631363462323039343338653661383833313332303736386631366665306634223b733a33323a226235306462313839666531646636366264666165393263356336663636326365223b733a33323a226164623032613339613737303165343131396634656637663632303564376261223b733a33323a226162303163643762346533373737343032653532613664353563313963656436223b733a33323a223363656633323439656462333633303666646536376464313931663762326638223b733a33323a223165373066646135396163646235376634663532366434313932316431643733223b733a33323a226630643634613938396238353334303937633031303633336635616365343632223b733a33323a226463323462626336333539326439376632643064366661656265393961306161223b733a33323a223531303536373331393031353335623236356435316638623166393235353562223b733a33323a226661316236643438636133336233656465363463393866313063356435303639223b733a33323a223730666430623765393065633339383338383663306363643935353936363463223b733a33323a223330646262363033343730366430333130653361313431666265316566613131223b733a33323a226533333463383662343134386636313239323233666666643866366636313864223b733a33323a223661623539653863393731353065663764323339663639346638363037383033223b733a33323a223063656266356231643235616439366635646639356462613538333230333039223b733a33323a226634323338653061383031663139303033396632353864383539343631643261223b733a33323a226262373533336564313932323034363239356164373036653066646133666264223b733a33323a223639613966633966313933373238663163626531613037656431376631653963223b733a33323a226465303937663064383365666436633137646439646430653562663766323336223b733a33323a223937386336613262653064326531356165656137656433303465313531643032223b733a33323a223532333038353033623033306432366634373039616238623931666638333961223b733a33323a223262353933366239616662653730313164623730626238376536336530353665223b733a33323a226532383934373730313266613465613435356134616135313132363865656339223b733a33323a226535326235616562666432636334373239373064383538373533343130633064223b733a33323a223863303433333031373065343664336364346139363532666365636138623066223b733a33323a223233373533323831323236653263643434336136323566646266393238383533223b733a33323a223564393530363565346639663463663165643863616566376461353733623030223b733a33323a226433643037373261316639306666643233313338386365376561346261643033223b733a33323a226436326464393562636530343139343937656237336364396438653061613962223b733a33323a226632343537366430663538353363626638656264633466343839613237386563223b733a33323a223065336530303134383338303162316630376366343731633066313264373638223b733a33323a226137343035306666343962633536643136386533376534346137633764303237223b733a33323a226666393235626535386531336337306634353536643938663439643763383864223b733a33323a226261643365346161613836633166666530626237353330333834393736663039223b733a33323a223564343463346333346364646532376232383832633963333563616533363637223b733a33323a226364656363366664303134383635616234353933633834346430646364336530223b733a33323a226436376162396661646231616466353361623731666139393064633166633462223b733a33323a223339643665303735623431353265366466393339316632346331653835636430223b733a33323a223032333739356561663731383632663639396239633233326432373437616439223b733a33323a223565646437393436633735393239666633623330333836343561396439303230223b733a33323a226439326264363337383135626630653131626337316565623731616636643263223b733a33323a223935616665373961333831333064333165633236326333623830663231333332223b733a33323a226430383431633133363761366431623739613933633732326361346438363334223b733a33323a226331363262333631613962326633336261626531396463306162633366646361223b733a33323a226261646532363064613837376638376163333064643365356239313665356635223b733a33323a223437333130356136363764656361303538373136383165623865613764306462223b733a33323a223138376366373632386166643332393164636132346138313261643863663564223b733a33323a223030393834613966373032316536383232626636333035663265333732306661223b733a33323a223461303837623436636563323332343037376337636530333938616535306233223b733a33323a223537616337383331343065393233663933363332653462623563623230353738223b733a33323a226262396130363365313864323734633332363432653539303730383832306166223b733a33323a223037333962326639313465373834356532366434613764663235373433363239223b733a33323a223034356364613437323737326439623932393161323166653962386364313863223b733a33323a226531663435366462363566366138353238313934623137396635626238356637223b733a33323a226533336262636530653833656437613061316236313864613333346261383635223b733a33323a223263316131323463656334633430616164353333653031613466336666623932223b733a33323a223432306431373566343833633938373630336133343033353064396334356438223b733a33323a226637653332646138636661663038333364666435333535386366643035343039223b733a33323a223162326135376266366162653739623862656432373731323238353337303437223b733a33323a223732393136353865306465323136363562393931313237323035613535653032223b733a33323a226134653038323436633561303465353166316637303166383865323830333933223b733a33323a223766353530373864613532643062366333653438393630356538623235313738223b733a33323a223166613236616332633836623962366530303466313235366536353430393934223b733a33323a226336386339653739373335393431663232363434336365373337633431393663223b733a33323a226465633564613363373330346634656666633463313138663630613466646635223b733a33323a223830313065653761653930386466346661633634613766333166306465353438223b733a33323a223838656262346165646133363663613337353365343238336232663631626362223b733a33323a226338623764306666633962393165363065306531626139613834636132626361223b733a33323a223638366534656462636365323062646431393566386634353366306662643739223b733a33323a223239306463376261643839616436363632363731396138376633343866343065223b733a33323a226633306361396562363333386362346361656135356535623432623131383661223b733a33323a226439313135373264323566343335303438363238653135396666656234616630223b733a33323a223935326230336236356337653662343235393762366435353732313665326639223b733a33323a223330366632323139343563613564643938626539373838343231663363663863223b733a33323a223638636131633139336233656330376235633363386562623766663239663263223b733a33323a223863376135303937343561393138343537323331343762393363353165393439223b733a33323a223330373164643031336531346363656638373237626261303039663363373865223b733a33323a223835616462366465613663313563643266323633633635333962353238663435223b733a33323a226533353565393338383036353666656538636439323933393534353234343863223b733a33323a223966633463356132333937346137396539353765613765343762636634383730223b733a33323a223134326664663738653666356431356635663761363630336464623031366438223b733a33323a223561343534313265323331333762313237323832643165363866313935646239223b733a33323a223164383965373366643330393032646161386261663434613633393139646536223b733a33323a226232666566666536386533303366373061323036353065353438613232346137223b733a33323a223333656339623338373761353338383864306330613536343965333637656663223b733a33323a223230303331333562353965383061646332383330653635643862393130316238223b733a33323a223466373463346661316235386533383163396561303836613664343864636666223b733a33323a223438656466386465373633343735306139633435333239306538333038633965223b7d733a343a2268617368223b733a36353a2234386564663864653736333437353061396334353332393065383330386339652d3466373463346661316235386533383163396561303836613664343864636666223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a31373033333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3230393a7b733a33323a223139343832663232646632366630623563363330333739376431383537383363223b733a33323a223338613836356463346266626532666239363163663039353239623864306365223b733a33323a226131633965303930303830613736646233623663373063653433346361336461223b733a33323a223562656337363266636132343163633835303766646431313035313463396439223b733a33323a226630653862646431303230363630303239633832356637373464653938323732223b733a33323a223763393932353937313266646236613637346332326364306265336433343366223b733a33323a223966613831396364396438303737353337393837613364336662326431396563223b733a33323a223338616338656663303932346231323836373664636261313133626561613031223b733a33323a223139653031656561393561653730626165373930366630663965656464376535223b733a33323a223463363739316262336138353666373639323835663061383266633033316536223b733a33323a226666643536343832303733613933633965396433636634643639396431363566223b733a33323a223733663937303936303939343138333332386138386433303337396238346362223b733a33323a223865303838643337393761656133336139366439616363383063376331396638223b733a33323a223966306363323063333865373537333036383065393130356632303339653135223b733a33323a226165636531663564633139323030623034333265306536316437393964613161223b733a33323a223163356265656561616163616235303137633132616238633066303130616563223b733a33323a223334393137646635356433343736333166363966366430653362633138353937223b733a33323a226630356439643339366438373232343132623064653661313736623063393037223b733a33323a226531306138616136343138373234313963386131613561323832623763373761223b733a33323a223339653331636661663739633732373361666535363330633431393063396436223b733a33323a226463643333643931626533653533313939353761663665303131353163636339223b733a33323a223136383736373235373135393531313338656337623166393864343962643162223b733a33323a223435616638666662646530353934393165386533623566396335346638333534223b733a33323a226363393564376635623632613239333566313764663565313432373965656462223b733a33323a223337356335313935353137633165633263616134656535333635343438633164223b733a33323a223535663833623037396161363633386239393032383831623533386539326639223b733a33323a223433613030313963613265633033303166326465393961336436323164353935223b733a33323a223062623866616537396465393336626562386531313163313934396234656132223b733a33323a223735663438383239653633393432396230366438323764613530376665383763223b733a33323a226135313738646265326161366262643361336366353334633237626434326665223b733a33323a226263663534373665306633393264396561636364616365336137306161626664223b733a33323a226138366232633239343437633765653332663730303838396437623561316531223b733a33323a223533353932313466373332396561623137646231316636303138653635396664223b733a33323a223161366164326539343435376639373236396538373731356430303933626633223b733a33323a223730653135313833646337663532636136353230326363333464373437303562223b733a33323a223666343365316532643031313464366466306530386366366534326165323135223b733a33323a223466333665653435373137396337386463666364393636363763326139383537223b733a33323a223430643764363534656131653562653661613835643131646436373139666132223b733a33323a223136616365353334623931666637393364306665666463616233306462643839223b733a33323a226465313837373464646461633131646661666236336666383738306165336231223b733a33323a226135346631623665636139653134333239633631623138353864383739373532223b733a33323a223966633532666266643236346439613631613831366339306634353333646564223b733a33323a223963626431653133356466666261303131393334393735663138623561383734223b733a33323a223831313961393865653030363665316130323466613765326438323533613236223b733a33323a223766646461663134303938333839316131356530653663653866396466333032223b733a33323a226633333830326634393361393066343466346366333936646339323061386439223b733a33323a223463636365373131343965366335383964646132626637353265613162383634223b733a33323a223135383863326263346461663761356237616465383165323339636332616333223b733a33323a223864306237343335333963653365353935663564346361656234303734343062223b733a33323a226534323361366237373731383039393337326235373561363238633062326130223b733a33323a223537363733616339373830643636356331306365336665376338323636316337223b733a33323a223133303965646163306535303664373664383666323065353831353165333766223b733a33323a223166303939643832323530333135363532613864616564343636306232306637223b733a33323a223061616534386262636332326634376562613331393239343365326532343932223b733a33323a223562383363636634366136393061336531363532313534373065316639343037223b733a33323a226362366635636532656638336666336261383437653562376132643562363762223b733a33323a226534313037326562323833366265613034623331623363326232376466336561223b733a33323a226364336164326236653864333030623965333033643462653034306666663337223b733a33323a223938363539366665333130316238626564306536356539326433363735636236223b733a33323a226261353361666637323737613132613063306137663037396363633066626332223b733a33323a223331343732646266343038363839346164626561633835313636663666336539223b733a33323a223439336135356465313966333961303766313737383464333334383731336238223b733a33323a223961373332313131356264306430353331343761316238313865396239376234223b733a33323a223030623363353335306365373063623033306337333565633432643631333034223b733a33323a226366643966303661393938663232373161353663626663356664303630323136223b733a33323a223230646462343235343432353633666335323931666431393239316633323936223b733a33323a223933313639623637613233386536343837306663613239663162306139306430223b733a33323a226362663462373465656535333066653363333066663665373564393635346330223b733a33323a226366383533363363633832363531356632633936366231666366333034633536223b733a33323a226632386461663537386632653764363465613937376132643237346231653837223b733a33323a226533363466626662633631623937356563663766393733653036346439383635223b733a33323a223262386239626230303237393831666136616666376163333333343136303733223b733a33323a226633643638313166383564383064643235343037393435333061306332313336223b733a33323a223331666635393931366665393465303964613266633539643230363136383065223b733a33323a223031333464643163626163616439623834643165373636393661306430313739223b733a33323a223963363061623137613461633934616435363365343831343031346638396634223b733a33323a223232653337656630326562333162666331666639626266336133336639396139223b733a33323a226535353835303263653036303039376135373633386132313365303034393232223b733a33323a223765633431643931326638663465323263626563363538346162353839666439223b733a33323a223562633031626365653465626132363133373033366438633062623138383565223b733a33323a223630393562383466303433343335313536316431333562333530363531333664223b733a33323a226134653462323438353466343137653061633035623132366432353263363539223b733a33323a226364373664636138346633366463366137616263373032383730663164383662223b733a33323a223961363063663634336162306134666336623030626263626634363033633932223b733a33323a223265383339303061366366356331373362616237633964333035306537306336223b733a33323a223335643535626331376261636234363665666339393435613832343466646131223b733a33323a226666376561336236323837653261306666383565343833306130306333636337223b733a33323a223863333164393134326537376265303465306430333263326439646334346238223b733a33323a226630386430663439346665343165613030663835353962666164643862613937223b733a33323a226234373262383563633534303837386164343638333365303838353862396432223b733a33323a223963303734613466646334323938356436313238353266313332626362303239223b733a33323a223731636430626136396466376562383036366339363930316665303835313365223b733a33323a223330323538336331616233616632643232303364343864376438643035643166223b733a33323a223732636236353734663037646136383765313561343535356464643061316230223b733a33323a226432326436303331323132316661326663643734353162666630303238346366223b733a33323a223135333464613062326435366265373761663565303935656261336563376363223b733a33323a223431646563616262396339653738323538343535643936393131336334393232223b733a33323a226432653135633334616266613234303337363563363334313537646532303937223b733a33323a223263313037396133376362386262666264303535633562646661663737643139223b733a33323a223832356665336163343730613733383765343237356632653532353262343830223b733a33323a226433333961313139396663636134333739663466623037316161633361376531223b733a33323a223530643338646437373165616165303839633736373436663335353865363337223b733a33323a226237323139383639343933363036626533623831363930663964633963396265223b733a33323a223962363261313533303734646632343133366533333062393364346330376437223b733a33323a226638626430343439383639623732363463636636363363393565643634306136223b733a33323a226461386661666162383630383565356561653265623236626162353530343434223b733a33323a226361333930623832376665366665646163353837653662386331623963316231223b733a33323a223737643863346662666163346263386261356331303833373535616161656565223b733a33323a226239666466613564396662323431613638383162373036383561313232666636223b733a33323a226265333666333132666339646461663835313732656131373166313938343032223b733a33323a226361666432633263663137333962616262656365636262616463613065653166223b733a33323a226262633164363334323133653163613361393032633965386332303235306435223b733a33323a223132633864643833633132373434376432363663303365643261636436323537223b733a33323a223636383763626362353036663137666262346430656165613235623864383832223b733a33323a226538396133366562386239386364646664343434303765663133336264336230223b733a33323a226265393630626334386630623464363533313838633063363864633431393834223b733a33323a223836386564613164313438353330623466323861616136643232316436333064223b733a33323a226564326538323138336431366436363464633436333732333439333238626239223b733a33323a223066373662303532373030643766363831303764316535653862343039313830223b733a33323a223364356331306336393764613866353037346639333463346330623433636235223b733a33323a223066616261643231356466333961626366633837353536366632613961396163223b733a33323a223332613638386562313937376262663832353730393266313064336232356561223b733a33323a226632626265643831386330663261663839646336643864343062323737636463223b733a33323a226537303039396366613762393639303461343539353939346235663962663866223b733a33323a223237623639653661353263623232633964323138323338616437633464656163223b733a33323a226438343832613133663737353963653334663733386337353761303462326234223b733a33323a226166666365396639303262393739653761396236383363383234333732323262223b733a33323a223439646138333562303437643665336664326166366230626534343730616663223b733a33323a223538383038383061623731313962333136336331656461383830323138303262223b733a33323a226336313366326462623132663231303631303734323861313033313935306531223b733a33323a223665653363306166633865383337613735643638313661393362363763623839223b733a33323a223631323735643765333334646263623330653136336239656333663038373636223b733a33323a226663383065303037633163643834326562386432663239316333643262343463223b733a33323a226330323362653361363833326639326436333036386566303061656562353239223b733a33323a223663333663616639313762356530666162343735636338633530376234386132223b733a33323a223832336262656538383764333164646465616264643931326336613132613731223b733a33323a226562643261316130636135316266393037306665303036316534343065653336223b733a33323a223830666132323162316237386336333162363262373564376230663336663737223b733a33323a223534333961356331366565383134323534636538346466656334353863313933223b733a33323a223238663162363564636136323465663130663137623834376637636566613233223b733a33323a223766646636366264646130353039373766366133633462383830663734613632223b733a33323a226264353038333464653763623065313833383631666662643132386362643033223b733a33323a223131373532653663333233356238623833653061356563646134333033306234223b733a33323a223237333030623831663037653434303436366438613439613534663139613663223b733a33323a226237386437383066373262363439656133383335333637653930393934613130223b733a33323a223765353732393233653536336131363733393339303765613265303131333535223b733a33323a223136306439633234353638653932393932373636326366353134663734643232223b733a33323a226430323765303334376537313964343136633766613564616333353033616530223b733a33323a223538316538333439653065663037383363636430623438656364323039333432223b733a33323a223039333363613238333635656331333737666362646536666362333832323836223b733a33323a223862353139343536303861643561636364663139663331366361623232353165223b733a33323a223238616165363865316638623464323863333962643938613931333530303961223b733a33323a226430623263623937386630353166613436366337316463326262313566616330223b733a33323a223764643731663463663866613961313538363036393230383736623538626161223b733a33323a223163326631623564316165336264663635373366353035613966363162313663223b733a33323a223332356639613765326463666539666332323430383330363464636331663061223b733a33323a223366613638323539333038653764336538396435643232313936393263346661223b733a33323a223438623738366163386330373830343635623963303332383265633235353561223b733a33323a223536356564373363633532643732616436623361626232376262623636386531223b733a33323a223363376238316634656562663834303566646337623731333962663863373135223b733a33323a223763393739303661646261373035323932613233653536653461616564666663223b733a33323a226134313238633664383030623232313634336239333562333032623134636634223b733a33323a223464613635313065336361323238333837666365336263373066636237663435223b733a33323a223737343065323231306234303962313930396464356230373737653335393261223b733a33323a223338646437633339326662616135666535386437353063346539356266346464223b733a33323a223736346665353465653235363764366636643737656366303262646635353732223b733a33323a223532336463373233653732333832313932343332666333373133393065663936223b733a33323a226565663236643166363564643361363939356431393531326465653233616561223b733a33323a226162333839303732333833383038316131383865363964626533646630623137223b733a33323a223463333064373139386364643632346231643831646430326432653738336237223b733a33323a223565376333326131633363323439613063613463636261373161386533363664223b733a33323a223963653562343764636361376630396239353333353338356361313639633363223b733a33323a223865323364383132346665646363633736353633653637616465353862363735223b733a33323a223833343832643338663439386564393231303134383132666635623334346565223b733a33323a226532613430636634326332393636313966623238613933373839343631353061223b733a33323a223562323130663164326433313831633635326239613663373438333138643462223b733a33323a226638613037383066646165633032613862663336633864633338313832643765223b733a33323a223437666537373965616363346261636239366232316261306366316135303633223b733a33323a226431626434376563346362626231623161653364646639616335303237613663223b733a33323a223363643332303336666461393862393362623230393461343335316161653164223b733a33323a226464333461633534353039376463336366393762383736316163633136383131223b733a33323a223639633838643730336435393635646635376132646439363732363038316361223b733a33323a226235336165356465646631356637393962336135623738313762666339663664223b733a33323a226431363432346137333136373961353164393333393535653438346164323866223b733a33323a226461366666323563326563306133366539353061643330303132636639313132223b733a33323a223239366338623536666265633837613934643762613566653066313664633230223b733a33323a226263646336326337663130333532323131616634643733623262326365333430223b733a33323a223330393239636334343863376437326233353266313866393663646330353532223b733a33323a226332616430356164373235393237336331666635373139623536613838646432223b733a33323a226432613132356139323330376664343232653763636439386266393563663535223b733a33323a223731616664646662326366396230626665626335643031613664393231333132223b733a33323a223761353330396533613232643265343435376231333061386439613132353232223b733a33323a223962643237663535316266363335313835383363353034623261396561346630223b733a33323a223237366332646236633636333762643362306465333666643838326236396163223b733a33323a223531343732313235663330333661353036646436613631653231343536363766223b733a33323a223834643431323063326465343661366233306263663663646664623637663638223b733a33323a223134663336623535336337636234393130343463346164623066353266633732223b733a33323a226664393933623339653939306439383466313765633564613730303238666265223b733a33323a223735663237656666373761363833393035646237353963393662663130623637223b733a33323a223932306631383562396663383435346464636361363438666437646566623564223b733a33323a223134626662343535663533336534373161373636316562326565323562663935223b733a33323a226365656634363563303561656439626565376136393966343966323234316534223b733a33323a226365623666633634383461376431356636653035656462313533656639653661223b733a33323a223932376135373331336664646335623234633730326261313266333637613335223b733a33323a223864666561613064656238383432356434366232363132363761323134303266223b733a33323a226235656339326136366461353239393066383564646532616265396235313665223b733a33323a223661653565613231323237366432326537656131383332313237313638363766223b733a33323a223064636336646436393134623234366564393238376266353361393036613133223b733a33323a223630313165303738613839643236336332656335653165653633323336653739223b733a33323a223161396166373931333061316466633362343161386235636532333535336431223b733a33323a226234646436313634323033316463393965393138306534646462623336373936223b733a33323a226262313737383135373332343935343666333038633037323865303361656433223b733a33323a223562373630306262396339643136623964383865363465323631346364393466223b733a33323a223731376433633538666162333531616431363136636262353265343732623430223b733a33323a223835663936303337393239623234396562633164393033643239643332386131223b733a33323a226637323035366561383937383831623835636265643630373433666632313831223b733a33323a226636613332353932636666323265623565306264333831646332356234663937223b733a33323a223961653338666662643665356265363562396266373761393330373432653531223b733a33323a223333303930326664653764646133323861393335376561636532313161353364223b733a33323a226433376137386437643161636335383931343130656430386466643237353863223b733a33323a223033396334666639343833343730663434343564356563623936666339363938223b733a33323a226438663839363037333830343437623136653165333330666666643539363839223b733a33323a226535623539393335623864366433336366326537646565313037333364346664223b733a33323a226161363034333131626533383438623163646334333539336137626261653733223b733a33323a223031643233386438616636363330373038633565383962653730353861383139223b733a33323a223866323937623966323832663962623663396263623436613662346465303563223b733a33323a223838363363313236663331356466383731653132643033363166356565376336223b733a33323a223266323137353135646336323535383666666333373864626663383264663931223b733a33323a226434633561393035373035623461316661393365316363636134613330303866223b733a33323a223565393333353734396264366331396361633765366434613563626465646561223b733a33323a226165323566386133656232656431306333616436393838396135316532646162223b733a33323a223962306431396461363239656333313032636466373032663236356339353531223b733a33323a223235343639316564363266656139666635383565373762613130346161303264223b733a33323a223331306436393336376535303633633337323265393563356332356664643930223b733a33323a223761633632633064376132616539333337313139373331393832373361653239223b733a33323a226365636666356266363633313737353734613132653433383533326566653832223b733a33323a223362653038353330393239326135386162613336393632653932663435366437223b733a33323a223462356264303230303930363866656663623336636261313066313165336534223b733a33323a226133386433373039333837626362636666313439663834623336386532353639223b733a33323a223366333732616233643663663265346534636564613265613466636363303662223b733a33323a223038383833353035343861303363393430383931396464336365326136636530223b733a33323a226331653132626134643364343537376239616530653665623362376635346536223b733a33323a223038663865613335646639323838323232653833343533653539353038373938223b733a33323a226264663566666134303261356231633036396331663230386630613363633161223b733a33323a223161636639396530633233303931333465663333333333623030666536356137223b733a33323a226431613363383464393062643635633034366231373836313338616461643161223b733a33323a226262653163336365343536336134376266303561623631373938366633396439223b733a33323a226666326666396533383563613330333364623339346166303037356262636634223b733a33323a223430626137633338343533316262393733363930313062343532366431623636223b733a33323a223863316662626636616335343237626338663635626535316661643833616666223b733a33323a223130353239386539343031633235633865326264336138373832336537316235223b733a33323a223461373237376131646631393264633532633265383131386136346663613963223b733a33323a223631323466316662376531323337323837656432316634393765653664383738223b733a33323a223461636533396635643637666238353663363836363861666263383464313231223b733a33323a223533643865313963303036633362303232353961636630656131653836653030223b733a33323a226239613232316462636633373739373462386566616536636466383838633232223b733a33323a223065326236363164373136353164656630326230313362376366633038393436223b733a33323a223831653330336338623639316461343863303232666134383761626164663663223b733a33323a223638653538383030316130313966623765346334616437613938396563356365223b733a33323a223137366335376662626134303934626132303437303436306235353830316235223b733a33323a226135643036633965646130653837303531316330633034313234386233643330223b733a33323a223432666138633463313436646333313365373266386364616263653066396464223b733a33323a223935353737353563326337346439636565663033363831366161353039623137223b733a33323a223432643232383530303236616263396561616431303462616661373833666537223b733a33323a223566613166666337373161616239393566333131613234653562666166613462223b733a33323a223865386636396434326566363761613031323764373664343964653431643061223b733a33323a226331653334613732613735353063303862366262326435656338313632393030223b733a33323a223139653562633234613565653031623166383635656261376565343330396566223b733a33323a223734626462373764616231316435323935383432626365363036386562623333223b733a33323a223532633732306330363064323937653030626266643637353436623039363566223b733a33323a223235323661313035626237653365306237343939363436336231313239326430223b733a33323a226265303232373462653362613731313266336533373230356336666535386165223b733a33323a223065363331336465623361643562616439383366376432356138333061666535223b733a33323a226663323937313963623634353365653063366266303535346534346335373034223b733a33323a223130313561316532373965393462376161336437653638323064626238613262223b733a33323a223333613539663431373366376431633162383733633164353164343662363430223b733a33323a226163316337363530336237303533383765376661653830356535333561343535223b733a33323a223737616230353465323663643765306466613333613765396431666531616563223b733a33323a223861366635373461623135616566343233633539336632653639363366313433223b733a33323a223635386261366166373364356561396161356361343930346561656330373334223b733a33323a223635386662316332303437356265366639356163306435646236653438323862223b733a33323a226235643961343665343836366265353133633862663836323764633965396330223b733a33323a223131366162346662396136636664663464326130633238663264366137386363223b733a33323a223235393639396636373031383635653464363865353834633739333966313838223b733a33323a226463346632393830386663643131376431306433623339323838346166626535223b733a33323a226236333762616331393335626431626365303863376465373036353765626366223b733a33323a223461343938323038393838356561303462663131333566636561313330383730223b733a33323a223861623036623336353861633237623365343632366165666132636364363139223b733a33323a226261383531363530323966313733643266363338303630386161626339653765223b733a33323a223231363737393733613135313461633732393330666636616362346136303635223b733a33323a223366393330663731343336663439623865626332643036353731396561653561223b733a33323a226564343666616363623039373462353038343131616235636433353733666633223b733a33323a226533616130303639376533363062383266363664376636363033356338333139223b733a33323a223239316638646638636339616564643034383962623661366666373035636534223b733a33323a223536623635663663396365363838323931623164396637363639643262353836223b733a33323a223438613365366638383833623031626230313362663464626266643830373537223b733a33323a226535343836343233336639646635306663376633343236363431326539303733223b733a33323a226132343661316437663965623761393863376334626464343531316530356333223b733a33323a226635383966323730633764323566616466356435643935316239396533346566223b733a33323a223537366130343665663333313264393134636661353938663939663232376664223b733a33323a223739373361323035363366363466393765353063313565346165313163386535223b733a33323a223038373136373935306235666230663934643835373363393136646662313936223b733a33323a223231316537306330393336376563646438393461346630323432383933653466223b733a33323a223735343338386261643533353833633963623565356163633464643866396631223b733a33323a223638333835643039643138623963383262333065316133646231346134613164223b733a33323a223961363733326263386432383936626463623661363033363163323334356662223b733a33323a223839303566336232626532323037653937653131373239643666313562376336223b733a33323a226264313636373466356334616230376438356630323039343362646237376266223b733a33323a226432303063383963613037376239373462333531333538663438393665656537223b733a33323a223832666461653933393334343932333966376434336439303630353565383637223b733a33323a223561386538353439613738653961653432376338316262336563353664366532223b733a33323a226266353333316135613164316637313164626266643638356138633561336132223b733a33323a226539323137383539303365313534663266363733653738343239356665623863223b733a33323a223465343435363837613930313235343566363865613537383538616636653239223b733a33323a226538663735323064393638373235666634393739396366386634646532613932223b733a33323a226532613465306464663930643734356262373962613435626535363030663131223b733a33323a223434356637613935626131643361386632646564656461303339363136343761223b733a33323a223932303063306664633235393564666331633462613733643861363461376431223b733a33323a226336373964363662373766643332353963323931663662656663363635376165223b733a33323a223136306339653931356262383432656637646331376561386132336438633032223b733a33323a223736376262633964373838666331326630373430613230346131316232393364223b733a33323a223230303165376563303665333965323938393933306331653734363934313434223b733a33323a226363663633643535343236366262626166363861663731653465383534363238223b733a33323a226536333237303030613733623264373935396134363535636163366634663838223b733a33323a223031303136316338353531373939343731396363613431613634663761333866223b733a33323a223861316364373465643538653336333335373036363539633463383665663366223b733a33323a223935353565653238383935343930646237356265323361663962653034333966223b733a33323a226164353363623435653439323138313233343866663330353637393935353061223b733a33323a223430613030303230356334343037336330393262656239616266323962336162223b733a33323a223736393937623039616330356635303737353935333866626433306639376330223b733a33323a226262663532666535303437366564666166653634636430303337396532633336223b733a33323a223936626136613033316635376165303532326330613634383564343562316366223b733a33323a226530336566343031653535306236636638396132396466333933366235616166223b733a33323a223038383135333130326163626139316430383838333030393636306138633833223b733a33323a223534656330316230353631353133373231303030656437383236383030666337223b733a33323a226138616162656666356666393536396539636436386431393235356634363266223b733a33323a223638396432623139303564653631306533303866633461613762643330303932223b733a33323a223939323763363135363032653937616664366239356331353163613563386136223b733a33323a223031656566373166383365353030616234383337393836366437326533626235223b733a33323a223730623861316463313462306237306435336339653331376166623464666262223b733a33323a226338626463303366373730636134636364383662336230383734383532393430223b733a33323a226538383066313139346134363566643061353662383865336437626434306534223b733a33323a223663663734666435643862383435633031376663393063366366356562353566223b733a33323a226238366463613231323731383239363664343338393630386130313565393439223b733a33323a223332323962393136356437666532373464383136326361303135656530366136223b733a33323a226237376639656537613865663336363061396330393466303361366339373030223b733a33323a226464353233663839396564353361306165373439366533393661326338376637223b733a33323a226331323035613162323463633233346234333762383731663231666431366139223b733a33323a223137386361316537326332656562633436623733393834316334393231373265223b733a33323a223538313335623235646539393461653133383034653461346164396435323932223b733a33323a226538393364306338323061306263646165303638646430333434653862656561223b733a33323a226531646539346537346363666632333964653964333361653933333564323464223b733a33323a226531306131353262346465663463383166396539333439323937323235636335223b733a33323a223831356337366163613564623037653332643161303537653534626333383965223b733a33323a223034336432633161393162343533303430383265333664343762333635386363223b733a33323a226539616237663335623238303361666439313837353166323639336335376530223b733a33323a223635336637323733633739626239373566383931353938306265316339376663223b733a33323a223465633535363761323835636362633361303937363237313137333366333863223b733a33323a223362306461306131653630396332346262646232656636326135363434386462223b733a33323a223037353239306634633566386138376265353664623238366133656333316238223b733a33323a226136366335653434306431333135636661393631643166663237303464313263223b733a33323a223632623634333430326233646131303264626530383662326231303134373335223b733a33323a223333316137313539326431346230666130333439306538326163366339393734223b733a33323a223935633632383034346539333337333331623436383437633466613766656665223b733a33323a226361623636623039366566633665366437393761646331306330343237363866223b733a33323a223333373165376363333132356430356637323331333763646261313838626539223b733a33323a226639333834663838373064366434613535316462313338666166396533633438223b733a33323a223331653339336337323438313461333466393661346234376464643238643739223b733a33323a223638613538366531383536646333336335333437646139653266646232656636223b733a33323a226563373163386261333538353235646133303966653939646165336337336139223b733a33323a226336356433303366303639626161313531623661393565343261356164313436223b733a33323a226638353035343265646132336364363737393166373166636636613262316264223b733a33323a223666306166626432633430663234333165643435613137396333356465613633223b733a33323a226534633535313464643939613865666664633662316661393363393938646630223b733a33323a223138336132663931376636653564613835666137366138373430613635643636223b733a33323a223930316163356463316566626434656662373238613765306234636532333434223b733a33323a223331396361626634373765623333623537653139306665396161366137323263223b733a33323a226562363430333937363033666431613832653139363761656534616132613165223b733a33323a226365383338353338636139376435343530633735656632633832656433303336223b733a33323a223937376339653635653663336464356634636335363035393132643665353736223b733a33323a226331623036376531613862613234613033363535626634633336323763383535223b733a33323a223033343265376538393839326235383165396638383539326333353338666562223b733a33323a226631316638643762613038303562643138363862366531653864386361666531223b733a33323a223661626661373363343533623862383561393037346331383164363530396535223b733a33323a223264323835363035653237356231356637343864316636303066616366396539223b733a33323a223830393439303430333935633630613635323538363435343165323739666138223b733a33323a223065343165336137363230316636316636393230383531353237663431356337223b733a33323a226133313437323637396564393833656135323530313432373961643161326437223b733a33323a223635626361326161666262666235643666363533663238396138653334323465223b733a33323a223033623239316137653761356161656266383438363238633839366330343362223b733a33323a226535313138363332343137366538643665306263613263336235306366613632223b733a33323a223130353339366663333630303863656164666164303230633030636462646538223b733a33323a223262373065373862353739353866343538666561666561353838326638386664223b733a33323a226564396335666265353034356563376239636136303336393165303539323437223b733a33323a223133623662666262633934646263666361663166336462363934663734613038223b733a33323a226530373361356663646465663562323836393265653265303835663538366263223b733a33323a223437333331323534626639303232636466646537343161666332313263303335223b733a33323a226663376233626433656235343161333566363136626238376236373562353034223b733a33323a226330653038376432653938343932373632343139376133303537663730376636223b733a33323a223564333564396165653364383739613666633563656536303333316563616566223b733a33323a223230313639306362396163346638393535383338663261326237303330643231223b733a33323a226137326436346466326363613934663362616366363461666530323264656631223b733a33323a226434393364323136633534333362666565633332663166623638336664366263223b733a33323a223136316566333333633537626164393632343733393639336366643131653831223b733a33323a223761346431623663373138643335326462346661653464626534373465363565223b733a33323a223861653433323764353537396137366362366235616137323936336163373937223b733a33323a223630663734636365303364323964366630316164393231663731653433376633223b733a33323a223461663162336134626135366361626232386233623030366239616163636464223b733a33323a226666323361656531363237353736663162386132643239613866636261636532223b733a33323a223765343063396633396131633137626165333730316439623961326138643439223b733a33323a223532306461643863333036383063323566646438373333326230336337663236223b733a33323a226334396133653835393738656239316139303164626562396335303036316630223b733a33323a226663313962303466376564613833663731333032336364626339343063363764223b733a33323a226364633563633431366163613438326130376232363566643761313961326262223b733a33323a223365383034316662336134306133616162303130333964306563326661366438223b733a33323a223462633163373239313264303462653835396665653462303232306566663935223b733a33323a226461383139363139666238626463373031316236323361393461306532643335223b733a33323a223033383162336531383163356661333830316333633736613236666431346461223b7d733a343a2268617368223b733a36353a2230333831623365313831633566613338303163336337366132366664313464612d6461383139363139666238626463373031316236323361393461306532643335223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587596173);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('u917uhp884lrgar8dodemrns6s', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383233373839382e3633383837323b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22716939356436303864626464326f6336766f70396f3267656564223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383234313437313b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383234313438323b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538383234313439363b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a226630393634373137386438616139643366623661643534306234303738356435223b733a33323a226165613966623664373836643164623332353332623362303633386365383536223b733a33323a226135393237396636643339326537373738386233633135303661613730343062223b733a33323a223631316238393734623838396138663666333637623563663436613062333562223b733a33323a223539323363376563613335326236363436346161623633396437363331666239223b733a33323a223133363666643563656235356136353962323666303963393362353434343264223b733a33323a223066633238613861316539313363346530343234386266363038363631343665223b733a33323a226133316564623339643963323839626165353062623865613338653566353065223b7d733a343a2268617368223b733a36353a2261333165646233396439633238396261653530626238656133386535663530652d3066633238613861316539313363346530343234386266363038363631343665223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223066326231636466626632613564636136386463366134376432646261393464223b733a33323a223431633934346438363064323432303563363131396361343831626536393861223b733a33323a223037633335353365353763353437316338333664333830333737396466303338223b733a33323a226133363637303861636462393262633562336636613966613834336465343739223b7d733a343a2268617368223b733a36353a2261333636373038616364623932626335623366366139666138343364653437392d3037633335353365353763353437316338333664333830333737396466303338223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226237336361343530363230343766616464313135383463656332373062396562223b733a33323a223334356237316130653435373465343062616637353533643038393632323634223b733a33323a223339333466343233393364613035666164613266666135633666306265613032223b733a33323a223337623930616438396562333963363465313934623530643830383161303364223b7d733a343a2268617368223b733a36353a2233376239306164383965623339633634653139346235306438303831613033642d3339333466343233393364613035666164613266666135633666306265613032223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1588237898),
('uc9ed25sj4nkjsotqi7261rfen', 0x5f5f5a467c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383233343838382e3038303736343b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2275633965643235736a346e6b6a736f747169373236317266656e223b7d7d, 1588234891);

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
('administrator_email', '\"alix.mansueto@gmail.com\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"omeka\"'),
('locale', '\"\"'),
('media_type_whitelist', '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf,\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
('pagination_per_page', '25'),
('time_zone', '\"Europe\\/Berlin\"'),
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
(1, 'alix.mansueto@gmail.com', 'alixvd', '2020-04-16 09:18:51', '2020-04-30 11:00:54', '$2y$10$chnIKawdZAk9.d71wfKjR.tCqGGFfRNhWt9XdVxdx77wEfYxwzWxa', 'global_admin', 1),
(2, 'samuel.szoniecky@univ-paris8.fr', 'Samuel ', '2020-04-16 09:45:49', '2020-04-30 09:22:26', '$2y$10$W37V.O9VhWcWMyaS25U0duVpfosaaOkf5l0VokhIfm4q0Nyuw9a/G', 'global_admin', 1);

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
(1, 1, 1, NULL, 'literal', '', 'Auteur', NULL, 1),
(2, 1, 182, NULL, 'literal', '', '1859', NULL, 1),
(3, 1, 139, NULL, 'literal', '', 'Henri', NULL, 1),
(4, 1, 140, NULL, 'literal', '', 'Bergson', NULL, 1),
(5, 2, 1, NULL, 'literal', '', 'Auteur', NULL, 1),
(6, 2, 182, NULL, 'literal', '', '1839', NULL, 1),
(7, 2, 139, NULL, 'literal', '', 'Sully', NULL, 1),
(8, 2, 140, NULL, 'literal', '', 'Prudhomme', NULL, 1),
(9, 3, 1, NULL, 'literal', '', 'Auteur', NULL, 1),
(10, 3, 182, NULL, 'literal', '', '1830', NULL, 1),
(11, 3, 139, NULL, 'literal', '', 'Frédéric', NULL, 1),
(12, 3, 140, NULL, 'literal', '', 'Mistral', NULL, 1),
(13, 4, 1, NULL, 'literal', '', 'Auteur', NULL, 1),
(14, 4, 182, NULL, 'literal', '', '1866', NULL, 1),
(15, 4, 139, NULL, 'literal', '', 'Romain', NULL, 1),
(16, 4, 140, NULL, 'literal', '', 'Rolland', NULL, 1),
(17, 5, 1, NULL, 'literal', '', 'Auteur', NULL, 1),
(18, 5, 182, NULL, 'literal', '', '1844', NULL, 1),
(19, 5, 139, NULL, 'literal', '', 'Anatole', NULL, 1),
(20, 5, 140, NULL, 'literal', '', 'France', NULL, 1),
(21, 6, 1, NULL, 'literal', '', 'Auteur', NULL, 1),
(22, 6, 182, NULL, 'literal', '', '1881', NULL, 1),
(23, 6, 139, NULL, 'literal', '', 'François', NULL, 1),
(24, 6, 140, NULL, 'literal', '', 'Mauriac', NULL, 1),
(25, 7, 1, NULL, 'literal', '', 'Auteur', NULL, 1),
(26, 7, 182, NULL, 'literal', '', '1913', NULL, 1),
(27, 7, 139, NULL, 'literal', '', 'Albert', NULL, 1),
(28, 7, 140, NULL, 'literal', '', 'Camus', NULL, 1),
(29, 8, 1, NULL, 'literal', '', 'Auteur', NULL, 1),
(30, 8, 182, NULL, 'literal', '', '1905', NULL, 1),
(31, 8, 139, NULL, 'literal', '', 'Jean-Paul', NULL, 1),
(32, 8, 140, NULL, 'literal', '', 'Sartre ', NULL, 1),
(33, 9, 1, NULL, 'literal', '', 'Auteur', NULL, 1),
(34, 9, 182, NULL, 'literal', '', '1869', NULL, 1),
(35, 9, 139, NULL, 'literal', '', 'André', NULL, 1),
(36, 9, 140, NULL, 'literal', '', 'Gide', NULL, 1),
(37, 10, 1, NULL, 'literal', '', 'L\'évolution créatrice', NULL, 1),
(38, 10, 87, NULL, 'literal', '', '1907', NULL, 1),
(39, 11, 1, NULL, 'literal', '', 'Le Prisme', NULL, 1),
(40, 11, 87, NULL, 'literal', '', '1886', NULL, 1),
(41, 12, 1, NULL, 'literal', '', 'Coupo Santo', NULL, 1),
(42, 13, 1, NULL, 'literal', '', 'Au-dessus de la Mêlée', NULL, 1),
(43, 13, 87, NULL, 'literal', '', '1915', NULL, 1),
(44, 14, 1, NULL, 'literal', '', 'Histoire Contemporaine', NULL, 1),
(45, 14, 87, NULL, 'literal', '', '1899', NULL, 1),
(46, 15, 1, NULL, 'literal', '', 'Les Thibaut', NULL, 1),
(47, 15, 87, NULL, 'literal', '', '1922-1940', NULL, 1),
(48, 16, 1, NULL, 'literal', '', 'L\'Etranger', NULL, 1),
(49, 16, 87, NULL, 'literal', '', '1942', NULL, 1),
(50, 17, 1, NULL, 'literal', '', 'Exil', NULL, 1),
(51, 17, 87, NULL, 'literal', '', '1945', NULL, 1),
(52, 18, 1, NULL, 'literal', '', 'Les Mots', NULL, 1),
(53, 18, 87, NULL, 'literal', '', '1944', NULL, 1),
(54, 19, 1, NULL, 'literal', '', 'Les Faux-Monnayeurs', NULL, 1),
(55, 19, 87, NULL, 'literal', '', '1925', NULL, 1),
(56, 20, 1, NULL, 'literal', '', 'Prix Nobel', NULL, 1),
(57, 20, 7, NULL, 'literal', '', '1927', NULL, 1),
(58, 21, 1, NULL, 'literal', '', 'Prix Nobel', NULL, 1),
(59, 21, 7, NULL, 'literal', '', '1901', NULL, 1),
(60, 22, 1, NULL, 'literal', '', 'Prix Nobel', NULL, 1),
(61, 22, 7, NULL, 'literal', '', '1904', NULL, 1),
(62, 23, 1, NULL, 'literal', '', 'Prix Nobel', NULL, 1),
(63, 23, 7, NULL, 'literal', '', '1915', NULL, 1),
(64, 24, 1, NULL, 'literal', '', 'Prix Nobel', NULL, 1),
(65, 24, 7, NULL, 'literal', '', '1921', NULL, 1),
(66, 25, 1, NULL, 'literal', '', 'Prix Nobel', NULL, 1),
(67, 25, 7, NULL, 'literal', '', '1937', NULL, 1),
(68, 26, 1, NULL, 'literal', '', 'Prix Nobel', NULL, 1),
(69, 26, 7, NULL, 'literal', '', '1952', NULL, 1),
(70, 27, 1, NULL, 'literal', '', 'Prix Nobel', NULL, 1),
(71, 27, 7, NULL, 'literal', '', '1957', NULL, 1),
(72, 28, 1, NULL, 'literal', '', 'Prix Nobel', NULL, 1),
(73, 28, 7, NULL, 'literal', '', '1964', NULL, 1),
(74, 29, 1, NULL, 'literal', '', 'Prix Nobel', NULL, 1),
(75, 29, 7, NULL, 'literal', '', '1947', NULL, 1),
(76, 30, 1, NULL, 'literal', '', 'Auteur', NULL, 1),
(77, 30, 1, 9, 'resource', NULL, NULL, NULL, 1),
(78, 30, 1, 8, 'resource', NULL, NULL, NULL, 1),
(79, 30, 1, 7, 'resource', NULL, NULL, NULL, 1),
(80, 30, 1, 6, 'resource', NULL, NULL, NULL, 1),
(81, 30, 1, 5, 'resource', NULL, NULL, NULL, 1),
(82, 30, 1, 4, 'resource', NULL, NULL, NULL, 1),
(83, 30, 1, 3, 'resource', NULL, NULL, NULL, 1),
(84, 30, 1, 2, 'resource', NULL, NULL, NULL, 1),
(85, 30, 1, 1, 'resource', NULL, NULL, NULL, 1),
(86, 31, 1, NULL, 'literal', '', 'Oeuvre', NULL, 1),
(87, 31, 1, 19, 'resource', NULL, NULL, NULL, 1),
(88, 31, 1, 18, 'resource', NULL, NULL, NULL, 1),
(89, 31, 1, 17, 'resource', NULL, NULL, NULL, 1),
(90, 31, 1, 16, 'resource', NULL, NULL, NULL, 1),
(91, 31, 1, 15, 'resource', NULL, NULL, NULL, 1),
(92, 31, 1, 14, 'resource', NULL, NULL, NULL, 1),
(93, 31, 1, 13, 'resource', NULL, NULL, NULL, 1),
(94, 31, 1, 12, 'resource', NULL, NULL, NULL, 1),
(95, 31, 1, 11, 'resource', NULL, NULL, NULL, 1),
(96, 31, 1, 10, 'resource', NULL, NULL, NULL, 1),
(97, 32, 1, NULL, 'literal', '', 'Prix Nobel ', NULL, 1),
(98, 32, 1, 29, 'resource', NULL, NULL, NULL, 1),
(99, 32, 1, 28, 'resource', NULL, NULL, NULL, 1),
(100, 32, 1, 27, 'resource', NULL, NULL, NULL, 1),
(101, 32, 1, 26, 'resource', NULL, NULL, NULL, 1),
(102, 32, 1, 25, 'resource', NULL, NULL, NULL, 1),
(103, 32, 1, 24, 'resource', NULL, NULL, NULL, 1),
(104, 32, 1, 23, 'resource', NULL, NULL, NULL, 1),
(105, 32, 1, 22, 'resource', NULL, NULL, NULL, 1),
(106, 32, 1, 21, 'resource', NULL, NULL, NULL, 1),
(107, 32, 1, 20, 'resource', NULL, NULL, NULL, 1),
(108, 12, 87, NULL, 'literal', '', '1867', NULL, 1),
(109, 33, 1, NULL, 'literal', '', 'Auteur', NULL, 1),
(110, 33, 182, NULL, 'literal', '', '1881', NULL, 1),
(111, 33, 139, NULL, 'literal', '', 'Martin', NULL, 1),
(112, 33, 140, NULL, 'literal', '', 'Roger', NULL, 1);

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
(5, 1, 'http://dbpedia.org/ontology/abstract', 'dbpedia-owl', 'Description de vocabulaire', ''),
(6, 2, 'https://litteratureprixnobel.com/nobel#', 'nobel#', 'Vocabulaire', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

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
