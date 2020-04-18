-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 18 avr. 2020 à 19:14
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
(6, 'items', 1, 1, 'Red Hot Chilli Peppers', 'Red Hot Chilli Peppers\n\nGeneral information about the band\nRed Hot Chilli Peppers\nFunk rock, rock alternatif, funk metal, fusion\n1983\nUSA'),
(7, 'items', 1, 1, 'bassist', 'bassist\nFunction of a musician in a band\nbassist'),
(8, 'items', 1, 1, 'drumer', 'drumer\nfunction of a musician in the band\ndrumer'),
(9, 'items', 1, 1, 'guitarist', 'guitarist\nfunction of a musician in the band\nguitarist'),
(10, 'items', 1, 1, 'singer', 'singer\nfunction of a musician in the band\nsinger'),
(11, 'items', 1, 1, 'keyboardist', 'keyboardist\nfunction of a musician in the band\nkeyboardist'),
(12, 'items', 1, 1, 'Red hot chilli peppers (Anthony Kiedis)', ' Red hot chilli peppers (Anthony Kiedis)\nsinger\nAnthony Kiedis\nRed Hot Chilli Peppers\nMusician and his role in the band (with activity start and, if applicable, activity end)\n1983'),
(14, 'items', 1, 1, 'Red hot chilli peppers (Michael \"Flea\" Balzary)', 'Red hot chilli peppers (Michael \"Flea\" Balzary)\nMichael \"Flea\" Balzary\nbassist\nRed Hot Chilli Peppers\nMusician and his role in the band (with activity start and, if applicable, activity end)\n1983'),
(15, 'items', 1, 1, 'Red hot chilli peppers (Chad Smith)', 'Red hot chilli peppers (Chad Smith)\nRed Hot Chilli Peppers\nChad Smith\ndrumer\nMusician and his role in the band (with activity start and, if applicable, activity end)\n1989'),
(16, 'items', 1, 1, 'Red hot chilli peppers (John Frusciante)', 'Red hot chilli peppers (John Frusciante)\nguitarist\nRed Hot Chilli Peppers\nJohn Frusciante\nMusician and his role in the band (with activity start and, if applicable, activity end)\n1998\n2010'),
(17, 'items', 1, 1, 'Red hot chilli peppers (Fohn Frusciante)', 'Red hot chilli peppers (Fohn Frusciante)\nguitarist\nRed Hot Chilli Peppers\nJohn Frusciante\nMusician and his role in the band (with activity start and, if applicable, activity end)\n2020'),
(18, 'items', 1, 1, 'Red hot chilli peppers (Josh Adam Klinghoffer)', 'Red hot chilli peppers (Josh Adam Klinghoffer)\nRed Hot Chilli Peppers\nguitarist\nJosh Adam Klinghoffer\nMusician and his role in the band (with activity start and, if applicable, activity end)\n2010\n2020'),
(19, 'items', 1, 1, 'Red Hot Chilli Peppers Staistics', 'Red Hot Chilli Peppers Staistics\nStatistics about the band by years\n100\n2000\nwikipedia'),
(20, 'items', 1, 1, 'Jazz bass', 'Jazz bass\nThe type of material used by a musician\nJazz bass'),
(21, 'items', 1, 1, 'Fender', 'Fender\nThe brand of an equipment (guitar, amplificator etc.)\nFender\nUSA\nUSA'),
(22, 'items', 1, 1, 'Equipment 1', 'Equipment 1\nJazz bass\nFender\nDetails about an equipement (color, reference etc.)\nWhite\n1980'),
(23, 'items', 1, 1, 'Flea - Jazz Bass', 'Flea - Jazz Bass\nThe musician with his equipement (0 or more)\nEquipment 1');

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
(6, 1, 187, 5, NULL, 'Red Hot Chilli Peppers', 1, '2020-04-18 14:48:36', '2020-04-18 16:07:18', 'Omeka\\Entity\\Item'),
(7, 1, 134, 4, NULL, 'bassist', 1, '2020-04-18 14:51:24', '2020-04-18 14:54:30', 'Omeka\\Entity\\Item'),
(8, 1, 134, 4, NULL, 'drumer', 1, '2020-04-18 14:54:07', '2020-04-18 14:54:07', 'Omeka\\Entity\\Item'),
(9, 1, 134, 4, NULL, 'guitarist', 1, '2020-04-18 14:55:31', '2020-04-18 14:55:31', 'Omeka\\Entity\\Item'),
(10, 1, 134, 4, NULL, 'singer', 1, '2020-04-18 14:56:17', '2020-04-18 14:56:17', 'Omeka\\Entity\\Item'),
(11, 1, 134, 4, NULL, 'keyboardist', 1, '2020-04-18 14:57:06', '2020-04-18 14:57:06', 'Omeka\\Entity\\Item'),
(12, 1, 189, 3, NULL, 'Red hot chilli peppers (Anthony Kiedis)', 1, '2020-04-18 15:00:44', '2020-04-18 16:33:59', 'Omeka\\Entity\\Item'),
(14, 1, 189, 3, NULL, 'Red hot chilli peppers (Michael \"Flea\" Balzary)', 1, '2020-04-18 15:18:54', '2020-04-18 16:33:38', 'Omeka\\Entity\\Item'),
(15, 1, 189, 3, NULL, 'Red hot chilli peppers (Chad Smith)', 1, '2020-04-18 15:26:28', '2020-04-18 16:33:19', 'Omeka\\Entity\\Item'),
(16, 1, 189, 3, NULL, 'Red hot chilli peppers (John Frusciante)', 1, '2020-04-18 15:42:35', '2020-04-18 16:33:02', 'Omeka\\Entity\\Item'),
(17, 1, 194, 3, NULL, 'Red hot chilli peppers (Fohn Frusciante)', 1, '2020-04-18 15:49:26', '2020-04-18 16:32:46', 'Omeka\\Entity\\Item'),
(18, 1, 189, 3, NULL, 'Red hot chilli peppers (Josh Adam Klinghoffer)', 1, '2020-04-18 15:51:19', '2020-04-18 16:32:30', 'Omeka\\Entity\\Item'),
(19, 1, 186, 7, NULL, 'Red Hot Chilli Peppers Staistics', 1, '2020-04-18 16:06:32', '2020-04-18 16:09:19', 'Omeka\\Entity\\Item'),
(20, 1, 192, 9, NULL, 'Jazz bass', 1, '2020-04-18 16:13:29', '2020-04-18 16:13:29', 'Omeka\\Entity\\Item'),
(21, 1, 191, 10, NULL, 'Fender', 1, '2020-04-18 16:14:50', '2020-04-18 16:14:50', 'Omeka\\Entity\\Item'),
(22, 1, 193, 11, NULL, 'Equipment 1', 1, '2020-04-18 16:18:01', '2020-04-18 16:18:01', 'Omeka\\Entity\\Item'),
(23, 1, 194, 6, NULL, 'Flea - Jazz Bass', 1, '2020-04-18 16:19:57', '2020-04-18 16:31:54', 'Omeka\\Entity\\Item');

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
(10, 1, 191, NULL, NULL, 'Brand'),
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
('8dkr7vshbvb5s324t3dtcsrjnq', 0x5f5f5a467c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373133313434382e3630353236323b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a227239636d35663236696876303667376c6666706b6b68706e3865223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373133353032373b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223737366137356466653333666633383434636438626162663436346333356263223b733a33323a223130663430336365616136613139336235663639623961643933326262303662223b733a33323a226535623633613262653462663732333666306664376338363336393636356634223b733a33323a223264663133323132306530646337393532326232316263356138613963666463223b7d733a343a2268617368223b733a36353a2232646631333231323065306463373935323262323162633561386139636664632d6535623633613262653462663732333666306664376338363336393636356634223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b, 1587131448);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('9hu670aoeacf2f8njjgvtnl70g', 0x5f5f5a467c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373232393933362e3631303331353b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22323272726a73613736666a746c703562626a6d6c696e65767576223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373133353036373b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373233303638383b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373233333533373b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373233313339363b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373233313232393b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373231343934373b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223566313034306437363563386232653537373530663136343134363666346433223b733a33323a223661633263636262326261356530303433656536353263306639386563326533223b733a33323a223163613231666639323933626631326466623866643461343363613464326565223b733a33323a223561643238663061366663376435376461616435653264663931623264303763223b7d733a343a2268617368223b733a36353a2235616432386630613666633764353764616164356532646639316232643037632d3163613231666639323933626631326466623866643461343363613464326565223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c733a34343a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732d322e312e312f6f6d656b612d732f61646d696e223b5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223830656365633361323865356536363061663636353161376263303261336333223b733a33323a223030643636623935353864633165663130353765383839326339326134383861223b733a33323a223137316233383366303832396334613464303633383063616635663437626266223b733a33323a223139623639656238393237626362343566343266333163323761303663393939223b7d733a343a2268617368223b733a36353a2231396236396562383932376263623435663432663331633237613036633939392d3137316233383366303832396334613464303633383063616635663437626266223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a31373531333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3231353a7b733a33323a226439343739393731633138313866323764316231306136613138343637306337223b733a33323a223332386437333037363365323761393033313263313337383139636138366662223b733a33323a226163366532383965306436353331323937643263623138646439363631313634223b733a33323a226163303363323630636439383164613031306464656661353632353462333463223b733a33323a223061643763363762393832313239653034373033346661336138666236396561223b733a33323a223134636332636261306561613434376336343039616533386538623131353163223b733a33323a223233656437623464633961613365626134633164306531366230616233303433223b733a33323a223965393734353537353765623230373431333563356136336361646634353836223b733a33323a223563313964343664666634303634383165313264363566623836326334363336223b733a33323a226538396236356438316237653731616436306264376663336538303061363865223b733a33323a226433376262616136303530663562326262663932373935386364306263366566223b733a33323a226362393937616431343862373038613935323637386338343464323937306235223b733a33323a223266306431306364663339363239613562626437303636393065666436396634223b733a33323a223533383132363830353135613731663339386433623730383265393234616162223b733a33323a226132303163323865653761396237393738666230386437336466346464386238223b733a33323a226632623163306135646134396431653238343232303265353938363565376165223b733a33323a223932636361363266663534643031656563643662646637346234336538373132223b733a33323a223631643538613635386634663966363330326332636632306332363630373264223b733a33323a223630316133383765343461643139623363653233613066393438333330353638223b733a33323a223363313030663866303832623964666164336564653464353962623965393235223b733a33323a223132623165303865373963643666613134383534313533333664356532636434223b733a33323a226461386465306237333462623361303737386139393463653237336237646231223b733a33323a226332366335623031383064396132343433366336323931663734666231336565223b733a33323a223664626363313631393934653534363863633161313262643562653934393539223b733a33323a223337616664663564653663316230396565336432313839306366303939353135223b733a33323a226465666437653563643630633662353439373839643631323330343537323862223b733a33323a226661316237373132373832656434326538663864393463653139643431336165223b733a33323a223132373563616661366234636631616563313338326132393636663435613134223b733a33323a223036316161336564633731663062666661623162306661303533646461323338223b733a33323a226231346238623862353662616533306333633162313264353134363365306139223b733a33323a223231353830643766366336383338383066333030653966623731386162303434223b733a33323a226566353033323736636639313131366634373861363065313534613330623066223b733a33323a223534393265613566646132303631363037363539356332383561613735633834223b733a33323a223234663061303138366530623239336538343436376336343139656166366233223b733a33323a223263326562363031343262336637313031636330366134666537323165666265223b733a33323a223334326436356437636665383635656539643962663539393734303833333436223b733a33323a226434346164303032303431313731323164623132356334306434663735396466223b733a33323a223336323133323932393030643438333161666632633039336634343863303163223b733a33323a223363353062373066396365633163353835653661373236336535353436383965223b733a33323a223766663038333962313235393037633964333536636363396532656534633666223b733a33323a226137316534616130346635333739366265316238363763343332326561663238223b733a33323a223639336462396236353238346163636464623866346338636234626562646164223b733a33323a226663303235656264316336636662306232666561666335373333373166646134223b733a33323a226134313733363734303134343332353833613836383535356463653633326436223b733a33323a223731613533653834643839376531316663633964333164623864303665396263223b733a33323a226333623533313561623362313061646236393236646639653833353936356562223b733a33323a226632326462323963393164363731633831626231386563353633313334383830223b733a33323a226636643038353661663163653131363937336633313335306365343932636334223b733a33323a226562396136313136303635373062323937333566623265623834343336396362223b733a33323a223932316638663663326131336635613536613230323035353366393736353161223b733a33323a223064383138646631623930306564313333643130393436346338653962633131223b733a33323a223335306431633530303862653962336665306566303630666231346536653130223b733a33323a223233613937363032393966366238656563613332373934376435303437643163223b733a33323a226566323966316665623639343234366631346161363532343763313462663263223b733a33323a226238386233343463353462663338613434613632363461353939616565326434223b733a33323a223363653534643636613933313062623734333766316562353134613862383530223b733a33323a226633663865646562613363316330326363393836326131346534366239356666223b733a33323a223365376363303339356333326263303232646365356633663433643634363363223b733a33323a223833323535643861646263623763383162366238386563333836306631616338223b733a33323a226561653638336232643461383866393339366539383762653362393066323339223b733a33323a226131346662333131343531373839336164383433323038636362666261343736223b733a33323a223937616232653237333434396633393339626637353063663735333330316563223b733a33323a223434373962356637356130633635366135633432313166613564613238356663223b733a33323a223362646263356261323862383464313861626362633866303263323238663062223b733a33323a223034383936373265636132323639326165323631653235356664653065303537223b733a33323a223333363635366337646530653236316264633138663564323930323434306534223b733a33323a223961366265343833633638356239373062323965633237366665373030313063223b733a33323a223261613330333465323161383266353539656139643934633937373931626531223b733a33323a226535373532626161353531386631323830346666663363333863373233373536223b733a33323a226338343636366536303338393761633532633565333464386362383038646163223b733a33323a223966333466366235373964636163306638343332343961653230366561386439223b733a33323a223338316463626136656664643131356236613436366639613161336462323966223b733a33323a223939396530393237646131383033323661303832353164373536303738326237223b733a33323a223832376638636461303037386337383239376434666637313732616463383662223b733a33323a223830363363366334383763316239663666623038353661323566326466383535223b733a33323a223537646666626433383139626363356163393032326233353334333865303630223b733a33323a223064353062616337633239383938633466393138353362386338373262343361223b733a33323a223662393533333730656364623265653931376236336338333037373033643763223b733a33323a223430653839386463643438346531366334623339313162656638633366636238223b733a33323a223535363863633463386234386138313761636538633639363662306661346530223b733a33323a226639343861663262363633643762306633333365356337643830333236313263223b733a33323a226539333263326237373539646133393830653565313031376136323838633662223b733a33323a223066646663303665386632656363623166383638316361393337666634613866223b733a33323a223932353065616264666438356362336264336630373434356437363632383939223b733a33323a226438393930326630303762393364363235323565663736396232363636323264223b733a33323a226539323161316133393538326165363161616131393434396265393330333233223b733a33323a223965366565353063656664616638376363623464306334326430323162613061223b733a33323a223161343931646338353463393966373631623561306533346634636163353939223b733a33323a226139353031663861356230313738326639646431343138653766316237336439223b733a33323a223534623463313263326634323836356436386531333663626233343863396266223b733a33323a223666326438323436316265663439396434326134373563663065363435393163223b733a33323a226563636533356662623836613631366161646630616239356435653633633166223b733a33323a223061336565393637393838366364396639393363336238373933303461356430223b733a33323a226432363264653533366632303132316232666235333931366261356533613836223b733a33323a223935373430343463363966386466613739616633653135396139663739353763223b733a33323a223365393461633533393366376263626636353163356137663564626139663433223b733a33323a223637626462623237363530393238643132343138633362343836666134386633223b733a33323a223830376565386231633833326461613333333438376565383039353933636365223b733a33323a223035373433623333666537646631333333633530323339303262653331326630223b733a33323a223930363035383461366337623933356532336431653439376135323765336138223b733a33323a223738653438313166316436653633333234613432383161646361653566646235223b733a33323a226330633165636231653837623134373265663635643133643664386265353364223b733a33323a226566313231316437363731633961393837356531653563306262663437656331223b733a33323a223033303230316561303336333130303064323033393062386566623234386337223b733a33323a223265623138353662383536666132333737643534613762623039613635613166223b733a33323a226633323063383833363762323933646665373332343133646165653633656238223b733a33323a223861333061363030363931383736636365653366333739616665313238346662223b733a33323a223237376361636339396662616539336466333938393333663066363366616164223b733a33323a223061376164393833393763616636363132643430336430636634323735663634223b733a33323a223432383434616331646233656330313064383934353166356231653966373936223b733a33323a223065396435623366343065663362363761326234353830333563643235656435223b733a33323a223833386338663532376365613034613965633364363339376530643462663734223b733a33323a226137623230316464343632333335623238383438316332326334343736633233223b733a33323a223764326665333136306234653037623735333637636361303264346232356330223b733a33323a223734386563633638643636636366353666346633323065373039623132393730223b733a33323a223235343932323534346466663537636234316536333163326232396164646266223b733a33323a223632393534666361653537356563663436383339643130633039373864323438223b733a33323a223733333861616433626231376135616333366563343035643036646163376166223b733a33323a223136366563313836373563613734346539303731333033666638396332636263223b733a33323a223630343064373931343365386236353732366136363361653862653563343636223b733a33323a223436363362633534393538613338326433383335386564653633613230393534223b733a33323a223036623433626631616361326430306465353030343364646137633431393939223b733a33323a226462616331633734623863363132326134326330306430383938656464613238223b733a33323a223535396163663039363063663133656339313266303034353537653065343131223b733a33323a226136333139646639626638343532363431333763616330666566663961656235223b733a33323a223065323963633831393538366331383064326132303635383363313763376230223b733a33323a223437653763623364626134633238363138663865633764366564663539616462223b733a33323a226464373231303863643461323264356362303338386532626133376665393134223b733a33323a226662626438356634636631343533376631396666373833346466626339643835223b733a33323a223136636634383264353539396166343463326138313335336564396636333161223b733a33323a223139643739653861333064393465386666623438613766633361373838656336223b733a33323a223139333935636639353364393231306236373161353364643239313962303338223b733a33323a223561376337303565353835363432383838616538383262356664326263613364223b733a33323a223138373531663633613664663963303265303065336566393932396137626534223b733a33323a223339373738363734346130616336653436326163636163313233656533653036223b733a33323a223938373739313735313965313261393733343030656631633461323338663464223b733a33323a223061623136306263356631326536386432396637346435653536346232653464223b733a33323a226663356135616133313162303564616162366231326563363065636264636433223b733a33323a226131343061343234326462343064343364336530366365376235373364356162223b733a33323a223864636330353561633066636532666565306430346361323433376163363932223b733a33323a223333303835353363656238643266396564396330303038346638363835383165223b733a33323a226433386238336564613339353539363831323865323932343764343435326561223b733a33323a226662376363373966353461656430326134336464326461316365393630363237223b733a33323a223335366562323563396239646132353031373865306335623261313533636139223b733a33323a226336383162343263653465613961316533376561303030336632333934613034223b733a33323a226133666464356561316436323435303538393430626561336334616238633637223b733a33323a223032396463333739313865303763353535353163393730633532346661303461223b733a33323a223264306232663564323930666230623531396130363130323732303665306630223b733a33323a223664356165343530376262663835363163326238323362393732643337343736223b733a33323a223662613665663831616264663066333563346665666362376563663363333866223b733a33323a223138316264643530636531313631306666303862636565366331653839373762223b733a33323a226562346535343430393137636137333137336135363766353133346436626330223b733a33323a223334363137366430613666373938363534646231636363636662323362616130223b733a33323a223130323237626637386634323866353162323235373035363766633835333535223b733a33323a223462303162373930323963343630343432363934356339363839306265343931223b733a33323a223831636532646232306237653737313266343539323533633965653961396632223b733a33323a223765386238643738303062373735653730353661303131343764393332326464223b733a33323a223466393763666465306332616466643835393631636538353061393138386461223b733a33323a226532383661663135373131333264653462636637373763353039343266333036223b733a33323a226365656537356565336133343839663231393430316139363662393164653637223b733a33323a226137396334356162646531303632656362653938393961353166616536393661223b733a33323a223863396561333932303434363337363366656562386538343937396366373163223b733a33323a223637353439643234333238613639346235313832306139326138326362653864223b733a33323a223961316438653565326663336363633834356664613465633366346364333432223b733a33323a223465306432666461643730396139386163633138343933666533626536656261223b733a33323a223835666533386634613564386433346433656239393035363961653936353532223b733a33323a226166373466316635613837386432613234383931323465613962623433363931223b733a33323a223563386630306637623637343663636537303963623536663839396132386364223b733a33323a226231316236636364643363313232383663623830393064633739653964323537223b733a33323a223861623239653536396262643932383864346138626432333962326335626166223b733a33323a223631633037393762636636666165343762333639386635323332666664626230223b733a33323a226266656236613235363066393537653139393766656431356366613662656334223b733a33323a223430353365393763353234336139363063333665303832386366636139343536223b733a33323a226437633963326563356365633931643137663963343135656463623233613466223b733a33323a226164376266646537303366343761303239383432363732333163663266323732223b733a33323a223462313766313966663365336262333333343062393365386233306336343464223b733a33323a223231613637643734373538386664383539643465393331626366393833613030223b733a33323a223639313939636131353932353533366433323639363237626536646562303963223b733a33323a223938666563636136333934313564383636303434396165326239356230396665223b733a33323a226431373565373161303039636638326562306162656362363862323137376531223b733a33323a226433653161326263633232353838333636633031663332353938313532313837223b733a33323a223264643664316431376430616330613636643430333134383166633133343333223b733a33323a223735626466326462376263373263366232356133383264386236383266396639223b733a33323a223034646434616534333466643363383333313164663635656665366266613563223b733a33323a226438353132613737343135643038636436633431393137666363386638356132223b733a33323a226138353966363862303237633939383338613034366638393831343862313335223b733a33323a223361313462323466613664316639313965633535346336646430313630353337223b733a33323a223337376133646561656535663532366334633738346266653063663362363234223b733a33323a223030633636323637353236323131383237303365643330303636373333343739223b733a33323a223939343839376434353566653834313735613832353965316138643161646465223b733a33323a223337356337346330316137616637336661386433386662666637326163343065223b733a33323a223533646630333765373662323462386633386363653531373337643833353436223b733a33323a226236646664623639623861393736376537313334306238346265343361343261223b733a33323a223466366366363732613537383432333135313762373866363366373839313230223b733a33323a223435383730336539383335653339356266383966646439323130313233616565223b733a33323a223964633366333237343066343939333337646230396533316164356535383134223b733a33323a223033623232393039306564356130363663623532653264666531623362363532223b733a33323a223763363331656638326361343261346331363632373862303530663736373761223b733a33323a223034303436643936393538393034343866396136333435303638613430323834223b733a33323a223132653962353830646434336363383465323565386636326365663235373239223b733a33323a226531316134313430343231653038323939643630623365313436633734303038223b733a33323a223532626665666633303763383566326664373863396339653137653138356336223b733a33323a226630383331663334626266663337656564613666646636343631343063376434223b733a33323a226562626436346634626661393166356434386235383163653037333965613438223b733a33323a226562643037616139363535303466376137333063313635353065383435336531223b733a33323a226130646633386161363235303838343230363239666433633832613831323562223b733a33323a226664303535363436666233633063376462333366396230643464356632623138223b733a33323a223635363161663536316237323638356461356565383962666630366536663034223b733a33323a223838383037666335316336636666323436616364326563636435333835646634223b733a33323a226234663061373637666336333436633863666563336364363232643333653939223b733a33323a226632626434613135643462653263303838303463663062666232386463363964223b733a33323a223336643163323039366530313564616364316238396333396665343233393561223b733a33323a223734306230303665383731343932383065663539646564323364616661626137223b733a33323a223333333437303831633133353962613833396663313466623061613665353261223b733a33323a226533386165643362393338623737306332396233383235386366326236376233223b733a33323a226534393434333031366439366534656632376437323265353037353738323036223b733a33323a223262303262616431383564396566323432356230356465663138323433343139223b733a33323a223139623132333061303866396462663931396264333061333363376631316637223b733a33323a223637343634383762386465643563343165333934363530633761363265336362223b733a33323a223232656262663139656332616536643264333539623366313536363136616131223b733a33323a226335373465386632346361386361383262316439356633323739643532613130223b733a33323a226466626535353236316163646133323935306536323164636231623163333733223b733a33323a223035353765343736323739666638616138373739396363643834393738623061223b733a33323a223630303034393564346636656639643164623762396662643462623464623935223b733a33323a226331346666643631303039323639633733326632393334393565386563653234223b733a33323a223830613365323437636162386630663836663638396337323534643662616537223b733a33323a223366656665333664623433653466383631646466386339313036376366616331223b733a33323a226134366464643762323534376463376264366133663836313038323236663734223b733a33323a223439633139353935336634663235346637353664323036383637306631366133223b733a33323a226361643161636263376362616630376332343134343230656239383135623331223b733a33323a226664386363656134653834373334613735313662303234623432326439656238223b733a33323a223964356266636530643966366566666261323135343331353038323836373335223b733a33323a226233393137353538306438303839396661366139653765343331366239306131223b733a33323a226132643362643362633230633466383436353533643436316433313464343564223b733a33323a226135643461346635373232663566653366633834666332656439303934653134223b733a33323a223135323466393439373237343333633261376633333436383931613738616231223b733a33323a223063336230643466653538633433613234646233383430626133363135613831223b733a33323a223065653232373232386133393331653335343565373932646230613665303630223b733a33323a226135373633346431326533316562363132633233393363353132623538616438223b733a33323a223939343039346235346139363565633138616165666264663862303337376433223b733a33323a223032333763326335666139303433636434656235643734323035663364373062223b733a33323a226331356165633130633931313331653134353131633437356539343237366561223b733a33323a223663353434316230633537643937656364643834343463663234656138316437223b733a33323a223533623739313635356233326536626663333931383833366439323566633338223b733a33323a223061613265663231366137376237656162616634653938396232646332336361223b733a33323a223332633064393532663063383666353061633533636562326439343162636361223b733a33323a226435303631343861393336653266383864613431386565346266383162303265223b733a33323a223835376430663862353832633638613539333832633138663365336237363233223b733a33323a226166313432613935353937373666386664303761646361653733613737373737223b733a33323a226161666139313538393337313661633464636361353435356233386437636335223b733a33323a226138323861383930316661633733383735663864356661313930333139343466223b733a33323a226363663930306463313463656638336263313564633135616163613139623666223b733a33323a226431353334623363356631633630653465343764666562633337653737623234223b733a33323a226538656636353661323739316130386662353734373663633663363365656332223b733a33323a226138646464353364316336336438353332333334656632633732643062363639223b733a33323a223966666534333561666564623331336333366637303334333366353136616362223b733a33323a226132393063303534323235623562386431393361323661393135376136643564223b733a33323a223433346239663466363365643162613432623435623436353436663865646339223b733a33323a223637313232313234363866323636646165323833393963623562613830613437223b733a33323a226563333666663835326566636131626236333136383832653737336139316366223b733a33323a226465656631643133366362646262613062363633333532363564373966373862223b733a33323a226265303132323434376665353730626362393566666234353738303837373334223b733a33323a223166366139343061336137373838656239623738663739343734616333363230223b733a33323a223032613832363636346661386335633437333132356438376164306435633464223b733a33323a226662663863663362653764316633643232326131633439363038336563633765223b733a33323a223530303463313031346338616337316531303736626537653531396238636638223b733a33323a223938363835616239316532313835373362373365613866666338616438346133223b733a33323a223530323338333762626630346336306436353666633531663038613238343333223b733a33323a223633363462646363373332306531363737333731623036333066643238303062223b733a33323a226335353965356664383336306166343336633635316639323161313637623766223b733a33323a223464613662623937386661363331656361623564346434623430633734653037223b733a33323a223331303963623831383263356133326138323135363733363231623537633639223b733a33323a223238363962646263346136613636666165646636626231333235303365396233223b733a33323a226132373563343933326537326230626439316566393530343663386430323732223b733a33323a223531336263313833626235313665303039633639343934636537613165656431223b733a33323a226461376561313863356366353463646365636164366362653162356532636437223b733a33323a223261616562396132653036653962643034316632646466636535353634383563223b733a33323a223838346237363738383632346135376431323130623366633038363831343038223b733a33323a226135383631333437313634633536353037643534666164356637373961333765223b733a33323a226337306466636232396333313638613537303165353635303438623238666636223b733a33323a223064336162356364303036386533633231366331346362396438653339623163223b733a33323a226361616337383033663463333430386365373539653439653035396563303132223b733a33323a226538613539373264386431356535643865313331396132663439363438303962223b733a33323a226262326135343636336636653731633331346536653663643438323265333732223b733a33323a223064306439303733306337333331633232316365663630646531393532643436223b733a33323a223431366233623765613633653031316362656461303162306235386131313836223b733a33323a223666656337313733363565366562653939313633313863623435353966366665223b733a33323a223266373365643733386339616436316238326166383738666434366661396362223b733a33323a223064353332653966376531613432393064343936303865653331323839306265223b733a33323a226238366338656132323833333839316338393066363963363135626434346365223b733a33323a223361623061663034663436373066313036353532626564316638333238346439223b733a33323a223039316338353662633332333136303637363338393530303131346538386332223b733a33323a223764306231306237386335316336623739633339383534666238626262613265223b733a33323a226364636336613263643362646439666330383135366231383638393864633330223b733a33323a223761666364396434626539303863386366356335636164613063653630633661223b733a33323a226338383233616264393836653938363639373638333461663032303435356531223b733a33323a226635333761366639373261353065626361343165623666633263316265623266223b733a33323a226661616662303530343637646534343861343938646566366336663739663737223b733a33323a223762346136666332306539303763353436666233353465643838653061363030223b733a33323a223739663431383863316133393963356465303761346633303862383361336234223b733a33323a226430393437623032386531366462613339326331303939333531363131316130223b733a33323a226233303135386136653935626663383639393466363465663039383439666336223b733a33323a226638303737623638323163346631626433326664323236303532353434306563223b733a33323a223339303338363833343961373533346661356266633638356637346266636633223b733a33323a223561386533636166366237366265386633356166313331306265663466643737223b733a33323a223665306435336666396533313034646635643832623639626434373633326634223b733a33323a223438373137396163313530623338373538363766336136643739656364663831223b733a33323a223666393661313061323830353965363964666466376563656434396565363730223b733a33323a223266393265323139366232666261643638343332336364383731366533353633223b733a33323a226132633831363231333830623463333434656563613339636335353730303136223b733a33323a223935366666646536643132356538326234613634643861313030326265346431223b733a33323a223466333333316634373137313337653266366131346339633239626637346336223b733a33323a226134373030353466346132356161623561313139306261356635643737393832223b733a33323a223764643030363339333461343766306639633161326337326362623434633361223b733a33323a223161313739306133366265663662343466646231613735323934643732653330223b733a33323a226138366338386437393236623765303364356132663262353862633336363366223b733a33323a223135323466656466343533383938323564343939303236346232643833373662223b733a33323a226466626539643061663664623131383830623964303438333533653534653162223b733a33323a226433323662663835303964646338306231623864393564666539306462373532223b733a33323a226166633738656536353237656665316436383962313838376331373264333238223b733a33323a226662383231313736316664626539316231333933346538346234636137323135223b733a33323a223065653661323564646338356661616565323664363932306364393430326437223b733a33323a223138613537656462613334383832313639333865626566353066336130383532223b733a33323a226463316633663262616535383563656239396664376261303962353734373634223b733a33323a223938313363393534393133643430366132343161353362306533393138363737223b733a33323a226362316535323766613062633233336563646337336137646566373237323666223b733a33323a223631663535306337326431643564653032623562666661636438666364656334223b733a33323a223732663461623736376163653634383665373163623565616564303462623661223b733a33323a226361383531396339356564323766626339333134633830663736336531343261223b733a33323a226663346337626663303937316131313235353863363766633935663261306135223b733a33323a223466313530343634343066663964656662346661333335666437366137396334223b733a33323a223339646266313661353437323464353932373434363662613431313633643766223b733a33323a223234363062623033343131383333626534393433383566323634353561633938223b733a33323a226564643334326535333330646138626562373137326436383634363063303531223b733a33323a223539376466356535376264336234346664396533363962366262323862353165223b733a33323a223735386363633861386565333839323539323764656563346331323166626539223b733a33323a223433323934396264366162613666373939643137623538356235623932303061223b733a33323a226636396534393965626239363433636366363436383635306130613561663836223b733a33323a223361333137643238626233393964373437383432363764666530616338376361223b733a33323a226264356162386263613335346638393361313534663437326230663833376330223b733a33323a223163316633343537313166613534346361333839626431626665356634333361223b733a33323a223561333965623965633965366139353337396332633432313832643632636536223b733a33323a223635376632303364366438613265656235383535353031636532663536336433223b733a33323a226230376236316535393337366362666565366338616233393666393330323936223b733a33323a223166313562613632343833626462343634333464326537643064316534353263223b733a33323a223763373565333537323938333237323136363566663334396435383166656234223b733a33323a223162623561653061656637626266306234396336353639313333336634323061223b733a33323a223332623538386465386630336138613866393930383738643163393031343163223b733a33323a223034353032393836346137633032343635363830306131383431633830643332223b733a33323a226432363434386236383532376538666565626530633162653563633865356333223b733a33323a223565383930326330626265643465653565376534303164303735616662373334223b733a33323a223661666262393630333364346161366162333665336631386162313161393631223b733a33323a226166396331626333653462663930653439623666626534646637653866643739223b733a33323a223839623135363230666136633661666263343837363934376166303032313931223b733a33323a226235666164346566656165663033336234386239616262653634386535353838223b733a33323a223632613265333831323661623238353332343734343836626661633234363339223b733a33323a223765616439623330613334633036643239656363306162343131303464343865223b733a33323a223832356530386437333062326362393665613033663936373337333939316365223b733a33323a226162323462363164346434613831393937396331643066633261393463626139223b733a33323a223663343439386664373939643630376230363930303861346130396361663437223b733a33323a223465303630663031613536313736303933626365613362343730376633623137223b733a33323a226536666335666639393263633437643937303364323130303836376635363863223b733a33323a223266373537356266343738343336623534376464666338653634313362303032223b733a33323a223333383539626235616663333766396265653433376338663439643232383534223b733a33323a226533386333306236313639656235343161663864643665346435636531373666223b733a33323a223966316237336561663635383366623431313638613135303338636433326439223b733a33323a223236386336306363616539313635633930386239306663313835353364666530223b733a33323a226532626230663761623562346666633530323335376464643561353233393232223b733a33323a226633373263326336323635343636663737663435626139313135636234363833223b733a33323a226634336264623762663135353839613638363435653733343634373062386161223b733a33323a226435383264646134613866316637393035326635623831333164313866346364223b733a33323a223532353961396665663830623665376239303336306530316462303133383533223b733a33323a226365623266356435613534636563663630393865616237316661383563343663223b733a33323a226661663836393261343332656533663564633234303933373566656436356233223b733a33323a223538613764626462333066376463646661393162383237383931326663383962223b733a33323a226335363363393637376535303038646636323436653930396362313861626438223b733a33323a223633303063663730653337366561653532646431666363636339666431353066223b733a33323a223438363661343662316538393530623030323434343436323831613330623230223b733a33323a226662353432663337393461656461336632303031386362666139623138393931223b733a33323a223839643463653935393565363838323437313264633739663266656364656661223b733a33323a226463306662333931656464333163363066373962313735313261303163636438223b733a33323a223239616466316237373039376539393633646666353033633332326438653463223b733a33323a223865373339323066636530663735363035356264316565346335663330383332223b733a33323a226466633833306132396431316231326531616236343535663437313038323539223b733a33323a223133633863323636613738616438383063316564643039333138653633353439223b733a33323a226530326233353530636438316363653237396566336262333133313133313466223b733a33323a223032343037623735343033613564363638343737376338343430393534343962223b733a33323a223939316632303331366639303238353764666334373066646237366231373564223b733a33323a226261333333633765373865333966393838383031353963353566653038653134223b733a33323a223832623431363565653135623861306131313965356465303664303037383136223b733a33323a223738636562656639336339623337616162396164306166303836663331313034223b733a33323a226466373239646262613236383565393433373266383766333736313464393962223b733a33323a226366303938623963326531393630656664383238353561306533396661323061223b733a33323a226561356438323463366262363934303936323234333436326136386465656234223b733a33323a226365333831643634373962636439373433666661653630646139626334616139223b733a33323a226531396331613435353762303966653437366362656430313235643136663863223b733a33323a223139393134653264666365616261626630393537653339356335643333616231223b733a33323a223365646334396532643737663830653064663661656436313763623231653861223b733a33323a226230346435623535643766343834653635616161393632663735656233343262223b733a33323a226233613635313534333163393630626432353231623632326435613466366662223b733a33323a226664333661626634636633663731623233343331623561323030306237336363223b733a33323a223461663761366265313265653334353437326661376663373431656239393233223b733a33323a223363376330333330306330313134303937623638626234363435356365383334223b733a33323a223534353634626630383561393864643039356431396666353535353034346566223b733a33323a226230656230666461373933663033316265633936316232623632383934396534223b733a33323a223163623132356237636438393135306263383030336136363335616661623662223b733a33323a223431333832616130346466626531656633313634346161383433623731383766223b733a33323a223865323863383736313837373636316137326166656265373663373635313764223b733a33323a223062393332396535333431326237323037303333333831313332656230653164223b733a33323a223534323738363433623464633065386532653864656635373937616265323162223b733a33323a226332616539636238626336643234333066653262363932376161623235653363223b733a33323a223437323033616563373831363466653038386439386361386138343431306139223b733a33323a226362376363353262303737636434353031343533336431316431613965346262223b733a33323a226539356465653233343033393063316139303964303166376263643962316438223b733a33323a223739393432336366323834356363616362356166373963386137363034303834223b733a33323a223865376438303463356563363439303162313137373935373866353236383532223b733a33323a223335373862346563343766663732323364653964366430646335363862633036223b733a33323a223963306536383138383665343566653032336530333333313437613530303731223b733a33323a223463623034313566653536353530323434616637313263623434626261353664223b733a33323a223130333662643933646638366335353836383966646434376566373161633537223b733a33323a226533353766636466393037366132373837646137303465303033326566313836223b733a33323a226663393231343439373661396333336231353639306431303261313162306530223b733a33323a226637316237313333343261383261653963393332313930656139636532343836223b733a33323a223566326561326530393065363966393061303634626262316633373931656665223b733a33323a223664333337626531353561363563346332373137643737383334393362386432223b733a33323a223039393137353332356532303866636363646338356465653566363562313137223b733a33323a223961373232666633336134373065663537303965333662333635643434383539223b733a33323a226464373430326561643533386630663431373536313837623336663238656633223b733a33323a223466386435646564666435313534333035323036353362663862663762313330223b733a33323a223731333730633831326665336164376165663461373965306230363333613130223b7d733a343a2268617368223b733a36353a2237313337306338313266653361643761656634613739653062303633336131302d3466386435646564666435313534333035323036353362663862663762313330223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223865633264353834303462663462326431303733616138613963303633616261223b733a33323a223861393933356436313261626564396161306630633339623561633434656365223b7d733a343a2268617368223b733a36353a2238613939333564363132616265643961613066306333396235616334346563652d3865633264353834303462663462326431303733616138613963303633616261223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a353237323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a36323a7b733a33323a223339366237333832353634333231383831663332363236383562663838383065223b733a33323a226638353531343466643965613764366336646161613134316232656663323139223b733a33323a226363346163646634666663613030346437396132373536346164633334623766223b733a33323a223865366462373332336137643966626636353163303338323733613730643935223b733a33323a226130356463336439383839363261643639616339373962336630313563633566223b733a33323a226265363534663639653864353533363435666639656665663835386261366135223b733a33323a223134303464656135663762373563666665636434336266333237616462343631223b733a33323a223362323362393438626338363031643265366139356666343961383036303639223b733a33323a223834616636373666383230363931323231633539313837643630336539363437223b733a33323a223130376532313166366636353934666564623938646364336133313334636331223b733a33323a226566313564626436613733316261346435323161656562303632386462656536223b733a33323a226565663666383263653739306634333462313361383763643439353663386464223b733a33323a226431626337363837323930613861313265373532343265303530653762306663223b733a33323a223830636135323733386138316166323032636462366232346465636132623832223b733a33323a226434393634643238343762633863663832333763363761653930623639393434223b733a33323a223539353335663263653761373337643332636562303632356664633837393766223b733a33323a226264633465326136353137623930343363326161656264373764613939323234223b733a33323a223937366561316564623037336162313564323634663638353030303534386561223b733a33323a223164313738373461623333653065626237383366356536643166316330326261223b733a33323a223430313039643635376535613433656466396434346164303563376565623766223b733a33323a223233666532373566643362333635636237666330336430373961366331626565223b733a33323a223335653334643061643534633663663937363431366461613739663865336261223b733a33323a226364313065623535386664386237366331653539616666633732636333393262223b733a33323a223264646638306132656331356133633534363338316436353532653361366233223b733a33323a226337383961346663373836623866613631343664353931646237373936393162223b733a33323a223838336633366166656637306434663738393836323463333831643163373534223b733a33323a226633656162373834373165303438323335623961633061376664303232353737223b733a33323a223631366133323633653839643963326635623666613261363366363661353234223b733a33323a223831396564613165313537646234343261373635356563313538366536396163223b733a33323a223764616537323264363436373135363930363462353963323235633139613438223b733a33323a223635623833623238376333323934613961623435666136353438333235663262223b733a33323a223834316331386634346430653037313263626434396532396431353832663735223b733a33323a223230316331636636323963363363353932376661363063633131613364616230223b733a33323a223864633762316266386438643933376261336532336164663331663638383237223b733a33323a226335313133343735323664333234356165383332613937353066383364383631223b733a33323a226134653036653334343365353064323838366436633264393830376332646434223b733a33323a226338646634613562613664323038346133643530333133663232346530323332223b733a33323a226334303130396562663262306661366263666339363837376231306462366661223b733a33323a226637313262643339653434643863353739623665323835626631323764643561223b733a33323a226531663466386430653132616637643264343235613437653833663438616365223b733a33323a226563306434386161663635626133343765616661363130393361616537653164223b733a33323a223061323335373164356264353034333632353533646261656231616337333235223b733a33323a223162313236323562363336353533616334633631643731336438353861313166223b733a33323a226461623666343537636531653635613366393666353932383463653961373637223b733a33323a226666326335666230653564653535333664623130643333626437646330626634223b733a33323a226432363962653437326435343738376266333637373337346335323862363234223b733a33323a223532393335643163383162613234623961306336343433326238613563306565223b733a33323a223034326131376330356434346537636262383034336465623239353863343036223b733a33323a223238636331663534306133346161373031353830613166663739616134343539223b733a33323a226437626663323233393061623966313037353063643137373136626464396534223b733a33323a226661383263643136623163613036313434336637613135373239623663323137223b733a33323a223835313165663131616436353832363261363063633939376432613061313763223b733a33323a223238353134386434383661643238313063663034373764343238613562646163223b733a33323a223664343436633634326163623931616166613837616137393638396261666666223b733a33323a223466323237633139343733633130356630613132636534613764323235333465223b733a33323a226336366538383439376330646161396363623561626636663162663061343763223b733a33323a226461376535336631646263623338353638393539396434636339623266363939223b733a33323a226237393965353965663665613038643736373531373464393035383939313466223b733a33323a226537393537303766373662303464363539613732313938326437633935616165223b733a33323a226664363937363263303561326538656564323538616639356562613935663463223b733a33323a223238313966393534313438653232353330316132363139646335383738366163223b733a33323a223331626634333663303336643534616433373966613939323634383763643765223b733a33323a226235323161333738393065653363633636303139643435653865663736323632223b733a33323a223964333663636631616638376134316431663631636463666333323665333665223b733a33323a226334363331663931373934623733353765333932633661633337346366353966223b733a33323a223862623465653861336636643235666264346463393662346263323663313930223b733a33323a223562336564346438636338333435393336346661363361396536353430643434223b733a33323a223735363231336163333236346266396636323961363465666664306533386238223b733a33323a223661623364646332343630356231313331366133636632393464303230313862223b733a33323a223538366563663165656438613830353536663036323561363065383365666632223b733a33323a226362663563323164306266613264393962366430393663396337393731336337223b733a33323a223164353661376232303131363739633566346438656663393135376330303035223b733a33323a223862386638616564623562316566306537343364386231633631346634666430223b733a33323a223837656563316430316233393830333061636561343837363133323238633632223b733a33323a226532366133393966666563356535336364313762316534643666663435656662223b733a33323a226266383034323935346563656333613634653965333462633931346132646132223b733a33323a223631636161393034396630643737346563313065386165613830336435343264223b733a33323a226432353336643861653738313738373034616439633031636634343939616266223b733a33323a223939633831376366643639616565333435633437353331666536386138633937223b733a33323a226165623965613638396163616632393064623133666531306561643362356236223b733a33323a223666313066643564353561363633396435343061643765633664376134346331223b733a33323a223137653465346339356438383230366565636637356334323362663966386163223b733a33323a223464353934616438646333653864343939633033336235316232666338663038223b733a33323a223561613062353537396366333561396239623063303465383837646366643335223b733a33323a223832623361396532356633393837383734663730316239633638303164653435223b733a33323a223463356636313864306563653866323134613262666230323232616533393538223b733a33323a223932633161636466663563393535396339633731396265333665376235376537223b733a33323a223662383062396363636562303739663832356438383066313630316565343533223b733a33323a223035373633373737313031353832646333333234386631393764316564306439223b733a33323a226139646631376337353430613631326432376439313839373432396436326633223b733a33323a223536633739386431643934613030643333346532633435303132313739363665223b733a33323a223762313061626264633762653538663336666630623566653862366266663064223b733a33323a223237356334356535396664333162336131343766656435356135306333366137223b733a33323a223664383762313438656137353764316562316262353330323638356262356466223b733a33323a223437336265643762343130363063373665626231313134623162643963383734223b733a33323a223561653734633237633330616433393761633433316166356431313766363631223b733a33323a223130626361363864356132663965663636633139313164393837636366646266223b733a33323a223632663562383139343737343366313766656662373131333761613832346462223b733a33323a223739313262353464316163376465366666363235646639643862373239343936223b733a33323a223830666132333032626636346266323139363337663765356138326563613965223b733a33323a223532396232316532626661343638303537313365303933363437303535643836223b733a33323a223562373338373934333361366463376565636464666337356661643632373333223b733a33323a223761613138663362306464356531373739303761363363316431303931396438223b733a33323a226634303038386139343366333964646462646531353462623039666235373334223b733a33323a226135616635336265643066336133303931656363613236323265323661373666223b733a33323a223534386461373039366633666165323636396165343335653464323161376138223b733a33323a226463353536653363323631343433623233336438363363316631323430356638223b733a33323a223961643234373863363961366432313937613939323233646138623066346637223b733a33323a223965386464353434333838626432616566653564653665626161326564323462223b733a33323a223934333333363737356630383835663332303033383537316262376662613435223b733a33323a226239383830343335353839646434313731643931663937353666313761346539223b733a33323a223138383738626432636638616364306638326232396162346532343664323863223b733a33323a223461323934306264396233613039633461646465326266336639656462336164223b733a33323a223436353961376338353739623934643939356530633764643031613736306665223b733a33323a223939346663343138383830313137653935636639396231323037663932623865223b733a33323a226539346663643436333465383866636464656264636266363539386234643861223b733a33323a223238383333323036383262346162383635633262353337623432366532336361223b733a33323a226534376637323932373237656561663733303664646130666266666331396163223b733a33323a223236616331353430333533646435366266643034353030333862613366353963223b733a33323a226239623932643662353462306238383134643836646233653433326264333435223b733a33323a223135313635616366633338303465323238366362333762373038316637306133223b733a33323a226630326631653634396335356561313931363063313066316465626266663136223b733a33323a223262303663613266633666613732303435326335663332646631306430646436223b733a33323a226665626466656234616534386363623563396164393163333166326366636465223b7d733a343a2268617368223b733a36353a2266656264666562346165343863636235633961643931633331663263666364652d3262303663613266633666613732303435326335663332646631306430646436223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223338396337373938366465353737353135306562636661393263316363396530223b733a33323a223764346130383433373931373433663530363937393562353037376138353435223b7d733a343a2268617368223b733a36353a2237643461303834333739313734336635303639373935623530373761383534352d3338396337373938366465353737353135306562636661393263316363396530223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587229937);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
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
(40, 6, 1, 19, 'resource', NULL, NULL, NULL, 1),
(41, 6, 4, NULL, 'literal', '', 'General information about the band', NULL, 1),
(42, 6, 138, NULL, 'literal', '', 'Red Hot Chilli Peppers', NULL, 1),
(43, 6, 218, NULL, 'literal', '', 'Funk rock, rock alternatif, funk metal, fusion', NULL, 1),
(44, 6, 7, NULL, 'literal', '', '1983', NULL, 1),
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
(61, 12, 1, 10, 'resource', NULL, NULL, NULL, 1),
(62, 12, 1, 1, 'resource', NULL, NULL, NULL, 1),
(63, 12, 1, 6, 'resource', NULL, NULL, NULL, 1),
(66, 12, 4, NULL, 'literal', '', 'Musician and his role in the band (with activity start and, if applicable, activity end)', NULL, 1),
(67, 14, 1, NULL, 'literal', '', 'Red hot chilli peppers (Michael \"Flea\" Balzary)', NULL, 1),
(68, 14, 1, 2, 'resource', NULL, NULL, NULL, 1),
(69, 14, 1, 7, 'resource', NULL, NULL, NULL, 1),
(70, 14, 1, 6, 'resource', NULL, NULL, NULL, 1),
(71, 14, 4, NULL, 'literal', '', 'Musician and his role in the band (with activity start and, if applicable, activity end)', NULL, 1),
(72, 14, 316, NULL, 'literal', '', '1983', NULL, 1),
(73, 12, 316, NULL, 'literal', '', '1983', NULL, 1),
(74, 15, 1, NULL, 'literal', '', 'Red hot chilli peppers (Chad Smith)', NULL, 1),
(75, 15, 1, 6, 'resource', NULL, NULL, NULL, 1),
(76, 15, 1, 3, 'resource', NULL, NULL, NULL, 1),
(77, 15, 1, 8, 'resource', NULL, NULL, NULL, 1),
(78, 15, 4, NULL, 'literal', '', 'Musician and his role in the band (with activity start and, if applicable, activity end)', NULL, 1),
(79, 15, 316, NULL, 'literal', '', '1989', NULL, 1),
(80, 16, 1, NULL, 'literal', '', 'Red hot chilli peppers (John Frusciante)', NULL, 1),
(81, 16, 1, 9, 'resource', NULL, NULL, NULL, 1),
(82, 16, 1, 6, 'resource', NULL, NULL, NULL, 1),
(83, 16, 1, 4, 'resource', NULL, NULL, NULL, 1),
(84, 16, 4, NULL, 'literal', '', 'Musician and his role in the band (with activity start and, if applicable, activity end)', NULL, 1),
(85, 16, 316, NULL, 'literal', '', '1998', NULL, 1),
(86, 16, 315, NULL, 'literal', '', '2010', NULL, 1),
(89, 17, 1, NULL, 'literal', '', 'Red hot chilli peppers (Fohn Frusciante)', NULL, 1),
(90, 17, 1, 9, 'resource', NULL, NULL, NULL, 1),
(91, 17, 1, 6, 'resource', NULL, NULL, NULL, 1),
(92, 17, 1, 4, 'resource', NULL, NULL, NULL, 1),
(93, 17, 4, NULL, 'literal', '', 'Musician and his role in the band (with activity start and, if applicable, activity end)', NULL, 1),
(94, 17, 316, NULL, 'literal', '', '2020', NULL, 1),
(95, 18, 1, NULL, 'literal', '', 'Red hot chilli peppers (Josh Adam Klinghoffer)', NULL, 1),
(96, 18, 1, 6, 'resource', NULL, NULL, NULL, 1),
(97, 18, 1, 9, 'resource', NULL, NULL, NULL, 1),
(98, 18, 1, 5, 'resource', NULL, NULL, NULL, 1),
(99, 18, 4, NULL, 'literal', '', 'Musician and his role in the band (with activity start and, if applicable, activity end)', NULL, 1),
(100, 18, 316, NULL, 'literal', '', '2010', NULL, 1),
(101, 18, 315, NULL, 'literal', '', '2020', NULL, 1),
(102, 19, 1, NULL, 'literal', '', 'Red Hot Chilli Peppers Staistics', NULL, 1),
(103, 19, 4, NULL, 'literal', '', 'Statistics about the band by years', NULL, 1),
(104, 19, 409, NULL, 'literal', '', '100', NULL, 1),
(105, 19, 411, NULL, 'literal', '', '2000', NULL, 1),
(106, 6, 220, NULL, 'literal', '', 'USA', NULL, 1),
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
(117, 22, 1, 20, 'resource', NULL, NULL, NULL, 1),
(118, 22, 1, 21, 'resource', NULL, NULL, NULL, 1),
(119, 22, 4, NULL, 'literal', '', 'Details about an equipement (color, reference etc.)', NULL, 1),
(120, 22, 430, NULL, 'literal', '', 'White', NULL, 1),
(121, 22, 432, NULL, 'literal', '', '1980', NULL, 1),
(122, 23, 1, NULL, 'literal', '', 'Flea - Jazz Bass', NULL, 1),
(123, 23, 4, NULL, 'literal', '', 'The musician with his equipement (0 or more)', NULL, 1),
(124, 23, 4, 22, 'resource', NULL, NULL, NULL, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

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
