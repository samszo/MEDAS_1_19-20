-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  jeu. 30 avr. 2020 à 15:57
-- Version du serveur :  5.7.24
-- Version de PHP :  7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `logements`
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
-- Structure de la table `demandes_logements`
--

CREATE TABLE `demandes_logements` (
  `id_demande` varchar(16) NOT NULL,
  `agent_id` varchar(16) NOT NULL,
  `date_depot` date NOT NULL,
  `date_validation` date NOT NULL,
  `nb_personnes_loger` int(16) NOT NULL,
  `type_1_logement` varchar(16) NOT NULL,
  `type_2_logement` varchar(16) NOT NULL,
  `code_insee_1commune_souhait` varchar(16) NOT NULL,
  `code_insee_2commune_souhait` varchar(16) NOT NULL,
  `code_insee_3commune_souhait` varchar(16) NOT NULL,
  `code_insee_4commune_souhait` varchar(16) NOT NULL,
  `code_insee_5commune_souhait` varchar(16) NOT NULL,
  `code_insee_6commune_souhait` varchar(16) NOT NULL,
  `code_insee_7commune_souhait` varchar(16) NOT NULL,
  `motif_demande` varchar(16) NOT NULL,
  `statut_logement_actuel` varchar(16) NOT NULL,
  `montant_max_logement` int(16) NOT NULL,
  `exclusion_etage` tinyint(1) NOT NULL,
  `exclusion_rdc` tinyint(1) NOT NULL,
  `nb_chambres` int(1) NOT NULL,
  `ascenseur` tinyint(1) NOT NULL,
  `cotation` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `fulltext_search`
--

CREATE TABLE `fulltext_search` (
  `id` int(11) NOT NULL,
  `resource` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `text` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(1, 'item_sets', 1, 1, 'Agent1', 'Agent1\n123456678\n93066\n93070\n93071\n93072\n93048\n93050\n93049\n01/02/2020\n05/02/2020\nOui\n23456781\n500\nNouvel enfant\n4\nLocataire\nF3\nF4'),
(2, 'items', 1, 1, 'Agent2', 'Agent2\n12457890\n93040\n93047\n93048\n93051\n93066\n93070\n93072\n01/01/2020\n01/01/2020\nNon\n67549003\n700\nAppartement trop petit\n3\nLocataire\nF2\nF3'),
(3, 'items', 1, 1, 'Agent3', 'Agent3\n69031762\n92002\n92004\n92014\n92019\n92026\n92040\n92048\n01/01/2020\n01/03/2020\nnon\n4839963\n600\nRapprochement travail\n4\nLocataire\nF3\nF4'),
(4, 'items', 1, 1, 'Agent4', 'Agent4\n789365702\n93066\n93070\n92002\n92004\n92007\n92060\n92063\n01/03/2020\n02/03/2020\nOui\n7402709\n500\nHandicap\n2\nLocataire\nF2\nF3'),
(5, 'items', 1, 1, 'Agent5', 'Agent5\n7549098765\n94901\n94002\n93066\n94058\n94033\n94901\n94047\n01/02/2020\n02/03/2020\nNon\n76975821\n600\nSéparation\n1\nLocataire\nF1\nF2');

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
(2),
(3),
(4),
(5);

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
(1, 0);

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
  `args` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `log` longtext COLLATE utf8mb4_unicode_ci,
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
('mQ2I2fg7UBgPc3oBEjidN8Skm0OptOPk', 3, '2020-04-30 14:13:11', 1);

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
  `comment` longtext COLLATE utf8mb4_unicode_ci
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
(195, 1, 8, 'omeka-slevel_one_sale_id', 'id_demande', NULL),
(196, 1, 8, 'omeka-slevel_two_sale_id', 'agent_id', NULL),
(197, 1, 8, 'omeka-slevel_one_inventory_id', 'date_depot', NULL),
(198, 1, 8, 'omeka-sproduct_id', 'date_validation', NULL),
(199, 1, 8, 'omeka-sproduct_name', 'nb_personnes_loger', NULL),
(200, 1, 8, 'omeka-sproduct_family_id', 'type_1_logement', NULL),
(201, 1, 8, 'omeka-sproduct_price', 'type_2_logement', NULL),
(202, 1, 8, 'omeka-squantity', 'code_insee_1commune_souhait', NULL),
(203, 1, 8, 'omeka-sproduct_family_name', 'code_insee_2commune_souhait', NULL),
(204, 1, 8, 'omeka-sdate', 'code_insee_3commune_souhait', NULL),
(205, 1, 8, 'omeka-scustomer_id', 'code_insee_4commune_souhait', NULL),
(206, 1, 8, 'omeka-scustomer_name', 'code_insee_5commune_souhait', NULL),
(207, 1, 8, 'omeka-scustomer_country_id', 'code_insee_6commune_souhait', NULL),
(208, 1, 8, 'omeka-scustomer_country_name', 'code_insee_7commune_souhait', NULL),
(209, 1, 8, 'omeka-sdistributor_name', 'motif_demande', NULL),
(210, 1, 8, 'omeka-sdistributor_country_id', 'statut_logement_actuel', NULL),
(211, 1, 8, 'omeka-sdistributor_country_name', 'montant_max_logement', NULL),
(212, 1, 8, 'omeka-sdistributor_id', 'exclusion_etage', NULL);

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
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(1, 1, 1, 2, NULL, 'Agent1', 1, '2020-04-30 14:42:52', '2020-04-30 14:42:52', 'Omeka\\Entity\\ItemSet'),
(2, 1, 1, 2, NULL, 'Agent2', 1, '2020-04-30 14:45:43', '2020-04-30 14:45:43', 'Omeka\\Entity\\Item'),
(3, 1, NULL, 2, NULL, 'Agent3', 1, '2020-04-30 14:48:01', '2020-04-30 14:48:01', 'Omeka\\Entity\\Item'),
(4, 1, NULL, 2, NULL, 'Agent4', 1, '2020-04-30 14:49:58', '2020-04-30 14:49:58', 'Omeka\\Entity\\Item'),
(5, 1, NULL, 2, NULL, 'Agent5', 1, '2020-04-30 14:52:49', '2020-04-30 14:52:49', 'Omeka\\Entity\\Item');

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
  `comment` longtext COLLATE utf8mb4_unicode_ci
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
(107, 1, 6, 'Commune', 'Commune', 'Cette classe contient l\'ensemble des communes métropolitaines, des 5 départements d\'outre-mer (Guadeloupe, Martinique, Guyane, La Réunion et Mayotte).'),
(110, 1, 8, 'omeka-sagent_id', 'agent_id', NULL),
(111, 1, 8, 'omeka-sagent_immatriculation', 'agent_immatriculation', NULL),
(112, 1, 8, 'omeka-sagent_contrat_date_debut', 'agent_contrat_date_debut', NULL),
(113, 1, 8, 'omeka-sagent_situation_famille', 'agent_situation_famille', NULL),
(114, 1, 8, 'omeka-sagent_conjoint_id', 'agent_conjoint_id', NULL),
(115, 1, 8, 'omeka-sagent_lpu_insee', 'agent_lpu_insee', NULL),
(116, 1, 8, 'omeka-sagent_type_contrat', 'agent_type_contrat', NULL),
(117, 1, 8, 'omeka-sagent_college', 'agent_college', NULL),
(118, 1, 8, 'omeka-sagent_famille_metier', 'agent_famille_metier', NULL),
(119, 1, 8, 'omeka-sagent_adresse_insee', 'agent_adresse_insee', NULL),
(120, 1, 8, 'omeka-sagent_logement_code', 'agent_logement_code', NULL),
(121, 1, 8, 'omeka-senf_moins_18', 'enf_moins_18', NULL),
(122, 1, 8, 'omeka-senf_18_23', 'enf_18_23', NULL),
(123, 1, 8, 'omeka-senf_plus_23', 'enf_plus_23', NULL),
(124, 1, 8, 'omeka-sremu_2018', 'remu_2018', NULL),
(125, 1, 8, 'omeka-sremu_2019', 'remu_2019', NULL),
(126, 1, 8, 'omeka-sremu_2020', 'remu_2020', NULL),
(127, 1, 8, 'omeka-sremu_2021', 'remu_2021', NULL);

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
(2, 1, NULL, NULL, NULL, 'logement');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template_property`
--

CREATE TABLE `resource_template_property` (
  `id` int(11) NOT NULL,
  `resource_template_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `alternate_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_comment` longtext COLLATE utf8mb4_unicode_ci,
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
(23, 2, 196, NULL, NULL, 3, NULL, 0, 0),
(24, 2, 202, NULL, NULL, 4, NULL, 0, 0),
(25, 2, 203, NULL, NULL, 5, NULL, 0, 0),
(26, 2, 204, NULL, NULL, 6, NULL, 0, 0),
(27, 2, 205, NULL, NULL, 7, NULL, 0, 0),
(28, 2, 206, NULL, NULL, 8, NULL, 0, 0),
(29, 2, 207, NULL, NULL, 9, NULL, 0, 0),
(30, 2, 208, NULL, NULL, 10, NULL, 0, 0),
(31, 2, 197, NULL, NULL, 11, NULL, 0, 0),
(32, 2, 198, NULL, NULL, 12, NULL, 0, 0),
(33, 2, 212, NULL, NULL, 13, NULL, 0, 0),
(34, 2, 195, NULL, NULL, 14, NULL, 0, 0),
(35, 2, 211, NULL, NULL, 15, NULL, 0, 0),
(36, 2, 209, NULL, NULL, 16, NULL, 0, 0),
(37, 2, 199, NULL, NULL, 17, NULL, 0, 0),
(38, 2, 210, NULL, NULL, 18, NULL, 0, 0),
(39, 2, 200, NULL, NULL, 19, NULL, 0, 0),
(40, 2, 201, NULL, NULL, 20, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `rh`
--

CREATE TABLE `rh` (
  `agent_id` varchar(16) NOT NULL,
  `agent_immatriculation` varchar(16) NOT NULL,
  `agent_contrat_date_debut` date NOT NULL,
  `agent_situation_famille` varchar(16) NOT NULL,
  `agent_conjoint_id` varchar(16) NOT NULL,
  `agent_lpu_insee` varchar(16) NOT NULL,
  `agent_type_contrat` varchar(16) NOT NULL,
  `agent_college` varchar(16) NOT NULL,
  `agent_famille_metier` varchar(16) NOT NULL,
  `agent_adresse_insee` varchar(16) NOT NULL,
  `agent_logement_code` varchar(16) NOT NULL,
  `enf_moins_18` int(16) NOT NULL,
  `enf_18_23` int(16) NOT NULL,
  `enf_plus_23` int(16) NOT NULL,
  `remu_2018` int(16) NOT NULL,
  `remu_2019` int(16) NOT NULL,
  `remu_2020` int(16) NOT NULL,
  `remu_2021` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
('85550dd2ee72ca17a8c6753bfd66338c', 0x5f5f5a467c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383235383630302e3530303734393131313137353533373130393337353b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a33323a223731626539316630666663313662613332623238353737313666353539666563223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383233363631383b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538383236313830353b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383236323230313b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383235393034323b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383235393737313b7d7d72656469726563745f75726c7c733a34343a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732d322e312e312f6f6d656b612d732f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223030373038336639376338653462396334333334666133333037383731373935223b733a33323a223738323839366665616236633833393838363861656365613464326236363163223b7d733a343a2268617368223b733a36353a2237383238393666656162366338333938383638616563656134643262363631632d3030373038336639376338653462396334333334666133333037383731373935223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313033313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a393a7b733a33323a223839326263343436316266613062313035303139666634613632636364373531223b733a33323a223235613061376334386563636231336266303764313161393137346437353465223b733a33323a226365666632616266333863626531616330306164386335633435393665353139223b733a33323a223330626432626563346236313161613938336632656135303663356537383365223b733a33323a223865653636616239363236346663376638323065653461393861636631613631223b733a33323a223266333833386661383563326539336664383930616366336430303633393133223b733a33323a226331356161373366313031346439376237353034313731393266613264313761223b733a33323a223065363363323737323133336432376430653564353261346136633065333738223b733a33323a223033356463653137336662613766653935346532316638616536616132653861223b733a33323a223732336666626637326433646436663663396537643165303536303633393037223b733a33323a223865303734353061656466323165353232373431303735363533633839336637223b733a33323a223437363536363830346165643837336363313966386539326166666335366636223b733a33323a223061356531373230303436656236386630353863323464643966333337633036223b733a33323a226432633365306462386638393064353062633064643837393639353037376633223b733a33323a223539323835396165323164353832326336336538393765343264636233623536223b733a33323a223339316339616434633931336438643331323636663534353737666166343836223b733a33323a226263313437326461363631623431616436363833633562656364306362623061223b733a33323a223934616231656130623435373031623536396461626437623638313230653237223b7d733a343a2268617368223b733a36353a2239346162316561306234353730316235363964616264376236383132306532372d6263313437326461363631623431616436363833633562656364306362623061223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a323535323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32383a7b733a33323a226139326132646336633537376633353835373633326665666539363933353362223b733a33323a223733396233343335376534616162306238326466363839366164353064363333223b733a33323a226265643438656631373738373662623664376337366135373832663764396264223b733a33323a223764663436323161396531636434633338306138633333386334636339353665223b733a33323a223636346238303731373934383861363037653831633230386431396631373265223b733a33323a223033626633343934663439643431313739623631666333383338656265653665223b733a33323a223332613364316433356635373062643636346435646235666234666231613431223b733a33323a223531393965616437333339643038313364613265313839643637636233336434223b733a33323a223465313336613762333231343661663862353834386331333730333035346465223b733a33323a223037336664653862393161363064333631313962663566373132393661386635223b733a33323a226263616238343464633333643337313961366133333362393439633261326365223b733a33323a226432633735656564386366323231313934323163376134633832383632666362223b733a33323a223835333130636662633166663338346636666336626333623935356132626361223b733a33323a226439303338636237386363653864373262663763633139626439656136363335223b733a33323a223434323430323364366164353038313964666561663939656339653337613631223b733a33323a223265356435336134303130636364616235613833393761353238383033616238223b733a33323a223562643666323735313361323134653865313164353531633465613064343631223b733a33323a223862623131373931303634643332666232653862306635656236616134633333223b733a33323a223766353337623862643561393937383063343432663165316537303466396331223b733a33323a223964383562346262373638363362623038343063633736633438303335623639223b733a33323a223036653334643339396265623464626233393965633165373931653338313338223b733a33323a223836393534303433313238623834316534613165356564653437323430356631223b733a33323a226231663132646339646434386264636339656230636162356565613966383864223b733a33323a226566356138376361636634646134313732623863323835663264383032343937223b733a33323a226334623864356535366332313463393038636431656162616263633761656435223b733a33323a223336656238323535343062353438366336373236653937353137333434613862223b733a33323a223166613832326336346161623639376337643361326166613865313462346664223b733a33323a223537336662393033313932666330386337376232613961393236373936313334223b733a33323a226538313062646539633331656561643162313033623863393130383631643434223b733a33323a223133346566346333346233343861323834356233353132656262303561316635223b733a33323a223230623439346631303130336363383263343234333933666561613263306439223b733a33323a223362626530613065663963646530326365353932346231336430353036653436223b733a33323a226435343161356163643764653866663130333538383037663365356433383736223b733a33323a223539303431653732383834323063313863376664636434393038333165383665223b733a33323a223064616565666238353833613837363130356434636462323131363239663430223b733a33323a223034636266346164336464366236653162303431363936353337323933386162223b733a33323a223936643164353130633631333634393333613737653164326236316135643938223b733a33323a223435343532343533356130666233656434653833623135366463396336393733223b733a33323a223961303531653332623936383930623864633232613263393661346561336232223b733a33323a226563663235326235363065323364663965303161613737653461666435386534223b733a33323a226538616466663339353431313632643339333636373763383362353166353065223b733a33323a223435356363333831386430623363643465616438356437626134396538643261223b733a33323a226663353965393035633663306539633633383431353537343531353036333230223b733a33323a223535323439366464626233353535633135613031626330346537336532366139223b733a33323a223433326264393134353430316563636664656534653162336362666664303039223b733a33323a223862353638636130656330356464643631373930333765616565393834623833223b733a33323a223666636564633135393631303736383461386539633463343532623734373333223b733a33323a226536626135623139653066303162313831373337626134623032363738613631223b733a33323a223463303336366636643936663264323231646634346132616538373530633230223b733a33323a223261313263366536333138633262393462633834663631353865353636636630223b733a33323a226161343363643431636337373330326561663230613062646661306430343638223b733a33323a226661386236306336343464613737343436343237346530366464663731666533223b733a33323a226332393866346466363839373738646136343631343564323361613161393137223b733a33323a223230626534636630353564323932363530626337303630373037323066623834223b733a33323a223831333333613838316131383330336561323638323337336438376330346537223b733a33323a223664356330303439306431393230393261643930653531353161393335373833223b7d733a343a2268617368223b733a36353a2236643563303034393064313932303932616439306535313531613933353738332d3831333333613838316131383330336561323638323337336438376330346537223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a343437323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a35323a7b733a33323a226631616531626535313730373739343936626463646166343262386534356465223b733a33323a226464333338623964366237663364353337336366386639643764636130613234223b733a33323a223132636338326635663730643037303739333337643732373039373932363163223b733a33323a223861373634646231663133613832633864343133333965633738663564396432223b733a33323a223863336136636464613030333536396363346533396230376530363439396465223b733a33323a226333336364613031313862346133393430383665343861303165323633663334223b733a33323a223366316639653034393131343464373635333961653366306461306132383437223b733a33323a223735633834643362626561333238333461643763333431613833306536663438223b733a33323a223566313463613337373566623734383931366562613863626564386237316338223b733a33323a226136383963643735613235336438346439383762363532363939376337663634223b733a33323a226132346361663836363338383838363461313730356334306332613535323233223b733a33323a223033666263623062343438376266393332313137373838323965323333636537223b733a33323a223766653561363434336634393664306666353732303261313436623464633834223b733a33323a223461306630636636663335353630303932323763313539623738386235313365223b733a33323a226561313937383666303137356139303635346338613338326638646336633834223b733a33323a226464623863383563646461613731663430383662306364303563646230333831223b733a33323a223133313730653639643464626363393261306430363638646261333932663433223b733a33323a226634633965383461303933306330393939616465393432326339663565663538223b733a33323a226239666465643738336138653761383664326236333439373736343133306662223b733a33323a223161383937646435613934616330346661653333353936323763633965313463223b733a33323a226664333430363731363131346637633161633235326436303662386165663635223b733a33323a226662663463313235306434386563393464303731336130666665353264353632223b733a33323a226639306637656535343164633636643838346438653362313463363064363261223b733a33323a223265333363336533623337663734313635313338613665343864623233366434223b733a33323a226332343636643634333532356635333161366337646565623364396339633330223b733a33323a226338363934313065653033393634353138343065663639326261396336363939223b733a33323a226465346161393565363238326336656336646164303665616261316239346137223b733a33323a223236643131613965353365383465383862616631383232336564306436386264223b733a33323a223438363136376233373635623932393066666365633835386461383065373465223b733a33323a223237343530343336303763653961373633623132353536346166326332616535223b733a33323a226330653139623131616661613966613636333739653935353634633938306563223b733a33323a223565643064633237363764656164303538633836313961306361366237613161223b733a33323a223833656236393938323837336231336438323731323739323235313334313764223b733a33323a223434643935316566323866623235356432383633653336383263386434656162223b733a33323a223036373765313164663334636232613966663233633666333864313036326239223b733a33323a223661646638323738366130353261303561643761333633653165333737346566223b733a33323a223664356164613734613739316565336266656362373932376230663964353338223b733a33323a223961396332326236386136383739666230313830336535326461396461653136223b733a33323a223561633161386363633231363661383561356135386431343765666666393730223b733a33323a223965656433623030346265623531633437393264363230303035323238663532223b733a33323a223732613263356264346665376461353634343131616331383637643239353732223b733a33323a226639626530616139636462373339633165336631363238636462646365363636223b733a33323a226162333736643435383235663831343432306236333939396539393431346334223b733a33323a223739636633653531643135383832326436373366633461336561333738343239223b733a33323a226332383965666532623234383766333466663331396665383364653435313438223b733a33323a223236393339376264613064316664336565356166643434326666633762613738223b733a33323a226362356161386335353737633234663632363665353666363835663639313434223b733a33323a223438663431326162363839633464316665346464623037356361326632323366223b733a33323a226465366639623665366266343766613538626532633562373765633739613433223b733a33323a223365653166376666346139343962306237313163313065326263616266326231223b733a33323a226233633435356639633063633032666538363665396436333561646530306131223b733a33323a223533643736316165643934303836303832336466646138303833383864306535223b733a33323a226266653732353263653564336662623332333932633738333462383838633635223b733a33323a223532386365376430633134346162626563313931386465346430396334636362223b733a33323a223433633831393131346566373061346564636161346163653133666163376635223b733a33323a226130383233623133323661313865616637313935353966323835336435643632223b733a33323a226436643764336631396332636465326366646563636231323232663061656664223b733a33323a223932623261626366383462666437343134386231326232326461306639643234223b733a33323a223164383262656531666431656236316464346435653738323236633137663766223b733a33323a226231613662393266663464323232616665643630363462353832313961316561223b733a33323a226464333537666635643364303035633634373965343130303534363034326339223b733a33323a223066396261393336343436333465326438303037626262373436303661636138223b733a33323a223738316239643335646265373966303766393361323332346463353361396366223b733a33323a226230613634666134336231663865663932373737313434613466653833396236223b733a33323a226136663133316132633865366431613933656230663930316330323739373735223b733a33323a226162643166663164623439346635393163636135383433386233623566613561223b733a33323a226639353862393564333064373537616138653337383534366638633233383264223b733a33323a223730303363373263633731613166376561323861333664656162376231323235223b733a33323a223736643233326332323564306264643432613433326133323261643036633033223b733a33323a223864306631653164383436363762396438313638353962633731333032666231223b733a33323a223530303364316634653365326531643236636638383662343139353237353163223b733a33323a223961313066643639656137653030353432343636623034366463313063326438223b733a33323a223334616338373337393535313763393039306433333139663231326132626639223b733a33323a223932663630666566623161353061346433633865303061663133343064643237223b733a33323a223131663030396166623030613462613263633739323837353266343764363439223b733a33323a223336313264623734653534326462366331383636316637343731376633663638223b733a33323a223630663662353662626464633238353962636536333538383666653937366434223b733a33323a223661363432336566336530656335336432386263636339333566613334336238223b733a33323a223933356463643335646663626637373236666566663831316132393631316636223b733a33323a226634333030326363333536306461383534326137656539353363643236383233223b733a33323a226433386332633665363230363432616165383766663532303832643538306238223b733a33323a223836633539376433636666616138666332313032346537353131346132636361223b733a33323a223230343533363338313339663765376230616137343235383030326239313765223b733a33323a223031356330363762373966386263663636653634316234346335666366353731223b733a33323a223463613732393962383534306630306366303564376234393261643632316461223b733a33323a223737666233383930303462333434663436663032343831636338306464386637223b733a33323a226231376334336561346362303163373236373066383061333462303635356461223b733a33323a226165663064303133356265333833306462653639663764366539393436313263223b733a33323a223862383866373939393438363361353564306139633038653236396133656436223b733a33323a223765356664316430376335633066623234653032363431636261636534386332223b733a33323a223064363735323933623664303962353931343130663965373638366431306365223b733a33323a226139353537336236326665323630396561346164396536666231313632363165223b733a33323a223565373166666564376161356439623737353933363161333231373336366236223b733a33323a226365613262323032653135336565343263323366393930313031383761313732223b733a33323a226133323731613838346462616633323339303136376665323530663864373133223b733a33323a223535636261393466373661653935663963626331343136393435343962663565223b733a33323a223864343065323134323532396665346339623030646531316338623762383932223b733a33323a223834346366343930393966336639316532313764373630383132363664663431223b733a33323a226438653833666664633936376439323532346165313732613234343639633032223b733a33323a226665323363333637376532633664643537623364373466363031326130626661223b733a33323a226536616265326565356338383130333133386634626137663064343735333537223b733a33323a223964363331336632396437656564383063353364666563353937656334396164223b733a33323a226532356236366636656366656133363563373031303639653236306463646137223b733a33323a226161376236323963663938633966303461353862373965646232383062663831223b7d733a343a2268617368223b733a36353a2261613762363239636639386339663034613538623739656462323830626638312d6532356236366636656366656133363563373031303639653236306463646137223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a226331643462353532316632363037393761646232366664303162346664326233223b733a33323a226464313434383735346432303464376533333463363864626231333834653363223b733a33323a223764393461643265386532323861626636623232313036313061326239323261223b733a33323a223863623361373236386135656133346166643831663361383238636663366630223b733a33323a226465373236396333363238333661616366316234326238346565626261353363223b733a33323a226336666266306662386365333332393936383662343831363565323861383465223b7d733a343a2268617368223b733a36353a2263366662663066623863653333323939363836623438313635653238613834652d6465373236396333363238333661616366316234326238346565626261353363223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1588258601),
('dc7262e2bdfae960bc950b78cb0a24e0', 0x5f5f5a467c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383031313636352e39323039343839383232333837363935333132353b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a33323a223738326163396435383164316362356236633165633438306565323635623430223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383030393932313b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383031353138363b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383031333939393b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383031353139363b7d7d72656469726563745f75726c7c733a34343a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732d322e312e312f6f6d656b612d732f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223831613063376233353334326136306665633265383930653936376139643664223b733a33323a226535366338666234626363386630396264313431623362656434313233636161223b7d733a343a2268617368223b733a36353a2265353663386662346263633866303962643134316233626564343132336361612d3831613063376233353334326136306665633265383930653936376139643664223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226632613631336530323130663939346139313034613137346464376130346536223b733a33323a223464656163376232616462316132326233663061313132346561363966656464223b7d733a343a2268617368223b733a36353a2234646561633762326164623161323262336630613131323465613639666564642d6632613631336530323130663939346139313034613137346464376130346536223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226461333563663066383739303337613761636234666266333230633536303537223b733a33323a226662653837336636653734663133326437613065383366393866366539616465223b7d733a343a2268617368223b733a36353a2266626538373366366537346631333264376130653833663938663665396164652d6461333563663066383739303337613761636234666266333230633536303537223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223734373963336366383236363962333330643661303738306363616464356134223b733a33323a223138393662363236313764313633633133303430333962343434393766643766223b733a33323a223430636638626430623565656237356131663362646431336362643931663734223b733a33323a223864653462326464616362303162343331333430313364643062386131333538223b7d733a343a2268617368223b733a36353a2238646534623264646163623031623433313334303133646430623861313335382d3430636638626430623565656237356131663362646431336362643931663734223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1588011666),
('febefe19ec744cf9dbaed1d997a70445', 0x5f5f5a467c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373633353236392e32303236343931313635313631313332383132353b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a33323a223133353336303637353165623739363534396566376436316338343162616264223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373633383236303b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223438633566623039366566636132313737383562333664396361396630356634223b733a33323a226563376463633734313361396637363038663966613237343361663039376538223b7d733a343a2268617368223b733a36353a2265633764636337343133613966373630386639666132373433616630393765382d3438633566623039366566636132313737383562333664396361396630356634223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b, 1587635270);

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
('administrator_email', '\"belounis@hotmail.fr\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"Logements\"'),
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
  `summary` longtext COLLATE utf8mb4_unicode_ci,
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
(1, 'belounis@hotmail.fr', 'belounis', '2020-04-23 09:37:38', '2020-04-23 09:37:38', '$2y$10$dxwjHwg6cnpisOQdnQ8Xduyvh90fR0vWUhfJ5jPnBWA/X7V6mqBQi', 'global_admin', 1),
(3, 'samuel.szoniecky@univ-paris8.fr', 'samuel.szoniecky', '2020-04-30 14:13:11', '2020-04-30 14:13:11', NULL, 'global_admin', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_setting`
--

CREATE TABLE `user_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `uri` longtext COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(1, 1, 1, NULL, 'literal', '', 'Agent1', NULL, 1),
(2, 1, 196, NULL, 'literal', '', '123456678', NULL, 1),
(3, 1, 202, NULL, 'literal', '', '93066', NULL, 1),
(4, 1, 203, NULL, 'literal', '', '93070', NULL, 1),
(5, 1, 204, NULL, 'literal', '', '93071', NULL, 1),
(6, 1, 205, NULL, 'literal', '', '93072', NULL, 1),
(7, 1, 206, NULL, 'literal', '', '93048', NULL, 1),
(8, 1, 207, NULL, 'literal', '', '93050', NULL, 1),
(9, 1, 208, NULL, 'literal', '', '93049', NULL, 1),
(10, 1, 197, NULL, 'literal', '', '01/02/2020', NULL, 1),
(11, 1, 198, NULL, 'literal', '', '05/02/2020', NULL, 1),
(12, 1, 212, NULL, 'literal', '', 'Oui', NULL, 1),
(13, 1, 195, NULL, 'literal', '', '23456781', NULL, 1),
(14, 1, 211, NULL, 'literal', '', '500', NULL, 1),
(15, 1, 209, NULL, 'literal', '', 'Nouvel enfant', NULL, 1),
(16, 1, 199, NULL, 'literal', '', '4', NULL, 1),
(17, 1, 210, NULL, 'literal', '', 'Locataire', NULL, 1),
(18, 1, 200, NULL, 'literal', '', 'F3', NULL, 1),
(19, 1, 201, NULL, 'literal', '', 'F4', NULL, 1),
(20, 2, 1, NULL, 'literal', '', 'Agent2', NULL, 1),
(21, 2, 196, NULL, 'literal', '', '12457890', NULL, 1),
(22, 2, 202, NULL, 'literal', '', '93040', NULL, 1),
(23, 2, 203, NULL, 'literal', '', '93047', NULL, 1),
(24, 2, 204, NULL, 'literal', '', '93048', NULL, 1),
(25, 2, 205, NULL, 'literal', '', '93051', NULL, 1),
(26, 2, 206, NULL, 'literal', '', '93066', NULL, 1),
(27, 2, 207, NULL, 'literal', '', '93070', NULL, 1),
(28, 2, 208, NULL, 'literal', '', '93072', NULL, 1),
(29, 2, 197, NULL, 'literal', '', '01/01/2020', NULL, 1),
(30, 2, 198, NULL, 'literal', '', '01/01/2020', NULL, 1),
(31, 2, 212, NULL, 'literal', '', 'Non', NULL, 1),
(32, 2, 195, NULL, 'literal', '', '67549003', NULL, 1),
(33, 2, 211, NULL, 'literal', '', '700', NULL, 1),
(34, 2, 209, NULL, 'literal', '', 'Appartement trop petit', NULL, 1),
(35, 2, 199, NULL, 'literal', '', '3', NULL, 1),
(36, 2, 210, NULL, 'literal', '', 'Locataire', NULL, 1),
(37, 2, 200, NULL, 'literal', '', 'F2', NULL, 1),
(38, 2, 201, NULL, 'literal', '', 'F3', NULL, 1),
(39, 3, 1, NULL, 'literal', '', 'Agent3', NULL, 1),
(40, 3, 196, NULL, 'literal', '', '69031762', NULL, 1),
(41, 3, 202, NULL, 'literal', '', '92002', NULL, 1),
(42, 3, 203, NULL, 'literal', '', '92004', NULL, 1),
(43, 3, 204, NULL, 'literal', '', '92014', NULL, 1),
(44, 3, 205, NULL, 'literal', '', '92019', NULL, 1),
(45, 3, 206, NULL, 'literal', '', '92026', NULL, 1),
(46, 3, 207, NULL, 'literal', '', '92040', NULL, 1),
(47, 3, 208, NULL, 'literal', '', '92048', NULL, 1),
(48, 3, 197, NULL, 'literal', '', '01/01/2020', NULL, 1),
(49, 3, 198, NULL, 'literal', '', '01/03/2020', NULL, 1),
(50, 3, 212, NULL, 'literal', '', 'non', NULL, 1),
(51, 3, 195, NULL, 'literal', '', '4839963', NULL, 1),
(52, 3, 211, NULL, 'literal', '', '600', NULL, 1),
(53, 3, 209, NULL, 'literal', '', 'Rapprochement travail', NULL, 1),
(54, 3, 199, NULL, 'literal', '', '4', NULL, 1),
(55, 3, 210, NULL, 'literal', '', 'Locataire', NULL, 1),
(56, 3, 200, NULL, 'literal', '', 'F3', NULL, 1),
(57, 3, 201, NULL, 'literal', '', 'F4', NULL, 1),
(58, 4, 1, NULL, 'literal', '', 'Agent4', NULL, 1),
(59, 4, 196, NULL, 'literal', '', '789365702', NULL, 1),
(60, 4, 202, NULL, 'literal', '', '93066', NULL, 1),
(61, 4, 203, NULL, 'literal', '', '93070', NULL, 1),
(62, 4, 204, NULL, 'literal', '', '92002', NULL, 1),
(63, 4, 205, NULL, 'literal', '', '92004', NULL, 1),
(64, 4, 206, NULL, 'literal', '', '92007', NULL, 1),
(65, 4, 207, NULL, 'literal', '', '92060', NULL, 1),
(66, 4, 208, NULL, 'literal', '', '92063', NULL, 1),
(67, 4, 197, NULL, 'literal', '', '01/03/2020', NULL, 1),
(68, 4, 198, NULL, 'literal', '', '02/03/2020', NULL, 1),
(69, 4, 212, NULL, 'literal', '', 'Oui', NULL, 1),
(70, 4, 195, NULL, 'literal', '', '7402709', NULL, 1),
(71, 4, 211, NULL, 'literal', '', '500', NULL, 1),
(72, 4, 209, NULL, 'literal', '', 'Handicap', NULL, 1),
(73, 4, 199, NULL, 'literal', '', '2', NULL, 1),
(74, 4, 210, NULL, 'literal', '', 'Locataire', NULL, 1),
(75, 4, 200, NULL, 'literal', '', 'F2', NULL, 1),
(76, 4, 201, NULL, 'literal', '', 'F3', NULL, 1),
(77, 5, 1, NULL, 'literal', '', 'Agent5', NULL, 1),
(78, 5, 196, NULL, 'literal', '', '7549098765', NULL, 1),
(79, 5, 202, NULL, 'literal', '', '94901', NULL, 1),
(80, 5, 203, NULL, 'literal', '', '94002', NULL, 1),
(81, 5, 204, NULL, 'literal', '', '93066', NULL, 1),
(82, 5, 205, NULL, 'literal', '', '94058', NULL, 1),
(83, 5, 206, NULL, 'literal', '', '94033', NULL, 1),
(84, 5, 207, NULL, 'literal', '', '94901', NULL, 1),
(85, 5, 208, NULL, 'literal', '', '94047', NULL, 1),
(86, 5, 197, NULL, 'literal', '', '01/02/2020', NULL, 1),
(87, 5, 198, NULL, 'literal', '', '02/03/2020', NULL, 1),
(88, 5, 212, NULL, 'literal', '', 'Non', NULL, 1),
(89, 5, 195, NULL, 'literal', '', '76975821', NULL, 1),
(90, 5, 211, NULL, 'literal', '', '600', NULL, 1),
(91, 5, 209, NULL, 'literal', '', 'Séparation', NULL, 1),
(92, 5, 199, NULL, 'literal', '', '1', NULL, 1),
(93, 5, 210, NULL, 'literal', '', 'Locataire', NULL, 1),
(94, 5, 200, NULL, 'literal', '', 'F1', NULL, 1),
(95, 5, 201, NULL, 'literal', '', 'F2', NULL, 1);

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
  `comment` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(6, 1, 'http://data.ign.fr/def/geofla#Commune', 'geofla', 'geofla', ''),
(8, 1, 'https://localhost/omeka-s', 'logement', 'vocabulaire', '');

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
-- Index pour la table `demandes_logements`
--
ALTER TABLE `demandes_logements`
  ADD PRIMARY KEY (`id_demande`),
  ADD KEY `agent_id` (`agent_id`);

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
-- Index pour la table `rh`
--
ALTER TABLE `rh`
  ADD PRIMARY KEY (`agent_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

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
-- Contraintes pour la table `demandes_logements`
--
ALTER TABLE `demandes_logements`
  ADD CONSTRAINT `agent_id` FOREIGN KEY (`agent_id`) REFERENCES `rh` (`agent_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
