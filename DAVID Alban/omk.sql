-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 19 avr. 2020 à 09:09
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.29

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
(1, 'items', 1, 1, 'Anthony Kiedis', 'Anthony Kiedis\nGeneral information about the musician\nAnthony\nKiedis\nUSA\n01/11/1962'),
(2, 'items', 1, 1, 'Michael \"Flea\" Balzary', 'Michael \"Flea\" Balzary\nGeneral information about the musician\nMichael\nBalzary\nFlea\nAustralian\n16/10/62'),
(3, 'items', 1, 1, 'Chad Smith', 'Chad Smith\nGeneral information about the musician\nChad\nSmith\nAmerican\n25/10/61'),
(4, 'items', 1, 1, 'John Frusciante', 'John Frusciante\nGeneral information about the musician\nJohn\nFrusciante\nAmerican\n05/03/70'),
(5, 'items', 1, 1, 'Josh Adam Klinghoffer', 'Josh Adam Klinghoffer\nGeneral information about the musician\nJosh\nKlinghoffer\nAmerican\n30/10/79'),
(6, 'items', 1, 1, 'Red Hot Chilli Peppers', 'Red Hot Chilli Peppers\nGeneral information about the band\nRed Hot Chilli Peppers\nFunk rock, rock alternatif, funk metal, fusion\n1983\nUSA\nRed Hot Chilli Peppers Staistics'),
(7, 'items', 1, 1, 'bassist', 'bassist\nFunction of a musician in a band\nbassist'),
(8, 'items', 1, 1, 'drumer', 'drumer\nfunction of a musician in the band\ndrumer'),
(9, 'items', 1, 1, 'guitarist', 'guitarist\nfunction of a musician in the band\nguitarist'),
(10, 'items', 1, 1, 'singer', 'singer\nfunction of a musician in the band\nsinger'),
(11, 'items', 1, 1, 'keyboardist', 'keyboardist\nfunction of a musician in the band\nkeyboardist'),
(12, 'items', 1, 1, 'Red hot chilli peppers (Anthony Kiedis)', ' Red hot chilli peppers (Anthony Kiedis)\nMusician and his role in the band (with activity start and, if applicable, activity end)\n1983\nAnthony Kiedis\nsinger\nRed Hot Chilli Peppers'),
(14, 'items', 1, 1, 'Red hot chilli peppers (Michael \"Flea\" Balzary)', 'Red hot chilli peppers (Michael \"Flea\" Balzary)\nMusician and his role in the band (with activity start and, if applicable, activity end)\n1983\nMichael \"Flea\" Balzary\nbassist\nRed Hot Chilli Peppers'),
(15, 'items', 1, 1, 'Red hot chilli peppers (Chad Smith)', 'Red hot chilli peppers (Chad Smith)\nMusician and his role in the band (with activity start and, if applicable, activity end)\n1989\ndrumer\nChad Smith\nRed Hot Chilli Peppers'),
(16, 'items', 1, 1, 'Red hot chilli peppers (John Frusciante)', 'Red hot chilli peppers (John Frusciante)\nMusician and his role in the band (with activity start and, if applicable, activity end)\n1998\n2010\nJohn Frusciante\nguitarist\nRed Hot Chilli Peppers'),
(17, 'items', 1, 1, 'Red hot chilli peppers (John Frusciante)', 'Red hot chilli peppers (John Frusciante)\nMusician and his role in the band (with activity start and, if applicable, activity end)\n2020\nguitarist\nJohn Frusciante\nRed Hot Chilli Peppers'),
(18, 'items', 1, 1, 'Red hot chilli peppers (Josh Adam Klinghoffer)', 'Red hot chilli peppers (Josh Adam Klinghoffer)\nMusician and his role in the band (with activity start and, if applicable, activity end)\n2010\n2020\nguitarist\nJosh Adam Klinghoffer\nRed Hot Chilli Peppers'),
(19, 'items', 1, 1, 'Red Hot Chilli Peppers Statistics', 'Red Hot Chilli Peppers Statistics\nStatistics about the band by years\n100\n2000\nwikipedia'),
(20, 'items', 1, 1, 'Jazz bass', 'Jazz bass\nThe type of material used by a musician\nJazz bass'),
(21, 'items', 1, 1, 'Fender', 'Fender\nThe brand of an equipment (guitar, amplificator etc.)\nFender\nUSA\nUSA'),
(22, 'items', 1, 1, 'Equipment 1', 'Equipment 1\nDetails about an equipement (color, reference etc.)\nWhite\n1980\nJazz bass\nFender'),
(23, 'items', 1, 1, 'Flea - Jazz Bass', 'Flea - Jazz Bass\nThe musician with his equipement (0 or more)\nEquipment 1\nMichael \"Flea\" Balzary');

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
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23);

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
('QHl3jxSfUPJ3awiMCiV51CQgKT4vRj3R', 2, '2020-04-18 10:16:05', 1);

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
(185, 1, 5, 'activity', 'activity', 'Relates an artist to an activity period'),
(186, 1, 5, 'amazon_asin', 'amazon_asin', 'Used to link a work or the expression of a work to its corresponding Amazon ASINs page.'),
(187, 1, 5, 'arranged_in', 'arranged in', '\n        Associates a work to an arrangement event where it was arranged\n    '),
(188, 1, 5, 'arrangement_of', 'arrangement of', '\n                Associates an arrangement event to a work\n        '),
(189, 1, 5, 'artist', 'artist', 'Relates a membership event with the corresponding artist'),
(190, 1, 5, 'availableAs', 'availableAs', NULL),
(191, 1, 5, 'available_as', 'available_as', '\n        Relates a musical manifestation to a musical item (this album, and my particular cd). By using\n        this property, there is no assumption on wether the full content is available on the linked item.\n        To be explicit about this, you can use a sub-property, such as mo:item (the full manifestation\n        is available on that item) or mo:preview (only a part of the manifestation is available on\n        that item).\n\n        This is a subproperty of frbr:examplar.\n    '),
(192, 1, 5, 'biography', 'biography', 'Used to link an artist to their online biography.'),
(193, 1, 5, 'collaborated_with', 'collaborated_with', 'Used to relate two collaborating people on a work.'),
(194, 1, 5, 'compilation_of', 'compilation_of', 'Indicates that a musical manifestation is a compilation of several Signals.'),
(195, 1, 5, 'compiled', 'compiled', 'Used to relate an person or a group of person who compiled the manifestation of a musical work.'),
(196, 1, 5, 'compiler', 'compiler', 'Used to relate the manifestation of a musical work to a person or a group of person who compiled it.'),
(197, 1, 5, 'composed_in', 'composed in', '\n        Associates a MusicalWork to the Composition event pertaining\n        to its creation. For example, I might use this property to associate\n        the Magic Flute to its composition event, occuring during 1782 and having as\n        a mo:composer Mozart.\n    '),
(198, 1, 5, 'composer', 'composer', '\n        Associates a composition event to the actual composer. For example,\n        this property could link the event corresponding to the composition of the\n        Magic Flute in 1782 to Mozart himself (who obviously has a FOAF profile:-) ).\n    '),
(199, 1, 5, 'conducted', 'conducted', 'Relates agents to the performances they were conducting'),
(200, 1, 5, 'conductor', 'conductor', 'Relates a performance to the conductor involved'),
(201, 1, 5, 'contains_sample_from', 'contains_sample_from', '\n        Relates a signal to another signal, which has been sampled.\n        '),
(202, 1, 5, 'derived_from', 'derived from', 'A related signal from which the described signal is derived.'),
(203, 1, 5, 'discography', 'discography', 'Used to links an artist to an online discography of their musical works. The discography should provide a summary of each released musical work of the artist.'),
(204, 1, 5, 'discogs', 'discogs', 'Used to link a musical work or the expression of a musical work, an artist or a corporate body to to its corresponding Discogs page.'),
(205, 1, 5, 'djmix_of', 'djmix_of', 'Indicates that all (or most of) the tracks of a musical work or the expression of a musical work were mixed together from all (or most of) the tracks from another musical work or the expression of a musical work to form a so called DJ-Mix. \n    \nThe tracks might have been altered by pitching (so that the tempo of one track matches the tempo of the following track) and fading (so that one track blends in smoothly with the other). If the tracks have been more substantially altered, the \"mo:remix\" relationship type is more appropriate. '),
(206, 1, 5, 'djmixed', 'djmixed', 'Used to relate an artist who djmixed a musical work or the expression of a musical work. \n    \nThe artist usually selected the tracks, chose their sequence, and slightly changed them by fading (so that one track blends in smoothly with the other) or pitching (so that the tempo of one track matches the tempo of the following track). This applies to a \'Mixtape\' in which all tracks were DJ-mixed together into one single long track. '),
(207, 1, 5, 'djmixed_by', 'djmixed_by', 'Used to relate a work or the expression of a work to an artist who djmixed it. \n    \nThe artist usually selected the tracks, chose their sequence, and slightly changed them by fading (so that one track blends in smoothly with the other) or pitching (so that the tempo of one track matches the tempo of the following track). This applies to a \'Mixtape\' in which all tracks were DJ-mixed together into one single long track. '),
(208, 1, 5, 'download', 'download', '\n                This property can be used to link from a person to the website where they make their works available, or from\n                a manifestation (a track or an album, for example) to a web page where it is available for\n                download.\n        \n        It is better to use one of the three sub-properties instead of this one in order to specify wether the\n        content can be accessed for free (mo:freedownload), if it is just free preview material (mo:previewdownload), or\n        if it can be accessed for some money (mo:paiddownload) (this includes links to the Amazon store, for example).\n\n                This property MUST be used only if the content is just available through a web page (holding, for example\n                a Flash application) - it is better to link to actual content directly through the use of mo:available_as and\n                mo:Stream, mo:Torrent or mo:ED2K, etc. Therefore, Semantic Web user agents that don\'t know how to read HTML and even\n                less to rip streams from Flash applications can still access the audio content.\n        '),
(209, 1, 5, 'encodes', 'encodes', '\n        Relates a MusicalItem (a track on a particular CD, an audio file, a stream somewhere) to the signal it encodes.\n\n        This is usually a lower-resolution version of the master signal (issued from a Recording event).\n    '),
(210, 1, 5, 'engineer', 'engineer', 'Relates a performance or a recording to the engineer involved'),
(211, 1, 5, 'engineered', 'engineered', 'Relates agents to the performances/recordings they were engineering in'),
(212, 1, 5, 'eventHomePage', 'eventHomePage', NULL),
(213, 1, 5, 'event_homepage', 'event homepage', 'Links a particular event to a web page'),
(214, 1, 5, 'exchange_item', 'exchange_item', 'A person, a group of person or an organization exchanging an exemplar of a single manifestation.'),
(215, 1, 5, 'fanpage', 'fanpage', 'Used to link an artist to a fan-created webpage devoted to that artist.'),
(216, 1, 5, 'free_download', 'free download', '\n        This property can be used to link from a person to the website where they make their works available, or from\n        a manifestation (a track or an album, for example) to a web page where it is available for free \n        download.\n\n        This property MUST be used only if the content is just available through a web page (holding, for example\n        a Flash application) - it is better to link to actual content directly through the use of mo:available_as and \n        mo:Stream, mo:Torrent or mo:ED2K, etc. Therefore, Semantic Web user agents that don\'t know how to read HTML and even\n        less to rip streams from Flash applications can still access the audio content.\n    '),
(217, 1, 5, 'freedownload', 'freedownload', NULL),
(218, 1, 5, 'genre', 'genre', '\n        Associates an event (like a performance or a recording) to a particular musical genre.\n        Further version of this property may also include works and scores in the domain.\n    '),
(219, 1, 5, 'group', 'group', 'Relates a membership event with the corresponding group'),
(220, 1, 5, 'origin', 'origin', 'Relates an artist to its geographic origin'),
(221, 1, 5, 'has_track', 'has_track', NULL),
(222, 1, 5, 'headliner', 'headliner', 'Relates a performance to the headliner(s) involved'),
(223, 1, 5, 'homepage', 'homepage', 'Links an artist, a record, etc. to a corresponding web page'),
(224, 1, 5, 'image', 'image', 'Indicates a pictorial image (JPEG, GIF, PNG, Etc.) of a musical work, the expression of a musical work, the manifestation of a work or the examplar of a manifestation.'),
(225, 1, 5, 'imdb', 'imdb', 'Used to link an artist, a musical work or the expression of a musical work to their equivalent page on IMDb, the InternetMovieDatabase.'),
(226, 1, 5, 'instrument', 'instrument', 'Relates a performance to a musical instrument involved'),
(227, 1, 5, 'interpreter', 'has interpeter', 'Adds an involved music artist, who interpreted, remixed, or otherwise modified an existing signal, which resulted in the signal that is here the subject of this relation.'),
(228, 1, 5, 'item', 'item', '\n                Relates a musical manifestation to a musical item (this album, and my particular cd) holding the\n                entire manifestation, and not just a part of it.\n        '),
(229, 1, 5, 'key', 'key', '\n        Indicated the key used by the musicians during a performance, or the key of a MusicalWork.\n        Any of 24 major or minor diatonic scales that provide the tonal framework for a piece of music.'),
(230, 1, 5, 'label', 'label', 'Associates a release event with the label releasing the record'),
(231, 1, 5, 'licence', 'licence', 'Used to link a work or the expression of a work to the license under which they can be manipulated (downloaded, modified, etc). \n    \nThis is usually used to link to a Creative Commons licence.'),
(232, 1, 5, 'listened', 'listened', 'Relates agents to the performances they were listening in'),
(233, 1, 5, 'listener', 'listener', 'Relates a performance to the listener involved'),
(234, 1, 5, 'mailorder', 'mailorder', 'Used to link a musical work or the expression of a musical work to a website where people can buy a copy of the musical manifestation.'),
(235, 1, 5, 'mashup_of', 'mashup_of', 'Indicates that musical works or the expressions of a musical work were mashed up on this album or track. \n    \nThis means that two musical works or the expressions of a musical work by different artists are mixed together, over each other, or otherwise combined into a single musical work (usually by a third artist, the remixer).'),
(236, 1, 5, 'media_type', 'has media type', 'The mediatype (file format or MIME type, or physical medium) of a musical manifestation, e.g. a MP3, CD or vinyl.'),
(237, 1, 5, 'medley_of', 'medley_of', 'Indicates that a musical expression is a medley of several other musical expressions. \n    \nThis means that the orignial musical expression were rearranged to create a new musical expression in the form of a medley. '),
(238, 1, 5, 'member', 'member', '\n        Indicates a member of a musical group\n    '),
(239, 1, 5, 'member_of', 'member_of', 'Inverse of the foaf:member property'),
(240, 1, 5, 'membership', 'membership', 'Relates an agent with related membership events'),
(241, 1, 5, 'movement', 'has_movement', 'Indicates that a musical work has movements'),
(242, 1, 5, 'musicbrainz', 'musicbrainz', '\n        Linking an agent, a track or a record to its corresponding Musicbrainz page.\n        '),
(243, 1, 5, 'musicmoz', 'musicmoz', 'Used to link an artist, a musical work or the expression of a musical work to its corresponding MusicMoz page.'),
(244, 1, 5, 'myspace', 'myspace', 'Used to link a person to its corresponding MySpace page.'),
(245, 1, 5, 'olga', 'olga', 'Used to link a track to a tabulature file for track in the On-Line Guitar Archive.'),
(246, 1, 5, 'onlinecommunity', 'onlinecommunity', 'Used to link a person with an online community web page like a blog, a wiki, a forum, a livejournal page, Etc.'),
(247, 1, 5, 'other_release_of', 'other_release_of', 'Indicates that two musical manifestations are essentially the same.'),
(248, 1, 5, 'paid_download', 'paid download', '\n                Provide a link from an artist to a web page where all of that artist\'s musical work is available for some money,\n                or a link from a manifestation (record/track, for example) to a web page providing a paid access to this manifestation.\n        '),
(249, 1, 5, 'paiddownload', 'paiddownload', NULL),
(250, 1, 5, 'performance_of', 'performance of', '\n        Associates a Performance to a musical work or an arrangement that is being used as a factor in it.\n        For example, I might use this property to attach the Magic Flute musical work to \n        a particular Performance.\n    '),
(251, 1, 5, 'performed', 'performed', 'Relates agents to the performances they were performing in'),
(252, 1, 5, 'performed_in', 'performed in', '\n        Associates a Musical Work or an Score to Performances in which they were\n        a factor. For example, I might use this property in order to \n        associate the Magic Flute to a particular performance at the Opera\n        Bastille last year.'),
(253, 1, 5, 'performer', 'performer', 'Relates a performance to the performers involved'),
(254, 1, 5, 'possess_item', 'possess_item', 'A person, a group of person or an organization possessing an exemplar of a single manifestation.'),
(255, 1, 5, 'preview', 'preview', '\n                Relates a musical manifestation to a musical item (this album, and my particular cd), which holds\n                a preview of the manifestation (eg. one track for an album, or a snippet for a track)\n        '),
(256, 1, 5, 'preview_download', 'preview download', '\n                This property can be used to link from a person to the website where they make previews of their works available, or from\n                a manifestation (a track or an album, for example) to a web page where a preview download is available.\n\n                This property MUST be used only if the content is just available through a web page (holding, for example\n                a Flash application) - it is better to link to actual content directly through the use of mo:available_as and\n                mo:Stream, mo:Torrent or mo:ED2K, etc. Therefore, Semantic Web user agents that don\'t know how to read HTML and even\n                less to rip streams from Flash applications can still access the audio content.\n        '),
(257, 1, 5, 'primary_instrument', 'primary instrument', 'Indicates that an artist primarily plays an instrument, or that a member was primarily playing a particular instrument during his membership'),
(258, 1, 5, 'produced', 'produced', 'Used to relate an person or a group of person who produced the manifestation of a work.'),
(259, 1, 5, 'produced_score', 'produced score', '\n        Associates an arrangement or a composition event to a score product (score here does not refer to a published score, but more\n        an abstract arrangement of a particular work).\n    '),
(260, 1, 5, 'produced_signal', 'produced signal', '\n                Associates a Recording to the outputted signal.\n        '),
(261, 1, 5, 'produced_signal_group', 'produced signal group', 'Associates a recording session with a group of master signals produced by it.'),
(262, 1, 5, 'produced_sound', 'produced sound', '\n                Associates a Performance to a physical Sound that is being produced by it.\n        '),
(263, 1, 5, 'produced_work', 'produced work', '\n                Associates a composition event to the produced MusicalWork. For example,\n                this property could link the event corresponding to the composition of the\n                Magic Flute in 1782 to the Magic Flute musical work itself. This musical work\n                can then be used in particular performances.\n        '),
(264, 1, 5, 'producer', 'producer', 'Used to relate the manifestation of a work to a person or a group of person who produced it.'),
(265, 1, 5, 'producesSignal', 'producesSignal', NULL),
(266, 1, 5, 'producesSound', 'producesSound', NULL),
(267, 1, 5, 'producesWork', 'producesWork', NULL),
(268, 1, 5, 'productOfComposition', 'productOfComposition', NULL),
(269, 1, 5, 'publicationOf', 'publicationOf', NULL),
(270, 1, 5, 'publication_of', 'publication of', 'Link a particular manifestation to the related signal, score, libretto, or lyrics'),
(271, 1, 5, 'published', 'published', 'Used to relate an person or a group of person who published the manifestation of a work.'),
(272, 1, 5, 'publishedAs', 'publishedAs', NULL),
(273, 1, 5, 'published_as', 'published as', '\n        Links a musical expression (e.g. a signal or a score) to one of its manifestations (e.g. a track on a particular record or a published score).\n    '),
(274, 1, 5, 'publisher', 'publisher', 'Used to relate a musical manifestation to a person or a group of person who published it.'),
(275, 1, 5, 'publishingLocation', 'publishingLocation', NULL),
(276, 1, 5, 'publishing_location', 'publishingLocation', '\n        Relates a musical manifestation to its publication location.\n        '),
(277, 1, 5, 'record', 'released record', 'Associates a release with the records it contains. A single release can be associated with multiple records, for example for a multi-disc release.'),
(278, 1, 5, 'recordedAs', 'recordedAs', NULL),
(279, 1, 5, 'recorded_as', 'recorded as', '\n        This is a shortcut property, allowing to bypass all the Sound/Recording steps. This property\n        allows to directly link a Performance to the recorded Signal. This is recommended for \"normal\"\n        users. However, advanced users wanting to express things such as the location of the microphone will\n        have to create this shortcut as well as the whole workflow, in order to let the \"normal\" users access\n        simply the, well, simple information:-) .\n    '),
(280, 1, 5, 'recorded_in', 'recorded in', '\n            Associates a physical Sound to a Recording event where it is being used \n        in order to produce a signal. For example, I might use this property to \n        associate the sound produced by a particular performance of the magic flute\n        to a given recording, done using my cell-phone.\n    '),
(281, 1, 5, 'recording_of', 'recorded sound', '\n            Associates a Recording event to a physical Sound being recorded.\n                For example, I might use this property to\n                associate a given recording, done using my cell phone, to the \n        sound produced by a particular performance of the magic flute.\n    '),
(282, 1, 5, 'records', 'records', '\n        This is the inverse of the shortcut property recordedAs, allowing to relate directly a performance\n        to a signal.\n    '),
(283, 1, 5, 'release', 'release', 'Associates a release with the corresponding release event'),
(284, 1, 5, 'releaseStatus', 'releaseStatus', NULL),
(285, 1, 5, 'releaseType', 'releaseType', NULL),
(286, 1, 5, 'release_status', 'release_status', '\n                Relates a musical manifestation to its release status (bootleg, ...)\n        '),
(287, 1, 5, 'release_type', 'release_type', '\n        Relates a musical manifestation to its release type (interview, spoken word, album, ...)\n    '),
(288, 1, 5, 'remaster_of', 'remaster_of', 'This relates two musical work or the expression of a musical work, where one is a remaster of the other. \n    \nA remaster is a new version made for release from source recordings that were earlier released separately. This is usually done to improve the audio quality or adjust for more modern playback equipment. The process generally doesn\'t involve changing the music in any artistically important way. It may, however, result in tracks that are a few seconds longer or shorter.'),
(289, 1, 5, 'remix_of', 'remix_of', 'Used to relate the remix of a musical work in a substantially altered version produced by mixing together individual tracks or segments of an original musical source work.'),
(290, 1, 5, 'remixed', 'remixed', 'Used to relate an artist who remixed a musical work or the expression of a musical work. \n    \nThis involves taking just one other musical work and using audio editing to make it sound like a significantly different, but usually still recognisable, song. It can be used to link an artist to a single song that they remixed, or, if they remixed an entire musical work.'),
(291, 1, 5, 'remixer', 'remixer', 'Used to relate a musical work or the expression of a musical work to an artist who remixed it. \n    \nThis involves taking just one other musical work and using audio editing to make it sound like a significantly different, but usually still recognisable, song. It can be used to link an artist to a single song that they remixed, or, if they remixed an entire musical work.'),
(292, 1, 5, 'review', 'review', 'Used to link a work or the expression of a work to a review. \n    \nThe review does not have to be open content, as long as it is accessible to the general internet population.'),
(293, 1, 5, 'sampled', 'sampled', 'Used to relate an artist who sampled a Signal.'),
(294, 1, 5, 'sampledVersionOf', 'sampledVersionOf', NULL),
(295, 1, 5, 'sampled_version', 'sampled version', '\n        Associates an analog signal with a sampled version of it\n    '),
(296, 1, 5, 'sampled_version_of', 'sampled version of', '\n        Associates a digital signal with the analog version of it\n    '),
(297, 1, 5, 'sampler', 'sampler', 'Used to relate the signal of a musical work to an artist who sampled it.'),
(298, 1, 5, 'sell_item', 'sell_item', 'A person, a group of person or an organization selling an exemplar of a single manifestation.'),
(299, 1, 5, 'signal', 'signal', 'Associates a group of signals with one of the signals it contains'),
(300, 1, 5, 'signalTime', 'signalTime', NULL),
(301, 1, 5, 'similar_to', 'similar_to', '\n            A similarity relationships between two objects (so far, either an agent, a signal or a genre, but\n        this could grow).\n        This relationship is pretty general and doesn\'t make any assumptions on how the similarity claim\n        was derived.\n        Such similarity statements can come from a range of different sources (Musicbrainz similarities between\n        artists, or coming from some automatic content analysis).\n        However, the origin of such statements should be kept using a named graph approach - and ultimately, the \n        documents providing such statements should attach some metadata to themselves (confidence of the claim, etc.).\n        '),
(302, 1, 5, 'singer', 'singer', 'Relates a performance to an involved singer'),
(303, 1, 5, 'supporting_musician', 'supporting_musician', 'Used to relate an artist doing long-time instrumental or vocal support for another artist.'),
(304, 1, 5, 'lyrics', 'lyrics', 'Associates lyrics with a musical work'),
(305, 1, 5, 'time', 'time', '\n        Associates a Signal to a time object - its actual domain\n    '),
(306, 1, 5, 'track', 'track', 'Indicates a part of a musical manifestation - in this particular case, a track.'),
(307, 1, 5, 'translation_of', 'translation_of', 'Indicates that a work or the expression of a work has translated or transliterated into another expression of a work.'),
(308, 1, 5, 'tribute_to', 'tribute_to', 'Indicates a musical work or the expression of a musical work that is a tribute to an artist - normally consisting of music being composed by the artist but performed by other artists. '),
(309, 1, 5, 'usedInPerformance', 'usedInPerformance', NULL),
(310, 1, 5, 'usedInRecording', 'usedInRecording', NULL),
(311, 1, 5, 'usesSound', 'usesSound', NULL),
(312, 1, 5, 'usesWork', 'usesWork', NULL),
(313, 1, 5, 'want_item', 'want_item', 'A person, a group of person or an organization wanting an exemplar of a single manifestation.'),
(314, 1, 5, 'wikipedia', 'wikipedia', '\n        Used to link an work, an expression of a work, a manifestation of a work, \n        a person, an instrument or a musical genre to its corresponding WikiPedia page. \n        The full URL should be used, not just the WikiName.\n    '),
(315, 1, 5, 'activity_end', 'activity end', 'Relates an artist to a date at which its activity ended'),
(316, 1, 5, 'activity_start', 'activity start', 'Relates an artist to a date at which its activity started'),
(317, 1, 5, 'bitsPerSample', 'bitsPerSample', '\n        Associates a digital signal to the number a bits used to encode one sample. Range is xsd:int.\n    '),
(318, 1, 5, 'bpm', 'bpm', '\n        Indicates the BPM of a MusicalWork or a particular Performance \n        Beats per minute: the pace of music measured by the number of beats occurring in 60 seconds.\n    '),
(319, 1, 5, 'catalogue_number', 'catalogue number', 'Links a release with the corresponding catalogue number'),
(320, 1, 5, 'channels', 'channels', '\n        Associates a signal to the number of channels it holds (mono --> 1, stereo --> 2). Range is xsd:int.\n    '),
(321, 1, 5, 'ean', 'ean', 'The European Article Number (EAN) is a universal identifier for products, commonly printed in form of barcodes on them. The numbers represented by those codes can either be 8 or 13 digits long, with the 13-digit-version being most common. EANs form a superset of the North American Universal Product Code (UPC) as every UPC can be made an EAN by adding a leading zero to it. Additionally every EAN is also a Japanese Article Number (JAN). The identifiers were formerly assigned by EAN International which merged with Uniform Code Council (UCC, the guys behind the UPCs) and Electronic Commerce Council of Canada (ECCC) to become GS1. '),
(322, 1, 5, 'encoding', 'encoding', 'Method used to convert analog electronic signals into digital format such as \"MP3 CBR @ 128kbps\", \"OGG @ 160kbps\", \"FLAC\", etc.'),
(323, 1, 5, 'duration', 'duration', 'The duration of a track or a signal in ms'),
(324, 1, 5, 'grid', 'GRid', 'The Global Release Identifier (GRid) is a system for uniquely identifying Releases of music over electronic networks (that is, online stores where you can buy music as digital files). As that it can be seen as the equivalent of the BarCode (or more correctly the GTIN) as found on physical releases of music. Like the ISRC (a code for identifying single recordings as found on releases) it was developed by the IFPI but it does not appear to be a standard of the ISO.'),
(325, 1, 5, 'gtin', 'gtin', 'GTIN is a grouping term for EANs and UPCs. In common speech those are called barcodes although the barcodes are just a representation of those identifying numbers.'),
(326, 1, 5, 'ipi', 'ipi', 'The Interested Parties Information Code (IPI) is an ISO standard similar to ISBNs for identifying the people or groups with some involvement with a particular musical work / compositions.'),
(327, 1, 5, 'ismn', 'ismn', 'The International Standard Music Number (ISMN) is an ISO standard similar to ISBNs for identifying printed music publications'),
(328, 1, 5, 'isrc', 'isrc', '\n    The ISRC (International Standard Recording Code) is the international identification system for sound recordings and music videorecordings. \n    Each ISRC is a unique and permanent identifier for a specific recording which can be permanently encoded into a product as its digital fingerprint. \n    Encoded ISRC provide the means to automatically identify recordings for royalty payments.\n    '),
(329, 1, 5, 'iswc', 'iswc', 'Links a musical work to the corresponding ISWC number'),
(330, 1, 5, 'lc', 'lc', 'The Label Code (LC) was introduced in 1977 by the IFPI (International Federation of Phonogram and Videogram Industries) in order to unmistakably identify the different record labels (see Introduction, Record labels) for rights purposes. The Label Code consists historically of 4 figures, presently being extended to 5 figures, preceded by LC and a dash (e.g. LC-0193 = Electrola; LC-0233 = His Master\'s Voice). Note that the number of countries using the LC is limited, and that the code given on the item is not always accurate.'),
(331, 1, 5, 'meter', 'meter', 'Associates a musical work or a score with its meter'),
(332, 1, 5, 'movementNum', 'movementNum', NULL),
(333, 1, 5, 'movement_number', 'movement number', 'Indicates the position of a movement in a musical work.'),
(334, 1, 5, 'musicbrainz_guid', 'Musicbrainz GUID', 'Links an object to the corresponding Musicbrainz identifier'),
(335, 1, 5, 'opus', 'opus', '\n        Used to define a creative work, especially a musical composition numbered to designate the order of a composer\'s works.\n    '),
(336, 1, 5, 'puid', 'puid', '\n        Link a signal to the PUIDs associated with it, that is, PUID computed from MusicalItems (mo:AudioFile) \n        derived from this signal.\n        PUIDs (Portable Unique IDentifier) are the IDs used in the \n        proprietary MusicDNS AudioFingerprinting system which is operated by MusicIP.\n\n        Using PUIDs, one (with some luck) can identify the Signal object associated with a particular audio file, therefore allowing\n        to access further information (on which release this track is featured? etc.). Using some more metadata one can identify\n        the particular Track corresponding to the audio file (a track on a particular release).'),
(337, 1, 5, 'record_count', 'record count', 'Associates a release with the number of records it contains, e.g. the number of discs it contains in the case of a multi-disc release.'),
(338, 1, 5, 'record_number', 'has record number', 'Indicates the position of a record in a release (e.g. a 2xLP, etc.).'),
(339, 1, 5, 'record_side', 'has record side', 'Associates the side on a vinyl record, where a track is located, e.g. A, B, C, etc. This property can then also be used \nin conjunction with mo:track_number, so that one can infer e.g. \"A1\", that means, track number 1 on side A.'),
(340, 1, 5, 'sampleRate', 'sampleRate', NULL),
(341, 1, 5, 'sample_rate', 'sample_rate', '\n        Associates a digital signal to its sample rate. It might be easier to express it this way instead of\n        defining a timeline map:-) Range is xsd:float.\n    '),
(342, 1, 5, 'tempo', 'tempo', '\n        Rate of speed or pace of music. Tempo markings are traditionally given in Italian; \n        common markings include: grave (solemn; very, very slow); largo (broad; very slow); \n        adagio (quite slow); andante (a walking pace); moderato (moderate); allegro (fast; cheerful); \n        vivace (lively); presto (very fast); accelerando (getting faster); ritardando (getting slower); \n        and a tempo (in time; returning to the original pace).\n    '),
(343, 1, 5, 'text', 'text', 'Associates lyrics with their text.'),
(344, 1, 5, 'trackNum', 'trackNum', NULL),
(345, 1, 5, 'track_count', 'track count', 'The track count of a record'),
(346, 1, 5, 'track_number', 'track number', 'Indicates the position of a track on a record medium (a CD, etc.).'),
(347, 1, 5, 'trmid', 'trmid', '\n        Indicates the TRMID of a track.\n        TRM IDs are MusicBrainz\' old AudioFingerprinting system. \n        TRM (TRM Recognizes Music) IDs are (somewhat) unique ids that represent \n        the audio signature of a musical piece (see AudioFingerprint).\n    '),
(348, 1, 5, 'upc', 'upc', 'UPC stands for \"Universal Product Code\", which was the original barcode used in the United States and Canada. The UPC (now officially EAN.UCC-12 is a numerical method of identifying products without redundancy worldwide for all types of products in the retail sector. The EAN is a superset of the original UPC increasing the digits to 13 with the prefix 0 reserved for UPC. As of 2005, manufacturers are only allowed to use the new 13-digit codes on their items, rather than having two separate numbers.'),
(349, 1, 5, 'uuid', 'universally unique identifier', '\n            Links an object to an universally unique identifier for it.\n    '),
(408, 1, 10, 'davidDigitalCompact', 'NumbDigitalCompact', NULL),
(409, 1, 10, 'davidConcerts', 'Concerts', NULL);
INSERT INTO `property` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(410, 1, 10, 'davidStreaming', 'Streaming', NULL),
(411, 1, 10, 'davidYear', 'Year', NULL),
(412, 1, 10, 'davidSource', 'Source', NULL),
(413, 1, 10, 'davidNameBand', 'NameBand', NULL),
(414, 1, 10, 'davidGenre', 'Genre', NULL),
(415, 1, 10, 'daviddate', 'date', NULL),
(416, 1, 10, 'davidorigin', 'origin', NULL),
(417, 1, 10, 'davidname', 'musician\'s function name', NULL),
(418, 1, 10, 'davidactivity_start', 'activity_start', NULL),
(419, 1, 10, 'davidactivity_end', 'activity_end', NULL),
(420, 1, 10, 'davidfirstname', 'first name', NULL),
(421, 1, 10, 'davidlastname', 'last name', NULL),
(422, 1, 10, 'davidnickname', 'nickname', NULL),
(423, 1, 10, 'davidnationality', 'nationality', NULL),
(424, 1, 10, 'davidbirth', 'birth date', NULL),
(425, 1, 10, 'daviddeath', 'death date', NULL),
(426, 1, 10, 'davidtypeequipement', 'type of equipment', NULL),
(427, 1, 10, 'davidbrandequipement', 'the brand of the equipement', NULL),
(428, 1, 10, 'davidmanufacture', 'place of manufacture', NULL),
(429, 1, 10, 'daviddesign', 'place of design', NULL),
(430, 1, 10, 'davidcolor', 'color', NULL),
(431, 1, 10, 'davidreference', 'reference', NULL),
(432, 1, 10, 'davidconstructyear', 'construction year', NULL);

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
(1, 1, 94, 2, NULL, 'Anthony Kiedis', 1, '2020-04-18 14:15:17', '2020-04-18 14:29:14', 'Omeka\\Entity\\Item'),
(2, 1, 94, 2, NULL, 'Michael \"Flea\" Balzary', 1, '2020-04-18 14:28:07', '2020-04-18 14:46:42', 'Omeka\\Entity\\Item'),
(3, 1, 94, 2, NULL, 'Chad Smith', 1, '2020-04-18 14:39:53', '2020-04-18 14:39:53', 'Omeka\\Entity\\Item'),
(4, 1, 94, 2, NULL, 'John Frusciante', 1, '2020-04-18 14:42:23', '2020-04-18 14:42:23', 'Omeka\\Entity\\Item'),
(5, 1, 94, 2, NULL, 'Josh Adam Klinghoffer', 1, '2020-04-18 14:44:57', '2020-04-18 14:44:57', 'Omeka\\Entity\\Item'),
(6, 1, 187, 5, NULL, 'Red Hot Chilli Peppers', 1, '2020-04-18 14:48:36', '2020-04-19 06:50:31', 'Omeka\\Entity\\Item'),
(7, 1, 134, 4, NULL, 'bassist', 1, '2020-04-18 14:51:24', '2020-04-18 14:54:30', 'Omeka\\Entity\\Item'),
(8, 1, 134, 4, NULL, 'drumer', 1, '2020-04-18 14:54:07', '2020-04-18 14:54:07', 'Omeka\\Entity\\Item'),
(9, 1, 134, 4, NULL, 'guitarist', 1, '2020-04-18 14:55:31', '2020-04-18 14:55:31', 'Omeka\\Entity\\Item'),
(10, 1, 134, 4, NULL, 'singer', 1, '2020-04-18 14:56:17', '2020-04-18 14:56:17', 'Omeka\\Entity\\Item'),
(11, 1, 134, 4, NULL, 'keyboardist', 1, '2020-04-18 14:57:06', '2020-04-18 14:57:06', 'Omeka\\Entity\\Item'),
(12, 1, 189, 3, NULL, 'Red hot chilli peppers (Anthony Kiedis)', 1, '2020-04-18 15:00:44', '2020-04-19 06:25:04', 'Omeka\\Entity\\Item'),
(14, 1, 189, 3, NULL, 'Red hot chilli peppers (Michael \"Flea\" Balzary)', 1, '2020-04-18 15:18:54', '2020-04-19 06:29:31', 'Omeka\\Entity\\Item'),
(15, 1, 189, 3, NULL, 'Red hot chilli peppers (Chad Smith)', 1, '2020-04-18 15:26:28', '2020-04-19 07:02:57', 'Omeka\\Entity\\Item'),
(16, 1, 189, 3, NULL, 'Red hot chilli peppers (John Frusciante)', 1, '2020-04-18 15:42:35', '2020-04-19 06:33:13', 'Omeka\\Entity\\Item'),
(17, 1, 194, 3, NULL, 'Red hot chilli peppers (John Frusciante)', 1, '2020-04-18 15:49:26', '2020-04-19 06:34:29', 'Omeka\\Entity\\Item'),
(18, 1, 189, 3, NULL, 'Red hot chilli peppers (Josh Adam Klinghoffer)', 1, '2020-04-18 15:51:19', '2020-04-19 06:36:18', 'Omeka\\Entity\\Item'),
(19, 1, 186, 7, NULL, 'Red Hot Chilli Peppers Statistics', 1, '2020-04-18 16:06:32', '2020-04-19 06:51:21', 'Omeka\\Entity\\Item'),
(20, 1, 192, 9, NULL, 'Jazz bass', 1, '2020-04-18 16:13:29', '2020-04-18 16:13:29', 'Omeka\\Entity\\Item'),
(21, 1, 191, 10, NULL, 'Fender', 1, '2020-04-18 16:14:50', '2020-04-18 16:14:50', 'Omeka\\Entity\\Item'),
(22, 1, 193, 11, NULL, 'Equipment 1', 1, '2020-04-18 16:18:01', '2020-04-19 06:56:54', 'Omeka\\Entity\\Item'),
(23, 1, 194, 6, NULL, 'Flea - Jazz Bass', 1, '2020-04-18 16:19:57', '2020-04-19 07:07:49', 'Omeka\\Entity\\Item');

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
(106, 1, 5, 'Activity', 'activity', '\n        An activity period, defining when an artist was musically active.\n    '),
(107, 1, 5, 'AnalogSignal', 'analogue signal', '\n        An analog signal.\n    '),
(108, 1, 5, 'Arrangement', 'arrangement', '\n        An arrangement event.\n        Takes as agent the arranger, and produces a score (informational object, not the actually published score).\n    '),
(109, 1, 5, 'Arranger', 'arranger', NULL),
(110, 1, 5, 'AudioFile', 'audio file', 'An audio file, which may be available on a local file system or through http, ftp, etc.'),
(111, 1, 5, 'CD', 'CD', 'Compact Disc used as medium to record a musical manifestation.'),
(112, 1, 5, 'Composer', 'composer', NULL),
(113, 1, 5, 'Composition', 'composition', '\n        A composition event.\n        Takes as agent the composer himself.\n        It produces a MusicalWork, or a MusicalExpression (when the initial \"product\" is a score, for example), or both...\n    '),
(114, 1, 5, 'Conductor', 'conductor', NULL),
(115, 1, 5, 'CorporateBody', 'corporate body', 'Organization or group of individuals and/or other organizations involved in the music market.'),
(116, 1, 5, 'DAT', 'DAT', 'Digital Audio Tape used as medium to record a musical manifestation.'),
(117, 1, 5, 'DCC', 'DCC', 'Digital Compact Cassette used as medium to record a musical manifestation.'),
(118, 1, 5, 'DVDA', 'DVDA', 'DVD-Audio used as medium to record a musical manifestation.'),
(119, 1, 5, 'DigitalSignal', 'digital signal', '\n        A digital signal\n    '),
(120, 1, 5, 'ED2K', 'ED2K', 'Something available on the E-Donkey peer-2-peer filesharing network'),
(121, 1, 5, 'Festival', 'Festival', '\n        A festival - musical/artistic event lasting several days, like Glastonbury, Rock Am Ring...\n        We migth decompose this event (which is in fact just a classification of the space/time region related to \n        a particular festival) using hasSubEvent in several performances at different space/time.\n    '),
(122, 1, 5, 'Genre', 'Genre', '\n        An expressive style of music.\n        \n        Any taxonomy can be plug-in here. You can either define a genre by yourself, like this:\n\n        :mygenre a mo:Genre; dc:title \"electro rock\".\n\n        Or you can refer to a DBPedia genre (such as http://dbpedia.org/resource/Baroque_music), allowing semantic web\n        clients to access easily really detailed structured information about the genre you are refering to.\n    '),
(123, 1, 5, 'Instrument', 'Instrument', '\n        Any of various devices or contrivances that can be used to produce musical tones or sound.\n        \n        Any taxonomy can be used to subsume this concept. The default one is one extracted by Ivan Herman\n        from the Musicbrainz instrument taxonomy, conforming to SKOS. This concept holds a seeAlso link \n        towards this taxonomy.\n    '),
(124, 1, 5, 'Instrumentation', 'instrumentation', '\n        Instrumentation deals with the techniques of writing music for a specific instrument, \n        including the limitations of the instrument, playing techniques and idiomatic handling of the instrument.\n    '),
(125, 1, 5, 'Label', 'label', 'Trade name of a company that produces musical works or expression of musical works.'),
(126, 1, 5, 'Libretto', 'libretto', '\n                Libretto\n        '),
(127, 1, 5, 'Listener', 'listened', NULL),
(128, 1, 5, 'Lyrics', 'lyrics', '\n        Lyrics\n    '),
(129, 1, 5, 'MD', 'MD', 'Mini Disc used as medium to record a musical manifestation.'),
(130, 1, 5, 'MagneticTape', 'MagneticTape', 'Magnetic analogue tape used as medium to record a musical manifestation.'),
(131, 1, 5, 'Medium', 'Medium', 'A means or instrumentality for storing or communicating musical manifestation.'),
(132, 1, 5, 'Membership', 'membership', 'A membership event, where one or several people belongs to a group during a particular time period.'),
(133, 1, 5, 'Movement', 'movement', 'A movement is a self-contained part of a musical work. While individual or selected movements from a composition are sometimes performed separately, a performance of the complete work requires all the movements to be performed in succession.\n\nOften a composer attempts to interrelate the movements thematically, or sometimes in more subtle ways, in order that the individual\nmovements exert a cumulative effect. In some forms, composers sometimes link the movements, or ask for them to be played without a\npause between them.\n    '),
(134, 1, 5, 'MusicArtist', 'music artist', '\n        A person or a group of people (or a computer :-) ), whose musical \n        creative work shows sensitivity and imagination \n    '),
(135, 1, 5, 'MusicGroup', 'music group', 'Group of musicians, or musical ensemble, usually popular or folk, playing parts of or improvising off of a musical arrangement. '),
(136, 1, 5, 'MusicalExpression', 'musical expression', '\nThe intellectual or artistic realization of a work in the form of alpha-numeric, musical, or choreographic notation, sound, etc., or any combination of such forms.    \n\n\nFor example:\n\nWork #1 Franz Schubert\'s Trout quintet\n\n    * Expression #1 the composer\'s score\n    * Expression #2 sound issued from the performance by the Amadeus Quartet and Hephzibah Menuhin on piano\n    * Expression #3 sound issued from the performance by the Cleveland Quartet and Yo-Yo Ma on the cello\n    * . . . . \n\nThe Music Ontology defines the following sub-concepts of a MusicalExpression, which should be used instead of MusicalExpression itself: Score (the\nresult of an arrangement), Sound (produced during a performance), Signal. However, it is possible to stick to FRBR and bypass the worflow\nmechanism this ontology defines by using the core FRBR properties on such objects. But it is often better to use events to interconnect such \nexpressions (allowing to go deeply into the production process - `this performer was playing this particular instrument at that\nparticular time\').\n    \n    '),
(137, 1, 5, 'MusicalItem', 'MusicalItem', 'A single exemplar of a musical expression.\n    \nFor example, it could be a single exemplar of a CD. This is normally an single object (a CD) possessed by somebody.\n\nFrom the FRBR final report: The entity defined as item is a concrete entity. It is in many instances a single physical object (e.g., a copy of a one-volume monograph, a single audio cassette, etc.). There are instances, however, where the entity defined as item comprises more than one physical object (e.g., a monograph issued as two separately bound volumes, a recording issued on three separate compact discs, etc.).\n\nIn terms of intellectual content and physical form, an item exemplifying a manifestation is normally the same as the manifestation itself. However, variations may occur from one item to another, even when the items exemplify the same manifestation, where those variations are the result of actions external to the intent of the producer of the manifestation (e.g., damage occurring after the item was produced, binding performed by a library, etc.). \n    '),
(138, 1, 5, 'MusicalManifestation', 'musical manifestation', '\n\nThis entity is related to the edition/production/publication of a musical expression (musical manifestation are closely related with the music industry (their terms, concepts, definitions, methods (production, publication, etc.), etc.)\n    \nFrom the FRBR final report: The entity defined as manifestation encompasses a wide range of materials, including manuscripts, books, periodicals, maps, posters, sound recordings, films, video recordings, CD-ROMs, multimedia kits, etc. As an entity, manifestation represents all the physical objects that bear the same characteristics, in respect to both intellectual content and physical form.\n\n\nWork #1 J. S. Bach\'s Six suites for unaccompanied cello\n\n    * Expression #1 sound issued during the performance by Janos Starker recorded in 1963 and 1965\n          o Manifestation #1 recordings released on 33 1/3 rpm sound discs in 1965 by Mercury\n          o Manifestation #2 recordings re-released on compact disc in 1991 by Mercury \n    * Expression #2 sound issued during the performances by Yo-Yo Ma recorded in 1983\n          o Manifestation #1 recordings released on 33 1/3 rpm sound discs in 1983 by CBS Records\n          o Manifestation #2 recordings re-released on compact disc in 1992 by CBS Records \n\n          \nChanges that occur deliberately or even inadvertently in the production process that affect the copies result, strictly speaking, in a new manifestation. A manifestation resulting from such a change may be identified as a particular \"state\" or \"issue\" of the publication.\n\nChanges that occur to an individual copy after the production process is complete (e.g., the loss of a page, rebinding, etc.) are not considered to result in a new manifestation. That copy is simply considered to be an exemplar (or item) of the manifestation that deviates from the copy as produced.\n\nWith the entity defined as manifestation we can describe the physical characteristics of a set of items and the characteristics associated with the production and distribution of that set of items that may be important factors in enabling users to choose a manifestation appropriate to their physical needs and constraints, and to identify and acquire a copy of that manifestation.\n\nDefining manifestation as an entity also enables us to draw relationships between specific manifestations of a work. We can use the relationships between manifestations to identify, for example, the specific publication that was used to create a microreproduction.          \n\n'),
(139, 1, 5, 'MusicalWork', 'musical work', '\n    Distinct intellectual or artistic musical creation.\n    \nFrom the FRBR final report: A work is an abstract entity; there is no single material object one can point to as the work. We recognize the work through individual realizations or expressions of the work, but the work itself exists only in the commonality of\ncontent between and among the various expressions of the work. When we speak of Homer\'s Iliad as a work, our point of reference is not a particular recitation or text of the work, but the intellectual creation that lies behind all the various expressions of the work.     \n\nFor example:\n\nwork #1 J. S. Bach\'s The art of the fugue\n\n    \n    '),
(140, 1, 5, 'Orchestration', 'orchestration', '\n            Orchestration includes, in addition to instrumentation, the handling of groups of instruments and their balance and interaction.\n    '),
(141, 1, 5, 'Performance', 'performance', '\n        A performance event. \n        It might include as agents performers, engineers, conductors, or even listeners.\n        It might include as factors a score, a MusicalWork, musical instruments. \n        It might produce a sound:-)\n    '),
(142, 1, 5, 'Performer', 'performer', NULL),
(143, 1, 5, 'PublishedLibretto', 'published libretto', 'A published libretto'),
(144, 1, 5, 'PublishedLyrics', 'published lyrics', 'Published lyrics, as a book or as a text file, for example'),
(145, 1, 5, 'PublishedScore', 'published score', 'A published score (subclass of MusicalManifestation)'),
(146, 1, 5, 'Record', 'record', 'A published record (manifestation which first aim is to render the product of a recording)'),
(147, 1, 5, 'Recording', 'recording', '\n        A recording event.\n        Takes a sound as a factor to produce a signal (analog or digital).\n        The location of such events (if any) is the actual location of the corresponding\n        microphone or the \"recording device\".\n    '),
(148, 1, 5, 'RecordingSession', 'recording session', 'A set of performances/recordings/mastering events. This event can be decomposed in its constituent events using event:sub_event'),
(149, 1, 5, 'Release', 'release', 'A specific release, with barcode, box, liner notes, cover art, and a number of records'),
(150, 1, 5, 'ReleaseEvent', 'release event', 'A release event, in a particular place (e.g. a country) at a particular time. Other factors of this event might include cover art, liner notes, box, etc. or a release grouping all these.'),
(151, 1, 5, 'ReleaseStatus', 'release status', 'Musical manifestation release status.'),
(152, 1, 5, 'ReleaseType', 'Release type', '\n        Release type of a particular manifestation, such as \"album\" or \"interview\"...\n    '),
(153, 1, 5, 'SACD', 'SACD', 'Super Audio Compact Disc used as medium to record a musical manifestation.'),
(154, 1, 5, 'Score', 'score', '\n        Here, we are dealing with the informational object (the MusicalExpression), not the actually \"published\" score.\n        This may be, for example, the product of an arrangement process.\n    '),
(155, 1, 5, 'Show', 'Show', '\n        A show - a musical event lasting several days, in a particular venue. Examples can be\n        \"The Magic Flute\" at the Opera Bastille, August 2005, or a musical in the west end...\n    '),
(156, 1, 5, 'Signal', 'signal', '\n        A subclass of MusicalExpression, representing a signal, for example a master signal produced by a performance and a recording.\n    '),
(157, 1, 5, 'SignalGroup', 'signal group', '\n        A musical expression representing a group of signals, for example a set of masters resulting from a whole recording/mastering session.\n    '),
(158, 1, 5, 'SoloMusicArtist', 'solo music artist', 'Single person whose musical creative work shows sensitivity and imagination.'),
(159, 1, 5, 'Sound', 'sound', '\n        A subclass of MusicalExpression, representing a sound. Realisation of a MusicalWork during a musical Performance.\n    '),
(160, 1, 5, 'SoundEngineer', 'sound engineer', NULL),
(161, 1, 5, 'Stream', 'Stream', 'Transmission over a network  used as medium to broadcast a musical manifestation'),
(162, 1, 5, 'Torrent', 'Torrent', 'Something available on the Bittorrent peer-2-peer filesharing network'),
(163, 1, 5, 'Track', 'track', 'A track on a particular record'),
(164, 1, 5, 'Transcription', 'transcription', 'Transcription event'),
(165, 1, 5, 'Vinyl', 'Vinyl', 'Vinyl used as medium to record a musical manifestation'),
(186, 1, 10, 'davidstats', 'Statistics of the band', NULL),
(187, 1, 10, 'davidband', 'Band', NULL),
(188, 1, 10, 'davidfunction', 'function of the musician', NULL),
(189, 1, 10, 'davidmusician_band', 'relation between musician and band', NULL),
(190, 1, 10, 'davidmusician', 'person', NULL),
(191, 1, 10, 'davidbrand', 'brand of the equipment', NULL),
(192, 1, 10, 'davidtypeofmaterial', 'type of material', NULL),
(193, 1, 10, 'davidmaterial', 'material', NULL),
(194, 1, 10, 'davidmusician_equipment', 'relation between musician and equipement', NULL);

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
(2, 1, 94, NULL, NULL, 'musician'),
(3, 1, 135, NULL, NULL, 'musician_band'),
(4, 1, 134, NULL, NULL, 'function_of_the_musician'),
(5, 1, 187, NULL, NULL, 'band'),
(6, 1, 123, NULL, NULL, 'musician_equipment'),
(7, 1, 186, NULL, NULL, 'band_statistics'),
(9, 1, 192, NULL, NULL, 'type_equipment'),
(10, 1, 191, NULL, NULL, 'brand'),
(11, 1, 193, NULL, NULL, 'equipment');

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
(23, 2, 139, NULL, NULL, 3, NULL, 0, 0),
(24, 2, 140, NULL, NULL, 4, NULL, 0, 0),
(25, 2, 131, NULL, ' pseudonyme of the musician (if applicable)', 5, NULL, 0, 0),
(28, 2, 138, 'Nationality ', 'Nationality of the musician', 6, NULL, 0, 0),
(29, 3, 1, NULL, NULL, 1, NULL, 0, 0),
(30, 3, 4, NULL, NULL, 2, NULL, 0, 0),
(32, 4, 1, NULL, NULL, 1, NULL, 0, 0),
(33, 4, 4, NULL, NULL, 2, NULL, 0, 0),
(34, 4, 138, NULL, 'Function of a musician in a group. For exemple : bassist, guitarist, singer etc.', 3, NULL, 0, 0),
(35, 3, 316, NULL, 'when did the musician join the group?', 3, NULL, 0, 0),
(36, 3, 315, NULL, 'when did the musician left the group? (if applicable)', 4, NULL, 0, 0),
(37, 5, 1, NULL, NULL, 1, NULL, 0, 0),
(38, 5, 4, NULL, NULL, 2, NULL, 0, 0),
(39, 5, 138, NULL, 'Name of the band', 3, NULL, 1, 0),
(40, 5, 218, NULL, 'One or more kind of music played by the band. For example : Dancehall ,Blues, Funk, Jazz etc.', 4, NULL, 1, 0),
(41, 5, 7, NULL, 'date of group formation', 5, NULL, 0, 0),
(42, 5, 220, NULL, 'The geographic origin of the band', 6, NULL, 0, 0),
(43, 6, 1, NULL, NULL, 1, NULL, 0, 0),
(44, 6, 4, NULL, NULL, 2, NULL, 0, 0),
(45, 7, 1, NULL, NULL, 1, NULL, 0, 0),
(46, 7, 4, NULL, NULL, 2, NULL, 0, 0),
(57, 9, 1, NULL, NULL, 1, NULL, 0, 0),
(58, 9, 4, NULL, NULL, 2, NULL, 0, 0),
(59, 9, 426, NULL, 'More specific as possible. Ex: Jazz Bass, Guitar amplificator, Acoustic Drum', 3, NULL, 0, 0),
(60, 10, 1, NULL, NULL, 1, NULL, 0, 0),
(61, 10, 4, NULL, NULL, 2, NULL, 0, 0),
(62, 10, 427, NULL, 'Ex: Fender, EBS, Aguilar', 3, NULL, 0, 0),
(63, 10, 428, NULL, 'The place where the instrument was manufactured', 4, NULL, 0, 0),
(64, 10, 429, NULL, 'The place where the instrument was designed', 5, NULL, 0, 0),
(65, 11, 1, NULL, NULL, 1, NULL, 0, 0),
(66, 11, 4, NULL, NULL, 2, NULL, 0, 0),
(67, 11, 430, NULL, 'The main color of an equipment.', 3, NULL, 0, 0),
(68, 11, 431, NULL, NULL, 4, NULL, 0, 0),
(69, 11, 432, NULL, 'the year the instrument was manufactured', 5, NULL, 0, 0),
(70, 2, 424, NULL, 'musician\'s birthdate', 7, NULL, 0, 0),
(71, 2, 425, NULL, 'musician\'s death date (if applicable)', 8, NULL, 0, 0),
(72, 7, 408, NULL, 'number of CDs sold during a given year', 3, NULL, 0, 0),
(73, 7, 409, NULL, 'number of concerts for a given year', 4, NULL, 0, 0),
(74, 7, 410, NULL, 'number of plays on all streaming platforms for a given year', 5, NULL, 0, 0),
(75, 7, 411, NULL, 'Year about the completed statistics', 6, NULL, 0, 0),
(76, 7, 412, NULL, 'Source of the statistics (person, url link, book etc.) ', 7, NULL, 0, 0);

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
('8dkr7vshbvb5s324t3dtcsrjnq', 0x5f5f5a467c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373133313434382e3630353236323b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a227239636d35663236696876303667376c6666706b6b68706e3865223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373133353032373b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223737366137356466653333666633383434636438626162663436346333356263223b733a33323a223130663430336365616136613139336235663639623961643933326262303662223b733a33323a226535623633613262653462663732333666306664376338363336393636356634223b733a33323a223264663133323132306530646337393532326232316263356138613963666463223b7d733a343a2268617368223b733a36353a2232646631333231323065306463373935323262323162633561386139636664632d6535623633613262653462663732333666306664376338363336393636356634223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b, 1587131448),
('9hu670aoeacf2f8njjgvtnl70g', 0x5f5f5a467c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373238303135342e3338383033323b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22323272726a73613736666a746c703562626a6d6c696e65767576223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373133353036373b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373238333137343b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373238333735353b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373233313339363b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373238333439343b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373231343934373b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223566313034306437363563386232653537373530663136343134363666346433223b733a33323a223661633263636262326261356530303433656536353263306639386563326533223b733a33323a223163613231666639323933626631326466623866643461343363613464326565223b733a33323a223561643238663061366663376435376461616435653264663931623264303763223b7d733a343a2268617368223b733a36353a2235616432386630613666633764353764616164356532646639316232643037632d3163613231666639323933626631326466623866643461343363613464326565223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c733a34343a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732d322e312e312f6f6d656b612d732f61646d696e223b5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313033313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a393a7b733a33323a223063643761353465343763626332643063393461646538363261656164363631223b733a33323a223638306666356531383438373862303935393634636632613836636565333065223b733a33323a226364633562306233653733396462343231613339323563333266356166313937223b733a33323a226337656337633862343961386163393465373336616362633035373137623362223b733a33323a226464386637633633333564333163333336386231396437656335646565353633223b733a33323a226164303264653065646634306433633065633566653864336236636262613961223b733a33323a223736306239313963376330306437326332323032636232636364346535666431223b733a33323a223866346663303839346632353330653632643536333535373961396539663836223b733a33323a226638666430393464626634316430646137616238643933636464636366323330223b733a33323a223038666433366164636334643164623563626339373635303930326161623565223b733a33323a223439636330373461653065343763383764346165653031326664646665646237223b733a33323a223232316263666130653063623330646538393139643466323363383363616564223b733a33323a226337633339346233343764356233656563656634616638643333373337386562223b733a33323a223464396331313038333038333233623430666561303930643961633437623839223b733a33323a223266333430373331663838333063343862386361326164333830623032353838223b733a33323a223539663034663932323430616130623335313833613535393162333863353530223b733a33323a223265653363613538636335363332393962306464333531313539323766326562223b733a33323a226139613334386236323233303235323137393231313030313638363932626433223b7d733a343a2268617368223b733a36353a2261396133343862363232333032353231373932313130303136383639326264332d3265653363613538636335363332393962306464333531313539323766326562223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a373833323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a39343a7b733a33323a223033353135653762373037383831313534626365336430373461353664623632223b733a33323a223938386431383634623034646337333538373430666262393339306334323566223b733a33323a226339653232393062323134313866663035396165643365633335343030346130223b733a33323a223633656437663631333538303063656364653566336634373463326332393063223b733a33323a223561396566616336636362346132666134643233313263633763666531353234223b733a33323a223639623064616236326361646461636332373230666263336636616538653034223b733a33323a223138626433653239663733653230313936633232633035663038393037333933223b733a33323a223133613531396633393432666634333533663230623266393932393736303465223b733a33323a223762373030663163363662303336636361376364663232663962353562366263223b733a33323a226437316665366236616337373237656134393965386138316632663830356530223b733a33323a223132613565316137393038356437396436343261363332616535666432653065223b733a33323a226630393539393636656131323634386437376161333131346533306662666533223b733a33323a226133353461313336366561343331363232643730613065373531346361363563223b733a33323a223030323764373361623735666364316264653135303439623338663066353236223b733a33323a226562626533316131623339666234626437306465356639366463366635633432223b733a33323a223033633735613336616139653131383138346365323536383566353033376339223b733a33323a226534366265613636356231626435323061336232303663313766313237343765223b733a33323a223836353965306434333736326530613539656630643466616237313037616264223b733a33323a223662343737353836333664306362373266653163363163366238343862396266223b733a33323a223462333434653864663665656131373637646130396265613862646666393237223b733a33323a226265373435636631366465336630353135303361623337343733393364353530223b733a33323a226538313664666638393630323062383062303833303136343234353266373932223b733a33323a223963306334633165333038643338333964316566346530303861363461656235223b733a33323a226338633263363132303464343564316134323932643830323239303832393635223b733a33323a226161643931366338373033663739303462333962613930623639623037636533223b733a33323a226436623566363537383936633231666434386636366132666362653066303763223b733a33323a223837326262613162613163666566646233646263626332623234326530326539223b733a33323a223937353737653561643863303136336136343036356236373432613366633631223b733a33323a223464376266616563366662613666626433316131613131363861653532303866223b733a33323a226135646436376238656565386234326661653234313262306563663734353134223b733a33323a223561643131633964386665623463666530383835616430643339366232363034223b733a33323a226632393132383031313636326166333937366439666433663639623235346536223b733a33323a223533623732663734623138623564333335363239626637383365643537653365223b733a33323a223161656534373236626336383134326266356363663336616561643631646664223b733a33323a223836383139613439393264343562323465373062356433363665656537663237223b733a33323a223434643838623835376164356630396334383631303766373661303034396665223b733a33323a226537333238316664363831653035653831613034313863383238626563616431223b733a33323a226530353731326638616261616466613461363837663964643435346237386232223b733a33323a226532393133326233653133623561306662373534326531623065646333336634223b733a33323a223030326434636665663664313837663432343136373163623035626162656539223b733a33323a223961663133613738336561383963356632356137656563313134346532343261223b733a33323a223239363430363335336436326534633062623037653332316231616130366539223b733a33323a226437623230613135643563336363393735373937303331636436623439383535223b733a33323a223531353961363966616162383136383737653831306666363639303639633465223b733a33323a226463356430646230623438356437663932343431626633656631353631336333223b733a33323a223236373731366661666339373335363136666334383131313365666661376431223b733a33323a223066393134366161333763396331313735633732386338643064376663376664223b733a33323a223164353233653262303763343832306463376364376436353438623335643937223b733a33323a226339393966386231396631373337653632356466303938616638306438396631223b733a33323a223232663865653262366532323030623931363632663635346661396537353362223b733a33323a223636343163336165356636373634613964303236656535653334356166363733223b733a33323a226535666231626334636630616564636334336632653234346332643431616336223b733a33323a223966353832623833336465393239656639636236613466336363343665626462223b733a33323a223238646334363866636566326139666134366434303433636438363837383663223b733a33323a223866663738336334303634616436653162633261343163633137346138336339223b733a33323a223639663335386462313439616439666562613961656439366633666363333535223b733a33323a226639306464363833393738643837613763393333656661363535633432636338223b733a33323a226363626264646661373664646136393537613864346632356534393730343732223b733a33323a223066346432326234353536373864336535303735623665353932346462653332223b733a33323a223136633636336663633231616661633136303763646463653662663039383163223b733a33323a223566663663386365303133323235636238376337353764336361656563633034223b733a33323a226138633264643434646237393938353566373739643937623138346565343437223b733a33323a226138356138386161386530313632653436613666613163323032383363646666223b733a33323a223764366265623439396538306539303634646639623536663232386265636638223b733a33323a223061646434353362336335323432613337303636376563616332383930633333223b733a33323a226265633137353562663138646666393433613532383138383939326331346337223b733a33323a223166646563633837363535653561336538373336653532396562636639386537223b733a33323a223164363239333233323765656632323064663564643236353430666435376531223b733a33323a223733336364313930643062366636393561366534393730626366363730653135223b733a33323a223866636436323136326330383037376333616137616632346138303031653166223b733a33323a223432353962666637323264336663633763393536313035306463373765666435223b733a33323a223262343833666332386631623739366132363562643234663133663661656135223b733a33323a223237343463656537373762323763303935623864626465666661303063393461223b733a33323a226362653232396537393665376465643563366235336237373031636464313963223b733a33323a226563373631626334313164353031346532393330396364333237636431346535223b733a33323a223766376463376530663238613266646137353764363066653564633433613364223b733a33323a223130323638623865663764616536616364373765623134363666323163653334223b733a33323a223839396463363432623536386265653466393761643731356430613432363731223b733a33323a226235623838333238613336333834353736653635356164613732343037333362223b733a33323a226632653866363739323361613034333138633464626366376135663132626263223b733a33323a226532333461333433653436363432663964323263346333373833323739623436223b733a33323a223232316334633138363331373031346531623835313735333161306536393764223b733a33323a223166666131353630666336383863333563316138373139393066353439323132223b733a33323a226238646262306664376438313366643361613964396262336230633139636435223b733a33323a223234646639383961316535653637396235313161663134343665323339366330223b733a33323a223134306639303930393365656433376534326536626530353432373462643730223b733a33323a226232643362313236616630303435343733666464313735316139306536303539223b733a33323a223334313464656633333131646563346563616162326536623664663637323830223b733a33323a226536316339336331333737633461633666313335363766363932623739653439223b733a33323a226136353134313161333939346438373833306364616363303436313237623236223b733a33323a226433653832383765633264356434646434346336646330663663656533643564223b733a33323a226161383637323531663966646562613138613861376432623462373965363462223b733a33323a226465613261376366393134373633393531373233396365323937653937383638223b733a33323a226466383636343333396664346665623333363635326231363630333562653538223b733a33323a223736383561373639306531353536306432633334663262346137396330373435223b733a33323a223639353565666335323662323936373466633836366338313736306162666261223b733a33323a226666323962633435356463396130616332346364313134313365653064663130223b733a33323a223530363035346439646536343439666139616264643431353261303663623637223b733a33323a226362653032383065623938336239626531643261663563373439316633626166223b733a33323a223931656636636464616130326562386330313138386430633539313261363432223b733a33323a223633373633666538393565323561393332653430663963303130363362313761223b733a33323a223230316164366433383261633263373834333461346262333830343461383832223b733a33323a226462653234343439306263623338326631396563383262346466643561346664223b733a33323a223566316138336438396135613634393562343334356434393435626263656435223b733a33323a223435363064396436643664646163316261633063373763666633646637303339223b733a33323a226461383938363764646539623634316566616562656430366164646237663835223b733a33323a226435333539656461393531626234356534343132623136393166303664636639223b733a33323a226231373436363264613663376262643637353030313437303464306566616535223b733a33323a223165376461323936353465653936346463336462386462633263643735313837223b733a33323a223261346632313739316162373462336134643131646332633134356231383266223b733a33323a223531303436343737613666333364623938633138356135653836303435363136223b733a33323a226532616334653664616137323235376632656437663637623666633831336362223b733a33323a223465633265653539316330313165313263636662653236343065346539616462223b733a33323a226136386164333162316562336265323230656161363338636536613534333166223b733a33323a223831663332646463313665303235366461313336333366656664623365313634223b733a33323a226363383232343136356533366438633463323636326636616634653562663036223b733a33323a223365356434383133626235643336306330303230323063363433313534653730223b733a33323a223430356238333834343163656164383232653664623062373166326430643835223b733a33323a223665313532636333336239353733613239376533613461663435323261663562223b733a33323a223236633862653138626162353266616430643434623930303139366432643935223b733a33323a223963373635663232356335326333306435376464393739633935303033393663223b733a33323a226164663730326163666636643734346339376664333130643961303130646164223b733a33323a226262353065383866396261353064306366313335653136623331363537366235223b733a33323a223863666135653339316337633332363337393336313038376339363865636334223b733a33323a226462353230366162646261373366656663323134326463653562333161643531223b733a33323a223939373634666466663261616665626238626462313237333936393364353536223b733a33323a223063313033656339343061313234363437333435353364616463633239383039223b733a33323a223761643132303263393362356665376438323464333839663766646463306535223b733a33323a223034616661373239336137353330383762633539373164613833376264333666223b733a33323a226562373836616663363136626437306466326636303734653663613430613937223b733a33323a223361343237396538333235336566393237653437323535393631376137643337223b733a33323a223263646439383536383465326134626330656135643539623736303331616161223b733a33323a223162613739353664626437323363386439663134353238383538393338346238223b733a33323a226466313835333630383037386261316361613561636263616266643032356432223b733a33323a223930353764383339656633343237323664366366613462333264663337646363223b733a33323a223935316662346138636333376566663737333232613761613462393132316535223b733a33323a223166663530643165393566386639626432366439373738653132376261646365223b733a33323a226337626362623139346134393363373465646665666261336533623061366338223b733a33323a223834643934313736376638633661656437373762356436633564386461653935223b733a33323a223237363163393233616361336430366464376435626261303039376432613737223b733a33323a226133306539316566626138656232396634366164376136343638613533393266223b733a33323a223230383331393736613033656366373334343934336262353365363431323739223b733a33323a226533326335356462306339333832346366323637646430313232613761366364223b733a33323a226630353465626231636436343764336336656438626131626464663434613565223b733a33323a226535643364356238303365663033363463303634613565616234373430626634223b733a33323a226530636661316330376632373361323531316561363362623966303864353662223b733a33323a226665643261663163633466346636666264646339356363343262383539616339223b733a33323a226237343265646665343962666335616162336563316136313830343938363138223b733a33323a223961363365393063313564633739356331666132353238616232363362613838223b733a33323a226163636435386533393363383965643237353632353234623832343839303338223b733a33323a223939393631333239356166326463623239393262363962363732386435343163223b733a33323a226433626534353765663733666130366633616566386130316633333632363165223b733a33323a226534623463366666326535383464323266383931393937356634633035666235223b733a33323a223331643035323630376132636238636438366235643230363766323532373663223b733a33323a226138353937623931616663663062356638383165326637383336303838643333223b733a33323a223763326564343035383962623564346636306337643733363839306333383831223b733a33323a223632643664633462326538613632306563636566383434376463396634313737223b733a33323a226266306338383836303362336235653232383234666530363731396235646335223b733a33323a226636393966383934333434366565663439353434366533306533613664326264223b733a33323a223534326431343061386463323331666331653565316161646439346166666135223b733a33323a226431636363306230376632313664636562646563346635393637633665373532223b733a33323a223063333165316330336430666636373761336164616538643764373237396137223b733a33323a223139393164386135396432343034336236653534653466333963313635643137223b733a33323a223264363334646232646433376465656261623531366136343636303535376235223b733a33323a226462326366663161316132346361613737646238653734376133633361663334223b733a33323a223535646133393265633632353733636632363638336436613934333866363735223b733a33323a223537373137336437393030316536646436666131646561663166626565633564223b733a33323a226430353739646663613737396261383239646266396632326434666265613364223b733a33323a223563363064356335663732336538373234663033346662343266386539616438223b733a33323a223530376437366634656537393563396262396361623536326163356339353265223b733a33323a226666613732643265316662316335393465313861613534643639313935336335223b733a33323a223833643032386436376134313131373030316434653132663265653835613433223b733a33323a223365306462366665353731663466373831623933343430656630373734396635223b733a33323a226563373639616137646361393866326336376331353066653761363331643861223b733a33323a223865643863363034623033613662636264643863643564383966306630303238223b733a33323a226239393665303932653365346233626335623862646136343338373866616232223b733a33323a226436366635633561623539613431643530616665333663306239613433333633223b733a33323a226133623137643632623033623066326137653730643736393236373434643238223b733a33323a226638653736616363616265353831663531623431393836646438353337643562223b733a33323a223562633632376334386534323365333664336538626464626538363966373863223b733a33323a223761623632346234333765626638663162386164636463363964316634336538223b733a33323a226236666236396433616230373332323433333130333636633630333431356362223b733a33323a223634303464633731613835653830323432323264376530636137633438386666223b733a33323a223234366465663634323237376664646665376365373235646435653463393734223b733a33323a223430626631316366323738383964323366623934313735393666626161636336223b733a33323a223235663936663137646436366636333363373761333434303238663930366563223b733a33323a223565363330333635633437633532393663313731363830316663663763353236223b733a33323a223431326466376531623261333561373435346463343262363762313461663864223b7d733a343a2268617368223b733a36353a2234313264663765316232613335613734353464633432623637623134616638642d3565363330333635633437633532393663313731363830316663663763353236223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223865633264353834303462663462326431303733616138613963303633616261223b733a33323a223861393933356436313261626564396161306630633339623561633434656365223b7d733a343a2268617368223b733a36353a2238613939333564363132616265643961613066306333396235616334346563652d3865633264353834303462663462326431303733616138613963303633616261223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313833323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31393a7b733a33323a226439666639356235623965633732313964383334616138616233356539666136223b733a33323a226464623661646263393839356230316133323565323732333262656561353131223b733a33323a226462383164396235373065303130346564346162323732383631626232363435223b733a33323a223936313166323661383162313736613061633639633130356137393537666630223b733a33323a223233363233633163393236366165636433663761653466393436376233336265223b733a33323a226535366434666262636537326132346332623466373330303433383730623833223b733a33323a223235333639366632333936313038343332383237346665653537626464666334223b733a33323a223565373032653935626630613030386661306337323566633535326531343463223b733a33323a226162386362643563656135373063326437313466623135623631333565666264223b733a33323a226630356439363936356565346161333930656162316330623732353964303063223b733a33323a223434376331303862616135316132353131376538376262393831336130386633223b733a33323a226334353266663138383736313031376537323031356136373161623665643564223b733a33323a226239666538386564356563646439646264646539356231353637386261653262223b733a33323a223633396636613963373333363865666366326165396564343663363366646638223b733a33323a223633323434306665393938633238343137653339333336323136633134383230223b733a33323a223331323339306130626336646539363864333538336437356639356166653934223b733a33323a226264366139666533313839373333346661363561333138633232373339396263223b733a33323a223930616335333231636538636234356265643437396337313761663865653834223b733a33323a223663633934323166613034363437636235346639653666366230356239626237223b733a33323a226433633938613463353962343233393763626565363063306139393530663265223b733a33323a226463323631383965316562623537396166373436386533313263386134643137223b733a33323a226162373839643163393266663566373333643236653062646230336235393263223b733a33323a223033333937323661323834643834363632613061313730356431373164356534223b733a33323a226566346538663864653465323530626262383330663433356534303164393635223b733a33323a226635303337306538316230303038386439656265366338323164303362666566223b733a33323a223136363062636233633936336366323136313966343133303438366664373531223b733a33323a226331636338613536666664373534353233303738393833656663643765326431223b733a33323a223062326466323562353063353164393163353139646536383133343762663237223b733a33323a223935616466323563356238663839616338613136666636346431363063326163223b733a33323a223439613730656135623834613662303631323536663739643332323632653630223b733a33323a223766643563666261623563353532643239643835366439353331303065663533223b733a33323a226465626238643661643730363965643865303632383461633532303466376634223b733a33323a226534356262663830656630353332343832336666653562326236613265616537223b733a33323a226638373461343865336536643065336232323764616265366335393634356630223b733a33323a223163616139346461346439353965643264323039336562363066373830636635223b733a33323a223664643030306234646536316165626536633963373338326130616637316361223b733a33323a223764616365366530666539623538303163343537353631353565623234363030223b733a33323a226135306563353864356563666533343734383038643438366533663663633162223b7d733a343a2268617368223b733a36353a2261353065633538643565636665333437343830386434383665336636636331622d3764616365366530666539623538303163343537353631353565623234363030223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223338396337373938366465353737353135306562636661393263316363396530223b733a33323a223764346130383433373931373433663530363937393562353037376138353435223b7d733a343a2268617368223b733a36353a2237643461303834333739313734336635303639373935623530373761383534352d3338396337373938366465353737353135306562636661393263316363396530223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587280155),
('jllab3b6hi0m8qa0hnijgv07le', 0x5f5f5a467c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373133313432322e3735383831373b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226a30676639317265703468726334716d61373964747569746535223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373133343936333b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226361643962333666306435656536653461356264313632396337633034306665223b733a33323a223232363466343062363333373366663538663064633834356536656636643739223b7d733a343a2268617368223b733a36353a2232323634663430623633333733666635386630646338343565366566366437392d6361643962333666306435656536653461356264313632396337633034306665223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b, 1587131422);

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
('administrator_email', '\"alban.david.auditeur@lecnam.net\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"omeka\"'),
('locale', '\"\"'),
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
(1, 'alban.david.auditeur@lecnam.net', 'AlbanDAVID', '2020-04-17 13:49:22', '2020-04-17 13:49:22', '$2y$10$5FJox/KuIoOjj8IJ.3vlROizJDvUnbJiIKMwl9Fh4c/P60DzzlBze', 'global_admin', 1),
(2, 'samuel.szoniecky@univ-paris8.fr', 'Samuel', '2020-04-18 10:16:05', '2020-04-18 10:17:01', '$2y$10$rIgZdb77lMi2PpG.fyFJFOuEa7mEh9ZDqB3qHyPkxjAXjxfiMsvGG', 'global_admin', 1);

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
(1, 1, 1, NULL, 'literal', '', 'Anthony Kiedis', NULL, 1),
(2, 1, 4, NULL, 'literal', '', 'General information about the musician', NULL, 1),
(3, 1, 139, NULL, 'literal', '', 'Anthony', NULL, 1),
(4, 1, 140, NULL, 'literal', '', 'Kiedis', NULL, 1),
(5, 1, 138, NULL, 'literal', '', 'USA', NULL, 1),
(6, 1, 424, NULL, 'literal', '', '01/11/1962', NULL, 1),
(13, 2, 1, NULL, 'literal', '', 'Michael \"Flea\" Balzary', NULL, 1),
(14, 2, 4, NULL, 'literal', '', 'General information about the musician', NULL, 1),
(15, 2, 139, NULL, 'literal', '', 'Michael', NULL, 1),
(16, 2, 140, NULL, 'literal', '', 'Balzary', NULL, 1),
(17, 2, 131, NULL, 'literal', '', 'Flea', NULL, 1),
(18, 2, 138, NULL, 'literal', '', 'Australian', NULL, 1),
(19, 2, 424, NULL, 'literal', '', '16/10/62', NULL, 1),
(21, 3, 1, NULL, 'literal', '', 'Chad Smith', NULL, 1),
(22, 3, 4, NULL, 'literal', '', 'General information about the musician', NULL, 1),
(23, 3, 139, NULL, 'literal', '', 'Chad', NULL, 1),
(24, 3, 140, NULL, 'literal', '', 'Smith', NULL, 1),
(25, 3, 138, NULL, 'literal', '', 'American', NULL, 1),
(26, 3, 424, NULL, 'literal', '', '25/10/61', NULL, 1),
(27, 4, 1, NULL, 'literal', '', 'John Frusciante', NULL, 1),
(28, 4, 4, NULL, 'literal', '', 'General information about the musician', NULL, 1),
(29, 4, 139, NULL, 'literal', '', 'John', NULL, 1),
(30, 4, 140, NULL, 'literal', '', 'Frusciante', NULL, 1),
(31, 4, 138, NULL, 'literal', '', 'American', NULL, 1),
(32, 4, 424, NULL, 'literal', '', '05/03/70', NULL, 1),
(33, 5, 1, NULL, 'literal', '', 'Josh Adam Klinghoffer', NULL, 1),
(34, 5, 4, NULL, 'literal', '', 'General information about the musician', NULL, 1),
(35, 5, 139, NULL, 'literal', '', 'Josh', NULL, 1),
(36, 5, 140, NULL, 'literal', '', 'Klinghoffer', NULL, 1),
(37, 5, 138, NULL, 'literal', '', 'American', NULL, 1),
(38, 5, 424, NULL, 'literal', '', '30/10/79', NULL, 1),
(39, 6, 1, NULL, 'literal', '', 'Red Hot Chilli Peppers', NULL, 1),
(40, 6, 4, NULL, 'literal', '', 'General information about the band', NULL, 1),
(41, 6, 138, NULL, 'literal', '', 'Red Hot Chilli Peppers', NULL, 1),
(42, 6, 218, NULL, 'literal', '', 'Funk rock, rock alternatif, funk metal, fusion', NULL, 1),
(43, 6, 7, NULL, 'literal', '', '1983', NULL, 1),
(44, 6, 220, NULL, 'literal', '', 'USA', NULL, 1),
(45, 7, 1, NULL, 'literal', '', 'bassist', NULL, 1),
(46, 7, 4, NULL, 'literal', '', 'Function of a musician in a band', NULL, 1),
(47, 7, 138, NULL, 'literal', '', 'bassist', NULL, 1),
(48, 8, 1, NULL, 'literal', '', 'drumer', NULL, 1),
(49, 8, 4, NULL, 'literal', '', 'function of a musician in the band', NULL, 1),
(50, 8, 138, NULL, 'literal', '', 'drumer', NULL, 1),
(51, 9, 1, NULL, 'literal', '', 'guitarist', NULL, 1),
(52, 9, 4, NULL, 'literal', '', 'function of a musician in the band', NULL, 1),
(53, 9, 138, NULL, 'literal', '', 'guitarist', NULL, 1),
(54, 10, 1, NULL, 'literal', '', 'singer', NULL, 1),
(55, 10, 4, NULL, 'literal', '', 'function of a musician in the band', NULL, 1),
(56, 10, 138, NULL, 'literal', '', 'singer', NULL, 1),
(57, 11, 1, NULL, 'literal', '', 'keyboardist', NULL, 1),
(58, 11, 4, NULL, 'literal', '', 'function of a musician in the band', NULL, 1),
(59, 11, 138, NULL, 'literal', '', 'keyboardist', NULL, 1),
(60, 12, 1, NULL, 'literal', '', ' Red hot chilli peppers (Anthony Kiedis)', NULL, 1),
(61, 12, 4, NULL, 'literal', '', 'Musician and his role in the band (with activity start and, if applicable, activity end)', NULL, 1),
(62, 12, 316, NULL, 'literal', '', '1983', NULL, 1),
(63, 12, 238, 1, 'resource', NULL, NULL, NULL, 1),
(66, 12, 257, 10, 'resource', NULL, NULL, NULL, 1),
(67, 14, 1, NULL, 'literal', '', 'Red hot chilli peppers (Michael \"Flea\" Balzary)', NULL, 1),
(68, 14, 4, NULL, 'literal', '', 'Musician and his role in the band (with activity start and, if applicable, activity end)', NULL, 1),
(69, 14, 316, NULL, 'literal', '', '1983', NULL, 1),
(70, 14, 238, 2, 'resource', NULL, NULL, NULL, 1),
(71, 14, 257, 7, 'resource', NULL, NULL, NULL, 1),
(72, 14, 138, 6, 'resource', NULL, NULL, NULL, 1),
(73, 12, 138, 6, 'resource', NULL, NULL, NULL, 1),
(74, 15, 1, NULL, 'literal', '', 'Red hot chilli peppers (Chad Smith)', NULL, 1),
(75, 15, 4, NULL, 'literal', '', 'Musician and his role in the band (with activity start and, if applicable, activity end)', NULL, 1),
(76, 15, 316, NULL, 'literal', '', '1989', NULL, 1),
(77, 15, 257, 8, 'resource', NULL, NULL, NULL, 1),
(78, 15, 238, 3, 'resource', NULL, NULL, NULL, 1),
(79, 15, 138, 6, 'resource', NULL, NULL, NULL, 1),
(80, 16, 1, NULL, 'literal', '', 'Red hot chilli peppers (John Frusciante)', NULL, 1),
(81, 16, 4, NULL, 'literal', '', 'Musician and his role in the band (with activity start and, if applicable, activity end)', NULL, 1),
(82, 16, 316, NULL, 'literal', '', '1998', NULL, 1),
(83, 16, 315, NULL, 'literal', '', '2010', NULL, 1),
(84, 16, 238, 4, 'resource', NULL, NULL, NULL, 1),
(85, 16, 257, 9, 'resource', NULL, NULL, NULL, 1),
(86, 16, 138, 6, 'resource', NULL, NULL, NULL, 1),
(89, 17, 1, NULL, 'literal', '', 'Red hot chilli peppers (John Frusciante)', NULL, 1),
(90, 17, 4, NULL, 'literal', '', 'Musician and his role in the band (with activity start and, if applicable, activity end)', NULL, 1),
(91, 17, 316, NULL, 'literal', '', '2020', NULL, 1),
(92, 17, 257, 9, 'resource', NULL, NULL, NULL, 1),
(93, 17, 238, 4, 'resource', NULL, NULL, NULL, 1),
(94, 17, 138, 6, 'resource', NULL, NULL, NULL, 1),
(95, 18, 1, NULL, 'literal', '', 'Red hot chilli peppers (Josh Adam Klinghoffer)', NULL, 1),
(96, 18, 4, NULL, 'literal', '', 'Musician and his role in the band (with activity start and, if applicable, activity end)', NULL, 1),
(97, 18, 316, NULL, 'literal', '', '2010', NULL, 1),
(98, 18, 315, NULL, 'literal', '', '2020', NULL, 1),
(99, 18, 257, 9, 'resource', NULL, NULL, NULL, 1),
(100, 18, 238, 5, 'resource', NULL, NULL, NULL, 1),
(101, 18, 138, 6, 'resource', NULL, NULL, NULL, 1),
(102, 19, 1, NULL, 'literal', '', 'Red Hot Chilli Peppers Statistics', NULL, 1),
(103, 19, 4, NULL, 'literal', '', 'Statistics about the band by years', NULL, 1),
(104, 19, 409, NULL, 'literal', '', '100', NULL, 1),
(105, 19, 411, NULL, 'literal', '', '2000', NULL, 1),
(106, 6, 36, 19, 'resource', NULL, NULL, NULL, 1),
(107, 19, 412, NULL, 'literal', '', 'wikipedia', NULL, 1),
(108, 20, 1, NULL, 'literal', '', 'Jazz bass', NULL, 1),
(109, 20, 4, NULL, 'literal', '', 'The type of material used by a musician', NULL, 1),
(110, 20, 426, NULL, 'literal', '', 'Jazz bass', NULL, 1),
(111, 21, 1, NULL, 'literal', '', 'Fender', NULL, 1),
(112, 21, 4, NULL, 'literal', '', 'The brand of an equipment (guitar, amplificator etc.)', NULL, 1),
(113, 21, 427, NULL, 'literal', '', 'Fender', NULL, 1),
(114, 21, 428, NULL, 'literal', '', 'USA', NULL, 1),
(115, 21, 429, NULL, 'literal', '', 'USA', NULL, 1),
(116, 22, 1, NULL, 'literal', '', 'Equipment 1', NULL, 1),
(117, 22, 4, NULL, 'literal', '', 'Details about an equipement (color, reference etc.)', NULL, 1),
(118, 22, 430, NULL, 'literal', '', 'White', NULL, 1),
(119, 22, 432, NULL, 'literal', '', '1980', NULL, 1),
(120, 22, 8, 20, 'resource', NULL, NULL, NULL, 1),
(121, 22, 138, 21, 'resource', NULL, NULL, NULL, 1),
(122, 23, 1, NULL, 'literal', '', 'Flea - Jazz Bass', NULL, 1),
(123, 23, 4, NULL, 'literal', '', 'The musician with his equipement (0 or more)', NULL, 1),
(124, 23, 257, 22, 'resource', NULL, NULL, NULL, 1),
(131, 23, 238, 2, 'resource', NULL, NULL, NULL, 1);

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
(5, 1, 'http://purl.org/ontology/mo/', 'mo', 'Music Ontology Specification', ''),
(10, 1, 'http://cours_bdd/alban/david', 'voc', 'vocabulaire', 'vocabulaire créé dans le cadre du cours BDD master MEDAS');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
