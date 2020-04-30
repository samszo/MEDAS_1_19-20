-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 22 avr. 2020 à 22:18
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
(2, 'site_pages', 1, 1, 'Voyage', ''),
(3, 'site_pages', 1, 1, 'Voyage', ''),
(4, 'site_pages', 1, 1, 'Voyage', ''),
(5, 'items', 1, 1, 'ID_CLI1', 'ID_CLI1\nLa Darre\nClémito\nID_CLI1\nID_FID1'),
(6, 'items', 1, 1, 'ID_CLI2', 'ID_CLI2\nPatulacci\nMarcel \nID_CLI2\nID_FID2'),
(7, 'items', 1, 1, 'ID_CLI3', 'ID_CLI3\nRobichet\nRobert\nID_CLI3\nID_FID3'),
(8, 'items', 1, 1, 'ID_CLI4', 'ID_CLI4\nVidol\nJean-Pierre\nID_CLI4\nID_FID4'),
(9, 'items', 1, 1, 'ID_FID1', 'ID_FID1\nNull\nID_FID1\nID_CLI1\nID_FACT1'),
(10, 'items', 1, 1, 'ID_FID2', 'ID_FID2\nPremium\nID_FID2\nID_CLI2\nID_FACT2'),
(11, 'items', 1, 1, 'ID_FACT1', 'ID_FACT1\n75\n10/12/2018\nID_FACT1\nID_FID1'),
(12, 'items', 1, 1, 'ID_FACT2', 'ID_FACT2\n125\n05/05/2019\nID_FACT2\nID_FID2'),
(13, 'items', 1, 1, 'ID_FACT3', 'ID_FACT3\n95\n03/01/2019\nID_FACT3\nID_FID3'),
(14, 'items', 1, 1, 'ID_FACT4', 'ID_FACT4\n95\n25/12/2016\nID_FACT4\nID_FID4'),
(18, 'items', 1, 1, 'A2', 'A2\nA2\nID_TRAIN1'),
(19, 'items', 1, 1, 'A27', 'A27\nA27\nID_TRAIN2'),
(20, 'items', 1, 1, 'ID_TRAIN1', 'ID_TRAIN1\n42012\nID_TRAIN1\nA2'),
(21, 'items', 1, 1, 'ID_TRAIN2', 'ID_TRAIN2\n42056\nID_TRAIN2\nA27'),
(22, 'items', 1, 1, 'ID_FID3', 'ID_FID3\nNULL\nID_FID3\nID_CLI3\nID_FACT3'),
(23, 'items', 1, 1, 'ID_FID4', 'ID_FID4\nPremium\nID_FID4\nID_CLI4\nID_FACT4'),
(24, 'item_sets', 1, 1, 'ID_VOY1', 'ID_VOY1\nQuimper\nParis\n41\n1\nID_VOY1\nID_FACT1\nA2'),
(25, 'item_sets', 1, 1, 'ID_VOY2', 'ID_VOY2\nVannes\nParis\n22\n2\nID_VOY2\nID_FACT2\nA27'),
(26, 'item_sets', 1, 1, 'ID_VOY3', 'ID_VOY3\nLyon\nParis\n12\n1\nID_VOY3\nID_FACT3\nA2'),
(27, 'item_sets', 1, 1, 'ID_VOY4', 'ID_VOY4\nRennes\nParis\n09\n1\nID_VOY4\nID_FACT4\nA27');

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

--
-- Déchargement des données de la table `item_set`
--

