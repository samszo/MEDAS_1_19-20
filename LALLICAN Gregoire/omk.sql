-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 28 avr. 2020 à 01:37
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
-- Base de données : `omk_medas`
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
(1, 'items', 1, 1, 'luc toto', 'luc toto\netudiant m1\ntot\ntoto\nluc\n01/04/2000'),
(2, 'items', 1, 1, 'Michael Jordan à nu dans « The Last Dance » sur Netflix', 'A1\nMichael Jordan à nu dans « The Last Dance » sur Netflix\nPour ceux à qui le nom de Jordan n’évoque absolument rien, cette série de dix épisodes (diffusés à raison de deux chaque semaine) retrace la dernière saison d’un joueur star de la NBA, à la fin des années 1990, et en profite pour revenir sur sa longue carrière. Pour tous les autres, qu’ils s’intéressent à la balle orange ou non, The Last Dance est un exercice rare : la mise à nu d’un roi.\nérie documentaire événement produite par Netflix et la chaîne américaine ESPN, et mise à disposition lundi 20 avril sur la plate-forme de vidéo par abonnement.'),
(3, 'items', 1, 1, 'Football américain : Tom Brady quitte les New England Patriots', 'A2\nFootball américain : Tom Brady quitte les New England Patriots\nLe quarterback Tom Brady, souvent présenté comme le plus grand joueur de football américain de l’histoire, a annoncé mardi 17 mars qu’il quittait son équipe de toujours, les New England Patriots, plusieurs médias américains affirmant qu’il va poursuivre sa carrière NFL aux Tampa Bay Buccaneers.\nLe Californien de naissance, 42 ans, arrivé en fin de contrat avec les Patriots, n’a pas indiqué où il jouerait la saison prochaine. Les Tampa Bay Buccaneers pourraient le recruter.'),
(4, 'items', 1, 1, 'BASKET', 'C1\nBASKET\nBASKET\nMichael Jordan à nu dans « The Last Dance » sur Netflix'),
(5, 'items', 1, 1, 'FOOTBALL AMERICAIN', 'C2\nFOOTBALL AMERICAIN\nFOOTBALL AMERICAIN\nFootball américain : Tom Brady quitte les New England Patriots'),
(6, 'items', 1, 1, 'TAG BASKET', 'T1\n#basket\nTAG BASKET\nMichael Jordan à nu dans « The Last Dance » sur Netflix'),
(7, 'items', 1, 1, 'Tag Football', 'T2\n#football\nTag Football'),
(8, 'items', 1, 1, 'Tag Americain', 'T3\n#americain\nTag Americain\nFootball américain : Tom Brady quitte les New England Patriots\nMichael Jordan à nu dans « The Last Dance » sur Netflix'),
(9, 'items', 1, 1, 'commentaire 1', 'COM1\ngregoozelallicooze\n9 rue de rochefort \ngregoire.lallican@gmail.com\nsuperbe article !\ncommentaire 1\nMichael Jordan à nu dans « The Last Dance » sur Netflix');

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
('fLxzBGgKzn1DDsjaUxox1eozJ7UXfXVa', 2, '2020-04-27 18:33:40', 1);

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
(185, 1, 5, 'location', 'locatie', 'The location of the thing.'),
(186, 1, 6, 'act', 'Act', 'A specific piece of legislation which requires or drives the creation or provision of the resource.'),
(187, 1, 6, 'aggregationLevel', 'Aggregation Level', 'The level of aggregation of the described resource.'),
(188, 1, 6, 'availability', 'Availability', 'How the resource can be obtained or accessed, or contact information.'),
(189, 1, 6, 'case', 'Case', 'A specific piece of case law which requires or drives the creation or provision of the resource.'),
(190, 1, 6, 'category', 'Category', 'The generic type of the resource being described.'),
(191, 1, 6, 'dateLicensed', 'Date Licensed', 'Date a license was applied or became effective.'),
(192, 1, 6, 'documentType', 'Document Type', 'The form of the resource where category = \'document\'.'),
(193, 1, 6, 'function', 'Function', 'The business function to which the resource relates.'),
(194, 1, 6, 'jurisdiction', 'Jurisdiction', 'The name of the political/administrative entity covered by the resource.'),
(195, 1, 6, 'mandate', 'Mandate', 'A specific legal instrument which requires a resource to be created or made available.'),
(196, 1, 6, 'protectiveMarking', 'Protective Marking', 'A protective marking applied to the resource.'),
(197, 1, 6, 'regulation', 'Regulation', 'A specific regulation which requires or drives the creation or provision of the resource.'),
(198, 1, 6, 'serviceType', 'Service Type', 'The form of the resource where category = \'service\'.'),
(199, 1, 7, 'audience', 'audience', 'Associates the Creative Work with an audience instance'),
(200, 1, 7, 'thumbnail', 'thumbnail', 'Associates the Creative Work with the Thumbnail instance'),
(201, 1, 7, 'tag', 'tag', 'Indicates that the creative work is tagged with tag concept'),
(202, 1, 7, 'category', 'category', 'The category property is another mid term solution for maintaining the functionality supporting individual clients. For example, the type of gossip is something that the sports pal use for the moment. The values of the property are decided by the client teams in collaboration with LDP'),
(203, 1, 7, 'createdBy', 'createdBy', 'associate a creative work with its creator'),
(204, 1, 7, 'about', 'about', 'Indicates that the creative work is about a tag concept'),
(205, 1, 7, 'thumbnailType', 'thumbnailType', 'Associates the Thumbnail instance with a Thumbnail type'),
(206, 1, 7, 'mentions', 'mentions', 'Indicates that the creative work mentions a tag concept'),
(207, 1, 7, 'primaryFormat', 'primaryFormat', 'Associates the Creative Work with the Primary Format instance'),
(208, 1, 7, 'dateModified', 'dateModified', 'Date modified of CreativeWork'),
(209, 1, 7, 'shortTitle', 'shortTitle', 'The sort title of the Creative Work'),
(210, 1, 7, 'language', 'language', 'The language of the creative work, please use BCP47 https://tools.ietf.org/html/bcp47'),
(211, 1, 7, 'title', 'title', 'The title of the Creative Work'),
(212, 1, 7, 'altText', 'altText', 'The alternative text for a thumbnail in case the URL is not resolved'),
(213, 1, 7, 'description', 'description', 'The description of the Creative Work'),
(214, 1, 7, 'dateCreated', 'dateCreated', 'Date created of CreativeWork'),
(215, 1, 8, 'isRelatedTo', 'Is related to', 'Used to link a resource to a sign, which can itself, be of any type, provided its representation is HTTP accessible from a URI. NiceTag defines tags by means of a mere property linking two Resources; this said, the many distinctions found in IRW ontology give a more precise account of nt:TaggedResource (see in particular irw:Resource).'),
(216, 1, 8, 'belongsToTagCollection', 'Belongs to tag collection', 'Property used to link a single and well individuated TagAction to a TagCollection to account for the various levels of aggregation provided by common tagging applications. There exist different ways to aggregate tags (for instance, http://delicious.com/fabion_gandon/OWL gives a Web representation of all taggings of user \"fabien_gandon\" involving the tag labeled \'OWL\' on delicious.com at time \"t\").'),
(217, 1, 8, 'hasCommunitySign', 'Has community sign', 'Corresponds to uses of collectively approved labels shared inside a community.'),
(218, 1, 8, 'hasPersonalSign', 'Has personal sign', 'Corresponds to uses of user-defined labels that can either serve to gather, categorize, distinguish resources or simply add structure to one\'s collection of tags.'),
(219, 1, 8, 'makesMeFeel', 'Makes me feel', 'Property used to indicate that the label of a tag denotes/expresses an emotional reaction.'),
(220, 1, 8, 'isWorth', 'Is worth', 'Property used whenever a resource is evaluated, ranked, etc. thanks to a label (\"***\", \"5/10\", \"0\", \"best\", etc.).'),
(221, 1, 8, 'isAbout', 'Is about', 'Property used when the label of a tag describes the topic of a resource.'),
(222, 1, 8, 'hasForMedium', 'Has for medium', 'Property used when the label of a tag indicates the medium which an HTTP-accessible Web representation belongs to (\"forum\", \"video\", \"photo\", \"Webpage\", \"Webservice\", etc.).'),
(223, 1, 8, 'isRelevant', 'Is relevant', 'Property used to subsume \"isRelevantToSb\" and \"isRelevantToSt\".'),
(224, 1, 8, 'isRelevantToSb', 'Is relevant to somebody', 'Subproperty of \'is relevant to\' used to link a resource to the person whom it may be relevant to. In other words, in such a way that no immediate formal link can be inferred between the two except from the point of view of a precise person in addition to the user who defined the said link.'),
(225, 1, 8, 'isRelevantToSt', 'Is relevant to something', 'Subproperty of \'is relevant to\', used to link a resource to anything that it may be relevant to. In other words, in such a way that no immediate formal link can be inferrend between the two except from the point of view of the creator of the said link.'),
(226, 1, 8, 'elicitsAction', 'Elicits action', 'Property used when a resource elicits an action to be performed.'),
(227, 1, 8, 'sentTo', 'Sent to', 'Property used when the label of a tag indicates to whom a resource was suggested (models existing features like delicious \"for:-username\" tags).'),
(228, 1, 8, 'sentBy', 'Sent by', 'Corresponds to uses of labels that indicate by whom a resource was suggested.'),
(229, 1, 8, 'canBeReadBy', 'Can be read by', 'Property used when the label of a tag indicates to whom access rights to the tagged resource are conferred.'),
(230, 1, 8, 'cannotBeReadBy', 'Cannot be read by', 'Property used when the label of a tag indicates to whom access right to the tagged resource are denied.'),
(231, 1, 8, 'hasPart', 'Has part', 'Property used when the label of a tag indicates which part of a Web representation is being tagged.'),
(232, 1, 8, 'raisesQuestionAbout', 'Raises question about', 'Property used when the label of a tag indicates that a question is being asked.'),
(233, 1, 9, 'startingOrFinalPointOfADistance', 'Starting or final point of a distance', NULL),
(234, 1, 9, 'hierarchicalSuperiorOfPlaceOrGeographicName', 'Administrative Überordnung des Geografikums', 'A hierarchically superordinate unit (corporate body, conference, jurisdiction) of the described unit (corporate body, conference, jurisdiction).'),
(235, 1, 9, 'professionalRelationship', 'Professional relationship', 'An occupational relationship between a person or family and another person or family'),
(236, 1, 9, 'precedingWork', 'Preceding work', NULL),
(237, 1, 9, 'variantNameForThePerson', 'Varianter Name der Person', NULL),
(238, 1, 9, 'titleOfNobilityAsLiteral', 'Title of nobility (Literal)', 'Adelstitel einer Person oder Adelstitel im Erbtitel\n		einer Familie. Diese Property ist äquivalent zu gndo:titleOfNobility, zeigt\n		aber ein Literal statt einer Referenz zu einem Schlagwort.'),
(239, 1, 9, 'professionOrOccupation', 'Profession or occupation', 'A profession or occupation practiced by a person or family'),
(240, 1, 9, 'associatedPlace', 'Associated place', NULL),
(241, 1, 9, 'instrumentalist', 'Instrumentalist', 'A performer contributing to a resource by playing a musical instrument'),
(242, 1, 9, 'narrowerTermInstantial', 'Narrower term (instantial)', 'Die Instanzbeziehung verbindet ein allgemeines Konzept, etwa eine\n      Klasse von Dingen oder Ereignissen mit einem individuellen Exemplar dieser Klasse, das oft\n      durch einen Eigennamen repräsentiert wird.'),
(243, 1, 9, 'dateOfDiscovery', 'Fundjahr', 'Datum oder Jahr, in dem ein Objekt gefunden wurde\n(darf nicht bei Personen, Familien und Körperschaften verwendet werden)\n'),
(244, 1, 9, 'owner', 'Owner', 'Eine Person, eine Familie oder eine Körperschaft, die im rechtmäßigen Besitz einer Ressource ist. '),
(245, 1, 9, 'relatedDdcWithDegreeOfDeterminacy2', 'Related Dewey Decimal Classification with degree of determinacy\n      2', 'The connotation scope of the GND entity is identical or nearly\n      identical to the connotation scope of a topic that is logically part of the class but is less\n      extensive in scope than the concept represented by the class number.'),
(246, 1, 9, 'homepage', 'Homepage', NULL),
(247, 1, 9, 'precedingPlaceOrGeographicName', 'Preceding place or geographic name', NULL),
(248, 1, 9, 'affiliation', 'Affiliation', 'A corporate body associated with a person or group of persons.'),
(249, 1, 9, 'conferrer', 'Leihgeber', 'A person or organization permitting the temporary use of a book, manuscript, etc., such as for photocopying or microfilming'),
(250, 1, 9, 'fieldOfStudy', 'Field of study', 'Studienfach einer Person.'),
(251, 1, 9, 'author', 'Verfasser', 'A person, family, or organization responsible for creating a work that is primarily textual in content, regardless of media type (e.g., printed text, spoken word, electronic text, tactile text) or genre (e.g., poems, novels, screenplays, blogs). Use also for persons, etc., creating a new work by paraphrasing, rewriting, or adapting works by another creator such that the modification has substantially changed the nature and content of the original or changed the medium of expression'),
(252, 1, 9, 'gender', 'Gender', NULL),
(253, 1, 9, 'placeOfExile', 'Place of Exile', 'Ortschaft, Stadt, Provinz, Staat und/oder Land,\n	in der/dem eine Person oder Familie im Exil lebt(e).'),
(254, 1, 9, 'biographicalOrHistoricalInformation', 'Biographical or historical information', 'Zusammenfassung von wesentlichen biografischen, geschichtlichen oder\n      anderen Informationen über die zu beschreibende Entität.'),
(255, 1, 9, 'revisor', 'Revisor', 'A person or organization who 1) reworks a musical composition, usually for a different medium, or 2) rewrites novels or stories for motion pictures or other audiovisual medium.'),
(256, 1, 9, 'narrowerTermGeneral', 'Narrower term (general)', NULL),
(257, 1, 9, 'annotator', 'Annotator', 'A person who makes manuscript annotations on an item.'),
(258, 1, 9, 'dateOfEstablishment', 'Date of establishment', NULL),
(259, 1, 9, 'narrator', 'Sprecher', 'A performer contributing to a resource by reading or speaking in order to give an account of an act, occurrence, course of events, etc'),
(260, 1, 9, 'acquaintanceshipOrFriendship', 'Acquaintanceship or friendship', 'Person, die mit der beschriebenen Person bekannt ist und nicht\n	in familiärer oder beruflicher Beziehung steht. Für Beziehungen von oder zu Familien\n	wird gndo:memberOfTheFamily verwendet.'),
(261, 1, 9, 'doubtfulArtist', 'Angezweifelter Künstler', 'A person or organization to which authorship has been dubiously or incorrectly ascribed'),
(262, 1, 9, 'functionOrRole', 'Funktion oder Rolle', 'Diese Property ist äquivalent zu gndo:functionOrRoleAsLiteral, zeigt aber auf ein Schlagwort statt ein Literal auszugeben.'),
(263, 1, 9, 'benefactor', 'Stifter', 'A person, family, or corporate body being the benefactor of a work, a thing, or a corporate body'),
(264, 1, 9, 'illustratorOrIlluminator', 'Illustrator or illuminator', 'A person, family, or organization contributing to a resource by supplementing the primary content with drawings, diagrams, photographs, etc. If the work is primarily the artistic content created by this entity, use artist or photographer'),
(265, 1, 9, 'cartographer', 'Kartograf', 'A person, family, or organization responsible for creating a map, atlas, globe, or other cartographic work'),
(266, 1, 9, 'accreditedComposer', 'Zugeschriebener Komponist', 'An author, artist, etc., relating him/her to a resource for which there is or once was substantial authority for designating that person as author, creator, etc. of the work'),
(267, 1, 9, 'formOfWorkAndExpression', 'Form of work and expression', NULL),
(268, 1, 9, 'abbreviatedNameForTheCorporateBody', 'Abbreviated name for the corporate body', NULL),
(269, 1, 9, 'typeOfCoordinates', 'Type of coordinates', NULL),
(270, 1, 9, 'succeedingConferenceOrEvent', 'Nachfolgende Konferenz oder Veranstaltung', NULL),
(271, 1, 9, 'contributingCorporateBody', 'Contributing corporate body', NULL),
(272, 1, 9, 'publication', 'Publication', NULL),
(273, 1, 9, 'preferredNameForThePerson', 'Preferred name for the person', NULL),
(274, 1, 9, 'citedComposer', 'Cited composer', 'A person or organization whose work is largely quoted or extracted in works to which he or she did not contribute directly. Such quotations are found particularly in exhibition catalogs, collections of photographs, etc.'),
(275, 1, 9, 'complexSeeReferenceSubject', 'Complex see reference - subject', NULL),
(276, 1, 9, 'lithographer', 'Litograf', 'A person or organization who prepares the stone or plate for lithographic printing, including a graphic artist creating a design directly on the surface from which printing will be done.'),
(277, 1, 9, 'formerOwner', 'Früherer Besitzer', 'A person, family, or organization formerly having legal possession of an item'),
(278, 1, 9, 'occasionOfTheSubjectHeading', 'Occasion of the subject heading', NULL),
(279, 1, 9, 'successor', 'Successor', NULL),
(280, 1, 9, 'singer', 'Singer', 'A performer contributing to a resource by using his/her/their voice, with or without instrumental accompaniment, to produce music. A singer\'s performance may or may not include actual words'),
(281, 1, 9, 'member', 'Member', 'A person or family being a member of (another) family'),
(282, 1, 9, 'coordinates', 'Coordinates', NULL),
(283, 1, 9, 'otherPlace', 'Other place', NULL),
(284, 1, 9, 'variantNameForTheCorporateBody', 'Variant name for the corporate body', NULL),
(285, 1, 9, 'relatedCorporateBody', 'In Beziehung stehende Körperschaft', NULL),
(286, 1, 9, 'endOfPeriod', 'End of a period', NULL),
(287, 1, 9, 'preferredNameForTheCorporateBody', 'Preferred name for the corporate body', NULL),
(288, 1, 9, 'creator', 'Urheber', 'A person or organization performing the work, i.e., the name of a person or organization associated with the intellectual content of the work. This category does not include the publisher or personal affiliation, or sponsor except where it is also the corporate author'),
(289, 1, 9, 'superPropertyOf', 'Super-property of', 'P1 gnd:superPropertyOf P2 states that P2 is a subproperty of P1. The\n      gndo:superPropertyOf property is transitive.'),
(290, 1, 9, 'doubtfulAuthor', 'Angezweifelter Verfasser', 'A person or organization to which authorship has been dubiously or incorrectly ascribed'),
(291, 1, 9, 'succeedingSubjectHeading', 'Succeeding subject heading', NULL),
(292, 1, 9, 'translator', 'Übersetzer', 'A person or organization who renders a text from one language into another, or from an older form of a language into the modern form'),
(293, 1, 9, 'addressee', 'Addressee', 'Eine Person, Familie oder Körperschaft, an die eine Korrespondenz adressiert ist.'),
(294, 1, 9, 'broaderTerm', 'Broader term', 'Bitte verwenden Sie Oberbegriff allgemein'),
(295, 1, 9, 'StartingOrFinalPointOfADistance', 'Starting or final point of a distance', 'Use startingOrFinalPointOfADistance (with a minor s) instead'),
(296, 1, 9, 'marc21equivalent', 'MARC 21 equivalent', 'Expresses the MARC 21 equivalent for this element in the GND MARC\n      format.'),
(297, 1, 9, 'narrowerTermPartitive', 'Unterbegriff partitiv', 'Eine partitive Relation ist eine hierarchische\n	Relation zwischen zwei Begriffen, von denen der übergeordnete Begriff\n	(Verbandsbegriff) einem Ganzen entspricht und der untergeordnete Begriff\n	einen der Bestandteile dieses Ganzen repräsentiert. Bei Personen ist die\n	Relation die Beziehung zwischen einer einzelnen Person (besonders\n	Gottheiten) und übergeordneten Gruppen von Göttern und mythologische Gestalten.'),
(298, 1, 9, 'relatedDdcWithDegreeOfDeterminacy4', 'Related Dewey Decimal Classification with degree of determinacy\n      4', 'The connotation scope of the GND entity is identical to the\n      connotation scope of the topic emphasized in the DDC class heading.'),
(299, 1, 9, 'directorOfPhotography', 'Verantwortlicher Kameramann', 'A person in charge of photographing a motion picture, who plans the technical aspets of lighting and photographing of scenes, and often assists the director in the choice of angles, camera setups, and lighting moods. He or she may also supervise the further processing of filmed material up to the completion of the work print. Cinematographer is also referred to as director of photography. Do not confuse with videographer'),
(300, 1, 9, 'oldAuthorityNumber', 'Alte Normnummer', NULL),
(301, 1, 9, 'accordingWork', 'According work', NULL),
(302, 1, 9, 'placeOfActivity', 'Place of activity', 'Wirkungsort bzw. Wohnort einer Person.'),
(303, 1, 9, 'southernmostLatitude', 'Southernmost latitude', NULL),
(304, 1, 9, 'preferredNameEntityForThePerson', 'Preferred name entity for the person', NULL),
(305, 1, 9, 'functionOrRoleAsLiteral', 'Funktion oder Rolle (Literal)', 'This property is equivalent to gndo:functionOrRole but gives a literal instead of a URI'),
(306, 1, 9, 'preferredNameForThePlaceOrGeographicName', 'Preferred name for the place or geographic name', NULL),
(307, 1, 9, 'celebratedFamily', 'Celebrated family', NULL),
(308, 1, 9, 'memberOfTheFamily', 'Member of the family', 'Die beschriebene Person (Subjekt) ist ein bedeutendes \n	Mitglied der verknüpften Familie (Objekt). Für Göttergruppen und Gruppen\n	mythologischer Gestalten wird gndo:broaderTermPartitive verwendet.'),
(309, 1, 9, 'variantNameForThePlaceOrGeographicName', 'Variant name for the place or geographic name', NULL),
(310, 1, 9, 'dateOfProduction', 'Erstellungszeit', 'Date (year) in which a written historical document was created or a building constructed'),
(311, 1, 9, 'exhibitor', 'Exhibitor', 'A person, family, or corporate body in charge of an exhibition.'),
(312, 1, 9, 'relatedTerm', 'Verwandter Begriff', 'The associative relationship covers associations between pairs of\n      concepts that are not related hierarchically, but are semantically or concetually associated\n      to such an extent that the link between them needs to be made explicit in the thesaurus. '),
(313, 1, 9, 'dateOfConferenceOrEvent', 'Date of conference or event', 'Date of a conference'),
(314, 1, 9, 'variantNameForTheSubjectHeading', 'Variant name for the subject heading', NULL),
(315, 1, 9, 'relatedPerson', 'Related person', NULL),
(316, 1, 9, 'surname', 'Nachname', NULL),
(317, 1, 9, 'beginningOfPeriod', 'Beginning of a period', NULL),
(318, 1, 9, 'succeedingPlaceOrGeographicName', 'Succeeding place or geographic name', NULL),
(319, 1, 9, 'dateOfBirthAndDeath', 'Geburts- und Sterbedatum', NULL),
(320, 1, 9, 'accreditedArtist', 'Zugeschriebener Künstler', 'An author, artist, etc., relating him/her to a resource for which there is or once was substantial authority for designating that person as author, creator, etc. of the work'),
(321, 1, 9, 'citedArtist', 'Zitierter Künstler', 'A person or organization whose work is largely quoted or extracted in works to which he or she did not contribute directly. Such quotations are found particularly in exhibition catalogs, collections of photographs, etc.'),
(322, 1, 9, 'photographer', 'Photographer', 'A person, family, or organization responsible for creating a photographic work'),
(323, 1, 9, 'buildingOwner', 'Bauherr', 'A person, family, or corporate body in charge of financing and constructing a building'),
(324, 1, 9, 'keyOfTheWork', 'Key of the work', NULL),
(325, 1, 9, 'composer', 'Composer', 'A person, family, or organization responsible for creating or contributing to a musical resource by adding music to a work that originally lacked it or supplements it'),
(326, 1, 9, 'compiler', 'Kompilator', 'A person, family, or organization responsible for creating a new work (e.g., a bibliography, a directory) through the act of compilation, e.g., selecting, arranging, aggregating, and editing data, information, etc'),
(327, 1, 9, 'placeOfBirth', 'Place of Birth', 'Geburtsort einer Person.'),
(328, 1, 9, 'placeOfConferenceOrEvent', 'Place of conference or event', 'Ort, an dem eine Veranstaltung oder eine Konferenz stattfindet'),
(329, 1, 9, 'corporateBodyIsMember', 'Körperschaft ist Mitglied', NULL),
(330, 1, 9, 'dateOfTermination', 'Auflösungsdatum', NULL),
(331, 1, 9, 'gndIdentifier', 'GND-Identifier', NULL),
(332, 1, 9, 'broaderTermPartitive', 'Oberbegriff partitiv', 'The hierarchical whole-part relationship covers a limited range of\n      situations in which a part of an entity or system belongs uniquely to a particular possessing\n      whole. When applied to persons, this is the relation between a single person (particularly gods)\n	  and hierarchically broader groups of gods and mythologic entities.'),
(333, 1, 9, 'manufacturer', 'Hersteller', 'A person or organization responsible for printing, duplicating, casting, etc. a resource'),
(334, 1, 9, 'prefix', 'Prefix', NULL),
(335, 1, 9, 'dedicatee', 'Dedicatee', 'A person, family, or organization to whom a resource is dedicated'),
(336, 1, 9, 'forename', 'Forename', NULL),
(337, 1, 9, 'variantNameForTheConferenceOrEvent', 'Variant name for the conference or event', NULL),
(338, 1, 9, 'arranger', 'Arranger', 'A person, family, or organization contributing to a musical\n		work by rewriting the composition for a medium of performance different from that\n		for which the work was originally intended, or modifying the work for the same\n		medium of performance, etc., such that the musical substance of the original\n		composition remains essentially unchanged. For extensive modification that effectively\n		results in the creation of a new musical work, see composer.'),
(339, 1, 9, 'accreditedAuthor', 'Accredited author', 'An author, artist, etc., relating him/her to a resource for which there is or once was substantial authority for designating that person as author, creator, etc. of the work'),
(340, 1, 9, 'realIdentity', 'Echte Identität', 'Links an identity under which one or more persons act, e. g. write, compose or create art, but that is not their real name (i. e. a pseudonym) to their real identity.'),
(341, 1, 9, 'citedAuthor', 'Cited author', 'A person or organization whose work is largely quoted or extracted in works to which he or she did not contribute directly. Such quotations are found particularly in exhibition catalogs, collections of photographs, etc.'),
(342, 1, 9, 'language', 'Language', 'A language used by a person or family or in which a work was written'),
(343, 1, 9, 'relatedPlaceOrGeographicName', 'Related place or geographic name', NULL),
(344, 1, 9, 'place', 'Place', 'A country, state, province, etc., or place where an organization has its headquarters'),
(345, 1, 9, 'relatedSubjecHeading', 'Related subject heading', 'Use relatedSubjectHeading (\'subject\', not \'subjec\') instead'),
(346, 1, 9, 'pseudonym', 'Pseudonym', 'Verknüpft eine echte Identität einer Person mit einer Identität, unter der eine oder mehrere Personen agieren, z. B. schreiben, komponieren oder Kunstwerke schaffen, aber die nicht der wirkliche Name der Person ist (Pseudonym).'),
(347, 1, 9, 'succeedingWork', 'Nachfolgendes Werk', NULL),
(348, 1, 9, 'thematicIndexNumericDesignationOfMusicalWork', 'Thematic index numeric designation of musical work', NULL),
(349, 1, 9, 'succeedingCorporateBody', 'Succeeding corporate body', NULL),
(350, 1, 9, 'relatedDdcWithDegreeOfDeterminacy1', 'Related Dewey Decimal Classification with degree of determinacy\n      1', 'The connotation scope of the GND entity corresponds to a small part\n      to the connotation scope of the assigned DDC class.'),
(351, 1, 9, 'associatedDate', 'Associated date', NULL),
(352, 1, 9, 'contributingFamily', 'Contributing family', NULL),
(353, 1, 9, 'predecessor', 'Predecessor', 'A corporate body or a work being the predecessor of another corporate body or work'),
(354, 1, 9, 'celebratedCorporateBody', 'Celebrated corporate body', NULL),
(355, 1, 9, 'founder', 'Founder', 'Eine Person, Familie oder Körperschaft, die ein Unternehmen oder Veranstaltung oder Bauensemble gründet'),
(356, 1, 9, 'initiator', 'Veranlasser', 'Eine Person, Familie oder Körperschaft, die ein Werk veranlasst hat'),
(357, 1, 9, 'abbreviatedNameForTheConferenceOrEvent', 'Abbreviated name for the conference or event', NULL),
(358, 1, 9, 'academicDegree', 'Akademischer Grad', 'An academic degree.'),
(359, 1, 9, 'musician', 'Musician', 'A person or organization who performs music or contributes to the musical content of a work when it is not possible or desirable to identify the function more precisely'),
(360, 1, 9, 'affiliationAsLiteral', 'Affiliation (Literal)', 'Eine Konferenz oder Veranstaltung, eine Körperschaft oder eine\n		Gebietskörperschaft, zu der eine Person gehört oder der sie durch Anstellung, Mitgliedschaft,\n		kulturelle Identität usw. zugeordnet wird. Diese Property ist äquivalent zu gndo:affiliation,\n		zeigt aber ein Literal statt eines URIs.'),
(361, 1, 9, 'placeOfManufacture', 'Place of manufacture', 'A place where a work or thing was manufactured'),
(362, 1, 9, 'temporaryName', 'Temporary name', NULL),
(363, 1, 9, 'temporaryNameOfThePlaceOrGeographicName', 'Temporary name of the place or geographic name', NULL),
(364, 1, 9, 'placeOfDeathAsLiteral', 'Sterbeort (Literal)', 'This property is equivalent to gndo:placeOfDeath but gives a literal instead of\n		a reference to a geographic entity'),
(365, 1, 9, 'preferredNameForTheSubjectHeading', 'Bevorzugter Name des Schlagworts', NULL),
(366, 1, 9, 'northernmostLatitude', 'Northernmost latitude', NULL),
(367, 1, 9, 'architect', 'Architekt', 'A person, family, or organization responsible for creating an\n		architectural design, including a pictorial representation intended to show how a building,\n		etc., will look when completed. It also oversees the construction of structures.'),
(368, 1, 9, 'abbreviatedNameForThePlaceOrGeographicName', 'Abbreviated name for the place or geographic name', NULL),
(369, 1, 9, 'dateOfEstablishmentAndTermination', 'Date of establishment and termination', NULL),
(370, 1, 9, 'spatialAreaOfActivity', 'Spatial area of activity', 'Geografischer Wirkungsbereich'),
(371, 1, 9, 'dateOfBirth', 'Date of birth', 'Das Geburtsdatum einer Person. Dies kann ein Jahr, eine Kombination von Jahr und Monat oder ein vollständiges Datum sein.'),
(372, 1, 9, 'variantNameForTheFamily', 'Varianter Name der Familie', NULL),
(373, 1, 9, 'geographicAreaCode', 'Geographic Area Code', NULL),
(374, 1, 9, 'preferredNameForTheConferenceOrEvent', 'Bevorzugter Name der Konferenz oder Veranstaltung', NULL),
(375, 1, 9, 'hierarchicalSuperior', 'Hierarchical superior', NULL),
(376, 1, 9, 'addition', 'Addition', NULL),
(377, 1, 9, 'nameAddition', 'Name addition', NULL),
(378, 1, 9, 'characteristicPlace', 'Characteristic place', 'A significant place for a person or family'),
(379, 1, 9, 'celebratedTopic', 'Celebrated topic', NULL),
(380, 1, 9, 'abbreviatedNameForTheWork', 'Abbreviated name for the work', NULL),
(381, 1, 9, 'placeOrGeographicNameIsMember', 'Place or geographic name is member', NULL),
(382, 1, 9, 'collector', 'Sammler', 'A curator who brings together items from various sources that are then arranged, described, and cataloged as a collection. A collector is neither the creator of the material nor a person to whom manuscripts in the collection may have been addressed'),
(383, 1, 9, 'fictitiousAuthor', 'Fictitious author', 'Eine fiktive Person, Familie oder Körperschaft, die als Autor gilt.'),
(384, 1, 9, 'relatedDdcWithDegreeOfDeterminacy3', 'Related Dewey Decimal Classification with degree of determinacy\n      3', 'The connotation scope of the GND entity is identical or nearly\n      identical to the connotation scope of a topic that approximates the whole of the assigned DDC\n      class. According to DDC terms, topics that are nearly coextensive with the full meaning of a\n      class or cover more than half of the content of the class approximate the whole of the DDC\n      class.'),
(385, 1, 9, 'variantName', 'Variant name', NULL),
(386, 1, 9, 'serialNumericDesignationOfMusicalWork', 'Serial numeric designation of musical work', NULL),
(387, 1, 9, 'counting', 'Counting', NULL),
(388, 1, 9, 'director', 'Director', 'A person responsible for the general management and supervision of a filmed performance, a radio or television program, etc.'),
(389, 1, 9, 'personalName', 'Personal name', NULL),
(390, 1, 9, 'udkCode', 'UDK-Code', 'Date, expressed as UDK code'),
(391, 1, 9, 'placeOfBusiness', 'Sitz', NULL),
(392, 1, 9, 'variantNameEntityForThePerson', 'Variant name entity for the person', NULL),
(393, 1, 9, 'firstArtist', 'First artist', 'Eine Person, Familie oder Körperschaft, die als einziger oder erster Künstler bekannt ist'),
(394, 1, 9, 'opusNumericDesignationOfMusicalWork', 'Opus numeric designation of musical work', NULL),
(395, 1, 9, 'keyOfTheVersion', 'Key of the version', NULL),
(396, 1, 9, 'printer', 'Printer', 'A person, family, or organization involved in manufacturing a manifestation of printed text, notated music, etc., from type or plates, such as a book, newspaper, magazine, broadside, score, etc'),
(397, 1, 9, 'titleOfNobility', 'Title of nobility', 'A title of nobility held by a person or family.'),
(398, 1, 9, 'contributingPlaceOrGeographicName', 'Contributing place or geographic name', NULL),
(399, 1, 9, 'precedingConferenceOrEvent', 'Preceding conference or event', NULL),
(400, 1, 9, 'preferredNameForTheFamily', 'Bevorzugter Name der Familie', NULL),
(401, 1, 9, 'copist', 'Kopist', 'Eine Person oder Familie, die als Kopist oder Schreiber gearbeitet haben'),
(402, 1, 9, 'broaderTermWithMoreThanOneElement', 'Broader term (with more than one element)', NULL),
(403, 1, 9, 'celebratedPerson', 'Celebrated person', NULL),
(404, 1, 9, 'dateOfPublication', 'Date of publication', 'Date of publication of the first expression of a work'),
(405, 1, 9, 'placeOfDeath', 'Sterbeort', 'A person’s place of death'),
(406, 1, 9, 'writerOfAddedCommentary', 'Writer of added commentary', 'A person or organization responsible for the commentary or explanatory notes about a text. For the writer of manuscript annotations in a printed book, use Annotator'),
(407, 1, 9, 'placeOfBirthAsLiteral', 'Place of Birth (Literal)', 'This property is equivalent to gndo:placeOfBirth but gives a literal instead of\n		a reference to a geographic entity'),
(408, 1, 9, 'westernmostLongitude', 'Westernmost longitude', NULL),
(409, 1, 9, 'correspondent', 'Correspondent', 'Person, die zu der im Datensatz beschriebenen\n	Person oder Körperschaft als Korrespondenzpartner in Beziehung steht.'),
(410, 1, 9, 'editor', 'Herausgeber', 'A person, family, or organization contributing to a resource by revising or elucidating the content, e.g., adding an introduction, notes, or other critical matter. An editor may also prepare a resource for production, publication, or distribution. For major revisions, adaptations, etc., that substantially change the nature and content of the original work, resulting in a new work, see author'),
(411, 1, 9, 'topic', 'Thema', 'Topic that is related to a corporate body, conference, person, family, subject heading or work.');
INSERT INTO `property` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(412, 1, 9, 'sponsorOrPatron', 'Sponsor oder Mäzen', 'A person, family, or organization sponsoring some aspect of a resource, e.g., funding research, sponsoring an event'),
(413, 1, 9, 'languageCode', 'Language code', NULL),
(414, 1, 9, 'painter', 'Maler', 'Eine Person oder Familie, die malt'),
(415, 1, 9, 'fieldOfActivity', 'Field of activity', 'Beschäftigungsfeld/Wissensgebiet mit dem sich eine Person, Körperschaft, Konferenz oder Veranstaltung beschäftigt oder beschäftigt hat.'),
(416, 1, 9, 'poet', 'Dichter', 'An author of the words of a non-dramatic musical work (e.g. the text of a song), except for oratorios'),
(417, 1, 9, 'subeditor', 'Subeditor', 'A person or organization who writes or develops the framework for an item without being intellectually responsible for its content'),
(418, 1, 9, 'preferredName', 'Preferred name', NULL),
(419, 1, 9, 'relatedSubjectHeading', 'Related subject heading', NULL),
(420, 1, 9, 'firstAuthor', 'First author', 'A person or organization that takes primary responsibility for a\n		particular activity or endeavor. May be combined with another relator term or code to\n		show the greater importance this person or organization has regarding that particular role.\n		If more than one relator is assigned to a heading, use the Lead relator only if it applies\n		to all the relators.'),
(421, 1, 9, 'playedInstrument', 'Played instrument', NULL),
(422, 1, 9, 'screenwriter', 'Screenwriter', 'An author of a screenplay, script, or scene'),
(423, 1, 9, 'choreographer', 'Choreographer', 'A person responsible for creating or contributing to a work of movement'),
(424, 1, 9, 'organizerOrHost', 'Veranstalter oder Gastgeber', 'A person, family, or organization organizing the exhibit, event, conference, etc., which gave rise to a resource'),
(425, 1, 9, 'broaderTermGeneric', 'Oberbegriff generisch', 'Eine generische Relation ist eine hierarchische Relation zwischen\n      zwei Begriffen, von denen der untergeordnete Begriff alle Merkmale des übergeordneten Begriffs\n      besitzt und zusätzlich noch mindestens ein weiteres Merkmal.'),
(426, 1, 9, 'placeOfDiscovery', 'Place of discovery', 'Der Fundort eines Werks'),
(427, 1, 9, 'sculptor', 'Sculptor', 'An artist responsible for creating a three-dimensional work by modeling, carving, or similar technique'),
(428, 1, 9, 'designer', 'Designer', 'A person, family, or organization responsible for creating a design for an object'),
(429, 1, 9, 'precedingSubject', 'Preceding subject heading', NULL),
(430, 1, 9, 'relatedConferenceOrEvent', 'Related conference or event', NULL),
(431, 1, 9, 'variantNameForTheWork', 'Variant name for the work', NULL),
(432, 1, 9, 'literarySource', 'Vorlage', 'Die beschriebene Entität ist eine Realisierung des in Beziehung stehenden Werkes'),
(433, 1, 9, 'easternmostLongitude', 'Easternmost longitude', NULL),
(434, 1, 9, 'relatedFamily', 'Related family', NULL),
(435, 1, 9, 'instrument', 'Instrument', 'A musical instrument, a device to perform music with'),
(436, 1, 9, 'firstComposer', 'First composer', 'A person or organization that takes primary responsibility for a particular activity or endeavor. May be combined with another relator term or code to show the greater importance this person or organization has regarding that particular role. If more than one relator is assigned to a heading, use the Lead relator only if it applies to all the relators'),
(437, 1, 9, 'preferredNameForTheWork', 'Preferred name for the work', NULL),
(438, 1, 9, 'occasionOfTheWork', 'Occasion of the work', NULL),
(439, 1, 9, 'definition', 'Definition', NULL),
(440, 1, 9, 'temporaryNameOfTheCorporateBody', 'Zeitweiser Name der Körperschaft', NULL),
(441, 1, 9, 'inventor', 'Inventor', 'A person, family, or organization responsible for creating a new device or process'),
(442, 1, 9, 'epithetGenericNameTitleOrTerritory', 'Beiname, Gattungsname, Titulatur, Territorium', NULL),
(443, 1, 9, 'etcher', 'Etcher', 'A person or organization who produces text or images for printing by subjecting metal, glass, or some other surface to acid or the corrosive action of some other substance'),
(444, 1, 9, 'mediumOfPerformance', 'Besetzung im Musikbereich', NULL),
(445, 1, 9, 'librettist', 'Librettist', 'An author of a libretto of an opera or other stage work, or an oratorio'),
(446, 1, 9, 'broaderTermGeneral', 'Oberbegriff allgemein', 'Broader term'),
(447, 1, 9, 'contributingPerson', 'Contributing person', NULL),
(448, 1, 9, 'professionOrOccupationAsLiteral', 'Beruf oder Beschäftigung (Literal)', 'Berufs- oder Tätigkeitsbezeichnung bzw.\n	Bezeichnung für die Religionszugehörigkeit oder die Weltanschauung einer\n	Person. Diese Property ist äquivalent zu gndo:professionOrOccupation, zeigt aber ein Literal\n		statt einer Referenz zu einem Schlagwort'),
(449, 1, 9, 'relatedWork', 'Related work', NULL),
(450, 1, 9, 'bookdesigner', 'Bookdesigner', 'A person or organization involved in manufacturing a manifestation by being responsible for the entire graphic design of a book, including arrangement of type and illustration, choice of materials, and process used'),
(451, 1, 9, 'temporaryNameOfTheConferenceOrEvent', 'Temporary name of the conference or event', NULL),
(452, 1, 9, 'broaderTermInstantial', 'Oberbegriff instantiell', 'Die Instanzbeziehung verbindet ein allgemeines Konzept, etwa eine\n      Klasse von Dingen oder Ereignissen mit einem individuellen Exemplar dieser Klasse, das oft\n      durch einen Eigennamen repräsentiert wird.'),
(453, 1, 9, 'hierarchicalSuperiorOfTheCorporateBody', 'Hierarchical superior of the corporate body', NULL),
(454, 1, 9, 'bookbinder', 'Bookbinder', 'A person who binds an item'),
(455, 1, 9, 'dateOfDeath', 'Sterbedatum', 'Das Sterbedatum einer Person. Dies kann ein Jahr, eine Kombination von Jahr und Monat oder ein vollständiges Datum sein.'),
(456, 1, 9, 'doubtfulComposer', 'Angezweifelter Komponist', 'A person or organization to which authorship has been dubiously or incorrectly ascribed'),
(457, 1, 9, 'precedingCorporateBody', 'Vorherige Körperschaft', NULL),
(458, 1, 9, 'broderTermGeneral', 'Broader term (general)', 'Bitte verwenden Sie gndo:broaderTermGeneral'),
(459, 1, 9, 'placeOfCustody', 'Aufbewahrungsort', 'Der Aufbewahrungsort eines Werkes'),
(460, 1, 9, 'familialRelationship', 'Familiäre Beziehung', 'Person, die zu der beschriebenen Person in\n	familiärer bzw. verwandtschaftlicher Beziehung steht. Für Beziehungen von\n	oder zu Familien wird gndo:memberOfTheFamily verwendet.'),
(461, 1, 9, 'contributinFamily', 'Contributing family', 'Use contributingFamily instead.'),
(462, 1, 9, 'narrowerTermGeneric', 'Narrower term (generic)', 'Eine generische Relation ist eine hierarchische Relation zwischen\n      zwei Begriffen, von denen der untergeordnete Begriff alle Merkmale des übergeordneten Begriffs\n      besitzt und zusätzlich noch mindestens ein weiteres Merkmal.'),
(463, 1, 9, 'periodOfActivity', 'Wirkungsdaten', 'Exaktes Wirkungsdatum einer Person'),
(464, 1, 9, 'curator', 'Kurator', 'A person, family, or organization conceiving, aggregating, and/or organizing an exhibition, collection, or other item'),
(465, 1, 9, 'artist', 'Artist', NULL),
(466, 1, 9, 'hierarchicalSuperiorOfTheConferenceOrEvent', 'Hierarchical superior of the conference or event', NULL),
(467, 1, 9, 'gndSubjectCategory', 'GND subject category', NULL),
(468, 1, 9, 'scriptorium', 'Scriptorium', 'A scriptorium in a monastery'),
(469, 1, 9, 'restorer', 'Restorer', 'A person, family, or organization responsible for the set of technical, editorial, and intellectual procedures aimed at compensating for the degradation of an item by bringing it back to a state as close as possible to its original condition'),
(470, 1, 9, 'occasion', 'Occasion', 'Reason of the entity, e.g. a work or a historic event\n		is the reason of a conference, or a conference is the reason of a work.'),
(471, 1, 9, 'engraver', 'Engraver', 'A person or organization who cuts letters, figures, etc. on a surface, such as a wooden or metal plate used for printing'),
(472, 1, 12, 'vocgregid_comm', 'Identifiant_Commentaires', NULL),
(473, 1, 12, 'vocgregpseudo', 'Pseudo', NULL),
(474, 1, 12, 'vocgregadresse', 'Adresse', NULL),
(475, 1, 12, 'vocgregmail', 'Mail', NULL),
(476, 1, 12, 'vocgregcontenu', 'Contenu du commentaire', NULL),
(477, 1, 12, 'vocgregid_articles', 'Identifiants de l\'article', NULL),
(478, 1, 12, 'vocgregtitres', 'Titres de l\'article', NULL),
(479, 1, 12, 'vocgregid_categories', 'Identifiants de la catégorie', NULL),
(480, 1, 12, 'vocgregnom_catégorie', 'Nom de la catégorie', NULL),
(481, 1, 12, 'vocgregid_tags', 'identifiant du tag', NULL),
(482, 1, 12, 'vocgregmot_tags', 'mot dans le tag', NULL);

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
(1, 1, 94, NULL, NULL, 'luc toto', 1, '2020-04-27 20:49:16', '2020-04-27 20:49:16', 'Omeka\\Entity\\Item'),
(2, 1, 31, 3, NULL, 'Michael Jordan à nu dans « The Last Dance » sur Netflix', 1, '2020-04-27 23:15:12', '2020-04-27 23:15:12', 'Omeka\\Entity\\Item'),
(3, 1, 31, 3, NULL, 'Football américain : Tom Brady quitte les New England Patriots', 1, '2020-04-27 23:17:15', '2020-04-27 23:17:15', 'Omeka\\Entity\\Item'),
(4, 1, 126, 4, NULL, 'BASKET', 1, '2020-04-27 23:18:01', '2020-04-27 23:29:43', 'Omeka\\Entity\\Item'),
(5, 1, 126, 4, NULL, 'FOOTBALL AMERICAIN', 1, '2020-04-27 23:19:38', '2020-04-27 23:28:55', 'Omeka\\Entity\\Item'),
(6, 1, 144, 5, NULL, 'TAG BASKET', 1, '2020-04-27 23:21:06', '2020-04-27 23:28:11', 'Omeka\\Entity\\Item'),
(7, 1, 144, 5, NULL, 'Tag Football', 1, '2020-04-27 23:21:58', '2020-04-27 23:27:42', 'Omeka\\Entity\\Item'),
(8, 1, 144, 5, NULL, 'Tag Americain', 1, '2020-04-27 23:22:44', '2020-04-27 23:27:14', 'Omeka\\Entity\\Item'),
(9, 1, 113, 6, NULL, 'commentaire 1', 1, '2020-04-27 23:24:33', '2020-04-27 23:25:43', 'Omeka\\Entity\\Item');

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
(106, 1, 6, 'AGLSAgentClass', 'AGLS Agent Class', 'A set of agent encoding schemes and/or formats'),
(107, 1, 6, 'AvailClass', 'Availability Class', 'A set of availability encoding schemes and/or formats'),
(108, 1, 6, 'DocumentClass', 'Document Class', 'A set of document encoding schemes and/or formats'),
(109, 1, 6, 'FunctionClass', 'Function Class', 'A set of function encoding schemes and/or formats'),
(110, 1, 6, 'JuriClass', 'Jurisdiction Class', 'A set of jurisdiction encoding schemes and/or formats'),
(111, 1, 6, 'ServiceClass', 'Service Class', 'A set of service encoding schemes and/or formats'),
(112, 1, 6, 'agls-audience', 'AGLS Audience Vocabulary', 'The set of audience types specified by the AGLS Audience Scheme.'),
(113, 1, 7, 'Commentary', 'Commentary', 'This class represents short form creative works in the shape of updates. These differ from the other types of creative works because they haven\'t got independent URLs  as (primaryContentOf) from which they can be retrieved.'),
(114, 1, 7, 'LiveEventPage', 'LiveEventPage', 'This class is created to support the LiveEventPages from CPS. This will be soon deprecated for the sake of LiveCoverage'),
(115, 1, 7, 'TravelIncident', 'TravelIncident', 'This class is used to describe creative works which are Travel Incidents.'),
(116, 1, 7, 'Episode', 'Episode', 'The Episodes subclass of programmes produced by the BBC.'),
(117, 1, 7, 'Clip', 'Clip', 'The Clips subclass of programmes produced by the BBC.'),
(118, 1, 7, 'BlogPost', 'BlogPost', 'This is the class of creative works that are associated with particular journalists or correspondents. The analysis, commentary and personal viewpoint of the creator is reflected on the blog post and the blog post is usually associated prominently with the name of the creator. BlogPost can have different types of formats.'),
(119, 1, 7, 'Programme', 'Programme', 'The class of programmes produced by the BBC'),
(120, 1, 7, 'LiveCoverage', 'LiveCoverage', 'This class is used to describe that creative works which are coverage of a live event. (Note that this isn\'t meant to describe the fact that the event is live currently. An example of a Live Coverage creative work is the live event page covering live the England VS Australia cricket match, last saturday\'s football matches or last year\'s elections)'),
(121, 1, 7, 'Thumbnail', 'Thumbnail', 'Used to associate a Creative Work with the canonical location of the thumbnail. The URI of each of its instances is the full canonical location of the thumbnail'),
(122, 1, 7, 'Audience', 'Audience', 'Enumerated class of the audiences the BBC creates content for.'),
(123, 1, 7, 'WeatherAlert', 'WeatherAlert', 'This class is used to describe creative works which are Weather Alerts.'),
(124, 1, 7, 'Format', 'Format', 'The primary format of the CreativeWork and it can be one of the five instances. This is needed for selecting the appropriate icon with which to overlay the preview thumbnail of the creative work.'),
(125, 1, 7, 'NewsItem', 'NewsItem', 'The class of all news items that the BBC produces. They can be textual articles, or media asset pages (audio or video) or live coverage of events (use the liveCoverage property).'),
(126, 1, 7, 'Category', 'Category', 'A class to represent different categorisations of creative works from different clients. This class is instantiated in the clients\' application logic models.'),
(127, 1, 7, 'ThumbnailType', 'ThumbnailType', 'Enumerated class of the allowed thumbnail types'),
(128, 1, 7, 'CreativeWork', 'CreativeWork', 'The class of creative works produced by the BBC.'),
(129, 1, 8, 'AnnotatedResource', 'Annotated resource', 'Used to represent the HTTP-accessible realization of an information resource on the Web. The equivalent of irw:WebRepresentation, the Annotated Resource is that which generally triggers the act of tagging. Being dereferenceable by definition, it also provides the address that will be bookmarked on delicious-like sites and work like an anchor for tags. This said, the resource being tagged is in no way limited to HTTP-accessible data (indeed, what supports an act of tagging may very well be what the Web representation represents, a non-information resource for example, instead of the Web representation itself).'),
(130, 1, 8, 'TaggedResource', 'Tagged resource', 'Used to represent the resource being tagged. Equivalent of irw:Resource.'),
(131, 1, 8, 'PartOfWebRepresentation', 'Part Of Web representation', 'Used to represent the part of the Web representation resource being tagged after the \"Point\" TagAction is used.'),
(132, 1, 8, 'TagAction', 'Tag action', 'A super class to describe every tag action as modelled by a named graph according to RDF Graph model (RDFG).'),
(133, 1, 8, 'OwnerTagAction', 'Owner tag action', 'Used to describe an act of tagging performed by the owner of the URI that identifies the tagged resource.'),
(134, 1, 8, 'VisitorTagAction', 'Visitor tag action', 'Used to describe an act of tagging performed by a the person who browsed a Web representation.'),
(135, 1, 8, 'Assert', 'Assert', 'Describes the action that is performed with a tag whenever it is used to assert anything about a resource.'),
(136, 1, 8, 'ExpressFeelings', 'Express feelings', 'Describes the action that is performed with a tag whenever it is used to express a feeling, an emotion, etc.'),
(137, 1, 8, 'Evaluate', 'Evaluate', 'Describes the action that is performed with a tag whenever it is used to give a notation, a mark of approval and disapproval, or,\n  more generally speaking, an evaluation.'),
(138, 1, 8, 'GiveAccessRights', 'Give access rights to', 'Describes the action that is performed with a tag whenever it is used to define to whom access rights to a resource are granted or denied.'),
(139, 1, 8, 'Point', 'Point', 'Describes the action that is performed with a tag whenever it is used to point to a specific part of a Web representation (the segment of a video,\n  a user-generated commentary to a newspaper article, etc.).'),
(140, 1, 8, 'SetTask', 'Set task', 'Describes the action that is performed with a \"todo\" tag whenever it is used to create a task awaiting performance.'),
(141, 1, 8, 'Share', 'Share', 'Describes the action that is performed with a tag whenever it is used to share the representation of a WebResource on various services - Twitter or Delicious for instance - with the owner of a sioc:UserAccount (not necessarily a foaf:Person as it might be either a bot, a person or an institution whose representatives may well vary over time).'),
(142, 1, 8, 'Aggregate', 'Aggregate', 'Describes the action that is performed whenever resources are aggregated with a collectively defined tag.'),
(143, 1, 8, 'Ask', 'Ask', 'Describes the action that is performed with a tag by asking a question.'),
(144, 1, 8, 'ManualTagAction', 'Manual tag action', 'Describes tags as manually associated to a resource by a human.'),
(145, 1, 8, 'AutoTagAction', 'Auto tag action', 'Describes tags as automatically generated and/or associated to a resource by a computer.'),
(146, 1, 8, 'WebConceptTagAction', 'Web concept tag action', 'Describes tagging involving Web concepts (such as geonames).'),
(147, 1, 8, 'SyntacticTagAction', 'Syntactic Tag Action', 'Describes tags whose labels are following a given syntax for improved precision and tractability.'),
(148, 1, 8, 'MachineTagAction', 'Machine tag action', 'Describes tags whose labels are using the syntax of machine tags as implemented first in Flickr.com.'),
(149, 1, 8, 'N-TupleTagAction', 'N-tuple tag action', 'Describes tagging involving N-tuple tags (double tags, triple tags, etc.).'),
(150, 1, 8, 'DisambiguatedTagAction', 'Disambiguate Tag Action', 'Used when the sign used to tag is disambiguated.'),
(151, 1, 8, 'N-TupleTagActionMTS', 'N-tuple tag action with machine tag syntax', 'Describes tagging involving N-tuple tags which follow machine tags typed syntax in acontext where Flickr-like APIs are lacking.'),
(152, 1, 8, 'TagCollection', 'Tag collection', 'Undefined collection of tags.'),
(153, 1, 8, 'CommunityTagCollection', 'Community tag collection', 'A collection of tags generated by the users of a given online community or Web service.'),
(154, 1, 8, 'PersonalTagCollection', 'Personal tag collection', 'A collection of tags generated by a single user.'),
(155, 1, 9, 'Expression', 'Expression', NULL),
(156, 1, 9, 'CollectiveManuscript', 'Collective manuscript', NULL),
(157, 1, 9, 'BuildingOrMemorial', 'Building or memorial', NULL),
(158, 1, 9, 'LaterNameOfThePerson', 'Later name of the person', 'Die vorliegende abweichende Namensform ist der spätere Name einer Person, wie der \n		Ehename etc., der nicht als bevorzugter Name gewählt wird.'),
(159, 1, 9, 'Country', 'Country', NULL),
(160, 1, 9, 'PseudonymNameOfThePerson', 'Pseudonym name of the person', NULL),
(161, 1, 9, 'Family', 'Family', NULL),
(162, 1, 9, 'Spirits', 'Spirits', NULL),
(163, 1, 9, 'UndifferentiatedPerson', 'Undifferentiated person', NULL),
(164, 1, 9, 'CharactersOrMorphemes', 'Characters or morphemes', NULL),
(165, 1, 9, 'DifferentiatedPerson', 'Differentiated person', NULL),
(166, 1, 9, 'FictiveTerm', 'Fictive term', NULL),
(167, 1, 9, 'RealNameOfThePerson', 'Real name of the person', 'The person’s real name'),
(168, 1, 9, 'MusicalCorporateBody', 'Musical corporate body', NULL),
(169, 1, 9, 'ProvenanceCharacteristic', 'Provenance characteristic', 'Provenienzmerkmale bezeichnen spuren, die\n	Vorbesitzer (Personen und Institutionen) in und auf Büchern, Handschriften\n	oder anderen Artefakten hinterlassen haben. Diese Merkmale kennzeichnen\n	Besitz, Lesespuren oder Zensurabsichten.'),
(170, 1, 9, 'NaturalGeographicUnit', 'Natural geographic unit', NULL),
(171, 1, 9, 'ConferenceOrEvent', 'Conference or Event', NULL),
(172, 1, 9, 'TerritorialCorporateBodyOrAdministrativeUnit', 'Territorial corporate body or administrative unit', NULL),
(173, 1, 9, 'SeriesOfConferenceOrEvent', 'Series of conference or event', NULL),
(174, 1, 9, 'PlaceOrGeographicName', 'Place or geographic name', NULL),
(175, 1, 9, 'PreferredNameOfThePerson', 'Preferred name of the person', NULL),
(176, 1, 9, 'Work', 'Work', NULL),
(177, 1, 9, 'NameOfSmallGeographicUnitLyingWithinAnotherGeographicUnit', 'Name of small geographic unit lying within another geographic\n      unit', NULL),
(178, 1, 9, 'FullerFormOfNameOfThePerson', 'Fuller form of the name of the person', 'The complete or a fuller form of name of a person, family or corporate body'),
(179, 1, 9, 'ReligiousAdministrativeUnit', 'Religious administrative unit', NULL),
(180, 1, 9, 'SubjectHeading', 'Subject heading', NULL),
(181, 1, 9, 'MusicalWork', 'Musical work', NULL),
(182, 1, 9, 'FictiveCorporateBody', 'Fictive corporate body', NULL),
(183, 1, 9, 'VariantNameOfThePerson', 'Variant name of the person', NULL),
(184, 1, 9, 'HistoricSingleEventOrEra', 'Historic single event or era', NULL),
(185, 1, 9, 'GroupOfPersons', 'Group of persons', NULL),
(186, 1, 9, 'CollectivePseudonym', 'Collective pseudonym', NULL),
(187, 1, 9, 'EthnographicName', 'Ethnographic name', NULL),
(188, 1, 9, 'Person', 'Person', NULL),
(189, 1, 9, 'LiteraryOrLegendaryCharacter', 'Literary or legendary character', NULL),
(190, 1, 9, 'ReligiousCorporateBody', 'Religious corporate body', NULL),
(191, 1, 9, 'MeansOfTransportWithIndividual_name', 'Means of transport with individual name', 'Use gndo:MeansOfTransportWithIndividualName'),
(192, 1, 9, 'Fictive_term', 'Fiktiver Sachbegriff', 'Use FictiveTerm instead'),
(193, 1, 9, 'AuthorityResource', 'Authority Resource', NULL),
(194, 1, 9, 'Manuscript', 'Manuscript', NULL),
(195, 1, 9, 'CorporateBody', 'Körperschaft', NULL),
(196, 1, 9, 'ProductNameOrBrandName', 'Product name or brand name', NULL),
(197, 1, 9, 'SubjectHeadingSensoStricto', 'Subject heading senso stricto', NULL),
(198, 1, 9, 'FictivePlace', 'Fictive place', NULL),
(199, 1, 9, 'Language', 'Language', NULL),
(200, 1, 9, 'VersionOfAMusicalWork', 'Version of a musical work', NULL),
(201, 1, 9, 'Pseudonym', 'Pseudonym', 'Die vorliegende abweichende Namensform ist der\n			wirkliche Name einer Person, für die als bevorzugter Name ein Pseudonym\n			gewählt wird.'),
(202, 1, 9, 'NomenclatureInBiologyOrChemistry', 'Nomenclature in biology or chemistry', NULL),
(203, 1, 9, 'ReligiousTerritory', 'Religious territory', NULL),
(204, 1, 9, 'EarlierNameOfThePerson', 'Earlier name of the person', 'Der vorliegende abweichende Name ist der frühere Name einer Person,\n		wie beispielsweise der Geburtsname, frühere Ehename usw.'),
(205, 1, 9, 'ProjectOrProgram', 'Project or program', NULL),
(206, 1, 9, 'SoftwareProduct', 'Software product', NULL),
(207, 1, 9, 'OrganOfCorporateBody', 'Organ of corporate body', NULL),
(208, 1, 9, 'NameOfThePerson', 'Name of the person', NULL),
(209, 1, 9, 'RoyalOrMemberOfARoyalHouse', 'Royal or member of a royal house', NULL),
(210, 1, 9, 'Gods', 'Gods', NULL),
(211, 1, 9, 'ExtraterrestrialTerritory', 'Extraterrestrial territory', NULL),
(212, 1, 9, 'Company', 'Company', NULL),
(213, 1, 9, 'MeansOfTransportWithIndividualName', 'Means of transport with individual name', NULL),
(214, 1, 9, 'Collection', 'Collection', NULL),
(215, 1, 9, 'WayBorderOrLine', 'Way, border or line', NULL),
(216, 1, 9, 'AdministrativeUnit', 'Administrative unit', NULL),
(217, 1, 9, 'MemberState', 'Member state', NULL),
(306, 1, 12, 'vocgregCommentaires', 'Commentaires', NULL),
(307, 1, 12, 'vocgregArticles', 'Articles', NULL),
(308, 1, 12, 'vocgregCategories', 'Catégories', NULL),
(309, 1, 12, 'vocgregTags', 'Tags', NULL);

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
(3, 1, 31, NULL, NULL, 'Articles'),
(4, 1, 126, NULL, NULL, 'Catégories'),
(5, 1, 144, NULL, NULL, 'Tags'),
(6, 1, 113, NULL, NULL, 'Commentaires');

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
(27, 3, 10, NULL, NULL, 1, NULL, 0, 0),
(28, 3, 1, NULL, NULL, 2, NULL, 0, 0),
(29, 3, 91, NULL, NULL, 3, NULL, 0, 0),
(30, 4, 10, NULL, NULL, 1, NULL, 0, 0),
(31, 4, 138, NULL, NULL, 2, NULL, 0, 0),
(32, 5, 10, NULL, NULL, 1, NULL, 0, 0),
(33, 5, 201, NULL, NULL, 2, NULL, 0, 0),
(34, 6, 10, NULL, NULL, 1, NULL, 0, 0),
(35, 6, 346, NULL, NULL, 2, NULL, 0, 0),
(36, 6, 293, NULL, NULL, 3, NULL, 0, 0),
(37, 6, 123, NULL, NULL, 4, NULL, 0, 0),
(38, 6, 91, NULL, NULL, 5, NULL, 0, 0);

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
('2u8bft2th19f1vaabqmii20l2j', 0x5f5f5a467c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383033303430392e3039363939373b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226969357539393834706c6f3036746e736c72303161636e6b7562223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383031353336353b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383033343030393b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538383033333939353b7d733a31313a2245617379496e7374616c6c223b613a323a7b733a363a22455850495245223b693a313538383031383032323b733a31313a224558504952455f484f5053223b613a323a7b733a343a22686f7073223b693a31303b733a323a227473223b643a313538383031343432302e3930353737383b7d7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383032393930383b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383033323435313b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226435383539663063356264323561616666353165373639323063353365636636223b733a33323a226239653531613663616239643164663936363234393234323963336634313933223b7d733a343a2268617368223b733a36353a2262396535316136636162396431646639363632343932343239633366343139332d6435383539663063356264323561616666353165373639323063353365636636223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a353139323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a36313a7b733a33323a223336376135623830383238383030333763633139663039636533376535346432223b733a33323a226438343264663531633839326133393635363464396631366131323730343565223b733a33323a223339353437346165613366373134636365653132633863656139323033613066223b733a33323a223438366465663033646466336461663932303430666630323632336635326263223b733a33323a226462356165616336623037353533393865373130353131666662636666383966223b733a33323a223936636162396561616166303739363337313562303731366565386437336165223b733a33323a223635623835623839346330396530306462386239643930333865613536646665223b733a33323a226537656363613065656231343566373232616565666163393132313138656234223b733a33323a223261636133336231633038333937623939303138626363333834613332313562223b733a33323a223132363030363538313866623431353538356130623366343165626238393064223b733a33323a226330373661326639356263316261376362353738383563356561643233616133223b733a33323a223338323038633463643763663138613765623464333233613962363631623463223b733a33323a226336383531393239333036643364636432346332633035313034333231653533223b733a33323a226366376136373233333361376634323435323364653062333635343235333761223b733a33323a223539616431343239313335303066313937333366376438346166343661373532223b733a33323a223434366662336631373361666136633035343632663938366134333531373739223b733a33323a223333643539343633633833626536313133346135626262356465316531626337223b733a33323a223030663938303365646635613533353538333834383065366266656661643462223b733a33323a226131653737363035386464373734323933373937303464623162663566353835223b733a33323a223661653439643133633363373565303934393336663933303964323730353964223b733a33323a223030306238613961323363313134303030383038656437626466396466323336223b733a33323a226535316630373234643463343466633964383064626265636438313438386261223b733a33323a226638633765663630656430636536306363616433386335396237626363633234223b733a33323a226264653935663133373963663135366434313063303638646633303437386438223b733a33323a223333663732653962383164373561666437333066323362376662653861393537223b733a33323a226463636362396237303137656139613263376163393339633032376331656265223b733a33323a223466303065323531656163386537663366316365323364383639623065366430223b733a33323a226566383264613134633530656364383562383063636439663730616230373564223b733a33323a226437633261343831373039373039316231313738353632626431653965663362223b733a33323a223463616236663131353565303562353837346333306530333630623035393461223b733a33323a223438363738616630366361396464333537376331666435376238646130326265223b733a33323a223332393162336634313536353366343337323062396139343438396335333537223b733a33323a223134643663633138326539373332306135323539313366393432383064636238223b733a33323a226562653734393531323839383336313637643264633431346532343965653339223b733a33323a226164303361643436373233336665346531323864343236393935333261343463223b733a33323a226638323165396530323865386630333638626633323034336263386463396438223b733a33323a223833646163373734343664663130396338363534333538323231313062383833223b733a33323a226439313165376166326566653736353162656330326432396233393638316336223b733a33323a223236313161653730646265306262363464353430323435303062626266626135223b733a33323a223035633262333738336564346239323961393662386431326465306666343236223b733a33323a226465663239636334333337343630386461343266623566366532383662366531223b733a33323a223735376134316137656364323733366634663238353935386264626263356266223b733a33323a223365343863336336646462373961396166333362383761353264646136666465223b733a33323a223733663164383531623439646663336561386636386362383134343763306162223b733a33323a226238363966623864353535303361653735316538323066643033333964646636223b733a33323a223262336634303866376666306163656261636534623134393030363266626338223b733a33323a226131396166356361313538373565376133626536316135396666326531346638223b733a33323a226531343165303966396636633061333037393266613766333437633630643430223b733a33323a223861653535393137363232636563356231303533336261653763326538333131223b733a33323a226636623066653566393238663738623837373734326466333039636664646439223b733a33323a223235366535343863316330376134313562666463396235666561383334616335223b733a33323a223937613634333834663637353364643630313535613635373632373838316636223b733a33323a223364333165323635393232363933323738636634383463323333343937353637223b733a33323a223138353161326661316266626564356266666434643765663731653138663639223b733a33323a223933656565346538346638366361653934366461613536663462623766333964223b733a33323a223633633633323862373836363530326366333065653930613637643661383863223b733a33323a223634343166353834613937383664653038343738363466643231363239363537223b733a33323a226638663630373733376537376537353537383030346435613935653030313737223b733a33323a223039353636323435323031643663313133343331376530656634666363616239223b733a33323a223666376162653133376236336465343334336563363032333732633264333833223b733a33323a223539643635373862376337643937306430373864343864663065326230616337223b733a33323a226231393762356138356233363533363535356536316266613064653438383465223b733a33323a226433313631323832616338313066316266376161363263656439393766386537223b733a33323a223831386538316165353534626436353639386130613161373931663733613138223b733a33323a226561333631646262386332393438346362653561323236376434623131613239223b733a33323a223635383264306131663530373933333933363931316236393834643963363234223b733a33323a223162303435616331323165373636633639323637356563333731373133613164223b733a33323a226363346362366666653634343237393138383765313238613730313862626133223b733a33323a226536393466636131316338313038383966653939343937666464383564646132223b733a33323a223238303230656436343839626233663237336338393231383865616136323831223b733a33323a226265346139373837316332383865343538363438626333666266386535303131223b733a33323a226461373866613666346134663836356332613734346563666336333732303038223b733a33323a226537396238313930636233383836613331366639306631313531666565616235223b733a33323a223331323333656661336234336133373135383765623964646663653838666566223b733a33323a226438363165666330663364313764656433643864333231316566363066643962223b733a33323a226238363531623535303063623561343533363461643362646335396366616365223b733a33323a223939393638346565396337316130396332386230643730306530613135646234223b733a33323a223165613330333631353362313438383430633338313161633436393932336332223b733a33323a223337616239373566386633663638386566363162646634633563613036633461223b733a33323a223162366436623466633534306233656533333766623762373033663739663137223b733a33323a226230353636646239313864623337366463643463353935356662636636616630223b733a33323a223862366364636134373162666133633533663130383836313234386230303039223b733a33323a223530663030336636623963346631376332393233333031636637346466346330223b733a33323a223030643331613964313634656462663830353466623335643331386232373266223b733a33323a223638353734636532316232383862303166336161626665313833646532616466223b733a33323a226534653638623438633637626432616636613838353561316236653837616336223b733a33323a226638396133616235336263663566653565663065383833666533363263396132223b733a33323a223239303136386361646631313135366662363933636339393662333861646439223b733a33323a223964323661306161666339313432323539343833626539333865323436353432223b733a33323a223335646538663234316433663335656232386663393035626138323164663439223b733a33323a223538643161386333353438623437383563653336376631663166663830323931223b733a33323a226437363261373637636164636231373732653864626262316464313236383433223b733a33323a226330616666353132613238363734326336343639336330343239643935323261223b733a33323a223335333666376265326630303965653433376464386334383934383231326365223b733a33323a223632633864643339643835633431663664313966623465653737383361613966223b733a33323a223862646433343366323535663362346666323334373765333863323031666534223b733a33323a223035326532333364323035343335376437363661346337313836643865363732223b733a33323a223164326334626630616365643038386235363963636239373832343032613039223b733a33323a223234666334336237646538623739613534633937343565626336396135643137223b733a33323a226230393030663631323462643939396330393165333031323936633335306465223b733a33323a226365333935393532343762346430326332663337306664373733303131613134223b733a33323a223437643935663964643161353838306439386430663934306663373731643337223b733a33323a223030653939656632393961626464656132613337396465666332666630303035223b733a33323a223635386637636231623437623735336330333639613335633165613235616531223b733a33323a223564386332373665396563616431613635656665383637616662666538383033223b733a33323a226466623032313338303236643965626566306233313232643134613066333563223b733a33323a223130323165343538633663383033636339353339363663643437636564353239223b733a33323a226435383935663035326164366238326232303236656164376539343963323534223b733a33323a226363646535306438343739663665356435643466633137376437653565356135223b733a33323a223666316366383533376263623664623632333937303238643430653862306333223b733a33323a223261333261333533616437666565373464636436613266653961616662353937223b733a33323a223838313336636633373837393163363262626237613739643038623035373736223b733a33323a226365336539393230343139633434356633306365643563656562646538613639223b733a33323a223539643763626537623233333239353136343062653133333361393063303762223b733a33323a226163346561343739346136636663656161623238646333613665643763663363223b733a33323a223837366561623165346137343332633363613061376631653831373733333365223b733a33323a223966393030366332333137636436386531326637636236373535343035656364223b733a33323a226431393930343730383233313334656639613930393539333163333135326464223b733a33323a223830313230376230643861613066663362643061383865623062306639386232223b733a33323a223463633038323361613838343361653366623631663239656566373762383736223b733a33323a226462636264333934363634653635346139643838393263626662626239363439223b733a33323a223466613531393264623937636437306436643761366532633438316265303439223b7d733a343a2268617368223b733a36353a2234666135313932646239376364373064366437613665326334383162653034392d6462636264333934363634653635346139643838393263626662626239363439223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313833323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31393a7b733a33323a223762366630366333383565373764646364373430636330633565366635666537223b733a33323a226439623264336439336461333037323131393834646364396437366430666334223b733a33323a226232303135323234373030363061333665616133323862643433646338313636223b733a33323a226337316363656663646166313262393031656336326664623138653037636335223b733a33323a226365663931613331653364643165316530353761333131653036356461346234223b733a33323a223266616536316234326535343437633964336564353236346435373164313362223b733a33323a223237646661653837316132396138643863653761303763613134303064353537223b733a33323a226133636265393539396163303666383237613434346133326163373762303331223b733a33323a223830326337393134633362393264373739666338363534323264333731316631223b733a33323a223233376339636365643765636335333835616139646366633434393566376161223b733a33323a226632396536306261623865613965613437303135386361373463613134313435223b733a33323a226262623561363965636364346333643263393530343236616633376639346538223b733a33323a226130316166326263343761373736363461646362653831383234346130613561223b733a33323a223539373132666662383738663933346534386266373631666239646362613233223b733a33323a223337643632353830333733626635386238616535666434373365396130613033223b733a33323a226130643137393236333036366538303766396536353663376333396232363630223b733a33323a223930383565376430633961643030633563323131373861386333633664646537223b733a33323a226339333965343635323630303462353534353935313562393364633536666630223b733a33323a223237396134393964323333373330313937393435306164306238336665323163223b733a33323a223539383534653932356330343139373535323031626534613635313839613666223b733a33323a223361366562396233663739366433626134643530633938643437323731363065223b733a33323a226636333135343765613064376566623166636334343763663662626133353664223b733a33323a223837613734633638353135306364313835666430643465366561333666336362223b733a33323a226564363832633765323339653032303762636363313134383434383561323338223b733a33323a223336353361383664663861613865303131613937393033366537646362623565223b733a33323a226163363665313435366231313166663432346230616362666566353962333466223b733a33323a223732363031653237663963313531616436613535393831316235643563373831223b733a33323a223964356164353433646366643866663330396232363564393162323939336330223b733a33323a223232333834653435623536626163346666646561356137396661643431653430223b733a33323a226639346536303131643532333865366136303562353230396563656461623532223b733a33323a226531396338313136323433633330343835323938396636333533656136323134223b733a33323a223837303237353464346563373838316433633838353337326666383735316535223b733a33323a223031343336653066313032313835323565623162653231363465333363373435223b733a33323a226565366137666164323766636438653862653761373937313761666164666335223b733a33323a226166313234333863363236366161653030353238316665383961623566663730223b733a33323a226366396166306263383838616462613338386538393432343063616161303363223b733a33323a226131316635346134336138393637326230353561313736386439616333333266223b733a33323a223131326330356237626339303964396162373634386665343238633436623164223b7d733a343a2268617368223b733a36353a2231313263303562376263393039643961623736343866653432386334366231642d6131316635346134336138393637326230353561313736386439616333333266223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d45617379496e7374616c6c7c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3331303a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a363a226164646f6e73223b613a343a7b733a31313a226f6d656b616d6f64756c65223b613a303a7b7d733a31303a226f6d656b617468656d65223b613a303a7b7d733a363a226d6f64756c65223b613a303a7b7d733a353a227468656d65223b613a303a7b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313131323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31303a7b733a33323a223535303537373830613666636639396133333337346135666436306538396632223b733a33323a226464363139373266396261356463316530303935363966613464323737363463223b733a33323a223037663439396262333237393034643837306230396233316637396362393362223b733a33323a223734626464303231326535303361393930396164383662323439643463643736223b733a33323a226261326537373465373565363164343265383833666237653264613032666230223b733a33323a226564353961353662653564656364643333303832396663653436323965323639223b733a33323a226461623537393736343862643335653664313361313364326631376233353861223b733a33323a226534623730663234346664343034353662333939313866396530633939666361223b733a33323a226361336662656365343039623766353235626430306665363461633663336464223b733a33323a226263306531626664633963613866363064383262313930336135376233333435223b733a33323a223937306333356464393833396132653363373563653263313734653765613963223b733a33323a223061663662363532653663653231656465316239346637323233343230356336223b733a33323a223165313730303832303066373637336531623839303161363164333064333464223b733a33323a223930633831656435316161303534663637393832643135653134383036386261223b733a33323a223034646139633461643362613761316463346631353963373066643637623539223b733a33323a223965373933303731316230633666623739313063373735373561663432636661223b733a33323a223634373437653931326166383732376265343837343063383035303530343532223b733a33323a226463643838353831333263633232343832616230323637643866393237626633223b733a33323a223164666464373262306466373666633036393139303937616636346431666337223b733a33323a223363643061643634353235633565373330333939333331646462373637613663223b7d733a343a2268617368223b733a36353a2233636430616436343532356335653733303339393333316464623736376136632d3164666464373262306466373666633036393139303937616636346431666337223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313539323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31363a7b733a33323a223164613665643934653037333636326136316562373830383166313462636336223b733a33323a226133383438393564356561363636646661373930303562376465373265303062223b733a33323a223236373865303335343736633436326166363739316539383630326331353936223b733a33323a223837666433313961613630633761373135333132366537363130633534373162223b733a33323a223933643234656236653338333936336137393165623263306431303330396265223b733a33323a226536396635326635663034643665336537333135373464336564643336613734223b733a33323a226364343838336237386532636539323734656637343139313065386631363232223b733a33323a223139383235616362383139303930316436616362393734363633646239636636223b733a33323a223764653362333231363939616430383931313830363939303734393764326465223b733a33323a226135653737616534383766663530626562633736396639376664643938623535223b733a33323a223962313836336530393864626666343962656537633330383731373866636131223b733a33323a223239363033616638373833316564376365306138373735623835613938323639223b733a33323a226136343865316333343633383763353362623163303965343934376661353232223b733a33323a223633393364333234326131366337316538626161643838396663316364383566223b733a33323a223161613832353062626466623663663230343330643765373136343234333534223b733a33323a223563356665393964326435346133346333393738353764346237386130313237223b733a33323a223766643433343139646438363739613636616631633636666533653538303766223b733a33323a223566313433613761626139653532656338346366636165656332376336396230223b733a33323a226339323137356161623564373261323561653134343133623430613436663331223b733a33323a226336613861633839303631613934663134666464353037303130646566653931223b733a33323a223631353833643562333535663765623135656166343766376437353561346266223b733a33323a226638633962306263643566396461616134633862646434396332326239336463223b733a33323a226436333633306138343934383631333562386637313730356337626130343333223b733a33323a226566306336383461666332383636643433656433636338633037623465663761223b733a33323a223432306332343164616132386531396231666639376361366663666163616234223b733a33323a223231623836643334346635613264363466623432643732303864386334363363223b733a33323a223066333838366334316531336532656564616332343663636231313432613638223b733a33323a223539643438303530313866366136313465386439636661383863386538333363223b733a33323a223738366264653338313334616632643364393432666463303066663964346664223b733a33323a223465353434383666376438353965646639383064643961653163343862316631223b733a33323a223463366433313837376530323832333937333964666163343736333630666237223b733a33323a223036363663383833613464646661343736363961653535353064646462396139223b7d733a343a2268617368223b733a36353a2230363636633838336134646466613437363639616535353530646464623961392d3463366433313837376530323832333937333964666163343736333630666237223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1588030409);

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
('administrator_email', '\"lallican.gregoire@gmail.com\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"medas_19_20\"'),
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
(1, 'lallican.gregoire@gmail.com', 'Gregoire LALLICAN', '2020-04-27 18:22:43', '2020-04-27 18:22:43', '$2y$10$EwAjoZ57DVAsgw6PiwN6l.ADIH9SBKvOHcmmrpgxXScOhGbfRvyQC', 'global_admin', 1),
(2, 'samuel.szoniecky@univ-paris8.fr', 'Samuel', '2020-04-27 18:33:40', '2020-04-27 18:36:03', '$2y$10$YttQpLABzPW8KOm8IK3W.uaGZAZ3nDG00gZl0jh8FTs9z30EBCHZu', 'global_admin', 1);

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
(1, 1, 1, NULL, 'literal', '', 'luc toto', NULL, 1),
(2, 1, 4, NULL, 'literal', '', 'etudiant m1', NULL, 1),
(3, 1, 131, NULL, 'literal', '', 'tot', NULL, 1),
(4, 1, 144, NULL, 'literal', '', 'toto', NULL, 1),
(5, 1, 139, NULL, 'literal', '', 'luc', NULL, 1),
(6, 1, 182, NULL, 'literal', '', '01/04/2000', NULL, 1),
(7, 2, 10, NULL, 'literal', '', 'A1', NULL, 1),
(8, 2, 1, NULL, 'literal', '', 'Michael Jordan à nu dans « The Last Dance » sur Netflix', NULL, 1),
(9, 2, 91, NULL, 'literal', '', 'Pour ceux à qui le nom de Jordan n’évoque absolument rien, cette série de dix épisodes (diffusés à raison de deux chaque semaine) retrace la dernière saison d’un joueur star de la NBA, à la fin des années 1990, et en profite pour revenir sur sa longue carrière. Pour tous les autres, qu’ils s’intéressent à la balle orange ou non, The Last Dance est un exercice rare : la mise à nu d’un roi.', NULL, 1),
(10, 2, 4, NULL, 'literal', '', 'érie documentaire événement produite par Netflix et la chaîne américaine ESPN, et mise à disposition lundi 20 avril sur la plate-forme de vidéo par abonnement.', NULL, 1),
(11, 3, 10, NULL, 'literal', '', 'A2', NULL, 1),
(12, 3, 1, NULL, 'literal', '', 'Football américain : Tom Brady quitte les New England Patriots', NULL, 1),
(13, 3, 91, NULL, 'literal', '', 'Le quarterback Tom Brady, souvent présenté comme le plus grand joueur de football américain de l’histoire, a annoncé mardi 17 mars qu’il quittait son équipe de toujours, les New England Patriots, plusieurs médias américains affirmant qu’il va poursuivre sa carrière NFL aux Tampa Bay Buccaneers.', NULL, 1),
(14, 3, 4, NULL, 'literal', '', 'Le Californien de naissance, 42 ans, arrivé en fin de contrat avec les Patriots, n’a pas indiqué où il jouerait la saison prochaine. Les Tampa Bay Buccaneers pourraient le recruter.', NULL, 1),
(15, 4, 10, NULL, 'literal', '', 'C1', NULL, 1),
(16, 4, 138, NULL, 'literal', '', 'BASKET', NULL, 1),
(17, 4, 1, NULL, 'literal', '', 'BASKET', NULL, 1),
(18, 5, 10, NULL, 'literal', '', 'C2', NULL, 1),
(19, 5, 138, NULL, 'literal', '', 'FOOTBALL AMERICAIN', NULL, 1),
(20, 5, 1, NULL, 'literal', '', 'FOOTBALL AMERICAIN', NULL, 1),
(21, 6, 10, NULL, 'literal', '', 'T1', NULL, 1),
(22, 6, 201, NULL, 'literal', '', '#basket', NULL, 1),
(23, 6, 1, NULL, 'literal', '', 'TAG BASKET', NULL, 1),
(24, 7, 10, NULL, 'literal', '', 'T2', NULL, 1),
(25, 7, 201, NULL, 'literal', '', '#football', NULL, 1),
(26, 7, 1, NULL, 'literal', '', 'Tag Football', NULL, 1),
(27, 8, 10, NULL, 'literal', '', 'T3', NULL, 1),
(28, 8, 201, NULL, 'literal', '', '#americain', NULL, 1),
(29, 8, 1, NULL, 'literal', '', 'Tag Americain', NULL, 1),
(30, 9, 10, NULL, 'literal', '', 'COM1', NULL, 1),
(31, 9, 346, NULL, 'literal', '', 'gregoozelallicooze', NULL, 1),
(32, 9, 293, NULL, 'literal', '', '9 rue de rochefort ', NULL, 1),
(33, 9, 123, NULL, 'literal', '', 'gregoire.lallican@gmail.com', NULL, 1),
(34, 9, 91, NULL, 'literal', '', 'superbe article !', NULL, 1),
(35, 9, 1, NULL, 'literal', '', 'commentaire 1', NULL, 1),
(36, 9, 478, 2, 'resource', NULL, NULL, NULL, 1),
(37, 8, 482, 3, 'resource', NULL, NULL, NULL, 1),
(38, 8, 482, 2, 'resource', NULL, NULL, NULL, 1),
(39, 6, 482, 2, 'resource', NULL, NULL, NULL, 1),
(40, 5, 480, 3, 'resource', NULL, NULL, NULL, 1),
(41, 4, 480, 2, 'resource', NULL, NULL, NULL, 1);

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
(5, 1, 'http://dbpedia.org/ontology/', 'dbpedia-owl', 'dbpedia', ''),
(6, 1, 'http://www.agls.gov.au', 'agls', 'agls', ''),
(7, 1, 'http://www.bbc.co.uk', 'cwork', 'cwork', ''),
(8, 1, 'http://ns.inria.fr', 'ntag', 'ntag', ''),
(9, 1, 'https://d-nb.info/standards/elementset', 'gndo', 'gndo', ''),
(12, 1, 'https://BDD/CNAM/vocgreg', 'vocgreg', 'vocgreg', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
