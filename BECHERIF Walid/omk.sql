-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 30 avr. 2020 à 01:32
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `omekas_s`
--

-- --------------------------------------------------------

--
-- Structure de la table `api_key`
--
CREATE SCHEMA IF NOT EXISTS `omekas_s1` DEFAULT CHARACTER SET utf8 ;
USE `omekas_s1` ;

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
CREATE SCHEMA IF NOT EXISTS `mydb1` DEFAULT CHARACTER SET utf8 ;
USE `mydb1` ;

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
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `NumClient` int(11) NOT NULL,
  `Prenomclient` varchar(45) DEFAULT NULL,
  `NomClien` varchar(45) DEFAULT NULL,
  `AdresseClient` varchar(45) DEFAULT NULL,
  `VilleClient` varchar(45) DEFAULT NULL,
  `CodePostalClient` varchar(45) DEFAULT NULL,
  `TéléphoneClient` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `custom_vocab`
--

CREATE TABLE `custom_vocab` (
  `id` int(11) NOT NULL,
  `item_set_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `custom_vocab`
--

INSERT INTO `custom_vocab` (`id`, `item_set_id`, `owner_id`, `label`, `lang`, `terms`) VALUES
(3, 3, 1, 'ujij', NULL, NULL);

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
(1, 'items', 1, 1, 'Client', '12345678945\nDupont\nTartempion\nParis\nfrance\n0600000000\n75013\nClient\nClient\nClient'),
(3, 'item_sets', 1, 1, 'ok', 'ok\nok'),
(5, 'items', 1, 1, 'JOHN DOE', '8894165489\nJOHN\nDOE\nNEW YORK\n45\n+4 454 486 486\n12478\nJOHN DOE\nPERSON'),
(6, 'items', 1, 1, 'fournisseurpalaiseau', '879548/96\n2 ALLLE DE LA REPUBLIQUE\n92600\n+33 145098412\n+33 186486134\nPalaiseau\nfournisseurpalaiseau\nfournisseurpalaiseau'),
(7, 'items', 1, 1, 'witcher3', 'Jeuxvideo\nWitcher3\n111111\n60\n30284\nwitcher3\nwitcher3'),
(8, 'items', 1, 1, 'commande43124156', '11/05/2020\n12/05/2020\n158616846\n43124156\n1002351\ncommande43124156\ncommande43124156'),
(9, 'items', 1, 1, 'categorieJeuxvideo', '3\nJeuxvideo\ncategorieJeuxvideo\ncategorieJeuxvideo');

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
(5),
(6),
(7),
(8),
(9);

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
(3, 0);

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
('0owE8XOu4K4gTNnJMCnXjUC1ZIR2neTF', 2, '2020-04-27 23:54:03', 1),
('Pz4q8KSUNjogM4A8qTpV7WfDA7gqdwNA', 1, '2020-04-29 23:06:35', 0);

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
(185, 1, 5, 'vehicleHeightLimitInM', 'Höhenbegrenzung für Fahrzeuge', 'Indicates the height limit in meter for vehicles using the parking facility.'),
(186, 1, 5, 'ownedBy', 'in Besitz von', 'The owner of a civic structure or facility. Owner and operator can be different business entities.'),
(187, 1, 5, 'batteryCapacityinKW', 'Batteriekapazität in kW', 'Indicates the battery capacity of an electric vehicle in kW.'),
(188, 1, 5, 'id', 'ID', 'ID of the entity.'),
(189, 1, 5, 'model', 'model', 'Indicates the model of a product.'),
(190, 1, 5, 'lengthInM', 'Länge in m', 'Indicates the length of an object in meter.'),
(191, 1, 5, 'picture', 'picture', 'URL of the picture of a civic structure or facility.'),
(192, 1, 5, 'arrangement', 'Anordnung', 'Indicates in which pattern a parking space is arranged.'),
(193, 1, 5, 'validForUserGroup', 'gültig für Nutzergruppe', 'Indicates that an entity is valid for a specific group of users.'),
(194, 1, 5, 'rateOfOccupancy', 'Belegungsrate', 'Indicates the percentage value of parking spaces occupied in a parking facility.'),
(195, 1, 5, 'heightInM', 'Höhe in m', 'Indicates the height of an object in meter.'),
(196, 1, 5, 'parkingSpace', 'hat Stellplatz', 'Relates the parking facility to a contained parking space.'),
(197, 1, 5, 'cableAvailable', 'Kabel verfügbar', 'Indicates whether the plug or electric vehicle has a cable.'),
(198, 1, 5, 'fillRate', 'fill rate', 'The rate at which vehicles are entering the parking facility.'),
(199, 1, 5, 'exitRate', 'exit rate', 'The rate at which vehicles are exiting the parking facility.'),
(200, 1, 5, 'voltageInV', 'voltage in V', 'Indicates the voltage of a charger or plug in volt.'),
(201, 1, 5, 'action', 'action', 'Indicates which action is applied.'),
(202, 1, 5, 'plugType', 'plug type', 'Indicates the type of a plug.'),
(203, 1, 5, 'vehicleLengthLimitInM', 'Längenbegrenzung für Fahrzeuge', 'Indicates the length limit in meter for vehicles using the parking facility.'),
(204, 1, 5, 'level', 'Ebene', 'Indicates the level of a parking facility the parking space is located in.'),
(205, 1, 5, 'feature', 'feature', 'Indicates which feature the parking facility provides.'),
(206, 1, 5, 'widthInM', 'Breite in m', 'Indicates the width of an object in meter.'),
(207, 1, 5, 'chargingLevel', 'Ladestand', 'Indicates the percentage of charge left in the battery of an electric vehicle.'),
(208, 1, 5, 'isFastChargeCapable', 'is fast charge capable', 'Indicates that the charger is able to fast charge.'),
(209, 1, 5, 'civicStructureStatus', 'civic structure status', 'Indicates the current status of the civic structure.'),
(210, 1, 5, 'operatedBy', 'betrieben von', 'The operator of a civic structure or facility. Operator and owner can be different business entitites.'),
(211, 1, 5, 'timeEndValue', 'Endzeit', 'Indicates the end value of a time period.'),
(212, 1, 5, 'currentInA', 'current in A', 'Indicates the current of a charger or plug in ampere.'),
(213, 1, 5, 'isOccupied', 'ist besetzt', 'Indicates that a civic structure like a parking space or a charger is occupied at the moment.'),
(214, 1, 5, 'maximumValue', 'maximum value', 'Indicates the maximum value of the capacity.'),
(215, 1, 5, 'chargingTimeRemainingInMin', 'Verbleibende Ladezeit in min', 'Indicates the remaining charging time in minutes when an electric vehicle is being actively charged.'),
(216, 1, 5, 'numberOfLevels', 'Anzahl Ebenen', 'Indicates the total number of levels a parking facility has.'),
(217, 1, 5, 'energySource', 'energy source', 'Indicates the energy source used for the charger i.e. renewable etc.'),
(218, 1, 5, 'additionalInformation', 'additional information', 'Further information about the civic structure or facility.'),
(219, 1, 5, 'maximumParkingHours', 'maximale Parkdauer', 'Indicates the maximum parking hours a vehicle is allowed to use a parking space or parking facility.'),
(220, 1, 5, 'queuingTime', 'Wartezeit', 'The current queuing time (duration) for entering the parking facility.'),
(221, 1, 5, 'connectedTo', 'connected to', 'Indicates the transport connections available.'),
(222, 1, 5, 'timeStartValue', 'Anfangszeit', 'Indicates the start value of a time period.'),
(223, 1, 5, 'charger', 'has charger', 'Indicates whether chargers are available at the parking space.'),
(224, 1, 5, 'maximumRangeElectricInKm', 'maximale Reichweite in km', 'Indicates the maximum range of an electric vehicle in km.'),
(225, 1, 5, 'supportedChargingMode', 'unterstützter Lademodus', 'Indicates which charging modes are supported by the electric vehicle or charger or plug.'),
(226, 1, 5, 'exit', 'hat Ausfahrt', 'Describes the exit of a parking facility.'),
(227, 1, 5, 'powerInKW', 'power in kW', 'Indicates the power of a charger or plug in kilowatts.'),
(228, 1, 5, 'overnight', 'über Nacht', 'Indicates that a time period overnight is possible.'),
(229, 1, 5, 'plug', 'plug', 'Indicates the plugs available at a charger or vehicle.'),
(230, 1, 5, 'chargerQuantity', 'charger quantity', 'Indicates the number of chargers available'),
(231, 1, 5, 'access', 'access', 'Indicates that a civic structure can only be accessed when certain conditions are fullfilled.'),
(232, 1, 5, 'employeeOf', 'Mitarbeiter von', 'Indicates that a group is employee of a specific business entity.'),
(233, 1, 5, 'currentValue', 'current value', 'Indicates the current value of the real-time capacity.'),
(234, 1, 5, 'freeOfCharge', 'kostenlos', 'Indicates that the usage of the civic structure is for free.'),
(235, 1, 5, 'vehicleWidthLimitInM', 'Breitenbegrenzung für Fahrzeuge', 'Indicates the width limit in meter for vehicles using the parking facility.'),
(236, 1, 5, 'customerOf', 'Kunde von', 'Indicates that a group is customer of a specific business entity.'),
(237, 1, 5, 'currentType', 'current type', 'Indicates the current type (AC/DC) of the plug.'),
(238, 1, 5, 'timeUnit', 'Zeiteinheit', 'Indicates the time unit a value is specified for.'),
(239, 1, 5, 'price', 'price', 'Indicates that a civic structure can be used for a specific price.'),
(240, 1, 5, 'entrance', 'hat Einfahrt', 'Describes the entrance of a parking facility.'),
(241, 1, 5, 'validForVehicle', 'valid for vehicle', 'Indicates that an entity is valid for a specific type of vehicle.'),
(242, 1, 5, 'totalCapacity', 'Gesamtkapazität', 'Indicates the capacity of a resource. Ex: parking facility, car, bycycle etc.'),
(243, 1, 5, 'brand', 'brand', 'Indicates the brand of a product.'),
(244, 1, 5, 'unspecifiedCharge', 'kostenpflichtig', 'Indicates that a charge has to be paid for the usage of the civic structure.'),
(245, 1, 5, 'name', 'name', 'Name of the civic structure or facility.'),
(246, 1, 5, 'capacity', 'hat Kapazität', 'Relates the civic structure to its capacity.'),
(247, 1, 5, 'dueForTime', 'fällig für Zeitdauer', 'Indicates that a price specification is due for a certain time specification.'),
(248, 1, 5, 'threePhasedCurrentAvailable', 'three-phased current available', 'Indicates whether three-phased current is available.'),
(249, 1, 5, 'totalNumberOfChargers', 'Gesamtzahl an Ladegeräten', 'Indicates the total number of chargers available in a parking facility.'),
(250, 1, 5, 'linearExtension', 'linear extension', 'The spatial description of a situation record.'),
(251, 1, 5, 'location', 'location', 'The location description of a situation record.'),
(252, 1, 5, 'validityPeriod', 'validity period', 'A period from when to when a situation record valid.'),
(253, 1, 5, 'alertCLocation', 'alertCLocation', 'The ALertC location description of a situation record.'),
(254, 1, 5, 'validity', 'validity', 'The validity of a situation.'),
(255, 1, 5, 'primaryLocation', 'primary Location', 'The primary location of an AlertCLocation description.'),
(256, 1, 5, 'impact', 'impact', 'The road impact description of a situation record.'),
(257, 1, 5, 'secondaryLocation', 'secondary Location', 'The secondary location of an AlertCLocation description.'),
(258, 1, 5, 'intermediatePointList', 'intermediate point list', 'An ordered list of intermediate geospatial points to where the situation record takes place.'),
(259, 1, 5, 'startTimeOverall', 'start time overall', 'The overall start time of a situation record validity.'),
(260, 1, 5, 'countryCode', 'country code', 'The country code where the situation record takes place.'),
(261, 1, 5, 'probabilityOfOccurence', 'probability of occurence', 'The probabily of occurence of a situation record.'),
(262, 1, 5, 'startOfPeriod', 'start of period', 'The start time of a period.'),
(263, 1, 5, 'endLatitude', 'end latitude', 'The ending latitude of a situation record.'),
(264, 1, 5, 'roadName', 'road name', 'The affected road of a location.'),
(265, 1, 5, 'situationSubject', 'situation subject', 'The speedlimit subject of a situation.'),
(266, 1, 5, 'generalPublicComment', 'general public comment', 'A general public comment about a situation record.'),
(267, 1, 5, 'trafficConstrictitionType', 'traffic constrictition type', 'The traffic constriction type of an impacted road in a situation record.'),
(268, 1, 5, 'specificLocation', 'specific location', 'The specific location of a Primary or Secondary AlertCLocation description.'),
(269, 1, 5, 'endOfPeriod', 'end of period', 'The end time of a period.'),
(270, 1, 5, 'endTimeOverall', 'end time overall', 'The overall end time of a situation record validity.'),
(271, 1, 5, 'impactedRoad', 'impacted road', 'The impacted road of a situation.'),
(272, 1, 5, 'tableVersion', 'table version', 'The table version of an AlertCLocation description.'),
(273, 1, 5, 'trackCrossSection', 'track cross section', 'The track cross section definition of an impacted road in a situation record.'),
(274, 1, 5, 'roadNumber', 'road number', 'The name number of an affected road of a location.'),
(275, 1, 5, 'impactOnRoadLayout', 'impact on road layout', 'The impact on the road layout of a situation record.'),
(276, 1, 5, 'situationSpeedLimit', 'situation speed limit', 'The speedlimit of the road where the situation takes place.'),
(277, 1, 5, 'affectedCarriagewayAndLanes', 'affected carriage way and lanes', 'The affected carriage way and lanes a location.'),
(278, 1, 5, 'locationName', 'location name', 'The location name of a Primary or Secondary AlertCLocation description.'),
(279, 1, 5, 'constructionType', 'construction type', 'The construction type of a situation.'),
(280, 1, 5, 'recurringWeekday', 'recurring week day', 'The reccurring day of a week in which the period is valid.'),
(281, 1, 5, 'direction', 'direction', 'The direction of an AlertCLocation description.'),
(282, 1, 5, 'validityStatus', 'validity status', 'The status of a validity.'),
(283, 1, 5, 'directionCode', 'direction code', 'The direction code of a Primary or Secondary AlertCLocation description.'),
(284, 1, 5, 'recordCreationTime', 'record creation time', 'The creation time of a Situation Record.'),
(285, 1, 5, 'affectedRoadLength', 'affected road length', 'The affected road length of a location.'),
(286, 1, 5, 'recordUrl', 'record URL', 'A website which describes the situation record.'),
(287, 1, 5, 'internalRoadworkIdentifier', 'internal roadwork identifier', 'The internal roadworks identifier of a situation.'),
(288, 1, 5, 'tableNumber', 'table number', 'The table number of an AlertCLocation description.'),
(289, 1, 5, 'startlLatitude', 'start latitude', 'The starting latitude of a situation record.'),
(290, 1, 5, 'recordVersionTime', 'record version time', 'The version time of a Situation Record.'),
(296, 1, 12, 'postalCode', 'code postal', 'A postal code (known in various countries as a post code, postcode, or ZIP code) is a series of letters and/or digits appended to a postal address for the purpose of sorting mail.'),
(297, 1, 18, 'NumFournisseur', 'NumFournisseur', NULL),
(298, 1, 18, 'AdresseFournisseur', 'AdresseFournisseur', NULL),
(299, 1, 18, 'VilleFournisseur', 'VilleFournisseur', NULL),
(300, 1, 18, 'CodePostalFournisseur', 'CodePostalFournisseur', NULL),
(301, 1, 18, 'TelephoneFournisseur', 'TelephoneFournisseur', NULL),
(302, 1, 18, 'TelecopieFournisseur', 'TelecopieFournisseur', NULL),
(303, 1, 19, 'NumProduit', 'NumProduit', NULL),
(304, 1, 19, 'NomProduit', 'NomProduit', NULL),
(305, 1, 19, 'DescriptionProduit', 'DescriptionProduit', NULL),
(306, 1, 19, 'PrixPublic', 'PrixPublic', NULL),
(307, 1, 19, 'QuantiteEnStock', 'QuantiteEnStock', NULL),
(308, 1, 20, 'NumCommandes', 'NumCommandes', NULL),
(309, 1, 20, 'DateCommandes', 'DateCommandes', NULL),
(310, 1, 20, 'DateExpedition', 'DateExpedition', NULL),
(311, 1, 20, 'NumClient', 'NumClient', NULL),
(312, 1, 20, 'NumSalarie', 'NumSalarie', NULL),
(313, 1, 21, 'NumCategorie', 'NumCategorie', NULL),
(314, 1, 21, 'DescriptionCategorie', 'DescriptionCategorie', NULL);

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
(1, 1, 94, 2, NULL, 'Client', 1, '2020-04-28 01:31:05', '2020-04-28 01:37:03', 'Omeka\\Entity\\Item'),
(3, 1, 24, NULL, NULL, 'ok', 1, '2020-04-28 02:13:51', '2020-04-28 02:20:55', 'Omeka\\Entity\\ItemSet'),
(5, 1, 94, 2, NULL, 'JOHN DOE', 1, '2020-04-29 23:27:50', '2020-04-29 23:27:50', 'Omeka\\Entity\\Item'),
(6, 1, 151, 7, NULL, 'fournisseurpalaiseau', 1, '2020-04-29 23:29:26', '2020-04-29 23:29:26', 'Omeka\\Entity\\Item'),
(7, 1, 152, 8, NULL, 'witcher3', 1, '2020-04-29 23:30:13', '2020-04-29 23:30:13', 'Omeka\\Entity\\Item'),
(8, 1, 153, 9, NULL, 'commande43124156', 1, '2020-04-29 23:30:55', '2020-04-29 23:30:55', 'Omeka\\Entity\\Item'),
(9, 1, 154, 10, NULL, 'categorieJeuxvideo', 1, '2020-04-29 23:31:26', '2020-04-29 23:31:26', 'Omeka\\Entity\\Item');

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
(106, 1, 5, 'Charger', 'Charger', 'Civic structure that supplies electric energy for the recharging of electric vehicles.'),
(107, 1, 5, 'ElectricVehicle', 'Elektrofahrzeug', 'Vehicle that uses one or more electric motors or traction motors for propulsion.'),
(108, 1, 5, 'ParkingFacilityConnection', 'Anschlussmöglichkeiten der Parkeinrichtung', 'Transport connections available at the parking facility (e.g. Park & Ride).'),
(109, 1, 5, 'ArrangementPattern', 'Aufstellart', 'Art und Weise, wie ein Fahrzeug auf einer Parkfläche aufgestellt wird.'),
(110, 1, 5, 'AutomatedParkingGarage', 'Automatisches Parkhaus', 'Parking garage with an automated parking system that automatically moves cars to the available parking space somewhere in the garage.'),
(111, 1, 5, 'ParkingFacility', 'Parking facility', 'Any facility or area assigned for parking vehicles. A parking facility can provide one or more parking spaces.'),
(112, 1, 5, 'PlugType', 'Steckertyp', 'Type of a plug that is used to connect electric vehicles to a charger.'),
(113, 1, 5, 'ParkingSpace', 'Parking space', 'A parking space is a location that is designated for parking a vehicle. A parking space has a certain size, is sometimes marked and can be located at roadside or inside a parking facility. Depending on the location of the parking space, there can be regulations regarding the time allowed to park and a fee paid to use the parking space.'),
(114, 1, 5, 'CivicStructureStatus', 'Civic structure status', 'Status information of a civic structure.'),
(115, 1, 5, 'Capacity', 'Capacity', 'Capacity of a civic structure.'),
(116, 1, 5, 'RealTimeCapacity', 'Real time capacity', 'Real-time capacity of a parking facility or parking space.'),
(117, 1, 5, 'ParkingFacilityEntrance', 'Entrance', 'Entrance of a parking facility where vehicles can enter the parking facility.'),
(118, 1, 5, 'BatteryElectricVehicle', 'Battery Electric Vehicle', 'Electric vehicle that uses chemical energy stored in rechargeable battery packs. Battery electric vehicles use electric motors and motor controllers instead of internal combustion engines for propulsion. They derive all power from battery packs and thus have no internal combustion engine, fuel cell, or fuel tank.'),
(119, 1, 5, 'ParkingFacilityFeature', 'Ausstattung der Parkeinrichtung', 'Features of the parking facility (e.g. parking for disabled people).'),
(120, 1, 5, 'Plug', 'Plug', 'Component of a charger and of an electric vehicle to connect each other. There are different plug types used for charging electric vehicles.'),
(121, 1, 5, 'UndergroundParkingGarage', 'Tiefgarage', 'Parking facility with one or more levels below the surface and none above ground.'),
(122, 1, 5, 'ParkingLot', 'Parkplatz', 'Parking area on a single groundfloor level that is usually located outdoor.'),
(123, 1, 5, 'ParkingGarage', 'Parkhaus', 'A single level or multilevel parking building to park at.'),
(124, 1, 5, 'BicycleParkingStation', 'Fahrradparkstation', 'Building or structure designed for use as a bicycle parking facility.'),
(125, 1, 5, 'ParkingFacilityExit', 'Exit', 'Exit of a parking facility where vehicles can leave the parking facility.'),
(126, 1, 5, 'PluginHybridElectricVehicle', 'Plug-in hybrid electric vehicle', 'Hybrid electric vehicle that can be recharged by plugging it in to an external source of electric power as well by its on-board engine and generator.'),
(127, 1, 5, 'Action', 'Action', 'Action that is done.'),
(128, 1, 5, 'Validity', 'Validity', 'The validity of a situation record.'),
(129, 1, 5, 'Location', 'Location', 'Describes the location of a situation record.'),
(130, 1, 5, 'SecondaryLocation', 'SecondaryLocation', 'The secondary location of an AlertC location describing roadworks.'),
(131, 1, 5, 'AlertCLocation', 'AlertCLocation', 'An AlertCLocation description of a situation record.'),
(132, 1, 5, 'SituationRecord', 'SituationRecord', 'An identifiable instance of a single record/element within a situation.'),
(133, 1, 5, 'Period', 'Period', 'Describes the period from when to when a situation record valid.'),
(134, 1, 5, 'LinearExtension', 'Linear Extension', 'Describes the Linear extension of a situation record.'),
(135, 1, 5, 'UserGroup', 'Nutzergruppe', 'A group of users having a common characteristic.'),
(136, 1, 5, 'AccessCondition', 'Zugangsbedingung', 'A condition that has to be fullfilled to get access to a civic structure.'),
(137, 1, 5, 'Impact', 'Impact', 'The impact of a situation record.'),
(138, 1, 5, 'PrimaryLocation', 'PrimaryLocation', 'The primary location of an AlertC location describing roadworks.'),
(139, 1, 5, 'TimeSpecification', 'Zeitspezifikation', 'Specific time a price specification is due for.'),
(151, 1, 18, 'Fournisseur', 'Fournisseur', NULL),
(152, 1, 19, 'Produits', 'Produits', NULL),
(153, 1, 20, 'Commandes', 'Commandes', NULL),
(154, 1, 21, 'Categorie', 'Categorie', NULL);

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
(2, 1, 94, NULL, NULL, 'Client'),
(7, 1, NULL, NULL, NULL, 'fournisseur'),
(8, 1, 152, NULL, NULL, 'Produit'),
(9, 1, 153, NULL, NULL, 'Commandes'),
(10, 1, 154, NULL, NULL, 'Categorie');

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
(21, 2, 108, NULL, NULL, 1, NULL, 0, 0),
(22, 2, 139, NULL, NULL, 2, NULL, 0, 0),
(23, 2, 140, NULL, NULL, 3, NULL, 0, 0),
(24, 2, 251, NULL, NULL, 4, NULL, 0, 0),
(25, 2, 260, NULL, NULL, 5, NULL, 0, 0),
(26, 2, 146, NULL, NULL, 6, NULL, 0, 0),
(27, 2, 296, NULL, NULL, 7, NULL, 0, 0),
(33, 7, 297, NULL, NULL, 1, NULL, 0, 0),
(34, 7, 298, NULL, NULL, 2, NULL, 0, 0),
(35, 7, 300, NULL, NULL, 3, NULL, 0, 0),
(36, 7, 302, NULL, NULL, 4, NULL, 0, 0),
(37, 7, 301, NULL, NULL, 5, NULL, 0, 0),
(38, 7, 299, NULL, NULL, 6, NULL, 0, 0),
(39, 8, 305, NULL, NULL, 1, NULL, 0, 0),
(40, 8, 304, NULL, NULL, 2, NULL, 0, 0),
(41, 8, 303, NULL, NULL, 3, NULL, 0, 0),
(42, 8, 306, NULL, NULL, 4, NULL, 0, 0),
(43, 8, 307, NULL, NULL, 5, NULL, 0, 0),
(44, 9, 309, NULL, NULL, 1, NULL, 0, 0),
(45, 9, 310, NULL, NULL, 2, NULL, 0, 0),
(46, 9, 311, NULL, NULL, 3, NULL, 0, 0),
(47, 9, 308, NULL, NULL, 4, NULL, 0, 0),
(48, 9, 312, NULL, NULL, 5, NULL, 0, 0),
(49, 10, 313, NULL, NULL, 1, NULL, 0, 0),
(50, 10, 314, NULL, NULL, 2, NULL, 0, 0);

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
('4u0jqfaqt3uk7epmaak3bn7u9j', 0x5f5f5a467c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383230313438302e3332323135353b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a223475306a716661717433756b3765706d61616b33626e3775396a223b7d7d, 1588201483),
('br6lb2jnmqqnkm0c248ko92e33', 0x5f5f5a467c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383230333039372e3739353030353b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226d616f6c666562706d357432363333333065656774396971616e223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383230353230303b7d733a34383a225a656e645f56616c696461746f725f437372665f73616c745f666f72676f7470617373776f7264666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383230353139313b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383230363333313b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383230363336323b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383230363636313b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538383230363636333b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a226262623837356237653366333135376330653066633330636132393733643065223b733a33323a226531623365393962616439616264313261363032653838363738616564626663223b733a33323a226134326337346332303264616234653363323462376663323062333335386632223b733a33323a226537633133623262313431616333353463336136333831303266343535646465223b733a33323a226161353038393531633034316131323332343366383665646461383737653031223b733a33323a223337396530383039393932626330396237643637306431336264346435363534223b733a33323a226531393166643064323164666332633331643831653066626337643962353366223b733a33323a223966623064323539646636346265316131663032363766643230303038326636223b733a33323a226337666366356164303535333634306462316534313930623834383866346362223b733a33323a226630333534363862313761643038646338646164326638373735613366363133223b7d733a343a2268617368223b733a36353a2266303335343638623137616430386463386461643266383737356133663631332d6337666366356164303535333634306462316534313930623834383866346362223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f666f72676f7470617373776f7264666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223139383230393566393461313861643365616564643430303631376465623831223b733a33323a226134336439653162336437383764333735653338393833346163313934633133223b733a33323a223762326263633661383531336431383061346436616437363635393330393334223b733a33323a223236363362396537313030323638313232636234346534333532623062616632223b7d733a343a2268617368223b733a36353a2232363633623965373130303236383132326362343465343335326230626166322d3762326263633661383531336431383061346436616437363635393330393334223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223632663565653638393235316362653765333032633963386363623938386334223b733a33323a223233333134336431373661623536353238316462333566623261323939376133223b733a33323a226133663532306131393866653764376635363665663863383934633239303564223b733a33323a223663633332396233393761303334306138306364333466633239326461326261223b733a33323a223931326336393134373162363661383433396534346365633830373136633336223b733a33323a223332643935626162623330646634663536613163643339646639646366663639223b7d733a343a2268617368223b733a36353a2233326439356261626233306466346635366131636433396466396463666636392d3931326336393134373162363661383433396534346365633830373136633336223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223633643636333839313865653064613330633232323836623534303332393130223b733a33323a226666656466316439616632343562663464633263343864633366393236656331223b733a33323a223738633338323630663863396534636632313461653738396363643639323566223b733a33323a226530663861343266396664346365343466316434366262383461363431313861223b733a33323a226332383639313765616561343830396433313438333939373638656261643432223b733a33323a226537656236343566353038303030396631336131653030623432336139663062223b7d733a343a2268617368223b733a36353a2265376562363435663530383030303966313361316530306234323361396630622d6332383639313765616561343830396433313438333939373638656261643432223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313335323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31333a7b733a33323a223734643062623234326362336634363537343432353633623936313236656630223b733a33323a223935356433386462343030343466626431393466333634386639303164653563223b733a33323a226238636438633130663162323835343365373965323731663037323534643632223b733a33323a226436616530643032353336646634396637333637656362386634316333663239223b733a33323a223332383666383731346562663934646436326163373430336439343036396332223b733a33323a223030373436666231326263303362393230356166326466613661303239323964223b733a33323a223564656334613736396465393462626130623266383464373962373765386430223b733a33323a226236373232653861656236363333643930333238383539313533323335343061223b733a33323a223430386537333230316339626563653366373439303866363962376431396164223b733a33323a223361376661653134383635333239363062316439373137363435366639373935223b733a33323a223739623166626362343930373762396532373034383037303962646561366635223b733a33323a226461653733656233653735653334393235643135323838633661313864303431223b733a33323a223065323134643265396438643839313463653235396235353736383762626334223b733a33323a223135363764633964666435393730613762323934383037636465323562363861223b733a33323a223064386230656138306430393362346339633538643536333634636632343034223b733a33323a223034333235633331373862336337396363306438343062623630363664346634223b733a33323a226435303130356338663432383064616439666263303331643161613538376335223b733a33323a223864663562323531366161623066663262376465333265336562643438386364223b733a33323a223261613231653832646134633365363866613037353661326438366334636538223b733a33323a223431623762343235366463303238313832366133313033663839323832343639223b733a33323a223530663036363162636436363661316431383639353565373164636261653832223b733a33323a223066313235623738623765393063656262353237333238633633346334613537223b733a33323a223639316666376139663630346261346139623034376334386636633536333732223b733a33323a223035336466623661343561316131633835653266376663623532656366613532223b733a33323a223865613739303361393339623263613030333831313362656534386438353264223b733a33323a223436313064356532383034313564343663663161363330626130386639333134223b7d733a343a2268617368223b733a36353a2234363130643565323830343135643436636631613633306261303866393331342d3865613739303361393339623263613030333831313362656534386438353264223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a223064356437313339363364396539366633653830313066666364313337353030223b733a33323a223537376165346564363533313362633136613636363931613164393062356430223b733a33323a223530623563643236376537623532393235313063363666623137623237306335223b733a33323a226234313465303765306463316162616664666638646635313235396266643537223b733a33323a223333623737623437323564663238636631626235633066616239383666653562223b733a33323a223837333963306232623831373462646437346131396433663337333662633464223b733a33323a223432376566306134326264333162353366393636656266663631333236623038223b733a33323a223739653930626331353461663733306164633263303665646464663063353265223b733a33323a226638623362653633313661306363656163663735323766616638363032353230223b733a33323a223631383263656232383130303531323263383132363431643534393363303236223b7d733a343a2268617368223b733a36353a2236313832636562323831303035313232633831323634316435343933633032362d6638623362653633313661306363656163663735323766616638363032353230223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1588203097);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('c4g6cvl48e2v6prcpj2dbc6ton', 0x5f5f5a467c613a31313a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383039323232302e3039363438393b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2273707466637135303264323867366f686c317033726674666e62223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383033353032383b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383034373734373b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538383034343131303b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383034373735323b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383039353832323b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383034363936373b7d733a31313a2245617379496e7374616c6c223b613a323a7b733a363a22455850495245223b693a313538383034323239343b733a31313a224558504952455f484f5053223b613a323a7b733a343a22686f7073223b693a31303b733a323a227473223b643a313538383033383639332e3533373036313b7d7d733a34353a225a656e645f56616c696461746f725f437372665f73616c745f637573746f6d766f636162666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383034343036333b7d733a35363a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383034323539303b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223566633131653738363638666231616232393563343364353564353637306230223b733a33323a226138323766386431366536376364383265363934613436306363386132356433223b7d733a343a2268617368223b733a36353a2261383237663864313665363763643832653639346134363063633861323564332d3566633131653738363638666231616232393563343364353564353637306230223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a393033333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3130393a7b733a33323a226332343935303638323765646330363865643261353137313832316532336139223b733a33323a223565396230646536643764633065393664656138363532666437616434646336223b733a33323a223634343835636635373333356332343734643233313437343537653061616365223b733a33323a223034623764663331333033363536666533643334363938383132313331376336223b733a33323a223866623564656534353637383335666234653035653063663161303430373237223b733a33323a223134343436643432643635633032383866363262623731623864643239626331223b733a33323a223231373362646365613532623139643237373966353935636261393564386362223b733a33323a223463353933303530346131393364626433306533653730653937653634363865223b733a33323a226531346138646263363061663164303765613166316131353866366238333133223b733a33323a223632306233313132343734343061633039313932653362323134653437366661223b733a33323a223664396665376266653638613763393566633166643731633237306262626336223b733a33323a226566306232613062396132666361666164663933333137323266613336653361223b733a33323a223134343732343366633631643438656664306362396435623265626461366337223b733a33323a223062653063643839616162313232623062333134353034323764383463396434223b733a33323a223434333135666362363437373533343831653934633866646264663539386230223b733a33323a223866386138373631336531336436393164663464656533656639636461316362223b733a33323a226636616334643731386630663062616266333733376236313435323232303866223b733a33323a223731353962653364316439653137666462383565356637633464393763613339223b733a33323a223633303166633935366631633538636132336362306230396564613634363536223b733a33323a223631636638353932623738366532623763656463366164373635386435636466223b733a33323a223330643966373231613461353433313862646435623635663763643664383962223b733a33323a223564346432643861333034343230373365643438346534626533353037646630223b733a33323a223465386263366637343033356132316634623565356639333238363866393863223b733a33323a223637393264633737643433376533383631326662303365373235333331366264223b733a33323a223466633236653566393764666462633031316639356461353162613164656235223b733a33323a223530646663626539633330303264356431356237656166626535323630346466223b733a33323a223239336337643661373132653461666265343434336531616535336663373461223b733a33323a226636313863373862306335393432383238343862333065353262333763623834223b733a33323a226562356362613265623938323830616565363866613434636563613034643332223b733a33323a226161643437653633636162663836363365386136663038326435633264613839223b733a33323a223762633762636636663334333233363539363835643062303466393562333163223b733a33323a226637353033346365373631666631363137346330656239636266396362646231223b733a33323a223863303539306461613031303061623762663239623233666236646638356231223b733a33323a223839626162313637646632653531366431333663346238363633333731326339223b733a33323a223538633130323831623237363733353637346262633261613835353765636361223b733a33323a226137626466646461306234303064333132653062376534343361386232613736223b733a33323a226536346361373739336339326162633266616361633131656165383432656437223b733a33323a223338303264326331326366646536363232336430333235333437363033333633223b733a33323a226566343063616265383466626230336663323664313333363736373137636233223b733a33323a223031376637396430343537326364633836633436393865656263646665663132223b733a33323a226231306163353063386263623339356437653664336563383032353234626130223b733a33323a226331366565636537336565323963373766613737316563633962363736316638223b733a33323a223861636434633934366164663165323933386234653835353836616365316339223b733a33323a223166356261356335666635626439616630366566303039316630363433386263223b733a33323a223562663065303139623931343462666634623461303734623566653033626535223b733a33323a223234623234356262376330363234316530396432623436393435303062373334223b733a33323a223838623261363433326565326366623039333263386563396530393964323737223b733a33323a223636306563313264353431306334386339326234343961366133653161343235223b733a33323a226430363136373562333262323631393632303663366639343030393264303061223b733a33323a226362626232376634643832656661303230366432303430323961356430356162223b733a33323a223065633334383965366130626165313637393263303166366538323839643131223b733a33323a223264653531336532373438383064386334303836326264353536343334363632223b733a33323a223330313062343563656263363334303066313937616561616630373238366435223b733a33323a223064313064613961626339336364313963343239366338333431666536373730223b733a33323a223564353134343933366139653833616433373238643038663137633734376232223b733a33323a223935386566316534303630323032303232373332393630356462393538633965223b733a33323a223963376335386163363261353561323133383039306134666339333161373738223b733a33323a223064656361373638353866643235346264323237613766353566366530333633223b733a33323a223635366337643335353335343632326532323435343737663838646239643231223b733a33323a226562393138333031313039643930376565383363623732343562656363346133223b733a33323a223964396264633536653764306531303230663935383139326666656462663261223b733a33323a223336306338663332623235303730313639316432343632323633613162313430223b733a33323a226333316439633231393861346536343232336266633563636532346561306237223b733a33323a223762323962623563376137313061396230643061623336663466316264373036223b733a33323a223336623934393239366134353566386466643836396332653164336432326535223b733a33323a223538613332313136333233643165666562643061383538343636613532353330223b733a33323a223538663132633864376233366338343164333834396539383365366430383737223b733a33323a223966633331313438393963633065666439313132333634303432623733613562223b733a33323a223064393039353233303337383864313261666638326136646562643130383166223b733a33323a226134323733653364323137386638353366653338376463363964333634346131223b733a33323a226234326432353836653933333961333130363736386139633638366230393734223b733a33323a226634383565393434346334316264656431313661363232666366633237306638223b733a33323a223564383835613131356335353333663561663238353034663966316563666562223b733a33323a226531663666363331313935653234323261373730623763626131323130333661223b733a33323a226466636439303833666638353961666130643039626238623230633834653634223b733a33323a226666303363653263383531363337396638666364313663393361313539633666223b733a33323a226139643364393838633030353061633730373038636530363531633532323238223b733a33323a223363646435326634316365393463663163393939653664633162323338336632223b733a33323a223238396364616438653830336661323131383532326539376637633731306130223b733a33323a226565633830343531663731353666653830636436646238363666653732386532223b733a33323a223735633666366538653566323932393731303636326563646265393833646332223b733a33323a226166303434633030333661333537303637333266653531313532646538303936223b733a33323a223862356433613862353438396230336436646136393930356662346635373039223b733a33323a223734306666626337353133353865333532643965353830633535313538643739223b733a33323a223165346135613663353732613535376432626237653135616534333935363864223b733a33323a226230643432343261303762636563346161336364363631346366323065313036223b733a33323a226463366439366537613737363034313534373164643762326563646632636234223b733a33323a223763343261396430333130313738346432306261393034326264663935646561223b733a33323a223038393339323532626461396533643734356665346530633939353632326134223b733a33323a223762393762353238326464396232343131383265626531636634663734313961223b733a33323a223635346636323262303939393837366665383433386235373662306630343134223b733a33323a223932363262363265383131346633666362333464653663653366303638356663223b733a33323a226130643336316335343131366638363630353864656264343339376134613661223b733a33323a223261396637663238366532323134386464616333353837626430333531643538223b733a33323a223962363466643532306534363465656634386538313662366534353766316361223b733a33323a223466303765643966343633623562363862333565626137613464363438396464223b733a33323a223565306662316436626564313363626233643764343939333266393432316361223b733a33323a223931333161343338316163396531396461653935656137353265653362333533223b733a33323a226264643165343437663363353765346265336531353535396661376463616163223b733a33323a223933616562346266656238363735316666353964633138323439613961313934223b733a33323a226161663966353739306466396332613663376439303962613731623364333663223b733a33323a223139383564316237663063343961313664326439353562383233393063356230223b733a33323a223366626430633836323565356532633762633366626164356535336139646639223b733a33323a223632343465376632663538616334313336623836353566323434383763303137223b733a33323a226635636361663463386631373032383161346364376265613765653662626233223b733a33323a223639366234316165363237616464343930393266613037653131316564303731223b733a33323a223865393466646436633938643830323165346130386539383765363263333565223b733a33323a226266666330653535626436346164333165386638353935653837623961313361223b733a33323a226362393533386261323937353165356335356638663838313463383365393538223b733a33323a226334346430363037643861336637303836653764653462393732633639363238223b733a33323a223164303338323735363966626261386262393739613462366166343138313962223b733a33323a226166653534386631316338633838613965646261376535333964303539646535223b733a33323a226666373338663562376564633331363064623739306634666334643232626537223b733a33323a226365343662366238396663346439353934646166396537313537363231616665223b733a33323a226438373066366361303861303263636162396162346362643931633764346235223b733a33323a226435346434306264646439643937333038303637383963386138386332323034223b733a33323a226464653231626438366437303734326332336463316638646438323236656365223b733a33323a223738666166316433653834643563363463306161323434666164666163383733223b733a33323a223666643239396632393038616637643166353761353365643337623262643231223b733a33323a226439666265373463313566646162636363633031393066666662663239346162223b733a33323a223262653963383033633864386139353762303231613362343961306337393866223b733a33323a223136643539653166376536326661363938353961626666343264363130393863223b733a33323a223765306466393831383863666434383763383761653166333263323630623437223b733a33323a226264643466303564393561306563643137333331313131303730343335663234223b733a33323a223465636438366438363566323731633530356531653562333661343265653933223b733a33323a226261343033393662353330353430613665643361313766653866656365613738223b733a33323a226432643662333437393461656238366561326363363765616231386231663230223b733a33323a223862316262356137636261363033313234663339653931663735373531383839223b733a33323a226462363735363561306530326436313263303539623437666538666531373831223b733a33323a223838653166336138636532653639326164373765393165343235303435636662223b733a33323a223362376465643765656439376430363861613733633639343830346164333262223b733a33323a226564353861633933636433303537643763636462316262653031626361373663223b733a33323a223038623337396631616664376536353966623838663564303532343436633232223b733a33323a226664323635653532613232333237333761343336663235386161666437303666223b733a33323a226437363863376563333236383333633261386561353339333134393835383439223b733a33323a226165623538626339366533346236373865373031353939366331353431653463223b733a33323a223162306162313763323861306461313030616261346436373662306161353534223b733a33323a223335663633366139343132326339363730643062656134366632396435336464223b733a33323a223566636330363938373837376135666639303662353430633934313362396430223b733a33323a226339313333373863306364333936626566663930363463346430323730373533223b733a33323a223566393638663232303838343738333265356134336665306533356237333363223b733a33323a223462356538633563636537316662653130656337306433633865363865663239223b733a33323a223935396339656439336630366562333235626336323934336666393735386661223b733a33323a223437343964666231663861343736633432643435656566363663306336333162223b733a33323a223064333330323835366434376537326239396437303566303732646164383462223b733a33323a223763323562393330333366346561313930323332343031303937646163353561223b733a33323a223264346261363434316465373862386633323539333232663937316563303138223b733a33323a226463326366626339613836626532386634306130626561636663376662356539223b733a33323a223331646237316132376430343434323264363963613562323535316537396437223b733a33323a226536396432656534656431616465646231643163363535353861353066623762223b733a33323a223362343535363365383666633031626362636463636161613366393031363436223b733a33323a223430376333326334653965653438363534343863643864666132353631393931223b733a33323a223031356662326239323231623236353232356561316366643563306132663835223b733a33323a223936303635346364383034636663663861386637393537623236303436366239223b733a33323a223161303133346234316234613165393962303337333239613064313465373562223b733a33323a223031613763373535653363653336643533356563613963373031303366323662223b733a33323a223865393032646633653361313135396230613165323364376631343739663766223b733a33323a226266393962303430623136646666353437643038646433303437353631383232223b733a33323a223766613638643663306364366633353564623863303462366636313730336463223b733a33323a226265366431386162386566623162393262363163383636326532663539323134223b733a33323a223432333432633261613361363139613533373263643933336163376135373834223b733a33323a226666623037633864646262333839666461356135313564616364613937313264223b733a33323a223239613764333336323436343530653332303034666637316333393730613761223b733a33323a226334656135306534626333346135623364656138373534366530393735373736223b733a33323a223262356564356161373538346235356137363232663465633736393062666335223b733a33323a223539666263346466303934313261363336373061373464303036663665353764223b733a33323a223532653235646638336265363233623364353830323466653035366261623631223b733a33323a223933393962613261663838396162343762626233326338393233383236313138223b733a33323a223963393764643336383063613332373962393235313163613339356664383664223b733a33323a223065653931313966663030633462626637643132316331323230653136343338223b733a33323a223535316139353761663762303637376365653834643737333035313537313034223b733a33323a223163343037373438323135346462336634336336636664616362303661326531223b733a33323a223339353638653139343230363730353631363664393839363632316261353333223b733a33323a223238313961386530323931643130313966666434663463366339363062633239223b733a33323a226337353664343064376136323032333661383638393534613765323464383737223b733a33323a223835346532363536376534626466616332346362393636346264623163363038223b733a33323a223535633263343861346330333237643037623962316561396431303066613164223b733a33323a223439366232363935626434396166616636653763386132356537613234666634223b733a33323a223135393633323135663933353365623535636132666664336436313230636166223b733a33323a223866393066386339373435336436386364343336653466656663316130306531223b733a33323a226330313537373632633331353536363438313263643531633532336261386235223b733a33323a226233333038666264313534613530353538353038353462303532366436646662223b733a33323a223865323137623561313563316530396436623234313862323138636464353735223b733a33323a223762393036386337626633323532353338346166383566363330336634623966223b733a33323a223830623033643964393965643164663436663033393764373532313631376633223b733a33323a223734396139333635333465393861626565343432386232643964646637623461223b733a33323a226130666437396430643132616130373964373563323262313134616333646663223b733a33323a226438353632383633326165303565323039336436333730613662393235363433223b733a33323a226565323435666230656362663261646235343166636637373165336439363163223b733a33323a223965373461656536396466313137373832366435666135663331636165653633223b733a33323a226631386535626264313730363762346539313638313731313330393433643734223b733a33323a226331636561383563663133656162333062383638663738363531316461383531223b733a33323a223132373731393837373130376635623531376631323837333661366461393239223b733a33323a223265333233633562633931356666613136643036383135363531383561653235223b733a33323a223533306637393436353264663264653466653961396266303630616639373736223b733a33323a226561343438363831623136303835343164643136343864626637306536333034223b733a33323a223339336439333938636464383166313066333339336237656330636665356436223b733a33323a223161386632613734653061346531633334393035666265633831303739393632223b733a33323a223631613434376263646162613238363565663239353234623037323166383933223b733a33323a223033633435636630393535386465666434643530393139613134663863626363223b733a33323a223137643564303463643435623063343430376463393364303139623533626232223b733a33323a226233343430383638306531343065653337613331653134663266393730333135223b733a33323a226136333364626336663063333634323831356236303865353432386463336333223b733a33323a226262663232613236613563313737356330353661663033396163623338656338223b733a33323a223839353737356639643534653237373866646131313134663436396531656235223b733a33323a223839326639353262623635393839626564386661636434616533346162656662223b733a33323a226632666136326334653638336637386631323062316363396236383632363930223b733a33323a223235393730623732313337313432306639333665663562376537316231376137223b733a33323a226335643336633736306566663934656233666330346339376562373765666366223b733a33323a226362336136373861303566643565323165383437353339636131386338336238223b733a33323a223434653961633265356464663430643533393066313163326461383539383366223b733a33323a226563623538613763363263326536323363316466383436336565303864663234223b733a33323a223163326637616162653330326363616364396630343532393264326262343430223b733a33323a223761643436633337636132376230396234626464383266616530313236336664223b733a33323a226262383734313433333439303363386239353264393237353636626161663035223b733a33323a226533323430376533346434666536616236643564333739336563376437633061223b733a33323a223965336163363430323635643235393764313736656363376362363034636431223b733a33323a223963626564343763323139383061383035373337356138613830663034326266223b7d733a343a2268617368223b733a36353a2239636265643437633231393830613830353733373561386138306630343262662d3965336163363430323635643235393764313736656363376362363034636431223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a333735323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a34333a7b733a33323a223561386137643265666465366338633962326366323632643733366461636164223b733a33323a223536636531373163386535356137303464643264323064316663343166313465223b733a33323a223237353831656234356238663963643535383936333331343835366233346439223b733a33323a226562383635613064653038323837353864386336343031336364333938663266223b733a33323a223739313739333734373535373035316461326236323461326564396466666662223b733a33323a226565323861393439386231336261333333373435633237663562393161616634223b733a33323a226161343562636531323539373731366534313763323938316366626539643239223b733a33323a223465373331663434633330663439323032373061393336636635386332386163223b733a33323a226638306662383233306135303131613638393763643435363934653939366565223b733a33323a223165363164303437356162636561373138343464393563663966366135366530223b733a33323a226635316334323361376535313862643133323066353662663437613739623732223b733a33323a223530303230373636663137383436343764396330646239353932633862613438223b733a33323a223337623136376563346131663864616330313032303735656134346534393962223b733a33323a226130393834656533393839356663656563353835663238326664653135336539223b733a33323a226664646661653030383565633137343235393633313166623835303863656365223b733a33323a223339633636633965633734393037313466396462383039646366646630646361223b733a33323a223739626365383734376438343134386534363931636636636361656435363931223b733a33323a223564346534653163623333323034386132666533373435343462646164386338223b733a33323a223734373464386338633864373337643661653135323162663865316331323736223b733a33323a223365323662363633623966343732636361646266623130353238616466626330223b733a33323a226436303833653632353233306532626132316532656231353661313537373363223b733a33323a223936666262663038653938373262663834373263333333346362616332333136223b733a33323a223833306366316661333939656636393832393034653732333061336133613632223b733a33323a223562336464383631316632346230383430653832353232663132326635646330223b733a33323a223864616564326261623361663336383534373433616234326663323564346662223b733a33323a223637363035633436646335323233356165663764626439653234346433383664223b733a33323a226130323431393231366263316331623639333336353735666566366533316133223b733a33323a223762396134373561346530613937313137363339643666333465663362633437223b733a33323a226134663134386138346236643864343064363762303138336631356564356331223b733a33323a223730383762333366356462316662646235666231386634363932663764636362223b733a33323a223063616334306563663462306561376162633661383662336536366632363563223b733a33323a226362343135393664346431373466646266663738656134343134666533633836223b733a33323a226634333737383535373663643037336132653762306663643566333136646437223b733a33323a226163663936336332656130376534633531666334623536316639323264356561223b733a33323a223463356237633033356138656330663035666435303165383838643464336531223b733a33323a223032393337303865616331326138393637333063616261616330363265633131223b733a33323a223833383664353462616134643932636364386331343634323163656637396562223b733a33323a223930666437333963343539343634303336343862666461666632653530323230223b733a33323a223330666664396233373033633431323763643637623131396464373032343233223b733a33323a223531633933646462313461373537306166396335373939613533383665323763223b733a33323a223332363564353666366161663336663633653230306536643139636239376430223b733a33323a223663316564653931653833653663626137663533303235353538336566346262223b733a33323a226365653435633862346338333066363530656136363437396431306539323332223b733a33323a223434633565646137346436306431336331376637303863653939326638643533223b733a33323a226132303761653035613635666532613830633632353037363036666566343061223b733a33323a226334653061623535613730396432333032643035633866393139643834653938223b733a33323a223037323235306161666437646338663130326363316233393031613164353236223b733a33323a226238653832666265653463653037343864346532373864373039316661363937223b733a33323a226436656233653761313439363031333731626437656665393738313261373062223b733a33323a223137333435663462663063633463306164313434653335616436333330323230223b733a33323a226462623966366362656161303363303231376463663637323939333833373935223b733a33323a223331396662623032373165646465653563353430643131336233373365363330223b733a33323a223339663933393132646432373531303933633030613362623135303731643163223b733a33323a226362636337613462313162653335303239626134353033326565353066393732223b733a33323a223731353063346436633066316339626431363264306131303835316365666338223b733a33323a226661306363356263613732326233323532396535613339303135323934633338223b733a33323a223236613839663865613233613537333033353532346439353137346164383363223b733a33323a223035613331306562393136643762636631353063343138393664653331616136223b733a33323a223735663638336135643431323764396631323166333163393962336464613936223b733a33323a223063633235663930363162386436323538346338343939366365326666326235223b733a33323a223232343632323031393466306636306338626638346565383836336362316334223b733a33323a223536373732623330386465626632356339356439333436643435393765363363223b733a33323a223036653833303664346634613031616434393031613965646663333463333935223b733a33323a226138663765343261363262633961616438386431393861613761383766373366223b733a33323a223333623466393730326162326366376430663133346534633666633235666563223b733a33323a223537373862666364326165643464386435333131626336646665336664626339223b733a33323a223838656363636535626666656333653734393136646561316264316238393462223b733a33323a223338656339333462613732323333636564646166656634366666343962316532223b733a33323a226561383437343031663161653138663635376565303130333230353162633331223b733a33323a226461326161373965363739646239343132643561383862346164623031636138223b733a33323a223463303537363937643966613331316132313733366336396435663338646633223b733a33323a223232363466333930363666313761363437303562396461373362333066373366223b733a33323a223465353263653135336263396261346461303735353038333933343739333266223b733a33323a226238613139386265356466613362363765633934376261323632646138353037223b733a33323a223662346539356634636162613034656239666332323962323237346137333534223b733a33323a223431326135623961323939373434636133303266393664376239396266396565223b733a33323a223632396139396266383563653964393838366135373539366338326135623062223b733a33323a223164636466636135633864316439656666653732633134383433373462393137223b733a33323a223363373036643839356538653238393538636262613462353161373365343262223b733a33323a226563633166383032646461316230613231313630663762343862636130653562223b733a33323a223433393065643438323064323332343664343237613561393632663665646163223b733a33323a223637356465326231613936383163306362646532353161663063633830333031223b733a33323a223332643031373734353631366532383839373130303764376666623037363065223b733a33323a226262643935306662366661383365366236376335613763376636313130313464223b733a33323a223534396166366664336135333864363734376539363133633961626430376430223b733a33323a223765306561356663393733663037393962633463393561316663633339636166223b7d733a343a2268617368223b733a36353a2237653065613566633937336630373939626334633935613166636333396361662d3534396166366664336135333864363734376539363133633961626430376430223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313335323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31333a7b733a33323a226530313765343661353034613563613465623434313435383934626635346539223b733a33323a223161353264356266663562666630353238653466636365376562373366356432223b733a33323a226432336663386338333734316163353032366339343430653137366431613965223b733a33323a223733383635613862356233313330623361393961396464663032633934656530223b733a33323a223661353263663334643737663065323234643437306264386366333961356139223b733a33323a226562643734646636626361663261646361356663636262643039303861356335223b733a33323a226236663966633161653566313062336366633437356637646437313864363839223b733a33323a226232323531343033633834626334643333323536383166623565376338396135223b733a33323a226265343432623263653735383039643731353334393732386139633365353362223b733a33323a223130323038393361366262646265636538383265383134386133653935336136223b733a33323a226533353965336163613439376566633166313530316231646631653361323031223b733a33323a226430313338653638633934633137333838383263353636323865663430623466223b733a33323a226266396238366333623437303864663966366632633162373832306461356436223b733a33323a223435303565323764353535303561336564306138323362363838663463636632223b733a33323a223634623664303665633239333330303533386338363963336633396232326261223b733a33323a223632353938346438393531336133303930393537636539383964336461303463223b733a33323a223138303830363033336135363235326335626366623332396163306230623234223b733a33323a223163646631623730666661653634663962313937356232366261633031343866223b733a33323a226466643566626630616433656261336536386361643937653233313862633030223b733a33323a226264656165636232386262643138653166393035333130373931383334303866223b733a33323a223830653735353237376464323636626232363366353263343730386436373262223b733a33323a226364653436343162396362666232333937396564616634303630353732323531223b733a33323a223061356563316136353034666561396465643764613863353364623466613432223b733a33323a223130333536353238326265353039373637363766303562303739633364333463223b733a33323a226238343561336338626638373363393964613866393834313435643635656233223b733a33323a226261386337306466613930316464623837396665653233303639386239343361223b7d733a343a2268617368223b733a36353a2262613863373064666139303164646238373966656532333036393862393433612d6238343561336338626638373363393964613866393834313435643635656233223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226463613533316630643731643531323532396166393436386131666331613665223b733a33323a223335653231666130323631366335333962383031366136636564363831383038223b7d733a343a2268617368223b733a36353a2233356532316661303236313663353339623830313661366365643638313830382d6463613533316630643731643531323532396166393436386131666331613665223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226537313136306666333763356131623965316631393530343364616266656366223b733a33323a223163376239663363343934396434616465636333313063626665613330323031223b7d733a343a2268617368223b733a36353a2231633762396633633439343964346164656363333130636266656133303230312d6537313136306666333763356131623965316631393530343364616266656366223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d45617379496e7374616c6c7c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3331303a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a363a226164646f6e73223b613a343a7b733a31313a226f6d656b616d6f64756c65223b613a303a7b7d733a31303a226f6d656b617468656d65223b613a303a7b7d733a363a226d6f64756c65223b613a303a7b7d733a353a227468656d65223b613a303a7b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637573746f6d766f636162666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313237323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31323a7b733a33323a226166666135323136343835616434646431313935373735643966376130383464223b733a33323a223730306335373862393236646436343037363834313939353636366437653035223b733a33323a223734393964623466333737663831646163383234366336333334643330333038223b733a33323a223864336364353065366635326466646436623162313133303265636531363837223b733a33323a226266346662356464376362383239343637383538363033336138363331346138223b733a33323a223031373262383030646335333233643333323536333634363665383332653862223b733a33323a226265366163383261396136353165333233653930323836643336343232326434223b733a33323a223231633836633039316662343131313363653262656532393035336266643536223b733a33323a226234393038333036363365653336336433616431333861353437643666363061223b733a33323a226265663935633630363132393034376132643039646438333037343537353262223b733a33323a226235363735313663663639653965316232316630626633376432636435663736223b733a33323a223961343132396531323739386136313332666436356637653462656530653538223b733a33323a223636343733373538336232316161643432396263663939333036333863613131223b733a33323a226631326161323266613135363964613833356231313062366666383436623566223b733a33323a223266626531363336333334323630383932383965383339343435353661343135223b733a33323a223034646330373830663966386636663734393232613835313839333066373764223b733a33323a226530373766373164656330373838323932623231383332653536373336346430223b733a33323a223162373363366236383032623266363765346435613835326665393361333633223b733a33323a226266333232383064643762623464323963393133386132343536646438303866223b733a33323a223538323664626336616235363732326535346562313564633261316435353032223b733a33323a223166393265663563396366346464346634613537323639323232653037333364223b733a33323a226366623630646461613633636231626333333738373764383965383836623561223b733a33323a226437653333356533346137346630366637376538663364396430343438383462223b733a33323a223663363737646239656132616339616430393739646334616336363364643065223b7d733a343a2268617368223b733a36353a2236633637376462396561326163396164303937396463346163363633646430652d6437653333356533346137346630366637376538663364396430343438383462223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226239386539626630663662343732353837353532336463343866646465323237223b733a33323a223238336639303934373332376436666464623734383034633633613031653835223b7d733a343a2268617368223b733a36353a2232383366393039343733323764366664646237343830346336336130316538352d6239386539626630663662343732353837353532336463343866646465323237223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1588092222);

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
('administrator_email', '\"walbech1337@gmail.com\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"Omekas_s 19-20\"'),
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
(1, 'walbech1337@gmail.com', 'Walid Becherif', '2020-04-27 23:50:27', '2020-04-27 23:50:27', '$2y$10$x7FI2TJeii/Y/GNrd665vO1Wbg6qIumvlbXdvM7n8U8bGHE.KvSUe', 'global_admin', 1),
(2, 'samuel.szoniecky@univ-paris8.fr', 'Samuel', '2020-04-27 23:54:03', '2020-04-27 23:54:22', '$2y$10$UovWIurk8Dru.eKMhv56GOdE/ufnksRlJbywqVW5QfbHXwCZNVCem', 'global_admin', 1);

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
(1, 1, 108, NULL, 'literal', '', '12345678945', NULL, 1),
(2, 1, 139, NULL, 'literal', '', 'Dupont', NULL, 1),
(3, 1, 140, NULL, 'literal', '', 'Tartempion', NULL, 1),
(4, 1, 251, NULL, 'literal', '', 'Paris', NULL, 1),
(5, 1, 260, NULL, 'literal', '', 'france', NULL, 1),
(6, 1, 146, NULL, 'literal', '', '0600000000', NULL, 1),
(7, 1, 296, NULL, 'literal', '', '75013', NULL, 1),
(8, 1, 1, NULL, 'literal', '', 'Client', NULL, 1),
(9, 1, 4, NULL, 'literal', '', 'Client', NULL, 1),
(10, 1, 6, 1, 'resource', NULL, NULL, NULL, 1),
(14, 3, 1, NULL, 'literal', 'uh', 'ok', NULL, 1),
(15, 3, 1, 3, 'resource', NULL, NULL, NULL, 1),
(16, 5, 108, NULL, 'literal', '', '8894165489', NULL, 1),
(17, 5, 139, NULL, 'literal', '', 'JOHN', NULL, 1),
(18, 5, 140, NULL, 'literal', '', 'DOE', NULL, 1),
(19, 5, 251, NULL, 'literal', '', 'NEW YORK', NULL, 1),
(20, 5, 260, NULL, 'literal', '', '45', NULL, 1),
(21, 5, 146, NULL, 'literal', '', '+4 454 486 486', NULL, 1),
(22, 5, 296, NULL, 'literal', '', '12478', NULL, 1),
(23, 5, 1, NULL, 'literal', '', 'JOHN DOE', NULL, 1),
(24, 5, 4, NULL, 'literal', '', 'PERSON', NULL, 1),
(25, 6, 297, NULL, 'literal', '', '879548/96', NULL, 1),
(26, 6, 298, NULL, 'literal', '', '2 ALLLE DE LA REPUBLIQUE', NULL, 1),
(27, 6, 300, NULL, 'literal', '', '92600', NULL, 1),
(28, 6, 302, NULL, 'literal', '', '+33 145098412', NULL, 1),
(29, 6, 301, NULL, 'literal', '', '+33 186486134', NULL, 1),
(30, 6, 299, NULL, 'literal', '', 'Palaiseau', NULL, 1),
(31, 6, 1, NULL, 'literal', '', 'fournisseurpalaiseau', NULL, 1),
(32, 6, 4, NULL, 'literal', '', 'fournisseurpalaiseau', NULL, 1),
(33, 7, 305, NULL, 'literal', '', 'Jeuxvideo', NULL, 1),
(34, 7, 304, NULL, 'literal', '', 'Witcher3', NULL, 1),
(35, 7, 303, NULL, 'literal', '', '111111', NULL, 1),
(36, 7, 306, NULL, 'literal', '', '60', NULL, 1),
(37, 7, 307, NULL, 'literal', '', '30284', NULL, 1),
(38, 7, 1, NULL, 'literal', '', 'witcher3', NULL, 1),
(39, 7, 4, NULL, 'literal', '', 'witcher3', NULL, 1),
(40, 8, 309, NULL, 'literal', '', '11/05/2020', NULL, 1),
(41, 8, 310, NULL, 'literal', '', '12/05/2020', NULL, 1),
(42, 8, 311, NULL, 'literal', '', '158616846', NULL, 1),
(43, 8, 308, NULL, 'literal', '', '43124156', NULL, 1),
(44, 8, 312, NULL, 'literal', '', '1002351', NULL, 1),
(45, 8, 1, NULL, 'literal', '', 'commande43124156', NULL, 1),
(46, 8, 4, NULL, 'literal', '', 'commande43124156', NULL, 1),
(47, 9, 313, NULL, 'literal', '', '3', NULL, 1),
(48, 9, 314, NULL, 'literal', '', 'Jeuxvideo', NULL, 1),
(49, 9, 1, NULL, 'literal', '', 'categorieJeuxvideo', NULL, 1),
(50, 9, 4, NULL, 'literal', '', 'categorieJeuxvideo', NULL, 1);

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
(5, 1, 'http://schema.mobivoc.org/#', 'mv', 'Customermv', ''),
(12, 1, 'http://dbpedia.org/ontology/postalCode', 'postal', 'postalCode', ''),
(18, 1, 'https://jardindesconnaissances.univ-paris8.fr/onto/fup9', 'fup9', 'Formation Université Paris 8', ''),
(19, 1, 'https://jardindesconnaissances.univ-paris8.fr/onto/fup10#', 'fup10', 'Produits', ''),
(20, 1, 'https://jardindesconnaissances.univ-paris8.fr/onto/fup11#', 'fup11', 'Commandes', ''),
(21, 1, 'https://jardindesconnaissances.univ-paris8.fr/onto/fup12#', 'fup12', 'Categorie', '');

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
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`NumClient`);

--
-- Index pour la table `custom_vocab`
--
ALTER TABLE `custom_vocab`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8533D2A5EA750E8` (`label`),
  ADD KEY `IDX_8533D2A5960278D7` (`item_set_id`),
  ADD KEY `IDX_8533D2A57E3C61F9` (`owner_id`);

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
-- AUTO_INCREMENT pour la table `custom_vocab`
--
ALTER TABLE `custom_vocab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