INSERT INTO `item_set` (`id`, `is_open`) VALUES
(24, 0),
(25, 0),
(26, 0),
(27, 0);

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
('LTw3efsJcepMAhJOKXp3827EYtogpp4b', 2, '2020-04-22 14:31:52', 1);

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
(196, 1, 6, 'NOM', 'NOM', NULL),
(197, 1, 6, 'PRENOM', 'PRENOM', NULL),
(198, 1, 6, 'Type_Fid', 'Type_Fid', NULL),
(199, 1, 6, 'Prix', 'Prix', NULL),
(200, 1, 6, 'Date', 'Date', NULL),
(201, 1, 6, 'Gare_Dep', 'Gare de départ', NULL),
(202, 1, 6, 'Gare_Arr', 'Gare d\'arrivé', NULL),
(203, 1, 6, 'Place', 'Place', NULL),
(204, 1, 6, 'Classe', 'Classe', NULL),
(205, 1, 6, 'Nom_Voit', 'Nom de voiture', NULL),
(206, 1, 6, 'Nom_Train', 'Nom de train', NULL),
(207, 1, 6, 'Id_Client', 'Id_Client', NULL),
(208, 1, 6, 'Id_Carte', 'Id_Carte', NULL),
(209, 1, 6, 'Id_Facture', 'Id_Facture', NULL),
(210, 1, 6, 'Id_Voyage', 'Id_Voyage', NULL),
(211, 1, 6, 'Id_Voiture', 'Id_Voyage', NULL),
(212, 1, 6, 'Id_Train', 'Id_Train', NULL);

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
(5, 1, 112, 8, NULL, 'ID_CLI1', 1, '2020-04-22 16:34:51', '2020-04-22 18:13:44', 'Omeka\\Entity\\Item'),
(6, 1, 112, 8, NULL, 'ID_CLI2', 1, '2020-04-22 16:37:33', '2020-04-22 18:14:19', 'Omeka\\Entity\\Item'),
(7, 1, 112, 8, NULL, 'ID_CLI3', 1, '2020-04-22 16:38:30', '2020-04-22 18:23:25', 'Omeka\\Entity\\Item'),
(8, 1, 112, 8, NULL, 'ID_CLI4', 1, '2020-04-22 16:40:37', '2020-04-22 18:23:55', 'Omeka\\Entity\\Item'),
(9, 1, 113, 9, NULL, 'ID_FID1', 1, '2020-04-22 16:44:31', '2020-04-22 18:30:19', 'Omeka\\Entity\\Item'),
(10, 1, 113, 9, NULL, 'ID_FID2', 1, '2020-04-22 16:45:44', '2020-04-22 18:31:08', 'Omeka\\Entity\\Item'),
(11, 1, 114, 10, NULL, 'ID_FACT1', 1, '2020-04-22 16:47:56', '2020-04-22 18:51:34', 'Omeka\\Entity\\Item'),
(12, 1, 114, 10, NULL, 'ID_FACT2', 1, '2020-04-22 16:49:41', '2020-04-22 18:35:51', 'Omeka\\Entity\\Item'),
(13, 1, 114, 10, NULL, 'ID_FACT3', 1, '2020-04-22 16:50:52', '2020-04-22 18:36:22', 'Omeka\\Entity\\Item'),
(14, 1, 114, 10, NULL, 'ID_FACT4', 1, '2020-04-22 16:51:40', '2020-04-22 18:51:58', 'Omeka\\Entity\\Item'),
(18, 1, 116, 12, NULL, 'A2', 1, '2020-04-22 16:55:40', '2020-04-22 18:39:38', 'Omeka\\Entity\\Item'),
(19, 1, 116, 12, NULL, 'A27', 1, '2020-04-22 16:55:56', '2020-04-22 18:40:10', 'Omeka\\Entity\\Item'),
(20, 1, 117, 13, NULL, 'ID_TRAIN1', 1, '2020-04-22 16:58:45', '2020-04-22 18:38:07', 'Omeka\\Entity\\Item'),
(21, 1, 117, 13, NULL, 'ID_TRAIN2', 1, '2020-04-22 16:59:13', '2020-04-22 18:38:37', 'Omeka\\Entity\\Item'),
(22, 1, 113, 9, NULL, 'ID_FID3', 1, '2020-04-22 18:19:00', '2020-04-22 18:31:58', 'Omeka\\Entity\\Item'),
(23, 1, 113, 9, NULL, 'ID_FID4', 1, '2020-04-22 18:19:31', '2020-04-22 18:32:37', 'Omeka\\Entity\\Item'),
(24, 1, 115, 11, NULL, 'ID_VOY1', 1, '2020-04-22 18:46:48', '2020-04-22 18:46:48', 'Omeka\\Entity\\ItemSet'),
(25, 1, 115, 11, NULL, 'ID_VOY2', 1, '2020-04-22 18:48:32', '2020-04-22 18:48:32', 'Omeka\\Entity\\ItemSet'),
(26, 1, 115, 11, NULL, 'ID_VOY3', 1, '2020-04-22 18:50:08', '2020-04-22 18:50:08', 'Omeka\\Entity\\ItemSet'),
(27, 1, 115, 11, NULL, 'ID_VOY4', 1, '2020-04-22 18:51:17', '2020-04-22 18:51:17', 'Omeka\\Entity\\ItemSet');

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
(112, 1, 6, 'Client', 'Client', NULL),
(113, 1, 6, 'Carte_Fid', 'Carte_Fid', NULL),
(114, 1, 6, 'Facture', 'Facture', NULL),
(115, 1, 6, 'Voyage', 'Voyage', NULL),
(116, 1, 6, 'Voiture', 'Voiture', NULL),
(117, 1, 6, 'Train', 'Train', NULL),
(119, 1, 8, 'Train', 'Zug', NULL);

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
(8, 1, 112, NULL, NULL, 'Client'),
(9, 1, 113, NULL, NULL, 'Carte fid'),
(10, 1, 114, NULL, NULL, 'Facture'),
(11, 1, 115, NULL, NULL, 'Voyage'),
(12, 1, 116, NULL, NULL, 'Voiture'),
(13, 1, 117, NULL, NULL, 'Train');

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
(31, 8, 1, NULL, NULL, 1, NULL, 0, 0),
(32, 8, 4, NULL, NULL, 2, NULL, 0, 0),
(33, 8, 196, NULL, NULL, 3, NULL, 0, 0),
(34, 8, 197, NULL, NULL, 4, NULL, 0, 0),
(35, 8, 207, NULL, NULL, 5, NULL, 0, 0),
(36, 9, 1, NULL, NULL, 1, NULL, 0, 0),
(37, 9, 4, NULL, NULL, 2, NULL, 0, 0),
(38, 9, 198, NULL, NULL, 3, NULL, 0, 0),
(39, 9, 208, NULL, NULL, 4, NULL, 0, 0),
(40, 10, 1, NULL, NULL, 1, NULL, 0, 0),
(41, 10, 4, NULL, NULL, 2, NULL, 0, 0),
(42, 10, 199, NULL, NULL, 3, NULL, 0, 0),
(43, 10, 200, NULL, NULL, 4, NULL, 0, 0),
(44, 10, 209, NULL, NULL, 5, NULL, 0, 0),
(45, 11, 1, NULL, NULL, 1, NULL, 0, 0),
(46, 11, 4, NULL, NULL, 2, NULL, 0, 0),
(47, 11, 202, NULL, NULL, 3, NULL, 0, 0),
(48, 11, 201, NULL, NULL, 4, NULL, 0, 0),
(49, 11, 203, NULL, NULL, 5, NULL, 0, 0),
(50, 11, 204, NULL, NULL, 6, NULL, 0, 0),
(51, 11, 210, NULL, NULL, 7, NULL, 0, 0),
(52, 12, 1, NULL, NULL, 1, NULL, 0, 0),
(53, 12, 4, NULL, NULL, 2, NULL, 0, 0),
(54, 12, 205, NULL, NULL, 3, NULL, 0, 0),
(55, 13, 1, NULL, NULL, 1, NULL, 0, 0),
(56, 13, 4, NULL, NULL, 2, NULL, 0, 0),
(57, 13, 206, NULL, NULL, 3, NULL, 0, 0),
(58, 13, 212, NULL, NULL, 4, NULL, 0, 0);

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
('adpuc9i2lu4rpk8d04cr6svj6h', 0x5f5f5a467c613a31303a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373538363530362e3036393639393b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226b336c696f32666f626e616d6f67656269616d3131726a73386c223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373536393135313b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538393431393b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539303130323b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373539303130363b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373537363635303b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538373933333b7d733a33343a225a656e645f56616c696461746f725f437372665f73616c745f666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538363431373b7d733a34323a225a656e645f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538363634353b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f3132372e302e302e312f6f6d656b612f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223732306234613831653339303536646362656366613733393263316665616339223b733a33323a223962343733633539313265356335333037633562623136316535326632396433223b733a33323a223930383761653166373531623436643636653364343566666539316535316230223b733a33323a226638363538303335356532363539353765613134376630323562633238646532223b7d733a343a2268617368223b733a36353a2266383635383033353565323635393537656131343766303235626332386465322d3930383761653166373531623436643636653364343566666539316535316230223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313531323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31353a7b733a33323a223163633634366365313634643332306231323935653762613837353037303964223b733a33323a223164326262343130393633393436616163323261343166653335336365383335223b733a33323a223039373230386439643336366139653438313437343033323962666331646539223b733a33323a223334353438646133636435643733363035346663613530313665306266373632223b733a33323a223363353536663831303534646261336332663134323331396331376462383361223b733a33323a226536393637356538663835323833343564633739376337633138646164333164223b733a33323a223231633762396261623966613136666632323630326331623461343238653262223b733a33323a223038343635643736366535376230663262343263306637333230653639623164223b733a33323a226530633836336137313566313630653530356164363266356634636363653737223b733a33323a223833663735643765303239336461373965633338373163303831303764373964223b733a33323a223432653637623233653963333662633639343730303864303932313562383132223b733a33323a226635366564313237363832613030313737313364353231373739663963316136223b733a33323a223662323064333065666334633237333338303833636634313935313561316335223b733a33323a226534633961316561396566623666396566313337306334626337643737636366223b733a33323a223961326262626534356364393632316166363532343738313766636565366366223b733a33323a226131303337616236343464616166663539653262303364343834346434613761223b733a33323a223337336537626664386135303162313932633439646463653061366533633235223b733a33323a226663646439616164616464393936313361643333373831383165336461646634223b733a33323a223661336236613934633932646664653861313662653563613466326239636533223b733a33323a223434376135613033346464663936306134386438376665356564373836313635223b733a33323a226562316636396530326263646433663666383665613432663366373334376634223b733a33323a226437353564636162643237666466653732653230303035323736346134393364223b733a33323a223730623462383035356561303234626337636134376361623133356464326432223b733a33323a223437663561353338393864336437653734353138386435363936346265613064223b733a33323a226562616664626164323933643537386539663132343438313361353462366262223b733a33323a223862616361363461656439306639346261376531313136636439633534613764223b733a33323a223133643962386233383439623363653463353239373239613734653534636334223b733a33323a223739623534323939363632356161623861396534333531376263326432343033223b733a33323a223736373666666536666435323436656166323362373739646166636538623530223b733a33323a223332346131656661313630626333653433353232306436653236383534356366223b7d733a343a2268617368223b733a36353a2233323461316566613136306263336534333532323064366532363835343563662d3736373666666536666435323436656166323362373739646166636538623530223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a33323037333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3339373a7b733a33323a223635323632626366386531623031373835366162646664336633613536333733223b733a33323a226236323330343335333632643463613836633736646636626232316135366364223b733a33323a223732373731666534303238613639376430633835333231343533373237393239223b733a33323a226339646566333164393062373238393364636333336533656363393731343665223b733a33323a223963376465643936633766383538303233326139313563343764336461356563223b733a33323a226230636531333661316539373731376335666130316361623339393237396537223b733a33323a223033333633646630616562376663623532396639663164313866333366643366223b733a33323a223365373264373237366335316532336661303532393461663434323633643038223b733a33323a223539656438323965636638353432633837323731303364323131363264303638223b733a33323a223164376337303439636130363533643534343030323261356464623765306238223b733a33323a223035356166353665363431303637626564396632313761666335643436373135223b733a33323a223265626266613139353731383662383163626339383737316536336165303333223b733a33323a226364383066333261316531313166613736616165396133396633326434633832223b733a33323a226630353231636332333732333563633336663063636234393663376439396662223b733a33323a223433356239626531363632653138653330353933393335356330386362643062223b733a33323a223264393465376262666366306236313763623530383736326666353132323435223b733a33323a226532363261326231353430396438303366323864386535336439313764383030223b733a33323a223164346133663530323364323831633865373866363061363331366230623361223b733a33323a223362616463306262396136323962356632326531323363646462653737666536223b733a33323a223631356164613437323534363033323739613931646435393863336334343737223b733a33323a226530323737366164343139346365343039616664623965343165323236383462223b733a33323a223337646636613031626536616235313937306366383463613866383037313762223b733a33323a223166666664613262653434363639373865313139633266353761323734316434223b733a33323a223961303235643063393632393730343336373663636263636133653333346332223b733a33323a223666353834633035326639336630643664666137313638643030626366343639223b733a33323a223062303830316133396438386337613631633934653831346135633435313334223b733a33323a226265333133656232363661626233393531663266646366383730646135343364223b733a33323a226638366130306133653663653465633866663931623131306164376130643434223b733a33323a223838636139616531653231303333636436336166663864656130613864313030223b733a33323a226139306238666436656632383034313531616132646135366238636638366639223b733a33323a226437396566303033393961303964643039623137393639383664666134356530223b733a33323a226136326164646333393834643737346533383465616435336530633832653462223b733a33323a223734333332663136306632633139656566396136643830333935393332626230223b733a33323a223338373132643839333963386138663366363332656264656133613864353466223b733a33323a226135356364643437343662373834623633616330373637386261316661326164223b733a33323a226666636262363932393832653131616336366363616237376262306336343731223b733a33323a223033313863386164396262353466376563613663343530363834353565643535223b733a33323a223838656637396335616434306339636262343138306262623962643366653437223b733a33323a226236383166663036373966613564346530353662303461626530316432316337223b733a33323a223964663232306465616265393937323062316631623036663336646339613231223b733a33323a223535326262666333613865313439316237363565656331363361393464393466223b733a33323a223664643238656362353637376436333637643431323237653061376265366563223b733a33323a223762316266303564343930306361326566666431306231363633303637343734223b733a33323a223662646338306465323565323238643131346236623733653762623737383761223b733a33323a223839313533303238343365656333393761316262646332396264643666643137223b733a33323a223363303331336331383730313531613661363431386437353130363733376264223b733a33323a223836623365306139383839353837313062386466623361363030373033393265223b733a33323a226133623537303533326431343132626338616534303237323239336363613237223b733a33323a223261363033653966636232323238343939656335636264383932393564303630223b733a33323a223761336364336631663230346630613865393430613732363636626164656132223b733a33323a223735393330316637633239343931353636663239353639303734663365646430223b733a33323a223066303264636338653264313962383163333763373763323736366362653264223b733a33323a223265643337633463616434643336323831656133613236373861643836323132223b733a33323a226431336561633334366139623731316162396532646263633039623962613230223b733a33323a223038633531323137353263643832633033353462653033646634303530373330223b733a33323a223062643565396565366437626136626462643032356238366437343466393937223b733a33323a226330656331316437323835363534336232663761623964653765313733613066223b733a33323a226264313062363734636237663639333663626462353837366163376636653035223b733a33323a223130393736343231663838656261346239353233313532666438353333323432223b733a33323a226139386665386262623535323463383730623834343830633338326263393436223b733a33323a226266363934663236663931373566656230353834353430643665343932633934223b733a33323a223734336464666662373731346163313933663333376462303131626366326463223b733a33323a226464373435383063633437353061656635373333336663326664643236356162223b733a33323a223433353565376363396261393438343934323835616138613633373965633433223b733a33323a226435333632316332356438376134363031313366666563323863373334303463223b733a33323a226532616334383836343262346531326636633439303938646166353834663766223b733a33323a223732303935356235313632626161356264303735343861643264656233326239223b733a33323a223365626436366664623636613365643430303463633033366634336162303362223b733a33323a223765343163336363373062333637313562333433653466663634343335306536223b733a33323a226436616330643439663865616138663735363965313664373364323166653838223b733a33323a226336303234646336663066313731636464636139616536393565353439633535223b733a33323a226533383934313435636230656232666166343762343438663739626430616262223b733a33323a223433623362613038303332313133616262383432383534333064666163333765223b733a33323a223362393934653437326665303633626431303761666139636339353866636535223b733a33323a223538363264653165663031326336313539623135626638373537616462313130223b733a33323a223362396537636137333661623462653935313866313462333938323064393763223b733a33323a226331376335643938383630623835383164383639336537666334356432333536223b733a33323a226334623564626161386236353538616266666633626534663436323433646563223b733a33323a226132373433653566656564376166316332636665343232363162333136663564223b733a33323a226130633739326437633831663165653663393230393837663239353165633631223b733a33323a223036626136383961613133626639336238323761643964336331646535306433223b733a33323a223537333531326365643732366462353334326430353839666665663632616364223b733a33323a226266343939636362336232666536383033663736343238623464343531383430223b733a33323a223566376237643738326564336634636261393335623963306430306633326234223b733a33323a223764343365393832646363356138666539306539613532643363313537656564223b733a33323a223932366630383337623864323136613664393930613662373530616136626532223b733a33323a223033623039343462326131656332366162303837623739316531353631343530223b733a33323a226165396237343836396534323238343636326132666136643230646133323632223b733a33323a226664376337326362666235333136653431343038666335353962613035666333223b733a33323a223637366662326536663564303462626638396236373039636666363762663463223b733a33323a223030626335653565346639316131306133346363353137396566396165616564223b733a33323a226161636265613264646336373165333834666631306164376433363162633361223b733a33323a226439383136343739363830326361633463373565626433366161616237336366223b733a33323a226335623333646336323130623362633764633030653735306132636566353264223b733a33323a223230643738313531356531376265383433303330306461323964386363306664223b733a33323a226464313736666334373231366137333764353436366337653239343165653939223b733a33323a226165383434376139336131393038353734363061393835633636643431326432223b733a33323a223162313763356635383133656535343161343465373538346636323164646261223b733a33323a223535626464386665643234353539613830643361393233373336623933363164223b733a33323a226331396664333233653139633931636161643331313964326139646632613163223b733a33323a223337636136343931323538346364393637653635376332386339646638316464223b733a33323a226438333364633339383036613839656466346230316637373231366165326234223b733a33323a226130613262633264646636623464636434393461353538343336353533333837223b733a33323a226234393463613838343963323234646365313835393034653964303037333663223b733a33323a226364313231346564643962613034363531616664363237626461376334613338223b733a33323a223930613436343634646639666337343363313136633666343131386161316138223b733a33323a226233343135363566353337633539623063643934353033376166386139366337223b733a33323a226562616139616436326262346363376131613132633765666633353661663634223b733a33323a223762353534346532633765373533303865653363343132656565383166633533223b733a33323a223733656233613162383932333433636361356564646462633665366437653335223b733a33323a226135396338363337643538393637343161666164383163373039666336613234223b733a33323a223336363633376433353332653561393232613062326462366230613164356336223b733a33323a223032393739356537383137613765303666336337666631653334383935383362223b733a33323a223762346663303966616366373535306235613631396633666261646161356134223b733a33323a223634356533626461383666613133323336383835663933623861303963346661223b733a33323a223935326333346332666632623631663566336661373966356631303537393939223b733a33323a223631633761336537343964666439303830616632306366366636383831663936223b733a33323a226131613438373366646136376664393062383734623364653265633330653537223b733a33323a226433313435663638373363653462386630316239623661393663623938636136223b733a33323a223165636238643563613330393436616562666532666132613064626539636561223b733a33323a223039346536643836326534376334616564373562303565326461323232626435223b733a33323a223030303732663233653864623962313634356431353135623030373566313433223b733a33323a226366323366303964626338363531646535653832663939623533613166613961223b733a33323a223536333837636565376533653363653564346538306339346461316330653333223b733a33323a226261613663316464356266666165336261636432306139663761363332346365223b733a33323a223833323832666631656631326537363734393636653762636535333833316363223b733a33323a223234326364323531323832313632346234306161306435343563336366666138223b733a33323a226164663430306335363039336362393132313865356563386262383837633938223b733a33323a226332646661363865386662666235333332313933326431633562346138333463223b733a33323a223863336166396365633166656137313637616538636139626535363032663163223b733a33323a223736346663376635323061306434363338356665386530613738653436633161223b733a33323a223139636665346163373932393938653530333963373864646434653565623135223b733a33323a223333623339343132313839666636623932386566353234666534393231353261223b733a33323a223762376638313262363465326536616235396436343236343432613739356337223b733a33323a226531373533396433613533653433626430336336646565336232366263663330223b733a33323a223839613137663236363433666464633238366330336234626436363139633433223b733a33323a223161323864653632616533333336343766343839356163343734636238303630223b733a33323a223433306362336461393063323130346439306164363930613334333032396464223b733a33323a223439663439393636613966373061643930326161333334333665383131353833223b733a33323a226664356263366365323866616237383137316262336664643536336431643364223b733a33323a223161613962626638616231653638336336323865383332353231303739613930223b733a33323a223739366264653361323531383266613331396437666566363934363635643831223b733a33323a226666323532346137346462643533663261323039656636343565323862376531223b733a33323a226539623833323032366566623961396338306339646134656530393432343535223b733a33323a226164333437373665626438313531326530353730313836653363376539303939223b733a33323a223036613136303732633233346630613438353331663663646630363439663439223b733a33323a226435356130303865383333666163333866306363646235303532346263343733223b733a33323a226662316432613165316665616338653266303331633835323161333663613966223b733a33323a226138643438386233396338646630666433393835646432663739313338383733223b733a33323a226238343130383364303530653134383765306661336365663239396231333864223b733a33323a226434303861386335626439373531393138383564336636623161363765306331223b733a33323a226339643235613636313739323166623932343531303338646539366432376332223b733a33323a223436653761646565653563303933336366396235306135356563353438653766223b733a33323a223930663435336163333363316636626233343066616236393832336136366436223b733a33323a226438326230376634343330653461663532306331656131313462316331316363223b733a33323a223932656666653164633833373830323734646562623832313062306230383933223b733a33323a223537633836333038303836323636343332366238323631326534366335343936223b733a33323a226661313962336332633863333338643261343838643137333362336161366664223b733a33323a226633326661323863653437666161316539656638333763386365396535396362223b733a33323a226331353966336633666538613566636537316434363431663635623635313838223b733a33323a223735383561663561613064373830373136323565336164363266343066326666223b733a33323a223964613066353730616561373834333661643564633032333366386532333135223b733a33323a226236306465366563656333346164376634306666393234623633346134633863223b733a33323a226431336234333933336230626336373362343966353137353235663964323934223b733a33323a223935373936366635373836303437353664366433366261616331346537396165223b733a33323a226665646265653639323932613065343839396434656539653663393935626537223b733a33323a223363396566393731326437633330393434353336653563363765653532313731223b733a33323a223936333139313664623366333536343734313265386161323464376634363234223b733a33323a223133366333353064346362663533643833316537306164363934353061356532223b733a33323a223665636361353432623463313062303931613134333164636238363831303263223b733a33323a226139343262333465653163623935366135323364376464373861613737643262223b733a33323a223439366333363363373565383131366534373032376361363563346235356434223b733a33323a226431646439663264383862326566653864313334393939613131343833666162223b733a33323a223064643939626364366361313539306138613539663033386164383130326561223b733a33323a223161663431653533633535396233313938656230313566343961343061353831223b733a33323a226463383063613038303330646639666363343538643064313435363534333666223b733a33323a223530383636383661613133336339393365313936623237643164336137653834223b733a33323a226666643566623933306162633638653766333963613133613966623136666131223b733a33323a223438636539613364666136333565336665616262353831616534303162666565223b733a33323a226139616138613661623032623936383031663730396339323461376364353266223b733a33323a226330346561333365643564623835623765386565353138303436353265356638223b733a33323a226635636139396336323136363762336536613361643761336636663731613036223b733a33323a223039376638656434626539323639663965663738306163306136353437333963223b733a33323a226339616531666634353962383766363163666631303633633162666635376539223b733a33323a226461373831656231633432383834343461663564393131393331633964303530223b733a33323a223239373465616236373732393862333065656135373264313463643937663038223b733a33323a226563306532393830623936616532633335663530346538616263653333656365223b733a33323a223937363430396162663763353030396236313235353038613236326133343562223b733a33323a223439656639396434643839303063613630633331663032373235633036373961223b733a33323a223235376131663630653939343061313833316461646266613862643135666563223b733a33323a223061373330663132396436656662373639326432333063633162326534353336223b733a33323a223434616465326132386639303761303431313433336439383662393632616337223b733a33323a223362316134616333336462323831323430323363643132373465393433303762223b733a33323a223038623831343131313537373537626635623737313333613530323534666639223b733a33323a226339396161636363646139393433656165363937666163323935343936623962223b733a33323a223838343639386263376162343863376265666339303432643530663162373935223b733a33323a223163363338666135373862353932666263386635376632636464336230383737223b733a33323a223434663339643435383864623337326661303534363965303937633739616266223b733a33323a226439663966353233343234396566623861643238646562336234336465646664223b733a33323a223566616537616639373966303463383164313561646166346366326164393264223b733a33323a226239626336633535363865376266656635633236383863646461613035386561223b733a33323a223635306138336235306135343336613234363836356130623761633063353462223b733a33323a223439313261663830373830633339376261326534313035643661356265363036223b733a33323a223966316666653861656165353636656265346331363232363030383630316431223b733a33323a226139343635356138343339316537643330376330633764353066636566363166223b733a33323a226232326136383363393834376264656132633362343430356431393961616132223b733a33323a226134386138346264646439663330653037626134303230326234343235353636223b733a33323a226234323936366235363765626432663665346264383666303161313832383637223b733a33323a223062343066323335653530316333633366376437613733623331336634333831223b733a33323a223063623465396663663335653864356433323834386331353563643430383539223b733a33323a226235373431666234373535366564303839376363633130646239636464643231223b733a33323a226535363234616263643630353631353936353564326331323162376637363062223b733a33323a223562653535346261313738353233626530353336363966653739343065333262223b733a33323a223931333734623762656265313263363132626535363134373332383038626465223b733a33323a226662336431383135626262633036636233306531346231303434613865333530223b733a33323a223361373730363263376138393438323565383731643066343530343436356638223b733a33323a223133303030313465316137313930303566313365653635616534353232643965223b733a33323a223866386565666564346661663962393630623330353039316235343633363835223b733a33323a223738653464613064386332386236353834336534666131393336343661383465223b733a33323a223961323330386638393930306661396130396234353966393935623865643734223b733a33323a226637323338663765393734643761373530623937363035613133613039353664223b733a33323a223139653964313163636564343435613633373934643662373239366431636464223b733a33323a226632366364356361336263343331333333323734396262303361393839626230223b733a33323a223535383534306661333939393136656465623536653063343261613737336532223b733a33323a223264313165373964366564376330346562316538313432343233636634653036223b733a33323a226630316233646530333063313637336535333336303539363939646463306632223b733a33323a226431656162333566353736613864646335616265303532623337626665396635223b733a33323a223661643932643730626264636436316430326333373938656339353535343132223b733a33323a226232633931666466336634373432393262383430636637393165636363306237223b733a33323a223566333865636366663464383133393338363837633530653066363035373337223b733a33323a223262363932613830353433313436336631623938323662383734653965386237223b733a33323a226662663663336561623131616637363635383333323531363265353966363364223b733a33323a226139376436623265366631366338303061303733613065656633363861623733223b733a33323a226239373865373838326462336364633965326232393734383730626337653834223b733a33323a223937626437326466373334383434396638303061633435636363626236633430223b733a33323a226430626235643163643532383431623936386337313764303334623130643465223b733a33323a226335626637313532343532666562343763336131613435313434366366313631223b733a33323a223263356262396432393236663333376230376239373237333230326262363865223b733a33323a226163303139373762383332353037336133663234363365376265323038386339223b733a33323a223365653361643431363465613037306634373034343237656534386630326539223b733a33323a223232363466363564383661306361313237636336636339396666333331396130223b733a33323a223235316635353165346238626433386636656266333966343562313862663537223b733a33323a223539306336336331386562623361643138306338313237666231393730383065223b733a33323a223837303931613161656464313436613934663666313962386639306531353666223b733a33323a226361636364373230383932616631373862323066376465326363653962613836223b733a33323a223530616631666534376236356364386638333330393231363439373331646430223b733a33323a226337343838366131623961366538626264633062353466356536626137353734223b733a33323a223030643833636464393338303766306465366663343130613366636361303765223b733a33323a226533653637373835313563396462656232343731623262396466646431386131223b733a33323a223738663761306135646435313061313438656538393431623636373734323936223b733a33323a223663303563303634323533653734306430336339333266333932336335626635223b733a33323a226430393664303661646234383461656430663537393162663766353665373763223b733a33323a226237636139343365613931353565333037326636613632306538353233393639223b733a33323a223336636334386632616163653933383234633861353663616635666230623235223b733a33323a223837653835396666613761336262356464326333333239376561626132376637223b733a33323a226631356537353332333265346234363463303664343738636430333061396161223b733a33323a223238366630346661333164616534313464303435393932333165623231346330223b733a33323a223363343133323263323933373039373139656662653533383030396465626636223b733a33323a223837353465653434646434303638663030343463386366383163393662616362223b733a33323a223962643065356230323335353539613133313666613732633436663335623732223b733a33323a226635613166666634323966356131396635623061343733383263323865326430223b733a33323a226662326531306330373563656231383534363766383939313239316631323634223b733a33323a223233366130373334386634656365316539383664623637333664643162323665223b733a33323a223938326330633261353036303932623335326338326461623031653164616337223b733a33323a226433663634613030336137393338313439613037306431616132653338333932223b733a33323a226234616536653036613161303363363636366565373133666265633231663335223b733a33323a223737646331636133626537636366373133643065363064393264343030643330223b733a33323a223562626166376638323238313866343438633632363238336339346634386565223b733a33323a226632373566336135616462393865373563343565373562393039646664323464223b733a33323a223063386335323935393061643039353237363666616363663230636563633933223b733a33323a223936323534633534313832626130373364323931346666323832636235626232223b733a33323a223333323539363238313266393332323936366237663732633266303165396531223b733a33323a226365636630346630353966646233333636393037316637346664636630303431223b733a33323a223537346339666531613938323437363265616662633338316231653330613838223b733a33323a223836326538646531653137396436376238613863343739353937343332306232223b733a33323a223862303637386135616162396265326338346632393235336333353431333231223b733a33323a223931613462656536363035636661336135383539306530656638373639633039223b733a33323a226262653331313261353361643937653565623135616435656536343439386533223b733a33323a223064376263343535623565346639363330633231306531623032346439313530223b733a33323a223066336633663634353337646666303130306461383835633064626336396639223b733a33323a226464653935313864303766336230346362623537346630636437373134343261223b733a33323a226337333635383462633833636666633463623734663462333836366636613533223b733a33323a223237356262363562333131326536356464653666396162323463356564346666223b733a33323a223333643031643132343965613233336535316338643532353930656330663031223b733a33323a226130646563623764383536326532313638376131653063396263393237643234223b733a33323a226366633435616562643766356231313532613338666130663832643566353166223b733a33323a223366363262373539363564393539363762323430363665333037643130636134223b733a33323a223633616135353431303665356434633637356463613832366634356439383632223b733a33323a226363613338346137373035383066643635646632616130356538356434316433223b733a33323a223661613939373665663930353038393133366132373664316263643535396238223b733a33323a223536346335653662353930636461313334343230613836306664383139636163223b733a33323a226133616233383166646162306332623062313331326432386532396433373864223b733a33323a226535653062396661356565376238373335323232353566336636343036636636223b733a33323a223838383761363539313032613036366230653830353933613565346361653437223b733a33323a226538643965333464633131356262663936393731393934646535643937666631223b733a33323a223638636234666131323563633735386564363239656463616631393065393064223b733a33323a223133353664646231326134363361626131663732383062343338656664333364223b733a33323a223333366432623135333034643363633436326531316439616661376364396162223b733a33323a226538616665303838613632666430613962646161373932376232323139393962223b733a33323a226466316661636131653261393137323665343765666165643763323965646364223b733a33323a223639393434663665346165386464626131646161393363346662343435613762223b733a33323a226334363631383364353530366166333966343662383762643834616566383361223b733a33323a226237623061643034363566363631306465346430663834306162656333376637223b733a33323a223238353438313638666338306130353365306665646231373335356361343966223b733a33323a223963643434626364613862313535373863326333333637663838393334666630223b733a33323a223039336533383232643630623639313866613930656330656335306637666531223b733a33323a226432393066333137636436643837396161336338363730623361303230616662223b733a33323a223434643462666535633430663162633732316132633131353161323533363139223b733a33323a226266336665326435356535373232333830353733653664656430383938356266223b733a33323a223736323665333965653638663333306434653933613966653138663632633233223b733a33323a226133383564383430333661373766626536653862646134356139393664393264223b733a33323a223639323639373234333361366237616162383434376363386262643563356232223b733a33323a223966313333393038396132303338633438366162653839386632363161373434223b733a33323a226136316132356430383766333332626633376235323962396531333665333831223b733a33323a223533373466643239316261643061663565366137373332316433636161333661223b733a33323a223363633666323761353831353532323037303934303865663639663639333039223b733a33323a226538316239643334376338653766303930616565656233616363313537323064223b733a33323a223533656464383032323935343564383734326432383166326534613862376161223b733a33323a226635396532646630613566616336346532633430346636643063306137393534223b733a33323a223166636362386562343161643862616164623235363836646566393132386362223b733a33323a223061346133343337666234313738373861323265356265383633363266323864223b733a33323a226532666335333866656435316562303738386537353938666132336335323433223b733a33323a223533623530343566623763356361646338626264383039666432343136633535223b733a33323a223064633438343636616534396562363832343632363366333534363762636363223b733a33323a226130663437616234646139386132386531316664666234303465343432396463223b733a33323a223338343437303130393333316332663634333630303735336231633537633932223b733a33323a226166663531653731326130316566366437613932353236343163366364613332223b733a33323a223763636436663366386236666533353430343331663137363230663133643361223b733a33323a223235646666353638353665333734383663333930653165386433643965646336223b733a33323a226532343030633236663563363765323032366561633037663166643239646466223b733a33323a223830656365303836373536313834656163303334616363643166376565636635223b733a33323a223431656463326239356561313634363265346236623566383762363831313066223b733a33323a223136323936306439303161393833366566653466656565313532326135363931223b733a33323a226163303535616561363966383235656332616235323964363264663735646262223b733a33323a223963666233313239656665373635663231333665336133373230666339613461223b733a33323a223961333933323362393539636663633238663931323563653061663336323636223b733a33323a226364616634663032343737636266306363313131316366393933323032653437223b733a33323a226164643032653434653335313736373638616435343236323731643066303563223b733a33323a226537353066303536356636303532366536636465643334396162326631353064223b733a33323a226561626166363063303535656335343231303338396337333332353237616138223b733a33323a223734356561303235353434316538616331343166633136336163613033343965223b733a33323a226464643136373239306236333135353530383435623332333039633530323635223b733a33323a226138376235663365373266613133373733333533343330356463376663343266223b733a33323a223739373865346635613062363133356336393535386364306332633639613263223b733a33323a223365666134366665373937323632643061373238643762653930346333376331223b733a33323a226664633739393038343332303036346530643661333264323964353035623230223b733a33323a226335346239323166306437333131303263623136353239313338626631373739223b733a33323a226561666331666333363362623964356334663864356565353666613233663037223b733a33323a223863623437333033316363313236396365313539323531303233373732653435223b733a33323a223064306163623736656262313634653563363930623135666562316137323663223b733a33323a226662333633346638363830623239306339323265303233633939626661323630223b733a33323a223738633835336630656164626635323461313233636531303633626238623331223b733a33323a223766646664336233333539393539643532376232373165396432333630343538223b733a33323a223730383035653464376362393737653163306362653666393332303832363439223b733a33323a223732343833663062393863633431313562633761353539636331643835316366223b733a33323a223338663335636661306538653137643132366539633065353466326335373739223b733a33323a223562393432356538653132333966626561343630303661643535306433326239223b733a33323a226436356131323331333861306366643931306564643937393465633364363938223b733a33323a223430623535663630383963356335613538396335383434313839613339643265223b733a33323a226431633036323263393130653465363364396339386232343832326234373836223b733a33323a226330303333306237633930633536616630333139383131393237646561653262223b733a33323a226238316538343536376263306238663235353933363039656538343266663032223b733a33323a226566346538343261633430646336383361396539626663643864353466626465223b733a33323a223638373465623437656566616137363362393734323636303736373264393338223b733a33323a226362373663316237646261373661663932393135623561346430636466386166223b733a33323a223161376332326665646334643430613561373437363135653665336438396365223b733a33323a223032346563616264623934666163306436633965333236386532393331623235223b733a33323a223963383233356364616362613438616164623630613665633637336361326535223b733a33323a223066653231643964383032633761373831653132363332653663316566323230223b733a33323a226661306366333039343336323330356366353539386239663434636139343333223b733a33323a226434643236386466303936336430303531336162313930396332366635383939223b733a33323a226566613830323837323661303931656161376538333734353436633637313365223b733a33323a223230633837626331326466646436333731343230343662306365633737656433223b733a33323a226562623838343531613666623233653565363938323531366635316534313833223b733a33323a223939633963613165366462656665656564396433643738666362643966656564223b733a33323a226537626431613466343934646136306466336537393231323132626635366236223b733a33323a226436363930346165666463383464326135326433303738653661306363666532223b733a33323a223034396363393161356235393266343764653063333335616566303934623666223b733a33323a226432356235663664336330313565636464386133356432363363393366333335223b733a33323a223434626136636661393864613464303436356337653335346435346135396231223b733a33323a223738326331333163346161656131353661383131323635326534326563393066223b733a33323a223031653537373566653566663064616231613134666263626337373137623564223b733a33323a226538666338363330323537663163346138636561356365353335333665313964223b733a33323a223064313461393263306661353233613832643039366435626333336266346634223b733a33323a226266313062303038613939356165636230373731313938346366333334633365223b733a33323a223961306162636635323933346264646131383833393464633564333961666635223b733a33323a223437623939363562613136306437383032363834363230336436326466313265223b733a33323a223438656362353564663366393634366536326566636636633638306566383931223b733a33323a226232386632393330616139393639366537386332643037353864626465643863223b733a33323a223837626338616663396364366237336533333763306537616332646162633063223b733a33323a226138653465643734333532346363356330646262306435366566356437343463223b733a33323a226238323435383239373932383633336563666233343639613837653035336662223b733a33323a223765326139306233373738656636336631306361666531333137623037386364223b733a33323a226436303061303261383963303964623432633535373234633531373365636266223b733a33323a223066323139366164643330303330393335303135363363643939346434316135223b733a33323a223235616363306132616430636530646534336264613136366339613236396436223b733a33323a223966323133323939313665366532663531623164343166343337316132383932223b733a33323a223936393637333334623038653463303139653166316636396231646436623162223b733a33323a223033643531353662343765326630373166376662643966373132393136326238223b733a33323a223365626133316565316433333839313066613233356332626339666666393765223b733a33323a223062376432663663656361386261643962666337383363653636663031323435223b733a33323a223234306635656635376664343665376431636566643230313064666331613465223b733a33323a223063316138383034633064613666396265376131323332663334663438356136223b733a33323a223135613835623130653563653564316564326633376436373663333930613162223b733a33323a223433386662616264393566613331663065656236373639363065303534643631223b733a33323a223136643563356230373066353034323637663939666263363861343437613330223b733a33323a223230323337366230626564373530626337656630303363346435363263666338223b733a33323a226436303430636434303231663737616635313639323832623238363232646234223b733a33323a223165336332653961316430306438643862363635356131366264366135303434223b733a33323a223664613263636362396362613536643064623538353061336265323935663337223b733a33323a223464323564333864386563613461323364396335653834313134323366376637223b733a33323a223436356339626137623939376665626234356333306231633031323832326631223b733a33323a223162323636663035396534373139343562623163643035343735313738316165223b733a33323a226665393339333361656134613036393136623666653361376133623536613335223b733a33323a226533383839313430323733386432613330633261663636303736343964356134223b733a33323a223630393739313531396231363735333463356433396662383765333536343862223b733a33323a226462396164313364633230366163653636343032623565326261386631373832223b733a33323a226261336461393338616139373662306135643863316661306261326436303965223b733a33323a226237636263393238303534663930353034653133316232303730353966323464223b733a33323a223866343461636232626134656563626436346537396236376464366666303434223b733a33323a223764633131333661613530383065393164373232666164363166353230343138223b733a33323a223764333332336664363636616164396331366262633465313435393666343562223b733a33323a223239646338326535616439376363656630373763376266356437626536303464223b733a33323a226163326362316562663639333465366537313133613837396330316261633066223b733a33323a223735666531386335323038613233303362343134323862326638626638316138223b733a33323a226533336262313632303061666632333263623062306664353630333763626331223b733a33323a223335613738623532643066343031616133653532303065633937663838623731223b733a33323a223062366435323061363862353732336130336639366461303662396335336535223b733a33323a226538346138373463626334323665346535343933623231626164303162373532223b733a33323a223434323939663862626164316636363961663634396365333861373831653561223b733a33323a223066316135616166643639623262343133613662393535653664306633633636223b733a33323a223539393736386132633332626262666535316365623632666539393132343438223b733a33323a223861363265646262346461373665353036396130636532353831623333613039223b733a33323a223164316630303738373339383737333034656164306132393061333239613330223b733a33323a226630333834313935363034393964626634363334343732376430386465393461223b733a33323a223332393837646337373631316435613762346139623338353231383661623762223b733a33323a226263373262386432386561343330353863643134646436383132326231316435223b733a33323a223766346630643032663933323830363764626430623932346334616261333161223b733a33323a226432646331386131373538616262336232323738393566353230653139623136223b733a33323a223065626237626639306235386138343363373733653963373463613761336135223b733a33323a226366363362613662363232613534333633653636316266633838383463333366223b733a33323a223931623563393431623635303932313634613663363063373661666631386437223b733a33323a226330343661656139613933363831363937353131386135653736613364643863223b733a33323a223939373735353032366135313933303465396261666166363632353230306631223b733a33323a223838386234373566666563666635613436636462656637616465333039303966223b733a33323a226531373966643531383938363131313933336666336664636430376130646564223b733a33323a223637343666386137653833663962646437333836663338343432623933636635223b733a33323a223635376462313661616135303230373465336461633630303265366463393936223b733a33323a226466306265623136663137633431353531333766353736363931343165666533223b733a33323a226664646434396362363265643364373032616336643831393735346663656461223b733a33323a226236663061323864343761663839623561303734323033636438623836313834223b733a33323a226630323539386435326265356631323639353338653333636264333030666231223b733a33323a226335386130303864393465626662326166623436623732646637386134343739223b733a33323a226232663636303639646130303231623132653837343262323561323530633437223b733a33323a223736336538633236396632643930613534616666646466626437303936336662223b733a33323a223638613530333831313065623436663835386632366237343033356465643336223b733a33323a223966363035636437613463313832366565363539376338356539353133333130223b733a33323a223036393062356535633432393935346630653663353961653734613464613939223b733a33323a226232343662353230336463613738323165313263373239353366653865363539223b733a33323a226434356264383563333534663932333138643431636665306639303838663637223b733a33323a226533356338636434316338636634343866303963363931356263613330383030223b733a33323a223434636536353137643061623639396430356166323938333236373535373963223b733a33323a226134323533623839363464303363353533326637643039646333666330613865223b733a33323a223464653831396535313934366631323237383231393766653539333064343362223b733a33323a226662333437376634386361613562326533656566333339333031613863626164223b733a33323a223366346638626164386462336637376533663530316134616135303562386233223b733a33323a223236336162346536313933303365353665653230643866393538326663383364223b733a33323a223761373262646161343165306162633937613232656237633637393335383265223b733a33323a223663343465393331626265613233333862396263623762323733326637316237223b733a33323a223534653864326331653966626466363566636363643432386563343237623764223b733a33323a223331356431643934626134643031303563636462653334323038333336333965223b733a33323a223834636233303839623336396165363633633066653039633933303563646330223b733a33323a226439333139643933356332656261626635376161383936383132323364623363223b733a33323a223763313235343437343238663338333137336132393538623234343037623032223b733a33323a223235396230383166323332346236366331343336396130623963356238343638223b733a33323a226664363262363731363135326637316134653461393333353162333937306532223b733a33323a226439333633393664616433373165663765316539336531656339633336356237223b733a33323a226231646363393737333737336239326134623335363439336236613135653433223b733a33323a226665646435373032326330646432303364393364636563363738306332396131223b733a33323a223662366563376464666663383564646563353132653364346265363834633131223b733a33323a223833386232616233336137303732376630326132316264616431326631653838223b733a33323a223934613563663466623662336562346166623031383430653135373133626437223b733a33323a223234366661363036623939623732383230393231333366366437393665623831223b733a33323a223936303237323663613661356631633066616637383237396463313736623962223b733a33323a223937363530633761376234623366393661613736303935343862316463313434223b733a33323a223231316137376466386564616136336135303364623264616366646232386534223b733a33323a223163303333613564353330303762373636666163346165643935626634356265223b733a33323a226464643737376133663633366636653366376139336636643135383264313433223b733a33323a223266666130386165393931356261646263636330333734336662643332363233223b733a33323a223664323537386164633564346333303764666663656439326233636438363238223b733a33323a223964633037643861663634363231343038663436616431323761666532613361223b733a33323a223636616463393362373938643436353137643531666665353463613138623063223b733a33323a226532373638616137386666346466336165636163616637393532363032386530223b733a33323a223332623837633666383234623566383035653363303034633961323231333637223b733a33323a223361313330613266396166623863626234623362623738613264353064316466223b733a33323a223730326662646464393336623335343737326136303765643735633264343730223b733a33323a223339613830366366613866623936326463393765356462343237646561333436223b733a33323a226563633865653262343936323565353866626536663334313239343762316337223b733a33323a226138383531663865316538656162663339326232386132666263326662343062223b733a33323a223438643664633464303062623939383431613761333536303137343963333331223b733a33323a226134376463303362633431613932363166373636666332336338306165633839223b733a33323a226538303736623437393263653038666533653164373536363035613464366261223b733a33323a223030633065383361313430346339383239666230333763363332353238343666223b733a33323a226438386336396536383039333735346136633831333265666635313637646466223b733a33323a226265363234306164333638366231623239393066396134376238393133383334223b733a33323a226232373163396132626138353933643834393036333739616535346632363665223b733a33323a223366636531383036363634623865393766633932343839376263623635663935223b733a33323a226438306130363636393664613136323865613863356266623061346462393263223b733a33323a223835383133303838373862333164356337646663316664356262313439666262223b733a33323a226535666533316330373835656565373536333030643632373164383836346363223b733a33323a226534633934303636313131613836666637653339303862313965303536653661223b733a33323a223262646633626662653564306531353232346665643364643033303239623562223b733a33323a223964656462323336343932363337636536356234353962633438653231383164223b733a33323a226465353237336634356135633930613433393339653462306234323135323230223b733a33323a223161613239393130353561373436326636383464366538623163666536323062223b733a33323a226665306663336664326636363134313333303135636563633363373236383562223b733a33323a223736346634653531333461633464396339313062616639646165636661656338223b733a33323a223833303466373335386236393839346231666331333032336162343637346535223b733a33323a223962613332333930373463623831616266363562643934646261623935663435223b733a33323a223061316231633361386166633932646134616664643837386135356437653235223b733a33323a223466323737643633303133313232383162303631343166316533356262623531223b733a33323a223462353865653931393563633137613739373838626632656564306432336537223b733a33323a226531656336346131626539653662333961323166643861633135613261373765223b733a33323a226535646139383633313935396264316238346231613033316332646134666639223b733a33323a223639333337366264626534343533373062343765666130663065356533356164223b733a33323a223361303631653735366433656434646237316639396433336230343230343964223b733a33323a226134633833303265313631383334643365356236323863303831313662623735223b733a33323a223166613864396534343661336234396666613861643334663137336533633365223b733a33323a223662373462626636383037366435373437663163636435646534373932313862223b733a33323a226233306663313039643435353562643838653565333333366337636136396264223b733a33323a226462343163356364326463646162663963666136623864343566376463326633223b733a33323a223934396634383337363139366530323139643331383239373836613732623266223b733a33323a223838323832323163386566613931343835333732636166663866373238303362223b733a33323a223666653936346365363563386335323935396239326134353334613530663966223b733a33323a226138363238353233316364343136653265623330653533633562316632333762223b733a33323a223863383635376132386531306165613431363332333131636439616534666634223b733a33323a226665326439646262383633316564613436323239343166643662633134336432223b733a33323a223566323664626263643839363430336261343236333637303661396434386465223b733a33323a223066353435363166356466643936646537616430393131333133323563626538223b733a33323a223235653465393635313335623237633633666464343764663435623739663635223b733a33323a223465636632366261363061316563643662663233363838366239623136373835223b733a33323a223837363032323736323563653664343734313436643361653963353066306338223b733a33323a226163333636646534356439333861363730343730643031383163316362333661223b733a33323a223564333464333335653066316662313637383832626563323861663538383164223b733a33323a226130623166646139363761393962383264626639373064353630336361626536223b733a33323a223930636464333238633530393862616164633430636661313064366633346465223b733a33323a223836386139613533313330643931383462646363316463656465616464303161223b733a33323a223834623764373434303535383561666263373933616336393535643030646265223b733a33323a223961643964393261363961356338373463383536346434633064316132643939223b733a33323a223461386561613831383464376134353634376230383238393039373232356662223b733a33323a226137653031636164656235313939613136643039333334646166333138376239223b733a33323a223163396436613638646330333135646131386464356562316633623834663230223b733a33323a223232346538633032633265373062653031386638326466373035653837353834223b733a33323a226237316337336333313563313238396264393862316664306662396665663830223b733a33323a226538313033323536353035356638663431373066356136636432363432383537223b733a33323a223636643461306233656535666364646163366633326134653431326437333437223b733a33323a226337613637376364613666393132333837623663346630343432653437653432223b733a33323a226436306430386665663739613662373533636539366262623830633264353161223b733a33323a226365313234376339323436366130386437643131303634623662343130306236223b733a33323a226333326464646234353463386465663936323234393165663330666635646432223b733a33323a226563343533376162653931383532336263613935623464353838623766346637223b733a33323a223737396532333861613930613964396538336331336139346166633534643732223b733a33323a226334643938343166316463346535316232333262393139353037643138346535223b733a33323a223830343365366166653830613564326165616461653661323431336632653336223b733a33323a226434373736653562336233363561396530623037616336396164326165313264223b733a33323a223738383638313831646537363433623166643262626237653933323461333262223b733a33323a223862646134633635326332343264666633336362376536326235616238636363223b733a33323a223931306366646261666338316434383037313730326563363361326236383139223b733a33323a226366303135323963336366366265386435363532663634383764363934653731223b733a33323a226630343865646537393439323931393337353831383436656663316462653432223b733a33323a226662633133386637646334646165346332356236643735313830646438363037223b733a33323a223738383334303339643133623537626433333465663632643266663561323932223b733a33323a226135313835393964663739646438653437363964363939336237303035663861223b733a33323a226139356231613764653366346261383261623239316662326134343235373733223b733a33323a226165346630333831356561396230376561613266303132316362393666646333223b733a33323a223133316465643265383061333166363866313936346166386630343232313435223b733a33323a226337633939386233626265313762646332386233633334666164656439313930223b733a33323a226239626532373639333334346366616535336566353831653936623934393665223b733a33323a226363363334313464643765633637393933353835636430663539663638653133223b733a33323a226665653936666639313839373664623732356362613831373137323132353433223b733a33323a223163653739626539626633663732313231613934646161653532386139343738223b733a33323a226661613436623338356362636138636630636564666561333535323838613330223b733a33323a223565653964343930306530366431643437356632323637383937383332643935223b733a33323a223236646262306231326539636530303732646237613434666134396132393361223b733a33323a223965383739353463323836353064643034333332643234646563663133623534223b733a33323a226337356361346166326137623031306462653963333461316362396165383965223b733a33323a226162633265366236653635623732653562393166336266666662353461306266223b733a33323a223830343532613864323035326662373138373137386461383139386262363462223b733a33323a226533363165353832313538333164333831656338393962306462386633656364223b733a33323a223663326233653564343433393964663237623232633464313432373464383564223b733a33323a223236636265353333623333333533666436626361663338383265333965626132223b733a33323a226464383338336662353266666134393261396139333565316665313731326139223b733a33323a226362396236393334316636616664653666326537643034643037373030383462223b733a33323a226439393536393834333431343765393333313864353136613361343139626132223b733a33323a223137653639636565366166396433623832346131306637376439323462666338223b733a33323a226332376635636137626633643930376339313065326164353934666564343861223b733a33323a226264643531303834376239653834313963323633646361323134353861313433223b733a33323a223539356365313636313433313333336363613239663631623134306231356236223b733a33323a226663363166326136356436323338396634343933353766336430356338356335223b733a33323a223938616261383738633031376266663032663963373661636433636162353737223b733a33323a226564626532303764653137346636643539643263353731376335363133356231223b733a33323a223233383238356266343966646536646635666563303163393061326561313163223b733a33323a223434353439393461333362303439326161623339656465393362313564393961223b733a33323a223665313435663563373366643630366539373834663933663562633430393035223b733a33323a226134623863343761333935613132656238623137613266353433306136653936223b733a33323a226437616632373537643532636361646331326664653533623336643130363638223b733a33323a226537316437663030396265323331643033356464353533323763393038666632223b733a33323a223463656266386462663765663338346164666461386233623062333939656363223b733a33323a223835363462643863633535653065313931373837386330303737636164326437223b733a33323a223139363131643765303937666666666532316533623831353238666466313938223b733a33323a223131376537613065616631663262656335306466653161326134656434333664223b733a33323a223466643564663830626138386333333735636230616366323534313930353333223b733a33323a226633396533383632656535663734653633643066353934613432393538313937223b733a33323a226439396435363939363731333964613630643861346330373961663131393565223b733a33323a226231313966363830396636323438333531356633623337356564656638313866223b733a33323a223738376131616261313333616464343034303965616363386364303165306266223b733a33323a226563616637336232616235393462646566656266376236653766613362376337223b733a33323a223331643938313639643834353232373632613862333436333732643135613761223b733a33323a223238633538643464623632663863646562646564353139653635386537323331223b733a33323a223133613865386439646234353735633336613530383663383162306263386234223b733a33323a223036396232393761633537363661316232656135643663383539376335386264223b733a33323a226563616537356361316466386137663930633739613235366138663733653339223b733a33323a223235343430303735656164623839363665626562336337306433616137616663223b733a33323a226565646130366166373734616337326562313365386139353833316164623361223b733a33323a226462326131386536653464343164663235326635643738326365353533653333223b733a33323a226332333865356233623965376165333065646462623361373937623965363239223b733a33323a226335363635356235633165336636393665653735663932393262343333383735223b733a33323a226265336564383166633733666666396466393266363665376364373834326431223b733a33323a223063656563313533663538613765373961623331633461643564636464386536223b733a33323a223662313836636261316535343030313430323932383931646534343665663365223b733a33323a223266393662366362613831353833616462366130386164633539643937313765223b733a33323a223031303737616562666564323462366234626231326532346638353365643336223b733a33323a226666626636663162303636653339303338363761633235663639336435343630223b733a33323a226264363437363030363637613532383231303639363537613566656365623361223b733a33323a226261613639316266616162376562353065343734623132326334353061663835223b733a33323a226161656665383462313038663232356133323263666265356666303165396362223b733a33323a223438623066633165666339343638633265383362343166373332343164663561223b733a33323a223831653938653038616535613638623766623035376365383139316566646133223b733a33323a223239313766383930396632646264393934303635633537343835656232306438223b733a33323a223863656337343166313333636634303166373433623838393436363165316665223b733a33323a226464376138316138343136323135323466366463613432386534366564616435223b733a33323a226265356534363830336666643534646263356137653435346434653763623366223b733a33323a223165396538333738306132366161646262323365346637663565633636346434223b733a33323a226363343463643838333162373435623430383065633765633034366638616665223b733a33323a223937656335333865383834366562336234333239333439626331613961366361223b733a33323a223161386666326334383036373332373337633762396165653734336237323331223b733a33323a226235303363383037303965653566373437633066323266396539303636366562223b733a33323a226139626139353135636538633266353731653861663533313536666632333930223b733a33323a226331343833646166383638336339366337636230316165646465383134656132223b733a33323a223964643238396266386339306435376263353331303930343939323463663333223b733a33323a223133633930646131323834663363306566386266613963363339656363666631223b733a33323a223735656566636261613639346130626530373261663663393062363364323033223b733a33323a223132353463643136636561663339616339393966373137393939393535363730223b733a33323a226335313639303630373062653534623866313063396363336235323535313534223b733a33323a223138393238346630396361363039616335343865633463356435333263393664223b733a33323a223930353335303838633762313232613066333138333566643766643261373261223b733a33323a226465316235396636316239626537383334336239303661386139363239633131223b733a33323a226134313134313831396235353438303163363535333238326639356165626164223b733a33323a223463323562646365353137346538363666336538363233383831383535383162223b733a33323a226266336262613135616565343432613966376462646635373366633865323034223b733a33323a226530373430626361383736643561383165633637343036303362323033656238223b733a33323a223431643833653030333637313432396666333833316235633237336564363263223b733a33323a226133353234316637383461636666326134373939333230363134346137393538223b733a33323a223064666661633330333166636363626136633536333462343736643262386631223b733a33323a223037323934666362313931393266376231396336373632663136663436383964223b733a33323a226136666638313935383565356134663763623131376162366433653530613764223b733a33323a223336363065616131633531636537613736356464653530626435303738323364223b733a33323a223037336531666438323936653464663031653934353463303833336333313864223b733a33323a223163653739613838346633343262393432643233613233646463316239363662223b733a33323a226562386532656139393462323033323034306130626464383435626262303837223b733a33323a223464383432343765646165623063636533616431333164323461626166613761223b733a33323a226131616430633237666334656633373532396239363432356333356335353735223b733a33323a223432303735373938656339383435373461393564663937373337386164663038223b733a33323a223139663339633763303036616238373237346564316132643537373765326539223b733a33323a226335383734623165393164613263386463643138663763623864643564643030223b733a33323a226136333232653136313932376162653131666435336163363665633165363364223b733a33323a226166336331646231333362623761303435636466346563656634323033373733223b733a33323a226637376138633031333533376337316639643831383739336233386332626535223b733a33323a226364636432333664346336313933616233333437666336633762633161333931223b733a33323a226532303634663866646564336330373632393465336237623266636633353430223b733a33323a223033666264356234353937653333316135633662623062363633656331363763223b733a33323a223832383632633765333062363537356336383833316262376539373464616437223b733a33323a223031653764626139396163346464353332616231383861303038373564613266223b733a33323a223934626134353036663666633333323736643037336665323266623632633464223b733a33323a223237363530336533363661636162373866396638623862373563333965343465223b733a33323a226135373037356138303135373761396432313233333461336232663437646561223b733a33323a223864613265366464653836316232636238336364653961303466363231313235223b733a33323a223665393935333634666663643037633162363932626430363666383462376661223b733a33323a226265386332643462393131646136343038313231333433643061333134656661223b733a33323a223038316130316430613339366137393731353030376437613132333334373433223b733a33323a226266393731323635303133653466346465653061323563613163373236323630223b733a33323a226335666637313933396232303936613436646565623338636136326666633663223b733a33323a226364343738343030376434616462666639346332646233393464386161386133223b733a33323a223538396361633865303730613762313739623839313236303262656566306561223b733a33323a223432396666303366363131613339326637656437356564633234653130356536223b733a33323a223536303238373132333738333862373964386364373361653137333261393863223b733a33323a223034666138656335396463363538343265306464626664326164653238386439223b733a33323a226632336331653661613564356466396262373562313962386463373339643637223b733a33323a223862383236613162366232393536373266633435643936306364343631633735223b733a33323a223730303462373730343963373161643861386430656263323337666230363937223b733a33323a223133636438363734343234373832633034303537633639306231393038333132223b733a33323a223933616365376362323033393139383764653063333636636230346466396362223b733a33323a223164326336376265633566356261373063363834643235303738306635663338223b733a33323a223331336663386561333961376333613339386530663162643566353364656630223b733a33323a226266323934343236383737346134653262646331363233616638363562303134223b733a33323a226266326235306333303237353465663730306232616236636433386233663935223b733a33323a223338393233663334346239333963613462363230393538646133333830313637223b733a33323a223032373163666563323061646365613739626637303961306133396662666537223b733a33323a223134323136386539333061623233316431326664326431366464356237353363223b733a33323a223736643039646232653935333961336464623438663537383236306662346665223b733a33323a223737326136663265353363626236626362393634353230386235353036343834223b733a33323a223630306537666130363834393833386539343938376436646564326633653638223b733a33323a226131333063663031613836343863383831636563373538633536376232616465223b733a33323a226131633963346433303061663763306530353232616637343863633733616535223b733a33323a226364383635346663386631373866323738346465313763353134383061356134223b733a33323a223337363132316363346465386437386535383261386130353033656134386631223b733a33323a226332373134636539313031376434636565343065613637373834666133633139223b733a33323a226132616261616435306532623336396362373433343435326564326232313534223b733a33323a223835323936623036353465383730633462383632366366316639393065373862223b733a33323a223432633162363565383435613265323837346239313234636537383239366536223b733a33323a223839346162386137663564373232373762373466656634666264663637653033223b733a33323a223461346636346664353764643866653036393865396136363031303465336530223b733a33323a226330636461353361646265363961313764356663333866373038353835636661223b733a33323a223933376162653730373935326166626532376261346362393437663062613932223b733a33323a223839623438373463376639626563383964636261646231663732363566343930223b733a33323a223662373836383861383734396334353761366435306365326530666336623466223b733a33323a223134353064633930626361623735353131336563386530306163373531373838223b733a33323a223061313037366137363934333137613939393862356165303339643230336166223b733a33323a223461333039333134623334313663653234316161383634393831333262383438223b733a33323a223037326138663961383931363365363635366630326264386566653566623538223b733a33323a223666356437373463653837623336366462666233663863663034363266656132223b733a33323a223039326237393133663166646335313138326265633136366236626334366235223b733a33323a223737303463303636303233313166386238316161386139386431343738643461223b733a33323a226565363863323261623832303737636632396236616234373634633339343033223b733a33323a226338653464326434623431306434636537663363613562633662316531613039223b733a33323a223365633561336634343164623135396537663339323034303362373065363235223b733a33323a223137333133643838353937353732643835383230386665333063353366343361223b733a33323a226363646161316638613033636137383932323465313162303931313866636135223b733a33323a223164653234303839646331343533666264623637353937366563343437626666223b733a33323a223963306362326161333064626239333062643234376465363564366430313836223b733a33323a223236376134363437663137393939626630333238353035313432323836313237223b733a33323a223335393838336265383033616663383232366262376639366261626539353137223b733a33323a223561643830323734383038396164363165616130383061396532663633643635223b733a33323a226463363238313432373935306664616531653363386330616332646630323465223b733a33323a226237323063613333323133336264376330393465363430626537626566653462223b733a33323a223136333931303238643739353862393837626339643537313236643939613163223b733a33323a226439663437653831383335386335623233643434393039653961356236626231223b733a33323a223938323233303634396539363232353439323236646362633330656439663737223b733a33323a223138303538633237653433613638613334383538613939643637316438333464223b733a33323a223465623137386262623061353335333532343130636566386565366335313163223b733a33323a223466373039663266613435346431653639616565343937613936376265343664223b733a33323a223365653464656637316332386562663134373435663065353630633638666133223b733a33323a223966633164333330613433376464343233636435653631303635313532633534223b733a33323a226138653139623637356236356463653065383562366665613866386463333362223b733a33323a223431333338343134626333616563363165633432663165666161633730616664223b733a33323a223439333735666237376666643433643866313930373466656438653030653561223b733a33323a223230643536376233626532303065613235383535346464323534616531373432223b733a33323a223339343136633833336564626633626630363364333565323438313337623636223b733a33323a223261383932643132656263373734353235363639383461316133366363663862223b733a33323a226538396361366632323632316362656639353032656563623635323934363236223b733a33323a223036626139303663616162373132323065313436313435336232376536636462223b733a33323a226165656665633034396539393963623531343633653730376336653362386265223b733a33323a226434346262303430623230623334623865303532656361386631376436373738223b733a33323a223663653436323266313031633761336662393831643162626530313731313231223b733a33323a226434383532383734323633343337393562653131323137363236333139383832223b733a33323a226337643532363834323937383462643161636165323163323066316432626562223b733a33323a223164316437386333333938613363666239663639653837376462323837363965223b733a33323a223337303234306639346564353130613061613734366566643635663937666537223b733a33323a223336636436393233663837653366353232383464316133633536646232666365223b733a33323a223362616566306563363063663930313565656135333138306437663363623961223b733a33323a223635316438663134636465623561656630313763363930306439343936666131223b733a33323a223966356430643239626137383533386233383161666336393361636161353466223b733a33323a223366353133303561613962303666663163613965643861646634336234616636223b733a33323a223633616536336366326331313831396161326631323130306637396364636164223b733a33323a226439333733646534313839336165653632346233313033633563633432633939223b733a33323a226465323231366561626235316534613831326261643533346234623232656666223b733a33323a226337613134343739616461343730383761343337316332376563636539323531223b733a33323a223066396261653062396630333466616562316262356239373064326461616261223b733a33323a223064353635396266313365386565326463323837633333613035343638326636223b733a33323a223138336635636230663137393765623264303865663532326136623265343331223b733a33323a223030613431393036353633346536303464663932623838623032616431656539223b733a33323a223164663166383537323662333837343064623063326333346263333835653966223b733a33323a226238346564393837663231663839303362643232336466613830306135633739223b733a33323a226166616431663665346539643165613833393562313738616331376565356630223b733a33323a223266623738313964323736383331343038616165303930366439396438326566223b733a33323a223432393636653238393239393439656164643161303666643631383737313031223b733a33323a223838336334366364616265346561323762323537303933623831653735363631223b733a33323a226632663730623761313936303635336139643630396136643632393263343934223b733a33323a223739326138643632303339643635616630376566613465656535323666613366223b733a33323a226231366635636538356439323065393937303561666161333030373564333962223b733a33323a223837346365656637656337623136386131373433366436313263343665656364223b733a33323a226230306434636561636231626235623565353339656436333739343566313430223b733a33323a223162366561346537343064343736303233376135373732343665653131666333223b733a33323a226634373938326466613738396361323561353031613265393331323565633838223b7d733a343a2268617368223b733a36353a2266343739383264666137383963613235613530316132653933313235656338382d3162366561346537343064343736303233376135373732343665653131666333223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223532363963383764363166313330653134653436333136623463653062616263223b733a33323a226662326431633263323539363130613361623930353837393130633466366639223b7d733a343a2268617368223b733a36353a2266623264316332633235393631306133616239303538373931306334663666392d3532363963383764363166313330653134653436333136623463653062616263223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313131323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31303a7b733a33323a226661323433633666346233303437323031306664663931653166613938646664223b733a33323a226637623563343135636163656132323738376564376363306435623037323139223b733a33323a223337353437306361613563623533373036656164383163636465343962376438223b733a33323a223065616331666362653966393861346331373166366437346433306536646639223b733a33323a223435323238646136353362366663346662396433353865386266343333353064223b733a33323a223530373461323732663733306261336632663931636131613234376331363363223b733a33323a223464626462313231333064383436663864323531343361633862393061366261223b733a33323a223531356565626333323565303461316334626535633235663561373030313763223b733a33323a226632333166656133346135663163303966353933313666613562653236616333223b733a33323a223266386131346561666539396364373262363133356532313630666431346631223b733a33323a223939633864333237353436333230303832363438363830663333396636636263223b733a33323a226364326238666439633762323561353465663862356432363632363232383062223b733a33323a223065343266356337633565376130656131303165336164633331383662363431223b733a33323a223166376437653765653333306166623532363565396137633035643966333838223b733a33323a223661366131616565633838303736373631323562366563633564643963653663223b733a33323a223165333963333064313966393961643939376165396166396433616537333830223b733a33323a223032343765303665656361653731303131376534313135663633353030386238223b733a33323a223136346137376263653366313636323633633265343230636335636539353839223b733a33323a223161326465343231353936643830396235393033313037613032303130616561223b733a33323a223831613937353133373631663135643331653261623239613330386633646264223b7d733a343a2268617368223b733a36353a2238316139373531333736316631356433316532616232396133303866336462642d3161326465343231353936643830396235393033313037613032303130616561223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226630346263356364386261393361383266326638643437396462656362353534223b733a33323a223139363436316138356232356137373337366362356230333138323730366133223b7d733a343a2268617368223b733a36353a2231393634363161383562323561373733373663623562303331383237303661332d6630346263356364386261393361383266326638643437396462656362353534223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a333433323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33393a7b733a33323a223337313531643338343866663737303932373561396135613930656331383033223b733a33323a223635376139613232663635393436643166356437646366323131653561353561223b733a33323a223363386465626463656365356565383433656336303932333364356265333136223b733a33323a226534633233333261613933376166303035303638326537633162366566663161223b733a33323a226362356435353261663262356162383962313465613535383939646465646133223b733a33323a223537653565626661633131346665653866626333613335316436636233643762223b733a33323a223736353063306665643764333635393935376533643431343334306566653330223b733a33323a223439306136653265666632663031656633663364666565626333306336376163223b733a33323a226637613534386566646634373861323737313033363532356432343538653232223b733a33323a223939323763353236623138343434656637396166656439393631616662353264223b733a33323a226466646630306133373764623664643636643062383237323464313566626230223b733a33323a223161613437306635343231633133663032653430616263363137316131336462223b733a33323a226365306663363563383532666230353834333930323462396336346536633362223b733a33323a223733373737316534323966343333366162613736306664393038373432646134223b733a33323a223238356337306233363264383939376164393432636330613236376139633961223b733a33323a226332316334313733393664623632636133313861336661393239383562383331223b733a33323a223530613262336562393234646530656336316139363564333363663966666361223b733a33323a223665353161386163353730303366306464653736626665626536653132343231223b733a33323a223661666437313735323763326439376139393132613832646565353733386635223b733a33323a223364343166316562646638333562353462366634613763303431666435326137223b733a33323a223235386330326334373238633036386235663563393566326636643465306262223b733a33323a226331353234353164333332356366383863326662643031643730343030393935223b733a33323a226261663137336639363165303063306538643739316466303138336137633436223b733a33323a223665613039666264633730353933386264316465626434616132633266636137223b733a33323a223566623639373032343531396630663563363834353865623461396661356433223b733a33323a226337313761366465663037356162663233386338343139396261376536323236223b733a33323a223231323939623165333933646438303536386535313735663730363363316330223b733a33323a223634646535353561613465396138326365356562313635316136663331663530223b733a33323a223732396135613039613132613438393766353133656634626436316163316635223b733a33323a226264643130356561336662353635316165633331323066653564393065326431223b733a33323a226634623137386436333831356531373537623262316630393066623639363036223b733a33323a226233383761303331306336323663613537303238636132666538396436366236223b733a33323a223431643433313339346264616461333239323332313937653737656264313138223b733a33323a223663326135383838326432353362363664353665343538323532396539646564223b733a33323a226264653965353962616232656234366139313061323935313439303039376366223b733a33323a223832646237396236333066663036393936643563366166663931643664323033223b733a33323a226539636538616463633231393130346134643031613663623130613232623965223b733a33323a226236616463316639663965653433363232353363383938326438373961396438223b733a33323a223831353366653637633033323562323639643231316235323034393533383031223b733a33323a226665376532333465396432636261636232616331363335376635376335636466223b733a33323a226265366334373662383533666561386131383165663631613935666630376661223b733a33323a226239326566373434346236326465326536623333303765386166643961323735223b733a33323a226336663533613131303530303661326630363934653433623964343864333234223b733a33323a223033626365373165626563383730643038373166636662356564353565666233223b733a33323a223566396161306262643333353262376233346134306630363663653264613733223b733a33323a223061616337643964613338636164653030353662323631396661356336363139223b733a33323a226564383161353032373336316531303366363632303565616530393832316232223b733a33323a226665326137316237383539383661303264353739313334373966343638363333223b733a33323a223561343333306633633038396338336161633064323334313935323637336638223b733a33323a223931633337333431393737343466393036353439326163646566323036303734223b733a33323a223630323134616139303034646366323131343163656130383136663962326639223b733a33323a223962326235306233353639316239393366633762356162366661306532343862223b733a33323a226461626366626461373966653765376232333034636366643932666366363836223b733a33323a223030383137663731343765636163373166616564353939666265343632323965223b733a33323a226337663733633931366264353839633765343061323337656631303564353934223b733a33323a226431323064656137643039346535326237386230633436313862376663613362223b733a33323a226634663235363137343538643538353766306430303361386637633366636336223b733a33323a223834303430646161653366323364393030376563353837383565383036636334223b733a33323a223066353237646538633238613332313733656231663664333136393932396337223b733a33323a223431373664663439356638636130343239326439623832613231613463623566223b733a33323a223238386639623635393631323732633232333536353538353635366364363935223b733a33323a226334326630396234363366323635333035383530656563356562646131376166223b733a33323a223731363463646363333033333230396466663330316630336138376464353537223b733a33323a223862666330393364396133666463356432656531363438613864633438396164223b733a33323a226638613063396436353638366463623236663963383566646164383333313839223b733a33323a223134643336633734323436323138633830663933323131623562643537633766223b733a33323a223138376637333762356239333065363532623661363234303036323266656430223b733a33323a223361386633306261353763653931366466393331633261636563383162396361223b733a33323a223738653030343437633237363934356365323138633363643365353138353938223b733a33323a223730396239386333613730313139656536623835383534316339616337346635223b733a33323a223561643037636665643262303637616636633731326262346431363664313562223b733a33323a226134343633653439613430316662326132666437373839343137636232663332223b733a33323a223564393130633366343835316466653532326335353539333731663038323666223b733a33323a223937623534363736643366333032656631636664316532666166373037623837223b733a33323a223532363639373066356266363765383837393162623337333539333166316365223b733a33323a223335646234373237336230306235326161393234343437353230643764303636223b733a33323a223866366430353236336332666231343534663030646161636661633037376538223b733a33323a226361323861643466306133313766616566666164323465303865356366653739223b7d733a343a2268617368223b733a36353a2263613238616434663061333137666165666661643234653038653563666537392d3866366430353236336332666231343534663030646161636661633037376538223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313833323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31393a7b733a33323a226634356539323934613861376236306663666662366532613265346530393765223b733a33323a226636663364306462393163333038633032663162663730383731383963333065223b733a33323a223966306337326164613030333538393939353438336337316333393830373163223b733a33323a226432626331656234393137633362663235346235626563643930373430613532223b733a33323a223131316262386362373361343231376234323262356466313437366335616139223b733a33323a223837333733373832366164656234346132336534663834376336343139356433223b733a33323a223736326234643930666161346265336134653464666136393736313433356364223b733a33323a223163623262656531636630303835333262656434393361323063653939376131223b733a33323a223637383463643564323030363430616634646431393736653764613239636261223b733a33323a226163636630326539643366663961653166373930353032623731383132653363223b733a33323a223836363030616465363062376463343065333063316339656132653737346663223b733a33323a223230636334643937353666303939386332373634356231633433396136326366223b733a33323a226635656535306662393962626635393162653263336166363336623265656339223b733a33323a223638376566626565366639613839656561633635313530623963333134313637223b733a33323a223864616338323135306466653736636466623363366534333330343634653036223b733a33323a226365643833386637373637303036363531666162353037336461363839386332223b733a33323a223536323836326131666337333631643636326531373764346464383662396333223b733a33323a226236333735343561363435663761376531333334623464313061663262356238223b733a33323a223834663432363363626264323336343564623532623835336366373565656433223b733a33323a223035613362326466363764373463356466353163363839323531386438303263223b733a33323a223637623364376364646234393038653366613937363164616265623362316135223b733a33323a223632663734313131663137356230313661613330663237343833633735356365223b733a33323a226263393066353432313162646634646238656362336136643763623335373830223b733a33323a223662366364653432393731623339666230643432666635663130623439303266223b733a33323a223036616465623261346530633561656236663739326432663432323931356431223b733a33323a223434613234323533646236303833343461313062626566326665346139353431223b733a33323a226337363562303666366330353931346365666537313565343662386532616461223b733a33323a223061633366633934376461653135663363313036656337326231376634343032223b733a33323a226136643137353465373032613932393232363931366231333662323536653733223b733a33323a223338623539363234383632313564333935653562336362656631346365373431223b733a33323a226530623839306637653935303965316561323533373061636135613731373035223b733a33323a223835303362663632336361326536333837386164376339326337316463326439223b733a33323a223330336532396439373961336539653238333638303266323339646436303963223b733a33323a226533323261643362623732613636346264363661363230656335613635373135223b733a33323a226566393039393331386466653030666333323531303836373731333766373561223b733a33323a223737663038366534376465323964343162306230636164646566653235623236223b733a33323a223331343139386666626334343833633734616535323165376335353433343362223b733a33323a223734613837396163363235656664363030633161333339376465633738353364223b7d733a343a2268617368223b733a36353a2237346138373961633632356566643630306331613333393764656337383533642d3331343139386666626334343833633734616535323165376335353433343362223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587586506);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('qtl0e4oe998k22ca2ts6jb1ufm', 0x5f5f5a467c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373536343331302e3030303338393b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2264307275336e6c766737656d71736b7133346432397475393175223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373534363033343b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373535313736373b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f3132372e302e302e312f6f6d656b612f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226332623465663230633639396665353632373032393432316263613538306336223b733a33323a223434323665626166343335333461383830353935383830333332616539643732223b7d733a343a2268617368223b733a36353a2234343236656261663433353334613838303539353838303333326165396437322d6332623465663230633639396665353632373032393432316263613538306336223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3935313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a226530356133666432313439343964666137386431323739333966653831636466223b733a33323a223939666466323665663339616665313039663665636637656665313134333133223b733a33323a226663663038343434353538353964316537336230353265393233663339343636223b733a33323a226163316431663139316361643933633930346339306263363934356430633339223b733a33323a226430666666623261656433396466623561383666363836633239353734313566223b733a33323a223439323731636165363066353865626235393233663239613138336162613339223b733a33323a226661643932303636393033333236356632306332623837636138383762373232223b733a33323a223662666562333939653363393430363935633833353734343639656562623465223b733a33323a226138393634346339303332323135393966343933353837663461313632633431223b733a33323a226531333061636437616434306166636130653766383339613737383337353331223b733a33323a223031356639646461346130343862306139306366326138356630303737333936223b733a33323a223135356564666631666430366536303337626437326134333863663838306631223b733a33323a223836656533626664653039376466626634336238313738613435656163373034223b733a33323a223736356561643363366635626566333330623235306439363565656361363532223b733a33323a226165303832626166323236653961346330303366303033616364373064356465223b733a33323a223631656131393138646564613035613539653134623737376630323531333061223b7d733a343a2268617368223b733a36353a2236316561313931386465646130356135396531346237373766303235313330612d6165303832626166323236653961346330303366303033616364373064356465223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587564310),
('uuq6jkurtrcdqg26i60vhh5j1q', 0x5f5f5a467c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373439383238342e3134373036393b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22756b366e696961336d67726a3770396d737675713461716b3134223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373530313837343b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226664393732386264633966666635333833663566653764353635353762373733223b733a33323a226365623565316233333333643534306237323765643165643465626562636161223b7d733a343a2268617368223b733a36353a2263656235653162333333336435343062373237656431656434656265626361612d6664393732386264633966666635333833663566653764353635353762373733223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b, 1587498284);

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
('administrator_email', '\"gourves.mael@gmail.com\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"Projet CNAM\"'),
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

