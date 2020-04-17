-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  ven. 17 avr. 2020 à 11:52
-- Version du serveur :  8.0.12
-- Version de PHP :  7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `omk_MEDAS_19-20`
--

-- --------------------------------------------------------

--
-- Structure de la table `annotation`
--

CREATE TABLE `annotation` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `annotation`
--

INSERT INTO `annotation` (`id`) VALUES
(7);

-- --------------------------------------------------------

--
-- Structure de la table `annotation_body`
--

CREATE TABLE `annotation_body` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `annotation_body`
--

INSERT INTO `annotation_body` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Structure de la table `annotation_part`
--

CREATE TABLE `annotation_part` (
  `id` int(11) NOT NULL,
  `annotation_id` int(11) DEFAULT NULL,
  `part` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `annotation_part`
--

INSERT INTO `annotation_part` (`id`, `annotation_id`, `part`) VALUES
(7, 7, 'Annotate\\Entity\\Annotation'),
(8, 7, 'Annotate\\Entity\\AnnotationTarget'),
(9, 7, 'Annotate\\Entity\\AnnotationBody');

-- --------------------------------------------------------

--
-- Structure de la table `annotation_target`
--

CREATE TABLE `annotation_target` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `annotation_target`
--

INSERT INTO `annotation_target` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Structure de la table `api_key`
--

CREATE TABLE `api_key` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `credential_hash` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `terms` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `custom_vocab`
--

INSERT INTO `custom_vocab` (`id`, `item_set_id`, `owner_id`, `label`, `lang`, `terms`) VALUES
(1, NULL, 1, 'Annotation Body oa:hasPurpose', NULL, 'assessing\nbookmarking\nclassifying\ncommenting\ndescribing\nediting\nhighlighting\nidentifying\nlinking\nmoderating\nquestioning\nreplying\ntagging'),
(2, NULL, 1, 'Annotation Target dcterms:format', NULL, 'application/json\napplication/xml\nimage/svg+xml\napplication/wkt'),
(3, NULL, 1, 'Annotation Target rdf:type', NULL, 'as:OrderedCollection\nas:OrderedCollectionPage\ndctype:Dataset\ndctype:MovingImage\ndctype:StillImage\ndctype:Sound\ndctype:Text\noa:Choice\noa:CssSelector\noa:DataPositionSelector\noa:FragmentSelector\noa:HttpRequestState\noa:RangeSelector\noa:SvgSelector\noa:TextPositionSelector\noa:TextQuoteSelector\noa:TimeState\noa:XPathSelector\no:Item\no:ItemSet\no:Media'),
(4, NULL, 1, 'Annotation oa:motivatedBy', NULL, 'assessing\nbookmarking\nclassifying\ncommenting\ndescribing\nediting\nhighlighting\nidentifying\nlinking\nmoderating\nquestioning\nreplying\ntagging');

-- --------------------------------------------------------

--
-- Structure de la table `fulltext_search`
--

CREATE TABLE `fulltext_search` (
  `id` int(11) NOT NULL,
  `resource` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(1, 'items', 1, 1, 'Luc Toto', 'Luc Toto\nétudiant M1\ntot\nLuc\nToto\n01/04/2000'),
(2, 'items', 1, 1, 'BDD relationnelle', 'BDD relationnelle\nRelational Data base\nBase de donnée\nMaster 1\nen ligne\nTu Tu\nLuc Toto'),
(3, 'items', 1, 1, 'Tu Tu', 'Tu Tu\nc\'est un bon gars\nis good guy\ntutu\nTu\nTu\n03/08/1998'),
(7, 'annotations', 1, 1, NULL, 'assessing');

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
(3);

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
  `pid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `args` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `log` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
  `ingester` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `renderer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `source` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sha256` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `has_original` tinyint(1) NOT NULL,
  `has_thumbnails` tinyint(1) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `lang` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
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
  `id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`id`, `is_active`, `version`) VALUES
('Annotate', 1, '3.1.3.1'),
('CustomVocab', 1, '1.2.0'),
('EasyInstall', 1, '3.2.5'),
('Generic', 1, '3.0.16');

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
('YNJZampeJCTJvF0gEXYkfizIR41x0IlA', 2, '2020-04-15 13:38:46', 1);

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
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
(186, 1, 6, 'text', 'text', 'The textual content of this CreativeWork.'),
(187, 1, 6, 'alternativeHeadline', 'alternativeHeadline', 'A secondary title of the CreativeWork.'),
(188, 1, 6, 'interactivityType', 'interactivityType', 'The predominant mode of learning supported by the learning resource. Acceptable values are \'active\', \'expositive\', or \'mixed\'.'),
(189, 1, 6, 'encodings', 'encodings', 'A media object that encodes this CreativeWork.'),
(190, 1, 6, 'encoding', 'encoding', 'A media object that encodes this CreativeWork. This property is a synonym for associatedMedia.'),
(191, 1, 6, 'accessModeSufficient', 'accessModeSufficient', 'A list of single or combined accessModes that are sufficient to understand all the intellectual content of a resource. Expected values include:  auditory, tactile, textual, visual.'),
(192, 1, 6, 'video', 'video', 'An embedded video object.'),
(193, 1, 6, 'courseCode', 'courseCode', 'The identifier for the <a class=\"localLink\" href=\"http://schema.org/Course\">Course</a> used by the course <a class=\"localLink\" href=\"http://schema.org/provider\">provider</a> (e.g. CS101 or 6.001).'),
(194, 1, 6, 'acquireLicensePage', 'acquireLicensePage', 'Indicates a page documenting how licenses can be purchased or otherwise acquired, for the current item.'),
(195, 1, 6, 'usageInfo', 'usageInfo', 'The schema.org <a class=\"localLink\" href=\"http://schema.org/usageInfo\">usageInfo</a> property indicates further information about a <a class=\"localLink\" href=\"http://schema.org/CreativeWork\">CreativeWork</a>. This property is applicable both to works that are freely available and to those that require payment or other transactions. It can reference additional information e.g. community expectations on preferred linking and citation conventions, as well as purchasing details. For something that can be commercially licensed, usageInfo can provide detailed, resource-specific information about licensing options.<br/><br/>\n\nThis property can be used alongside the license property which indicates license(s) applicable to some piece of content. The usageInfo property can provide information about other licensing options, e.g. acquiring commercial usage rights for an image that is also available under non-commercial creative commons licenses.'),
(196, 1, 6, 'schemaVersion', 'schemaVersion', 'Indicates (by URL or string) a particular version of a schema used in some CreativeWork. For example, a document could declare a schemaVersion using an URL such as http://schema.org/version/2.0/ if precise indication of schema version was required by some application.'),
(197, 1, 6, 'additionalType', 'additionalType', 'An additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. In RDFa syntax, it is better to use the native RDFa syntax - the \'typeof\' attribute - for multiple types. Schema.org tools may have only weaker understanding of extra types, in particular those defined externally.'),
(198, 1, 6, 'review', 'review', 'A review of the item.'),
(199, 1, 6, 'educationalCredentialAwarded', 'educationalCredentialAwarded', 'A description of the qualification, award, certificate, diploma or other educational credential awarded as a consequence of successful completion of this course or program.'),
(200, 1, 6, 'author', 'author', 'The author of this content or rating. Please note that author is special in that HTML 5 provides a special mechanism for indicating authorship via the rel tag. That is equivalent to this and may be used interchangeably.'),
(201, 1, 6, 'potentialAction', 'potentialAction', 'Indicates a potential Action, which describes an idealized action in which this thing would play an \'object\' role.'),
(202, 1, 6, 'workExample', 'workExample', 'Example/instance/realization/derivation of the concept of this creative work. eg. The paperback edition, first edition, or eBook.'),
(203, 1, 6, 'exampleOfWork', 'exampleOfWork', 'A creative work that this work is an example/instance/realization/derivation of.'),
(204, 1, 6, 'isBasedOn', 'isBasedOn', 'A resource from which this work is derived or from which it is a modification or adaption.'),
(205, 1, 6, 'description', 'description', 'A description of the item.'),
(206, 1, 6, 'occupationalCredentialAwarded', 'occupationalCredentialAwarded', 'A description of the qualification, award, certificate, diploma or other occupational credential awarded as a consequence of successful completion of this course or program.'),
(207, 1, 6, 'expires', 'expires', 'Date the content expires and is no longer useful or available. For example a <a class=\"localLink\" href=\"http://schema.org/VideoObject\">VideoObject</a> or <a class=\"localLink\" href=\"http://schema.org/NewsArticle\">NewsArticle</a> whose availability or relevance is time-limited, or a <a class=\"localLink\" href=\"http://schema.org/ClaimReview\">ClaimReview</a> fact check whose publisher wants to indicate that it may no longer be relevant (or helpful to highlight) after some date.'),
(208, 1, 6, 'coursePrerequisites', 'coursePrerequisites', 'Requirements for taking the Course. May be completion of another <a class=\"localLink\" href=\"http://schema.org/Course\">Course</a> or a textual description like \"permission of instructor\". Requirements may be a pre-requisite competency, referenced using <a class=\"localLink\" href=\"http://schema.org/AlignmentObject\">AlignmentObject</a>.'),
(209, 1, 6, 'publisher', 'publisher', 'The publisher of the creative work.'),
(210, 1, 6, 'comment', 'comment', 'Comments, typically from users.'),
(211, 1, 6, 'awards', 'awards', 'Awards won by or for this item.'),
(212, 1, 6, 'award', 'award', 'An award won by or for this item.'),
(213, 1, 6, 'isAccessibleForFree', 'isAccessibleForFree', 'A flag to signal that the item, event, or place is accessible for free.'),
(214, 1, 6, 'thumbnailUrl', 'thumbnailUrl', 'A thumbnail image relevant to the Thing.'),
(215, 1, 6, 'genre', 'genre', 'Genre of the creative work, broadcast channel or group.'),
(216, 1, 6, 'accountablePerson', 'accountablePerson', 'Specifies the Person that is legally accountable for the CreativeWork.'),
(217, 1, 6, 'accessibilityControl', 'accessibilityControl', 'Identifies input methods that are sufficient to fully control the described resource (<a href=\"http://www.w3.org/wiki/WebSchemas/Accessibility\">WebSchemas wiki lists possible values</a>).'),
(218, 1, 6, 'funder', 'funder', 'A person or organization that supports (sponsors) something through some kind of financial contribution.'),
(219, 1, 6, 'sponsor', 'sponsor', 'A person or organization that supports a thing through a pledge, promise, or financial contribution. e.g. a sponsor of a Medical Study or a corporate sponsor of an event.'),
(220, 1, 6, 'isPartOf', 'isPartOf', 'Indicates an item or CreativeWork that this item, or CreativeWork (in some sense), is part of.'),
(221, 1, 6, 'hasPart', 'hasPart', 'Indicates an item or CreativeWork that is part of this item, or CreativeWork (in some sense).'),
(222, 1, 6, 'publication', 'publication', 'A publication event associated with the item.'),
(223, 1, 6, 'provider', 'provider', 'The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.'),
(224, 1, 6, 'version', 'version', 'The version of the CreativeWork embodied by a specified resource.'),
(225, 1, 6, 'fileFormat', 'fileFormat', 'Media type, typically MIME format (see <a href=\"http://www.iana.org/assignments/media-types/media-types.xhtml\">IANA site</a>) of the content e.g. application/zip of a SoftwareApplication binary. In cases where a CreativeWork has several media type representations, \'encoding\' can be used to indicate each MediaObject alongside particular fileFormat information. Unregistered or niche file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia entry.'),
(226, 1, 6, 'encodingFormat', 'encodingFormat', 'Media type typically expressed using a MIME format (see <a href=\"http://www.iana.org/assignments/media-types/media-types.xhtml\">IANA site</a> and <a href=\"https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types\">MDN reference</a>) e.g. application/zip for a SoftwareApplication binary, audio/mpeg for .mp3 etc.).<br/><br/>\n\nIn cases where a <a class=\"localLink\" href=\"http://schema.org/CreativeWork\">CreativeWork</a> has several media type representations, <a class=\"localLink\" href=\"http://schema.org/encoding\">encoding</a> can be used to indicate each <a class=\"localLink\" href=\"http://schema.org/MediaObject\">MediaObject</a> alongside particular <a class=\"localLink\" href=\"http://schema.org/encodingFormat\">encodingFormat</a> information.<br/><br/>\n\nUnregistered or niche encoding and file formats can be indicated instead via the most appropriate URL, e.g. defining Web page or a Wikipedia/Wikidata entry.'),
(227, 1, 6, 'contributor', 'contributor', 'A secondary contributor to the CreativeWork or Event.'),
(228, 1, 6, 'accessibilityHazard', 'accessibilityHazard', 'A characteristic of the described resource that is physiologically dangerous to some users. Related to WCAG 2.0 guideline 2.3 (<a href=\"http://www.w3.org/wiki/WebSchemas/Accessibility\">WebSchemas wiki lists possible values</a>).'),
(229, 1, 6, 'publisherImprint', 'publisherImprint', 'The publishing division which published the comic.'),
(230, 1, 6, 'contentReferenceTime', 'contentReferenceTime', 'The specific time described by a creative work, for works (e.g. articles, video objects etc.) that emphasise a particular moment within an Event.'),
(231, 1, 6, 'accessMode', 'accessMode', 'The human sensory perceptual system or cognitive faculty through which a person may process or perceive information. Expected values include: auditory, tactile, textual, visual, colorDependent, chartOnVisual, chemOnVisual, diagramOnVisual, mathOnVisual, musicOnVisual, textOnVisual.'),
(232, 1, 6, 'educationalUse', 'educationalUse', 'The purpose of a work in the context of education; for example, \'assignment\', \'group work\'.'),
(233, 1, 6, 'reviews', 'reviews', 'Review of the item.'),
(234, 1, 6, 'conditionsOfAccess', 'conditionsOfAccess', 'Conditions that affect the availability of, or method(s) of access to, an item. Typically used for real world items such as an <a class=\"localLink\" href=\"http://schema.org/ArchiveComponent\">ArchiveComponent</a> held by an <a class=\"localLink\" href=\"http://schema.org/ArchiveOrganization\">ArchiveOrganization</a>. This property is not suitable for use as a general Web access control mechanism. It is expressed only in natural language.<br/><br/>\n\nFor example \"Available by appointment from the Reading Room\" or \"Accessible only from logged-in accounts \".'),
(235, 1, 6, 'contentRating', 'contentRating', 'Official rating of a piece of content&#x2014;for example,\'MPAA PG-13\'.'),
(236, 1, 6, 'abstract', 'abstract', 'An abstract is a short description that summarizes a <a class=\"localLink\" href=\"http://schema.org/CreativeWork\">CreativeWork</a>.'),
(237, 1, 6, 'producer', 'producer', 'The person or organization who produced the work (e.g. music album, movie, tv/radio series etc.).'),
(238, 1, 6, 'image', 'image', 'An image of the item. This can be a <a class=\"localLink\" href=\"http://schema.org/URL\">URL</a> or a fully described <a class=\"localLink\" href=\"http://schema.org/ImageObject\">ImageObject</a>.'),
(239, 1, 6, 'contentLocation', 'contentLocation', 'The location depicted or described in the content. For example, the location in a photograph or painting.'),
(240, 1, 6, 'typicalAgeRange', 'typicalAgeRange', 'The typical expected age range, e.g. \'7-9\', \'11-\'.'),
(241, 1, 6, 'mainEntityOfPage', 'mainEntityOfPage', 'Indicates a page (or other CreativeWork) for which this thing is the main entity being described. See <a href=\"/docs/datamodel.html#mainEntityBackground\">background notes</a> for details.'),
(242, 1, 6, 'mainEntity', 'mainEntity', 'Indicates the primary entity described in some page or other CreativeWork.'),
(243, 1, 6, 'audience', 'audience', 'An intended audience, i.e. a group for whom something was created.'),
(244, 1, 6, 'alternateName', 'alternateName', 'An alias for the item.'),
(245, 1, 6, 'sameAs', 'sameAs', 'URL of a reference Web page that unambiguously indicates the item\'s identity. E.g. the URL of the item\'s Wikipedia page, Wikidata entry, or official website.'),
(246, 1, 6, 'maintainer', 'maintainer', 'A maintainer of a <a class=\"localLink\" href=\"http://schema.org/Dataset\">Dataset</a>, software package (<a class=\"localLink\" href=\"http://schema.org/SoftwareApplication\">SoftwareApplication</a>), or other <a class=\"localLink\" href=\"http://schema.org/Project\">Project</a>. A maintainer is a <a class=\"localLink\" href=\"http://schema.org/Person\">Person</a> or <a class=\"localLink\" href=\"http://schema.org/Organization\">Organization</a> that manages contributions to, and/or publication of, some (typically complex) artifact. It is common for distributions of software and data to be based on \"upstream\" sources. When <a class=\"localLink\" href=\"http://schema.org/maintainer\">maintainer</a> is applied to a specific version of something e.g. a particular version or packaging of a <a class=\"localLink\" href=\"http://schema.org/Dataset\">Dataset</a>, it is always  possible that the upstream source has a different maintainer. The <a class=\"localLink\" href=\"http://schema.org/isBasedOn\">isBasedOn</a> property can be used to indicate such relationships between datasets to make the different maintenance roles clear. Similarly in the case of software, a package may have dedicated maintainers working on integration into software distributions such as Ubuntu, as well as upstream maintainers of the underlying work.'),
(247, 1, 6, 'position', 'position', 'The position of an item in a series or sequence of items.'),
(248, 1, 6, 'accessibilityFeature', 'accessibilityFeature', 'Content features of the resource, such as accessible media, alternatives and supported enhancements for accessibility (<a href=\"http://www.w3.org/wiki/WebSchemas/Accessibility\">WebSchemas wiki lists possible values</a>).'),
(249, 1, 6, 'about', 'about', 'The subject matter of the content.'),
(250, 1, 6, 'hasCourseInstance', 'hasCourseInstance', 'An offering of the course at a specific time and place or through specific media or mode of study or to a specific section of students.'),
(251, 1, 6, 'translationOfWork', 'translationOfWork', 'The work that this work has been translated from. e.g. 物种起源 is a translationOf “On the Origin of Species”'),
(252, 1, 6, 'workTranslation', 'workTranslation', 'A work that is a translation of the content of this work. e.g. 西遊記 has an English workTranslation “Journey to the West”,a German workTranslation “Monkeys Pilgerfahrt” and a Vietnamese  translation Tây du ký bình khảo.'),
(253, 1, 6, 'materialExtent', 'materialExtent', 'The quantity of the materials being described or an expression of the physical space they occupy.'),
(254, 1, 6, 'correction', 'correction', 'Indicates a correction to a <a class=\"localLink\" href=\"http://schema.org/CreativeWork\">CreativeWork</a>, either via a <a class=\"localLink\" href=\"http://schema.org/CorrectionComment\">CorrectionComment</a>, textually or in another document.'),
(255, 1, 6, 'dateCreated', 'dateCreated', 'The date on which the CreativeWork was created or the item was added to a DataFeed.'),
(256, 1, 6, 'accessibilitySummary', 'accessibilitySummary', 'A human-readable summary of specific accessibility features or deficiencies, consistent with the other accessibility metadata but expressing subtleties such as \"short descriptions are present but long descriptions will be needed for non-visual users\" or \"short descriptions are present and no long descriptions are needed.\"'),
(257, 1, 6, 'sdDatePublished', 'sdDatePublished', 'Indicates the date on which the current structured data was generated / published. Typically used alongside <a class=\"localLink\" href=\"http://schema.org/sdPublisher\">sdPublisher</a>'),
(258, 1, 6, 'headline', 'headline', 'Headline of the article.'),
(259, 1, 6, 'spatial', 'spatial', 'The \"spatial\" property can be used in cases when more specific properties\n(e.g. <a class=\"localLink\" href=\"http://schema.org/locationCreated\">locationCreated</a>, <a class=\"localLink\" href=\"http://schema.org/spatialCoverage\">spatialCoverage</a>, <a class=\"localLink\" href=\"http://schema.org/contentLocation\">contentLocation</a>) are not known to be appropriate.'),
(260, 1, 6, 'editor', 'editor', 'Specifies the Person who edited the CreativeWork.'),
(261, 1, 6, 'name', 'name', 'The name of the item.'),
(262, 1, 6, 'copyrightHolder', 'copyrightHolder', 'The party holding the legal copyright to the CreativeWork.'),
(263, 1, 6, 'identifier', 'identifier', 'The identifier property represents any kind of identifier for any kind of <a class=\"localLink\" href=\"http://schema.org/Thing\">Thing</a>, such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See <a href=\"/docs/datamodel.html#identifierBg\">background notes</a> for more details.'),
(264, 1, 6, 'locationCreated', 'locationCreated', 'The location where the CreativeWork was created, which may not be the same as the location depicted in the CreativeWork.'),
(265, 1, 6, 'subjectOf', 'subjectOf', 'A CreativeWork or Event about this Thing.'),
(266, 1, 6, 'mentions', 'mentions', 'Indicates that the CreativeWork contains a reference to, but is not necessarily about a concept.'),
(267, 1, 6, 'associatedMedia', 'associatedMedia', 'A media object that encodes this CreativeWork. This property is a synonym for encoding.'),
(268, 1, 6, 'license', 'license', 'A license document that applies to this content, typically indicated by URL.'),
(269, 1, 6, 'creator', 'creator', 'The creator/author of this CreativeWork. This is the same as the Author property for CreativeWork.'),
(270, 1, 6, 'isFamilyFriendly', 'isFamilyFriendly', 'Indicates whether this content is family friendly.'),
(271, 1, 6, 'temporalCoverage', 'temporalCoverage', 'The temporalCoverage of a CreativeWork indicates the period that the content applies to, i.e. that it describes, either as a DateTime or as a textual string indicating a time period in <a href=\"https://en.wikipedia.org/wiki/ISO_8601#Time_intervals\">ISO 8601 time interval format</a>. In\n      the case of a Dataset it will typically indicate the relevant time period in a precise notation (e.g. for a 2011 census dataset, the year 2011 would be written \"2011/2012\"). Other forms of content e.g. ScholarlyArticle, Book, TVSeries or TVEpisode may indicate their temporalCoverage in broader terms - textually or via well-known URL.\n      Written works such as books may sometimes have precise temporal coverage too, e.g. a work set in 1939 - 1945 can be indicated in ISO 8601 interval format format via \"1939/1945\".<br/><br/>\n\nOpen-ended date ranges can be written with \"..\" in place of the end date. For example, \"2015-11/..\" indicates a range beginning in November 2015 and with no specified final date. This is tentative and might be updated in future when ISO 8601 is officially updated.'),
(272, 1, 6, 'isBasedOnUrl', 'isBasedOnUrl', 'A resource that was used in the creation of this resource. This term can be repeated for multiple sources. For example, http://example.com/great-multiplication-intro.html.'),
(273, 1, 6, 'commentCount', 'commentCount', 'The number of comments this CreativeWork (e.g. Article, Question or Answer) has received. This is most applicable to works published in Web sites with commenting system; additional comments may exist elsewhere.'),
(274, 1, 6, 'url', 'url', 'URL of the item.'),
(275, 1, 6, 'sourceOrganization', 'sourceOrganization', 'The Organization on whose behalf the creator was working.'),
(276, 1, 6, 'disambiguatingDescription', 'disambiguatingDescription', 'A sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation.'),
(277, 1, 6, 'timeRequired', 'timeRequired', 'Approximate or typical time it takes to work with or through this learning resource for the typical intended target audience, e.g. \'PT30M\', \'PT1H25M\'.'),
(278, 1, 6, 'keywords', 'keywords', 'Keywords or tags used to describe this content. Multiple entries in a keywords list are typically delimited by commas.'),
(279, 1, 6, 'datePublished', 'datePublished', 'Date of first broadcast/publication.'),
(280, 1, 6, 'character', 'character', 'Fictional person connected with a creative work.'),
(281, 1, 6, 'spatialCoverage', 'spatialCoverage', 'The spatialCoverage of a CreativeWork indicates the place(s) which are the focus of the content. It is a subproperty of\n      contentLocation intended primarily for more technical and detailed materials. For example with a Dataset, it indicates\n      areas that the dataset describes: a dataset of New York weather would have spatialCoverage which was the place: the state of New York.'),
(282, 1, 6, 'citation', 'citation', 'A citation or reference to another creative work, such as another publication, web page, scholarly article, etc.'),
(283, 1, 6, 'discussionUrl', 'discussionUrl', 'A link to the page containing the comments of the CreativeWork.'),
(284, 1, 6, 'aggregateRating', 'aggregateRating', 'The overall rating, based on a collection of reviews or ratings, of the item.'),
(285, 1, 6, 'releasedEvent', 'releasedEvent', 'The place and time the release was issued, expressed as a PublicationEvent.'),
(286, 1, 6, 'sdLicense', 'sdLicense', 'A license document that applies to this structured data, typically indicated by URL.'),
(287, 1, 6, 'dateModified', 'dateModified', 'The date on which the CreativeWork was most recently modified or when the item\'s entry was modified within a DataFeed.'),
(288, 1, 6, 'learningResourceType', 'learningResourceType', 'The predominant type or kind characterizing the learning resource. For example, \'presentation\', \'handout\'.'),
(289, 1, 6, 'educationalAlignment', 'educationalAlignment', 'An alignment to an established educational framework.'),
(290, 1, 6, 'numberOfCredits', 'numberOfCredits', 'The number of credits or units awarded by a Course or required to complete an EducationalOccupationalProgram.'),
(291, 1, 6, 'interactionStatistic', 'interactionStatistic', 'The number of interactions for the CreativeWork using the WebSite or SoftwareApplication. The most specific child type of InteractionCounter should be used.'),
(292, 1, 6, 'translator', 'translator', 'Organization or person who adapts a creative work to different languages, regional differences and technical requirements of a target market, or that translates during some event.'),
(293, 1, 6, 'audio', 'audio', 'An embedded audio object.'),
(294, 1, 6, 'accessibilityAPI', 'accessibilityAPI', 'Indicates that the resource is compatible with the referenced accessibility API (<a href=\"http://www.w3.org/wiki/WebSchemas/Accessibility\">WebSchemas wiki lists possible values</a>).'),
(295, 1, 6, 'sdPublisher', 'sdPublisher', 'Indicates the party responsible for generating and publishing the current structured data markup, typically in cases where the structured data is derived automatically from existing published content but published on a different site. For example, student projects and open data initiatives often re-publish existing content with more explicitly structured metadata. The\n<a class=\"localLink\" href=\"http://schema.org/sdPublisher\">sdPublisher</a> property helps make such practices more explicit.'),
(296, 1, 6, 'material', 'material', 'A material that something is made from, e.g. leather, wool, cotton, paper.'),
(297, 1, 6, 'creativeWorkStatus', 'creativeWorkStatus', 'The status of a creative work in terms of its stage in a lifecycle. Example terms include Incomplete, Draft, Published, Obsolete. Some organizations define a set of terms for the stages of their publication lifecycle.'),
(298, 1, 6, 'recordedAt', 'recordedAt', 'The Event where the CreativeWork was recorded. The CreativeWork may capture all or part of the event.'),
(299, 1, 6, 'offers', 'offers', 'An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use <a class=\"localLink\" href=\"http://schema.org/businessFunction\">businessFunction</a> to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a <a class=\"localLink\" href=\"http://schema.org/Demand\">Demand</a>. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.'),
(300, 1, 6, 'publishingPrinciples', 'publishingPrinciples', 'The publishingPrinciples property indicates (typically via <a class=\"localLink\" href=\"http://schema.org/URL\">URL</a>) a document describing the editorial principles of an <a class=\"localLink\" href=\"http://schema.org/Organization\">Organization</a> (or individual e.g. a <a class=\"localLink\" href=\"http://schema.org/Person\">Person</a> writing a blog) that relate to their activities as a publisher, e.g. ethics or diversity policies. When applied to a <a class=\"localLink\" href=\"http://schema.org/CreativeWork\">CreativeWork</a> (e.g. <a class=\"localLink\" href=\"http://schema.org/NewsArticle\">NewsArticle</a>) the principles are those of the party primarily responsible for the creation of the <a class=\"localLink\" href=\"http://schema.org/CreativeWork\">CreativeWork</a>.<br/><br/>\n\nWhile such policies are most typically expressed in natural language, sometimes related information (e.g. indicating a <a class=\"localLink\" href=\"http://schema.org/funder\">funder</a>) can be expressed using schema.org terminology.'),
(301, 1, 6, 'copyrightYear', 'copyrightYear', 'The year during which the claimed copyright for the CreativeWork was first asserted.'),
(302, 1, 6, 'temporal', 'temporal', 'The \"temporal\" property can be used in cases where more specific properties\n(e.g. <a class=\"localLink\" href=\"http://schema.org/temporalCoverage\">temporalCoverage</a>, <a class=\"localLink\" href=\"http://schema.org/dateCreated\">dateCreated</a>, <a class=\"localLink\" href=\"http://schema.org/dateModified\">dateModified</a>, <a class=\"localLink\" href=\"http://schema.org/datePublished\">datePublished</a>) are not known to be appropriate.'),
(303, 1, 6, 'inLanguage', 'inLanguage', 'The language of the content or performance or used in an action. Please use one of the language codes from the <a href=\"http://tools.ietf.org/html/bcp47\">IETF BCP 47 standard</a>. See also <a class=\"localLink\" href=\"http://schema.org/availableLanguage\">availableLanguage</a>.'),
(304, 1, 7, 'annotationService', 'annotationService', 'The object of the relationship is the end point of a service that conforms to the annotation-protocol, and it may be associated with any resource.  The expectation of asserting the relationship is that the object is the preferred service for maintaining annotations about the subject resource, according to the publisher of the relationship.\n\n  This relationship is intended to be used both within Linked Data descriptions and as the  rel  type of a Link, via HTTP Link Headers rfc5988 for binary resources and in HTML <link> elements.  For more information about these, please see the Annotation Protocol specification annotation-protocol.\n  '),
(305, 1, 7, 'bodyValue', 'bodyValue', 'The object of the predicate is a plain text string to be used as the content of the body of the Annotation.  The value MUST be an  xsd:string  and that data type MUST NOT be expressed in the serialization. Note that language MUST NOT be associated with the value either as a language tag, as that is only available for  rdf:langString .\n  '),
(306, 1, 7, 'cachedSource', 'cachedSource', 'A object of the relationship is a copy of the Source resource\'s representation, appropriate for the Annotation.'),
(307, 1, 7, 'canonical', 'canonical', 'A object of the relationship is the canonical IRI that can always be used to deduplicate the Annotation, regardless of the current IRI used to access the representation.'),
(308, 1, 7, 'end', 'end', 'The end property is used to convey the 0-based index of the end position of a range of content.'),
(309, 1, 7, 'exact', 'exact', 'The object of the predicate is a copy of the text which is being selected, after normalization.'),
(310, 1, 7, 'hasBody', 'hasBody', 'The object of the relationship is a resource that is a body of the Annotation.'),
(311, 1, 7, 'hasEndSelector', 'hasEndSelector', 'The relationship between a RangeSelector and the Selector that describes the end position of the range. '),
(312, 1, 7, 'hasPurpose', 'hasPurpose', 'The purpose served by the resource in the Annotation.'),
(313, 1, 7, 'hasScope', 'hasScope', 'The scope or context in which the resource is used within the Annotation.'),
(314, 1, 7, 'hasSelector', 'hasSelector', 'The object of the relationship is a Selector that describes the segment or region of interest within the source resource.  Please note that the domain ( oa:ResourceSelection ) is not used directly in the Web Annotation model.'),
(315, 1, 7, 'hasSource', 'hasSource', 'The resource that the ResourceSelection, or its subclass SpecificResource, is refined from, or more specific than. Please note that the domain ( oa:ResourceSelection ) is not used directly in the Web Annotation model.'),
(316, 1, 7, 'hasStartSelector', 'hasStartSelector', 'The relationship between a RangeSelector and the Selector that describes the start position of the range. '),
(317, 1, 7, 'hasState', 'hasState', 'The relationship between the ResourceSelection, or its subclass SpecificResource, and a State resource. Please note that the domain ( oa:ResourceSelection ) is not used directly in the Web Annotation model.'),
(318, 1, 7, 'hasTarget', 'hasTarget', 'The relationship between an Annotation and its Target.'),
(319, 1, 7, 'motivatedBy', 'motivatedBy', 'The relationship between an Annotation and a Motivation that describes the reason for the Annotation\'s creation.'),
(320, 1, 7, 'prefix', 'prefix', 'The object of the property is a snippet of content that occurs immediately before the content which is being selected by the Selector.'),
(321, 1, 7, 'processingLanguage', 'processingLanguage', 'The object of the property is the language that should be used for textual processing algorithms when dealing with the content of the resource, including hyphenation, line breaking, which font to use for rendering and so forth.  The value must follow the recommendations of BCP47.'),
(322, 1, 7, 'refinedBy', 'refinedBy', 'The relationship between a Selector and another Selector or a State and a Selector or State that should be applied to the results of the first to refine the processing of the source resource. '),
(323, 1, 7, 'renderedVia', 'renderedVia', 'A system that was used by the application that created the Annotation to render the resource.'),
(324, 1, 7, 'sourceDate', 'sourceDate', 'The timestamp at which the Source resource should be interpreted as being applicable to the Annotation.'),
(325, 1, 7, 'sourceDateEnd', 'sourceDateEnd', 'The end timestamp of the interval over which the Source resource should be interpreted as being applicable to the Annotation.');
INSERT INTO `property` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(326, 1, 7, 'sourceDateStart', 'sourceDateStart', 'The start timestamp of the interval over which the Source resource should be interpreted as being applicable to the Annotation.'),
(327, 1, 7, 'start', 'start', 'The start position in a 0-based index at which a range of content is selected from the data in the source resource.'),
(328, 1, 7, 'styleClass', 'styleClass', 'The name of the class used in the CSS description referenced from the Annotation that should be applied to the Specific Resource.'),
(329, 1, 7, 'styledBy', 'styledBy', 'A reference to a Stylesheet that should be used to apply styles to the Annotation rendering.'),
(330, 1, 7, 'suffix', 'suffix', 'The snippet of text that occurs immediately after the text which is being selected.'),
(331, 1, 7, 'textDirection', 'textDirection', 'The direction of the text of the subject resource. There MUST only be one text direction associated with any given resource.'),
(332, 1, 7, 'via', 'via', 'A object of the relationship is a resource from which the source resource was retrieved by the providing system.'),
(333, 1, 8, 'type', 'type', 'The subject is an instance of a class.'),
(334, 1, 8, 'subject', 'subject', 'The subject of the subject RDF statement.'),
(335, 1, 8, 'predicate', 'predicate', 'The predicate of the subject RDF statement.'),
(336, 1, 8, 'object', 'object', 'The object of the subject RDF statement.'),
(337, 1, 8, 'value', 'value', 'Idiomatic property used for structured values.'),
(338, 1, 8, 'first', 'first', 'The first item in the subject RDF list.'),
(339, 1, 8, 'rest', 'rest', 'The rest of the subject RDF list after the first item.'),
(340, 1, 9, 'P1025', 'has accompanying material statement', NULL),
(341, 1, 9, 'P1011', 'has additional edition statement', NULL),
(342, 1, 9, 'P1151', 'has addition to parallel place of publication', NULL),
(343, 1, 9, 'P1144', 'has addition to place of publication', NULL),
(344, 1, 9, 'P1122', 'has bibliographic format of older monographic resource', NULL),
(345, 1, 9, 'P1157', 'has chronological designation', NULL),
(346, 1, 9, 'P1182', 'has common title of parallel title', NULL),
(347, 1, 9, 'P1147', 'has common title of series or multipart monographic resource', NULL),
(348, 1, 9, 'P1137', 'has common title of title proper', NULL),
(349, 1, 9, 'P1056', 'has composition of material', NULL),
(350, 1, 9, 'P1181', 'has compound title of parallel title', NULL),
(351, 1, 9, 'P1171', 'has compound title of title proper', NULL),
(352, 1, 9, 'P1001', 'has content form', NULL),
(353, 1, 9, 'P1158', 'has content form and media type area', NULL),
(354, 1, 9, 'P1185', 'has content form and media type statement', NULL),
(355, 1, 9, 'P1002', 'has content qualification', NULL),
(356, 1, 9, 'P1050', 'has coordinates', NULL),
(357, 1, 9, 'P1021', 'has date of printing or manufacture', NULL),
(358, 1, 9, 'P1018', 'has date of publication, production, distribution', NULL),
(359, 1, 9, 'P1184', 'has dependent title designation of parallel title', NULL),
(360, 1, 9, 'P1149', 'has dependent title designation of series or multipart monographic resource', NULL),
(361, 1, 9, 'P1139', 'has dependent title designation of title proper', NULL),
(362, 1, 9, 'P1183', 'has dependent title of parallel title', NULL),
(363, 1, 9, 'P1148', 'has dependent title of series or multipart monographic resource', NULL),
(364, 1, 9, 'P1138', 'has dependent title of title proper', NULL),
(365, 1, 9, 'P1024', 'has dimensions', NULL),
(366, 1, 9, 'P1160', 'has edition area', NULL),
(367, 1, 9, 'P1008', 'has edition statement', NULL),
(368, 1, 9, 'P1134', 'has equalization', NULL),
(369, 1, 9, 'P1052', 'has equinox', NULL),
(370, 1, 9, 'P1190', 'has expression aspect', NULL),
(371, 1, 9, 'P1053', 'has extent', NULL),
(372, 1, 9, 'P1075', 'has fingerprint', NULL),
(373, 1, 9, 'P1063', 'has frame alignment', NULL),
(374, 1, 9, 'P1129', 'has groove direction', NULL),
(375, 1, 9, 'P1130', 'has groove size', NULL),
(376, 1, 9, 'P1030', 'has international standard number of series or multipart monographic resource', NULL),
(377, 1, 9, 'P1191', 'has item aspect', NULL),
(378, 1, 9, 'P1033', 'has key title', NULL),
(379, 1, 9, 'P1076', 'has label name and catalogue number', NULL),
(380, 1, 9, 'P1155', 'has longitude and latitude', NULL),
(381, 1, 9, 'P1192', 'has manifestation aspect', NULL),
(382, 1, 9, 'P1163', 'has material description area', NULL),
(383, 1, 9, 'P1161', 'has material or type of resource specific area', NULL),
(384, 1, 9, 'P1013', 'has mathematical data area', NULL),
(385, 1, 9, 'P1003', 'has media type', NULL),
(386, 1, 9, 'P1014', 'has music format statement', NULL),
(387, 1, 9, 'P1166', 'has music format statement area', NULL),
(388, 1, 9, 'P1020', 'has name of printer or manufacturer', NULL),
(389, 1, 9, 'P1017', 'has name of publisher, producer, distributor', NULL),
(390, 1, 9, 'P1169', 'has name of publisher, producer, distributor statement', NULL),
(391, 1, 9, 'P1135', 'has noise reduction', NULL),
(392, 1, 9, 'P1045', 'has note', NULL),
(393, 1, 9, 'P1107', 'has note area', NULL),
(394, 1, 9, 'P1044', 'has note on basis of description', NULL),
(395, 1, 9, 'P1095', 'has note on bibliographic history', NULL),
(396, 1, 9, 'P1064', 'has note on bibliographic reference', NULL),
(397, 1, 9, 'P1078', 'has note on binding', NULL),
(398, 1, 9, 'P1094', 'has note on change to edition', NULL),
(399, 1, 9, 'P1136', 'has note on content form and media type', NULL),
(400, 1, 9, 'P1042', 'has note on contents', NULL),
(401, 1, 9, 'P1046', 'has note on copy in hand', NULL),
(402, 1, 9, 'P1097', 'has note on different editions', NULL),
(403, 1, 9, 'P1037', 'has note on edition area and bibliographic history', NULL),
(404, 1, 9, 'P1065', 'has note on frequency', NULL),
(405, 1, 9, 'P1040', 'has note on material description', NULL),
(406, 1, 9, 'P1038', 'has note on material type or resource specific type', NULL),
(407, 1, 9, 'P1067', 'has note on mode of access', NULL),
(408, 1, 9, 'P1073', 'has note on nature, scope, form, purpose or language', NULL),
(409, 1, 9, 'P1092', 'has note on numbers', NULL),
(410, 1, 9, 'P1124', 'has note on other relationships', NULL),
(411, 1, 9, 'P1086', 'has note on parallel titles and parallel other title information', NULL),
(412, 1, 9, 'P1039', 'has note on publication, production, distribution, etc.', NULL),
(413, 1, 9, 'P1101', 'has note on relationship between continuing resources', NULL),
(414, 1, 9, 'P1099', 'has note on relationship to other resources', NULL),
(415, 1, 9, 'P1098', 'has note on reproduction', NULL),
(416, 1, 9, 'P1079', 'has note on resource identifier and terms of availability', NULL),
(417, 1, 9, 'P1041', 'has note on series and multipart monographic resources', NULL),
(418, 1, 9, 'P1087', 'has note on statement of responsibility', NULL),
(419, 1, 9, 'P1100', 'has note on supplements, inserts, etc.', NULL),
(420, 1, 9, 'P1123', 'has note on supplement to or insert in', NULL),
(421, 1, 9, 'P1066', 'has note on system requirements', NULL),
(422, 1, 9, 'P1068', 'has note on title proper', NULL),
(423, 1, 9, 'P1096', 'has note on translations', NULL),
(424, 1, 9, 'P1091', 'has note on use or audience', NULL),
(425, 1, 9, 'P1090', 'has note providing a summary', NULL),
(426, 1, 9, 'P1015', 'has numbering area', NULL),
(427, 1, 9, 'P1031', 'has numbering within series or multipart monographic resource', NULL),
(428, 1, 9, 'P1133', 'has number of sound channels', NULL),
(429, 1, 9, 'P1131', 'has number of tape tracks', NULL),
(430, 1, 9, 'P1156', 'has numeric designation', NULL),
(431, 1, 9, 'P1023', 'has other physical details', NULL),
(432, 1, 9, 'P1006', 'has other title information', NULL),
(433, 1, 9, 'P1028', 'has other title information of series or multipart monographic resource', NULL),
(434, 1, 9, 'P1054', 'has pagination', NULL),
(435, 1, 9, 'P1143', 'has parallel additional edition statement', NULL),
(436, 1, 9, 'P1178', 'has parallel common title of series or multipart monographic resource', NULL),
(437, 1, 9, 'P1180', 'has parallel dependent title designation of series or multipart monographic resource', NULL),
(438, 1, 9, 'P1179', 'has parallel dependent title of series or multipart monographic resource', NULL),
(439, 1, 9, 'P1009', 'has parallel edition statement', NULL),
(440, 1, 9, 'P1119', 'has parallel music format statement', NULL),
(441, 1, 9, 'P1121', 'has parallel name of publisher, producer, distributor', NULL),
(442, 1, 9, 'P1116', 'has parallel numbering system', NULL),
(443, 1, 9, 'P1140', 'has parallel other title information', NULL),
(444, 1, 9, 'P1152', 'has parallel other title information of series or multipart monographic resource', NULL),
(445, 1, 9, 'P1145', 'has parallel place of publication, production, distribution', NULL),
(446, 1, 9, 'P1153', 'has parallel statement of responsibility of series or multipart monographic resource', NULL),
(447, 1, 9, 'P1058', 'has parallel statement of responsibility relating to an additional edition statement', NULL),
(448, 1, 9, 'P1142', 'has parallel statement of responsibility relating to edition', NULL),
(449, 1, 9, 'P1141', 'has parallel statement of responsibility relating to title', NULL),
(450, 1, 9, 'P1005', 'has parallel title', NULL),
(451, 1, 9, 'P1177', 'has parallel title (compound) of series or multipart monographic resource', NULL),
(452, 1, 9, 'P1027', 'has parallel title of series or multipart monographic resource', NULL),
(453, 1, 9, 'P1172', 'has parallel title statement', NULL),
(454, 1, 9, 'P1174', 'has parallel title statement of series or multipart monographic resource', NULL),
(455, 1, 9, 'P1019', 'has place of printing or manufacture', NULL),
(456, 1, 9, 'P1016', 'has place of publication, production, distribution', NULL),
(457, 1, 9, 'P1168', 'has place of publication, production, distribution statement', NULL),
(458, 1, 9, 'P1127', 'has playing speed', NULL),
(459, 1, 9, 'P1055', 'has playing time', NULL),
(460, 1, 9, 'P1060', 'has presence of colour', NULL),
(461, 1, 9, 'P1057', 'has presence of illustrations', NULL),
(462, 1, 9, 'P1062', 'has presence or absence of sound', NULL),
(463, 1, 9, 'P1126', 'has process or method of reproduction of still image', NULL),
(464, 1, 9, 'P1162', 'has publication, production, distribution, etc area', NULL),
(465, 1, 9, 'P1077', 'has qualification to identifier', NULL),
(466, 1, 9, 'P1150', 'has qualification to terms of availability', NULL),
(467, 1, 9, 'P1128', 'has recording method', NULL),
(468, 1, 9, 'P1061', 'has reduction ratio', NULL),
(469, 1, 9, 'P1032', 'has resource identifier', NULL),
(470, 1, 9, 'P1165', 'has resource identifier and terms of availability area', NULL),
(471, 1, 9, 'P1125', 'has resource identifier statement', NULL),
(472, 1, 9, 'P1051', 'has right ascension and declination', NULL),
(473, 1, 9, 'P1164', 'has series and multipart monographic resource area', NULL),
(474, 1, 9, 'P1146', 'has specific material designation', NULL),
(475, 1, 9, 'P1022', 'has specific material designation and extent', NULL),
(476, 1, 9, 'P1154', 'has standard identifier', NULL),
(477, 1, 9, 'P1049', 'has statement of coordinates and equinox', NULL),
(478, 1, 9, 'P1167', 'has statement of printing or manufacture', NULL),
(479, 1, 9, 'P1048', 'has statement of projection', NULL),
(480, 1, 9, 'P1029', 'has statement of responsibility of series or multipart monographic resource', NULL),
(481, 1, 9, 'P1059', 'has statement of responsibility relating to an additional edition statement', NULL),
(482, 1, 9, 'P1010', 'has statement of responsibility relating to edition', NULL),
(483, 1, 9, 'P1007', 'has statement of responsibility relating to title', NULL),
(484, 1, 9, 'P1047', 'has statement of scale', NULL),
(485, 1, 9, 'P1120', 'has subsequent numbering system', NULL),
(486, 1, 9, 'P1034', 'has terms of availability', NULL),
(487, 1, 9, 'P1093', 'has terms of availability statement', NULL),
(488, 1, 9, 'P1012', 'has title', NULL),
(489, 1, 9, 'P1159', 'has title and statement of responsibility area', NULL),
(490, 1, 9, 'P1118', 'has title of individual work by different author', NULL),
(491, 1, 9, 'P1117', 'has title of individual work by same author', NULL),
(492, 1, 9, 'P1004', 'has title proper', NULL),
(493, 1, 9, 'P1186', 'has title proper (compound) of series', NULL),
(494, 1, 9, 'P1026', 'has title proper of series or multipart monographic resource', NULL),
(495, 1, 9, 'P1170', 'has title statement', NULL),
(496, 1, 9, 'P1173', 'has title statement of series or multipart monographic resource', NULL),
(497, 1, 9, 'P1132', 'has track configuration', NULL),
(498, 1, 9, 'P1193', 'has work aspect', NULL),
(499, 1, 9, 'P1194', 'is expression reflected in', NULL),
(500, 1, 9, 'P1195', 'is item reflected in', NULL),
(501, 1, 9, 'P1196', 'is manifestation reflected in', NULL),
(502, 1, 9, 'P1197', 'is work reflected in', NULL),
(503, 1, 10, 'activity', 'activity', 'Relates an artist to an activity period'),
(504, 1, 10, 'amazon_asin', 'amazon_asin', 'Used to link a work or the expression of a work to its corresponding Amazon ASINs page.'),
(505, 1, 10, 'arranged_in', 'arranged in', '\n        Associates a work to an arrangement event where it was arranged\n    '),
(506, 1, 10, 'arrangement_of', 'arrangement of', '\n                Associates an arrangement event to a work\n        '),
(507, 1, 10, 'artist', 'artist', 'Relates a membership event with the corresponding artist'),
(508, 1, 10, 'availableAs', 'availableAs', NULL),
(509, 1, 10, 'available_as', 'available_as', '\n        Relates a musical manifestation to a musical item (this album, and my particular cd). By using\n        this property, there is no assumption on wether the full content is available on the linked item.\n        To be explicit about this, you can use a sub-property, such as mo:item (the full manifestation\n        is available on that item) or mo:preview (only a part of the manifestation is available on\n        that item).\n\n        This is a subproperty of frbr:examplar.\n    '),
(510, 1, 10, 'biography', 'biography', 'Used to link an artist to their online biography.'),
(511, 1, 10, 'collaborated_with', 'collaborated_with', 'Used to relate two collaborating people on a work.'),
(512, 1, 10, 'compilation_of', 'compilation_of', 'Indicates that a musical manifestation is a compilation of several Signals.'),
(513, 1, 10, 'compiled', 'compiled', 'Used to relate an person or a group of person who compiled the manifestation of a musical work.'),
(514, 1, 10, 'compiler', 'compiler', 'Used to relate the manifestation of a musical work to a person or a group of person who compiled it.'),
(515, 1, 10, 'composed_in', 'composed in', '\n        Associates a MusicalWork to the Composition event pertaining\n        to its creation. For example, I might use this property to associate\n        the Magic Flute to its composition event, occuring during 1782 and having as\n        a mo:composer Mozart.\n    '),
(516, 1, 10, 'composer', 'composer', '\n        Associates a composition event to the actual composer. For example,\n        this property could link the event corresponding to the composition of the\n        Magic Flute in 1782 to Mozart himself (who obviously has a FOAF profile:-) ).\n    '),
(517, 1, 10, 'conducted', 'conducted', 'Relates agents to the performances they were conducting'),
(518, 1, 10, 'conductor', 'conductor', 'Relates a performance to the conductor involved'),
(519, 1, 10, 'contains_sample_from', 'contains_sample_from', '\n        Relates a signal to another signal, which has been sampled.\n        '),
(520, 1, 10, 'derived_from', 'derived from', 'A related signal from which the described signal is derived.'),
(521, 1, 10, 'discography', 'discography', 'Used to links an artist to an online discography of their musical works. The discography should provide a summary of each released musical work of the artist.'),
(522, 1, 10, 'discogs', 'discogs', 'Used to link a musical work or the expression of a musical work, an artist or a corporate body to to its corresponding Discogs page.'),
(523, 1, 10, 'djmix_of', 'djmix_of', 'Indicates that all (or most of) the tracks of a musical work or the expression of a musical work were mixed together from all (or most of) the tracks from another musical work or the expression of a musical work to form a so called DJ-Mix. \n    \nThe tracks might have been altered by pitching (so that the tempo of one track matches the tempo of the following track) and fading (so that one track blends in smoothly with the other). If the tracks have been more substantially altered, the \"mo:remix\" relationship type is more appropriate. '),
(524, 1, 10, 'djmixed', 'djmixed', 'Used to relate an artist who djmixed a musical work or the expression of a musical work. \n    \nThe artist usually selected the tracks, chose their sequence, and slightly changed them by fading (so that one track blends in smoothly with the other) or pitching (so that the tempo of one track matches the tempo of the following track). This applies to a \'Mixtape\' in which all tracks were DJ-mixed together into one single long track. '),
(525, 1, 10, 'djmixed_by', 'djmixed_by', 'Used to relate a work or the expression of a work to an artist who djmixed it. \n    \nThe artist usually selected the tracks, chose their sequence, and slightly changed them by fading (so that one track blends in smoothly with the other) or pitching (so that the tempo of one track matches the tempo of the following track). This applies to a \'Mixtape\' in which all tracks were DJ-mixed together into one single long track. '),
(526, 1, 10, 'download', 'download', '\n                This property can be used to link from a person to the website where they make their works available, or from\n                a manifestation (a track or an album, for example) to a web page where it is available for\n                download.\n        \n        It is better to use one of the three sub-properties instead of this one in order to specify wether the\n        content can be accessed for free (mo:freedownload), if it is just free preview material (mo:previewdownload), or\n        if it can be accessed for some money (mo:paiddownload) (this includes links to the Amazon store, for example).\n\n                This property MUST be used only if the content is just available through a web page (holding, for example\n                a Flash application) - it is better to link to actual content directly through the use of mo:available_as and\n                mo:Stream, mo:Torrent or mo:ED2K, etc. Therefore, Semantic Web user agents that don\'t know how to read HTML and even\n                less to rip streams from Flash applications can still access the audio content.\n        '),
(527, 1, 10, 'encodes', 'encodes', '\n        Relates a MusicalItem (a track on a particular CD, an audio file, a stream somewhere) to the signal it encodes.\n\n        This is usually a lower-resolution version of the master signal (issued from a Recording event).\n    '),
(528, 1, 10, 'engineer', 'engineer', 'Relates a performance or a recording to the engineer involved'),
(529, 1, 10, 'engineered', 'engineered', 'Relates agents to the performances/recordings they were engineering in'),
(530, 1, 10, 'eventHomePage', 'eventHomePage', NULL),
(531, 1, 10, 'event_homepage', 'event homepage', 'Links a particular event to a web page'),
(532, 1, 10, 'exchange_item', 'exchange_item', 'A person, a group of person or an organization exchanging an exemplar of a single manifestation.'),
(533, 1, 10, 'fanpage', 'fanpage', 'Used to link an artist to a fan-created webpage devoted to that artist.'),
(534, 1, 10, 'free_download', 'free download', '\n        This property can be used to link from a person to the website where they make their works available, or from\n        a manifestation (a track or an album, for example) to a web page where it is available for free \n        download.\n\n        This property MUST be used only if the content is just available through a web page (holding, for example\n        a Flash application) - it is better to link to actual content directly through the use of mo:available_as and \n        mo:Stream, mo:Torrent or mo:ED2K, etc. Therefore, Semantic Web user agents that don\'t know how to read HTML and even\n        less to rip streams from Flash applications can still access the audio content.\n    '),
(535, 1, 10, 'freedownload', 'freedownload', NULL),
(536, 1, 10, 'genre', 'genre', '\n        Associates an event (like a performance or a recording) to a particular musical genre.\n        Further version of this property may also include works and scores in the domain.\n    '),
(537, 1, 10, 'group', 'group', 'Relates a membership event with the corresponding group'),
(538, 1, 10, 'origin', 'origin', 'Relates an artist to its geographic origin'),
(539, 1, 10, 'has_track', 'has_track', NULL),
(540, 1, 10, 'headliner', 'headliner', 'Relates a performance to the headliner(s) involved'),
(541, 1, 10, 'homepage', 'homepage', 'Links an artist, a record, etc. to a corresponding web page'),
(542, 1, 10, 'image', 'image', 'Indicates a pictorial image (JPEG, GIF, PNG, Etc.) of a musical work, the expression of a musical work, the manifestation of a work or the examplar of a manifestation.'),
(543, 1, 10, 'imdb', 'imdb', 'Used to link an artist, a musical work or the expression of a musical work to their equivalent page on IMDb, the InternetMovieDatabase.'),
(544, 1, 10, 'instrument', 'instrument', 'Relates a performance to a musical instrument involved'),
(545, 1, 10, 'interpreter', 'has interpeter', 'Adds an involved music artist, who interpreted, remixed, or otherwise modified an existing signal, which resulted in the signal that is here the subject of this relation.'),
(546, 1, 10, 'item', 'item', '\n                Relates a musical manifestation to a musical item (this album, and my particular cd) holding the\n                entire manifestation, and not just a part of it.\n        '),
(547, 1, 10, 'key', 'key', '\n        Indicated the key used by the musicians during a performance, or the key of a MusicalWork.\n        Any of 24 major or minor diatonic scales that provide the tonal framework for a piece of music.'),
(548, 1, 10, 'label', 'label', 'Associates a release event with the label releasing the record'),
(549, 1, 10, 'licence', 'licence', 'Used to link a work or the expression of a work to the license under which they can be manipulated (downloaded, modified, etc). \n    \nThis is usually used to link to a Creative Commons licence.'),
(550, 1, 10, 'listened', 'listened', 'Relates agents to the performances they were listening in'),
(551, 1, 10, 'listener', 'listener', 'Relates a performance to the listener involved'),
(552, 1, 10, 'mailorder', 'mailorder', 'Used to link a musical work or the expression of a musical work to a website where people can buy a copy of the musical manifestation.'),
(553, 1, 10, 'mashup_of', 'mashup_of', 'Indicates that musical works or the expressions of a musical work were mashed up on this album or track. \n    \nThis means that two musical works or the expressions of a musical work by different artists are mixed together, over each other, or otherwise combined into a single musical work (usually by a third artist, the remixer).'),
(554, 1, 10, 'media_type', 'has media type', 'The mediatype (file format or MIME type, or physical medium) of a musical manifestation, e.g. a MP3, CD or vinyl.'),
(555, 1, 10, 'medley_of', 'medley_of', 'Indicates that a musical expression is a medley of several other musical expressions. \n    \nThis means that the orignial musical expression were rearranged to create a new musical expression in the form of a medley. '),
(556, 1, 10, 'member', 'member', '\n        Indicates a member of a musical group\n    '),
(557, 1, 10, 'member_of', 'member_of', 'Inverse of the foaf:member property'),
(558, 1, 10, 'membership', 'membership', 'Relates an agent with related membership events'),
(559, 1, 10, 'movement', 'has_movement', 'Indicates that a musical work has movements'),
(560, 1, 10, 'musicbrainz', 'musicbrainz', '\n        Linking an agent, a track or a record to its corresponding Musicbrainz page.\n        '),
(561, 1, 10, 'musicmoz', 'musicmoz', 'Used to link an artist, a musical work or the expression of a musical work to its corresponding MusicMoz page.'),
(562, 1, 10, 'myspace', 'myspace', 'Used to link a person to its corresponding MySpace page.'),
(563, 1, 10, 'olga', 'olga', 'Used to link a track to a tabulature file for track in the On-Line Guitar Archive.'),
(564, 1, 10, 'onlinecommunity', 'onlinecommunity', 'Used to link a person with an online community web page like a blog, a wiki, a forum, a livejournal page, Etc.'),
(565, 1, 10, 'other_release_of', 'other_release_of', 'Indicates that two musical manifestations are essentially the same.'),
(566, 1, 10, 'paid_download', 'paid download', '\n                Provide a link from an artist to a web page where all of that artist\'s musical work is available for some money,\n                or a link from a manifestation (record/track, for example) to a web page providing a paid access to this manifestation.\n        '),
(567, 1, 10, 'paiddownload', 'paiddownload', NULL),
(568, 1, 10, 'performance_of', 'performance of', '\n        Associates a Performance to a musical work or an arrangement that is being used as a factor in it.\n        For example, I might use this property to attach the Magic Flute musical work to \n        a particular Performance.\n    '),
(569, 1, 10, 'performed', 'performed', 'Relates agents to the performances they were performing in'),
(570, 1, 10, 'performed_in', 'performed in', '\n        Associates a Musical Work or an Score to Performances in which they were\n        a factor. For example, I might use this property in order to \n        associate the Magic Flute to a particular performance at the Opera\n        Bastille last year.'),
(571, 1, 10, 'performer', 'performer', 'Relates a performance to the performers involved'),
(572, 1, 10, 'possess_item', 'possess_item', 'A person, a group of person or an organization possessing an exemplar of a single manifestation.'),
(573, 1, 10, 'preview', 'preview', '\n                Relates a musical manifestation to a musical item (this album, and my particular cd), which holds\n                a preview of the manifestation (eg. one track for an album, or a snippet for a track)\n        '),
(574, 1, 10, 'preview_download', 'preview download', '\n                This property can be used to link from a person to the website where they make previews of their works available, or from\n                a manifestation (a track or an album, for example) to a web page where a preview download is available.\n\n                This property MUST be used only if the content is just available through a web page (holding, for example\n                a Flash application) - it is better to link to actual content directly through the use of mo:available_as and\n                mo:Stream, mo:Torrent or mo:ED2K, etc. Therefore, Semantic Web user agents that don\'t know how to read HTML and even\n                less to rip streams from Flash applications can still access the audio content.\n        '),
(575, 1, 10, 'primary_instrument', 'primary instrument', 'Indicates that an artist primarily plays an instrument, or that a member was primarily playing a particular instrument during his membership'),
(576, 1, 10, 'produced', 'produced', 'Used to relate an person or a group of person who produced the manifestation of a work.'),
(577, 1, 10, 'produced_score', 'produced score', '\n        Associates an arrangement or a composition event to a score product (score here does not refer to a published score, but more\n        an abstract arrangement of a particular work).\n    '),
(578, 1, 10, 'produced_signal', 'produced signal', '\n                Associates a Recording to the outputted signal.\n        '),
(579, 1, 10, 'produced_signal_group', 'produced signal group', 'Associates a recording session with a group of master signals produced by it.'),
(580, 1, 10, 'produced_sound', 'produced sound', '\n                Associates a Performance to a physical Sound that is being produced by it.\n        '),
(581, 1, 10, 'produced_work', 'produced work', '\n                Associates a composition event to the produced MusicalWork. For example,\n                this property could link the event corresponding to the composition of the\n                Magic Flute in 1782 to the Magic Flute musical work itself. This musical work\n                can then be used in particular performances.\n        '),
(582, 1, 10, 'producer', 'producer', 'Used to relate the manifestation of a work to a person or a group of person who produced it.'),
(583, 1, 10, 'producesSignal', 'producesSignal', NULL),
(584, 1, 10, 'producesSound', 'producesSound', NULL),
(585, 1, 10, 'producesWork', 'producesWork', NULL),
(586, 1, 10, 'productOfComposition', 'productOfComposition', NULL),
(587, 1, 10, 'publicationOf', 'publicationOf', NULL),
(588, 1, 10, 'publication_of', 'publication of', 'Link a particular manifestation to the related signal, score, libretto, or lyrics'),
(589, 1, 10, 'published', 'published', 'Used to relate an person or a group of person who published the manifestation of a work.'),
(590, 1, 10, 'publishedAs', 'publishedAs', NULL),
(591, 1, 10, 'published_as', 'published as', '\n        Links a musical expression (e.g. a signal or a score) to one of its manifestations (e.g. a track on a particular record or a published score).\n    '),
(592, 1, 10, 'publisher', 'publisher', 'Used to relate a musical manifestation to a person or a group of person who published it.'),
(593, 1, 10, 'publishingLocation', 'publishingLocation', NULL),
(594, 1, 10, 'publishing_location', 'publishingLocation', '\n        Relates a musical manifestation to its publication location.\n        '),
(595, 1, 10, 'record', 'released record', 'Associates a release with the records it contains. A single release can be associated with multiple records, for example for a multi-disc release.'),
(596, 1, 10, 'recordedAs', 'recordedAs', NULL),
(597, 1, 10, 'recorded_as', 'recorded as', '\n        This is a shortcut property, allowing to bypass all the Sound/Recording steps. This property\n        allows to directly link a Performance to the recorded Signal. This is recommended for \"normal\"\n        users. However, advanced users wanting to express things such as the location of the microphone will\n        have to create this shortcut as well as the whole workflow, in order to let the \"normal\" users access\n        simply the, well, simple information:-) .\n    '),
(598, 1, 10, 'recorded_in', 'recorded in', '\n            Associates a physical Sound to a Recording event where it is being used \n        in order to produce a signal. For example, I might use this property to \n        associate the sound produced by a particular performance of the magic flute\n        to a given recording, done using my cell-phone.\n    '),
(599, 1, 10, 'recording_of', 'recorded sound', '\n            Associates a Recording event to a physical Sound being recorded.\n                For example, I might use this property to\n                associate a given recording, done using my cell phone, to the \n        sound produced by a particular performance of the magic flute.\n    '),
(600, 1, 10, 'records', 'records', '\n        This is the inverse of the shortcut property recordedAs, allowing to relate directly a performance\n        to a signal.\n    '),
(601, 1, 10, 'release', 'release', 'Associates a release with the corresponding release event'),
(602, 1, 10, 'releaseStatus', 'releaseStatus', NULL),
(603, 1, 10, 'releaseType', 'releaseType', NULL),
(604, 1, 10, 'release_status', 'release_status', '\n                Relates a musical manifestation to its release status (bootleg, ...)\n        '),
(605, 1, 10, 'release_type', 'release_type', '\n        Relates a musical manifestation to its release type (interview, spoken word, album, ...)\n    '),
(606, 1, 10, 'remaster_of', 'remaster_of', 'This relates two musical work or the expression of a musical work, where one is a remaster of the other. \n    \nA remaster is a new version made for release from source recordings that were earlier released separately. This is usually done to improve the audio quality or adjust for more modern playback equipment. The process generally doesn\'t involve changing the music in any artistically important way. It may, however, result in tracks that are a few seconds longer or shorter.'),
(607, 1, 10, 'remix_of', 'remix_of', 'Used to relate the remix of a musical work in a substantially altered version produced by mixing together individual tracks or segments of an original musical source work.'),
(608, 1, 10, 'remixed', 'remixed', 'Used to relate an artist who remixed a musical work or the expression of a musical work. \n    \nThis involves taking just one other musical work and using audio editing to make it sound like a significantly different, but usually still recognisable, song. It can be used to link an artist to a single song that they remixed, or, if they remixed an entire musical work.'),
(609, 1, 10, 'remixer', 'remixer', 'Used to relate a musical work or the expression of a musical work to an artist who remixed it. \n    \nThis involves taking just one other musical work and using audio editing to make it sound like a significantly different, but usually still recognisable, song. It can be used to link an artist to a single song that they remixed, or, if they remixed an entire musical work.'),
(610, 1, 10, 'review', 'review', 'Used to link a work or the expression of a work to a review. \n    \nThe review does not have to be open content, as long as it is accessible to the general internet population.'),
(611, 1, 10, 'sampled', 'sampled', 'Used to relate an artist who sampled a Signal.'),
(612, 1, 10, 'sampledVersionOf', 'sampledVersionOf', NULL),
(613, 1, 10, 'sampled_version', 'sampled version', '\n        Associates an analog signal with a sampled version of it\n    '),
(614, 1, 10, 'sampled_version_of', 'sampled version of', '\n        Associates a digital signal with the analog version of it\n    '),
(615, 1, 10, 'sampler', 'sampler', 'Used to relate the signal of a musical work to an artist who sampled it.'),
(616, 1, 10, 'sell_item', 'sell_item', 'A person, a group of person or an organization selling an exemplar of a single manifestation.'),
(617, 1, 10, 'signal', 'signal', 'Associates a group of signals with one of the signals it contains'),
(618, 1, 10, 'signalTime', 'signalTime', NULL),
(619, 1, 10, 'similar_to', 'similar_to', '\n            A similarity relationships between two objects (so far, either an agent, a signal or a genre, but\n        this could grow).\n        This relationship is pretty general and doesn\'t make any assumptions on how the similarity claim\n        was derived.\n        Such similarity statements can come from a range of different sources (Musicbrainz similarities between\n        artists, or coming from some automatic content analysis).\n        However, the origin of such statements should be kept using a named graph approach - and ultimately, the \n        documents providing such statements should attach some metadata to themselves (confidence of the claim, etc.).\n        '),
(620, 1, 10, 'singer', 'singer', 'Relates a performance to an involved singer'),
(621, 1, 10, 'supporting_musician', 'supporting_musician', 'Used to relate an artist doing long-time instrumental or vocal support for another artist.'),
(622, 1, 10, 'lyrics', 'lyrics', 'Associates lyrics with a musical work'),
(623, 1, 10, 'time', 'time', '\n        Associates a Signal to a time object - its actual domain\n    '),
(624, 1, 10, 'track', 'track', 'Indicates a part of a musical manifestation - in this particular case, a track.'),
(625, 1, 10, 'translation_of', 'translation_of', 'Indicates that a work or the expression of a work has translated or transliterated into another expression of a work.'),
(626, 1, 10, 'tribute_to', 'tribute_to', 'Indicates a musical work or the expression of a musical work that is a tribute to an artist - normally consisting of music being composed by the artist but performed by other artists. '),
(627, 1, 10, 'usedInPerformance', 'usedInPerformance', NULL),
(628, 1, 10, 'usedInRecording', 'usedInRecording', NULL),
(629, 1, 10, 'usesSound', 'usesSound', NULL),
(630, 1, 10, 'usesWork', 'usesWork', NULL),
(631, 1, 10, 'want_item', 'want_item', 'A person, a group of person or an organization wanting an exemplar of a single manifestation.'),
(632, 1, 10, 'wikipedia', 'wikipedia', '\n        Used to link an work, an expression of a work, a manifestation of a work, \n        a person, an instrument or a musical genre to its corresponding WikiPedia page. \n        The full URL should be used, not just the WikiName.\n    '),
(633, 1, 10, 'activity_end', 'activity end', 'Relates an artist to a date at which its activity ended'),
(634, 1, 10, 'activity_start', 'activity start', 'Relates an artist to a date at which its activity started'),
(635, 1, 10, 'bitsPerSample', 'bitsPerSample', '\n        Associates a digital signal to the number a bits used to encode one sample. Range is xsd:int.\n    '),
(636, 1, 10, 'bpm', 'bpm', '\n        Indicates the BPM of a MusicalWork or a particular Performance \n        Beats per minute: the pace of music measured by the number of beats occurring in 60 seconds.\n    '),
(637, 1, 10, 'catalogue_number', 'catalogue number', 'Links a release with the corresponding catalogue number'),
(638, 1, 10, 'channels', 'channels', '\n        Associates a signal to the number of channels it holds (mono --> 1, stereo --> 2). Range is xsd:int.\n    '),
(639, 1, 10, 'ean', 'ean', 'The European Article Number (EAN) is a universal identifier for products, commonly printed in form of barcodes on them. The numbers represented by those codes can either be 8 or 13 digits long, with the 13-digit-version being most common. EANs form a superset of the North American Universal Product Code (UPC) as every UPC can be made an EAN by adding a leading zero to it. Additionally every EAN is also a Japanese Article Number (JAN). The identifiers were formerly assigned by EAN International which merged with Uniform Code Council (UCC, the guys behind the UPCs) and Electronic Commerce Council of Canada (ECCC) to become GS1. '),
(640, 1, 10, 'encoding', 'encoding', 'Method used to convert analog electronic signals into digital format such as \"MP3 CBR @ 128kbps\", \"OGG @ 160kbps\", \"FLAC\", etc.'),
(641, 1, 10, 'duration', 'duration', 'The duration of a track or a signal in ms'),
(642, 1, 10, 'grid', 'GRid', 'The Global Release Identifier (GRid) is a system for uniquely identifying Releases of music over electronic networks (that is, online stores where you can buy music as digital files). As that it can be seen as the equivalent of the BarCode (or more correctly the GTIN) as found on physical releases of music. Like the ISRC (a code for identifying single recordings as found on releases) it was developed by the IFPI but it does not appear to be a standard of the ISO.'),
(643, 1, 10, 'gtin', 'gtin', 'GTIN is a grouping term for EANs and UPCs. In common speech those are called barcodes although the barcodes are just a representation of those identifying numbers.'),
(644, 1, 10, 'ipi', 'ipi', 'The Interested Parties Information Code (IPI) is an ISO standard similar to ISBNs for identifying the people or groups with some involvement with a particular musical work / compositions.'),
(645, 1, 10, 'ismn', 'ismn', 'The International Standard Music Number (ISMN) is an ISO standard similar to ISBNs for identifying printed music publications'),
(646, 1, 10, 'isrc', 'isrc', '\n    The ISRC (International Standard Recording Code) is the international identification system for sound recordings and music videorecordings. \n    Each ISRC is a unique and permanent identifier for a specific recording which can be permanently encoded into a product as its digital fingerprint. \n    Encoded ISRC provide the means to automatically identify recordings for royalty payments.\n    '),
(647, 1, 10, 'iswc', 'iswc', 'Links a musical work to the corresponding ISWC number'),
(648, 1, 10, 'lc', 'lc', 'The Label Code (LC) was introduced in 1977 by the IFPI (International Federation of Phonogram and Videogram Industries) in order to unmistakably identify the different record labels (see Introduction, Record labels) for rights purposes. The Label Code consists historically of 4 figures, presently being extended to 5 figures, preceded by LC and a dash (e.g. LC-0193 = Electrola; LC-0233 = His Master\'s Voice). Note that the number of countries using the LC is limited, and that the code given on the item is not always accurate.'),
(649, 1, 10, 'meter', 'meter', 'Associates a musical work or a score with its meter'),
(650, 1, 10, 'movementNum', 'movementNum', NULL),
(651, 1, 10, 'movement_number', 'movement number', 'Indicates the position of a movement in a musical work.'),
(652, 1, 10, 'musicbrainz_guid', 'Musicbrainz GUID', 'Links an object to the corresponding Musicbrainz identifier'),
(653, 1, 10, 'opus', 'opus', '\n        Used to define a creative work, especially a musical composition numbered to designate the order of a composer\'s works.\n    '),
(654, 1, 10, 'puid', 'puid', '\n        Link a signal to the PUIDs associated with it, that is, PUID computed from MusicalItems (mo:AudioFile) \n        derived from this signal.\n        PUIDs (Portable Unique IDentifier) are the IDs used in the \n        proprietary MusicDNS AudioFingerprinting system which is operated by MusicIP.\n\n        Using PUIDs, one (with some luck) can identify the Signal object associated with a particular audio file, therefore allowing\n        to access further information (on which release this track is featured? etc.). Using some more metadata one can identify\n        the particular Track corresponding to the audio file (a track on a particular release).'),
(655, 1, 10, 'record_count', 'record count', 'Associates a release with the number of records it contains, e.g. the number of discs it contains in the case of a multi-disc release.'),
(656, 1, 10, 'record_number', 'has record number', 'Indicates the position of a record in a release (e.g. a 2xLP, etc.).'),
(657, 1, 10, 'record_side', 'has record side', 'Associates the side on a vinyl record, where a track is located, e.g. A, B, C, etc. This property can then also be used \nin conjunction with mo:track_number, so that one can infer e.g. \"A1\", that means, track number 1 on side A.'),
(658, 1, 10, 'sampleRate', 'sampleRate', NULL),
(659, 1, 10, 'sample_rate', 'sample_rate', '\n        Associates a digital signal to its sample rate. It might be easier to express it this way instead of\n        defining a timeline map:-) Range is xsd:float.\n    '),
(660, 1, 10, 'tempo', 'tempo', '\n        Rate of speed or pace of music. Tempo markings are traditionally given in Italian; \n        common markings include: grave (solemn; very, very slow); largo (broad; very slow); \n        adagio (quite slow); andante (a walking pace); moderato (moderate); allegro (fast; cheerful); \n        vivace (lively); presto (very fast); accelerando (getting faster); ritardando (getting slower); \n        and a tempo (in time; returning to the original pace).\n    '),
(661, 1, 10, 'text', 'text', 'Associates lyrics with their text.'),
(662, 1, 10, 'trackNum', 'trackNum', NULL),
(663, 1, 10, 'track_count', 'track count', 'The track count of a record'),
(664, 1, 10, 'track_number', 'track number', 'Indicates the position of a track on a record medium (a CD, etc.).'),
(665, 1, 10, 'trmid', 'trmid', '\n        Indicates the TRMID of a track.\n        TRM IDs are MusicBrainz\' old AudioFingerprinting system. \n        TRM (TRM Recognizes Music) IDs are (somewhat) unique ids that represent \n        the audio signature of a musical piece (see AudioFingerprint).\n    '),
(666, 1, 10, 'upc', 'upc', 'UPC stands for \"Universal Product Code\", which was the original barcode used in the United States and Canada. The UPC (now officially EAN.UCC-12 is a numerical method of identifying products without redundancy worldwide for all types of products in the retail sector. The EAN is a superset of the original UPC increasing the digits to 13 with the prefix 0 reserved for UPC. As of 2005, manufacturers are only allowed to use the new 13-digit codes on their items, rather than having two separate numbers.'),
(667, 1, 10, 'uuid', 'universally unique identifier', '\n            Links an object to an universally unique identifier for it.\n    '),
(668, NULL, 6, 'price', 'price', 'The offer price of a product, or of a price component when attached to PriceSpecification and its subtypes.<br/><br/>\n\nUsage guidelines:<br/><br/>\n\n<ul>\n<li>Use the <a class=\"localLink\" href=\"http://schema.org/priceCurrency\">priceCurrency</a> property (with standard formats: <a href=\"http://en.wikipedia.org/wiki/ISO_4217\">ISO 4217 currency format</a> e.g. \"USD\"; <a href=\"https://en.wikipedia.org/wiki/List_of_cryptocurrencies\">Ticker symbol</a> for cryptocurrencies e.g. \"BTC\"; well known names for <a href=\"https://en.wikipedia.org/wiki/Local_exchange_trading_system\">Local Exchange Tradings Systems</a> (LETS) and other currency types e.g. \"Ithaca HOUR\") instead of including <a href=\"http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_dollar_or_peso_sign\">ambiguous symbols</a> such as \'$\' in the value.</li>\n<li>Use \'.\' (Unicode \'FULL STOP\' (U+002E)) rather than \',\' to indicate a decimal point. Avoid using these symbols as a readability separator.</li>\n<li>Note that both <a href=\"http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute\">RDFa</a> and Microdata syntax allow the use of a \"content=\" attribute for publishing simple machine-readable values alongside more human-friendly formatting.</li>\n<li>Use values from 0123456789 (Unicode \'DIGIT ZERO\' (U+0030) to \'DIGIT NINE\' (U+0039)) rather than superficially similiar Unicode symbols.</li>\n</ul>\n'),
(669, 1, 11, 'city', 'Stadt', NULL),
(670, 1, 12, 'code', 'Code EC', NULL),
(671, 1, 12, 'ects', 'ects', NULL),
(672, 1, 12, 'semestre', 'semestre', NULL),
(673, 1, 12, 'coef', 'coefficient', NULL),
(674, 1, 12, 'vhec', 'Volume Horaire en présentiel', NULL),
(675, 1, 12, 'vhch', 'Volume Horaire chargé', NULL),
(676, 1, 12, 'cch', 'Choix du Créneau Horaire', NULL),
(677, 1, 12, 'pcCM', '% Cours magistraux', NULL),
(678, 1, 12, 'pcTD', '% Travaux dirigés', NULL),
(679, 1, 12, 'pcTP', '% Travaux pratiques', NULL),
(680, 1, 12, 'sd', 'Seuil dédoublement', NULL),
(681, 1, 12, 'libre', 'EC Libre', NULL),
(682, 1, 12, 'mutuaDst', 'Mutualiser avec les parcours', NULL),
(683, 1, 12, 'mutuaSrc', 'Mutualiser à partir du parcours', NULL),
(684, 1, 12, 'nbg', 'Nombre de groupe', NULL),
(685, 1, 12, 'hasIntervenant', 'hasIntervenant', 'L\'intervenant enseignant l\'EC'),
(686, 1, 12, 'hasEC', 'hasEC', 'L\'EC enseignée');

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
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(1, 1, 94, 2, NULL, 'Luc Toto', 1, '2020-04-15 14:10:51', '2020-04-15 14:10:51', 'Omeka\\Entity\\Item'),
(2, 1, 107, 3, NULL, 'BDD relationnelle', 1, '2020-04-15 14:33:46', '2020-04-16 07:27:44', 'Omeka\\Entity\\Item'),
(3, 1, 94, 2, NULL, 'Tu Tu', 1, '2020-04-15 14:35:47', '2020-04-16 07:25:46', 'Omeka\\Entity\\Item'),
(7, 1, 109, 4, NULL, NULL, 1, '2020-04-16 04:56:24', '2020-04-16 04:56:24', 'Annotate\\Entity\\Annotation'),
(8, 1, NULL, NULL, NULL, NULL, 1, '2020-04-16 04:56:24', '2020-04-16 04:56:24', 'Annotate\\Entity\\AnnotationTarget'),
(9, 1, NULL, NULL, NULL, NULL, 1, '2020-04-16 04:56:24', '2020-04-16 04:56:24', 'Annotate\\Entity\\AnnotationBody');

-- --------------------------------------------------------

--
-- Structure de la table `resource_class`
--

CREATE TABLE `resource_class` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
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
(106, 1, 6, 'CreativeWork', 'CreativeWork', 'The most generic kind of creative work, including books, movies, photographs, software programs, etc.'),
(107, 1, 6, 'Course', 'Course', 'A description of an educational course which may be offered as distinct instances at which take place at different times or take place at different locations, or be offered through different media or modes of study. An educational course is a sequence of one or more educational events and/or creative works which aims to build knowledge, competence or ability of learners.'),
(108, 1, 6, 'Thing', 'Thing', 'The most generic type of item.'),
(109, 1, 7, 'Annotation', 'Annotation', 'The class for Web Annotations.'),
(110, 1, 7, 'Choice', 'Choice', 'A subClass of  as:OrderedCollection  that conveys to a consuming application that it should select one of the resources in the  as:items  list to use, rather than all of them.  This is typically used to provide a choice of resources to render to the user, based on further supplied properties.  If the consuming application cannot determine the user\'s preference, then it should use the first in the list.'),
(111, 1, 7, 'CssSelector', 'CssSelector', 'A CssSelector describes a Segment of interest in a representation that conforms to the Document Object Model through the use of the CSS selector specification.'),
(112, 1, 7, 'CssStyle', 'CssStyle', 'A resource which describes styles for resources participating in the Annotation using CSS.'),
(113, 1, 7, 'DataPositionSelector', 'DataPositionSelector', 'DataPositionSelector describes a range of data by recording the start and end positions of the selection in the stream. Position 0 would be immediately before the first byte, position 1 would be immediately before the second byte, and so on. The start byte is thus included in the list, but the end byte is not.'),
(114, 1, 7, 'Direction', 'Direction', 'A class to encapsulate the different text directions that a textual resource might take.  It is not used directly in the Annotation Model, only its three instances.'),
(115, 1, 7, 'FragmentSelector', 'FragmentSelector', 'The FragmentSelector class is used to record the segment of a representation using the IRI fragment specification defined by the representation\'s media type.'),
(116, 1, 7, 'HttpRequestState', 'HttpRequestState', 'The HttpRequestState class is used to record the HTTP request headers that a client SHOULD use to request the correct representation from the resource. '),
(117, 1, 7, 'Motivation', 'Motivation', 'The Motivation class is used to record the user\'s intent or motivation for the creation of the Annotation, or the inclusion of the body or target, that it is associated with.'),
(118, 1, 7, 'RangeSelector', 'RangeSelector', 'A Range Selector can be used to identify the beginning and the end of the selection by using other Selectors. The selection consists of everything from the beginning of the starting selector through to the beginning of the ending selector, but not including it.'),
(119, 1, 7, 'ResourceSelection', 'ResourceSelection', 'Instances of the ResourceSelection class identify part (described by an oa:Selector) of another resource (referenced with oa:hasSource), possibly from a particular representation of a resource (described by an oa:State). Please note that ResourceSelection is not used directly in the Web Annotation model, but is provided as a separate class for further application profiles to use, separate from oa:SpecificResource which has many Annotation specific features.'),
(120, 1, 7, 'Selector', 'Selector', 'A resource which describes the segment of interest in a representation of a Source resource, indicated with oa:hasSelector from the Specific Resource. This class is not used directly in the Annotation model, only its subclasses.'),
(121, 1, 7, 'SpecificResource', 'SpecificResource', 'Instances of the SpecificResource class identify part of another resource (referenced with oa:hasSource), a particular representation of a resource, a resource with styling hints for renders, or any combination of these, as used within an Annotation.'),
(122, 1, 7, 'State', 'State', 'A State describes the intended state of a resource as applied to the particular Annotation, and thus provides the information needed to retrieve the correct representation of that resource.'),
(123, 1, 7, 'Style', 'Style', 'A Style describes the intended styling of a resource as applied to the particular Annotation, and thus provides the information to ensure that rendering is consistent across implementations.'),
(124, 1, 7, 'SvgSelector', 'SvgSelector', 'An SvgSelector defines an area through the use of the Scalable Vector Graphics [SVG] standard. This allows the user to select a non-rectangular area of the content, such as a circle or polygon by describing the region using SVG. The SVG may be either embedded within the Annotation or referenced as an External Resource.'),
(125, 1, 7, 'TextPositionSelector', 'TextPositionSelector', 'The TextPositionSelector describes a range of text by recording the start and end positions of the selection in the stream. Position 0 would be immediately before the first character, position 1 would be immediately before the second character, and so on.'),
(126, 1, 7, 'TextQuoteSelector', 'TextQuoteSelector', 'The TextQuoteSelector describes a range of text by copying it, and including some of the text immediately before (a prefix) and after (a suffix) it to distinguish between multiple copies of the same sequence of characters.'),
(127, 1, 7, 'TextualBody', 'TextualBody', ''),
(128, 1, 7, 'TimeState', 'TimeState', 'A TimeState records the time at which the resource\'s state is appropriate for the Annotation, typically the time that the Annotation was created and/or a link to a persistent copy of the current version.'),
(129, 1, 7, 'XPathSelector', 'XPathSelector', ' An XPathSelector is used to select elements and content within a resource that supports the Document Object Model via a specified XPath value.'),
(130, 1, 8, 'Property', 'Property', 'The class of RDF properties.'),
(131, 1, 8, 'Statement', 'Statement', 'The class of RDF statements.'),
(132, 1, 8, 'Bag', 'Bag', 'The class of unordered containers.'),
(133, 1, 8, 'Seq', 'Seq', 'The class of ordered containers.'),
(134, 1, 8, 'Alt', 'Alt', 'The class of containers of alternatives.'),
(135, 1, 8, 'List', 'List', 'The class of RDF Lists.'),
(136, 1, 9, 'C2025', 'Compound Title Of Parallel Title Encoding Scheme', NULL),
(137, 1, 9, 'C2021', 'Compound Title Of Title Proper Encoding Scheme', NULL),
(138, 1, 9, 'C2003', 'Content Form And Media Type Area Encoding Scheme', NULL),
(139, 1, 9, 'C2026', 'Content Form And Media Type Statement Encoding Scheme', NULL),
(140, 1, 9, 'C2005', 'Edition Area Encoding Scheme', NULL),
(141, 1, 9, 'C2002', 'ISBD Syntax Encoding Scheme', NULL),
(142, 1, 9, 'C2008', 'Material Description Area Encoding Scheme', NULL),
(143, 1, 9, 'C2006', 'Material Or Type Of Resource Specific Area Encoding Scheme', NULL),
(144, 1, 9, 'C2012', 'Mathematical Data Area Encoding Scheme', NULL),
(145, 1, 9, 'C2013', 'Music Format Statement Area Encoding Scheme', NULL),
(146, 1, 9, 'C2019', 'Name Of Publisher, Producer, Distributor Statement Encoding Scheme', NULL),
(147, 1, 9, 'C2010', 'Note Area Encoding Scheme', NULL),
(148, 1, 9, 'C2014', 'Numbering Area Encoding Scheme', NULL),
(149, 1, 9, 'C2016', 'Other Physical Details Encoding Scheme', NULL),
(150, 1, 9, 'C2024', 'Parallel Title (Compound) Of Series Or Multipart Monographic Resource Encoding Scheme', NULL),
(151, 1, 9, 'C2018', 'Place Of Publication, Production, Distribution Statement Encoding Scheme', NULL),
(152, 1, 9, 'C2007', 'Publication, Production, Distribution, Etc Area Encoding Scheme', NULL),
(153, 1, 9, 'C2001', 'Resource', NULL),
(154, 1, 9, 'C2011', 'Resource Identifier And Terms Of Availability Area Encoding Scheme', NULL),
(155, 1, 9, 'C2028', 'Resource Identifier Statement Encoding Scheme', NULL),
(156, 1, 9, 'C2009', 'Series And Multipart Monographic Resource Area Encoding Scheme', NULL),
(157, 1, 9, 'C2015', 'Specific Material Designation And Extent Encoding Scheme', NULL),
(158, 1, 9, 'C2017', 'Statement Of Coordinates And Equinox Encoding Scheme', NULL),
(159, 1, 9, 'C2020', 'Statement Of Printing Or Manufacture Encoding Scheme', NULL),
(160, 1, 9, 'C2027', 'Terms Of Availability Statement Encoding Scheme', NULL),
(161, 1, 9, 'C2004', 'Title And Statement Of Responsibility Area Encoding Scheme', NULL),
(162, 1, 9, 'C2022', 'Title Proper (Compound) Of Series Or Multipart Monographic Resource Encoding Scheme', NULL),
(163, 1, 10, 'Activity', 'activity', '\n        An activity period, defining when an artist was musically active.\n    '),
(164, 1, 10, 'AnalogSignal', 'analogue signal', '\n        An analog signal.\n    '),
(165, 1, 10, 'Arrangement', 'arrangement', '\n        An arrangement event.\n        Takes as agent the arranger, and produces a score (informational object, not the actually published score).\n    '),
(166, 1, 10, 'Arranger', 'arranger', NULL),
(167, 1, 10, 'AudioFile', 'audio file', 'An audio file, which may be available on a local file system or through http, ftp, etc.'),
(168, 1, 10, 'CD', 'CD', 'Compact Disc used as medium to record a musical manifestation.'),
(169, 1, 10, 'Composer', 'composer', NULL),
(170, 1, 10, 'Composition', 'composition', '\n        A composition event.\n        Takes as agent the composer himself.\n        It produces a MusicalWork, or a MusicalExpression (when the initial \"product\" is a score, for example), or both...\n    '),
(171, 1, 10, 'Conductor', 'conductor', NULL),
(172, 1, 10, 'CorporateBody', 'corporate body', 'Organization or group of individuals and/or other organizations involved in the music market.'),
(173, 1, 10, 'DAT', 'DAT', 'Digital Audio Tape used as medium to record a musical manifestation.'),
(174, 1, 10, 'DCC', 'DCC', 'Digital Compact Cassette used as medium to record a musical manifestation.'),
(175, 1, 10, 'DVDA', 'DVDA', 'DVD-Audio used as medium to record a musical manifestation.'),
(176, 1, 10, 'DigitalSignal', 'digital signal', '\n        A digital signal\n    '),
(177, 1, 10, 'ED2K', 'ED2K', 'Something available on the E-Donkey peer-2-peer filesharing network'),
(178, 1, 10, 'Festival', 'Festival', '\n        A festival - musical/artistic event lasting several days, like Glastonbury, Rock Am Ring...\n        We migth decompose this event (which is in fact just a classification of the space/time region related to \n        a particular festival) using hasSubEvent in several performances at different space/time.\n    '),
(179, 1, 10, 'Genre', 'Genre', '\n        An expressive style of music.\n        \n        Any taxonomy can be plug-in here. You can either define a genre by yourself, like this:\n\n        :mygenre a mo:Genre; dc:title \"electro rock\".\n\n        Or you can refer to a DBPedia genre (such as http://dbpedia.org/resource/Baroque_music), allowing semantic web\n        clients to access easily really detailed structured information about the genre you are refering to.\n    '),
(180, 1, 10, 'Instrument', 'Instrument', '\n        Any of various devices or contrivances that can be used to produce musical tones or sound.\n        \n        Any taxonomy can be used to subsume this concept. The default one is one extracted by Ivan Herman\n        from the Musicbrainz instrument taxonomy, conforming to SKOS. This concept holds a seeAlso link \n        towards this taxonomy.\n    '),
(181, 1, 10, 'Instrumentation', 'instrumentation', '\n        Instrumentation deals with the techniques of writing music for a specific instrument, \n        including the limitations of the instrument, playing techniques and idiomatic handling of the instrument.\n    '),
(182, 1, 10, 'Label', 'label', 'Trade name of a company that produces musical works or expression of musical works.'),
(183, 1, 10, 'Libretto', 'libretto', '\n                Libretto\n        '),
(184, 1, 10, 'Listener', 'listened', NULL),
(185, 1, 10, 'Lyrics', 'lyrics', '\n        Lyrics\n    '),
(186, 1, 10, 'MD', 'MD', 'Mini Disc used as medium to record a musical manifestation.'),
(187, 1, 10, 'MagneticTape', 'MagneticTape', 'Magnetic analogue tape used as medium to record a musical manifestation.'),
(188, 1, 10, 'Medium', 'Medium', 'A means or instrumentality for storing or communicating musical manifestation.'),
(189, 1, 10, 'Membership', 'membership', 'A membership event, where one or several people belongs to a group during a particular time period.'),
(190, 1, 10, 'Movement', 'movement', 'A movement is a self-contained part of a musical work. While individual or selected movements from a composition are sometimes performed separately, a performance of the complete work requires all the movements to be performed in succession.\n\nOften a composer attempts to interrelate the movements thematically, or sometimes in more subtle ways, in order that the individual\nmovements exert a cumulative effect. In some forms, composers sometimes link the movements, or ask for them to be played without a\npause between them.\n    '),
(191, 1, 10, 'MusicArtist', 'music artist', '\n        A person or a group of people (or a computer :-) ), whose musical \n        creative work shows sensitivity and imagination \n    '),
(192, 1, 10, 'MusicGroup', 'music group', 'Group of musicians, or musical ensemble, usually popular or folk, playing parts of or improvising off of a musical arrangement. '),
(193, 1, 10, 'MusicalExpression', 'musical expression', '\nThe intellectual or artistic realization of a work in the form of alpha-numeric, musical, or choreographic notation, sound, etc., or any combination of such forms.    \n\n\nFor example:\n\nWork #1 Franz Schubert\'s Trout quintet\n\n    * Expression #1 the composer\'s score\n    * Expression #2 sound issued from the performance by the Amadeus Quartet and Hephzibah Menuhin on piano\n    * Expression #3 sound issued from the performance by the Cleveland Quartet and Yo-Yo Ma on the cello\n    * . . . . \n\nThe Music Ontology defines the following sub-concepts of a MusicalExpression, which should be used instead of MusicalExpression itself: Score (the\nresult of an arrangement), Sound (produced during a performance), Signal. However, it is possible to stick to FRBR and bypass the worflow\nmechanism this ontology defines by using the core FRBR properties on such objects. But it is often better to use events to interconnect such \nexpressions (allowing to go deeply into the production process - `this performer was playing this particular instrument at that\nparticular time\').\n    \n    '),
(194, 1, 10, 'MusicalItem', 'MusicalItem', 'A single exemplar of a musical expression.\n    \nFor example, it could be a single exemplar of a CD. This is normally an single object (a CD) possessed by somebody.\n\nFrom the FRBR final report: The entity defined as item is a concrete entity. It is in many instances a single physical object (e.g., a copy of a one-volume monograph, a single audio cassette, etc.). There are instances, however, where the entity defined as item comprises more than one physical object (e.g., a monograph issued as two separately bound volumes, a recording issued on three separate compact discs, etc.).\n\nIn terms of intellectual content and physical form, an item exemplifying a manifestation is normally the same as the manifestation itself. However, variations may occur from one item to another, even when the items exemplify the same manifestation, where those variations are the result of actions external to the intent of the producer of the manifestation (e.g., damage occurring after the item was produced, binding performed by a library, etc.). \n    '),
(195, 1, 10, 'MusicalManifestation', 'musical manifestation', '\n\nThis entity is related to the edition/production/publication of a musical expression (musical manifestation are closely related with the music industry (their terms, concepts, definitions, methods (production, publication, etc.), etc.)\n    \nFrom the FRBR final report: The entity defined as manifestation encompasses a wide range of materials, including manuscripts, books, periodicals, maps, posters, sound recordings, films, video recordings, CD-ROMs, multimedia kits, etc. As an entity, manifestation represents all the physical objects that bear the same characteristics, in respect to both intellectual content and physical form.\n\n\nWork #1 J. S. Bach\'s Six suites for unaccompanied cello\n\n    * Expression #1 sound issued during the performance by Janos Starker recorded in 1963 and 1965\n          o Manifestation #1 recordings released on 33 1/3 rpm sound discs in 1965 by Mercury\n          o Manifestation #2 recordings re-released on compact disc in 1991 by Mercury \n    * Expression #2 sound issued during the performances by Yo-Yo Ma recorded in 1983\n          o Manifestation #1 recordings released on 33 1/3 rpm sound discs in 1983 by CBS Records\n          o Manifestation #2 recordings re-released on compact disc in 1992 by CBS Records \n\n          \nChanges that occur deliberately or even inadvertently in the production process that affect the copies result, strictly speaking, in a new manifestation. A manifestation resulting from such a change may be identified as a particular \"state\" or \"issue\" of the publication.\n\nChanges that occur to an individual copy after the production process is complete (e.g., the loss of a page, rebinding, etc.) are not considered to result in a new manifestation. That copy is simply considered to be an exemplar (or item) of the manifestation that deviates from the copy as produced.\n\nWith the entity defined as manifestation we can describe the physical characteristics of a set of items and the characteristics associated with the production and distribution of that set of items that may be important factors in enabling users to choose a manifestation appropriate to their physical needs and constraints, and to identify and acquire a copy of that manifestation.\n\nDefining manifestation as an entity also enables us to draw relationships between specific manifestations of a work. We can use the relationships between manifestations to identify, for example, the specific publication that was used to create a microreproduction.          \n\n'),
(196, 1, 10, 'MusicalWork', 'musical work', '\n    Distinct intellectual or artistic musical creation.\n    \nFrom the FRBR final report: A work is an abstract entity; there is no single material object one can point to as the work. We recognize the work through individual realizations or expressions of the work, but the work itself exists only in the commonality of\ncontent between and among the various expressions of the work. When we speak of Homer\'s Iliad as a work, our point of reference is not a particular recitation or text of the work, but the intellectual creation that lies behind all the various expressions of the work.     \n\nFor example:\n\nwork #1 J. S. Bach\'s The art of the fugue\n\n    \n    '),
(197, 1, 10, 'Orchestration', 'orchestration', '\n            Orchestration includes, in addition to instrumentation, the handling of groups of instruments and their balance and interaction.\n    '),
(198, 1, 10, 'Performance', 'performance', '\n        A performance event. \n        It might include as agents performers, engineers, conductors, or even listeners.\n        It might include as factors a score, a MusicalWork, musical instruments. \n        It might produce a sound:-)\n    '),
(199, 1, 10, 'Performer', 'performer', NULL),
(200, 1, 10, 'PublishedLibretto', 'published libretto', 'A published libretto'),
(201, 1, 10, 'PublishedLyrics', 'published lyrics', 'Published lyrics, as a book or as a text file, for example'),
(202, 1, 10, 'PublishedScore', 'published score', 'A published score (subclass of MusicalManifestation)'),
(203, 1, 10, 'Record', 'record', 'A published record (manifestation which first aim is to render the product of a recording)'),
(204, 1, 10, 'Recording', 'recording', '\n        A recording event.\n        Takes a sound as a factor to produce a signal (analog or digital).\n        The location of such events (if any) is the actual location of the corresponding\n        microphone or the \"recording device\".\n    '),
(205, 1, 10, 'RecordingSession', 'recording session', 'A set of performances/recordings/mastering events. This event can be decomposed in its constituent events using event:sub_event'),
(206, 1, 10, 'Release', 'release', 'A specific release, with barcode, box, liner notes, cover art, and a number of records'),
(207, 1, 10, 'ReleaseEvent', 'release event', 'A release event, in a particular place (e.g. a country) at a particular time. Other factors of this event might include cover art, liner notes, box, etc. or a release grouping all these.'),
(208, 1, 10, 'ReleaseStatus', 'release status', 'Musical manifestation release status.'),
(209, 1, 10, 'ReleaseType', 'Release type', '\n        Release type of a particular manifestation, such as \"album\" or \"interview\"...\n    '),
(210, 1, 10, 'SACD', 'SACD', 'Super Audio Compact Disc used as medium to record a musical manifestation.'),
(211, 1, 10, 'Score', 'score', '\n        Here, we are dealing with the informational object (the MusicalExpression), not the actually \"published\" score.\n        This may be, for example, the product of an arrangement process.\n    '),
(212, 1, 10, 'Show', 'Show', '\n        A show - a musical event lasting several days, in a particular venue. Examples can be\n        \"The Magic Flute\" at the Opera Bastille, August 2005, or a musical in the west end...\n    '),
(213, 1, 10, 'Signal', 'signal', '\n        A subclass of MusicalExpression, representing a signal, for example a master signal produced by a performance and a recording.\n    '),
(214, 1, 10, 'SignalGroup', 'signal group', '\n        A musical expression representing a group of signals, for example a set of masters resulting from a whole recording/mastering session.\n    '),
(215, 1, 10, 'SoloMusicArtist', 'solo music artist', 'Single person whose musical creative work shows sensitivity and imagination.'),
(216, 1, 10, 'Sound', 'sound', '\n        A subclass of MusicalExpression, representing a sound. Realisation of a MusicalWork during a musical Performance.\n    '),
(217, 1, 10, 'SoundEngineer', 'sound engineer', NULL),
(218, 1, 10, 'Stream', 'Stream', 'Transmission over a network  used as medium to broadcast a musical manifestation'),
(219, 1, 10, 'Torrent', 'Torrent', 'Something available on the Bittorrent peer-2-peer filesharing network'),
(220, 1, 10, 'Track', 'track', 'A track on a particular record'),
(221, 1, 10, 'Transcription', 'transcription', 'Transcription event'),
(222, 1, 10, 'Vinyl', 'Vinyl', 'Vinyl used as medium to record a musical manifestation'),
(223, 1, 12, 'Mention', 'Mention', NULL),
(224, 1, 12, 'Parcours', 'Parcours', NULL),
(225, 1, 12, 'UE', 'Unité d\'enseignement', NULL),
(226, 1, 12, 'EC', 'Élément constitutif', NULL),
(227, 1, 12, 'Intervention', 'Intervention', NULL);

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
  `label` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource'),
(2, 1, 94, NULL, NULL, 'Etudiant'),
(3, 1, 107, NULL, NULL, 'Cours'),
(4, 1, 109, NULL, NULL, 'Annotation');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template_property`
--

CREATE TABLE `resource_template_property` (
  `id` int(11) NOT NULL,
  `resource_template_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `alternate_label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `data_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(23, 2, 131, NULL, NULL, 3, NULL, 0, 0),
(24, 2, 139, NULL, NULL, 4, NULL, 0, 0),
(25, 2, 145, NULL, NULL, 5, NULL, 0, 0),
(26, 2, 182, NULL, NULL, 6, NULL, 0, 0),
(27, 3, 1, NULL, NULL, 1, NULL, 0, 0),
(28, 3, 4, NULL, NULL, 3, NULL, 0, 0),
(29, 3, 161, NULL, NULL, 4, NULL, 0, 0),
(30, 3, 3, NULL, NULL, 5, NULL, 0, 0),
(31, 3, 46, NULL, NULL, 6, NULL, 0, 0),
(33, 4, 319, 'Motivated by', NULL, 1, 'customvocab:4', 0, 0),
(34, 4, 337, 'Value', 'May be used for body textual content and/or json/xml/svg, etc. target selector.', 2, NULL, 0, 0),
(35, 4, 312, 'Has purpose', NULL, 3, 'customvocab:1', 0, 0),
(36, 4, 12, NULL, 'Language of the textual body.', 4, NULL, 0, 0),
(37, 4, 315, 'Has source', NULL, 5, 'resource', 0, 0),
(38, 4, 333, 'Rdf type', 'The type of the selector, if any.', 6, 'customvocab:3', 0, 0),
(39, 4, 9, NULL, 'The format of the selector, if any', 7, 'customvocab:2', 0, 0),
(40, 3, 6, NULL, NULL, 2, 'resource:item', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longblob NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('6s5t6hrgdc4bir9df0jcl00g1v', 0x5f5f5a467c613a393a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373130313836352e3538393437373b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2234727674683373717573366a71367466346967726f6b32323268223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538363935393633353b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373130353436373b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373034383936383b7d733a31313a2245617379496e7374616c6c223b613a323a7b733a363a22455850495245223b693a313538373031353738363b733a31313a224558504952455f484f5053223b613a323a7b733a343a22686f7073223b693a363b733a323a227473223b643a313538373031323230352e3836363434323b7d7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373032383939393b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373033333139383b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373032383937343b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226439303233616439366262653634323730303661383062396164303130333566223b733a33323a223839323962393832353566303764613066303162313739366234353739313362223b7d733a343a2268617368223b733a36353a2238393239623938323535663037646130663031623137393662343537393133622d6439303233616439366262653634323730303661383062396164303130333566223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223437643533666435303632646162386131663238623935363139343835343463223b733a33323a223833663564346232376161306539663164616333383739356335623939326361223b733a33323a223636333534306632346663326637616430323438363136326636343232653739223b733a33323a226133373834623464616530386535656430333536336562653735353939383732223b7d733a343a2268617368223b733a36353a2261333738346234646165303865356564303335363365626537353539393837322d3636333534306632346663326637616430323438363136326636343232653739223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226632636332333739316430623434306163323462646235656431303463393439223b733a33323a223137323236333461623966663665343563353835376165653536383366623536223b7d733a343a2268617368223b733a36353a2231373232363334616239666636653435633538353761656535363833666235362d6632636332333739316430623434306163323462646235656431303463393439223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d45617379496e7374616c6c7c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a36373535343a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a363a226164646f6e73223b613a343a7b733a31313a226f6d656b616d6f64756c65223b613a303a7b7d733a31303a226f6d656b617468656d65223b613a303a7b7d733a363a226d6f64756c65223b613a3135313a7b733a35383a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4163636573735265736f75726365223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31353a22416363657373205265736f75726365223b733a383a22626173656e616d65223b733a32393a224f6d656b612d532d6d6f64756c652d4163636573735265736f75726365223b733a333a22646972223b733a31343a224163636573735265736f75726365223b733a373a2276657273696f6e223b733a353a22332e302e34223b733a333a227a6970223b733a3130373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4163636573735265736f757263652f72656c65617365732f646f776e6c6f61642f332e302e342f4163636573735265736f757263652d332e302e342e7a6970223b733a31323a22646570656e64656e63696573223b613a313a7b693a303b733a353a224775657374223b7d7d733a36323a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d416476616e636564536561726368506c7573223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a32303a22416476616e6365642053656172636820506c7573223b733a383a22626173656e616d65223b733a33333a224f6d656b612d532d6d6f64756c652d416476616e636564536561726368506c7573223b733a333a22646972223b733a31383a22416476616e636564536561726368506c7573223b733a373a2276657273696f6e223b733a353a22332e302e34223b733a333a227a6970223b733a3131353a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d416476616e636564536561726368506c75732f72656c65617365732f646f776e6c6f61642f332e302e342f416476616e636564536561726368506c75732d332e302e342e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a33373a2268747470733a2f2f6769746875622e636f6d2f7a65726f6372617465732f416c7454657874223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a383a22416c742054657874223b733a383a22626173656e616d65223b733a373a22416c7454657874223b733a333a22646972223b733a373a22416c7454657874223b733a373a2276657273696f6e223b733a353a22312e312e30223b733a333a227a6970223b733a38303a2268747470733a2f2f6769746875622e636f6d2f7a65726f6372617465732f416c74546578742f72656c65617365732f646f776e6c6f61642f76312e312e302f416c74546578742d312e312e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a37323a2268747470733a2f2f6769746875622e636f6d2f48424c4c2d436f6c6c656374696f6e2d446576656c6f706d656e742f6f6d656b612d732d616d617a6f6e2d73332d73746f72616765223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31373a22416d617a6f6e2053332053746f72616765223b733a383a22626173656e616d65223b733a32353a226f6d656b612d732d616d617a6f6e2d73332d73746f72616765223b733a333a22646972223b733a31353a22416d617a6f6e533353746f72616765223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a3131373a2268747470733a2f2f6769746875622e636f6d2f48424c4c2d436f6c6c656374696f6e2d446576656c6f706d656e742f6f6d656b612d732d616d617a6f6e2d73332d73746f726167652f72656c65617365732f646f776e6c6f61642f76312e302e302f416d617a6f6e533353746f726167652e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35323a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d416d617a6f6e5333223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a393a22416d617a6f6e205333223b733a383a22626173656e616d65223b733a32333a224f6d656b612d532d6d6f64756c652d416d617a6f6e5333223b733a333a22646972223b733a383a22416d617a6f6e5333223b733a373a2276657273696f6e223b733a353a22332e302e32223b733a333a227a6970223b733a39353a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d416d617a6f6e53332f72656c65617365732f646f776e6c6f61642f332e302e322f416d617a6f6e53332d332e302e322e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36353a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d416e616c7974696373536e6970706574506977696b223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a33343a22416e616c797469637320536e6970706574202d20506977696b202f204d61746f6d6f223b733a383a22626173656e616d65223b733a33363a224f6d656b612d532d6d6f64756c652d416e616c7974696373536e6970706574506977696b223b733a333a22646972223b733a32373a22416e616c7974696373536e6970706574506977696b4d61746f6d6f223b733a373a2276657273696f6e223b733a353a22332e302e33223b733a333a227a6970223b733a3132313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d416e616c7974696373536e6970706574506977696b2f72656c65617365732f646f776e6c6f61642f332e302e332f416e616c7974696373536e6970706574506977696b2d332e302e332e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36303a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d416e616c7974696373536e6970706574223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31373a22416e616c797469637320536e6970706574223b733a383a22626173656e616d65223b733a33313a224f6d656b612d532d6d6f64756c652d416e616c7974696373536e6970706574223b733a333a22646972223b733a31363a22416e616c7974696373536e6970706574223b733a373a2276657273696f6e223b733a353a22332e302e33223b733a333a227a6970223b733a3131313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d416e616c7974696373536e69707065742f72656c65617365732f646f776e6c6f61642f332e302e332f416e616c7974696373536e69707065742d332e302e332e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35323a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d416e6e6f74617465223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a383a22416e6e6f74617465223b733a383a22626173656e616d65223b733a32333a224f6d656b612d532d6d6f64756c652d416e6e6f74617465223b733a333a22646972223b733a383a22416e6e6f74617465223b733a373a2276657273696f6e223b733a373a22332e312e332e31223b733a333a227a6970223b733a39393a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d416e6e6f746174652f72656c65617365732f646f776e6c6f61642f332e312e332e312f416e6e6f746174652d332e312e332e312e7a6970223b733a31323a22646570656e64656e63696573223b613a313a7b693a303b733a31313a22437573746f6d566f636162223b7d7d733a35353a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d436172746f677261706879223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a33383a22416e6e6f7461746520696d6167657320616e64206d6170732028436172746f67726170687929223b733a383a22626173656e616d65223b733a32363a224f6d656b612d532d6d6f64756c652d436172746f677261706879223b733a333a22646972223b733a33323a22416e6e6f74617465696d61676573616e646d617073436172746f677261706879223b733a373a2276657273696f6e223b733a353a22332e312e33223b733a333a227a6970223b733a3130313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d436172746f6772617068792f72656c65617365732f646f776e6c6f61642f332e312e332f436172746f6772617068792d332e312e332e7a6970223b733a31323a22646570656e64656e63696573223b613a323a7b693a303b733a383a22416e6e6f74617465223b693a313b733a31363a22446174615479706547656f6d65747279223b7d7d733a36343a2268747470733a2f2f6769746875622e636f6d2f48424c4c2d436f6c6c656374696f6e2d446576656c6f706d656e742f6f6d656b612d732d616e792d636c6f7564223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a393a22416e7920436c6f7564223b733a383a22626173656e616d65223b733a31373a226f6d656b612d732d616e792d636c6f7564223b733a333a22646972223b733a383a22416e79436c6f7564223b733a373a2276657273696f6e223b733a353a22312e312e34223b733a333a227a6970223b733a3130383a2268747470733a2f2f6769746875622e636f6d2f48424c4c2d436f6c6c656374696f6e2d446576656c6f706d656e742f6f6d656b612d732d616e792d636c6f75642f72656c65617365732f646f776e6c6f61642f76312e312e342f416e79436c6f756476312e312e342e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d417069496e666f223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a383a2241706920496e666f223b733a383a22626173656e616d65223b733a32323a224f6d656b612d532d6d6f64756c652d417069496e666f223b733a333a22646972223b733a373a22417069496e666f223b733a373a2276657273696f6e223b733a353a22332e302e38223b733a333a227a6970223b733a39333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d417069496e666f2f72656c65617365732f646f776e6c6f61642f332e302e382f417069496e666f2d332e302e382e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35363a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d41726368697665466f6c646572223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31343a224172636869766520466f6c646572223b733a383a22626173656e616d65223b733a32383a226f6d656b612d732d6d6f64756c652d41726368697665466f6c646572223b733a333a22646972223b733a31333a2241726368697665466f6c646572223b733a373a2276657273696f6e223b733a333a22322e34223b733a333a227a6970223b733a37353a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d41726368697665466f6c6465722f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36303a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d417263686976655265706572746f7279223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31373a2241726368697665205265706572746f7279223b733a383a22626173656e616d65223b733a33313a224f6d656b612d532d6d6f64756c652d417263686976655265706572746f7279223b733a333a22646972223b733a31363a22417263686976655265706572746f7279223b733a373a2276657273696f6e223b733a363a22332e31352e39223b733a333a227a6970223b733a3131333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d417263686976655265706572746f72792f72656c65617365732f646f776e6c6f61642f332e31352e392f417263686976655265706572746f72792d332e31352e392e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34363a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d41726b223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a333a2241726b223b733a383a22626173656e616d65223b733a31383a226f6d656b612d732d6d6f64756c652d41726b223b733a333a22646972223b733a333a2241726b223b733a373a2276657273696f6e223b733a353a22302e312e31223b733a333a227a6970223b733a36353a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d41726b2f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34323a2268747470733a2f2f6769746875622e636f6d2f7363686f6c6172736c61622f42616e6e6572496d616765223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31323a2242616e6e657220496d616765223b733a383a22626173656e616d65223b733a31313a2242616e6e6572496d616765223b733a333a22646972223b733a31313a2242616e6e6572496d616765223b733a373a2276657273696f6e223b733a333a22312e30223b733a333a227a6970223b733a36313a2268747470733a2f2f6769746875622e636f6d2f7363686f6c6172736c61622f42616e6e6572496d6167652f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34353a2268747470733a2f2f6769746875622e636f6d2f706f6c7331322f6f6d656b612d732d6d6f64756c652d42617365223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a343a2242617365223b733a383a22626173656e616d65223b733a31393a226f6d656b612d732d6d6f64756c652d42617365223b733a333a22646972223b733a343a2242617365223b733a373a2276657273696f6e223b733a353a22302e312e30223b733a333a227a6970223b733a36343a2268747470733a2f2f6769746875622e636f6d2f706f6c7331322f6f6d656b612d732d6d6f64756c652d426173652f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34393a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d4261736b6574223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a363a224261736b6574223b733a383a22626173656e616d65223b733a32313a226f6d656b612d732d6d6f64756c652d4261736b6574223b733a333a22646972223b733a363a224261736b6574223b733a373a2276657273696f6e223b733a353a22302e322e30223b733a333a227a6970223b733a36383a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d4261736b65742f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35363a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4269626c696f677261706879223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31323a224269626c696f677261706879223b733a383a22626173656e616d65223b733a32373a224f6d656b612d532d6d6f64756c652d4269626c696f677261706879223b733a333a22646972223b733a31323a224269626c696f677261706879223b733a373a2276657273696f6e223b733a353a22332e312e33223b733a333a227a6970223b733a3130333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4269626c696f6772617068792f72656c65617365732f646f776e6c6f61642f332e312e332f4269626c696f6772617068792d332e312e332e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d426c6f636b506c7573223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31303a22426c6f636b20506c7573223b733a383a22626173656e616d65223b733a32343a224f6d656b612d532d6d6f64756c652d426c6f636b506c7573223b733a333a22646972223b733a393a22426c6f636b506c7573223b733a373a2276657273696f6e223b733a353a22332e302e39223b733a333a227a6970223b733a39373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d426c6f636b506c75732f72656c65617365732f646f776e6c6f61642f332e302e392f426c6f636b506c75732d332e302e392e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d426c6f636b73446973706f736974696f6e223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31383a22426c6f636b7320446973706f736974696f6e223b733a383a22626173656e616d65223b733a33323a224f6d656b612d532d6d6f64756c652d426c6f636b73446973706f736974696f6e223b733a333a22646972223b733a31373a22426c6f636b73446973706f736974696f6e223b733a373a2276657273696f6e223b733a353a22332e322e31223b733a333a227a6970223b733a3131333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d426c6f636b73446973706f736974696f6e2f72656c65617365732f646f776e6c6f61642f332e322e312f426c6f636b73446973706f736974696f6e2d332e322e312e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d42756c6b436865636b223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31303a2242756c6b20436865636b223b733a383a22626173656e616d65223b733a32343a224f6d656b612d532d6d6f64756c652d42756c6b436865636b223b733a333a22646972223b733a393a2242756c6b436865636b223b733a373a2276657273696f6e223b733a353a22332e302e38223b733a333a227a6970223b733a39373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d42756c6b436865636b2f72656c65617365732f646f776e6c6f61642f332e302e382f42756c6b436865636b2d332e302e382e7a6970223b733a31323a22646570656e64656e63696573223b613a313a7b693a303b733a333a224c6f67223b7d7d733a35323a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d42756c6b45646974223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a393a2242756c6b2045646974223b733a383a22626173656e616d65223b733a32333a224f6d656b612d532d6d6f64756c652d42756c6b45646974223b733a333a22646972223b733a383a2242756c6b45646974223b733a373a2276657273696f6e223b733a363a22332e302e3130223b733a333a227a6970223b733a39373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d42756c6b456469742f72656c65617365732f646f776e6c6f61642f332e302e31302f42756c6b456469742d332e302e31302e7a6970223b733a31323a22646570656e64656e63696573223b613a313a7b693a303b733a373a2247656e65726963223b7d7d733a35343a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d42756c6b4578706f7274223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31313a2242756c6b204578706f7274223b733a383a22626173656e616d65223b733a32353a224f6d656b612d532d6d6f64756c652d42756c6b4578706f7274223b733a333a22646972223b733a31303a2242756c6b4578706f7274223b733a373a2276657273696f6e223b733a373a22332e302e392e31223b733a333a227a6970223b733a3130333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d42756c6b4578706f72742f72656c65617365732f646f776e6c6f61642f332e302e392e312f42756c6b4578706f72742d332e302e392e312e7a6970223b733a31323a22646570656e64656e63696573223b613a313a7b693a303b733a333a224c6f67223b7d7d733a35393a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d42756c6b496d706f727446696c6573223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31373a2242756c6b20496d706f72742046696c6573223b733a383a22626173656e616d65223b733a33303a224f6d656b612d532d6d6f64756c652d42756c6b496d706f727446696c6573223b733a333a22646972223b733a31353a2242756c6b496d706f727446696c6573223b733a373a2276657273696f6e223b733a373a22332e302e362e31223b733a333a227a6970223b733a3131333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d42756c6b496d706f727446696c65732f72656c65617365732f646f776e6c6f61642f332e302e362e312f42756c6b496d706f727446696c65732d332e302e362e312e7a6970223b733a31323a22646570656e64656e63696573223b613a313a7b693a303b733a31303a2242756c6b496d706f7274223b7d7d733a35343a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d42756c6b496d706f7274223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31313a2242756c6b20496d706f7274223b733a383a22626173656e616d65223b733a32353a224f6d656b612d532d6d6f64756c652d42756c6b496d706f7274223b733a333a22646972223b733a31303a2242756c6b496d706f7274223b733a373a2276657273696f6e223b733a363a22332e302e3136223b733a333a227a6970223b733a3130313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d42756c6b496d706f72742f72656c65617365732f646f776e6c6f61642f332e302e31362f42756c6b496d706f72742d332e302e31362e7a6970223b733a31323a22646570656e64656e63696573223b613a313a7b693a303b733a333a224c6f67223b7d7d733a35323a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d436c65616e55726c223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a393a22436c65616e2055726c223b733a383a22626173656e616d65223b733a32333a224f6d656b612d532d6d6f64756c652d436c65616e55726c223b733a333a22646972223b733a383a22436c65616e55726c223b733a373a2276657273696f6e223b733a373a22332e31352e3133223b733a333a227a6970223b733a39393a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d436c65616e55726c2f72656c65617365732f646f776e6c6f61642f332e31352e31332f436c65616e55726c2d332e31352e31332e7a6970223b733a31323a22646570656e64656e63696573223b613a313a7b693a303b733a373a2247656e65726963223b7d7d733a34383a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d436f696e73223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a353a22434f696e53223b733a383a22626173656e616d65223b733a32303a226f6d656b612d732d6d6f64756c652d436f696e73223b733a333a22646972223b733a353a22434f696e53223b733a373a2276657273696f6e223b733a353a22322e302e33223b733a333a227a6970223b733a36373a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d436f696e732f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34353a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f436f6c6c656374696e67223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31303a22436f6c6c656374696e67223b733a383a22626173656e616d65223b733a31303a22436f6c6c656374696e67223b733a333a22646972223b733a31303a22436f6c6c656374696e67223b733a373a2276657273696f6e223b733a353a22312e332e30223b733a333a227a6970223b733a39313a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f436f6c6c656374696e672f72656c65617365732f646f776e6c6f61642f76312e332e302f436f6c6c656374696e672d312e332e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34383a2268747470733a2f2f6769746875622e636f6d2f477574616c616c612f4f6d656b61532d436f6c756d6e732d4d616b6572223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31323a22436f6c756d6e204d616b6572223b733a383a22626173656e616d65223b733a32303a224f6d656b61532d436f6c756d6e732d4d616b6572223b733a333a22646972223b733a31313a22436f6c756d6e4d616b6572223b733a373a2276657273696f6e223b733a353a22302e302e31223b733a333a227a6970223b733a36373a2268747470733a2f2f6769746875622e636f6d2f477574616c616c612f4f6d656b61532d436f6c756d6e732d4d616b65722f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d436f6d6d656e74223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a373a22436f6d6d656e74223b733a383a22626173656e616d65223b733a32323a224f6d656b612d532d6d6f64756c652d436f6d6d656e74223b733a333a22646972223b733a373a22436f6d6d656e74223b733a373a2276657273696f6e223b733a363a22332e312e3132223b733a333a227a6970223b733a39353a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d436f6d6d656e742f72656c65617365732f646f776e6c6f61642f332e312e31322f436f6d6d656e742d332e312e31322e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36313a2268747470733a2f2f6769746875622e636f6d2f636f726579746567656c65722f6f6d656b612d732d6d6f64756c652d436f6e6e65637465645369746573223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31353a22436f6e6e6563746564205369746573223b733a383a22626173656e616d65223b733a32393a226f6d656b612d732d6d6f64756c652d436f6e6e65637465645369746573223b733a333a22646972223b733a31343a22436f6e6e65637465645369746573223b733a373a2276657273696f6e223b733a333a22312e30223b733a333a227a6970223b733a38303a2268747470733a2f2f6769746875622e636f6d2f636f726579746567656c65722f6f6d656b612d732d6d6f64756c652d436f6e6e656374656453697465732f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d436f6e746163745573223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a32313a22436f6e7461637420757320616e64207265706f7274223b733a383a22626173656e616d65223b733a32343a224f6d656b612d532d6d6f64756c652d436f6e746163745573223b733a333a22646972223b733a31383a22436f6e746163747573616e647265706f7274223b733a373a2276657273696f6e223b733a353a22332e302e38223b733a333a227a6970223b733a39373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d436f6e7461637455732f72656c65617365732f646f776e6c6f61642f332e302e382f436f6e7461637455732d332e302e382e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35343a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d436f7272656374696f6e223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31303a22436f7272656374696f6e223b733a383a22626173656e616d65223b733a32353a224f6d656b612d532d6d6f64756c652d436f7272656374696f6e223b733a333a22646972223b733a31303a22436f7272656374696f6e223b733a373a2276657273696f6e223b733a363a22332e302e3130223b733a333a227a6970223b733a3130313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d436f7272656374696f6e2f72656c65617365732f646f776e6c6f61642f332e302e31302f436f7272656374696f6e2d332e302e31302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35323a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d435353456469746f72223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31303a2243535320456469746f72223b733a383a22626173656e616d65223b733a32343a226f6d656b612d732d6d6f64756c652d435353456469746f72223b733a333a22646972223b733a393a22435353456469746f72223b733a373a2276657273696f6e223b733a353a22312e302e31223b733a333a227a6970223b733a37313a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d435353456469746f722f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35333a2268747470733a2f2f6769746875622e636f6d2f64616e69656c2d6b6d2f6f6d656b612d732d6d6f64756c652d435353456469746f72223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31303a2243535320456469746f72223b733a383a22626173656e616d65223b733a32343a226f6d656b612d732d6d6f64756c652d435353456469746f72223b733a333a22646972223b733a393a22435353456469746f72223b733a373a2276657273696f6e223b733a353a22332e302e32223b733a333a227a6970223b733a39373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d435353456469746f722f72656c65617365732f646f776e6c6f61642f332e302e322f435353456469746f722d332e302e322e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34343a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f435353456469746f72223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a393a22435353456469746f72223b733a383a22626173656e616d65223b733a393a22435353456469746f72223b733a333a22646972223b733a393a22435353456469746f72223b733a373a2276657273696f6e223b733a353a22312e302e31223b733a333a227a6970223b733a38363a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f435353456469746f722f72656c65617365732f646f776e6c6f61642f76312e312f435353456469746f722d76312e312e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34343a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f435356496d706f7274223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31303a2243535620496d706f7274223b733a383a22626173656e616d65223b733a393a22435356496d706f7274223b733a333a22646972223b733a393a22435356496d706f7274223b733a373a2276657273696f6e223b733a353a22322e312e31223b733a333a227a6970223b733a38393a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f435356496d706f72742f72656c65617365732f646f776e6c6f61642f76322e312e312f435356496d706f72742d322e312e312e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35353a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f437573746f6d416476616e636564536561726368223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a32323a22437573746f6d20416476616e63656420536561726368223b733a383a22626173656e616d65223b733a32303a22437573746f6d416476616e636564536561726368223b733a333a22646972223b733a32303a22437573746f6d416476616e636564536561726368223b733a373a2276657273696f6e223b733a353a22302e302e31223b733a333a227a6970223b733a37343a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f437573746f6d416476616e6365645365617263682f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35383a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d437573746f6d4f6e746f6c6f6779223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31353a22437573746f6d204f6e746f6c6f6779223b733a383a22626173656e616d65223b733a32393a224f6d656b612d532d6d6f64756c652d437573746f6d4f6e746f6c6f6779223b733a333a22646972223b733a31343a22437573746f6d4f6e746f6c6f6779223b733a373a2276657273696f6e223b733a353a22332e302e35223b733a333a227a6970223b733a3130373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d437573746f6d4f6e746f6c6f67792f72656c65617365732f646f776e6c6f61642f332e302e352f437573746f6d4f6e746f6c6f67792d332e302e352e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34363a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f437573746f6d566f636162223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31323a22437573746f6d20566f636162223b733a383a22626173656e616d65223b733a31313a22437573746f6d566f636162223b733a333a22646972223b733a31313a22437573746f6d566f636162223b733a373a2276657273696f6e223b733a353a22312e322e30223b733a333a227a6970223b733a39333a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f437573746f6d566f6361622f72656c65617365732f646f776e6c6f61642f76312e322e302f437573746f6d566f6361622d312e322e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34313a2268747470733a2f2f6769746875622e636f6d2f63686e6d2f446174617363726962652d6d6f64756c65223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31303a2244617461536372696265223b733a383a22626173656e616d65223b733a31373a22446174617363726962652d6d6f64756c65223b733a333a22646972223b733a31303a2244617461536372696265223b733a373a2276657273696f6e223b733a353a22302e312e30223b733a333a227a6970223b733a36303a2268747470733a2f2f6769746875622e636f6d2f63686e6d2f446174617363726962652d6d6f64756c652f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36353a2268747470733a2f2f6769746875622e636f6d2f4c696d6f6e616465616e64636f73636f702f6f6d656b612d732d6d6f64756c652d4461746154797065436c617373223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31333a224461746154797065436c617373223b733a383a22626173656e616d65223b733a32383a226f6d656b612d732d6d6f64756c652d4461746154797065436c617373223b733a333a22646972223b733a31333a224461746154797065436c617373223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a38343a2268747470733a2f2f6769746875622e636f6d2f4c696d6f6e616465616e64636f73636f702f6f6d656b612d732d6d6f64756c652d4461746154797065436c6173732f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36303a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d446174615479706547656f6d65747279223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31383a224461746120547970652047656f6d65747279223b733a383a22626173656e616d65223b733a33313a224f6d656b612d532d6d6f64756c652d446174615479706547656f6d65747279223b733a333a22646972223b733a31363a22446174615479706547656f6d65747279223b733a373a2276657273696f6e223b733a353a22332e312e35223b733a333a227a6970223b733a3131313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d446174615479706547656f6d657472792f72656c65617365732f646f776e6c6f61642f332e312e352f446174615479706547656f6d657472792d332e312e352e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36303a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d44657269766174697665496d61676573223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31373a224465726976617469766520496d61676573223b733a383a22626173656e616d65223b733a33313a224f6d656b612d532d6d6f64756c652d44657269766174697665496d61676573223b733a333a22646972223b733a31363a2244657269766174697665496d61676573223b733a373a2276657273696f6e223b733a353a22332e302e37223b733a333a227a6970223b733a3131313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d44657269766174697665496d616765732f72656c65617365732f646f776e6c6f61642f332e302e372f44657269766174697665496d616765732d332e302e372e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34383a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d732d6d6f64756c652d44697661223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31363a2244697661204949494620566965776572223b733a383a22626173656e616d65223b733a31393a224f6d656b612d732d6d6f64756c652d44697661223b733a333a22646972223b733a31343a224469766149494946566965776572223b733a373a2276657273696f6e223b733a353a22332e312e32223b733a333a227a6970223b733a38373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d732d6d6f64756c652d446976612f72656c65617365732f646f776e6c6f61642f332e312e322f446976612d332e312e322e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34323a2268747470733a2f2f6769746875622e636f6d2f686166697a6368696e2f446f6d61696e4d616e61676572223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31343a22446f6d61696e204d616e61676572223b733a383a22626173656e616d65223b733a31333a22446f6d61696e4d616e61676572223b733a333a22646972223b733a31333a22446f6d61696e4d616e61676572223b733a373a2276657273696f6e223b733a333a22312e32223b733a333a227a6970223b733a36313a2268747470733a2f2f6769746875622e636f6d2f686166697a6368696e2f446f6d61696e4d616e616765722f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34353a2268747470733a2f2f6769746875622e636f6d2f63686e6d2f727263686e6d2d646f6e6174652d6f6d656b612d73223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31363a22446f6e61746520746f20525243484e4d223b733a383a22626173656e616d65223b733a32313a22727263686e6d2d646f6e6174652d6f6d656b612d73223b733a333a22646972223b733a31343a22446f6e617465746f525243484e4d223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a36343a2268747470733a2f2f6769746875622e636f6d2f63686e6d2f727263686e6d2d646f6e6174652d6f6d656b612d732f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35303a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f447370616365436f6e6e6563746f72223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31363a2244737061636520436f6e6e6563746f72223b733a383a22626173656e616d65223b733a31353a22447370616365436f6e6e6563746f72223b733a333a22646972223b733a31353a22447370616365436f6e6e6563746f72223b733a373a2276657273696f6e223b733a353a22312e312e30223b733a333a227a6970223b733a3130313a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f447370616365436f6e6e6563746f722f72656c65617365732f646f776e6c6f61642f76312e312e302f447370616365436f6e6e6563746f722d312e312e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d456164223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a333a22454144223b733a383a22626173656e616d65223b733a31383a224f6d656b612d532d6d6f64756c652d456164223b733a333a22646972223b733a333a22454144223b733a373a2276657273696f6e223b733a353a22332e302e34223b733a333a227a6970223b733a38353a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4561642f72656c65617365732f646f776e6c6f61642f332e302e342f4561642d332e302e342e7a6970223b733a31323a22646570656e64656e63696573223b613a313a7b693a303b733a31303a2242756c6b496d706f7274223b7d7d733a35353a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d45617379496e7374616c6c223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31323a224561737920496e7374616c6c223b733a383a22626173656e616d65223b733a32363a224f6d656b612d532d6d6f64756c652d45617379496e7374616c6c223b733a333a22646972223b733a31313a2245617379496e7374616c6c223b733a373a2276657273696f6e223b733a353a22332e322e35223b733a333a227a6970223b733a3130313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d45617379496e7374616c6c2f72656c65617365732f646f776e6c6f61642f332e322e352f45617379496e7374616c6c2d332e322e352e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34393a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d45626f6f6b223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31333a2265426f6f6b2043726561746f72223b733a383a22626173656e616d65223b733a32303a224f6d656b612d532d6d6f64756c652d45626f6f6b223b733a333a22646972223b733a31323a2265426f6f6b43726561746f72223b733a373a2276657273696f6e223b733a353a22332e302e39223b733a333a227a6970223b733a38393a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d45626f6f6b2f72656c65617365732f646f776e6c6f61642f332e302e392f45626f6f6b2d332e302e392e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35343a2268747470733a2f2f6769746875622e636f6d2f706f6c7331322f6f6d656b612d732d6d6f64756c652d456870536561726368466f726d223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31333a22456870536561726368466f726d223b733a383a22626173656e616d65223b733a32383a226f6d656b612d732d6d6f64756c652d456870536561726368466f726d223b733a333a22646972223b733a31333a22456870536561726368466f726d223b733a373a2276657273696f6e223b733a353a22312e332e30223b733a333a227a6970223b733a37333a2268747470733a2f2f6769746875622e636f6d2f706f6c7331322f6f6d656b612d732d6d6f64756c652d456870536561726368466f726d2f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35353a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4555436f6f6b6965426172223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31333a22455520436f6f6b696520426172223b733a383a22626173656e616d65223b733a32363a224f6d656b612d532d6d6f64756c652d4555436f6f6b6965426172223b733a333a22646972223b733a31313a224555436f6f6b6965426172223b733a373a2276657273696f6e223b733a353a22332e302e33223b733a333a227a6970223b733a3130313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4555436f6f6b69654261722f72656c65617365732f646f776e6c6f61642f332e302e332f4555436f6f6b69654261722d332e302e332e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35383a2268747470733a2f2f6769746875622e636f6d2f636f726579746567656c65722f6f6d656b612d732d6d6f64756c652d457868696269744c697374223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31323a2245786869626974204c697374223b733a383a22626173656e616d65223b733a32363a226f6d656b612d732d6d6f64756c652d457868696269744c697374223b733a333a22646972223b733a31313a22457868696269744c697374223b733a373a2276657273696f6e223b733a333a22312e30223b733a333a227a6970223b733a37373a2268747470733a2f2f6769746875622e636f6d2f636f726579746567656c65722f6f6d656b612d732d6d6f64756c652d457868696269744c6973742f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36313a2268747470733a2f2f6769746875622e636f6d2f636f726579746567656c65722f6f6d656b612d732d6d6f64756c652d4578706c6f7261746f72794d6170223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31353a224578706c6f7261746f7279204d6170223b733a383a22626173656e616d65223b733a32393a226f6d656b612d732d6d6f64756c652d4578706c6f7261746f72794d6170223b733a333a22646972223b733a31343a224578706c6f7261746f72794d6170223b733a373a2276657273696f6e223b733a333a22312e30223b733a333a227a6970223b733a38303a2268747470733a2f2f6769746875622e636f6d2f636f726579746567656c65722f6f6d656b612d732d6d6f64756c652d4578706c6f7261746f72794d61702f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36323a2268747470733a2f2f6769746875622e636f6d2f636f726579746567656c65722f6f6d656b612d732d6d6f64756c652d4578706c6f7261746f727954657874223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31363a224578706c6f7261746f72792054657874223b733a383a22626173656e616d65223b733a33303a226f6d656b612d732d6d6f64756c652d4578706c6f7261746f727954657874223b733a333a22646972223b733a31353a224578706c6f7261746f727954657874223b733a373a2276657273696f6e223b733a333a22312e30223b733a333a227a6970223b733a38313a2268747470733a2f2f6769746875622e636f6d2f636f726579746567656c65722f6f6d656b612d732d6d6f64756c652d4578706c6f7261746f7279546578742f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a33353a2268747470733a2f2f6769746875622e636f6d2f6c617572616c6569662f4578706f7274223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a363a224578706f7274223b733a383a22626173656e616d65223b733a363a224578706f7274223b733a333a22646972223b733a363a224578706f7274223b733a373a2276657273696f6e223b733a353a22312e342e30223b733a333a227a6970223b733a37373a2268747470733a2f2f6769746875622e636f6d2f6c617572616c6569662f4578706f72742f72656c65617365732f646f776e6c6f61642f4578706f727476312e342e302f4578706f72742e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35373a2268747470733a2f2f6769746875622e636f6d2f4f6d656b612d45787465726e616c2f457874656e646564536974654465736372697074696f6e223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a32353a22457874656e6465642053697465204465736372697074696f6e223b733a383a22626173656e616d65223b733a32333a22457874656e646564536974654465736372697074696f6e223b733a333a22646972223b733a32333a22457874656e646564536974654465736372697074696f6e223b733a373a2276657273696f6e223b733a353a22302e322e30223b733a333a227a6970223b733a3131363a2268747470733a2f2f6769746875622e636f6d2f4f6d656b612d45787465726e616c2f457874656e646564536974654465736372697074696f6e2f72656c65617365732f646f776e6c6f61642f76302e322e302f457874656e646564536974654465736372697074696f6e2d302e322e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35313a2268747470733a2f2f6769746875622e636f6d2f62756264786d2f4f6d656b612d532d6d6f64756c652d457874726163744f6372223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31313a2245787472616374204f6372223b733a383a22626173656e616d65223b733a32353a224f6d656b612d532d6d6f64756c652d457874726163744f6372223b733a333a22646972223b733a31303a22457874726163744f6372223b733a373a2276657273696f6e223b733a333a22312e30223b733a333a227a6970223b733a39323a2268747470733a2f2f6769746875622e636f6d2f62756264786d2f4f6d656b612d532d6d6f64756c652d457874726163744f63722f72656c65617365732f646f776e6c6f61642f302e312f457874726163744f63722d302e312e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34363a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f4578747261637454657874223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31323a22457874726163742054657874223b733a383a22626173656e616d65223b733a31313a224578747261637454657874223b733a333a22646972223b733a31313a224578747261637454657874223b733a373a2276657273696f6e223b733a353a22312e312e31223b733a333a227a6970223b733a39333a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f45787472616374546578742f72656c65617365732f646f776e6c6f61642f76312e312e312f45787472616374546578742d312e312e312e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35333a2268747470733a2f2f6769746875622e636f6d2f62696c6c7875303532312f4f6d656b612d532d6d6f64756c652d4661766f72697465223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a383a224661766f72697465223b733a383a22626173656e616d65223b733a32333a224f6d656b612d532d6d6f64756c652d4661766f72697465223b733a333a22646972223b733a383a224661766f72697465223b733a373a2276657273696f6e223b733a353a22302e302e31223b733a333a227a6970223b733a37323a2268747470733a2f2f6769746875622e636f6d2f62696c6c7875303532312f4f6d656b612d532d6d6f64756c652d4661766f726974652f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a313a7b693a303b733a353a224775657374223b7d7d733a35303a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f4665646f7261436f6e6e6563746f72223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31363a224665646f726120436f6e6e6563746f72223b733a383a22626173656e616d65223b733a31353a224665646f7261436f6e6e6563746f72223b733a333a22646972223b733a31353a224665646f7261436f6e6e6563746f72223b733a373a2276657273696f6e223b733a353a22312e312e30223b733a333a227a6970223b733a3130313a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f4665646f7261436f6e6e6563746f722f72656c65617365732f646f776e6c6f61642f76312e312e302f4665646f7261436f6e6e6563746f722d312e312e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34383a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d46656564223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31353a224665656420287273732f61746f6d29223b733a383a22626173656e616d65223b733a31393a224f6d656b612d532d6d6f64756c652d46656564223b733a333a22646972223b733a31313a224665656472737361746f6d223b733a373a2276657273696f6e223b733a353a22332e302e32223b733a333a227a6970223b733a38373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d466565642f72656c65617365732f646f776e6c6f61642f332e302e322f466565642d332e302e322e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34373a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f46696c65536964656c6f6164223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31333a2246696c6520536964656c6f6164223b733a383a22626173656e616d65223b733a31323a2246696c65536964656c6f6164223b733a333a22646972223b733a31323a2246696c65536964656c6f6164223b733a373a2276657273696f6e223b733a353a22312e332e30223b733a333a227a6970223b733a39353a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f46696c65536964656c6f61642f72656c65617365732f646f776e6c6f61642f76312e332e302f46696c65536964656c6f61642d312e332e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35343a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d466f6c6b736f6e6f6d79223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31303a22466f6c6b736f6e6f6d79223b733a383a22626173656e616d65223b733a32353a224f6d656b612d532d6d6f64756c652d466f6c6b736f6e6f6d79223b733a333a22646972223b733a31303a22466f6c6b736f6e6f6d79223b733a373a2276657273696f6e223b733a353a22332e332e39223b733a333a227a6970223b733a39393a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d466f6c6b736f6e6f6d792f72656c65617365732f646f776e6c6f61642f332e332e392f466f6c6b736f6e6f6d792d332e332e392e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34393a2268747470733a2f2f6769746875622e636f6d2f73796d61632f4f6d656b612d532d6d6f64756c652d467265655370616365223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a393a22467265655370616365223b733a383a22626173656e616d65223b733a32343a224f6d656b612d532d6d6f64756c652d467265655370616365223b733a333a22646972223b733a393a22467265655370616365223b733a373a2276657273696f6e223b733a333a22312e30223b733a333a227a6970223b733a3130333a2268747470733a2f2f6769746875622e636f6d2f73796d61632f4f6d656b612d532d6d6f64756c652d4672656553706163652f72656c65617365732f646f776e6c6f61642f76312e302f4f6d656b612d4d6f64756c652d4672656553706163652d312e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d47656e65726963223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a373a2247656e65726963223b733a383a22626173656e616d65223b733a32323a224f6d656b612d532d6d6f64756c652d47656e65726963223b733a333a22646972223b733a373a2247656e65726963223b733a373a2276657273696f6e223b733a363a22332e302e3136223b733a333a227a6970223b733a39353a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d47656e657269632f72656c65617365732f646f776e6c6f61642f332e302e31362f47656e657269632d332e302e31362e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36333a2268747470733a2f2f6769746875622e636f6d2f64696769726174692d636f2d756b2f6f6d656b612d676f6f676c652d616e616c79746963732d6d6f64756c65223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31363a22476f6f676c6520416e616c7974696373223b733a383a22626173656e616d65223b733a32393a226f6d656b612d676f6f676c652d616e616c79746963732d6d6f64756c65223b733a333a22646972223b733a31353a22476f6f676c65416e616c7974696373223b733a373a2276657273696f6e223b733a353a22312e302e31223b733a333a227a6970223b733a38323a2268747470733a2f2f6769746875622e636f6d2f64696769726174692d636f2d756b2f6f6d656b612d676f6f676c652d616e616c79746963732d6d6f64756c652f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35313a2268747470733a2f2f6769746875622e636f6d2f4c69626e616d69632f4f6d656b612d532d476f6f676c65416e616c7974696373223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31363a22476f6f676c6520416e616c7974696373223b733a383a22626173656e616d65223b733a32333a224f6d656b612d532d476f6f676c65416e616c7974696373223b733a333a22646972223b733a31353a22476f6f676c65416e616c7974696373223b733a373a2276657273696f6e223b733a353a22312e312e31223b733a333a227a6970223b733a37303a2268747470733a2f2f6769746875622e636f6d2f4c69626e616d69632f4f6d656b612d532d476f6f676c65416e616c79746963732f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35393a2268747470733a2f2f6769746875622e636f6d2f6c69622d756f6775656c70682d63612f4f6d656b612d532d6d6f64756c652d47726f757045646974223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a393a2247726f757045646974223b733a383a22626173656e616d65223b733a32343a224f6d656b612d532d6d6f64756c652d47726f757045646974223b733a333a22646972223b733a393a2247726f757045646974223b733a373a2276657273696f6e223b733a333a22312e30223b733a333a227a6970223b733a37383a2268747470733a2f2f6769746875622e636f6d2f6c69622d756f6775656c70682d63612f4f6d656b612d532d6d6f64756c652d47726f7570456469742f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34393a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d47726f7570223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a353a2247726f7570223b733a383a22626173656e616d65223b733a32303a224f6d656b612d532d6d6f64756c652d47726f7570223b733a333a22646972223b733a353a2247726f7570223b733a373a2276657273696f6e223b733a353a22332e302e34223b733a333a227a6970223b733a38393a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d47726f75702f72656c65617365732f646f776e6c6f61642f332e302e342f47726f75702d332e302e342e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35323a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4775657374417069223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a393a22477565737420417069223b733a383a22626173656e616d65223b733a32333a224f6d656b612d532d6d6f64756c652d4775657374417069223b733a333a22646972223b733a383a224775657374417069223b733a373a2276657273696f6e223b733a353a22332e312e32223b733a333a227a6970223b733a39353a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d47756573744170692f72656c65617365732f646f776e6c6f61642f332e312e322f47756573744170692d332e312e322e7a6970223b733a31323a22646570656e64656e63696573223b613a313a7b693a303b733a353a224775657374223b7d7d733a35333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d477565737455736572223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a353a224775657374223b733a383a22626173656e616d65223b733a32343a224f6d656b612d532d6d6f64756c652d477565737455736572223b733a333a22646972223b733a353a224775657374223b733a373a2276657273696f6e223b733a353a22332e342e38223b733a333a227a6970223b733a37323a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4775657374557365722f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35323a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d477565737455736572223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31303a2247756573742055736572223b733a383a22626173656e616d65223b733a32343a226f6d656b612d732d6d6f64756c652d477565737455736572223b733a333a22646972223b733a393a22477565737455736572223b733a373a2276657273696f6e223b733a353a22302e312e32223b733a333a227a6970223b733a37313a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d4775657374557365722f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34343a2268747470733a2f2f6769746875622e636f6d2f7a65726f6372617465732f4869646550726f70657274696573223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31353a22486964652050726f70657274696573223b733a383a22626173656e616d65223b733a31343a224869646550726f70657274696573223b733a333a22646972223b733a31343a224869646550726f70657274696573223b733a373a2276657273696f6e223b733a353a22312e312e30223b733a333a227a6970223b733a39343a2268747470733a2f2f6769746875622e636f6d2f7a65726f6372617465732f4869646550726f706572746965732f72656c65617365732f646f776e6c6f61642f76312e312e302f4869646550726f706572746965732d312e312e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a33373a2268747470733a2f2f6769746875622e636f6d2f616c6578726f7365622f4842726f77736572223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a32303a2248696572617263686963616c2042726f77736572223b733a383a22626173656e616d65223b733a383a224842726f77736572223b733a333a22646972223b733a31393a2248696572617263686963616c42726f77736572223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a35363a2268747470733a2f2f6769746875622e636f6d2f616c6578726f7365622f4842726f777365722f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34383a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d4964526566223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a353a224964526566223b733a383a22626173656e616d65223b733a32303a226f6d656b612d732d6d6f64756c652d4964526566223b733a333a22646972223b733a353a224964526566223b733a373a2276657273696f6e223b733a353a22302e312e30223b733a333a227a6970223b733a36373a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d49645265662f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35363a2268747470733a2f2f6769746875622e636f6d2f6b6c6f6b616e746563682f6f6d656b612d732d6d6f64756c652d49494946486f7374696e67223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31313a2249494946486f7374696e67223b733a383a22626173656e616d65223b733a32363a226f6d656b612d732d6d6f64756c652d49494946486f7374696e67223b733a333a22646972223b733a31313a2249494946486f7374696e67223b733a373a2276657273696f6e223b733a31303a22312e302e302d62657461223b733a333a227a6970223b733a37353a2268747470733a2f2f6769746875622e636f6d2f6b6c6f6b616e746563682f6f6d656b612d732d6d6f64756c652d49494946486f7374696e672f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35313a2268747470733a2f2f6769746875622e636f6d2f62756264786d2f4f6d656b612d532d6d6f64756c652d49696966536561726368223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31303a2249696966536561726368223b733a383a22626173656e616d65223b733a32353a224f6d656b612d532d6d6f64756c652d49696966536561726368223b733a333a22646972223b733a31303a2249696966536561726368223b733a373a2276657273696f6e223b733a333a22312e30223b733a333a227a6970223b733a37303a2268747470733a2f2f6769746875622e636f6d2f62756264786d2f4f6d656b612d532d6d6f64756c652d496969665365617263682f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35343a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d49696966536572766572223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31313a224949494620536572766572223b733a383a22626173656e616d65223b733a32353a224f6d656b612d532d6d6f64756c652d49696966536572766572223b733a333a22646972223b733a31303a2249494946536572766572223b733a373a2276657273696f6e223b733a31323a22332e362e302d626574612e32223b733a333a227a6970223b733a3130313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d496969665365727665722f72656c65617365732f646f776e6c6f61642f332e352e31362f496969665365727665722d332e352e31362e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a33373a2268747470733a2f2f6769746875622e636f6d2f76616368616e64612f696d6167652d6d6170223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a393a22496d616765204d6170223b733a383a22626173656e616d65223b733a393a22696d6167652d6d6170223b733a333a22646972223b733a383a22496d6167654d6170223b733a373a2276657273696f6e223b733a333a22312e30223b733a333a227a6970223b733a35363a2268747470733a2f2f6769746875622e636f6d2f76616368616e64612f696d6167652d6d61702f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35353a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d496d616765536572766572223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31323a22496d61676520536572766572223b733a383a22626173656e616d65223b733a32363a224f6d656b612d532d6d6f64756c652d496d616765536572766572223b733a333a22646972223b733a31313a22496d616765536572766572223b733a373a2276657273696f6e223b733a353a22332e362e30223b733a333a227a6970223b733a37343a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d496d6167655365727665722f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a313a7b693a303b733a31303a2249696966536572766572223b7d7d733a36343a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d496e7465726e6174696f6e616c69736174696f6e223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a32303a22496e7465726e6174696f6e616c69736174696f6e223b733a383a22626173656e616d65223b733a33353a224f6d656b612d532d6d6f64756c652d496e7465726e6174696f6e616c69736174696f6e223b733a333a22646972223b733a32303a22496e7465726e6174696f6e616c69736174696f6e223b733a373a2276657273696f6e223b733a373a22332e322e382e31223b733a333a227a6970223b733a3132333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d496e7465726e6174696f6e616c69736174696f6e2f72656c65617365732f646f776e6c6f61642f332e322e382e312f496e7465726e6174696f6e616c69736174696f6e2d332e322e382e312e7a6970223b733a31323a22646570656e64656e63696573223b613a313a7b693a303b733a373a2247656e65726963223b7d7d733a33383a2268747470733a2f2f6769746875622e636f6d2f6765676564656e6963652f4974656d436f7079223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a383a224974656d436f7079223b733a383a22626173656e616d65223b733a383a224974656d436f7079223b733a333a22646972223b733a383a224974656d436f7079223b733a373a2276657273696f6e223b733a353a22312e302e31223b733a333a227a6970223b733a37353a2268747470733a2f2f6769746875622e636f6d2f6765676564656e6963652f4974656d436f70792f72656c65617365732f646f776e6c6f61642f312e302e312f4974656d436f70792e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35353a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d4974656d5365747354726565223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31343a224974656d20536574732054726565223b733a383a22626173656e616d65223b733a32373a226f6d656b612d732d6d6f64756c652d4974656d5365747354726565223b733a333a22646972223b733a31323a224974656d5365747354726565223b733a373a2276657273696f6e223b733a353a22302e312e30223b733a333a227a6970223b733a3130363a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d4974656d53657473547265652f72656c65617365732f646f776e6c6f61642f76302e312e302f4974656d53657473547265652d302e312e302e7461722e677a223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35313a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d6a51756572795549223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a383a226a51756572795549223b733a383a22626173656e616d65223b733a32333a226f6d656b612d732d6d6f64756c652d6a51756572795549223b733a333a22646972223b733a383a226a51756572795549223b733a373a2276657273696f6e223b733a363a22312e31322e31223b733a333a227a6970223b733a39373a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d6a517565727955492f72656c65617365732f646f776e6c6f61642f76312e31322e312f6a517565727955492d312e31322e312e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34303a2268747470733a2f2f6769746875622e636f6d2f7767636f77616e2f4b616c7475726173747265616d223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31333a224b616c7475726173747265616d223b733a383a22626173656e616d65223b733a31333a224b616c7475726173747265616d223b733a333a22646972223b733a31333a224b616c7475726173747265616d223b733a373a2276657273696f6e223b733a353a22312e312e30223b733a333a227a6970223b733a35393a2268747470733a2f2f6769746875622e636f6d2f7767636f77616e2f4b616c7475726173747265616d2f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a33393a2268747470733a2f2f6769746875622e636f6d2f6469676968756d2f6f6d656b612d732d6c646170223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a343a224c646170223b733a383a22626173656e616d65223b733a31323a226f6d656b612d732d6c646170223b733a333a22646972223b733a343a224c646170223b733a373a2276657273696f6e223b733a333a22302e32223b733a333a227a6970223b733a35383a2268747470733a2f2f6769746875622e636f6d2f6469676968756d2f6f6d656b612d732d6c6461702f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36313a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d4c6f63616c4d65646961496e676573746572223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a32303a224c6f63616c204d6564696120496e676573746572223b733a383a22626173656e616d65223b733a33333a226f6d656b612d732d6d6f64756c652d4c6f63616c4d65646961496e676573746572223b733a333a22646972223b733a31383a224c6f63616c4d65646961496e676573746572223b733a373a2276657273696f6e223b733a353a22302e312e30223b733a333a227a6970223b733a38303a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d4c6f63616c4d65646961496e6765737465722f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4c6f636b6f7574223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a373a224c6f636b6f7574223b733a383a22626173656e616d65223b733a32323a224f6d656b612d532d6d6f64756c652d4c6f636b6f7574223b733a333a22646972223b733a373a224c6f636b6f7574223b733a373a2276657273696f6e223b733a353a22332e322e34223b733a333a227a6970223b733a39333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4c6f636b6f75742f72656c65617365732f646f776e6c6f61642f332e322e342f4c6f636b6f75742d332e322e342e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4c6f67223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a333a224c6f67223b733a383a22626173656e616d65223b733a31383a224f6d656b612d532d6d6f64756c652d4c6f67223b733a333a22646972223b733a333a224c6f67223b733a373a2276657273696f6e223b733a363a22332e322e3131223b733a333a227a6970223b733a38373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4c6f672f72656c65617365732f646f776e6c6f61642f332e322e31312f4c6f672d332e322e31312e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35353a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4d61696e74656e616e6365223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31313a224d61696e74656e616e6365223b733a383a22626173656e616d65223b733a32363a224f6d656b612d532d6d6f64756c652d4d61696e74656e616e6365223b733a333a22646972223b733a31313a224d61696e74656e616e6365223b733a373a2276657273696f6e223b733a353a22332e302e33223b733a333a227a6970223b733a37343a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4d61696e74656e616e63652f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a33353a2268747470733a2f2f6769746875622e636f6d2f63686e6d2f4d6172652d6d6f64756c65223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a33363a224d617070696e6720416d65726963616e2052656c6967696f75732045636f6c6f67696573223b733a383a22626173656e616d65223b733a31313a224d6172652d6d6f64756c65223b733a333a22646972223b733a33333a224d617070696e67416d65726963616e52656c6967696f757345636f6c6f67696573223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a35343a2268747470733a2f2f6769746875622e636f6d2f63686e6d2f4d6172652d6d6f64756c652f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34323a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f4d617070696e67223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a373a224d617070696e67223b733a383a22626173656e616d65223b733a373a224d617070696e67223b733a333a22646972223b733a373a224d617070696e67223b733a373a2276657273696f6e223b733a353a22312e322e30223b733a333a227a6970223b733a38353a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f4d617070696e672f72656c65617365732f646f776e6c6f61642f76312e322e302f4d617070696e672d312e322e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35323a2268747470733a2f2f6769746875622e636f6d2f336666757369306f6e2f6f6d656b612d732d6d656469612d77617465726d61726b223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31353a224d656469612057617465726d61726b223b733a383a22626173656e616d65223b733a32333a226f6d656b612d732d6d656469612d77617465726d61726b223b733a333a22646972223b733a31343a224d6564696157617465726d61726b223b733a373a2276657273696f6e223b733a333a22312e30223b733a333a227a6970223b733a37313a2268747470733a2f2f6769746875622e636f6d2f336666757369306f6e2f6f6d656b612d732d6d656469612d77617465726d61726b2f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34393a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f4d6574616461746142726f777365223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31353a224d657461646174612042726f777365223b733a383a22626173656e616d65223b733a31343a224d6574616461746142726f777365223b733a333a22646972223b733a31343a224d6574616461746142726f777365223b733a373a2276657273696f6e223b733a353a22312e322e30223b733a333a227a6970223b733a39393a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f4d6574616461746142726f7773652f72656c65617365732f646f776e6c6f61642f76312e332e302f4d6574616461746142726f7773652d312e332e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34333a2268747470733a2f2f6769746875622e636f6d2f6c617572616c6569662f4d65746164617461456469746f72223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31353a224d6574616461746120456469746f72223b733a383a22626173656e616d65223b733a31343a224d65746164617461456469746f72223b733a333a22646972223b733a31343a224d65746164617461456469746f72223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a36323a2268747470733a2f2f6769746875622e636f6d2f6c617572616c6569662f4d65746164617461456469746f722f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34303a2268747470733a2f2f6769746875622e636f6d2f536c6176657279496d616765732f4d697261646f72223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a373a224d697261646f72223b733a383a22626173656e616d65223b733a373a224d697261646f72223b733a333a22646972223b733a373a224d697261646f72223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a35393a2268747470733a2f2f6769746875622e636f6d2f536c6176657279496d616765732f4d697261646f722f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4d697261646f72223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31343a224d697261646f7220566965776572223b733a383a22626173656e616d65223b733a32323a224f6d656b612d532d6d6f64756c652d4d697261646f72223b733a333a22646972223b733a31333a224d697261646f72566965776572223b733a373a2276657273696f6e223b733a373a22332e312e372e31223b733a333a227a6970223b733a39373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4d697261646f722f72656c65617365732f646f776e6c6f61642f332e312e372e312f4d697261646f722d332e312e372e312e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35363a2268747470733a2f2f6769746875622e636f6d2f66756b756368692f4f6d656b612d532d6d6f64756c652d6d726f6f6e67612d736561726368223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31343a224d726f6f6e676120736561726368223b733a383a22626173656e616d65223b733a32393a224f6d656b612d532d6d6f64756c652d6d726f6f6e67612d736561726368223b733a333a22646972223b733a31333a224d726f6f6e6761736561726368223b733a373a2276657273696f6e223b733a353a22302e332e30223b733a333a227a6970223b733a37353a2268747470733a2f2f6769746875622e636f6d2f66756b756368692f4f6d656b612d532d6d6f64756c652d6d726f6f6e67612d7365617263682f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35323a2268747470733a2f2f6769746875622e636f6d2f416c797854616a2f64696374696f6e6e616972652d6d6f64756c652d6f6d656b61223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a323a224d79223b733a383a22626173656e616d65223b733a32353a2264696374696f6e6e616972652d6d6f64756c652d6f6d656b61223b733a333a22646972223b733a323a224d79223b733a373a2276657273696f6e223b733a333a22312e30223b733a333a227a6970223b733a37313a2268747470733a2f2f6769746875622e636f6d2f416c797854616a2f64696374696f6e6e616972652d6d6f64756c652d6f6d656b612f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35343a2268747470733a2f2f6769746875622e636f6d2f66756b756368692f4f6d656b612d532d6d6f64756c652d6e6772616d2d736561726368223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31333a224e2d6772616d20736561726368223b733a383a22626173656e616d65223b733a32373a224f6d656b612d532d6d6f64756c652d6e6772616d2d736561726368223b733a333a22646972223b733a31313a224e6772616d736561726368223b733a373a2276657273696f6e223b733a353a22302e312e30223b733a333a227a6970223b733a37333a2268747470733a2f2f6769746875622e636f6d2f66756b756368692f4f6d656b612d532d6d6f64756c652d6e6772616d2d7365617263682f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35353a2268747470733a2f2f6769746875622e636f6d2f706572666f726d616e742d736f6674776172652f6e6561746c696e652d6f6d656b612d73223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a383a224e6561746c696e65223b733a383a22626173656e616d65223b733a31363a226e6561746c696e652d6f6d656b612d73223b733a333a22646972223b733a383a224e6561746c696e65223b733a373a2276657273696f6e223b733a353a22302e322e30223b733a333a227a6970223b733a37343a2268747470733a2f2f6769746875622e636f6d2f706572666f726d616e742d736f6674776172652f6e6561746c696e652d6f6d656b612d732f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34373a2268747470733a2f2f6769746875622e636f6d2f7363686f6c6172736c61622f6e6561746c696e652d6f6d656b612d73223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a383a224e6561746c696e65223b733a383a22626173656e616d65223b733a31363a226e6561746c696e652d6f6d656b612d73223b733a333a22646972223b733a383a224e6561746c696e65223b733a373a2276657273696f6e223b733a353a22302e332e30223b733a333a227a6970223b733a36363a2268747470733a2f2f6769746875622e636f6d2f7363686f6c6172736c61622f6e6561746c696e652d6f6d656b612d732f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35373a2268747470733a2f2f6769746875622e636f6d2f636f726579746567656c65722f6f6d656b612d732d6d6f64756c652d4e6574776f726b4d6170223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31313a224e6574776f726b204d6170223b733a383a22626173656e616d65223b733a32353a226f6d656b612d732d6d6f64756c652d4e6574776f726b4d6170223b733a333a22646972223b733a31303a224e6574776f726b4d6170223b733a373a2276657273696f6e223b733a333a22312e30223b733a333a227a6970223b733a37363a2268747470733a2f2f6769746875622e636f6d2f636f726579746567656c65722f6f6d656b612d732d6d6f64756c652d4e6574776f726b4d61702f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34383a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4e657874223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a343a224e657874223b733a383a22626173656e616d65223b733a31393a224f6d656b612d532d6d6f64756c652d4e657874223b733a333a22646972223b733a343a224e657874223b733a373a2276657273696f6e223b733a383a22332e312e322e3237223b733a333a227a6970223b733a39333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4e6578742f72656c65617365732f646f776e6c6f61642f332e312e322e32372f4e6578742d332e312e322e32372e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35393a2268747470733a2f2f6769746875622e636f6d2f646465616e343034302f4f6d656b612d532d6d6f64756c652d4f6169506d68486172766573746572223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31373a224f41492d504d4820486172766573746572223b733a383a22626173656e616d65223b733a33303a224f6d656b612d532d6d6f64756c652d4f6169506d68486172766573746572223b733a333a22646972223b733a31353a224f4149504d48486172766573746572223b733a373a2276657273696f6e223b733a333a22302e31223b733a333a227a6970223b733a37383a2268747470733a2f2f6769746875622e636f6d2f646465616e343034302f4f6d656b612d532d6d6f64756c652d4f6169506d684861727665737465722f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35393a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d4f6169506d685265706f7369746f7279223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31383a224f41492d504d48205265706f7369746f7279223b733a383a22626173656e616d65223b733a33313a226f6d656b612d732d6d6f64756c652d4f6169506d685265706f7369746f7279223b733a333a22646972223b733a31363a224f4149504d485265706f7369746f7279223b733a373a2276657273696f6e223b733a353a22302e322e32223b733a333a227a6970223b733a37383a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d4f6169506d685265706f7369746f72792f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36303a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f6f6d656b612d732d6d6f64756c652d4f6169506d685265706f7369746f7279223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31383a224f41492d504d48205265706f7369746f7279223b733a383a22626173656e616d65223b733a33313a226f6d656b612d732d6d6f64756c652d4f6169506d685265706f7369746f7279223b733a333a22646972223b733a31363a224f4149504d485265706f7369746f7279223b733a373a2276657273696f6e223b733a353a22332e332e34223b733a333a227a6970223b733a3131313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d4f6169506d685265706f7369746f72792f72656c65617365732f646f776e6c6f61642f332e332e342f4f6169506d685265706f7369746f72792d332e332e342e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34343a2268747470733a2f2f6769746875622e636f6d2f4e756d6572697a656e2f4f6169506d68486172766573746572223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31373a224f414920506d6820486172766573746572223b733a383a22626173656e616d65223b733a31353a224f6169506d68486172766573746572223b733a333a22646972223b733a31353a224f4149506d68486172766573746572223b733a373a2276657273696f6e223b733a333a22302e31223b733a333a227a6970223b733a36333a2268747470733a2f2f6769746875622e636f6d2f4e756d6572697a656e2f4f6169506d684861727665737465722f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34393a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f4f6d656b6132496d706f72746572223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31363a224f6d656b61203220496d706f72746572223b733a383a22626173656e616d65223b733a31343a224f6d656b6132496d706f72746572223b733a333a22646972223b733a31343a224f6d656b6132496d706f72746572223b733a373a2276657273696f6e223b733a353a22312e322e30223b733a333a227a6970223b733a39393a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f4f6d656b6132496d706f727465722f72656c65617365732f646f776e6c6f61642f76312e332e302f4f6d656b6132496d706f727465722d312e332e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35333a2268747470733a2f2f6769746875622e636f6d2f7374657068656e77662f6f6d656b612d6d6f64756c652d737461727465722d6b6974223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31373a224f6d656b612053746172746572204b6974223b733a383a22626173656e616d65223b733a32343a226f6d656b612d6d6f64756c652d737461727465722d6b6974223b733a333a22646972223b733a31353a224f6d656b61537461727465724b6974223b733a373a2276657273696f6e223b733a333a22312e30223b733a333a227a6970223b733a3130323a2268747470733a2f2f6769746875622e636f6d2f7374657068656e77662f6f6d656b612d6d6f64756c652d737461727465722d6b69742f72656c65617365732f646f776e6c6f61642f76312e302f4f6d656b614d6f64756c65537461727465724b69742e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a33393a2268747470733a2f2f6769746875622e636f6d2f6469676968756d2f6f6d656b612d732d74776967223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31303a224f6d656b612054776967223b733a383a22626173656e616d65223b733a31323a226f6d656b612d732d74776967223b733a333a22646972223b733a393a224f6d656b6154776967223b733a373a2276657273696f6e223b733a353a22302e322e30223b733a333a227a6970223b733a35383a2268747470733a2f2f6769746875622e636f6d2f6469676968756d2f6f6d656b612d732d747769672f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34393a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f4f72636964436f6e6e6563746f72223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31353a224f5243494420436f6e6e6563746f72223b733a383a22626173656e616d65223b733a31343a224f72636964436f6e6e6563746f72223b733a333a22646972223b733a31343a224f52434944436f6e6e6563746f72223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a36383a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f4f72636964436f6e6e6563746f722f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a33393a2268747470733a2f2f6769746875622e636f6d2f7a65726f6372617465732f506466456d62656453223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a393a2250444620456d626564223b733a383a22626173656e616d65223b733a393a22506466456d62656453223b733a333a22646972223b733a383a22504446456d626564223b733a373a2276657273696f6e223b733a353a22312e312e30223b733a333a227a6970223b733a38333a2268747470733a2f2f6769746875622e636f6d2f7a65726f6372617465732f506466456d626564532f72656c65617365732f646f776e6c6f61642f76312e312e302f506466456d6265642d312e312e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a33363a2268747470733a2f2f6769746875622e636f6d2f4e756d6572697a656e2f50646654657874223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a373a2250646654657874223b733a383a22626173656e616d65223b733a373a2250646654657874223b733a333a22646972223b733a373a2250646654657874223b733a373a2276657273696f6e223b733a333a22312e30223b733a333a227a6970223b733a35353a2268747470733a2f2f6769746875622e636f6d2f4e756d6572697a656e2f506466546578742f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34373a2268747470733a2f2f6769746875622e636f6d2f62756264786d2f4f6d656b612d532d6d6f64756c652d506466546f63223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a363a22506466546f63223b733a383a22626173656e616d65223b733a32313a224f6d656b612d532d6d6f64756c652d506466546f63223b733a333a22646972223b733a363a22506466546f63223b733a373a2276657273696f6e223b733a333a22312e30223b733a333a227a6970223b733a36363a2268747470733a2f2f6769746875622e636f6d2f62756264786d2f4f6d656b612d532d6d6f64756c652d506466546f632f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d506466566965776572223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31303a2250646620566965776572223b733a383a22626173656e616d65223b733a32343a224f6d656b612d532d6d6f64756c652d506466566965776572223b733a333a22646972223b733a393a22506466566965776572223b733a373a2276657273696f6e223b733a353a22332e312e34223b733a333a227a6970223b733a39373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d5064665669657765722f72656c65617365732f646f776e6c6f61642f332e312e342f5064665669657765722d332e312e342e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34363a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d50736c223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a333a2250736c223b733a383a22626173656e616d65223b733a31383a226f6d656b612d732d6d6f64756c652d50736c223b733a333a22646972223b733a333a2250736c223b733a373a2276657273696f6e223b733a353a22302e312e30223b733a333a227a6970223b733a36353a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d50736c2f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35363a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d50736c536561726368466f726d223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31333a2250736c536561726368466f726d223b733a383a22626173656e616d65223b733a32383a226f6d656b612d732d6d6f64756c652d50736c536561726368466f726d223b733a333a22646972223b733a31333a2250736c536561726368466f726d223b733a373a2276657273696f6e223b733a353a22302e322e30223b733a333a227a6970223b733a37353a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d50736c536561726368466f726d2f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35353a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d5264664461746174797065223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31323a22524446204461746174797065223b733a383a22626173656e616d65223b733a32363a224f6d656b612d532d6d6f64756c652d5264664461746174797065223b733a333a22646972223b733a31313a225244464461746174797065223b733a373a2276657273696f6e223b733a353a22332e302e34223b733a333a227a6970223b733a3130313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d52646644617461747970652f72656c65617365732f646f776e6c6f61642f332e302e342f52646644617461747970652d332e302e342e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d5265666572656e6365223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a393a225265666572656e6365223b733a383a22626173656e616d65223b733a32343a224f6d656b612d532d6d6f64756c652d5265666572656e6365223b733a333a22646972223b733a393a225265666572656e6365223b733a373a2276657273696f6e223b733a363a22332e342e3230223b733a333a227a6970223b733a39393a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d5265666572656e63652f72656c65617365732f646f776e6c6f61642f332e342e32302f5265666572656e63652d332e342e32302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36313a2268747470733a2f2f6769746875622e636f6d2f4d616e4f6e44614d6f6f6e2f6f6d656b612d732d6d6f64756c652d526573747269637465645369746573223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31353a22526573747269637465645369746573223b733a383a22626173656e616d65223b733a33303a226f6d656b612d732d6d6f64756c652d526573747269637465645369746573223b733a333a22646972223b733a31353a22526573747269637465645369746573223b733a373a2276657273696f6e223b733a333a22302e39223b733a333a227a6970223b733a3130383a2268747470733a2f2f6769746875622e636f6d2f4d616e4f6e44614d6f6f6e2f6f6d656b612d732d6d6f64756c652d5265737472696374656453697465732f72656c65617365732f646f776e6c6f61642f76302e392f5265737472696374656453697465732d302e392e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34363a2268747470733a2f2f6769746875622e636f6d2f7a65726f6372617465732f52696768747353746174656d656e7473223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31373a225269676874732053746174656d656e7473223b733a383a22626173656e616d65223b733a31363a2252696768747353746174656d656e7473223b733a333a22646972223b733a31363a2252696768747353746174656d656e7473223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a39383a2268747470733a2f2f6769746875622e636f6d2f7a65726f6372617465732f52696768747353746174656d656e74732f72656c65617365732f646f776e6c6f61642f76312e302e302f52696768747353746174656d656e74732d312e302e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34313a2268747470733a2f2f6769746875622e636f6d2f7a65726f6372617465732f533346696c6553746f7265223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31323a2253332046696c6553746f7265223b733a383a22626173656e616d65223b733a31313a22533346696c6553746f7265223b733a333a22646972223b733a31313a22533346696c6553746f7265223b733a373a2276657273696f6e223b733a31313a22312e302e302d616c706861223b733a333a227a6970223b733a36303a2268747470733a2f2f6769746875622e636f6d2f7a65726f6372617465732f533346696c6553746f72652f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35303a2268747470733a2f2f6769746875622e636f6d2f4d616e4f6e44614d6f6f6e2f6f6d656b612d732d6d6f64756c652d5341434f223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a343a225341434f223b733a383a22626173656e616d65223b733a31393a226f6d656b612d732d6d6f64756c652d5341434f223b733a333a22646972223b733a343a225341434f223b733a373a2276657273696f6e223b733a333a22302e32223b733a333a227a6970223b733a36393a2268747470733a2f2f6769746875622e636f6d2f4d616e4f6e44614d6f6f6e2f6f6d656b612d732d6d6f64756c652d5341434f2f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34323a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f5363726970746f223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a373a225363726970746f223b733a383a22626173656e616d65223b733a373a225363726970746f223b733a333a22646972223b733a373a225363726970746f223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a38353a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f5363726970746f2f72656c65617365732f646f776e6c6f61642f76312e302e302f5363726970746f2d312e302e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34383a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d536f6c72223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a32333a22536561726368206164617074657220666f7220536f6c72223b733a383a22626173656e616d65223b733a31393a224f6d656b612d532d6d6f64756c652d536f6c72223b733a333a22646972223b733a32303a2253656172636861646170746572666f72536f6c72223b733a373a2276657273696f6e223b733a363a22332e352e3131223b733a333a227a6970223b733a38393a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d536f6c722f72656c65617365732f646f776e6c6f61642f332e352e31312f536f6c722d332e352e31312e7a6970223b733a31323a22646570656e64656e63696573223b613a313a7b693a303b733a363a22536561726368223b7d7d733a34383a2268747470733a2f2f6769746875622e636f6d2f6266617661726574746f2f53656172636842795669736962696c697479223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a32303a22536561726368206279205669736962696c697479223b733a383a22626173656e616d65223b733a31383a2253656172636842795669736962696c697479223b733a333a22646972223b733a31383a2253656172636862795669736962696c697479223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a36373a2268747470733a2f2f6769746875622e636f6d2f6266617661726574746f2f53656172636842795669736962696c6974792f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d536561726368486973746f7279223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31343a2253656172636820486973746f7279223b733a383a22626173656e616d65223b733a32383a224f6d656b612d532d6d6f64756c652d536561726368486973746f7279223b733a333a22646972223b733a31333a22536561726368486973746f7279223b733a373a2276657273696f6e223b733a353a22332e302e32223b733a333a227a6970223b733a3130353a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d536561726368486973746f72792f72656c65617365732f646f776e6c6f61642f332e302e322f536561726368486973746f72792d332e302e322e7a6970223b733a31323a22646570656e64656e63696573223b613a313a7b693a303b733a353a224775657374223b7d7d733a34393a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d536561726368223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a363a22536561726368223b733a383a22626173656e616d65223b733a32313a226f6d656b612d732d6d6f64756c652d536561726368223b733a333a22646972223b733a363a22536561726368223b733a373a2276657273696f6e223b733a353a22302e362e30223b733a333a227a6970223b733a39313a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d5365617263682f72656c65617365732f646f776e6c6f61642f76302e362e302f5365617263682d302e362e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35303a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f6f6d656b612d732d6d6f64756c652d536561726368223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a363a22536561726368223b733a383a22626173656e616d65223b733a32313a226f6d656b612d732d6d6f64756c652d536561726368223b733a333a22646972223b733a363a22536561726368223b733a373a2276657273696f6e223b733a363a22332e352e3133223b733a333a227a6970223b733a39333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d5365617263682f72656c65617365732f646f776e6c6f61642f332e352e31332f5365617263682d332e352e31332e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34323a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f53686172696e67223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a373a2253686172696e67223b733a383a22626173656e616d65223b733a373a2253686172696e67223b733a333a22646972223b733a373a2253686172696e67223b733a373a2276657273696f6e223b733a353a22312e312e30223b733a333a227a6970223b733a38353a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f53686172696e672f72656c65617365732f646f776e6c6f61642f76312e312e302f53686172696e672d312e312e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34313a2268747470733a2f2f6769746875622e636f6d2f7a65726f6372617465732f53696d706c65426c6f636b223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31323a2253696d706c6520426c6f636b223b733a383a22626173656e616d65223b733a31313a2253696d706c65426c6f636b223b733a333a22646972223b733a31313a2253696d706c65426c6f636b223b733a373a2276657273696f6e223b733a353a22302e312e30223b733a333a227a6970223b733a36303a2268747470733a2f2f6769746875622e636f6d2f7a65726f6372617465732f53696d706c65426c6f636b2f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35373a2268747470733a2f2f6769746875622e636f6d2f4e656f2d496e737069726174696f6e2f4f6d656b612d532d53696d706c654361726f7573656c223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31353a2253696d706c65204361726f7573656c223b733a383a22626173656e616d65223b733a32323a224f6d656b612d532d53696d706c654361726f7573656c223b733a333a22646972223b733a31343a2253696d706c654361726f7573656c223b733a373a2276657273696f6e223b733a353a22312e322e33223b733a333a227a6970223b733a3130313a2268747470733a2f2f6769746875622e636f6d2f4e656f2d496e737069726174696f6e2f4f6d656b612d532d53696d706c654361726f7573656c2f72656c65617365732f646f776e6c6f61642f76312e322e332f53696d706c654361726f7573656c2e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36303a2268747470733a2f2f6769746875622e636f6d2f6b79667235392f6f6d656b612d732d6d6f64756c652d53697465536c75674173537562646f6d61696e223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31393a2253697465536c75674173537562646f6d61696e223b733a383a22626173656e616d65223b733a33343a226f6d656b612d732d6d6f64756c652d53697465536c75674173537562646f6d61696e223b733a333a22646972223b733a31393a2253697465536c75674173537562646f6d61696e223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a3130383a2268747470733a2f2f6769746875622e636f6d2f6b79667235392f6f6d656b612d732d6d6f64756c652d53697465536c75674173537562646f6d61696e2f72656c65617365732f646f776e6c6f61642f312e302e302f53697465536c75674173537562646f6d61696e2e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34373a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d536f6c72223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a343a22536f6c72223b733a383a22626173656e616d65223b733a31393a226f6d656b612d732d6d6f64756c652d536f6c72223b733a333a22646972223b733a343a22536f6c72223b733a373a2276657273696f6e223b733a353a22302e362e30223b733a333a227a6970223b733a38373a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d6d6f64756c652d536f6c722f72656c65617365732f646f776e6c6f61642f76302e362e302f536f6c722d302e362e302e7a6970223b733a31323a22646570656e64656e63696573223b613a313a7b693a303b733a363a22536561726368223b7d7d733a35373a2268747470733a2f2f6769746875622e636f6d2f706f6c7331322f6f6d656b612d732d6d6f64756c652d536f6c72496d70726f76656d656e7473223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31363a22536f6c72496d70726f76656d656e7473223b733a383a22626173656e616d65223b733a33313a226f6d656b612d732d6d6f64756c652d536f6c72496d70726f76656d656e7473223b733a333a22646972223b733a31363a22536f6c72496d70726f76656d656e7473223b733a373a2276657273696f6e223b733a31343a22312e302e312d626962302e342e32223b733a333a227a6970223b733a37363a2268747470733a2f2f6769746875622e636f6d2f706f6c7331322f6f6d656b612d732d6d6f64756c652d536f6c72496d70726f76656d656e74732f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a323a7b693a303b733a363a22536561726368223b693a313b733a343a22536f6c72223b7d7d733a33343a2268747470733a2f2f6769746875622e636f6d2f7061747269636b6d6a2f5354657374223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a353a225354657374223b733a383a22626173656e616d65223b733a353a225354657374223b733a333a22646972223b733a353a225354657374223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a35333a2268747470733a2f2f6769746875622e636f6d2f7061747269636b6d6a2f53546573742f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35303a2268747470733a2f2f6769746875622e636f6d2f6167696c652d68756d616e69746965732f6167696c652d73746f72796d6170223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a383a2253746f72796d6170223b733a383a22626173656e616d65223b733a31343a226167696c652d73746f72796d6170223b733a333a22646972223b733a383a2253746f72796d6170223b733a373a2276657273696f6e223b733a353a22332e342e34223b733a333a227a6970223b733a36393a2268747470733a2f2f6769746875622e636f6d2f6167696c652d68756d616e69746965732f6167696c652d73746f72796d61702f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d546865736175727573223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a393a22546865736175727573223b733a383a22626173656e616d65223b733a32343a224f6d656b612d532d6d6f64756c652d546865736175727573223b733a333a22646972223b733a393a22546865736175727573223b733a373a2276657273696f6e223b733a353a22332e302e33223b733a333a227a6970223b733a39373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d5468657361757275732f72656c65617365732f646f776e6c6f61642f332e302e332f5468657361757275732d332e302e332e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35323a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d54696d656c696e65223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a383a2254696d656c696e65223b733a383a22626173656e616d65223b733a32333a224f6d656b612d532d6d6f64756c652d54696d656c696e65223b733a333a22646972223b733a383a2254696d656c696e65223b733a373a2276657273696f6e223b733a363a22332e342e3132223b733a333a227a6970223b733a39373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d54696d656c696e652f72656c65617365732f646f776e6c6f61642f332e342e31322f54696d656c696e652d332e342e31322e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35363a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d5472616e736c6174696f6e73223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31323a225472616e736c6174696f6e73223b733a383a22626173656e616d65223b733a32373a224f6d656b612d532d6d6f64756c652d5472616e736c6174696f6e73223b733a333a22646972223b733a31323a225472616e736c6174696f6e73223b733a373a2276657273696f6e223b733a353a22332e302e31223b733a333a227a6970223b733a3130333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d5472616e736c6174696f6e732f72656c65617365732f646f776e6c6f61642f332e302e312f5472616e736c6174696f6e732d332e302e312e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34303a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f556e417069223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a353a22756e415049223b733a383a22626173656e616d65223b733a353a22556e417069223b733a333a22646972223b733a353a22756e415049223b733a373a2276657273696f6e223b733a353a22312e312e30223b733a333a227a6970223b733a38313a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f556e4170692f72656c65617365732f646f776e6c6f61642f76312e312e302f556e4170692d312e312e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35393a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d556e6976657273616c566965776572223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31363a22556e6976657273616c20566965776572223b733a383a22626173656e616d65223b733a33303a224f6d656b612d532d6d6f64756c652d556e6976657273616c566965776572223b733a333a22646972223b733a31353a22556e6976657273616c566965776572223b733a373a2276657273696f6e223b733a353a22332e362e33223b733a333a227a6970223b733a3130393a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d556e6976657273616c5669657765722f72656c65617365732f646f776e6c6f61642f332e362e332f556e6976657273616c5669657765722d332e362e332e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36373a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d5570677261646546726f6d4f6d656b61436c6173736963223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a32363a22557067726164652066726f6d204f6d656b6120436c6173736963223b733a383a22626173656e616d65223b733a33383a224f6d656b612d532d6d6f64756c652d5570677261646546726f6d4f6d656b61436c6173736963223b733a333a22646972223b733a32333a225570677261646566726f6d4f6d656b61436c6173736963223b733a373a2276657273696f6e223b733a353a22332e312e33223b733a333a227a6970223b733a38363a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d5570677261646546726f6d4f6d656b61436c61737369632f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35303a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f55726944657265666572656e636572223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31363a225552492044657265666572656e636572223b733a383a22626173656e616d65223b733a31353a2255726944657265666572656e636572223b733a333a22646972223b733a31353a2255524944657265666572656e636572223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a3130313a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f55726944657265666572656e6365722f72656c65617365732f646f776e6c6f61642f76312e302e302f55726944657265666572656e6365722d312e302e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34373a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f56616c756553756767657374223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31333a2256616c75652053756767657374223b733a383a22626173656e616d65223b733a31323a2256616c756553756767657374223b733a333a22646972223b733a31323a2256616c756553756767657374223b733a373a2276657273696f6e223b733a353a22312e342e31223b733a333a227a6970223b733a39353a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f56616c7565537567676573742f72656c65617365732f646f776e6c6f61642f76312e342e312f56616c7565537567676573742d312e342e312e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35313a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d5665726f76696f223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31383a225665726f76696f204d454920566965776572223b733a383a22626173656e616d65223b733a32323a224f6d656b612d532d6d6f64756c652d5665726f76696f223b733a333a22646972223b733a31363a225665726f76696f4d4549566965776572223b733a373a2276657273696f6e223b733a353a22332e302e35223b733a333a227a6970223b733a39333a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d5665726f76696f2f72656c65617365732f646f776e6c6f61642f332e302e352f5665726f76696f2d332e302e352e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35323a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d5669657765724a73223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a383a225669657765724a53223b733a383a22626173656e616d65223b733a32333a224f6d656b612d532d6d6f64756c652d5669657765724a73223b733a333a22646972223b733a383a225669657765724a53223b733a373a2276657273696f6e223b733a353a22332e322e30223b733a333a227a6970223b733a39353a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d6d6f64756c652d5669657765724a732f72656c65617365732f646f776e6c6f61642f332e322e302f5669657765724a732d332e322e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34373a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f5a6f7465726f496d706f7274223b613a383a7b733a343a2274797065223b733a363a226d6f64756c65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31333a225a6f7465726f20496d706f7274223b733a383a22626173656e616d65223b733a31323a225a6f7465726f496d706f7274223b733a333a22646972223b733a31323a225a6f7465726f496d706f7274223b733a373a2276657273696f6e223b733a353a22312e312e30223b733a333a227a6970223b733a39353a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d6d6f64756c65732f5a6f7465726f496d706f72742f72656c65617365732f646f776e6c6f61642f76312e312e302f5a6f7465726f496d706f72742d312e312e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d7d733a353a227468656d65223b613a32373a7b733a33353a2268747470733a2f2f6769746875622e636f6d2f706f6c7331322f6168702d7468656d65223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a333a22414850223b733a383a22626173656e616d65223b733a393a226168702d7468656d65223b733a333a22646972223b733a333a22414850223b733a373a2276657273696f6e223b733a353a22302e352e32223b733a333a227a6970223b733a35343a2268747470733a2f2f6769746875622e636f6d2f706f6c7331322f6168702d7468656d652f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34333a2268747470733a2f2f6769746875622e636f6d2f756e6f6c69627261726965732f61696470682d6f6d656b61223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a353a224149444850223b733a383a22626173656e616d65223b733a31313a2261696470682d6f6d656b61223b733a333a22646972223b733a353a224149444850223b733a373a2276657273696f6e223b733a31303a22312e302e302d62657461223b733a333a227a6970223b733a36323a2268747470733a2f2f6769746875622e636f6d2f756e6f6c69627261726965732f61696470682d6f6d656b612f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34323a2268747470733a2f2f6769746875622e636f6d2f63686e6d2f617070616c61636869616e2d747261696c73223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a32373a22417070616c61636869616e20547261696c20486973746f72696573223b733a383a22626173656e616d65223b733a31383a22617070616c61636869616e2d747261696c73223b733a333a22646972223b733a32353a22417070616c61636869616e547261696c486973746f72696573223b733a373a2276657273696f6e223b733a333a22302e31223b733a333a227a6970223b733a36313a2268747470733a2f2f6769746875622e636f6d2f63686e6d2f617070616c61636869616e2d747261696c732f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34333a2268747470733a2f2f6769746875622e636f6d2f62756264786d2f4f6d656b612d532d7468656d652d62786d223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a333a2242554d223b733a383a22626173656e616d65223b733a31373a224f6d656b612d532d7468656d652d62786d223b733a333a22646972223b733a333a2242554d223b733a373a2276657273696f6e223b733a353a22312e312e32223b733a333a227a6970223b733a36323a2268747470733a2f2f6769746875622e636f6d2f62756264786d2f4f6d656b612d532d7468656d652d62786d2f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a33393a2268747470733a2f2f6769746875622e636f6d2f6a6f6e6661636b72656c6c2f627975692d737063223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31333a224259552d496461686f20535043223b733a383a22626173656e616d65223b733a383a22627975692d737063223b733a333a22646972223b733a31313a22425955496461686f535043223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a35383a2268747470733a2f2f6769746875622e636f6d2f6a6f6e6661636b72656c6c2f627975692d7370632f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34333a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d7468656d65732f63656e746572726f77223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31303a2243656e74657220526f77223b733a383a22626173656e616d65223b733a393a2263656e746572726f77223b733a333a22646972223b733a393a2243656e746572526f77223b733a373a2276657273696f6e223b733a353a22312e352e30223b733a333a227a6970223b733a38393a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d7468656d65732f63656e746572726f772f72656c65617365732f646f776e6c6f61642f76312e352e302f63656e746572726f772d76312e352e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a33383a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d7468656d65732f636f7a79223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a343a22436f7a79223b733a383a22626173656e616d65223b733a343a22636f7a79223b733a333a22646972223b733a343a22436f7a79223b733a373a2276657273696f6e223b733a353a22312e342e30223b733a333a227a6970223b733a37393a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d7468656d65732f636f7a792f72656c65617365732f646f776e6c6f61642f76312e342e302f636f7a792d76312e342e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a37333a2268747470733a2f2f6769746875622e636f6d2f6d617272696f74742d6c6962726172792f4f6d656b61532d4d617272696f74742d4c6962726172792d44656661756c742d5468656d65223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a373a2244656661756c74223b733a383a22626173656e616d65223b733a33373a224f6d656b61532d4d617272696f74742d4c6962726172792d44656661756c742d5468656d65223b733a333a22646972223b733a373a2244656661756c74223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a39323a2268747470733a2f2f6769746875622e636f6d2f6d617272696f74742d6c6962726172792f4f6d656b61532d4d617272696f74742d4c6962726172792d44656661756c742d5468656d652f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34383a2268747470733a2f2f6769746875622e636f6d2f64686172632d6f72672f64686172632d6f6d656b612d732d7468656d65223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31393a2264686172632d6f6d656b612d732d7468656d65223b733a383a22626173656e616d65223b733a31393a2264686172632d6f6d656b612d732d7468656d65223b733a333a22646972223b733a31363a2264686172636f6d656b61737468656d65223b733a373a2276657273696f6e223b733a313a2232223b733a333a227a6970223b733a36373a2268747470733a2f2f6769746875622e636f6d2f64686172632d6f72672f64686172632d6f6d656b612d732d7468656d652f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34383a2268747470733a2f2f6769746875622e636f6d2f7363686f6c6172736c61622f6469676974616c636f6c6c656374696e67223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31383a224469676974616c20436f6c6c656374696e67223b733a383a22626173656e616d65223b733a31373a226469676974616c636f6c6c656374696e67223b733a333a22646972223b733a31373a224469676974616c436f6c6c656374696e67223b733a373a2276657273696f6e223b733a353a22312e312e30223b733a333a227a6970223b733a36373a2268747470733a2f2f6769746875622e636f6d2f7363686f6c6172736c61622f6469676974616c636f6c6c656374696e672f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35353a2268747470733a2f2f6769746875622e636f6d2f494e484150617269732f6f6d656b612d732d7468656d652d4469676974616c4d75726574223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31333a224469676974616c204d75726574223b733a383a22626173656e616d65223b733a32363a226f6d656b612d732d7468656d652d4469676974616c4d75726574223b733a333a22646972223b733a31323a224469676974616c4d75726574223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a37343a2268747470733a2f2f6769746875622e636f6d2f494e484150617269732f6f6d656b612d732d7468656d652d4469676974616c4d757265742f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a32383a2268747470733a2f2f6769746875622e636f6d2f63686e6d2f6463646d223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31303a22466f756e646174696f6e223b733a383a22626173656e616d65223b733a343a226463646d223b733a333a22646972223b733a31303a22466f756e646174696f6e223b733a373a2276657273696f6e223b733a333a22302e32223b733a333a227a6970223b733a34373a2268747470733a2f2f6769746875622e636f6d2f63686e6d2f6463646d2f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35353a2268747470733a2f2f6769746875622e636f6d2f6b696e67736469676974616c6c61622f6f6d656b612d732d677070706f632d7468656d65223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a373a2247505020506f43223b733a383a22626173656e616d65223b733a32303a226f6d656b612d732d677070706f632d7468656d65223b733a333a22646972223b733a363a22475050506f43223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a37343a2268747470733a2f2f6769746875622e636f6d2f6b696e67736469676974616c6c61622f6f6d656b612d732d677070706f632d7468656d652f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34343a2268747470733a2f2f6769746875622e636f6d2f63686e6d2f68656172696e672d7468652d616d657269636173223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a373a2248656172696e67223b733a383a22626173656e616d65223b733a32303a2268656172696e672d7468652d616d657269636173223b733a333a22646972223b733a373a2248656172696e67223b733a373a2276657273696f6e223b733a353a22302e302e31223b733a333a227a6970223b733a36333a2268747470733a2f2f6769746875622e636f6d2f63686e6d2f68656172696e672d7468652d616d6572696361732f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a33363a2268747470733a2f2f6769746875622e636f6d2f6878736c6c632f6f6d656b61732d696970223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31313a224949502044656661756c74223b733a383a22626173656e616d65223b733a31303a226f6d656b61732d696970223b733a333a22646972223b733a31303a2249495044656661756c74223b733a373a2276657273696f6e223b733a353a22312e312e30223b733a333a227a6970223b733a35353a2268747470733a2f2f6769746875622e636f6d2f6878736c6c632f6f6d656b61732d6969702f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a33343a2268747470733a2f2f6769746875622e636f6d2f68616a6f6b692f697374616e62756c223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a383a22497374616e62756c223b733a383a22626173656e616d65223b733a383a22697374616e62756c223b733a333a22646972223b733a383a22497374616e62756c223b733a373a2276657273696f6e223b733a31303a22312e302e302d62657461223b733a333a227a6970223b733a35333a2268747470733a2f2f6769746875622e636f6d2f68616a6f6b692f697374616e62756c2f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35303a2268747470733a2f2f6769746875622e636f6d2f6e616b616d7572613139362f6f6d656b612d732d7468656d652d6b616e7a65223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31333a224b616e7a652041726368697665223b733a383a22626173656e616d65223b733a31393a226f6d656b612d732d7468656d652d6b616e7a65223b733a333a22646972223b733a31323a224b616e7a6541726368697665223b733a373a2276657273696f6e223b733a353a22302e302e31223b733a333a227a6970223b733a36393a2268747470733a2f2f6769746875622e636f6d2f6e616b616d7572613139362f6f6d656b612d732d7468656d652d6b616e7a652f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34303a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d7468656d65732f706170657273223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a363a22506170657273223b733a383a22626173656e616d65223b733a363a22706170657273223b733a333a22646972223b733a363a22506170657273223b733a373a2276657273696f6e223b733a353a22312e312e30223b733a333a227a6970223b733a38333a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d7468656d65732f7061706572732f72656c65617365732f646f776e6c6f61642f76312e312e302f7061706572732d76312e312e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a33343a2268747470733a2f2f6769746875622e636f6d2f6e696b6b696d6b2f70737561727473223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a33303a2250656e6e2053746174652041727473202620417263686974656374757265223b733a383a22626173656e616d65223b733a373a2270737561727473223b733a333a22646972223b733a32353a2250656e6e537461746541727473417263686974656374757265223b733a373a2276657273696f6e223b733a353a22312e302e30223b733a333a227a6970223b733a35333a2268747470733a2f2f6769746875622e636f6d2f6e696b6b696d6b2f707375617274732f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34353a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d7468656d652d70736c223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a333a2250534c223b733a383a22626173656e616d65223b733a31373a226f6d656b612d732d7468656d652d70736c223b733a333a22646972223b733a333a2250534c223b733a373a2276657273696f6e223b733a333a22302e31223b733a333a227a6970223b733a36343a2268747470733a2f2f6769746875622e636f6d2f6269626c696272652f6f6d656b612d732d7468656d652d70736c2f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34363a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d7468656d652d50534c223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a333a2250534c223b733a383a22626173656e616d65223b733a31373a224f6d656b612d532d7468656d652d50534c223b733a333a22646972223b733a333a2250534c223b733a373a2276657273696f6e223b733a353a22312e332e34223b733a333a227a6970223b733a38343a2268747470733a2f2f6769746875622e636f6d2f44616e69656c2d4b4d2f4f6d656b612d532d7468656d652d70736c2f72656c65617365732f646f776e6c6f61642f312e332e322f70736c2d312e332e322e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36313a2268747470733a2f2f6769746875622e636f6d2f536c6176657279496d616765732f6f6d656b612d732d7468656d652d736c61766572792d696d61676573223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31343a22536c617665727920496d61676573223b733a383a22626173656e616d65223b733a32383a226f6d656b612d732d7468656d652d736c61766572792d696d61676573223b733a333a22646972223b733a31333a22536c6176657279496d61676573223b733a373a2276657273696f6e223b733a353a22302e302e31223b733a333a227a6970223b733a38303a2268747470733a2f2f6769746875622e636f6d2f536c6176657279496d616765732f6f6d656b612d732d7468656d652d736c61766572792d696d616765732f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34323a2268747470733a2f2f6769746875622e636f6d2f646172746d6f7574682d646c74672f737065616b6f7574223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a383a22537065616b4f7574223b733a383a22626173656e616d65223b733a383a22737065616b6f7574223b733a333a22646972223b733a383a22537065616b4f7574223b733a373a2276657273696f6e223b733a353a22312e312e31223b733a333a227a6970223b733a36313a2268747470733a2f2f6769746875622e636f6d2f646172746d6f7574682d646c74672f737065616b6f75742f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a34323a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d7468656d65732f7468656461696c79223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a393a22546865204461696c79223b733a383a22626173656e616d65223b733a383a227468656461696c79223b733a333a22646972223b733a383a225468654461696c79223b733a373a2276657273696f6e223b733a353a22312e352e30223b733a333a227a6970223b733a38373a2268747470733a2f2f6769746875622e636f6d2f6f6d656b612d732d7468656d65732f7468656461696c792f72656c65617365732f646f776e6c6f61642f76312e352e302f7468656461696c792d76312e352e302e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a36313a2268747470733a2f2f6769746875622e636f6d2f756f7265676f6e2d6c69627261726965732f554f2d4c6962726172792d4f6d656b612d532d5468656d65223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a33303a22556e6976657273697479206f66204f7265676f6e204c6962726172696573223b733a383a22626173656e616d65223b733a32343a22554f2d4c6962726172792d4f6d656b612d532d5468656d65223b733a333a22646972223b733a32373a22556e69766572736974796f664f7265676f6e4c6962726172696573223b733a373a2276657273696f6e223b733a353a22312e332e30223b733a333a227a6970223b733a3130303a2268747470733a2f2f6769746875622e636f6d2f756f7265676f6e2d6c69627261726965732f554f2d4c6962726172792d4f6d656b612d532d5468656d652f72656c65617365732f646f776e6c6f61642f76312e302e322f756f6c6962726172792e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35323a2268747470733a2f2f6769746875622e636f6d2f6e616b616d7572613139362f6f6d656b612d732d75746161722d622d7468656d65223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a31323a22555441415220747970652042223b733a383a22626173656e616d65223b733a32313a226f6d656b612d732d75746161722d622d7468656d65223b733a333a22646972223b733a31303a2255544141527479706542223b733a373a2276657273696f6e223b733a353a22302e302e31223b733a333a227a6970223b733a37313a2268747470733a2f2f6769746875622e636f6d2f6e616b616d7572613139362f6f6d656b612d732d75746161722d622d7468656d652f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d733a35323a2268747470733a2f2f6769746875622e636f6d2f6e616b616d7572613139362f6f6d656b612d732d75746161722d632d7468656d65223b613a383a7b733a343a2274797065223b733a353a227468656d65223b733a363a22736572766572223b733a31303a226769746875622e636f6d223b733a343a226e616d65223b733a343a2255544441223b733a383a22626173656e616d65223b733a32313a226f6d656b612d732d75746161722d632d7468656d65223b733a333a22646972223b733a343a2255544441223b733a373a2276657273696f6e223b733a353a22302e302e31223b733a333a227a6970223b733a37313a2268747470733a2f2f6769746875622e636f6d2f6e616b616d7572613139362f6f6d656b612d732d75746161722d632d7468656d652f617263686976652f6d61737465722e7a6970223b733a31323a22646570656e64656e63696573223b613a303a7b7d7d7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223162623261656533616538333031653931666365373535323838653166666539223b733a33323a223437363231306332356138363062346138336138636331323931386633386337223b733a33323a223737663062383934353039306666303536363138613439623139346237643632223b733a33323a226165396165373462633634306463363731346236326639663831356130346331223b733a33323a223638396664613539336630383361633835363330653961333939376536313730223b733a33323a226363383965313163336338666263323933636538316166303637373064633637223b7d733a343a2268617368223b733a36353a2263633839653131633363386662633239336365383161663036373730646336372d3638396664613539336630383361633835363330653961333939376536313730223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313139323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31313a7b733a33323a223065303735343764613763353031376137623631636135393965623861393530223b733a33323a226265356233306663313761666438363934393063616338363763623638643665223b733a33323a223564613561363935633965306662643634613466383531376436353735343135223b733a33323a226432643439316633393166323934613866636330656430333865336237313935223b733a33323a223466646537336535656439643737666432656235303065383261373933643236223b733a33323a226235643364623665353063366331313434343630616630393736323235326536223b733a33323a223831633333626430386264326630313331666534356438646430353566613436223b733a33323a223837383234626532623730363432386434346539653832393762353761623766223b733a33323a223734336531663735633735393564646264316436363833396238363466336337223b733a33323a226634666534383432376538623935636530323038383335363463373163376336223b733a33323a223135666165313663623130333133383830356565373035356436316137663930223b733a33323a226135636261666563363430356439356336373962303964356466613735636439223b733a33323a223966663431343130356632326431313561323665353166656664646339333537223b733a33323a223332613932383764343036313734386366363937626238643164626536653236223b733a33323a223666666237313962396561623535343864393966616138613335303862333664223b733a33323a226664373532336535393361306561613130383634363630636633626564333338223b733a33323a223138353931666666613432393362656265313766303835613839343730396230223b733a33323a223964383838653064633133333536303133646434636665326366646538336264223b733a33323a226662353832633734653563616536363837346432376334393732353237353937223b733a33323a223833313933663831333939613731663735383031376365386237623565353138223b733a33323a223535303365393233383161656231326439653638333632373265633638663734223b733a33323a226635393439393738393761633237633139353139303961303561373632316339223b7d733a343a2268617368223b733a36353a2266353934393937383937616332376331393531393039613035613736323163392d3535303365393233383161656231326439653638333632373265633638663734223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223731626434616337633861343039613237646533326262313431393763373565223b733a33323a223762343063336462663237656431643938393734633438626330363338353433223b7d733a343a2268617368223b733a36353a2237623430633364626632376564316439383937346334386263303633383534332d3731626434616337633861343039613237646533326262313431393763373565223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587101867);

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

CREATE TABLE `setting` (
  `id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `setting`
--

INSERT INTO `setting` (`id`, `value`) VALUES
('administrator_email', '\"samuel.szoniecky@univ-paris8.fr\"'),
('annotate_public_allow_annotate', 'false'),
('annotate_public_allow_view', 'true'),
('annotate_resource_template_data', '{\"4\":{\"oa:motivatedBy\":\"oa:Annotation\",\"rdf:value\":\"oa:hasBody\",\"oa:hasPurpose\":\"oa:hasBody\",\"dcterms:language\":\"oa:hasBody\",\"oa:hasSource\":\"oa:hasTarget\",\"rdf:type\":\"oa:hasTarget\",\"dcterms:format\":\"oa:hasTarget\"},\"3\":{\"dcterms:contributor\":\"oa:Annotation\"}}'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"MEDAS 19-20\"'),
('locale', '\"\"'),
('media_type_whitelist', '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf,\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
('pagination_per_page', '25'),
('time_zone', '\"UTC\"'),
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
  `slug` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `navigation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `item_pool` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
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
  `caption` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `slug` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `layout` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
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
  `role` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_id` int(11) NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'samuel.szoniecky@univ-paris8.fr', 'Samuel Szoniecky', '2020-04-15 13:07:14', '2020-04-15 13:07:15', '$2y$10$ODTEPRLFa4WYVLNW6VKWd.LJ5zSxkYXeSjkUQygj4r3iw3u3YO1de', 'global_admin', 1),
(2, 'samszon@gmail.com', 'samszo', '2020-04-15 13:38:46', '2020-04-15 13:39:45', '$2y$10$lG61YTCA2n.TUGHKu/7qJOmHlm25yaIQy3fuINn3kRBMtTdxGrXUm', 'global_admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_setting`
--

CREATE TABLE `user_setting` (
  `id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
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
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `uri` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(1, 1, 1, NULL, 'literal', '', 'Luc Toto', NULL, 1),
(2, 1, 4, NULL, 'literal', '', 'étudiant M1', NULL, 1),
(3, 1, 131, NULL, 'literal', '', 'tot', NULL, 1),
(4, 1, 139, NULL, 'literal', '', 'Luc', NULL, 1),
(5, 1, 145, NULL, 'literal', '', 'Toto', NULL, 1),
(6, 1, 182, NULL, 'literal', '', '01/04/2000', NULL, 1),
(7, 2, 1, NULL, 'literal', 'fr', 'BDD relationnelle', NULL, 1),
(8, 2, 1, NULL, 'literal', 'en', 'Relational Data base', NULL, 1),
(9, 2, 3, NULL, 'literal', '', 'Base de donnée', NULL, 1),
(10, 2, 46, NULL, 'literal', '', 'Master 1', NULL, 1),
(11, 3, 1, NULL, 'literal', '', 'Tu Tu', NULL, 1),
(12, 3, 4, NULL, 'literal', 'fr', 'c\'est un bon gars', NULL, 1),
(13, 3, 4, NULL, 'literal', 'en', 'is good guy', NULL, 1),
(14, 3, 131, NULL, 'literal', '', 'tutu', NULL, 1),
(15, 3, 139, NULL, 'literal', '', 'Tu', NULL, 1),
(17, 2, 227, 3, 'resource', NULL, NULL, NULL, 1),
(23, 7, 319, NULL, 'customvocab:4', NULL, 'assessing', NULL, 1),
(24, 8, 315, 3, 'resource', NULL, NULL, NULL, 1),
(25, 8, 333, NULL, 'customvocab:3', NULL, 'dctype:Text', NULL, 1),
(26, 8, 337, NULL, 'literal', NULL, 'target', NULL, 1),
(27, 9, 337, NULL, 'literal', NULL, 'content', NULL, 1),
(28, 9, 312, NULL, 'customvocab:4', NULL, 'assessing', NULL, 1),
(29, 3, 145, NULL, 'literal', '', 'Tu', NULL, 1),
(30, 3, 182, NULL, 'literal', '', '03/08/1998', NULL, 1),
(31, 2, 227, 1, 'resource', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vocabulary`
--

CREATE TABLE `vocabulary` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `namespace_uri` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(6, 1, 'http://schema.org', 'schema', 'schema', ''),
(7, 1, 'http://www.w3.org/ns/oa#', 'oa', 'Web Annotation Ontology', 'The Web Annotation Vocabulary specifies the set of RDF classes, predicates and named entities that are used by the Web Annotation Data Model (http://www.w3.org/TR/annotation-model/).'),
(8, 1, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#', 'rdf', 'The RDF Concepts Vocabulary (RDF)', 'This is the RDF Schema for the RDF vocabulary terms in the RDF Namespace, defined in RDF 1.1 Concepts.'),
(9, 1, 'http://iflastandards.info/ns/isbd/elements/', 'isbd', 'ISBD elements', ''),
(10, 1, 'http://purl.org/ontology/mo/', 'mo', 'Music Ontology Specification', ''),
(11, 1, 'http://dbpedia.org/ontology/', 'dbpedia-owl', 'dbpedia', ''),
(12, 1, 'https://jardindesconnaissances.univ-paris8.fr/onto/fup8', 'fup8', 'Formation Université Paris 8', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annotation`
--
ALTER TABLE `annotation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `annotation_body`
--
ALTER TABLE `annotation_body`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `annotation_part`
--
ALTER TABLE `annotation_part`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4ABEA042E075FC54` (`annotation_id`),
  ADD KEY `idx_part` (`part`);

--
-- Index pour la table `annotation_target`
--
ALTER TABLE `annotation_target`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=687;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `annotation`
--
ALTER TABLE `annotation`
  ADD CONSTRAINT `FK_2E443EF2BF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `annotation_body`
--
ALTER TABLE `annotation_body`
  ADD CONSTRAINT `FK_D819DB36BF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `annotation_part`
--
ALTER TABLE `annotation_part`
  ADD CONSTRAINT `FK_4ABEA042BF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4ABEA042E075FC54` FOREIGN KEY (`annotation_id`) REFERENCES `annotation` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `annotation_target`
--
ALTER TABLE `annotation_target`
  ADD CONSTRAINT `FK_9F53A3D6BF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

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
