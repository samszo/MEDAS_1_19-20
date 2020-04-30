-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 30 avr. 2020 à 11:29
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdd_vente`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

CREATE TABLE `adresse` (
  `id_adresse` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `rue` varchar(45) NOT NULL,
  `ville` varchar(45) NOT NULL,
  `code_postal` varchar(45) NOT NULL,
  `pays` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `clientcol` varchar(45) NOT NULL,
  `genre` int(11) NOT NULL,
  `date_naissance` date NOT NULL,
  `email` varchar(45) NOT NULL,
  `clientcol1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `num_commande` int(11) NOT NULL,
  `date_commande` date NOT NULL,
  `id_client` int(11) NOT NULL,
  `prix` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `contenu`
--

CREATE TABLE `contenu` (
  `id_commande` int(11) NOT NULL,
  `id_produit` int(11) DEFAULT NULL,
  `quantitee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `id_facture` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  `prix_ht` float NOT NULL,
  `prix_ttc` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(15, 'items', 1, 1, 'client1', 'client1\nclient1\ntoto\nrobert\nmasculin\n07/10/1995\ntoto.robert@gmail.com\nadr1'),
(17, 'items', 1, 1, 'commandepdt1', 'commandepdt1\ncommandepdt1\n3\npdt1'),
(18, 'items', 1, 1, 'pdt1', 'pdt1\npdt1\nLu\nalimentaire\nLu\n3\ngateau'),
(19, 'items', 1, 1, 'livr1', 'livr1\nlivr1\n15/11/2020\ntata'),
(20, 'items', 1, 1, 'fact1', 'fact1\nfact1\n2\n3'),
(21, 'items', 1, 1, 'adr1', 'adr1\nadr1\nrue de la louvière\nParis\n85456\nFrance'),
(22, 'items', 1, 1, 'client2', 'client2\nclient2\nadr2\nDelabatte\nHubert\nmasculin\n05/07/1970\ndelabatte.hubert@gmail.com\nadr2'),
(24, 'items', 1, 1, 'commandepdt2', 'commandepdt2\ncommandepdt2\n3\npdt2'),
(25, 'items', 1, 1, 'pdt2', 'pdt2\npdt2\nsony\nmutimedia\nsony\n10\ncable'),
(26, 'items', 1, 1, 'livr2', 'livr2\nlivr2\n25/05/2021\ntony'),
(27, 'items', 1, 1, 'fact2', 'fact2\nfact2\n8\n10'),
(28, 'items', 1, 1, 'adr2', 'adr2\nadr2\ncarpentier\ntoulouse\n58426\nfrance'),
(29, 'item_sets', 1, 1, 'commande1', 'commande1\ncommande1\n20/05/2021\n150\nfact1\nlivr1\ncommandepdt1\nclient1'),
(30, 'item_sets', 1, 1, 'commande2', 'commande2\ncommande2\n02/01/2020\n45\nclient2\nfact2\ncommandepdt2\nlivr2');

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
(15),
(17),
(18),
(19),
(20),
(21),
(22),
(24),
(25),
(26),
(27),
(28);

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
(29, 0),
(30, 0);

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
-- Structure de la table `livraison`
--

CREATE TABLE `livraison` (
  `num_livraison` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  `id_adresse` int(11) NOT NULL,
  `date_livraison` date NOT NULL,
  `livreur` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
('AatTaGqJmj3JBbHhyAjUJ3HOQwZeLlwA', 2, '2020-04-16 08:49:25', 1);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `marque` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `fournisseur` varchar(45) NOT NULL,
  `prix_unitaire` varchar(45) NOT NULL,
  `informations` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(259, 1, 11, 'id_client', 'id_client', NULL),
(260, 1, 11, 'Nom', 'Nom', NULL),
(261, 1, 11, 'Prenom', 'Prenom', NULL),
(262, 1, 11, 'Genre', 'Genre', NULL),
(263, 1, 11, 'Date_naissance', 'Date_naissance', NULL),
(264, 1, 11, 'Email', 'Email', NULL),
(265, 1, 11, 'id_commande', 'id_commande', NULL),
(266, 1, 11, 'Date_commande', 'Date_commande', NULL),
(267, 1, 11, 'Montant', 'Montant', NULL),
(268, 1, 11, 'id_commande_produit', 'id_commande_produit', NULL),
(269, 1, 11, 'Quantitee', 'Quantitee', NULL),
(270, 1, 11, 'id_produit', 'id_produit', NULL),
(271, 1, 11, 'Marque', 'Marque', NULL),
(272, 1, 11, 'Type', 'Type', NULL),
(273, 1, 11, 'Fournisseur', 'Fournisseur', NULL),
(274, 1, 11, 'Prix_unitaire', 'Prix_unitaire', NULL),
(275, 1, 11, 'Informations', 'Informations', NULL),
(276, 1, 11, 'id_livraison', 'id_livraison', NULL),
(277, 1, 11, 'Date_livraison', 'Date_livraison', NULL),
(278, 1, 11, 'Livreur', 'Livreur', NULL),
(279, 1, 11, 'id_facture', 'id_facture', NULL),
(280, 1, 11, 'Prix_ht', 'Prix_ht', NULL),
(281, 1, 11, 'Prix_ttc', 'Prix_ttc', NULL),
(282, 1, 11, 'id_adresse', 'id_adresse', NULL),
(283, 1, 11, 'Rue', 'Rue', NULL),
(284, 1, 11, 'Ville', 'Ville', NULL),
(285, 1, 11, 'Code_postal', 'Code_postal', NULL),
(286, 1, 11, 'Pays', 'Pays', NULL),
(287, 1, 12, 'location', 'τοποθεσία', 'The location of the thing.');

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
(15, 1, 161, 2, NULL, 'client1', 1, '2020-04-22 17:53:03', '2020-04-22 19:24:37', 'Omeka\\Entity\\Item'),
(17, 1, 163, 4, NULL, 'commandepdt1', 1, '2020-04-22 17:54:14', '2020-04-22 19:26:15', 'Omeka\\Entity\\Item'),
(18, 1, 164, 5, NULL, 'pdt1', 1, '2020-04-22 17:55:20', '2020-04-22 17:55:20', 'Omeka\\Entity\\Item'),
(19, 1, 165, 6, NULL, 'livr1', 1, '2020-04-22 17:56:01', '2020-04-22 17:56:01', 'Omeka\\Entity\\Item'),
(20, 1, 166, 7, NULL, 'fact1', 1, '2020-04-22 17:57:07', '2020-04-22 17:57:07', 'Omeka\\Entity\\Item'),
(21, 1, 167, 8, NULL, 'adr1', 1, '2020-04-22 17:57:55', '2020-04-22 17:57:55', 'Omeka\\Entity\\Item'),
(22, 1, 161, 2, NULL, 'client2', 1, '2020-04-22 18:00:24', '2020-04-22 19:25:29', 'Omeka\\Entity\\Item'),
(24, 1, 163, 4, NULL, 'commandepdt2', 1, '2020-04-22 18:02:43', '2020-04-22 19:26:45', 'Omeka\\Entity\\Item'),
(25, 1, 164, 5, NULL, 'pdt2', 1, '2020-04-22 18:05:36', '2020-04-22 18:05:36', 'Omeka\\Entity\\Item'),
(26, 1, 165, 6, NULL, 'livr2', 1, '2020-04-22 18:06:13', '2020-04-22 18:06:13', 'Omeka\\Entity\\Item'),
(27, 1, 166, 7, NULL, 'fact2', 1, '2020-04-22 18:06:47', '2020-04-22 18:06:47', 'Omeka\\Entity\\Item'),
(28, 1, 167, 8, NULL, 'adr2', 1, '2020-04-22 18:07:27', '2020-04-22 18:30:15', 'Omeka\\Entity\\Item'),
(29, 1, 162, 3, NULL, 'commande1', 1, '2020-04-22 18:33:16', '2020-04-22 19:20:17', 'Omeka\\Entity\\ItemSet'),
(30, 1, 162, 3, NULL, 'commande2', 1, '2020-04-22 18:34:12', '2020-04-22 19:23:36', 'Omeka\\Entity\\ItemSet');

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
(161, 1, 11, 'Client', 'Client', NULL),
(162, 1, 11, 'Commande', 'Commande', NULL),
(163, 1, 11, 'Commande_produit', 'Commande_produit', NULL),
(164, 1, 11, 'Produit', 'Produit', NULL),
(165, 1, 11, 'Livraison', 'Livraison', NULL),
(166, 1, 11, 'Facture', 'Facture', NULL),
(167, 1, 11, 'Adresse', 'Adresse', NULL);

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
(2, 1, 161, NULL, NULL, 'CLIENT'),
(3, 1, 162, NULL, NULL, 'COMMANDE'),
(4, 1, 163, NULL, NULL, 'COMMANDE_PRODUIT'),
(5, 1, 164, NULL, NULL, 'PRODUIT'),
(6, 1, 165, NULL, NULL, 'LIVRAISON'),
(7, 1, 166, NULL, NULL, 'FACTURE'),
(8, 1, 167, NULL, NULL, 'ADRESSE');

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
(28, 3, 1, NULL, NULL, 1, NULL, 0, 0),
(29, 3, 4, NULL, NULL, 2, NULL, 0, 0),
(32, 4, 1, NULL, NULL, 1, NULL, 0, 0),
(33, 4, 4, NULL, NULL, 2, NULL, 0, 0),
(35, 5, 1, NULL, NULL, 1, NULL, 0, 0),
(36, 5, 4, NULL, NULL, 2, NULL, 0, 0),
(42, 6, 1, NULL, NULL, 1, NULL, 0, 0),
(43, 6, 4, NULL, NULL, 2, NULL, 0, 0),
(46, 7, 1, NULL, NULL, 1, NULL, 0, 0),
(47, 7, 4, NULL, NULL, 2, NULL, 0, 0),
(50, 8, 1, NULL, NULL, 1, NULL, 0, 0),
(51, 8, 4, NULL, NULL, 2, NULL, 0, 0),
(56, 2, 260, NULL, NULL, 4, NULL, 0, 0),
(57, 2, 261, NULL, NULL, 5, NULL, 0, 0),
(58, 2, 262, NULL, NULL, 6, NULL, 0, 0),
(59, 2, 263, NULL, NULL, 7, NULL, 0, 0),
(60, 2, 264, NULL, NULL, 8, NULL, 0, 0),
(61, 2, 259, NULL, NULL, 3, NULL, 0, 0),
(62, 3, 265, NULL, NULL, 3, NULL, 0, 0),
(63, 3, 266, NULL, NULL, 4, NULL, 0, 0),
(64, 3, 267, NULL, NULL, 5, NULL, 0, 0),
(65, 4, 268, NULL, NULL, 3, NULL, 0, 0),
(66, 4, 269, NULL, NULL, 4, NULL, 0, 0),
(67, 5, 270, NULL, NULL, 3, NULL, 0, 0),
(68, 5, 271, NULL, NULL, 4, NULL, 0, 0),
(69, 5, 272, NULL, NULL, 5, NULL, 0, 0),
(70, 5, 273, NULL, NULL, 6, NULL, 0, 0),
(71, 5, 274, NULL, NULL, 7, NULL, 0, 0),
(72, 5, 275, NULL, NULL, 8, NULL, 0, 0),
(73, 6, 276, NULL, NULL, 3, NULL, 0, 0),
(74, 6, 277, NULL, NULL, 4, NULL, 0, 0),
(75, 6, 278, NULL, NULL, 5, NULL, 0, 0),
(76, 7, 279, NULL, NULL, 3, NULL, 0, 0),
(77, 7, 280, NULL, NULL, 4, NULL, 0, 0),
(78, 7, 281, NULL, NULL, 5, NULL, 0, 0),
(79, 8, 282, NULL, NULL, 3, NULL, 0, 0),
(80, 8, 283, NULL, NULL, 4, NULL, 0, 0),
(81, 8, 284, NULL, NULL, 5, NULL, 0, 0),
(82, 8, 285, NULL, NULL, 6, NULL, 0, 0),
(83, 8, 286, NULL, NULL, 7, NULL, 0, 0);

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
('67jgrt8ml55n5588er8mionl43', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373132333532362e3937393033373b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2238326d667433766268377567386d6f6161673263617271697164223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373032373937323b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373132373133323b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373033303435373b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226662653131343663333763613566303462366530396534613036383536303532223b733a33323a223365343263346433343030333635313037623630633233663538356439313339223b7d733a343a2268617368223b733a36353a2233653432633464333430303336353130376236306332336635383564393133392d6662653131343663333763613566303462366530396534613036383536303532223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223563373437653865613761356262363461626337636334613233376661333838223b733a33323a226633373334343164303531623461633330373266313233386234616632306637223b733a33323a223832396561303164336565303132656533326164363938636636626337306362223b733a33323a226331383861623639383065613165336235326530363561623435336437373030223b7d733a343a2268617368223b733a36353a2263313838616236393830656131653362353265303635616234353364373730302d3832396561303164336565303132656533326164363938636636626337306362223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223362383466613363666539643033333432653961363461356666376262326130223b733a33323a223335653937356430373338656633343635643632666164383665653864663865223b7d733a343a2268617368223b733a36353a2233356539373564303733386566333436356436326661643836656538646638652d3362383466613363666539643033333432653961363461356666376262326130223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587123533),
('77b9nvsatg54toki6c9qbomau6', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383233383936332e3933343233363b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226f34306f6f72373462356664307070397266376375396e30336d223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383234323531373b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538383234323536343b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383234323534313b7d7d72656469726563745f75726c7c733a33373a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e2f6d6f64756c65223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223231373338626435626237383531316265346566323939323938383536333634223b733a33323a226634646661313333656636326663393965373365633931663066663435396531223b733a33323a223633366337306630343064613933623936343939343736623032373333656361223b733a33323a223062336535363634383932326533396262363564383833356639323665623537223b7d733a343a2268617368223b733a36353a2230623365353636343839323265333962623635643838333566393236656235372d3633366337306630343064613933623936343939343736623032373333656361223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223635656536326563376665343639656536363339666363323439623230313836223b733a33323a223762346234623738663132663639306166333361633266376538656466653536223b733a33323a223332613238356561343962386236323330363833386163353830306561663238223b733a33323a223365653464323938393635366461353963383230653065616634323061346338223b733a33323a223031313838316265313237626339336266386638323761663566343162356638223b733a33323a223333626339643330303334643261366533316236663965303233333836393435223b7d733a343a2268617368223b733a36353a2233336263396433303033346432613665333162366639653032333338363934352d3031313838316265313237626339336266386638323761663566343162356638223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223838333932323233636261343561616265653833383532373137646136656466223b733a33323a223366343261373030633862663838663961653634353431353037366363653965223b733a33323a223533613138633662346364616664393337623539616664373536336539306134223b733a33323a226564663864663832386466633237653633653538373931373335373437353564223b733a33323a226233616464386238343036333935666639343164373636633035646231383966223b733a33323a223133623537663463623963386631613433346531663639663435626333383032223b733a33323a223339313062666632373837613835396364326439303561653662336263316134223b733a33323a223536396330356531366365613537646666343030396463663963613833623361223b7d733a343a2268617368223b733a36353a2235363963303565313663656135376466663430303964636639636138336233612d3339313062666632373837613835396364326439303561653662336263316134223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1588238964);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('du9d3ah2hi15onoc76vkfb92do', 0x5f5f5a467c613a393a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373538363535352e3634303330383b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226f6d6238303563653964736d33617432763073746c746b6d3836223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373530343037353b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538393537343b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373538383437383b7d733a31313a2245617379496e7374616c6c223b613a323a7b733a363a22455850495245223b693a313538373530353232313b733a31313a224558504952455f484f5053223b613a323a7b733a343a22686f7073223b693a31303b733a323a227473223b643a313538373530313632302e3830373536313b7d7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538393938363b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373537393332373b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373537363132373b7d7d72656469726563745f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e2f75736572223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223737303633353131613266313439643831316663663965363930346632323438223b733a33323a223636343331373131386166666666343833633966623937386638353737643334223b7d733a343a2268617368223b733a36353a2236363433313731313861666666663438336339666239373866383537376433342d3737303633353131613266313439643831316663663965363930346632323438223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a32353939333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3332313a7b733a33323a226337643964623437326363633163343631633433656233333137346166343338223b733a33323a223633323537393866363432373366626362666133656130333061376464333539223b733a33323a223563306464313564323635613630396638653263613664653835326433393639223b733a33323a223566303337363831306662613164316136306561643030383139313262656263223b733a33323a223262386338363130613133343762633162386633643834626232666135343662223b733a33323a223130613230343131386439343031383066626163323930326235356135303637223b733a33323a223337343530663239346330646330346565623331653738353038636532616366223b733a33323a226336626165366234616666653039623163363239326639633465306238376262223b733a33323a223632316132346265363238366134613865623962646538323938373537643133223b733a33323a223030323337393337663336326665373066386364383361383963356361386231223b733a33323a223162646562663663356632373134303036356333623632613434626439393034223b733a33323a223232393864613165663331663861656465383930336161393538323161336539223b733a33323a223533376530343761386230656237623639626431613337366232643866653939223b733a33323a226230353037613337633339383137333562643736393134333738323933393062223b733a33323a223439663464303162333061353831336562333232326138396138316538396433223b733a33323a226237333362633236653536363732346137386539353630383337333762393964223b733a33323a223262306161363365353963643430313664356437353265616235393835653239223b733a33323a223436356238613039633238396433313361653561316232353434316232363264223b733a33323a223764333735643734653633373064613564323731363532336464386562343733223b733a33323a223465393566373866636631616634653266366133396432303062646462643266223b733a33323a226435383934376235333132366436666632653434363037646564653936643061223b733a33323a226562353032633662666333316561393061373638653230653036373234666364223b733a33323a226239623237323930383939376661386635643837646162623762353035626234223b733a33323a223937326230363039363233656335303064336162396265366661313336653930223b733a33323a226639626364663837303439636338623566646433643066373534343865316162223b733a33323a226131363062363634353635623130383731333565346362653035333266333761223b733a33323a223865316539663538313464303034303365353363326337613639623632613733223b733a33323a226134633162643930663039366232373339316632363762666230643664613038223b733a33323a226237306530386531616638373235303236343935363261313136643137666437223b733a33323a223261363265656165626233626139356561643162376663653862356434646230223b733a33323a226334306530633230336239666265626535366465393839653739646335343136223b733a33323a223738383163356435396335663563666362356236363362393366373838396463223b733a33323a226134656664376531346233663032386236633033333963323165646331613166223b733a33323a223138396635353436646338366564623461306565393864303363663735353134223b733a33323a226262396461313633363734613535623362626233663938303236356366346663223b733a33323a223465636135633666363335326639613562353965363965353835336263366164223b733a33323a223432613761356230373734383133393264636135356138623136313735643732223b733a33323a226332626531383264636438303537653430333031613839346238663265313063223b733a33323a226662396539666335613765306365626534663539663761356639336631306239223b733a33323a226133666139633061663666386565383462343539643836663539353337366134223b733a33323a226230626363333533373465636330633865396262626233353766396534353032223b733a33323a226633333038363062313835646464323563633535363062633836393533623866223b733a33323a223335303439646666646162656431313530386636303837353662663964356434223b733a33323a223535633230323363386634356232356631633562326130363965373161636337223b733a33323a223435323732373864636633323239393933333265373561633537643332306237223b733a33323a223735643263656334613437636636643034343863336438643437363738633539223b733a33323a226665333330346630346331366231336561396132666230313333633133396132223b733a33323a223538636638663265333430646666313633346162626463656463303239333938223b733a33323a223835656137366361393933643064643930393530623738666437653039306638223b733a33323a223633663838663333353537306464356336633530643933663061336162303138223b733a33323a223030366464623134653933653631356362626235643238306631316664383333223b733a33323a223038613830386330653866653466653062373233366631663861663366663730223b733a33323a226330313234333861633734316565343430313038313562633332633862356463223b733a33323a223964626462643665326662363262623038393964343330626566646165393336223b733a33323a223663613732396366326363623563643237326366383630313463383533313331223b733a33323a226630393633306665396539363035383631383737386634333662376466333631223b733a33323a223062336539663337346462346337323330306366366131633635303132393961223b733a33323a223630386431363163623336346134626662666233376664333865623161626464223b733a33323a226337323061616566363566613435393135613061393431356230663431623439223b733a33323a223635656265313330306631373031333139633334653533663263336234333765223b733a33323a226561383961326264623835623730663638633265663962626135313661323333223b733a33323a226466393363366534653038396232623663623964666332393030303465653230223b733a33323a223133393664313563663362656330323762643735336437613633356664363731223b733a33323a226530343961623066643032353938666335613264346537663931303438326631223b733a33323a223134373063623234393031623464376634373336393562643536313732383236223b733a33323a223936353261393237636130393535373632353037373139326635376234653863223b733a33323a226337656138383036326462306533623836303734313365353136666533333932223b733a33323a226230376337363731626537613961313035313363366564616134386134636432223b733a33323a223239386234636466313735383038366664666365303838376430373963383239223b733a33323a223137633863623862346337346162363035343764333639633965643430663035223b733a33323a226435653735396431316137326661383038373661343766643037613237353462223b733a33323a226531303737653439333838613330343039393966303237626363663436356631223b733a33323a223733333738613866393536656636613239303632316338396362636538353432223b733a33323a226561393432363836643566613635646531643139333466383536616438633731223b733a33323a223064663364633038356535346334613662363032313235373832393033303263223b733a33323a223036646136363462333464656131613234623464326330623334393538333961223b733a33323a223566643235333766623264393335613033383163343866663864303737646439223b733a33323a223634396363386432656437313436373162303966663864373831343338353966223b733a33323a223639323663396365363834336362333662623564663030333566383031363963223b733a33323a223131383661626133353931376133653738346232373535643362316133653639223b733a33323a226162393565666663623966653936383933636661633736663638323865616534223b733a33323a226161303233333239323865633032633264653439613036643733383261373631223b733a33323a223931353166643732616661653362353036323161333531626430326366383834223b733a33323a226361616666663938653232366132393564323839336635336630393434356431223b733a33323a223263643336376461356634343633383733383730646535313065323062356232223b733a33323a223135386362613633663832303035316638633931386664393537636466343635223b733a33323a223863633661623736623732633265383833316462353763326162306636626237223b733a33323a226564386630313431613433373237616135656538313832636266623930376335223b733a33323a223363616262666639356332333132376537376466653965636265383131366366223b733a33323a223236623738623865313463386463323366353039636562646666336432386138223b733a33323a226665373862623264633761313965633138396432333839623434333239383634223b733a33323a226338643332383163323836303335653038393939303162626261363132313163223b733a33323a223663393131303937313264646333623731343639383434383139316564393332223b733a33323a226230333738633061336561663162646137333031653239646636316663646435223b733a33323a223139643063373931353362613438383933323763386531646433643430366463223b733a33323a226432376630633566343836326462303436383130303763316166626230396336223b733a33323a223362663733343530323266353065363465386662303061343661613836346162223b733a33323a223463346635653935386166353332623464643164346333303931343662323066223b733a33323a223765643666373566353166333138643934333838623332313538313161616462223b733a33323a226434626362656235353061623961323965373862386139303338353832353361223b733a33323a223262306662323937666533353837363462666265323063613961663736313034223b733a33323a223030386166336337346263353935633565396135663665343534303832303939223b733a33323a226636616131373130663262373664656561336666643937623039653231366466223b733a33323a223630336336626566643661653863326164666131326261663065363736643030223b733a33323a226632613261326365333034643733336631366366643537373032663862623933223b733a33323a223838363234323361666236653363633239303538393934616564376535623332223b733a33323a223139303132343962343366613839383337323138316239346538353038303061223b733a33323a223235636666343530663138613032343336376632316364326265373161623231223b733a33323a226537363932303638616537383034353862333566666464636537656538646564223b733a33323a226632633062323664313762313536363335356165666131393633646561616536223b733a33323a226538363465333533613666636364383534313832363034646431636362323632223b733a33323a223430653733653037306134323939623131336264333030626330343664333933223b733a33323a223962393837363831346531396631373339386563623732656235343134636433223b733a33323a223064646433326264333235346364306562343435616534303165393865666361223b733a33323a226535393539313930376239626437306461353863616437373238306664383131223b733a33323a223961343539336463333438313334626464376438346266366364396463333934223b733a33323a223461633262333136323163393730623837623932343635333736666134366635223b733a33323a223864383139376333646164303730626138356664646165653663323834616130223b733a33323a226638383730613137396462643939343137303235353433346139373265306664223b733a33323a223439613538626365323039396266323333303738333931353537646161373037223b733a33323a223033336135353161663636623238336532663461336465396434666137386363223b733a33323a226333663435346462663665353162303165343837646563366533383532336335223b733a33323a223836316663346362663364643665633730313833373730316333353438313235223b733a33323a223666333732633935376565633339393734633362323764313262316261363365223b733a33323a223766363434366535653131336561666437646330303630303234303632386430223b733a33323a223838323534353266626636393232343864656335346166663764303636306264223b733a33323a223936346131303433326132333833303334633863643031643366313737626639223b733a33323a223063353133373962333436613963303631313061316465316131373235303335223b733a33323a223535323335323039346666313361626261373136663136643533356335316435223b733a33323a226634326130353061633332316266613639333030316433633235633537646232223b733a33323a223833353965316534343735636236313138643466343062663038313263313362223b733a33323a223766363137323339343165306430383161393235303430323561663335616637223b733a33323a223030333865313963383032326265636232666538646133313862316263356664223b733a33323a223730376636313466663234633965303731303436653562303331393831366238223b733a33323a223961336337623637366465616133336336393961376163346138386430356537223b733a33323a223033323361616261353537376133303437613030306462373264306562383039223b733a33323a223062363464616263323132636438373739663639343832363036303237663336223b733a33323a223834316338663337663832353066633435386139376133306632333536303566223b733a33323a223535373336336137323666643138333061376331376639666231353562623230223b733a33323a226364356366366638373632613261646336616663356232626230646261386337223b733a33323a226637643636336163383430663261623236306563623734343566373361616538223b733a33323a226464383062386262323334633833346439306130326138663633636330636535223b733a33323a223665303661396137643264383565393538656663643863653362333636653763223b733a33323a223565353933663439363030653638623339666336373233636637313662616261223b733a33323a223133336262343862343432666438626665626332643538626334373338366333223b733a33323a223364376231653462643530663863653130353565376230653365386131393633223b733a33323a226131326333376539303066643734633466346136303530323037316365313662223b733a33323a226430383761356664636565646465343830333833396439656261346664396465223b733a33323a223165343032323266623662313536663262643464383461633263343264333431223b733a33323a223936646165376437333466303839643233393663613039303830393032346530223b733a33323a223839363634666431303736373961653464306139326165666330383832646662223b733a33323a223066343561373637633734663632343862383161613435643366643236333262223b733a33323a223336643233396565376262396563353539363432653962613131653137653261223b733a33323a223030383063353431363065363534373935366661366666313063616339353764223b733a33323a223030646132383466323335363139623233623234303230646137393264656161223b733a33323a226132626166393338633434393832656633316536383263616434386139343266223b733a33323a226332613439313339366538376632376164373734646637663838663833653633223b733a33323a223239326330313435623735363434623461623837373833366466393535306637223b733a33323a223634346463313061343333653034666533336233346336666332383635303761223b733a33323a223532613162636661363934393965386166313430393231663332633566616266223b733a33323a226237363261633831356531336332333631383236393865656161336534613861223b733a33323a223039373339306139326136313632656538326634323037613464343766303137223b733a33323a223562323230633032343133323165363063373133333239393637663366646565223b733a33323a223334383663313838373730386264376562636333666161646435363865656238223b733a33323a226235633136666130333563623438346634373331303235656538303533303234223b733a33323a223135303965303031646166613139373164656238633631363861303736643966223b733a33323a223561333736653036343061393033383263383261326432646465383164343333223b733a33323a226636303861393439626266393962663531623536623032313564373136626531223b733a33323a223833616431393361303933356663343166626135323935623664316431386664223b733a33323a223237306562393336356630623462663565646637336339626563346363356163223b733a33323a223666626363633834376537323936383463646665366334633039366262393465223b733a33323a223534383165393333373534353335326438376337666436323236626334623462223b733a33323a226431306663663764373165646261386636333466336232613334653764396563223b733a33323a223462323762313339376338323163646662386366366138356332623261373564223b733a33323a223838356163343538396665626330613064383730623938386338306136633865223b733a33323a223637653432323961333233623166316438363237353062636334613138336564223b733a33323a226566633939313033363233646163333032393936353261653832626130323062223b733a33323a223466386235343665333132383463366434633763386561343830376261303233223b733a33323a223962393065613530666562643466323137336565393833336439353131313535223b733a33323a223035643437653038633962313235373538373437646564383037656434383538223b733a33323a226561636234343031373730626462333734336165663231366163346531383332223b733a33323a223663303938616261333963613032626362313661393365656636623039623763223b733a33323a223566623661353937616465343261333961373831336235336131366462633764223b733a33323a223931626135336439343964393537653937393834613061613431343832316366223b733a33323a223338626430313137363737383731653130663533306263333161616664363464223b733a33323a223462666234666632333665316233363961343135336263646332323463343439223b733a33323a226661373533326231336136663234373031376562636562663765323939396337223b733a33323a223466303332383631303965333136623131663932343462373335333738653434223b733a33323a223734346462386636623337643763623035363031303233613463316338313735223b733a33323a223031393363386635373539376431643532313236336264626161343032616537223b733a33323a223663303937643731386633333963663464663531393065613466383537613365223b733a33323a223630663039363439373965393362323265396631653633306336353131663361223b733a33323a226163666263316532616464613062353939613165656131393733663835626431223b733a33323a223864326462336538626433633962343762326537353761313065393661333036223b733a33323a223731363462623863303232373339383335353733613435646461373765363965223b733a33323a223936363131666162343034353564363338346536663534366263373636393066223b733a33323a226261636635373731353761363437333639306166383839386630376236316364223b733a33323a226235316434316237363764353264393133653066383234343130616237383136223b733a33323a223038653336356430616437643937336531656264336265353535393866323862223b733a33323a223262353034303634613866653731636566333638316161623465613636373037223b733a33323a223431653362646636643133613231616336373334336435653864306536393431223b733a33323a226630356435613235353163663132353335633665646632643837336330363664223b733a33323a223933636462643431633565363166646534376634333361366339396366623931223b733a33323a226164633630356431306136663863343261346335346238643235376564396434223b733a33323a223863366166373964633166626662663964353931626262393636313066613131223b733a33323a226230643232666465336665666463613734303765643261383531393537333466223b733a33323a223931306233373435626331343863623266666631313332653465353065363934223b733a33323a223339616163333363393464626164343335613139656236393166623235323838223b733a33323a223132306231623138323232303230383935383331333036613738356133636430223b733a33323a223338323832323230653332663430303233326235633361306561323236663935223b733a33323a226262633434326232343838366662303063353330616261323430663638633362223b733a33323a223232393566373736323836373463343931393434363962333532613237623365223b733a33323a223936336365386434363432626138336530663264333263643364626265373730223b733a33323a223263333764353432663162653839316466306461656637326431643964363962223b733a33323a226436356336313263663166376131666163623838363836383438386163303366223b733a33323a223235623463616531636431313539643335343964376233393463666365393962223b733a33323a226435346334386137373636373232313463366562623164313937653463333035223b733a33323a223262656166373237656632663036343631646538393139306438326332303338223b733a33323a226432613730653237643030646431353036303361363765643338323664383231223b733a33323a226235653637303162646265643136303334623663666234303633303535393331223b733a33323a223762643063643165616239363461343930376232616165333538323565613936223b733a33323a223661356431626365616461646265633962653931303362646161303235333831223b733a33323a223762313363373666303366396133336230373139326433316331303965336337223b733a33323a226537303430623636396463336434623364626361323663343365633566383066223b733a33323a226366336538623561333730366531663330306131636636636566336337656639223b733a33323a226132366336383632383736656337336536386235323063626237623362343066223b733a33323a223366623662343663306462613431386165663436613332313966343364373265223b733a33323a223062633265633132636432366130353066316264303934616636373433613339223b733a33323a226566383934313636333261393937326362616235656330613739653539623634223b733a33323a223038626333386361373561316266323664346335313639653836313163666631223b733a33323a223538303339386539316161613562646630626139396362343762313534636638223b733a33323a223463633061303937346434306431623833376138313931306536366136366633223b733a33323a223036633961363638303838333263386633653830316130343736363361363431223b733a33323a226663313532646561303337306636666166373166393536383163626636313861223b733a33323a223162643162363238356330663533303938376166643566323462626135343238223b733a33323a223762636331653832313865363036326538383738303137353235383863353436223b733a33323a223361333635666565636461356637623434306531313665343839313839353037223b733a33323a223663383133353132373964326637383837333437336633643865306363356436223b733a33323a226234316565306333656137373838633632653164326461626434383334376463223b733a33323a223934393232663061363434343036303835653938333839663138333836366130223b733a33323a223331626637613263353131306630363535656663326666623031373831663664223b733a33323a226237646534373430316366333066326430326632353832623038303863303434223b733a33323a223036306236373236356339623237323130643732303361326131653136353965223b733a33323a223337323363363437373635656133303839313164653435326465346539653365223b733a33323a223531393838653364316639363034343235636661366530336663353263363039223b733a33323a223631333438396135623162666131376338383731383962343231373365383232223b733a33323a223132366233633132383934396234383965363961663335346437343862663462223b733a33323a223134613838663664393932356133643639346533333839323464653533313031223b733a33323a223332363465333332313639356336616264323530363133343531393461613663223b733a33323a226438636638343066623137616664333164303237303133313132376232613764223b733a33323a226537326538343266616333396264393361353830383137313165393263386363223b733a33323a223961323431616534363136666565343061623730306636636131653439353361223b733a33323a223438336537356634646630313932653635616339313839383335383162633834223b733a33323a226635356663333730626137323235613939363133323133326233363935646438223b733a33323a226562346164636238336230613362313061396139333432633361356634663638223b733a33323a223530306431653938613666653730366139386334393434306636353037306436223b733a33323a223037333962323065613965393739623165613161373362386666623662373430223b733a33323a223966636461383338616330363039626539373334373139333363316163326531223b733a33323a223034376530346466656232643935653361613866393733363163646239333537223b733a33323a223464626266323231343638353835373235373435666133376131326435616435223b733a33323a226536626537373863343064363764643234393361323334376261373734653136223b733a33323a223062363532393130316334656435346133663963653066323232306432313039223b733a33323a226164643563366636633931623331363266303238303832343739313335363037223b733a33323a223035636161643139323962626531613033616566333131323839616332313632223b733a33323a223734353630386338636161306665383232383738383365313562363936663964223b733a33323a223162363032336365666131666131353035656131623336343466313239336636223b733a33323a223738373166383564353530646637303937346364656233303536666463383663223b733a33323a223839386564666333376635393963393463383465316335333730386239323937223b733a33323a223739626438653064383135376332373230653835376165616131653733303138223b733a33323a223163383730373961626561333432623834373434373465363862393464386234223b733a33323a226630383634323631396362663633303930383561656537353838616630616564223b733a33323a223632623763633033346262653338366661613265626437656638343937623132223b733a33323a223730643339666664323936323134343837656638306435383635623764616535223b733a33323a223664636165383031626134653561623164653333333236323939326238306562223b733a33323a226530623833343464666563333663303832363163396433356331333130333733223b733a33323a223837396239303963653132326330393235336434356234396630666338363736223b733a33323a226236373265396462666337623739323438333038656163343632303166653363223b733a33323a226365613539346232396132653631386439636163303361663666366165343763223b733a33323a226465343963306165636561363139626336366334306262333537666663633731223b733a33323a226264306462363733383233366663386639396639616563363164303733333630223b733a33323a223432653738626531613663393535356632366339383836396235323937633435223b733a33323a223065663637656264303337316462373330366365633131643434613837326438223b733a33323a226537326464363035303538383665303837643965303430343935373237303533223b733a33323a223732613434623964393963643564356331386363656165373839393663316137223b733a33323a223961366261343839386566363561363364373536346661383838613339616631223b733a33323a226230336165363361316366346130633431343762646339333830383265643331223b733a33323a223464633561346636636565303763316135363438323861373963626239663738223b733a33323a223533653861363435373439653565326166326164353362366166376634623630223b733a33323a226562393930653166373433353233343234656535636637613630643466323962223b733a33323a223763396264626665356230623434633262343335643839656238613361336666223b733a33323a223834343331656538363133663432303535363235333461333931646333373334223b733a33323a226432613937336565666137363737653064383738303661306663386533303034223b733a33323a223165653561316530653766376633303565613638653539653738633466326532223b733a33323a226239323762326439316231613963663230306662623063333862373762383030223b733a33323a223566616235366238366263656339326439643866393333373063373132383066223b733a33323a226337383138323466666461623535326466613637316565626562333634623836223b733a33323a223964303962653066336336356565666163666162323262616330323463353733223b733a33323a226433373338646230336538303437336337346363633364323335383037613232223b733a33323a223335646339636464306533303632633864333131343830363730313236326161223b733a33323a223063343366353564313334386338636634653533343638386161373631343762223b733a33323a226132626463623532656264373132643537633330333338316636346330633331223b733a33323a223035653662363961613439363331373038323762663231333861313865326562223b733a33323a226139366365326533303637383561663435626338333736633936373139396233223b733a33323a226466663432386161373633313762623234333038646130393263633938336365223b733a33323a223664643463306161363339313237373133303737366330363534353133386339223b733a33323a223164613864643532303835386362666537353138383561316235396361653163223b733a33323a223461303664316361396362383961393965393538303535356164313965353330223b733a33323a226564623366663163626362333337373034323631333531343938363934613738223b733a33323a226134343531333035633731343733643032326464356131616462313831353135223b733a33323a226633653466326131623236373962376135376533613466613039343263373234223b733a33323a226432646166646632313734626131353337353239626435366131343965393538223b733a33323a226239346562363336303362376133643134303662393965626336643537613339223b733a33323a223037623263636162323833333737643636333962323062363436366333643662223b733a33323a223964363433366234336436303935363562386161396166343962343232636666223b733a33323a226338373039383839313731393038323339353362633464653263666633373962223b733a33323a223939643636353830333966376439656434346134363361316538376330306634223b733a33323a223335376338316364643536313464643535613830333165316266653934663432223b733a33323a223632303034323961323132393330303534386266643066353937626231333165223b733a33323a226161656336373730323034656665316334643162376135613039366138313061223b733a33323a223031396331323965626332613238646434323161653036366164363462343938223b733a33323a223837373235353564346132373130396638303863346464326231353934383136223b733a33323a226430333339386137323563346435633332626537373532336131393630326265223b733a33323a223438616463666632613866626666333631316462343132393630336530373762223b733a33323a226231633938316565663936656531623830663838613861656439373532666663223b733a33323a226437306438613561396133376661646634653732333863643338373236363166223b733a33323a223931393139616366326635386631343732616536656634633835313734393137223b733a33323a226139356235303137633830343633336139373262346432363131396562303761223b733a33323a226630363262323139333230333534633938393637326464646465613238323362223b733a33323a223435323734336665316137666135353837363032633362356535313532613261223b733a33323a223262336637633161373563623765376434303630626663393335623032316330223b733a33323a223766656230343235666232376537613739356533323734353335303135363732223b733a33323a223465356630363532376630303930656430616234386534386664333032656263223b733a33323a223562353333326664623465386130623461663261316633636637626363636163223b733a33323a226365376339373932313434353231623865323231366330656638663932613730223b733a33323a223934313435323830363138363965616666393133336466643336636134333638223b733a33323a223335346665313332376366336661666461666361633135613532336435396361223b733a33323a223532613238613633383237346661306134666538386332383963663638313433223b733a33323a223163363135373539633761353130613565613630626639326333653735626661223b733a33323a223435313939636466363436316233363733313431663133373534663437666466223b733a33323a223330383366333232646663633066653064653535323136346235323366346532223b733a33323a223631646664356236303030613338633637646232366661616464623930313937223b733a33323a223862653439623932653661303162323134616265353035373533656133333661223b733a33323a226535636662316662613137393232316235613034383734366463616361323362223b733a33323a223531613832353031643962633564613538623935353737356339326536306430223b733a33323a223365366162373639383437386434333630333634353831656536636537346666223b733a33323a226134373536303761316437346264383039313834333563346536313961623431223b733a33323a226237653632643138313730656663353038653430643239666266636663353662223b733a33323a223361373237346335613231353333393865353733343034303939383965656334223b733a33323a223631353032613235353764373661323261373163663733613066343230313563223b733a33323a226436333034626533303935393930656662396131393239363939623039343139223b733a33323a223832323833376331373032303466393764323366346233643130646639303830223b733a33323a223738373733313262313461316262663862366439633966393964336138306534223b733a33323a226631626231343437356236613735303338366434313338353138353536373161223b733a33323a226165663964653837633730376138393131643331306161383464373132373064223b733a33323a226261656432663865613731633764313231313464306662303034616662646336223b733a33323a223163373063613764383863653832666639326338343930386333396338326632223b733a33323a226534363164663536323862623138346364656632376261363461323938636162223b733a33323a223731393231356230373936623439636235616234316238386431636564373932223b733a33323a223637666566383931333365306134363364366333313531666565663862653462223b733a33323a226137623762336336616662343663306135323363666437633062383038613363223b733a33323a223966643932666230383666653330626535393537626562333964303432353937223b733a33323a223239663032633965383763636234356230613061353735393761346235613166223b733a33323a226236656137656335303339343066383137656530653733613662333530653165223b733a33323a226230373634383362646539396138393165636534396537623535376437393863223b733a33323a223932636432333134373364616439373761653134666230656130376261313138223b733a33323a226161323661383430323330666561343565383463366639623864613630613364223b733a33323a226439306662306335353133633665613663373530363038623362356230663039223b733a33323a226237333461663932626461633739363637356166343166356465363461326232223b733a33323a223965663733353238343365643933623062353263346465663961633635333530223b733a33323a226630353534336662303836636130376536383934653934663631323936393764223b733a33323a226231633531623932373937393432366438393338306232373839366261336231223b733a33323a226433663262623032343063393165666334363839386533633764383235323638223b733a33323a226165663862393533613766383836653464353061396166653834653166356136223b733a33323a223064393264343261636432313265343435333432663630653666383133633837223b733a33323a226135386539376662653365653366393030316534653466333764353465663762223b733a33323a226230323733333966393765393639396565663535393537653230316462623238223b733a33323a226233666565396662313132373864643864386333643232356361643737373739223b733a33323a223165653434393939643664316562366461633830386430386638316632306234223b733a33323a223330393530303531633066343334613032636562656664393961663931623831223b733a33323a223434363566636561386466656530323330643362666539376331396430373539223b733a33323a223961663638646266316361616161386164343238363338383134386334613336223b733a33323a226131343265376262366534653363353433633734373537626563396630353866223b733a33323a226535303438343763373666363934383732313136653036656666396530336438223b733a33323a226134323263343565386366636538623362376133393638663065383933393131223b733a33323a226366653531663334633361663766636462643937623032636361643132346337223b733a33323a223332393566313130326661663664396232666465333834666234383937386430223b733a33323a223965303863626132396137343636653030373232363634633635303664373934223b733a33323a226539663435656639666630343235363466316135306135323134356338323364223b733a33323a226131336539336162353634313261663863333363363065636333643438633162223b733a33323a226664343761353164633165376566366335666132633566653364356536316663223b733a33323a223235636332653762396534333634346161356130396562356335646266336336223b733a33323a226630613136313962613534316631643361313562623436303630306634373239223b733a33323a223739306335353633383934303961333761336636303939336461306336376261223b733a33323a223335356534366336363465333564323037363961343730333730613231356239223b733a33323a223061346266323062393166643365333230633336393336323037393166376634223b733a33323a223038303933616535626130323331303063616537383662613265303232373731223b733a33323a223138633262356664633362346566303236663136336636643531663030313132223b733a33323a223834343734383162303036356364646261636561306664333431396432333837223b733a33323a223261376363653737663263666432623639383638376231393638356361646338223b733a33323a223530396166353431303236383137613530323338663839343139626431623135223b733a33323a223237303737396362313965313232376165343731313931373135386166376637223b733a33323a226633636163346138383739353065383336386565396439333031646233386635223b733a33323a223963663035393836616335633037303838383365306664346266353265633136223b733a33323a226238393338343938303839313161303063373237663361306466343131313939223b733a33323a226664633330303632646536316438346165313238356539633833623363623037223b733a33323a223933336261383565353638303534663266356236643262376631393532333933223b733a33323a226162386363383237643565363133306638336535323939333864383866323936223b733a33323a226261343133353132373365666662653731623234383635633662626164643137223b733a33323a226163616663616232353861343163353539306264393365383437363632333332223b733a33323a223965396265386230366639653430343233343139643461353566366465383932223b733a33323a226236353836373764323037643431383738613936626234313261333637353932223b733a33323a223232636431623961373266656466373762663237616631613966313533353934223b733a33323a226338653630303833616437643133386234643936386132363832613166313462223b733a33323a223835323036613432363363316563386365376530323035353065393965306631223b733a33323a223963353965633630613561633064386138323838666564396130653363313432223b733a33323a226439646561303632333031623739623539626132646635306132613165393832223b733a33323a223139323837343063663863363733366438353261353735643931353062626233223b733a33323a223734363264323666363938613966343831666166336636383462376630653065223b733a33323a223066666161646434323863643736326363663737623332313863653132323235223b733a33323a223365393565613130613764376334346238343438626362353732623634646433223b733a33323a223031663431323566623463646633373466316432333761376539623763623364223b733a33323a223335643361323363363063373532336263663666383831623231633632613730223b733a33323a223031363565373438643236663934353338343234616139623366636266396263223b733a33323a226334303430313134363337316561396562346233643436373434613134313634223b733a33323a226435373366643936623338643233323633386538316534333965346533326662223b733a33323a223334376263353137386632313338383463643462376537333936336137643931223b733a33323a223462346165353139393465393739353266366633383639326132383332636336223b733a33323a223933396330643961343439326436313130333332333737613036346364643934223b733a33323a223330383764393731353531623633643038656338656637386162363739633130223b733a33323a226434633163666362353764383231663439393664376330373431323137626232223b733a33323a223337623130336534363137623566363466343462356238343438333834623965223b733a33323a226532616533393665323033623331323065303531326466316437366231616331223b733a33323a226365636234646335663136326564666261646332323230333134383133393361223b733a33323a223035646666393832303363663431363963656530346232313564386339326132223b733a33323a223834333430346430303837393531323365376237366464323931623466323131223b733a33323a223664386432633262643832663361663265393363343033613964303664323563223b733a33323a223436646363363538363863626561653763653237396131656138383033616265223b733a33323a226661353637313336343539316639666231313831366361616138323237343039223b733a33323a223361653639346162373766376362393434343965356131616332313665613439223b733a33323a223939356231373239376638353333393335653166613632343062643565333662223b733a33323a226462623863663163396263616365383834356235363331326365346563646365223b733a33323a223138333631623334333933396565366234366335333338303234663462643137223b733a33323a226539643333346365643336386133386462383138643461353639623737306430223b733a33323a226632616232343137643433613236396131396232663933363665303535616262223b733a33323a223963376533373738306664346236636231643233373761656261666530613261223b733a33323a226166383561363039376562333432386237313434646665373930656664363033223b733a33323a223939613938343664646337613135646432663630366662393062623938616637223b733a33323a226630363634346438623837393430313332653836343263353136626432373831223b733a33323a226335363131613665373962643035626431336532616365636661336163313136223b733a33323a223735666166303666383339626536626431356434376537623632353363376537223b733a33323a226432336636313964366536373163306165626138616162363439396566373261223b733a33323a226235363361376537313764313431313733343835323265376263386638663765223b733a33323a223132386361333161643139303838323436386337663266316661303064323434223b733a33323a223437393666616332343339326432643031656366626235613635353035623233223b733a33323a226432353864376637393439353931336134353235333230396265633236663831223b733a33323a223164376430623236633730383136383038643461303466646333663937333334223b733a33323a223462653037313761346263336262393664313739393234343436326136623231223b733a33323a223339343231303335393638353735323637323433343962326665663533646539223b733a33323a223366333664303337663932633633346633313333373933333562386130383866223b733a33323a223265326363323035656666396463373932656263653334633764626131623832223b733a33323a223566303864633662646537363366623066643134373966336334356539316137223b733a33323a223833636565366133313661333131616462393339616265353066656237386262223b733a33323a223531353534353138363339643832363337633834363638653632386364386536223b733a33323a223339383431316432383438633462343431653364323838346330373532323830223b733a33323a226264383134616537666332353462393330313265366264383565346564633337223b733a33323a223333323739313734333661633530353863363737643737373335303535313430223b733a33323a223839333031343731306661633234366439336462383130393530343661303636223b733a33323a223164366563313139376565626233643435633763636636666230383765306465223b733a33323a223236353032333632633865663433303533386363633631646364316539386233223b733a33323a226365623162316562303232306634663261303336613064643933393561333139223b733a33323a223336663732373964656235303231616139313533386536316461616134383465223b733a33323a223864663035616134326464663538396638346463666631616631646164616666223b733a33323a226164613362396566306465616437616339386562333433306630373739383537223b733a33323a223238666165323134386661323436656439646131306430636665353935633838223b733a33323a223535376461343161356364373139636464346364353338626235396134316430223b733a33323a223736643461326239366630613530306336633832313932353739333539343039223b733a33323a226436346131623764356663653866373536633135383466333561333566323462223b733a33323a226263333464663365303437363130613661363434326639663961363538663363223b733a33323a223331323239383065333136653638386263383061323163343462623564346136223b733a33323a223163383064316463633339333337353064353266396163363639666166613664223b733a33323a223161303133393237613132316134326365396466353963306661653566653434223b733a33323a223335363965333035303531376637393330346332666664346131663432386433223b733a33323a223931393463643964383232656237626364373464386238613564333863363562223b733a33323a223137636263336265306466646538336134663930346538366234666539343034223b733a33323a226164626335616361646161646235653637353036303634383266326364623138223b733a33323a226636383030356435383439323630386132316436323536653139343034393038223b733a33323a223536313635363130336335653562336436396438383261313363393665626161223b733a33323a226631366166643039343931303130343165666136323638313736643033643331223b733a33323a226137623632643539393530306536393630663533363061376432386430323430223b733a33323a223335653361303632323238393030313738616531323337323365363866363539223b733a33323a223361663739373932646334316265363933643233653834393838313934386132223b733a33323a226330316535333736353263626662666634333265366634386435336333316666223b733a33323a226165663637646533656433373761396163646263326439356638333664393931223b733a33323a226661326165653939613263623961666565396439616332373263643538386562223b733a33323a223938333635646639343533353739346634343230383336306234333330313039223b733a33323a226537333633366335326437633138663763323236333437636563613536663362223b733a33323a223863646632306136323738393030366431623336613637333835316431393738223b733a33323a223138326163626461393666633863353930616530303030363436316239336532223b733a33323a223336383362623736366536613861663433373930393533383362353334353466223b733a33323a223436313861386462336165643632366235653338323233336633383464616438223b733a33323a223035336634623738303065373035666665333631663234313865643738393836223b733a33323a223565353634616536323033336664313538636163383930373761316562633731223b733a33323a223062623632653163343063393931353138343839333832313033636130353736223b733a33323a223433613938306339376663646264643638306139386436326362636462356366223b733a33323a226430626630356261383463643063666438633163633363656331396331353036223b733a33323a223238323964636136666239363733303938393763343839336539666338386639223b733a33323a223136396535376461356366313132613865653831653831396231616136336564223b733a33323a226539393437626236366164336365613734623535386161373763346435636137223b733a33323a223735393631623966323032633239643034373637393838303437656630663037223b733a33323a223562353432663133366236633766326139393132313436396465303338386639223b733a33323a223332306366666663396563396238346434313530613137366133383832336264223b733a33323a226437363766656561343435643237633234653163633634383261613866353565223b733a33323a223666616336396231636635393435623532616165316365333233343564646538223b733a33323a226534623364323562383637666335616634363463613131663436653533366235223b733a33323a226336363535626438376564333838303765623939626334353430653861346230223b733a33323a223062616164363861303732396632373438336531646365306337383232613231223b733a33323a226161653735363163333132343863303866353465383931313064303264323765223b733a33323a223962663266666365383164633731363162316664643666313734306263343737223b733a33323a226331353266353933643662326532386432353963623733643565316538343436223b733a33323a223464303734613462666338666164356361656333393430346536393861623737223b733a33323a226436343533326539366262333361313665373639643934303761333138346164223b733a33323a223835363836633766393337646431623962396337393633643862363263343236223b733a33323a226139346662336634323730323830323039346632363331313932373966613363223b733a33323a223537656234313839313735343161323766636464643866396435656561656339223b733a33323a223161633961366166663831623037393339373264323665643837356238626436223b733a33323a226663306163346564356162353538313438623961636562356536633930623938223b733a33323a223735663566616434313732323664306533353938373335333234643439396438223b733a33323a226663346533356631633335663431316337313433373038653132326238323934223b733a33323a223763653662316331633662356366633237646539303463616433313931303032223b733a33323a223866313161613438363534366237656161326631356537376337623261666535223b733a33323a226164343733636535393131393234653566343563393338303337366233336133223b733a33323a223737303061626131326332373366316134663534323265346661623061666461223b733a33323a223864613233326461303463343561663566613432306164643531643636373833223b733a33323a223364663839653461383966363930613131633330353639343138653233663338223b733a33323a226238663430616530666639393336656162383030646635303537666464383062223b733a33323a226564323337326439656238333133303139633565666630663465383163393231223b733a33323a226333613139633435653732383537356237656566363931653330633930666461223b733a33323a226563313234373038363138653866613439356633303338663132313565323031223b733a33323a226265383235353134636132333031393065306166663666303739656663306361223b733a33323a226665663564643138396462303761336562616536626130313531616633313139223b733a33323a223266646638346538653731306534643761393161613337316132396132336231223b733a33323a223965336362313862613762363661376161626434656232333562626536636266223b733a33323a226330323138303535333837653764666564393631303138343963386230623334223b733a33323a223563666538393864373932383831656633656132336339613134366662653733223b733a33323a226166323837343732366165353266633037386263646565626538663439666631223b733a33323a223865316237653038313632663665393035653537376465663162313063386136223b733a33323a223564613666613334633439663730616364313834633761383864396362306230223b733a33323a226535363161656530336262623365363234373366326539393661373363366138223b733a33323a223331383431383361336537623237383963643662323232613666666162333739223b733a33323a223862343231633439653034646639326637663161326437663930303861326534223b733a33323a226231333331636436343534343864326265313236333539353239363538663365223b733a33323a223538353231636365663936316163303163356163383136653230333239376334223b733a33323a223138666566376662663632333164653133303463633032383165346161633931223b733a33323a226638383131323736356534313038373533343261333436323664373033393435223b733a33323a223037343261393334303166346563363832613565643464636561373439633231223b733a33323a226461303365306138656565336463383938633137613730396333323135396636223b733a33323a226632366264353837356238303438613230383832626365386162303161636364223b733a33323a226438316530306365623266366362653932343633363337666162326466623366223b733a33323a223366343235623264333934306662666431643937653064373938323665626535223b733a33323a223161616363353665373463656234303839323433663133393465306364316331223b733a33323a223238646566323533376361333965653637356336656133356634646362383434223b733a33323a223663623938353933393236653937306663356262316366363536356461316134223b733a33323a226265613235386337663630386565633435633066663666383162383765323466223b733a33323a223361646532353533363962386438633261383035646335616564626535626562223b733a33323a226332383163356430666333336564626564383666643035376537646130663837223b733a33323a226164366131333631396638633331346632303362313439333464616132363161223b733a33323a223864626639663130643737656461303833343531323939326538666664653439223b733a33323a226239386266386564666463656461613065633161666362313864343831643336223b733a33323a223736633863636332666164643531663434396433656263616434336165373438223b733a33323a226365653466616636353533383533366231376361343432393463323235666565223b733a33323a223566646439373862313931386336363636613439313664333737633839636538223b733a33323a223430333037343137636139613364633338363334363464616232623766656237223b733a33323a226333373436343964316130343639646134356336646439313631666562316132223b733a33323a226664353037333833396661323339316366313464396464663834663838326163223b733a33323a226361383265393933643035616233633530376631303630613164633466396132223b733a33323a226162383732323962356436653938323037643432663135363236366132356338223b733a33323a223339396165343735663565656465613831376461616466306537313338663261223b733a33323a226231316137643237303235643364653439366632306237393234316436386263223b733a33323a223137663766316332656566386661323865316431353133353938636631316166223b733a33323a226232646433326538383962313130366334366138313061346332666261613635223b733a33323a223431633662376664633631353761303636306665633364386430393264353163223b733a33323a226137393737316364323437303962633762303466333465373765343963646231223b733a33323a223630653830653064646232356136356563643034343935396163613033356664223b733a33323a226337613536316632623731396438393536643139393137373266343031623662223b733a33323a223063663836363137666330643734323162373439636439386137396533666638223b733a33323a223333373265313762656339353132653730656264313965393839346363366633223b733a33323a223536323834373966326533643863666236653531373030323065343265663233223b733a33323a226632626330663238653338366134343834313764663236333131316431353461223b733a33323a223335616139353561383034353430303633373438353330353766396631386261223b733a33323a223062656332366465373531373766303830633334343734383631653437376638223b733a33323a223933613535363031663830646432313639346564373335356534653838356361223b733a33323a223061346363323930656336316161323764326233303732323336306336656162223b733a33323a223663373861343566353033663165346133303563653632386439323032633134223b733a33323a226464323736316465393363376132643332653764336165306438646566343334223b733a33323a223738653962633233396462643463666536646665613232333365373536326230223b733a33323a223438303036373063383863383330396533623133306631303162626564633163223b733a33323a226463373664353464396432643136616161373564346232616161383239303362223b733a33323a226339643133613064653537613638663261376531363334616335323531363430223b733a33323a223861393261316431336165393034376233346461616334313064373562646566223b733a33323a223565323563623433373965323533383237383130353161613863643733346433223b733a33323a223064653764656164353539393162383432633130653038653635343535353565223b733a33323a223231313765643931663863306437363463336631353631353734643037613637223b733a33323a223431643536326361383863336263616537386466383138666663303261633533223b733a33323a223464313239353335316538333239303439656162363337616131633333393339223b733a33323a226366646637643334386661626339346666333734306130396630323039326331223b733a33323a226530616434373163356235376433653961393733386336313963313363303934223b733a33323a226337633864613238306439643463393030383035636431613761366330663464223b733a33323a226664386435393262666463303634373639326334376232326632643536643966223b733a33323a223032313166626463323735346564393530333366386438303361616462383965223b733a33323a223439343031623964336535396161316564376234626335663539376530653533223b733a33323a226332623637373137396139333833316164346235633730663230363333363339223b733a33323a223337336334623131383439356336373261373831613039363633346265383536223b733a33323a226137343737663937326331613362613233373138323862626535373535383962223b733a33323a223433313763653838386162663536393166623937646361393364336263663735223b733a33323a223939396136633134306232346665323631623834363066616263393234336634223b733a33323a223261633765383764316636363431333466333739303930626532623163343163223b733a33323a223434393763353637363865313561636130633037613764383034633236326539223b733a33323a223338323836313736643639323866366237663339393137386137383737613062223b733a33323a223332643832636435666633303761396237623164656462383233356434353339223b733a33323a223763383535333536623063383364383432333330633465346364313466353364223b733a33323a226136366631323232336232633638353331663865633664646266383034393066223b733a33323a223435323362333763636231653739373339373733663039333034356431346264223b733a33323a223565633633356235373463643635363236323534383564633733323965633532223b733a33323a226362643639303865306335653736396536323032383131313462386632616234223b733a33323a223064613532313666653633663364393935353532633031316131396138333833223b733a33323a226364373536663562346638306432383664326633643063373333353363376339223b733a33323a223136326165326536303031303633393063396131656233636134353233633065223b733a33323a223832393163373961653930333766623564333665623365333739363331363939223b733a33323a226234373539643465633666616165653761316132326461343631316130623538223b733a33323a223138303564663665363230666330633735303561346437626230626130643461223b733a33323a223961616263643030646438306433656633653537346138353030303962383264223b733a33323a223331356363323134623037636163616638303565346365353735663763646466223b733a33323a223534303264636437376537363631383436393636303062643463393864353235223b733a33323a226335656635353166666131343561323737303966373665373837653332663732223b733a33323a223163303436336164316637303037313335663737356539376437326639303765223b733a33323a223039303136656566623264613933303131633431326639383731313638383861223b733a33323a223438393539333336396339356638363531633633396238613666373230643737223b733a33323a223365326665333264306662323935363030373739616232363936623565336263223b733a33323a223731616137653834663737663564373062356135376535353265643835313738223b733a33323a226337643162626563333134616666666234663337623333303033393438653464223b733a33323a223231333937663933336636666264623361393031373130613866633538643938223b733a33323a223362383565616662323536613033633436316636653333636237386562663739223b7d733a343a2268617368223b733a36353a2233623835656166623235366130336334363166366533336362373865626637392d3231333937663933336636666264623361393031373130613866633538643938223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a363739323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a38313a7b733a33323a226336653638363033613339633563616464613139613633386339386535326130223b733a33323a223564333864383033393666663661613561653536666238393438306164633263223b733a33323a223838336334646435663333373937396331636563613132353165383733666131223b733a33323a226435656536393638643137633139356531646133646134353933333439303836223b733a33323a226337303134636435643339666635333664326634633835336336373131383662223b733a33323a223665613334306666656131366135303061636335303130373264373363346431223b733a33323a226637373339386134626334333035663866336233333139643361303534356538223b733a33323a223539363538383566353439316161666438666664653339383864663865336634223b733a33323a226166303833376634323837613637643163303662383535376165623861363566223b733a33323a223566636563623566626435323839613531616266623463323438343761343638223b733a33323a223634303563313830313163633461396435333330663564383463373866633163223b733a33323a223830663031393734636437303338626561376437306134306363316534316338223b733a33323a223437376337643532373936386135633662626661653264393238376265383164223b733a33323a226336333762656661663731663566343639383530396235316334303434353731223b733a33323a223633313132393565383866353338616532663762333436383432656137336264223b733a33323a223365303635363465396566636537643464643839363034336538633265303464223b733a33323a223135323566363734623530646435353931366266633563313730386238333261223b733a33323a223264383161323433663339643439643464326631373335643538366139373266223b733a33323a223265323739396631336633646430626566653430616239333633393361663037223b733a33323a223634663934613739643466353935663464643136363865313663633633626538223b733a33323a223830313862373938323862396462616537303338373933616364383962353739223b733a33323a226334633164303431643332356338323633303464303632633331623632643635223b733a33323a226535666533323066333531353263373238383637636234313835313064323862223b733a33323a226239663366663631626362346238343930623237613632386162376364633430223b733a33323a226132626132303839313438386637363134303635383339623635363439616564223b733a33323a223463356432313631366437363736633134393834666566323838663237356533223b733a33323a223537363335383337653135313065353562306361666162646462323363633734223b733a33323a226135366333396231653734323930323731666263323965623835303533363862223b733a33323a223437343738306563386334373138663366333066366666386236636639346138223b733a33323a223362373233623336376435343533396433366364326364386639383730613333223b733a33323a223066613335326137303262336261613762636138303534663734363737636438223b733a33323a223835306638643034333331326563666634613032316263653038383564643164223b733a33323a223132356333373563323234663666636339333533653730626236353861623533223b733a33323a223262333632373833623732633736666533346532363330616362353136346632223b733a33323a226233346164636363303235306337646665303165353630343166643262626262223b733a33323a223462323462343765376132333238646132643530326432646236356131366363223b733a33323a223463393930656331326232656639656430336339633632313762376462306234223b733a33323a226637656637356239313432323138613737333532326562313236656565376538223b733a33323a223633656439333766633331323866633163383231333933623061633831316334223b733a33323a223533663765343931346236633633653637636137663335393733366564616639223b733a33323a223539363631393833353937663732623938303530306432636536303032353830223b733a33323a223963366439343130623131306661666235326637363163313930346461323036223b733a33323a223935363866386139306530643732303638636664316131393435633230313833223b733a33323a223864616130626130646331626333643139323235393833373238613362633931223b733a33323a223431376638323132353038393732626464633234313235323364663063316636223b733a33323a223861313063643262333035663738303234383838613435363836323934386661223b733a33323a223232303464313036346138646361316238333031376136383962613637396564223b733a33323a223630303236643432383765383064616565383331333537386639356664353538223b733a33323a226637633763643239373836643339623337613366633731353266363030383464223b733a33323a223137616537633263333162343635373662343330363262303139613863383234223b733a33323a226236623334613534323631313631336338356437336334636239356633373531223b733a33323a223866613238353130626636623862383663333461353761316639613066313434223b733a33323a226238306632373164663666333237336538306336366139386338633666393335223b733a33323a223033313835303964633863313833313563663964373961383537663463633037223b733a33323a223338653865396335666139303966613466333436336661303537303838646261223b733a33323a226634373831373963626530613333663436356462376634353733333666376236223b733a33323a223330326134346166663730653864626635343835313364303362663038306431223b733a33323a223330373364636565636661323065656339393830666161383933633731633263223b733a33323a226131393131643164393165396362323463383531643435656437613237333734223b733a33323a226533316538663863306361303732666432616365343363646566653261643437223b733a33323a226462323164363065353961383835323732336636643635383161643065626331223b733a33323a226631353365643962383263663865393837353062353639643437316335373437223b733a33323a223864653530633035353931343035363263376532303263366638646666376439223b733a33323a226465393538346635613837393764653234646535653761316132613232323265223b733a33323a223962646235623639353734653834666264343734306265646266353231313537223b733a33323a223730336439333063333864353861346262326637326231346163343635376566223b733a33323a223331653233326330363836326361306235363032396232616261656566386136223b733a33323a226339666464333239343137373764666433656332323333396137653837356432223b733a33323a226661376136346235646535643432343631313031313337353738346336313163223b733a33323a226631333064653563366236613564313636376438373965346132623035323833223b733a33323a223833363237613463303133623266353863363535343938386236613833616439223b733a33323a223831313739323366396363373261346139316133346638666437663430663066223b733a33323a226163356637353537313462343638633134613039633532373566326537646430223b733a33323a223431663566643536343935373433393662386261646339653130346337353737223b733a33323a223933313532343931366535323232663065346566393334356562363033386661223b733a33323a226437386363373036653039316138646161653637643539373235613962393561223b733a33323a226634646163613434666539363065646332653139663338626666383064376233223b733a33323a226431386138343639323365306630383061326265306539663465353064363135223b733a33323a223835396163386634313335656663663833346164643331333533306562626436223b733a33323a223865333632303932366132623836666239623466326161613065353738303533223b733a33323a223966626435356437363633326265306135333764363337386362616566386234223b733a33323a226264613762626134626464393762363733393864336230623263343338643439223b733a33323a223634376637353066613739656638373637623932313933613663396636623964223b733a33323a223435626137313466353834316535616231353038306262373330616235636232223b733a33323a223938343335383637303537656163633663623961633831333563613630343434223b733a33323a223765346662383330336439636631333134396534383263623461316339343361223b733a33323a223835643737333734396131336235383761636631393738653236313735623330223b733a33323a223832323065393261623830353266313236303534323336393133386532656433223b733a33323a223364643665666333373765633932313762346262313431613137313635396632223b733a33323a223033346431613764656235613936613263653430626663396533616537366665223b733a33323a223662366232653530343664643430393232396631663965643736613839363739223b733a33323a223034643963353037336433343731316238643936316634613638366332626132223b733a33323a223463376263653033373765336563333665613333326539643462326130666365223b733a33323a223036333736353164373033303536343262303034303963393935633838623430223b733a33323a226534613462383530313036306366633333363739363731366136376532383731223b733a33323a223062336335363837376138323863313935663239633337376136643434323964223b733a33323a223266383736316437653961616138346135383030383762303836636338623932223b733a33323a223939373636623038613437373839616362303432346163666264613139333231223b733a33323a223064346530363731376339303036386663323064633937386332663764616134223b733a33323a223433306465356636383037333037333030373133613034623564383730666264223b733a33323a226666616464396265326561643930356335656561343332316537633137656262223b733a33323a226261353731373735643464323334656431623334616437613235376439386661223b733a33323a223064336262373734383064653835383766333037313961306438623065373032223b733a33323a226432663531646332396665373363623830653162616632306135303539666539223b733a33323a226663653932356535376631623333653164633962363664636334633062323262223b733a33323a223437613937333734656335373431623837323564386338303338373666623766223b733a33323a223564663333376133623136646563653538343634326535373638666636623262223b733a33323a223864666539386139626238626666633431613965343938333261316237633930223b733a33323a226661313465343339393436313239346338336466303366326631303734666337223b733a33323a223333653730636462353039303364313534383566336239306464623861363763223b733a33323a223264616161346463636235393965323063623463363765383531316138613163223b733a33323a223661363231356266643430333866363466303239386466316461363761653637223b733a33323a223062393561613566346236376535646433613938343431653933653138346632223b733a33323a223134653532326232326539393363323663303631303136336364613034643464223b733a33323a226465653164386637623265386561643233363363343764316239643535303932223b733a33323a226264386661383065666163366664643761346635363235346163616462353161223b733a33323a223430636532646136363264303161666261303536373761653532393433333733223b733a33323a223765306132636364386465313530356165353637636664366236383233386434223b733a33323a226132383435353533636430303362626131393735636532623435363630333663223b733a33323a223930353966613732636333306236303833623262376133613666656364333765223b733a33323a226436346134616666346264353831373335666661643639616164653033363830223b733a33323a226534313531663636393261643761393461656431343364353835383834613965223b733a33323a226236653264643065383238636565643139663430633265306633316531313337223b733a33323a223966396265633530636533633936656330303834393532383539633039326530223b733a33323a226465373635653538653165393133393363313537396532326334356330393437223b733a33323a223261363237623431666636613938363537373966313265663833663335316431223b733a33323a223237643935303166383932346635393231373435376234343538623530383038223b733a33323a226563616139363230333730303233326432383931623362383530613633363565223b733a33323a223866353266653930323532333635346630643037663464383965303637373166223b733a33323a226131333565613264613266373337323437336238383166656364366562306636223b733a33323a223065643861636463383862653431363430623539653761383464376266663534223b733a33323a223133343931656437373862663165333132366236666665313735343931396335223b733a33323a223638636239353336333238373961623364353233653631383933383865353037223b733a33323a226363653530623431333562366630336436333864303837633161326464653133223b733a33323a223032633835343530633061343332343736363462346163653936323933303830223b733a33323a226135666333353662323161633337666565346565636236376166383933636235223b733a33323a226531646561376666353332306565323133366633383534653831356432366532223b733a33323a223663643235633331653836666265306536663530616165643636323762343463223b733a33323a226166643461653961653532336430656261363363386633333030386464396538223b733a33323a226364336537626661336630353962396139633330636236336638396631636162223b733a33323a223630353334623337623631616338356433313039636464656539383865336430223b733a33323a226639343632363963393632613232633462316539616331386536643931323336223b733a33323a223939363234363532356630653361623932343765633436326162613937653234223b733a33323a223931313830623935303061373534316235356664343439313238386664323863223b733a33323a223062396336303762396630616537653864363564663666366630306539643764223b733a33323a223930353966626632373338393064336362323833356461353930353934393037223b733a33323a223566306133643463663534366662393661393639613832623734626231623564223b733a33323a223836366538376164633463646232386463336435336562373962386663666131223b733a33323a223438623431323335353934393838616466613932343830326364666335313165223b733a33323a226365393364366663663234623366353235313433666265633537343636383036223b733a33323a223966383562396331623862643432623437386165333735303637373063626338223b733a33323a223532616139353435633065373238653864303533333136616566656139303964223b733a33323a223464326361333162623830626336306531376532316236363533663761393636223b733a33323a226436396561643430323230623234656563636366383462393865323762663963223b733a33323a223636356561623265313431383039663963366663303136623731376364363231223b733a33323a226663323732656666366163376635383537663166323739353037646538633063223b733a33323a223537393438633730343061333865316439303539656438366530663339306161223b733a33323a223932663331643039373534323264383534376435373964376434326530306164223b733a33323a226262373937306633633831386332396533643031356161353732373436396264223b733a33323a226234343265653633383961366466303565306536653430633932343238643562223b733a33323a223963313736303533326663343836303131356561306134396637643034656336223b733a33323a223732396362646563316637663337633062643936373738346463396463656531223b7d733a343a2268617368223b733a36353a2237323963626465633166376633376330626439363737383464633964636565312d3963313736303533326663343836303131356561306134396637643034656336223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d45617379496e7374616c6c7c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3331303a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a363a226164646f6e73223b613a343a7b733a31313a226f6d656b616d6f64756c65223b613a303a7b7d733a31303a226f6d656b617468656d65223b613a303a7b7d733a363a226d6f64756c65223b613a303a7b7d733a353a227468656d65223b613a303a7b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223965343234646361646539373731653931633265343334616332353235643937223b733a33323a223132663833333335303265396337663361303339643630333334303535346135223b733a33323a226264343666646635323534643064396165393065313165623061333866316163223b733a33323a223036323366643563353436643933653862653430393538613164623362356130223b733a33323a226162393266353839393436393464393962326435323335393036323564316637223b733a33323a226430663735633231623931623039326538346565303963313561666639636364223b7d733a343a2268617368223b733a36353a2264306637356332316239316230393265383465653039633135616666396363642d6162393266353839393436393464393962326435323335393036323564316637223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a323535323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32383a7b733a33323a226231336465656637653233333732336533363463663861333434376266663035223b733a33323a223831616530633338396533626262653538613465663130393036313538373130223b733a33323a226363323166646437373966613831303331343933316534336161623230626331223b733a33323a223639383737326166393233613931623166376536646333623439343136356237223b733a33323a223438393136396631613765336430623135353466326638313233663161323330223b733a33323a223533366435663231656166313635323665383437613434303234346231303961223b733a33323a223361613963623264333430643062623237396634356134393764333130663338223b733a33323a223233656337306434363630303438303034343666333366663439616561333065223b733a33323a226332616432313339343232373136626130643966363862643934313162623433223b733a33323a223939633562613561303065643831333161306237643461623337616662346665223b733a33323a226335643062343262383230663334343435343930303139643438353865646135223b733a33323a223238316235326166663632316232613039333262306662323762616461386665223b733a33323a226165343836613932333735316131613063363565616239303931323766343530223b733a33323a226664386236666535616439386435613064636337626638383964623237643638223b733a33323a223462326566336165633930616633613935656337323664646630633531656630223b733a33323a223238653838303762353764303532316632663466336236656137303339616161223b733a33323a226638383635646636346536373338643530336436343737346261623036396134223b733a33323a223765306333623963633465663237353736383365643532663062336264353231223b733a33323a223336323933616239373937643464373034626234373933663265376132386336223b733a33323a223732343831393766313763656264376666323633356135353139663032613731223b733a33323a223739663631363337616265636465373539313463343066343835376132626633223b733a33323a223364343464336430626539316261613438326134303439656632333163343163223b733a33323a226261383834303833396433663334383035396334363836303939383831366633223b733a33323a226339666566386464623732336662326162396637636633336530363162323634223b733a33323a226138303936336538323262356331306533313537336261366266353930316531223b733a33323a223530633462636634396161316262663936643236323563626461326535323834223b733a33323a226332383132376632303834303563393234613135303037366338646339313930223b733a33323a226362373338663537656236303537623262643430336263373830313939656264223b733a33323a226435363038633733656464373638333934386161316134366666623633383438223b733a33323a223965323665636330353434376337393763326263663962656631353535303562223b733a33323a223935613339353764646333663431616162363663393130356137653738316164223b733a33323a226632333764306534376530346663353161616633393737363235636165386137223b733a33323a226262373138633566316666343666636363376435636138626266363138613466223b733a33323a223866656132333831643130303033306431383936666563633734356666663534223b733a33323a223036313565393831393865663832383664626466373030353734373166313766223b733a33323a226665623938303535313339316339313033383033633061616134663433633262223b733a33323a223862323730613130303035316466306366666265653135366666393439333939223b733a33323a223133663961663864666135313362616637316238336464616634306137623136223b733a33323a226564626239666432313830393437613839336334623930666530316366336165223b733a33323a223664306433363534383733376332643837653437373137666231363763623065223b733a33323a223837353365333065613931303430303836353439363962323236643230363831223b733a33323a223833313639646439626435656132623230353734386634336564643636356638223b733a33323a223262636462623034363061393935613639396262353864313266303434626233223b733a33323a223138353737373835636636623064656531616439626630306463623761623236223b733a33323a226465326539316234333334653762613730386361643961313036363735393034223b733a33323a223731356535353531333732313939636166313135633534326538376666373065223b733a33323a226434333334353130623334363639326435643034623237653264356362613339223b733a33323a223863353930303136383034666434383937376366663134303564386664373663223b733a33323a223135623366306636306366623939623735326535323535393836646534323837223b733a33323a226537666438316336653033323763373536616430313065666433343830366561223b733a33323a226637366461623934623430393164656138613132356363396634303866316535223b733a33323a223064343233363663636663346566636466353433313036313433313164346663223b733a33323a223935353832313230353266316132636632633433386464343464396431613966223b733a33323a226630343161343162343331626165663537636636303964666564643464336634223b733a33323a223261366438383730386564303638383865666139663966633264363538326263223b733a33323a226536643035663039633837313930373832313063323736343564363265393838223b7d733a343a2268617368223b733a36353a2265366430356630396338373139303738323130633237363435643632653938382d3261366438383730386564303638383865666139663966633264363538326263223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223639326265396466396365653538646136636333666264356638383237323932223b733a33323a223135656538396465323932393063333737613432343330633239306335333138223b7d733a343a2268617368223b733a36353a2231356565383964653239323930633337376134323433306332393063353331382d3639326265396466396365653538646136636333666264356638383237323932223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587586555);

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
('administrator_email', '\"clement.dareau@gmail.com\"'),
('default_site', '\"\"'),
('default_to_private', '\"0\"'),
('disable_file_validation', '\"0\"'),
('disable_jsonld_embed', '\"0\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"omeka\"'),
('locale', '\"\"'),
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
(1, 'clement.dareau@gmail.com', 'clmt_dr', '2020-04-16 08:06:09', '2020-04-16 08:06:10', '$2y$10$rk6lPeZ6Pf9ayUz37fvfCORacr8QixobbQODeCFd4zJPXqs2EOEnG', 'global_admin', 1),
(2, 'samuel.szoniecky@univ-paris8.fr', 'samuel szoniecky', '2020-04-16 08:49:25', '2020-04-30 09:29:23', '$2y$10$OL/mL39FRT1zV4hEYz9SNeAiVjFkRsDAGPE0Ok7wmIC1IK8fkXcLi', 'global_admin', 1);

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
(76, 15, 1, NULL, 'literal', '', 'client1', NULL, 1),
(77, 15, 259, NULL, 'literal', '', 'client1', NULL, 1),
(78, 15, 260, NULL, 'literal', '', 'toto', NULL, 1),
(79, 15, 261, NULL, 'literal', '', 'robert', NULL, 1),
(80, 15, 262, NULL, 'literal', '', 'masculin', NULL, 1),
(81, 15, 263, NULL, 'literal', '', '07/10/1995', NULL, 1),
(82, 15, 264, NULL, 'literal', '', 'toto.robert@gmail.com', NULL, 1),
(87, 17, 1, NULL, 'literal', '', 'commandepdt1', NULL, 1),
(88, 17, 268, NULL, 'literal', '', 'commandepdt1', NULL, 1),
(89, 17, 269, NULL, 'literal', '', '3', NULL, 1),
(90, 18, 1, NULL, 'literal', '', 'pdt1', NULL, 1),
(91, 18, 270, NULL, 'literal', '', 'pdt1', NULL, 1),
(92, 18, 271, NULL, 'literal', '', 'Lu', NULL, 1),
(93, 18, 272, NULL, 'literal', '', 'alimentaire', NULL, 1),
(94, 18, 273, NULL, 'literal', '', 'Lu', NULL, 1),
(95, 18, 274, NULL, 'literal', '', '3', NULL, 1),
(96, 18, 275, NULL, 'literal', '', 'gateau', NULL, 1),
(97, 19, 1, NULL, 'literal', '', 'livr1', NULL, 1),
(98, 19, 276, NULL, 'literal', '', 'livr1', NULL, 1),
(99, 19, 277, NULL, 'literal', '', '15/11/2020', NULL, 1),
(100, 19, 278, NULL, 'literal', '', 'tata', NULL, 1),
(101, 20, 1, NULL, 'literal', '', 'fact1', NULL, 1),
(102, 20, 279, NULL, 'literal', '', 'fact1', NULL, 1),
(103, 20, 280, NULL, 'literal', '', '2', NULL, 1),
(104, 20, 281, NULL, 'literal', '', '3', NULL, 1),
(105, 21, 1, NULL, 'literal', '', 'adr1', NULL, 1),
(106, 21, 282, NULL, 'literal', '', 'adr1', NULL, 1),
(107, 21, 283, NULL, 'literal', '', 'rue de la louvière', NULL, 1),
(108, 21, 284, NULL, 'literal', '', 'Paris', NULL, 1),
(109, 21, 285, NULL, 'literal', '', '85456', NULL, 1),
(110, 21, 286, NULL, 'literal', '', 'France', NULL, 1),
(111, 22, 1, NULL, 'literal', '', 'client2', NULL, 1),
(112, 22, 259, NULL, 'literal', '', 'client2', NULL, 1),
(113, 22, 259, 28, 'resource', NULL, NULL, NULL, 1),
(114, 22, 260, NULL, 'literal', '', 'Delabatte', NULL, 1),
(115, 22, 261, NULL, 'literal', '', 'Hubert', NULL, 1),
(116, 22, 262, NULL, 'literal', '', 'masculin', NULL, 1),
(117, 22, 263, NULL, 'literal', '', '05/07/1970', NULL, 1),
(122, 24, 1, NULL, 'literal', '', 'commandepdt2', NULL, 1),
(123, 24, 268, NULL, 'literal', '', 'commandepdt2', NULL, 1),
(124, 24, 269, NULL, 'literal', '', '3', NULL, 1),
(125, 25, 1, NULL, 'literal', '', 'pdt2', NULL, 1),
(126, 25, 270, NULL, 'literal', '', 'pdt2', NULL, 1),
(127, 25, 271, NULL, 'literal', '', 'sony', NULL, 1),
(128, 25, 272, NULL, 'literal', '', 'mutimedia', NULL, 1),
(129, 25, 273, NULL, 'literal', '', 'sony', NULL, 1),
(130, 25, 274, NULL, 'literal', '', '10', NULL, 1),
(131, 25, 275, NULL, 'literal', '', 'cable', NULL, 1),
(132, 26, 1, NULL, 'literal', '', 'livr2', NULL, 1),
(133, 26, 276, NULL, 'literal', '', 'livr2', NULL, 1),
(134, 26, 277, NULL, 'literal', '', '25/05/2021', NULL, 1),
(135, 26, 278, NULL, 'literal', '', 'tony', NULL, 1),
(136, 27, 1, NULL, 'literal', '', 'fact2', NULL, 1),
(137, 27, 279, NULL, 'literal', '', 'fact2', NULL, 1),
(138, 27, 280, NULL, 'literal', '', '8', NULL, 1),
(139, 27, 281, NULL, 'literal', '', '10', NULL, 1),
(140, 28, 1, NULL, 'literal', '', 'adr2', NULL, 1),
(141, 28, 282, NULL, 'literal', '', 'adr2', NULL, 1),
(142, 28, 283, NULL, 'literal', '', 'carpentier', NULL, 1),
(143, 28, 284, NULL, 'literal', '', 'toulouse', NULL, 1),
(144, 28, 285, NULL, 'literal', '', '58426', NULL, 1),
(145, 28, 286, NULL, 'literal', '', 'france', NULL, 1),
(146, 29, 1, NULL, 'literal', '', 'commande1', NULL, 1),
(147, 29, 265, NULL, 'literal', '', 'commande1', NULL, 1),
(148, 29, 266, NULL, 'literal', '', '20/05/2021', NULL, 1),
(149, 29, 267, NULL, 'literal', '', '150', NULL, 1),
(150, 30, 1, NULL, 'literal', '', 'commande2', NULL, 1),
(151, 30, 265, NULL, 'literal', '', 'commande2', NULL, 1),
(152, 30, 266, NULL, 'literal', '', '02/01/2020', NULL, 1),
(153, 30, 267, NULL, 'literal', '', '45', NULL, 1),
(154, 15, 282, 21, 'resource', NULL, NULL, NULL, 1),
(155, 22, 264, NULL, 'literal', '', 'delabatte.hubert@gmail.com', NULL, 1),
(156, 29, 279, 20, 'resource', NULL, NULL, NULL, 1),
(157, 29, 276, 19, 'resource', NULL, NULL, NULL, 1),
(158, 29, 268, 17, 'resource', NULL, NULL, NULL, 1),
(159, 29, 259, 15, 'resource', NULL, NULL, NULL, 1),
(160, 30, 259, 22, 'resource', NULL, NULL, NULL, 1),
(161, 30, 279, 27, 'resource', NULL, NULL, NULL, 1),
(162, 30, 268, 24, 'resource', NULL, NULL, NULL, 1),
(163, 30, 276, 26, 'resource', NULL, NULL, NULL, 1),
(164, 22, 282, 28, 'resource', NULL, NULL, NULL, 1),
(165, 17, 270, 18, 'resource', NULL, NULL, NULL, 1),
(166, 24, 270, 25, 'resource', NULL, NULL, NULL, 1);

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
(11, 1, 'https://localhost/COMMERCE', 'COMMERCE', 'COMMERCE', ''),
(12, 1, 'http://dbpedia.org/ontology/location', 'dbpedia-owl', 'dbpedia', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD PRIMARY KEY (`id_adresse`);

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
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`num_commande`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`id_facture`);

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
-- Index pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD PRIMARY KEY (`num_livraison`);

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
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

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