--
-- Déchargement des données de la table `site`
--

INSERT INTO `site` (`id`, `homepage_id`, `owner_id`, `slug`, `theme`, `title`, `summary`, `navigation`, `item_pool`, `created`, `modified`, `is_public`) VALUES
(1, NULL, 1, 'voyage-train', 'default', 'Voyage Train', NULL, '[{\"type\":\"page\",\"data\":{\"label\":\"\",\"id\":2},\"links\":[]},{\"type\":\"page\",\"links\":[],\"data\":{\"id\":4,\"label\":null}}]', '{\"fulltext_search\":\"\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"115\"],\"resource_template_id\":[\"1\"],\"item_set_id\":[\"24\",\"25\",\"26\",\"27\"],\"o:site_item_set\":[{\"o:item_set\":{\"o:id\":\"24\"}},{\"o:item_set\":{\"o:id\":\"25\"}},{\"o:item_set\":{\"o:id\":\"26\"}},{\"o:item_set\":{\"o:id\":\"27\"}}]}', '2020-04-22 18:43:49', '2020-04-22 19:15:14', 1);

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

--
-- Déchargement des données de la table `site_item_set`
--

INSERT INTO `site_item_set` (`id`, `site_id`, `item_set_id`, `position`) VALUES
(1, 1, 24, 1),
(2, 1, 26, 3),
(3, 1, 25, 2),
(4, 1, 27, 4);

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

