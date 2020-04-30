-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 30 avr. 2020 à 12:45
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
-- Base de données : `omekas_15042020`
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
-- Structure de la table `comporte1`
--

CREATE TABLE `comporte1` (
  `NoModule` int(11) NOT NULL,
  `NoStage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'items', 1, 1, 'professeur', 'professeur\nDRAGERRA\nHenri\n9994444333'),
(2, 'items', 1, 1, 'stagiaire', 'stagiaire\namir\nDAE\n26 04 1994\n2649493111'),
(3, 'items', 1, 1, 'session', 'session\n35975285\n0003\n01_09_2019\n30_06_2020'),
(4, 'items', 1, 1, 'stage', 'stage\n0003\ndéveloppement web '),
(5, 'items', 1, 1, 'module', 'module\nc\'est un stage d\'approfondissement \nstage\n2020003'),
(6, 'items', 1, 1, 'contrat', 'contrat\n00034566\n9994444333\n35975285\n2020003\n700\n01_01_2020\n30_04_2020'),
(7, 'items', 1, 1, 'inscription', 'inscription\n2649493111\n2020003'),
(8, 'items', 1, 1, 'Stage SFR', 'Stage SFR\n2020003\n0003');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `NoStagiaire` int(11) NOT NULL,
  `NoSession` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(8);

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
-- Structure de la table `modulee`
--

CREATE TABLE `modulee` (
  `NoModule` int(11) NOT NULL,
  `TitreModule` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
('Gef7swHUhdxG6XgdWXJc7iaq48LWmgvx', 3, '2020-04-23 09:57:03', 1);

-- --------------------------------------------------------

--
-- Structure de la table `prestation`
--

CREATE TABLE `prestation` (
  `NoPresta` int(11) NOT NULL,
  `DateDeb` datetime NOT NULL,
  `DateFin` datetime NOT NULL,
  `NbrH` int(11) NOT NULL,
  `NoModule` int(11) NOT NULL,
  `NoSession` int(11) NOT NULL,
  `NoProfesseur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE `professeur` (
  `NoProfesseur` int(11) NOT NULL,
  `NomProfesseur` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `PrenomProfesseur` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(192, 1, 12, 'No_Stagiaire', 'numero stagiaire', NULL),
(193, 1, 12, 'Nom_Stagiaire', 'nom stagiaire', NULL),
(194, 1, 12, 'Prenom_Stagiaire', 'prenom stagiaire', NULL),
(195, 1, 12, 'Date_Naiss', 'birth day', NULL),
(196, 1, 12, 'No_Stage', 'numero stage', NULL),
(197, 1, 12, 'Nom_Stage', 'nom stage', NULL),
(198, 1, 12, 'No_Session', 'numero session', NULL),
(199, 1, 12, 'Date_Deb', 'date debut', NULL),
(200, 1, 12, 'Date_Fin', 'date fin', NULL),
(201, 1, 12, 'No_Module', 'numero module', NULL),
(202, 1, 12, 'Titre_Module', 'nom module', NULL),
(203, 1, 12, 'No_Prof', 'reference professeur', NULL),
(204, 1, 12, 'Nom_Prof', 'nom professeur', NULL),
(205, 1, 12, 'Prenom_Prof', 'prenom professeur', NULL),
(206, 1, 12, 'No_Presta', 'numero presta', NULL),
(207, 1, 12, 'Nbr_H', 'nombre heure', NULL);

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
(1, 1, 94, 2, NULL, 'professeur', 1, '2020-04-23 09:36:50', '2020-04-30 10:41:55', 'Omeka\\Entity\\Item'),
(2, 1, 94, 3, NULL, 'stagiaire', 1, '2020-04-23 09:37:48', '2020-04-30 10:38:45', 'Omeka\\Entity\\Item'),
(3, 1, 24, 4, NULL, 'session', 1, '2020-04-23 09:38:02', '2020-04-30 10:41:17', 'Omeka\\Entity\\Item'),
(4, 1, 25, 5, NULL, 'stage', 1, '2020-04-23 09:38:19', '2020-04-30 10:41:52', 'Omeka\\Entity\\Item'),
(5, 1, 24, 6, NULL, 'module', 1, '2020-04-23 09:38:28', '2020-04-30 10:41:48', 'Omeka\\Entity\\Item'),
(6, 1, 39, 7, NULL, 'contrat', 1, '2020-04-23 09:38:38', '2020-04-30 10:41:45', 'Omeka\\Entity\\Item'),
(7, 1, 24, 8, NULL, 'inscription', 1, '2020-04-23 09:38:47', '2020-04-30 10:38:53', 'Omeka\\Entity\\Item'),
(8, 1, 24, 9, NULL, 'Stage SFR', 1, '2020-04-30 10:28:50', '2020-04-30 10:38:03', 'Omeka\\Entity\\Item');

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
(107, 1, 12, 'STAGIAIRE', 'STAGIAIRE', NULL),
(108, 1, 12, 'STAGE', 'STAGE', NULL),
(109, 1, 12, 'SESSION', 'SESSION', NULL),
(110, 1, 12, 'MODULE', 'MODULE', NULL),
(111, 1, 12, 'COMPORTE1', 'COMPORTE1', NULL),
(112, 1, 12, 'PROFESSEUR', 'PROFESSEUR', NULL),
(113, 1, 12, 'PRESTATION', 'PRESTATION', NULL),
(114, 1, 12, 'INSCRIPTION', 'INSCRIPTION', NULL);

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
(2, 1, 94, NULL, NULL, 'professeur'),
(3, 1, 94, NULL, NULL, 'stagiaire'),
(4, 1, 24, NULL, NULL, 'session'),
(5, 1, 25, NULL, NULL, 'stage'),
(6, 1, 24, NULL, NULL, 'module'),
(7, 1, 39, NULL, NULL, 'prestation'),
(8, 1, 24, NULL, NULL, 'inscription'),
(9, 1, 24, NULL, NULL, 'comporte1');

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
(23, 3, 1, NULL, NULL, 1, NULL, 0, 0),
(24, 3, 4, NULL, NULL, 2, NULL, 0, 0),
(25, 4, 1, NULL, NULL, 1, NULL, 0, 0),
(26, 4, 4, NULL, NULL, 2, NULL, 0, 0),
(27, 5, 1, NULL, NULL, 1, NULL, 0, 0),
(28, 5, 4, NULL, NULL, 2, NULL, 0, 0),
(29, 6, 1, NULL, NULL, 1, NULL, 0, 0),
(30, 6, 4, NULL, NULL, 2, NULL, 0, 0),
(31, 7, 1, NULL, NULL, 1, NULL, 0, 0),
(32, 7, 4, NULL, NULL, 2, NULL, 0, 0),
(33, 8, 1, NULL, NULL, 1, NULL, 0, 0),
(34, 8, 4, NULL, NULL, 2, NULL, 0, 0),
(35, 5, 196, NULL, NULL, 3, NULL, 0, 0),
(36, 5, 197, NULL, NULL, 4, NULL, 0, 0),
(37, 3, 194, NULL, NULL, 3, NULL, 0, 0),
(38, 3, 193, NULL, NULL, 4, NULL, 0, 0),
(39, 3, 195, NULL, NULL, 5, NULL, 0, 0),
(40, 3, 192, NULL, NULL, 6, NULL, 0, 0),
(41, 4, 198, NULL, NULL, 3, NULL, 0, 0),
(42, 4, 196, NULL, NULL, 4, NULL, 0, 0),
(43, 4, 199, NULL, NULL, 5, NULL, 0, 0),
(44, 4, 200, NULL, NULL, 6, NULL, 0, 0),
(45, 2, 204, NULL, NULL, 3, NULL, 0, 0),
(46, 2, 205, NULL, NULL, 4, NULL, 0, 0),
(47, 2, 203, NULL, NULL, 5, NULL, 0, 0),
(48, 6, 202, NULL, NULL, 3, NULL, 0, 0),
(49, 6, 201, NULL, NULL, 4, NULL, 0, 0),
(50, 7, 206, NULL, NULL, 3, NULL, 0, 0),
(51, 7, 203, NULL, NULL, 4, NULL, 0, 0),
(52, 7, 198, NULL, NULL, 5, NULL, 0, 0),
(53, 7, 201, NULL, NULL, 6, NULL, 0, 0),
(54, 7, 207, NULL, NULL, 7, NULL, 0, 0),
(55, 7, 199, NULL, NULL, 8, NULL, 0, 0),
(56, 7, 200, NULL, NULL, 9, NULL, 0, 0),
(57, 8, 192, NULL, NULL, 3, NULL, 0, 0),
(58, 8, 198, NULL, NULL, 4, NULL, 0, 0),
(59, 9, 1, NULL, NULL, 1, NULL, 0, 0),
(60, 9, 4, NULL, NULL, 2, NULL, 0, 0),
(61, 9, 201, NULL, NULL, 3, NULL, 0, 0),
(62, 9, 196, NULL, NULL, 4, NULL, 0, 0);

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
('1agf5um99g9rf8vok40ugjm4fa', 0x5f5f5a467c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383234303632352e3735323134373b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a223161676635756d39396739726638766f6b343075676a6d346661223b7d7d, 1588240625),
('ejunj15d15f7sd3npis0nrtflj', 0x5f5f5a467c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373633383539382e3632373737333b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2233396237766d6c69356b3862653973683165746f326731707031223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373633373434353b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373634323137373b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373633373634393b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373633393930353b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373634323139343b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373633383733333b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223232653030613234653733376134316263613562666163336561346431613439223b733a33323a223638383536613438366133653263653564373065633433386230323130336130223b7d733a343a2268617368223b733a36353a2236383835366134383661336532636535643730656334333862303231303361302d3232653030613234653733376134316263613562666163336561346431613439223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a333531323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a34303a7b733a33323a226232633938326337393531303062313762366538646562613033326231363166223b733a33323a223266633664396462306132393931353430626433626263343930326136396531223b733a33323a226365346265383039373435313230646135643161353533383534353661363263223b733a33323a226339343033386262623061666339316366383363383763623030386437613034223b733a33323a223034343765613765616434386234383535646463396664643230366631646265223b733a33323a223037386434613334373565323464643938643965666432643630653763656330223b733a33323a223438303265323131386262623138343031656237333734323462386261393839223b733a33323a226563346363643232373461326462616530623535623263383863393539383136223b733a33323a223162656133666634613732326236616664636166666163316166366532326165223b733a33323a226465633432303934313030326163343232323830633235626162666636643439223b733a33323a226166616136366263623130646466356431373433323337333536393261666165223b733a33323a226337346336333031366633356563366639313730323933346232346466666563223b733a33323a226530346161666266323965366264663331356331666261396635333265363731223b733a33323a223935643630666632326333396466613836666634623532663466623533653830223b733a33323a223039373562653164643235363136636463633866383666343533316261656166223b733a33323a226637646263353730653264393066373633633339383633636536313264613238223b733a33323a223064316661336136363636303964626331623634353163366162626533656665223b733a33323a223764393666353731626338343164653539326561323364613463346130613330223b733a33323a226332393733323931393466646134663235643438643730363136373165646132223b733a33323a226663663939313665643664303562656163356135333962373863633830656339223b733a33323a223636643432656533636137613066363333643831313130343136343531393139223b733a33323a223133336165373532636135306266333734653034323066646131626234313333223b733a33323a223063343637346262613264323835393665333266633861323335346636346361223b733a33323a226136333238386164653833643335663139356338303263376566656135376163223b733a33323a226632306232376266333265666136313132626334353865306235363566333166223b733a33323a223132643062306662346538623233363830393336646466346530623336376437223b733a33323a226230306632306635393231623565666462653262643336613434383161313637223b733a33323a223231356563313662333762383666353963643032393861376664376632333139223b733a33323a223665366535383830333031616232356635336231633839333439353238316437223b733a33323a226264663365666138613639393334643065373132383232326361363539353934223b733a33323a223838613738633565663762383132323133653532323165616431376464316165223b733a33323a226462663135636436643065653133663837386337333661616435663531616232223b733a33323a223665303330616166336434303039353939663638303231303633376130613866223b733a33323a223863353733336134343931343064663731306265626131633334393632623238223b733a33323a223238613364303962643233623937333838336161626433353132343037643565223b733a33323a223737393630646238323065353665623663646333626536623464613966336162223b733a33323a223365616661623563393561366662343766303337343566643962356233636466223b733a33323a223138343134636636666262303161323163386338373165623437663931656233223b733a33323a223930303566373265333833373135656561346662653632373562313934393865223b733a33323a223832613738333339666463626165616564383830653038323765373861613730223b733a33323a223238373864313931373633303961313666633039343362326531656232333739223b733a33323a226261346236316135356235623863646161653266633361376331313162393862223b733a33323a226563643262633334353230333032383964306136643865646531326166663033223b733a33323a226261393362333637356134373466616236633235663133643264663932393336223b733a33323a226461656363663436663337363839633939613538336163323136666435373366223b733a33323a226362326335323838613234633339353832376135613335666332323432666131223b733a33323a226537353935363331313665363238376339303361663163386137626363643534223b733a33323a226532366631393763333161353231643738346264643132616130333439643864223b733a33323a223366333533633034313365326439363435326163323036396130643137323735223b733a33323a223033393862656361636139393461336639633131646663356137653665353136223b733a33323a223164613731366164326533393566633538653765633264373430613934383464223b733a33323a226465396365356638316232393736313030626332663435363534663135633462223b733a33323a223832356536373762633665396436626633363337666463323638333634326133223b733a33323a223335643337396331373037306161396663653065636464346462303166623235223b733a33323a223163666361376132383432633962353639343931636431656463393538366433223b733a33323a223066323336613933623963666639643837633765386461363135383137386431223b733a33323a226165633065626437666661363033356637646363653532353661386662396264223b733a33323a223265363363343061636466313239336166366564663830316238636430636533223b733a33323a223733336464313535393635373435656562373833333265353638643565323436223b733a33323a223730383566636433326132613833376564653262393166333935636562353536223b733a33323a223832633736376532356466323537313664633138373335383763353764333661223b733a33323a223630333430376165393935626439373836333233373234636235313665623534223b733a33323a223230333536323234366433633462303335393131303530326332346262343630223b733a33323a226236323536386430396563646232363930626634326136666466383434333833223b733a33323a223439633262653231633737313234376531656539386231306565663562376263223b733a33323a223339306430333164343235616530356331623233393831306639383962343636223b733a33323a226530373566663233633764393839646465616236643934323164323437333535223b733a33323a223334653231303835306162373666373463646230386433623534323264363065223b733a33323a223731343131623833633664353833623965393438333435633037313934623262223b733a33323a223162366665623534326562663332663262373564346566313931376131636433223b733a33323a223563363834303730636539646234336465616234353239656566303034346633223b733a33323a223834363437363766636333303762626164363262326639313533396661313437223b733a33323a226265326365316134656538636165323336643966313232313532326633343263223b733a33323a223864343565313430353063653835306666333432646530393563333231663237223b733a33323a226632663133333166626538633035303763653866643030626162303466313363223b733a33323a223536396632366266353664646336323466653034616630303563303564346333223b733a33323a223738646562333335333161393039333131626230343731323530666533303431223b733a33323a226531323962656332656132613037346365363333366663383735353230633137223b733a33323a223633363137616330623435626363646633383035366330373733363431353936223b733a33323a223136346539626132663664373263656531323039613363316333653135666261223b7d733a343a2268617368223b733a36353a2231363465396261326636643732636565313230396133633163336531356662612d3633363137616330623435626363646633383035366330373733363431353936223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3837313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a223434373030656364653336316436636136333234363964646433316161346465223b733a33323a223839633332313864343266346363386631616163303165626366326164363861223b733a33323a226639623636393062633065343439333965373930366634636564323032326134223b733a33323a226464653136643765396361306565636237646162383161303663333131326436223b733a33323a226531353634383934336162353833313963303066333230643135376234326237223b733a33323a223736363064633961376631623233613630663437393964613238303433636365223b733a33323a223931626639336138643931343562626363353364653966653831623562353661223b733a33323a226530346532323235663631623833663862666538626530623530616337353434223b733a33323a223830303864656134373365636463303064323837643331363334383161333239223b733a33323a226131643761663534623635373335666331313930323738363334313939343161223b733a33323a223731656164636465363334643934323836653634376131643663666235363765223b733a33323a223035366436373763366361356166383635376532313630383865666361393563223b733a33323a223563663038316231353431303931396530353935376532633862316366303964223b733a33323a223139343838343234663638333035633464616162363339376136333038353663223b7d733a343a2268617368223b733a36353a2231393438383432346636383330356334646161623633393761363330383536632d3563663038316231353431303931396530353935376532633862316366303964223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313237323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31323a7b733a33323a226363336465636135643036663039336134373130323834633433356234393136223b733a33323a223336353963323031303138343165613130623931346533326337323730643862223b733a33323a223634613230373438336534643763343835333431303164323864323665366334223b733a33323a223661383739336530656530613339653366323638366662346130373235346466223b733a33323a223561323564316137656239333939323931323566663261343638313436666335223b733a33323a223465396538336237366366356638613233326637363537323162653437363965223b733a33323a226634626162326538366438666238393865306362353234663864396337323430223b733a33323a226366326464633932393434393634383537646631643865386463616266366632223b733a33323a223134346138666361323034646632663535363434356466393939333464326239223b733a33323a223464633663356365643038333064313938363563623564343435393465613862223b733a33323a223538663762383735376564383764343263336566633864633339656532653563223b733a33323a226334623365366138303661613364343762623165393037623865353434313632223b733a33323a223931376263316564316361333032343939643264633430353439323434323135223b733a33323a226239353032616134656630626263366164376234383964333038396661363166223b733a33323a226461326133303134343830326463313637356531613135336430343865363863223b733a33323a223737343538363363613432343066316138353862656435323335343665336139223b733a33323a223836373438613033343532373633313730363436656639633365346233343930223b733a33323a226135663639316636313566393230356435356365316435613536633762613136223b733a33323a226463333439393966643365396163333434623532396137366164366463663466223b733a33323a223734363034373263636230613534343133326437646238633036386339343664223b733a33323a226562613661626565333732613733346535346633383566636162613337663039223b733a33323a226638653335303036343939666236356163626439653935646662343430616532223b733a33323a226339306131303434646665393530396132386637636261316639386661393532223b733a33323a226438356165613162663138656361336462396565616437643635343964383662223b7d733a343a2268617368223b733a36353a2264383561656131626631386563613364623965656164376436353439643836622d6339306131303434646665393530396132386637636261316639386661393532223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a333735323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a34333a7b733a33323a223132353434646339313161386262363830623063303163393066393631616135223b733a33323a226665346230636134613334303764326536343266633233393937353662356562223b733a33323a226338303232393561383266663163323130633765613463666165333966656535223b733a33323a223039323236353036616463303062336131613136363732346534303435373963223b733a33323a226666636338636135356164383132643465333236616531643231346233353361223b733a33323a223362303166643066333366666330623334393661656234626565316338353430223b733a33323a223966303232656466623733376463343433633961356436376238653436653331223b733a33323a226261656565633565366661623964663961363530333366306330643930643632223b733a33323a223265383238663336366232366338343939333834306537313066383936393438223b733a33323a223361353936623364656432616338303163313637313537353632666533323439223b733a33323a223961623163623736353138323534643531613666376664346364646237343764223b733a33323a223935303064616461383430396366326535363963303230633838643666623765223b733a33323a223166393830393762353461643361313436303339643036663462353532346538223b733a33323a226334656361366664306462616339306636363230393939353862373136376339223b733a33323a226539326264653132353231646231663535663464623836643063653665663032223b733a33323a223537633738626161663437386430303133373564643134623433363963373938223b733a33323a223165376533656134363738623730666138343332633532613833316666376135223b733a33323a223635303935333231386634333732316538636365363336353035343835646431223b733a33323a226165303638383766363565313761616536373636333563386562376630666134223b733a33323a223630343430303638633130373135336130356634323161356336333131313362223b733a33323a226438623835643366393563376137326166343731306262376633616337666265223b733a33323a223434383430326233643333663331633135333636663838646230343766316236223b733a33323a223337336432313234386666623534636336316462643465333532316265643337223b733a33323a223336353165383230303462343137636637333739326536303339326236346362223b733a33323a226538363238396631633163386265636632643030366233343265303162356530223b733a33323a223331613562326237653238373036666532653532663162383431613739656339223b733a33323a223065373738366466636334316564393934633262653263666364643666363238223b733a33323a226531633462343633346634653731626435353333353930386136626464353133223b733a33323a226231353631316431656636656262633639616166363134313537636435626630223b733a33323a226137346633636637663363626438393035373636316638313361663264623239223b733a33323a223661323561373062376134346535396463383333386539303135316365636335223b733a33323a223632373335333235613633323361343430623961653932306336633534383964223b733a33323a223236346231623235346138656139333532653031346562313265363563303762223b733a33323a223666393063666232313432353635363433613430653764313062356330346464223b733a33323a226631646163626461393764396263666337653065376564313632366435643264223b733a33323a226163396230646266623030363262306161613866313265616234666136313739223b733a33323a223763636337656132626130393265373733313466346539366466303066636538223b733a33323a226662363063303539613565323832613565303232653564326166393966336235223b733a33323a226432386337613135303036393835663133303635313163613133383133323865223b733a33323a226534636236366162346261643030323839646130633962623132663031636436223b733a33323a223434333433623638636264633737616130313961356339316566363464353330223b733a33323a223130656630613662393865383861633734303261663130636433383865343931223b733a33323a226434616332623063346161316262353634323136623837366163366266333665223b733a33323a226335353839663930353336333363363861363236666566336462616238636535223b733a33323a223936356635323862653439393835643132663633336634386637326564346661223b733a33323a226639666533303837326238646433303137363938653465363132323432393730223b733a33323a223032386438633633666432353739613534623065306230366238383061653730223b733a33323a223334386335613034646338653439376231393035333363623339363336326337223b733a33323a226339663139386637633563356532353333313537383563316332323764653431223b733a33323a226161643538376465316237653237363136643739343466303937323538366464223b733a33323a223230633366343435376266356462663466383631633863353864373932653763223b733a33323a223333636433323263316462653966666333636361633434363137653135666263223b733a33323a226137653661616666623437613761636561643732333765363961376166656461223b733a33323a223661366662646637343964613539313031663561626430306262383162643132223b733a33323a223739633464333532663632396432386433343539306132336438313564626462223b733a33323a223537373135373239376666313938376330363664653436373563386637623937223b733a33323a226336656537626438353538633039356630373963616564303039353661356662223b733a33323a226161326437393031663234306362306665616435376436313765333633323661223b733a33323a226565333338336132623065353333346330343033656666663664666461616234223b733a33323a223862363135303235393137323937383035633234666362393931383735303630223b733a33323a226130306661396139383231623833646530396131323831656566353631393936223b733a33323a223361643562386562616564663563313865343637326262323862633865363930223b733a33323a226332663463333439306534636261666230323466313238333961383730336164223b733a33323a223965353565656439653336353662313839333036656238623961353166353830223b733a33323a223566343733643765616435343762373737636666366539393438313933353161223b733a33323a226662343266383437656539326436376464303465306663636533633133386437223b733a33323a226133633961383634396337333637353532666336346237653138643332653363223b733a33323a223063333531343566376239633138363839623335366234643962323861363262223b733a33323a223966343435326165326332316137666431343730363062653033333533656431223b733a33323a223935346630303065383730353162643234643164393933366138613466393338223b733a33323a223032303162623661636465343830633265333865323965636266393632343138223b733a33323a226233326236356335663632333864356331663839633131373763393038623831223b733a33323a223233643461633037616137316632393465326638313866356235343036623339223b733a33323a226463616463643362313231376635333037643130663465353832373734323436223b733a33323a226431663331623835313463626561666235656132326133343165626234346333223b733a33323a223830633263636264343162313535303436393132323732616465613437633432223b733a33323a223234653235636132623638336638303165366365326335663737323537646561223b733a33323a223137653963393332316434313939663565373837333237353830393735366432223b733a33323a223331373835323961326464613665663139396261326164633334343137346431223b733a33323a223331303665613636643164383434383131343130626632313432303130323231223b733a33323a226531633062316630393331643833313335613363383461303435333034373531223b733a33323a223963633162383462316635366661663434333639376565653936646539643535223b733a33323a226633383266333565323764353562653731663738616630666564616664353261223b733a33323a223430663537316634323635396630646261326564633134306562666339323465223b733a33323a226338396433623733666434656363663837343061396238613165316431336431223b733a33323a226561633836363230353131366661313463636433353639313139643430636632223b7d733a343a2268617368223b733a36353a2265616338363632303531313666613134636364333536393131396434306366322d6338396433623733666434656363663837343061396238613165316431336431223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226330313638396361363033656339643435653566613830656534306232333166223b733a33323a223966303561323037333231636636303465653665663263326466393232343234223b7d733a343a2268617368223b733a36353a2239663035613230373332316366363034656536656632633264663932323432342d6330313638396361363033656339643435653566613830656534306232333166223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587638598),
('pmktbi1o2210jm03bc6l5auu14', 0x5f5f5a467c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383233323239362e3634313235393b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22706d6b746269316f323231306a6d30336263366c356175753134223b7d7d, 1588232300);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('ua0fv045352gfqosc96j2n5cjb', 0x5f5f5a467c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383234333335332e3139363634343b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2269743064356565746d3568706c75647566727470677033306f30223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383233353931323b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383234363933383b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538383234363835323b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383234343232353b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383234353932343b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223437626534303339323834616631333837376436393339323632613331626362223b733a33323a226462373262343261623439663361383033353231333932363338623631656130223b7d733a343a2268617368223b733a36353a2264623732623432616234396633613830333532313339323633386236316561302d3437626534303339323834616631333837376436393339323632613331626362223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a393033333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3130393a7b733a33323a226232323539656333666533353134376361393961323934376537396462333464223b733a33323a223530356566343461393333306234376539343763343934653161666561623139223b733a33323a226563366133383564393361643864613861666231616533316436663566303435223b733a33323a226562613431366463306533313465353538326635646463313334333166653335223b733a33323a223030633962363437343431323163343662343534633363623636653061323534223b733a33323a226565343138333862333064323733346261643161623038343764323438346265223b733a33323a223836323961333632373239613637663432636533613563636433333237333761223b733a33323a223333353337306166356632386164386536383163356537366339323231646335223b733a33323a223466653031303434386130383863623466616230396439656135326164633332223b733a33323a223566333663303236356361363766343864333036633538363966656136373736223b733a33323a223634386434663238313465343136636332636663636266386265633261333831223b733a33323a223666386566316661313837646166333339616631653935623832363964646566223b733a33323a223561666330373762313838653837396536666337336539366331326135663834223b733a33323a226263663439323236323131646466636132366363396563376133613530353330223b733a33323a226561663931306463373434613865303531386433613166363032386437373535223b733a33323a223465356464313538613934363266633862346437373237623038613665303636223b733a33323a226638303366376233626463346564633765363065356663376535626434363930223b733a33323a223936646239386235643835323065343533326162323066666264623966653661223b733a33323a226161663036393431306134386638373537643964616662636539346366323335223b733a33323a226161323064343333303431306664323934613465336537636432373334323936223b733a33323a226137653765316432643931633164626439363661393662633266316463396532223b733a33323a223735646131363637616361646431303064353531396335346566343866633335223b733a33323a223961316336346237383538313833393666396464383564346536363766616635223b733a33323a223466666362366362376234346332633465326230633765363530636136333831223b733a33323a223337303535613064656365363561363139656530313266623431366331316237223b733a33323a226362346165386434633435633738386466363432616462333665363634633132223b733a33323a223462613535663430383166343731346636376230393065326661656435313233223b733a33323a226637363335313966336230363330363762666463376539313563373636626564223b733a33323a223035333335663537303830613061616436633866396262396339613339393733223b733a33323a226561643838383535373036643937313166643832353165653431633933363631223b733a33323a226361333763363535346637323831373532646338323865303665343330386539223b733a33323a223032396233376336633562663661306661646237363838326230346231383032223b733a33323a223033616636313163653439306331303961383032663563653632343636376432223b733a33323a223862383362356265623761316533313566643934373237333833323166306533223b733a33323a223133613664343731333132623738386663393139653936363838616665363465223b733a33323a223464323538326236363239313161663538653432623762653231383236396437223b733a33323a223735326336343730316438353865336136663134323663656261313532396262223b733a33323a223334653664663863633663306639633730653666653361306132313137376565223b733a33323a223565393439353235306334396365346539383262306565343963333332646662223b733a33323a226130643138656333643266643161663564353433646332663939663936336264223b733a33323a226337306232353433333766336233363739343138373366623330303535666436223b733a33323a223638613565626632383831363233636537393933366435303334633831326461223b733a33323a223765636231383266633630323463633962616638383866666537333366363431223b733a33323a223138316134373234626666336363383338306535373065343030303835393464223b733a33323a226462316132656139616263636131343031623031373562383337363866613637223b733a33323a223635656435376534336538633465646136396238366366393939626235646364223b733a33323a223163313435616530653430336533386338633839356434326139393331633964223b733a33323a223061306164626164383931363166356537303436313731306332396139653266223b733a33323a223364636363393866326336376166656338363661343030363963643737653261223b733a33323a226139613664626638643938626230656362356638666463313739363232366330223b733a33323a223232393463356636313634633636613763663333363437383433613965663763223b733a33323a226234326539323937616639373631373066366162353766356263366263396438223b733a33323a226639333330636633313034366532313763376135383939383335343438613663223b733a33323a226336616230346361346566303038363164373165663939333936346438616534223b733a33323a223431653031383464643435663137616233323065663533343866373565356530223b733a33323a223034656164623162373032356335316163633731363233393763663230383664223b733a33323a226432393263343363373935623839303037373861313862633266666435393637223b733a33323a226665363163373066303966623265303231626238333231626361366531346466223b733a33323a226464306638626638363338363939323163373034656161396663653933326234223b733a33323a226332353135303461646133353564646537363063333233356435356137383432223b733a33323a226433303934313435326637333433366332326332333765383862306532313066223b733a33323a223839373565383835653732383930326262363538316137313633396237303636223b733a33323a223239396263343366613362613961393336613364623465343034346634656665223b733a33323a226464366465343964613635303466323833626465616162636265643436343033223b733a33323a226565613266613137323765326439613139386438313639666630633834386438223b733a33323a223339366639373661303631643931306433666665616265363161653861333836223b733a33323a226561653232633764393536363638353161633336616237366236336566373331223b733a33323a223239383035356366353961633130306134323237386631306665623235383739223b733a33323a226435656463393035383766646261393333373862343832633535363665363033223b733a33323a223631366639383336663165633766616330626137363961343036613236366638223b733a33323a223838613531336362306535353039333132636339303333313932646333626439223b733a33323a223662656233333736326362393534396363316666326163653065643866393131223b733a33323a223766393364396661393233306139346633666332343664353430396565386536223b733a33323a226532616566633230633262313163393132343964663736303830366166653138223b733a33323a226430616634363235363732316663393864383062336537373765326334366239223b733a33323a223866666534643631346339623335666533393963373164326163383962346233223b733a33323a226639383533373135656437393237623662376666613631386431353931666462223b733a33323a226139366135623538663961386261666530666339613236353361613533623737223b733a33323a223366626533613438353661623733313463313965623161633763643764646561223b733a33323a223330386565376135653936303035656663373337326439613964383963393433223b733a33323a226133303066633766636233613236316132383163313839646135373436633035223b733a33323a223635643536353765616239333133363666373336616364386633376361316530223b733a33323a226335383435323231376630363738616233633432393566626630636563303265223b733a33323a226466333034623430636333303762376136383630636231373564636535393165223b733a33323a223633343464633130356536303962653161396561353934383636383862643838223b733a33323a226539386366386562356364313864646364616433366533663862346136316134223b733a33323a226163316234346663636531663861323137613338616333313834636266393837223b733a33323a223230613865623965636466343132653034393635666261366261333864643161223b733a33323a226539346330383231303235623733323339313338363861323032306437346263223b733a33323a226538393839613264373037363739643436343838656465353937363730326434223b733a33323a226430343639613863636634376263613731633063313337333033376539333038223b733a33323a226464663030663362656264336133346165656538393362336661336464316138223b733a33323a226236396563353435366364666165313736303862393462353461363665666265223b733a33323a223337333030346633636631393561313062666136663434356365356534333338223b733a33323a226165623530626565323832613332333734623838616561323034343836363134223b733a33323a226536623236646333313138383064303565346333653164396635323663623766223b733a33323a226337666636653034383461663430333162653839353330666639663365323862223b733a33323a226662383134323830356438623230643231623530346561333865616430656465223b733a33323a226166323036653133653062373636336330303363303134346333633861306530223b733a33323a223638373331303637363862326161613464623436633264383862376238636432223b733a33323a223533353730616266323032366365383763636130386464646537366234393834223b733a33323a223866643638393331393536623839313161666333353961656431343966636636223b733a33323a223638633338616362323531336430326233303663616637663635343432653761223b733a33323a223536373036646633383965383364313533333933376635653863663164313335223b733a33323a226638363532663738666533323230303639393237633361363538666132343536223b733a33323a223762323039663833323365353035346339633130393761333963303630616630223b733a33323a223836663835653333303939623530623731396234383039353266396439343832223b733a33323a223733343930333332393537343333313632643538333634616532613532383365223b733a33323a223763333438633331323164363631613864386534646130386438383830656232223b733a33323a223138343930613936393539616633623361363935666534303165313566343765223b733a33323a226533636462336135656438303231303565356661326265343537363032646364223b733a33323a223065653932366136376438373734346263323066343562313862636165383239223b733a33323a226638393935336336653834323335373161663066636131323661616364373938223b733a33323a223937656531393634313464313365353239643239623831663061353062623066223b733a33323a223062633933333964656539633632663637663866323937343563653533303764223b733a33323a223963373730303430653765613562306466313665373633663361353765393062223b733a33323a226466346364663161666332613738363461313635623865633032303366613137223b733a33323a226131623565313265333630663063303766623332663364393562626536323964223b733a33323a223937313966613965333036653936353436323461663436626637383536343030223b733a33323a223137373864363935636236633036636239303032373162653465346130643063223b733a33323a226262653533613363333465663331333232343566373831323535393839363664223b733a33323a226662656630363939306434343834663731393737373132336630366333613063223b733a33323a226531346230396361373435376536303331363639316235353661316130313763223b733a33323a223363663532383561303963313464363236336533303433643462616461636332223b733a33323a226266323530663839666461353239306136616530623538626632376465653561223b733a33323a223836633163313733343233383538356239393261383834313966363763333639223b733a33323a226365333037323336653839636430643864343138633232373364666234373261223b733a33323a223439326130623637376436353934363934396538366331376665623135326331223b733a33323a223534653539373336623862363133646263653336313365646365373666353832223b733a33323a226461343065313335343335613633326362366439366364613730313261333831223b733a33323a226562383235343363353734373536316666353937323838353465376331666331223b733a33323a223061333932353766656366353266636535326537343735613431626565616539223b733a33323a223132656661336530336333303032393465333238303638363035303636633061223b733a33323a223631363234333031386632393130373631363938633830343734376565643264223b733a33323a226563313334616564393936616166613730343831633037316362636237623334223b733a33323a226634613634363362343036386238613163393535653030396531373531373332223b733a33323a226161346364343930346338393561356665363362366336623830313361656332223b733a33323a223334383638343763336335623632313039323938333631323630666561306434223b733a33323a226262356465636431366265393933653139393364343436373031326339376535223b733a33323a226634643439653333663936306239623837306666633964613763646430616664223b733a33323a226234623362313837303735663361613465623063656432323762333838333264223b733a33323a223838646435363537633136623835656231663131383437333634663733373639223b733a33323a226338663436393864653535616531363832613739316530646539653436653337223b733a33323a223733326134303930323636616434393132326263626566333963646330636530223b733a33323a223632326533356338316264353432626236363836336530383531633562363262223b733a33323a223137616530663033303863303138616663343538333762633164666530663665223b733a33323a223633613634303636393432653335616231666266353030613938633330653930223b733a33323a226562366535393436613066646638303566326334386264373632343637653638223b733a33323a223336303466373039633637336631646131396531616533666436393732326263223b733a33323a226336353937373030623435363162376465353539633137626166666233363637223b733a33323a226639666562663036343463663930656435343237646138303664353262636232223b733a33323a226432333735636437626364663461656539356461363865623735333063393434223b733a33323a223865646138313934396661323663636436643732653633653037353333616464223b733a33323a223433303635356332666132323136373231313233376138373835343866373538223b733a33323a223163613035653565336464326533346637623339316331333164656666363735223b733a33323a223934636564396263623530633562343335653632366462343535306535373233223b733a33323a223762633965663034386137303635663332663563383235343738376363326237223b733a33323a223465346636383065656165646132643933666663613537333862393631396430223b733a33323a223462323463393933383739646338323466666433396238616430663862363339223b733a33323a226335316365323164613232613463643138313466326362336133656362356437223b733a33323a223136643463336331303338633161343636386136343166613032333030326633223b733a33323a226231396333333864396166623638333965393962393535313133663865613934223b733a33323a226338636532353833313061303931353735386436663463663064343162343236223b733a33323a223733326262323138643133666561653030353062386463666662653634343763223b733a33323a226266326231656239353630613363313835653165343665356636373166646262223b733a33323a223535366130306530303939363234316166343632653735343839323565346364223b733a33323a223339663835386632386136343065663166366264613338376661383431393434223b733a33323a223162323335646463393537366431633730373662313365626366333032316664223b733a33323a226165376161346565613031363938333863333366343961353766616137356338223b733a33323a223436303630396164356331373532393364666538646634346564353366316337223b733a33323a223734643731366139383938323236356332613265383935366466623262303932223b733a33323a223038393136363033323934363863633039343132363735373136343533626531223b733a33323a223334643835373031393365396630343062643063626662653731386339363861223b733a33323a223061303666353534333833323363386266646539666632646437336266393362223b733a33323a223462666161656463346466653936643765303634373466316466363138626166223b733a33323a223163303532363639663962373031336531666238313537643564646438663837223b733a33323a226235313234303439643239613131653933386437393839393831636138376338223b733a33323a223430663034613963393362313064666336333066326163323930363430346464223b733a33323a223331356663663439306465373733623262376131326331643234633834636338223b733a33323a226366393332643261386131353337646664643330613830626632623635383030223b733a33323a223935393030326236656338636263303332613833613461323065383063336630223b733a33323a223238623038666335366166623537316663326562353465376337353430366437223b733a33323a223361313432346330396663623263313363316165383165383633623533353561223b733a33323a223435656639646333393836613131643530373963343435353162323861386337223b733a33323a226236643034623265353930346664336465373030343730643534363734353633223b733a33323a223134323630383337626338373735643665323665316165306464366465663235223b733a33323a223135623731373561383165306334366639623332656133383562643330373434223b733a33323a226431333937626561353965366232626336383137636630376231393636376263223b733a33323a223632663930353661633566386336323962363763373963303131363262376362223b733a33323a226638656335646237616366623134396634393363386264623361663137363933223b733a33323a226430316332303533303834323335306631346563663238326264393064306137223b733a33323a223864336438313231376230353536636535363265326131323536353235653133223b733a33323a226631306339623964353130646265613965613063366338663435303932633436223b733a33323a223338303965613336303538326439623138663639326336306566616532393638223b733a33323a226465356233643631373363656232323638386336386362666132653532343335223b733a33323a223335323766643666613032636263313334613465303562643538313839393462223b733a33323a223238386135313034343438663034626238303765303031336439393033316134223b733a33323a223761363233623033613765396235326166623762333438373265313865393837223b733a33323a223064643932653762653161396432393763643364666565386234653138306534223b733a33323a223036633534323931623865363035306261356630373634363461633265653164223b733a33323a226632323362626631333335643862613764616436383331323463333931353539223b733a33323a226364653635663031666235303938303663316265336563316365643166346334223b733a33323a226131333730353865663066316636646466323032626463353539353338333665223b733a33323a223831313934346638613965383432303233353934373233306230323636323739223b733a33323a223831653564393537366630363333356230663262353231396265616335386163223b733a33323a223638366565303338323039363565313538393734393035653934626364313463223b733a33323a223362323037356532326535653631666164373066653934303738366464396264223b733a33323a223532393637633936346438343438366664353363623733626332366265616364223b733a33323a226234643537353761313862366562383665333438313332643461333438346333223b733a33323a226361353539303934323066316238333531626435363234636337666163313735223b733a33323a223436633765653630393561303436333839346438643534376535326134386237223b733a33323a226533373436313265353465306462376531373735623966343964303138356266223b733a33323a226538643362323135383735646133383266626264393333616432366436306562223b733a33323a223634353736333139366135323362353663346432633865326132663966326137223b733a33323a223436623464323235333932353661623965363364613833643336313231663439223b733a33323a226235643965653438303333383262666264616636303964646234656239343437223b733a33323a226536383933626532616166613963643462303438653864373936363832613835223b733a33323a223331616266613939353433346661383737366230653436363534666538396564223b7d733a343a2268617368223b733a36353a2233316162666139393534333466613837373662306534363635346665383965642d6536383933626532616166613963643462303438653864373936363832613835223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a323339323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32363a7b733a33323a223865363363316535303631353365353233643637653131343765323634646538223b733a33323a223434396665623336646163353836643531656331623633303730303431383634223b733a33323a226236313432633461343439306432393666353563393462653561336338643038223b733a33323a223435383434666339383838636134653735323239616638393132656630616434223b733a33323a223161323765303530613433346561336230386263333732653663376236363738223b733a33323a226163396539393731356634653335343331383334383136613765646133663964223b733a33323a226535626232396235306139336361316163663938363230643235353839373234223b733a33323a226530626561343965333832653736363166353264333562373063643433663662223b733a33323a226564323936663331626531386235626164316135616138646130356261343937223b733a33323a223034356161376433333633616232333164613837343238633962326565656532223b733a33323a223565623733623762663331303762666338313262616132356636643232373035223b733a33323a226261353938663064336364363637393637376238396666313431616661323762223b733a33323a226436363036373736383462616539353065663135383162633561393733643564223b733a33323a223435363566663564353630373432623731323863666233326362396337613732223b733a33323a223165633637646435393962323036663734656135323935326238383835313365223b733a33323a223363323462383564626434623235643138316264396263393035336134316338223b733a33323a223130333838393630623663623833656438663432383766323864306535323535223b733a33323a223366363165633536333937323935666634333539393862313366653833383039223b733a33323a223938303061393061356666626566316430653635633330666536353165353465223b733a33323a226239393938636631353463356130643563636664393737393431336261646164223b733a33323a223763353166623265326663326439633061333135383237636666393466313861223b733a33323a226265613030663232376332353736373431353635663262366534323532643562223b733a33323a223635633263396365356434353938396462333435623062393232363731653964223b733a33323a223137623032396335336230323338313937616432383830376163393032623666223b733a33323a226437633739626461626637343936663136373539343866326132353134343461223b733a33323a223537366264383034373938646238376563373563396333326265383038353338223b733a33323a223737636231636139633936616336303237356130323463633262393466313739223b733a33323a223635663233633435356462613535346436366636633939383834646232363434223b733a33323a223965616433653764643063346335373436313032353837313465396131323731223b733a33323a226430346363363038343539353431643137616135633630333830393337393935223b733a33323a226136323931393434633932316439323565363762666534653063383636613739223b733a33323a223934366465643030343762383230336131656565633066333261613861353637223b733a33323a223233663033313762376663333433643163623331356231356432323065643362223b733a33323a226639663139353238656139393461323132396232613937326338316632653333223b733a33323a226532623330623836303161656165393537333734313261363663336438623161223b733a33323a226234613564663536363237656237653664363434353032656162373838616139223b733a33323a223237303233323039663463343165356161613762323464303835383533353939223b733a33323a226563373833313739326563363834326139316665303964616430656139623636223b733a33323a223561326239353665316461396363343666613161623537336236303963646437223b733a33323a226365306236386334306437613461323965656262363966306363613535366439223b733a33323a226666333437326633323236326133353066613062306366356435663262386432223b733a33323a223861346462363933346533346232623737363864353531666563393764626366223b733a33323a226463633532353661633336303461383730306266623566623339376431373065223b733a33323a223663346565666139363465616665626336303935303066353130343131373832223b733a33323a223635663835663733613235353633356633313437336239316434393964633562223b733a33323a223865333334303534356332386334383438653762383230353738633861376535223b733a33323a223661383761336137383065616663663735623162393961346365393765313637223b733a33323a223464363932326431346139386138616437653033373862626261656637396534223b733a33323a226465663931326335316332633638343835613034323434633766343738663638223b733a33323a223861336136643632396435613831346365616435363938313931653365636466223b733a33323a223639316635376131393833303232653737633737323531373066353938356134223b733a33323a226463326461666365313730373662393031366230303066663837656463343462223b7d733a343a2268617368223b733a36353a2264633264616663653137303736623930313662303030666638376564633434622d3639316635376131393833303232653737633737323531373066353938356134223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3935313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a223866343235626134363933613832363162363461646335316136393838346465223b733a33323a226331316639313333663361643732656638363432366630343634363831303931223b733a33323a223963376231393638396531613034663936666331373338613932636436303535223b733a33323a226162316233346633336632653833653738646461353162663166643837633565223b733a33323a223236383034643636323464373839386139333339636663633733613736336662223b733a33323a223033383434303236323663643235633536623933663837623939346336626133223b733a33323a226461333363373134333437313836646666326661343564383063366332373633223b733a33323a223635636436313537313632393564626534346463323561373961333462366130223b733a33323a226337343662373461623563373762333665353662383166646133356161633737223b733a33323a223061623239656238313764366231306534356535393334373236343461663163223b733a33323a226662323165323236306237303164363538356332363231666433313365626165223b733a33323a223831386237333131623462326466373130323335636464633437643832663034223b733a33323a226166393231306336386163643762613330393036393537346238356339306435223b733a33323a226431623361313766376536353738383336353734633136313038313036393839223b733a33323a226166363937653036646234346164613333653064643232613832333035376338223b733a33323a226162613131303037333137386333323261316431666533636664353333653161223b7d733a343a2268617368223b733a36353a2261626131313030373331373863333232613164316665336366643533336531612d6166363937653036646234346164613333653064643232613832333035376338223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313033313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a393a7b733a33323a226532303438663366653366616138663763363666323431303234316433616539223b733a33323a223532636137356663616563363131656639613461366239643233616166633837223b733a33323a223631326631346339663631393766643964343763633064633835336563646337223b733a33323a223032336130346437666638366666626435303032643637643930353663346461223b733a33323a226236623438356162656662366538623331646163336463666538626562373232223b733a33323a223638333263336235356238313736333337363833373663383464363339366232223b733a33323a226463633161323161323236376432623931313839326161343831383837336332223b733a33323a223964643239306366336439346562653736353564343536353262663734346365223b733a33323a223638623637636230376437333632333734646365386366366335663864376462223b733a33323a223537303433386633303032656666623661383431396539333861396562393933223b733a33323a223631653961663665633738326662303233306565656237386136393638303937223b733a33323a226639373661653931316538353462623466333537393535643464323232306164223b733a33323a226466643065613865646562323166306366353737333635333764633430326166223b733a33323a226265346630636334646132393263653135396635323635366336623735633266223b733a33323a223735393833333835393666346138343137666436653336393930383233633831223b733a33323a223038663063306133663663336163653262363963626265303338346161383263223b733a33323a223663633761353063636530616337373031613238623463326535306539383834223b733a33323a223566663435323634333736373032623166633835653334313639356661333431223b7d733a343a2268617368223b733a36353a2235666634353236343337363730326231666338356533343136393566613334312d3663633761353063636530616337373031613238623463326535306539383834223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1588243353);

-- --------------------------------------------------------

--
-- Structure de la table `sesssion`
--

CREATE TABLE `sesssion` (
  `NoSession` int(11) NOT NULL,
  `DateDeb` datetime NOT NULL,
  `DateFin` datetime NOT NULL,
  `NoStage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
('administrator_email', '\"amir-hamza.fazrulhuck.auditeur@lecnam.net\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"Dae\"'),
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
-- Structure de la table `stage`
--

CREATE TABLE `stage` (
  `NoStage` int(11) NOT NULL,
  `NomDuStage` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stagiaire`
--

CREATE TABLE `stagiaire` (
  `NoStagiaire` int(11) NOT NULL,
  `NomStagiaire` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `PrenomStagiaire` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `DateNaissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'amir-hamza.fazrulhuck.auditeur@lecnam.net', 'Dae', '2020-04-23 09:24:04', '2020-04-23 09:24:04', '$2y$10$h1uNNu.l5f42XTv/It910uF83IjIfGuY69ojiuk6FNkBefISKaHPC', 'global_admin', 1),
(3, 'samuel.szoniecky@univ-paris8.fr', 'samuel.szoniecky@univ-paris8.fr', '2020-04-23 09:57:03', '2020-04-30 07:39:17', '$2y$10$IGbr7pIq6xTSGRzXjfWEM.ytC03SOmTU0wEpa1E3TX8Uyag7iQ/Fm', 'global_admin', 1);

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
('default_resource_template', 3, '\"\"'),
('locale', 3, '\"\"');

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
(1, 1, 1, NULL, 'literal', '', 'professeur', NULL, 1),
(2, 2, 1, NULL, 'literal', '', 'stagiaire', NULL, 1),
(3, 3, 1, NULL, 'literal', '', 'session', NULL, 1),
(4, 4, 1, NULL, 'literal', '', 'stage', NULL, 1),
(5, 5, 1, NULL, 'literal', '', 'module', NULL, 1),
(6, 6, 1, NULL, 'literal', '', 'contrat', NULL, 1),
(7, 7, 1, NULL, 'literal', '', 'inscription', NULL, 1),
(8, 8, 1, NULL, 'literal', '', 'Stage SFR', NULL, 1),
(9, 8, 201, NULL, 'literal', '', '2020003', NULL, 1),
(10, 8, 196, NULL, 'literal', '', '0003', NULL, 1),
(11, 7, 192, NULL, 'literal', '', '2649493111', NULL, 1),
(12, 6, 206, NULL, 'literal', '', '00034566', NULL, 1),
(13, 6, 203, NULL, 'literal', '', '9994444333', NULL, 1),
(14, 6, 198, NULL, 'literal', '', '35975285', NULL, 1),
(15, 6, 201, NULL, 'literal', '', '2020003', NULL, 1),
(16, 5, 4, NULL, 'literal', '', 'c\'est un stage d\'approfondissement ', NULL, 1),
(17, 5, 202, NULL, 'literal', '', 'stage', NULL, 1),
(18, 5, 201, NULL, 'literal', '', '2020003', NULL, 1),
(19, 2, 194, NULL, 'literal', '', 'amir', NULL, 1),
(20, 2, 193, NULL, 'literal', '', 'DAE', NULL, 1),
(21, 2, 195, NULL, 'literal', '', '26 04 1994', NULL, 1),
(22, 4, 196, NULL, 'literal', '', '0003', NULL, 1),
(23, 4, 197, NULL, 'literal', '', 'développement web ', NULL, 1),
(24, 2, 192, NULL, 'literal', '', '2649493111', NULL, 1),
(25, 7, 198, NULL, 'literal', '', '2020003', NULL, 1),
(26, 3, 198, NULL, 'literal', '', '35975285', NULL, 1),
(27, 3, 196, NULL, 'literal', '', '0003', NULL, 1),
(28, 3, 199, NULL, 'literal', '', '01_09_2019', NULL, 1),
(29, 3, 200, NULL, 'literal', '', '30_06_2020', NULL, 1),
(30, 6, 207, NULL, 'literal', '', '700', NULL, 1),
(31, 6, 199, NULL, 'literal', '', '01_01_2020', NULL, 1),
(32, 6, 200, NULL, 'literal', '', '30_04_2020', NULL, 1),
(33, 1, 204, NULL, 'literal', '', 'DRAGERRA', NULL, 1),
(34, 1, 205, NULL, 'literal', '', 'Henri', NULL, 1),
(35, 1, 203, NULL, 'literal', '', '9994444333', NULL, 1);

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
(12, 1, 'https://localhost/Dae', 'Dae', 'voca', '');

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
-- Index pour la table `comporte1`
--
ALTER TABLE `comporte1`
  ADD PRIMARY KEY (`NoModule`,`NoStage`),
  ADD KEY `comporte_stage` (`NoStage`),
  ADD KEY `comporte_module` (`NoModule`) USING BTREE;

--
-- Index pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD PRIMARY KEY (`id`,`resource`),
  ADD KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`);
ALTER TABLE `fulltext_search` ADD FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`NoStagiaire`,`NoSession`),
  ADD KEY `inscrip_NoSession` (`NoSession`),
  ADD KEY `inscrip_NoStagiaire` (`NoStagiaire`);

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
-- Index pour la table `modulee`
--
ALTER TABLE `modulee`
  ADD PRIMARY KEY (`NoModule`);

--
-- Index pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`);

--
-- Index pour la table `prestation`
--
ALTER TABLE `prestation`
  ADD PRIMARY KEY (`NoPresta`,`NoProfesseur`),
  ADD KEY `presta_` (`NoModule`),
  ADD KEY `presta_NoSession` (`NoSession`);

--
-- Index pour la table `professeur`
--
ALTER TABLE `professeur`
  ADD PRIMARY KEY (`NoProfesseur`);

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
-- Index pour la table `sesssion`
--
ALTER TABLE `sesssion`
  ADD PRIMARY KEY (`NoSession`),
  ADD KEY `NoStage` (`NoStage`);

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
-- Index pour la table `stage`
--
ALTER TABLE `stage`
  ADD PRIMARY KEY (`NoStage`);

--
-- Index pour la table `stagiaire`
--
ALTER TABLE `stagiaire`
  ADD PRIMARY KEY (`NoStagiaire`);

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
-- AUTO_INCREMENT pour la table `modulee`
--
ALTER TABLE `modulee`
  MODIFY `NoModule` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `professeur`
--
ALTER TABLE `professeur`
  MODIFY `NoProfesseur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT pour la table `sesssion`
--
ALTER TABLE `sesssion`
  MODIFY `NoSession` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT pour la table `stage`
--
ALTER TABLE `stage`
  MODIFY `NoStage` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `stagiaire`
--
ALTER TABLE `stagiaire`
  MODIFY `NoStagiaire` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
-- Contraintes pour la table `comporte1`
--
ALTER TABLE `comporte1`
  ADD CONSTRAINT `comporte_module` FOREIGN KEY (`NoModule`) REFERENCES `modulee` (`NoModule`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD CONSTRAINT `FK_AA31FE4A7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD CONSTRAINT `inscrip_NoSession` FOREIGN KEY (`NoSession`) REFERENCES `sesssion` (`NoSession`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inscrip_NoStagiaire` FOREIGN KEY (`NoStagiaire`) REFERENCES `stagiaire` (`NoStagiaire`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Contraintes pour la table `prestation`
--
ALTER TABLE `prestation`
  ADD CONSTRAINT `presta_` FOREIGN KEY (`NoModule`) REFERENCES `modulee` (`NoModule`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `presta_NoSession` FOREIGN KEY (`NoSession`) REFERENCES `sesssion` (`NoSession`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Contraintes pour la table `sesssion`
--
ALTER TABLE `sesssion`
  ADD CONSTRAINT `NoStage` FOREIGN KEY (`NoStage`) REFERENCES `stage` (`NoStage`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