--
-- Déchargement des données de la table `site_page`
--

INSERT INTO `site_page` (`id`, `site_id`, `slug`, `title`, `created`, `modified`) VALUES
(1, 1, 'welcome', 'Welcome', '2020-04-22 18:43:49', '2020-04-22 18:43:49'),
(3, 1, 'voyage', 'Voyage', '2020-04-22 19:14:52', '2020-04-22 19:14:52'),
(4, 1, 'voyage1', 'Voyage', '2020-04-22 19:15:14', '2020-04-22 19:17:25');

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

--
-- Déchargement des données de la table `site_page_block`
--

INSERT INTO `site_page_block` (`id`, `page_id`, `layout`, `data`, `position`) VALUES
(1, 1, 'html', '{\"html\":\"Welcome to your new site. This is an example page.\"}', 1),
(3, 3, 'pageTitle', '[]', 1),
(4, 4, 'pageTitle', '[]', 1),
(5, 4, 'itemShowCase', '{\"thumbnail_type\":\"large\",\"show_title_option\":\"item_title\"}', 2);

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

--
-- Déchargement des données de la table `site_permission`
--

INSERT INTO `site_permission` (`id`, `site_id`, `user_id`, `role`) VALUES
(1, 1, 1, 'admin');

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
(1, 'gourves.mael@gmail.com', 'Galdro', '2020-04-21 19:44:33', '2020-04-21 19:44:33', '$2y$10$mAPjztMrfsK2j3TZ0gtLjuE5nle6BmbuyKbpq223s9EnvcC3Ti7S6', 'global_admin', 1),
(2, 'samuel.szoniecky@univ-paris8.fr', 'Szoniecky', '2020-04-22 14:31:52', '2020-04-22 14:32:32', '$2y$10$Vnc1uafo6gck31vxZuvO4uQT5mYtWulT3wBkv3wCFbXzkMEHFsH0m', 'site_admin', 1);

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
(9, 5, 1, NULL, 'literal', '', 'ID_CLI1', NULL, 1),
(10, 5, 196, NULL, 'literal', '', 'La Darre', NULL, 1),
(11, 5, 197, NULL, 'literal', '', 'Clémito', NULL, 1),
(12, 6, 1, NULL, 'literal', '', 'ID_CLI2', NULL, 1),
(13, 6, 196, NULL, 'literal', '', 'Patulacci', NULL, 1),
(14, 6, 197, NULL, 'literal', '', 'Marcel ', NULL, 1),
(15, 7, 1, NULL, 'literal', '', 'ID_CLI3', NULL, 1),
(16, 7, 196, NULL, 'literal', '', 'Robichet', NULL, 1),
(17, 7, 197, NULL, 'literal', '', 'Robert', NULL, 1),
(18, 8, 1, NULL, 'literal', '', 'ID_CLI4', NULL, 1),
(19, 8, 196, NULL, 'literal', '', 'Vidol', NULL, 1),
(20, 8, 197, NULL, 'literal', '', 'Jean-Pierre', NULL, 1),
(21, 9, 1, NULL, 'literal', '', 'ID_FID1', NULL, 1),
(22, 9, 198, NULL, 'literal', '', 'Null', NULL, 1),
(23, 10, 1, NULL, 'literal', '', 'ID_FID2', NULL, 1),
(24, 10, 198, NULL, 'literal', '', 'Premium', NULL, 1),
(25, 11, 1, NULL, 'literal', '', 'ID_FACT1', NULL, 1),
(26, 11, 199, NULL, 'literal', '', '75', NULL, 1),
(27, 11, 200, NULL, 'literal', '', '10/12/2018', NULL, 1),
(28, 12, 1, NULL, 'literal', '', 'ID_FACT2', NULL, 1),
(29, 12, 199, NULL, 'literal', '', '125', NULL, 1),
(30, 12, 200, NULL, 'literal', '', '05/05/2019', NULL, 1),
(31, 13, 1, NULL, 'literal', '', 'ID_FACT3', NULL, 1),
(32, 13, 199, NULL, 'literal', '', '95', NULL, 1),
(33, 13, 200, NULL, 'literal', '', '03/01/2019', NULL, 1),
(34, 14, 1, NULL, 'literal', '', 'ID_FACT4', NULL, 1),
(35, 14, 199, NULL, 'literal', '', '95', NULL, 1),
(36, 14, 200, NULL, 'literal', '', '25/12/2016', NULL, 1),
(52, 18, 1, NULL, 'literal', '', 'A2', NULL, 1),
(53, 19, 1, NULL, 'literal', '', 'A27', NULL, 1),
(54, 20, 1, NULL, 'literal', '', 'ID_TRAIN1', NULL, 1),
(55, 20, 206, NULL, 'literal', '', '42012', NULL, 1),
(56, 21, 1, NULL, 'literal', '', 'ID_TRAIN2', NULL, 1),
(57, 21, 206, NULL, 'literal', '', '42056', NULL, 1),
(58, 5, 207, NULL, 'literal', '', 'ID_CLI1', NULL, 1),
(59, 6, 207, NULL, 'literal', '', 'ID_CLI2', NULL, 1),
(60, 7, 207, NULL, 'literal', '', 'ID_CLI3', NULL, 1),
(61, 8, 207, NULL, 'literal', '', 'ID_CLI4', NULL, 1),
(62, 9, 208, NULL, 'literal', '', 'ID_FID1', NULL, 1),
(63, 10, 208, NULL, 'literal', '', 'ID_FID2', NULL, 1),
(64, 11, 209, NULL, 'literal', '', 'ID_FACT1', NULL, 1),
(65, 12, 209, NULL, 'literal', '', 'ID_FACT2', NULL, 1),
(66, 13, 209, NULL, 'literal', '', 'ID_FACT3', NULL, 1),
(67, 14, 209, NULL, 'literal', '', 'ID_FACT4', NULL, 1),
(71, 18, 205, NULL, 'literal', '', 'A2', NULL, 1),
(72, 19, 205, NULL, 'literal', '', 'A27', NULL, 1),
(73, 20, 212, NULL, 'literal', '', 'ID_TRAIN1', NULL, 1),
(74, 21, 212, NULL, 'literal', '', 'ID_TRAIN2', NULL, 1),
(78, 6, 208, 10, 'resource', NULL, NULL, NULL, 1),
(79, 5, 208, 9, 'resource', NULL, NULL, NULL, 1),
(80, 7, 208, 22, 'resource', NULL, NULL, NULL, 1),
(81, 8, 208, 23, 'resource', NULL, NULL, NULL, 1),
(82, 22, 1, NULL, 'literal', '', 'ID_FID3', NULL, 1),
(83, 22, 198, NULL, 'literal', '', 'NULL', NULL, 1),
(84, 23, 1, NULL, 'literal', '', 'ID_FID4', NULL, 1),
(85, 23, 198, NULL, 'literal', '', 'Premium', NULL, 1),
(86, 22, 208, NULL, 'literal', '', 'ID_FID3', NULL, 1),
(87, 23, 208, NULL, 'literal', '', 'ID_FID4', NULL, 1),
(88, 9, 207, 5, 'resource', NULL, NULL, NULL, 1),
(89, 12, 208, 10, 'resource', NULL, NULL, NULL, 1),
(90, 13, 208, 22, 'resource', NULL, NULL, NULL, 1),
(91, 9, 209, 11, 'resource', NULL, NULL, NULL, 1),
(92, 10, 207, 6, 'resource', NULL, NULL, NULL, 1),
(93, 10, 209, 12, 'resource', NULL, NULL, NULL, 1),
(94, 22, 207, 7, 'resource', NULL, NULL, NULL, 1),
(95, 22, 209, 13, 'resource', NULL, NULL, NULL, 1),
(96, 23, 207, 8, 'resource', NULL, NULL, NULL, 1),
(97, 23, 209, 14, 'resource', NULL, NULL, NULL, 1),
(98, 11, 208, 9, 'resource', NULL, NULL, NULL, 1),
(99, 14, 208, 23, 'resource', NULL, NULL, NULL, 1),
(100, 20, 205, 18, 'resource', NULL, NULL, NULL, 1),
(101, 21, 205, 19, 'resource', NULL, NULL, NULL, 1),
(102, 18, 212, 20, 'resource', NULL, NULL, NULL, 1),
(103, 19, 212, 21, 'resource', NULL, NULL, NULL, 1),
(104, 24, 1, NULL, 'literal', '', 'ID_VOY1', NULL, 1),
(105, 24, 202, NULL, 'literal', '', 'Quimper', NULL, 1),
(106, 24, 201, NULL, 'literal', '', 'Paris', NULL, 1),
(107, 24, 203, NULL, 'literal', '', '41', NULL, 1),
(108, 24, 204, NULL, 'literal', '', '1', NULL, 1),
(109, 24, 210, NULL, 'literal', '', 'ID_VOY1', NULL, 1),
(110, 24, 209, 11, 'resource', NULL, NULL, NULL, 1),
(111, 24, 205, 18, 'resource', NULL, NULL, NULL, 1),
(112, 25, 1, NULL, 'literal', '', 'ID_VOY2', NULL, 1),
(113, 25, 202, NULL, 'literal', '', 'Vannes', NULL, 1),
(114, 25, 201, NULL, 'literal', '', 'Paris', NULL, 1),
(115, 25, 203, NULL, 'literal', '', '22', NULL, 1),
(116, 25, 204, NULL, 'literal', '', '2', NULL, 1),
(117, 25, 210, NULL, 'literal', '', 'ID_VOY2', NULL, 1),
(118, 25, 209, 12, 'resource', NULL, NULL, NULL, 1),
(119, 25, 205, 19, 'resource', NULL, NULL, NULL, 1),
(120, 26, 1, NULL, 'literal', '', 'ID_VOY3', NULL, 1),
(121, 26, 202, NULL, 'literal', '', 'Lyon', NULL, 1),
(122, 26, 201, NULL, 'literal', '', 'Paris', NULL, 1),
(123, 26, 203, NULL, 'literal', '', '12', NULL, 1),
(124, 26, 204, NULL, 'literal', '', '1', NULL, 1),
(125, 26, 210, NULL, 'literal', '', 'ID_VOY3', NULL, 1),
(126, 26, 209, 13, 'resource', NULL, NULL, NULL, 1),
(127, 26, 205, 18, 'resource', NULL, NULL, NULL, 1),
(128, 27, 1, NULL, 'literal', '', 'ID_VOY4', NULL, 1),
(129, 27, 202, NULL, 'literal', '', 'Rennes', NULL, 1),
(130, 27, 201, NULL, 'literal', '', 'Paris', NULL, 1),
(131, 27, 203, NULL, 'literal', '', '09', NULL, 1),
(132, 27, 204, NULL, 'literal', '', '1', NULL, 1),
(133, 27, 210, NULL, 'literal', '', 'ID_VOY4', NULL, 1),
(134, 27, 209, 14, 'resource', NULL, NULL, NULL, 1),
(135, 27, 205, 19, 'resource', NULL, NULL, NULL, 1);

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
(6, 1, 'https://localhost/TRAIN', 'TRAIN', 'TRAIN', ''),
(8, 1, 'http://dbpedia.org/ontology/', 'dbpedia-owl', 'train', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `site_page`
--
ALTER TABLE `site_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `site_permission`
--
ALTER TABLE `site_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
