-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 22 avr. 2020 à 19:43
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `omeka_test`
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
(1, NULL, 1, 'Type d\'article', NULL, 'Livre\nJeu\nJeu de rôle');

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
(1, 'items', 1, 1, 'Marcastel', 'Marcastel\nJean-Luc\n0366125411\njlm@fakeadress.fr\nFRZZ-1235-RT85-6585-GHTR\n62845\n6 01 222 555 63 112\nSAGL'),
(2, 'items', 1, 1, 'Jaworski', 'Jaworski\nJean-Philippe\nJPJ@fakeadress.fr\nFR0T - 16558 - 852 -oeuf\n9545356\n5 02 788 256 14 6'),
(3, 'items', 1, 1, 'Faye', 'Faye\nEstelle\n061258795948\nDE86-HTUI-2886-HY84\n58988\n6 7959462146585588745 56\nSACD'),
(4, 'items', 1, 1, 'Akkouche', 'Akkouche\nJérôme\nFR23 - fod^dgvpv-9856-etfh\n7 - 558588998- 03\nSGDL'),
(5, 'items', 1, 1, 'Vargas', 'Vargas\nFred\nFR12-1566-YTFJ-HGY\n8987878\n8-8995586233321 01\nSACD\nSGDL'),
(6, 'items', 1, 1, 'Dimension routes de légendes, légendes de la route.', 'Dimension routes de légendes, légendes de la route.\nLivre\nJeu\nJeu de rôle\nL789\n9781612275901\n2016\n30 EUR\n50\n31.65\n5.5\nAkkouche\nFaye\n Nous vous invitons au voyage, sur des chemins creux en bas de chez vous ou au-delà de notre galaxie, dans un camion pensant ou à bord d’un trois-mâts qui sent le sel et la poudre, au fond d’une jungle à fées, dans le Grand Nord ou sur la Route du Thé. Suivez des arpenteurs dans leur périple, cartographiez des territoires inconnus, survivez à des accidents dantesques et grimpez sur des panneaux de signalisation... Au passage, n’oubliez pas de ramassez les petits cailloux au bord de la voie. Qui sait quelle est leur histoire ? '),
(7, 'items', 1, 1, 'Louis le Galoup 1', 'Louis le Galoup 1\nLivre\nJeu\nJeu de rôle\nL56\nZ123\n9782354500450\n2009\n10\n100\n105.5\n5.5\nMarcastel\nLa nuit, le feu, une grande forteresse assaillie, une créature monstrueuse, un loup terrible, un loup debout... un galoup. Tel est le cauchemar qui hante Louis, dans son village au bout du monde, près de la Grande Brèche et de sa lueur maudite qui marque la fin du royaume et de toutes les routes...\nCe royaume que l\'ombre du Vicomte de Marsac, l\'Usurpateur, et de ses terribles barons.'),
(8, 'items', 1, 1, 'Debout les morts', 'Debout les morts\nLivre\nJeu\nJeu de rôle\nf5\n978-2290351307\n1995\n15 EUR\n156\n158,08\n5.5\nVargas\nDebout les morts est un roman policier français de Fred Vargas, paru en 1995. Ce quatrième roman obtient le prix du Polar de la ville du Mans, avant d’être couronné par le prix Mystère de la critique en 1996'),
(9, 'items', 1, 1, 'Gagner la guerre', 'Gagner la guerre\nLivre\nJeu\nJeu de rôle\nL1\nf15\n9782070464272\n2009\n15\n589\n15,75\n5.5\nJaworski\nGagner une guerre, c\'est bien joli, mais quand il faut partager le butin entre les vainqueurs, et quand ces triomphateurs sont des nobles pourris d\'orgueil et d\'ambition, le coup de grâce infligé à l\'ennemi n\'est qu\'un amuse-gueule. C\'est la curée qui commence. On en vient à regretter les bonnes vieilles batailles rangées et les tueries codifiées selon l\'art militaire. Désormais, pour rafler le pactole, c\'est au sein de la famille qu\'on sort les couteaux. Et il se trouve que les couteaux, justement, c\'est plutôt mon rayon...'),
(10, 'items', 1, 1, 'Interforum', 'Interforum\ninterforum@fake.com\nDistributeur'),
(11, 'items', 1, 1, 'Hachette', 'Hachette\nh@fake.eu\n03.101.56.12.54\nDistributeur'),
(12, 'items', 1, 1, 'Salon du fantastique', 'Salon du fantastique\nSalon'),
(13, 'items', 1, 1, '4562', 'Ventes\n4562\n10\nMarcastel\nLouis le Galoup 1'),
(14, 'items', 1, 1, 'C-4562', 'Ventes\nChiffre d\'affaire\nC-4562\n82\n2\nFaye\nAkkouche\nDimension routes de légendes, légendes de la route.'),
(15, 'items', 1, 1, 'V-123589489', 'Chiffre d\'affaires\nV-123589489\n2\nVargas\nDebout les morts'),
(16, 'items', 1, 1, 'C-777', 'Ventes\nC-777\n15\nJaworski\nGagner la guerre'),
(17, 'items', 1, 1, NULL, '150\n22/04/2020\n15\nSalon du fantastique\nGagner la guerre'),
(18, 'items', 1, 1, NULL, '3000\n01/06/2002\n300\nInterforum\nDebout les morts'),
(19, 'items', 1, 1, '31/12/2002', '31/12/2002\n54 EUR\n3054\nV-123589489\n\nVargas\nDebout les morts'),
(20, 'items', 1, 1, '31/12/2020', '31/12/2020\n150\nC-777\n\nJaworski\nGagner la guerre');

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
(20);

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
('MxGVgqloJJPGa3hWGr39bMT3TfuZLaxM', 2, '2020-04-15 13:38:40', 1);

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
(186, 1, 6, 'P1025', 'has accompanying material statement', NULL),
(187, 1, 6, 'P1011', 'has additional edition statement', NULL),
(188, 1, 6, 'P1151', 'has addition to parallel place of publication', NULL),
(189, 1, 6, 'P1144', 'has addition to place of publication', NULL),
(190, 1, 6, 'P1122', 'has bibliographic format of older monographic resource', NULL),
(191, 1, 6, 'P1157', 'has chronological designation', NULL),
(192, 1, 6, 'P1182', 'has common title of parallel title', NULL),
(193, 1, 6, 'P1147', 'has common title of series or multipart monographic resource', NULL),
(194, 1, 6, 'P1137', 'has common title of title proper', NULL),
(195, 1, 6, 'P1056', 'has composition of material', NULL),
(196, 1, 6, 'P1181', 'has compound title of parallel title', NULL),
(197, 1, 6, 'P1171', 'has compound title of title proper', NULL),
(198, 1, 6, 'P1001', 'has content form', NULL),
(199, 1, 6, 'P1158', 'has content form and media type area', NULL),
(200, 1, 6, 'P1185', 'has content form and media type statement', NULL),
(201, 1, 6, 'P1002', 'has content qualification', NULL),
(202, 1, 6, 'P1050', 'has coordinates', NULL),
(203, 1, 6, 'P1021', 'has date of printing or manufacture', NULL),
(204, 1, 6, 'P1018', 'has date of publication, production, distribution', NULL),
(205, 1, 6, 'P1184', 'has dependent title designation of parallel title', NULL),
(206, 1, 6, 'P1149', 'has dependent title designation of series or multipart monographic resource', NULL),
(207, 1, 6, 'P1139', 'has dependent title designation of title proper', NULL),
(208, 1, 6, 'P1183', 'has dependent title of parallel title', NULL),
(209, 1, 6, 'P1148', 'has dependent title of series or multipart monographic resource', NULL),
(210, 1, 6, 'P1138', 'has dependent title of title proper', NULL),
(211, 1, 6, 'P1024', 'has dimensions', NULL),
(212, 1, 6, 'P1160', 'has edition area', NULL),
(213, 1, 6, 'P1008', 'has edition statement', NULL),
(214, 1, 6, 'P1134', 'has equalization', NULL),
(215, 1, 6, 'P1052', 'has equinox', NULL),
(216, 1, 6, 'P1190', 'has expression aspect', NULL),
(217, 1, 6, 'P1053', 'has extent', NULL),
(218, 1, 6, 'P1075', 'has fingerprint', NULL),
(219, 1, 6, 'P1063', 'has frame alignment', NULL),
(220, 1, 6, 'P1129', 'has groove direction', NULL),
(221, 1, 6, 'P1130', 'has groove size', NULL),
(222, 1, 6, 'P1030', 'has international standard number of series or multipart monographic resource', NULL),
(223, 1, 6, 'P1191', 'has item aspect', NULL),
(224, 1, 6, 'P1033', 'has key title', NULL),
(225, 1, 6, 'P1076', 'has label name and catalogue number', NULL),
(226, 1, 6, 'P1155', 'has longitude and latitude', NULL),
(227, 1, 6, 'P1192', 'has manifestation aspect', NULL),
(228, 1, 6, 'P1163', 'has material description area', NULL),
(229, 1, 6, 'P1161', 'has material or type of resource specific area', NULL),
(230, 1, 6, 'P1013', 'has mathematical data area', NULL),
(231, 1, 6, 'P1003', 'has media type', NULL),
(232, 1, 6, 'P1014', 'has music format statement', NULL),
(233, 1, 6, 'P1166', 'has music format statement area', NULL),
(234, 1, 6, 'P1020', 'has name of printer or manufacturer', NULL),
(235, 1, 6, 'P1017', 'has name of publisher, producer, distributor', NULL),
(236, 1, 6, 'P1169', 'has name of publisher, producer, distributor statement', NULL),
(237, 1, 6, 'P1135', 'has noise reduction', NULL),
(238, 1, 6, 'P1045', 'has note', NULL),
(239, 1, 6, 'P1107', 'has note area', NULL),
(240, 1, 6, 'P1044', 'has note on basis of description', NULL),
(241, 1, 6, 'P1095', 'has note on bibliographic history', NULL),
(242, 1, 6, 'P1064', 'has note on bibliographic reference', NULL),
(243, 1, 6, 'P1078', 'has note on binding', NULL),
(244, 1, 6, 'P1094', 'has note on change to edition', NULL),
(245, 1, 6, 'P1136', 'has note on content form and media type', NULL),
(246, 1, 6, 'P1042', 'has note on contents', NULL),
(247, 1, 6, 'P1046', 'has note on copy in hand', NULL),
(248, 1, 6, 'P1097', 'has note on different editions', NULL),
(249, 1, 6, 'P1037', 'has note on edition area and bibliographic history', NULL),
(250, 1, 6, 'P1065', 'has note on frequency', NULL),
(251, 1, 6, 'P1040', 'has note on material description', NULL),
(252, 1, 6, 'P1038', 'has note on material type or resource specific type', NULL),
(253, 1, 6, 'P1067', 'has note on mode of access', NULL),
(254, 1, 6, 'P1073', 'has note on nature, scope, form, purpose or language', NULL),
(255, 1, 6, 'P1092', 'has note on numbers', NULL),
(256, 1, 6, 'P1124', 'has note on other relationships', NULL),
(257, 1, 6, 'P1086', 'has note on parallel titles and parallel other title information', NULL),
(258, 1, 6, 'P1039', 'has note on publication, production, distribution, etc.', NULL),
(259, 1, 6, 'P1101', 'has note on relationship between continuing resources', NULL),
(260, 1, 6, 'P1099', 'has note on relationship to other resources', NULL),
(261, 1, 6, 'P1098', 'has note on reproduction', NULL),
(262, 1, 6, 'P1079', 'has note on resource identifier and terms of availability', NULL),
(263, 1, 6, 'P1041', 'has note on series and multipart monographic resources', NULL),
(264, 1, 6, 'P1087', 'has note on statement of responsibility', NULL),
(265, 1, 6, 'P1100', 'has note on supplements, inserts, etc.', NULL),
(266, 1, 6, 'P1123', 'has note on supplement to or insert in', NULL),
(267, 1, 6, 'P1066', 'has note on system requirements', NULL),
(268, 1, 6, 'P1068', 'has note on title proper', NULL),
(269, 1, 6, 'P1096', 'has note on translations', NULL),
(270, 1, 6, 'P1091', 'has note on use or audience', NULL),
(271, 1, 6, 'P1090', 'has note providing a summary', NULL),
(272, 1, 6, 'P1015', 'has numbering area', NULL),
(273, 1, 6, 'P1031', 'has numbering within series or multipart monographic resource', NULL),
(274, 1, 6, 'P1133', 'has number of sound channels', NULL),
(275, 1, 6, 'P1131', 'has number of tape tracks', NULL),
(276, 1, 6, 'P1156', 'has numeric designation', NULL),
(277, 1, 6, 'P1023', 'has other physical details', NULL),
(278, 1, 6, 'P1006', 'has other title information', NULL),
(279, 1, 6, 'P1028', 'has other title information of series or multipart monographic resource', NULL),
(280, 1, 6, 'P1054', 'has pagination', NULL),
(281, 1, 6, 'P1143', 'has parallel additional edition statement', NULL),
(282, 1, 6, 'P1178', 'has parallel common title of series or multipart monographic resource', NULL),
(283, 1, 6, 'P1180', 'has parallel dependent title designation of series or multipart monographic resource', NULL),
(284, 1, 6, 'P1179', 'has parallel dependent title of series or multipart monographic resource', NULL),
(285, 1, 6, 'P1009', 'has parallel edition statement', NULL),
(286, 1, 6, 'P1119', 'has parallel music format statement', NULL),
(287, 1, 6, 'P1121', 'has parallel name of publisher, producer, distributor', NULL),
(288, 1, 6, 'P1116', 'has parallel numbering system', NULL),
(289, 1, 6, 'P1140', 'has parallel other title information', NULL),
(290, 1, 6, 'P1152', 'has parallel other title information of series or multipart monographic resource', NULL),
(291, 1, 6, 'P1145', 'has parallel place of publication, production, distribution', NULL),
(292, 1, 6, 'P1153', 'has parallel statement of responsibility of series or multipart monographic resource', NULL),
(293, 1, 6, 'P1058', 'has parallel statement of responsibility relating to an additional edition statement', NULL),
(294, 1, 6, 'P1142', 'has parallel statement of responsibility relating to edition', NULL),
(295, 1, 6, 'P1141', 'has parallel statement of responsibility relating to title', NULL),
(296, 1, 6, 'P1005', 'has parallel title', NULL),
(297, 1, 6, 'P1177', 'has parallel title (compound) of series or multipart monographic resource', NULL),
(298, 1, 6, 'P1027', 'has parallel title of series or multipart monographic resource', NULL),
(299, 1, 6, 'P1172', 'has parallel title statement', NULL),
(300, 1, 6, 'P1174', 'has parallel title statement of series or multipart monographic resource', NULL),
(301, 1, 6, 'P1019', 'has place of printing or manufacture', NULL),
(302, 1, 6, 'P1016', 'has place of publication, production, distribution', NULL),
(303, 1, 6, 'P1168', 'has place of publication, production, distribution statement', NULL),
(304, 1, 6, 'P1127', 'has playing speed', NULL),
(305, 1, 6, 'P1055', 'has playing time', NULL),
(306, 1, 6, 'P1060', 'has presence of colour', NULL),
(307, 1, 6, 'P1057', 'has presence of illustrations', NULL),
(308, 1, 6, 'P1062', 'has presence or absence of sound', NULL),
(309, 1, 6, 'P1126', 'has process or method of reproduction of still image', NULL),
(310, 1, 6, 'P1162', 'has publication, production, distribution, etc area', NULL),
(311, 1, 6, 'P1077', 'has qualification to identifier', NULL),
(312, 1, 6, 'P1150', 'has qualification to terms of availability', NULL),
(313, 1, 6, 'P1128', 'has recording method', NULL),
(314, 1, 6, 'P1061', 'has reduction ratio', NULL),
(315, 1, 6, 'P1032', 'has resource identifier', NULL),
(316, 1, 6, 'P1165', 'has resource identifier and terms of availability area', NULL),
(317, 1, 6, 'P1125', 'has resource identifier statement', NULL),
(318, 1, 6, 'P1051', 'has right ascension and declination', NULL),
(319, 1, 6, 'P1164', 'has series and multipart monographic resource area', NULL),
(320, 1, 6, 'P1146', 'has specific material designation', NULL),
(321, 1, 6, 'P1022', 'has specific material designation and extent', NULL),
(322, 1, 6, 'P1154', 'has standard identifier', NULL),
(323, 1, 6, 'P1049', 'has statement of coordinates and equinox', NULL),
(324, 1, 6, 'P1167', 'has statement of printing or manufacture', NULL),
(325, 1, 6, 'P1048', 'has statement of projection', NULL),
(326, 1, 6, 'P1029', 'has statement of responsibility of series or multipart monographic resource', NULL),
(327, 1, 6, 'P1059', 'has statement of responsibility relating to an additional edition statement', NULL),
(328, 1, 6, 'P1010', 'has statement of responsibility relating to edition', NULL),
(329, 1, 6, 'P1007', 'has statement of responsibility relating to title', NULL),
(330, 1, 6, 'P1047', 'has statement of scale', NULL),
(331, 1, 6, 'P1120', 'has subsequent numbering system', NULL),
(332, 1, 6, 'P1034', 'has terms of availability', NULL),
(333, 1, 6, 'P1093', 'has terms of availability statement', NULL),
(334, 1, 6, 'P1012', 'has title', NULL),
(335, 1, 6, 'P1159', 'has title and statement of responsibility area', NULL),
(336, 1, 6, 'P1118', 'has title of individual work by different author', NULL),
(337, 1, 6, 'P1117', 'has title of individual work by same author', NULL),
(338, 1, 6, 'P1004', 'has title proper', NULL),
(339, 1, 6, 'P1186', 'has title proper (compound) of series', NULL),
(340, 1, 6, 'P1026', 'has title proper of series or multipart monographic resource', NULL),
(341, 1, 6, 'P1170', 'has title statement', NULL),
(342, 1, 6, 'P1173', 'has title statement of series or multipart monographic resource', NULL),
(343, 1, 6, 'P1132', 'has track configuration', NULL),
(344, 1, 6, 'P1193', 'has work aspect', NULL),
(345, 1, 6, 'P1194', 'is expression reflected in', NULL),
(346, 1, 6, 'P1195', 'is item reflected in', NULL),
(347, 1, 6, 'P1196', 'is manifestation reflected in', NULL),
(348, 1, 6, 'P1197', 'is work reflected in', NULL),
(349, 1, 7, 'price', 'price', 'The offer price of a product, or of a price component when attached to PriceSpecification and its subtypes.<br/><br/>\n\nUsage guidelines:<br/><br/>\n\n<ul>\n<li>Use the <a class=\"localLink\" href=\"http://schema.org/priceCurrency\">priceCurrency</a> property (with standard formats: <a href=\"http://en.wikipedia.org/wiki/ISO_4217\">ISO 4217 currency format</a> e.g. \"USD\"; <a href=\"https://en.wikipedia.org/wiki/List_of_cryptocurrencies\">Ticker symbol</a> for cryptocurrencies e.g. \"BTC\"; well known names for <a href=\"https://en.wikipedia.org/wiki/Local_exchange_trading_system\">Local Exchange Tradings Systems</a> (LETS) and other currency types e.g. \"Ithaca HOUR\") instead of including <a href=\"http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_dollar_or_peso_sign\">ambiguous symbols</a> such as \'$\' in the value.</li>\n<li>Use \'.\' (Unicode \'FULL STOP\' (U+002E)) rather than \',\' to indicate a decimal point. Avoid using these symbols as a readability separator.</li>\n<li>Note that both <a href=\"http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute\">RDFa</a> and Microdata syntax allow the use of a \"content=\" attribute for publishing simple machine-readable values alongside more human-friendly formatting.</li>\n<li>Use values from 0123456789 (Unicode \'DIGIT ZERO\' (U+0030) to \'DIGIT NINE\' (U+0039)) rather than superficially similiar Unicode symbols.</li>\n</ul>\n'),
(350, 1, 9, 'name', 'name', 'The name of the item.'),
(351, 1, 9, 'url', 'url', 'URL of the item.'),
(352, 1, 9, 'identifier', 'identifier', 'The identifier property represents any kind of identifier for any kind of <a class=\"localLink\" href=\"http://schema.org/Thing\">Thing</a>, such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See <a href=\"/docs/datamodel.html#identifierBg\">background notes</a> for more details.'),
(353, 1, 9, 'description', 'description', 'A description of the item.'),
(354, 1, 9, 'potentialAction', 'potentialAction', 'Indicates a potential Action, which describes an idealized action in which this thing would play an \'object\' role.'),
(355, 1, 9, 'mainEntityOfPage', 'mainEntityOfPage', 'Indicates a page (or other CreativeWork) for which this thing is the main entity being described. See <a href=\"/docs/datamodel.html#mainEntityBackground\">background notes</a> for details.'),
(356, 1, 9, 'additionalType', 'additionalType', 'An additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. In RDFa syntax, it is better to use the native RDFa syntax - the \'typeof\' attribute - for multiple types. Schema.org tools may have only weaker understanding of extra types, in particular those defined externally.'),
(357, 1, 9, 'image', 'image', 'An image of the item. This can be a <a class=\"localLink\" href=\"http://schema.org/URL\">URL</a> or a fully described <a class=\"localLink\" href=\"http://schema.org/ImageObject\">ImageObject</a>.'),
(358, 1, 9, 'alternateName', 'alternateName', 'An alias for the item.'),
(359, 1, 9, 'sameAs', 'sameAs', 'URL of a reference Web page that unambiguously indicates the item\'s identity. E.g. the URL of the item\'s Wikipedia page, Wikidata entry, or official website.'),
(360, 1, 9, 'subjectOf', 'subjectOf', 'A CreativeWork or Event about this Thing.'),
(361, 1, 9, 'disambiguatingDescription', 'disambiguatingDescription', 'A sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation.'),
(362, 1, 10, 'occupancyAdults', 'occupancy adults (0..1)', 'The allowed total occupancy of adults (in the sense of fully paying guests) for the accommodation in persons. The exact definition of what constitutes an adult varies across regions and will typically not match the legal definition of being an adult. \nTypical unit code(s): C62 for person'),
(363, 1, 10, 'partOf', 'partOf (0..*)', 'A naive parthood relation between two acco:Accommodation instances. Examples: A certain hotel room is part of a certain hotel, a certain house is part of a holiday resort, etc. '),
(364, 1, 10, 'referenceQuantity', 'reference quantity (0..*)', 'The reference quantity for which a certain price applies, e.g. 1 EUR per 4 kWh of electricity. This property is a replacement for gr:hasUnitOfMeasurement for the advanced cases where the price does not relate to a standard unit.'),
(365, 1, 10, 'bed', 'bed (0..*)', 'The type of bed or beds included in the accommodation. For the single case of just one bed of a certain type, you use acco:bed directly with acco:BedType instances. If you want to indicate the quantity of a certain acco:BedType, use an instance of acco:BedDetails. For more detailed information, use acco:feature.'),
(366, 1, 10, 'priceComponent', 'price component (0..*)', 'This property links to all gr:UnitPriceSpecification nodes that apply in parallel for the acco:CompoundPrice node.'),
(367, 1, 10, 'availabilityTimes', 'availability times (0..1)', 'Indicates the times of availability of a particular accommodation feature. Example: The sauna is available from 8:00 - 10:00 a.m. on weekdays.'),
(368, 1, 10, 'occupancy', 'occupancy (0..1)', 'The allowed total occupancy for the accommodation in persons (including infants etc.\nTypical unit code(s): C62 for person'),
(369, 1, 10, 'typeOfBed', 'type of bed (1..1)', 'The type of bed to which the acco:BedDetail node refers, i.e. the type of bed available in the quantity indicated by acco:quantity.'),
(370, 1, 10, 'size', 'size (0..1)', 'The size of the accommodation, e.g. in square meter or squarefoot.\nTypical unit code(s): MTK for square meter, FTK for square foot, or YDK for square yard '),
(371, 1, 10, 'permittedUsage', 'permitted usage (0..*)', 'The type of objects that you are allowed to put on the camping pitch, e.g. a tent, car, boat, or mobile homre. Use DBpedia URIs whenever possible.'),
(372, 1, 10, 'occupancyMinors', 'occupancy minors (0..1)', 'The allowed total occupancy of minors (in the sense of not fully paying guests) for the accommodation in persons. The exact definition of what constitutes a minor varies across regions and will typically not match the legal definition of being a minor. \nTypical unit code(s): C62 for person'),
(373, 1, 10, 'numberOfRooms', 'number of rooms (0..1)', 'The number of rooms (excluding bathrooms and closets of the acco:Suite, acco:House, or acco:Apartment. \nTypical unit code(s): C62 for person'),
(374, 1, 10, 'includedFeature', 'included feature (0..*)', 'A feature (e.g. a characteristic or service) of the acco:Accommodation that is included in the offer for the main accommodation, i.e. at no extra costs. '),
(375, 1, 10, 'feature', 'feature (0..*)', 'A feature (e.g. a characteristic or service) of the acco:Accommodation. This generic property does not make a statement about whether the feature is included in the offer for the main accommodation or available at extra costs. '),
(376, 1, 10, 'optionalFeature', 'optional feature (0..*)', 'A feature (e.g. a characteristic or service) of the acco:Accommodation that is generally available but not included in the offer for the main accommodation, i.e. at  extra costs. '),
(377, 1, 10, 'unit', 'unit (0..1)', 'A textual representation of the unit of measurement, e.g. global identifier, e.g. \"m\" or \"meter\". When you have the UN/CEFACT Common Code for the unit available, it is better to use acco:unitCode. This property is for the cases where a standardized unit code is not available from the data source.'),
(378, 1, 10, 'value', 'value (0..1)', 'The point value for the feature unless it is an interval. If possible, use numerical datatypes, e.g. xsd:decimal, xsd:int, or xsd:float. Textual content is also acceptable, though.'),
(379, 1, 10, 'validThrough', 'valid from (0..1)', 'Indicates the beginning of a time interval during which a certain feature is valid or available. For example, a sauna or swimming pool may only be available during certain periods.'),
(380, 1, 10, 'gated', 'gated (0..1)', 'Indicates whether the accommodation is gated, i.e. access is controlled via a fence and some form of gate.'),
(381, 1, 10, 'validFrom', 'valid from (0..1)', 'Indicates the beginning of a time interval during which a certain feature is valid or available. For example, a sauna or swimming pool may only be available during certain periods.'),
(382, 1, 10, 'min', 'min (0..1)', 'The lower bound of the value for the feature. It is best to use this property with numerical datatypes, e.g. xsd:decimal, xsd:int, or xsd:float.'),
(383, 1, 10, 'unitCode', 'unit code (0..1)', 'The UN/CEFACT Common Code for the unit of measurement, e.g. \"MTR\" for meter, \"HUR\" for hours, etc. If you only have a textual representation of the unit of measurement, use acco:unit instead.'),
(384, 1, 10, 'propertyID', 'property ID (0..1)', 'A global identifier, e.g. a URI, a prefixed string, or any other identifier that can be used to refer to a standardized property type.\n\nThe following prefixes and values are reserved:\nstarRating:HOTREC \nstarRating:DEHOGA\nstarRating:WHR\nstarRating:Hotelstars\n'),
(385, 1, 10, 'quantity', 'quantity (1..1)', 'The quantity of the given bed type available in the acco:HotelRoom, acco:Suite, acco:House, or acco:Apartment.'),
(386, 1, 10, 'max', 'max (0..1)', 'The upper bound of the value for the feature. It is best to use this property with numerical datatypes, e.g. xsd:decimal, xsd:int, or xsd:float.'),
(387, 1, 10, 'petsAllowed', 'pets allowed (0..1)', 'Indicates whether pets are allowed to enter the accommodation.'),
(388, 1, 11, 'vocab.frPrixTTC', 'Prix TTC', NULL),
(389, 1, 11, 'vocab.frIBAN', 'Numero de compte bancaire', NULL),
(390, 1, 11, 'vocab.frNumSecu', 'Numéro de sécurité sociale', NULL),
(391, 1, 11, 'vocab.frSIRET', 'Numéro de SIRET', NULL),
(392, NULL, 11, 'vocab.frTVA', 'Taux de TVA', NULL),
(393, NULL, 11, 'vocab.frPourc1', 'Pourcentage 1', NULL),
(394, NULL, 11, 'vocab.frPourc2', 'Pourcentage 2', NULL),
(395, NULL, 11, 'vocab.frPourc3', 'Pourcentage 3', NULL),
(396, NULL, 9, 'affiliation', 'affiliation', 'An organization that this person is affiliated with. For example, a school/university, a club, or a team.');

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
(1, 1, 94, 5, NULL, 'Marcastel', 1, '2020-04-22 16:47:23', '2020-04-22 17:31:16', 'Omeka\\Entity\\Item'),
(2, 1, 94, 5, NULL, 'Jaworski', 1, '2020-04-22 16:49:50', '2020-04-22 16:49:50', 'Omeka\\Entity\\Item'),
(3, 1, 94, 5, NULL, 'Faye', 1, '2020-04-22 16:52:47', '2020-04-22 16:52:47', 'Omeka\\Entity\\Item'),
(4, 1, 94, 5, NULL, 'Akkouche', 1, '2020-04-22 16:55:35', '2020-04-22 16:55:35', 'Omeka\\Entity\\Item'),
(5, 1, 94, 5, NULL, 'Vargas', 1, '2020-04-22 16:56:50', '2020-04-22 16:56:50', 'Omeka\\Entity\\Item'),
(6, 1, 123, 2, NULL, 'Dimension routes de légendes, légendes de la route.', 1, '2020-04-22 17:01:56', '2020-04-22 17:39:08', 'Omeka\\Entity\\Item'),
(7, 1, 123, 2, NULL, 'Louis le Galoup 1', 1, '2020-04-22 17:05:10', '2020-04-22 17:39:43', 'Omeka\\Entity\\Item'),
(8, 1, 123, 2, NULL, 'Debout les morts', 1, '2020-04-22 17:08:17', '2020-04-22 17:40:30', 'Omeka\\Entity\\Item'),
(9, 1, 123, 2, NULL, 'Gagner la guerre', 1, '2020-04-22 17:10:11', '2020-04-22 17:41:09', 'Omeka\\Entity\\Item'),
(10, 1, 94, 3, NULL, 'Interforum', 1, '2020-04-22 17:12:08', '2020-04-22 17:12:56', 'Omeka\\Entity\\Item'),
(11, 1, 94, 3, NULL, 'Hachette', 1, '2020-04-22 17:13:38', '2020-04-22 17:13:38', 'Omeka\\Entity\\Item'),
(12, 1, 94, 3, NULL, 'Salon du fantastique', 1, '2020-04-22 17:14:17', '2020-04-22 17:14:17', 'Omeka\\Entity\\Item'),
(13, 1, 64, 6, NULL, '4562', 1, '2020-04-22 17:15:49', '2020-04-22 17:15:49', 'Omeka\\Entity\\Item'),
(14, 1, 64, 6, NULL, 'C-4562', 1, '2020-04-22 17:17:43', '2020-04-22 17:17:43', 'Omeka\\Entity\\Item'),
(15, 1, 64, 6, NULL, 'V-123589489', 1, '2020-04-22 17:18:39', '2020-04-22 17:25:37', 'Omeka\\Entity\\Item'),
(16, 1, 64, 6, NULL, 'C-777', 1, '2020-04-22 17:19:32', '2020-04-22 17:19:32', 'Omeka\\Entity\\Item'),
(17, 1, 28, 4, NULL, NULL, 1, '2020-04-22 17:21:14', '2020-04-22 17:21:14', 'Omeka\\Entity\\Item'),
(18, 1, 28, 4, NULL, NULL, 1, '2020-04-22 17:22:32', '2020-04-22 17:26:46', 'Omeka\\Entity\\Item'),
(19, 1, 157, 7, NULL, '31/12/2002', 1, '2020-04-22 17:25:03', '2020-04-22 17:27:42', 'Omeka\\Entity\\Item'),
(20, 1, 157, 7, NULL, '31/12/2020', 1, '2020-04-22 17:29:04', '2020-04-22 17:29:04', 'Omeka\\Entity\\Item');

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
(106, 1, 6, 'C2025', 'Compound Title Of Parallel Title Encoding Scheme', NULL),
(107, 1, 6, 'C2021', 'Compound Title Of Title Proper Encoding Scheme', NULL),
(108, 1, 6, 'C2003', 'Content Form And Media Type Area Encoding Scheme', NULL),
(109, 1, 6, 'C2026', 'Content Form And Media Type Statement Encoding Scheme', NULL),
(110, 1, 6, 'C2005', 'Edition Area Encoding Scheme', NULL),
(111, 1, 6, 'C2002', 'ISBD Syntax Encoding Scheme', NULL),
(112, 1, 6, 'C2008', 'Material Description Area Encoding Scheme', NULL),
(113, 1, 6, 'C2006', 'Material Or Type Of Resource Specific Area Encoding Scheme', NULL),
(114, 1, 6, 'C2012', 'Mathematical Data Area Encoding Scheme', NULL),
(115, 1, 6, 'C2013', 'Music Format Statement Area Encoding Scheme', NULL),
(116, 1, 6, 'C2019', 'Name Of Publisher, Producer, Distributor Statement Encoding Scheme', NULL),
(117, 1, 6, 'C2010', 'Note Area Encoding Scheme', NULL),
(118, 1, 6, 'C2014', 'Numbering Area Encoding Scheme', NULL),
(119, 1, 6, 'C2016', 'Other Physical Details Encoding Scheme', NULL),
(120, 1, 6, 'C2024', 'Parallel Title (Compound) Of Series Or Multipart Monographic Resource Encoding Scheme', NULL),
(121, 1, 6, 'C2018', 'Place Of Publication, Production, Distribution Statement Encoding Scheme', NULL),
(122, 1, 6, 'C2007', 'Publication, Production, Distribution, Etc Area Encoding Scheme', NULL),
(123, 1, 6, 'C2001', 'Resource', NULL),
(124, 1, 6, 'C2011', 'Resource Identifier And Terms Of Availability Area Encoding Scheme', NULL),
(125, 1, 6, 'C2028', 'Resource Identifier Statement Encoding Scheme', NULL),
(126, 1, 6, 'C2009', 'Series And Multipart Monographic Resource Area Encoding Scheme', NULL),
(127, 1, 6, 'C2015', 'Specific Material Designation And Extent Encoding Scheme', NULL),
(128, 1, 6, 'C2017', 'Statement Of Coordinates And Equinox Encoding Scheme', NULL),
(129, 1, 6, 'C2020', 'Statement Of Printing Or Manufacture Encoding Scheme', NULL),
(130, 1, 6, 'C2027', 'Terms Of Availability Statement Encoding Scheme', NULL),
(131, 1, 6, 'C2004', 'Title And Statement Of Responsibility Area Encoding Scheme', NULL),
(132, 1, 6, 'C2022', 'Title Proper (Compound) Of Series Or Multipart Monographic Resource Encoding Scheme', NULL),
(133, 1, 8, 'Tax', '租税', NULL),
(134, 1, 9, 'Thing', 'Thing', 'The most generic type of item.'),
(135, 1, 9, 'Quantity', 'Quantity', 'Quantities such as distance, time, mass, weight, etc. Particular instances of say Mass are entities like \'3 Kg\' or \'4 milligrams\'.'),
(136, 1, 9, 'Intangible', 'Intangible', 'A utility class that serves as the umbrella for a number of \'intangible\' things such as quantities, structured values, etc.'),
(137, 1, 10, 'Hotel', 'Hotel (gr:ProductOrService, gr:Location)', 'A hotel is an establishment that provides lodging paid on a short-term basis. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/Hotel)'),
(138, 1, 10, 'MeetingRoom', 'Meeting Room (gr:ProductOrService, gr:Location)', 'A meeting room, conference room, or conference hall is a room provided for singular events such as business conferences and meetings. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/Conference_hall)  '),
(139, 1, 10, 'Dinner', 'Dinner (gr:ProductOrService)', 'A dinner is the main meal of the day, often consumed in the evening of the day.'),
(140, 1, 10, 'Breakfast', 'Breakfast (gr:ProductOrService)', 'A breakfast is the first meal taken after rising from a night\'s sleep, most often eaten in the early morning before undertaking the day\'s work. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/Breakfast)'),
(141, 1, 10, 'Lunch', 'Lunch (gr:ProductOrService)', 'A luncheon, commonly abbreviated to lunch, is a middle of the day meal. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/Lunch)'),
(142, 1, 10, 'BedType', 'Bed Type', 'A type of bed. This is used for indicating the bed or beds available in an accommodation. Use DBpedia URIs whenever possible.'),
(143, 1, 10, 'Meal', 'Meal (gr:ProductOrService)', 'A meal in the sense of this vocabulary is some combination of food or beverages.'),
(144, 1, 10, 'BedDetails', 'Bed Details', 'A node holding detailed information about the available bed types, e.g. the quantity of twin beds for a hotel room. For the single case of just one bed of a certain type, you can use acco:bed directly with acco:BedType instances.'),
(145, 1, 10, 'Resort', 'Resort (gr:ProductOrService, gr:Location)', 'A resort is a place used for relaxation or recreation, attracting visitors for holidays or vacations. Resorts are places, towns or sometimes commercial establishment operated by a single company. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/Resort)'),
(146, 1, 10, 'CampingSite', 'Camping Site (gr:ProductOrService, gr:Location)', 'A camping site, campsite, or campground is a place used for overnight stay in the outdoors. In British English a campsite is an area, usually divided into a number of pitches, where people can camp overnight using tents or camper vans or caravans; this British English use of the word is synonymous with the American English expression campground. In American English the term campsite generally means an area where an individual, family, group, or military unit can pitch a tent or parks a camper; a campground may contain many campsites. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/Campsite)'),
(147, 1, 10, 'DwellingType', 'Dwelling Type', 'A type of dwelling, e.g. tent, mobile home, etc. for indicating the permitted usage on a campsite. Use DBpedia URIs whenever possible.'),
(148, 1, 10, 'Suite', 'Suite (gr:ProductOrService, gr:Location)', 'A suite in a hotel or other public accommodation, denotes a class of luxury accommodations, the key feature of which is multiple rooms. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/Suite_(hotel)) '),
(149, 1, 10, 'Accommodation', 'Accommodation (gr:ProductOrService, gr:Location)', 'An accommodation is a place that can accommodate human beings, e.g. a hotel room, a camping pitch, or a meeting room. Many accommodations are for overnight stays, but this is not a mandatory requirement.\n\nNote: For more specific types of accommodations not defined in this ontology, you can easily use any Wikipedia entry from \n\n    http://en.wikipedia.org/wiki/List_of_human_habitation_forms\n\nand replace the base URI\n\n    http://en.wikipedia.org/wiki/\n\nby\n\n    http://www.productontology.org/id/\n\nFor instance, if you want want to describe an igloo (http://en.wikipedia.org/wiki/Igloo) for rent, you can use the local part \'Igloo\' as a class identifier as follows:\n\n    http://www.productontology.org/id/Igloo'),
(150, 1, 10, 'CampingPitch', 'Camping Pitch (gr:ProductOrService, gr:Location)', 'A camping pitch is an individual place for overnight stay in the outdoors, typically being part of a larger acco:CampSite.'),
(151, 1, 10, 'HotelRoom', 'Hotel Room (gr:ProductOrService, gr:Location)', 'A hotel room is a single room in a hotel.'),
(152, 1, 10, 'Apartment', 'Apartment (gr:ProductOrService, gr:Location)', 'An apartment (in American English) or flat (in British English) is a self-contained housing unit (a type of residential real estate) that occupies only part of a building. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/Apartment)'),
(153, 1, 10, 'AccommodationFeature', 'Accommodation Feature', 'An accommodation feature is a structured value representing the feature of an accommodation as a property-value pair of varying degrees of formality.'),
(154, 1, 10, 'Allinclusive', 'All-inclusive (gr:ProductOrService)', 'All-inclusive in the sense of this vocabulary is a comprehesive set of foods and beverages, and sometimes complementing services, provided throughout the entire day.'),
(155, 1, 10, 'CompoundPrice', 'Compound Price', 'A compound price specification is one that bundles multiple prices that all apply in combination for different dimensions of consumption. Use gr:name for indicating the dimension (e.g. \"electricity\" or \"final cleaning\").'),
(156, 1, 10, 'House', 'House (gr:ProductOrService, gr:Location)', 'A house is a building or structure that has the ability to be occupied for habitation by humans or other creatures. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/House)'),
(157, NULL, 11, 'vocab.frOperation', 'Operation', NULL);

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
(2, 1, 123, 1, NULL, 'Article'),
(3, 1, 94, 144, NULL, 'Vendeur'),
(4, 1, 28, 1, NULL, 'Vente'),
(5, 1, 94, 144, NULL, 'Auteur'),
(6, 1, 64, 35, NULL, 'Contrat'),
(7, 1, 157, 7, NULL, 'Paiement');

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
(21, 2, 1, NULL, NULL, 1, NULL, 1, 0),
(22, 2, 8, 'Livre ou jeu?', NULL, 2, 'customvocab:1', 1, 0),
(23, 2, 35, 'Réf. interne (obligatoire)', NULL, 3, NULL, 1, 0),
(24, 2, 36, 'Réf. interne n°2 (optionnelle)', 'Mettre ici la référence interne n°2 si existante.', 4, NULL, 0, 0),
(25, 2, 99, NULL, NULL, 5, NULL, 0, 0),
(26, 2, 204, NULL, 'Année de publication ', 6, NULL, 1, 0),
(27, 2, 349, 'Prix HT', NULL, 7, NULL, 1, 0),
(28, 2, 108, 'Nombre en stock', NULL, 8, NULL, 0, 0),
(29, 3, 144, NULL, NULL, 1, NULL, 1, 0),
(30, 3, 139, NULL, NULL, 2, NULL, 0, 0),
(31, 3, 123, NULL, NULL, 3, NULL, 0, 0),
(32, 3, 146, NULL, NULL, 4, NULL, 0, 0),
(33, 3, 302, 'Type de vente (salon, distributeur etc)', NULL, 5, NULL, 1, 0),
(34, 4, 349, 'Montant de la vente par titre', NULL, 1, NULL, 1, 0),
(35, 4, 7, NULL, NULL, 2, NULL, 1, 0),
(36, 4, 385, 'Nombre par titre', NULL, 3, NULL, 0, 0),
(37, 4, 6, 'Vendeur', NULL, 4, 'resource:item', 1, 0),
(38, 4, 1, 'Article concerné', NULL, 5, 'resource:item', 1, 0),
(40, 5, 144, NULL, NULL, 1, NULL, 1, 0),
(41, 5, 139, NULL, NULL, 2, NULL, 1, 0),
(42, 5, 146, NULL, NULL, 3, NULL, 0, 0),
(43, 5, 123, NULL, NULL, 4, NULL, 0, 0),
(44, 5, 389, NULL, NULL, 5, NULL, 1, 0),
(45, 5, 391, NULL, NULL, 6, NULL, 0, 0),
(46, 5, 390, NULL, NULL, 7, NULL, 0, 0),
(47, 2, 388, NULL, NULL, 9, NULL, 1, 0),
(48, 2, 392, NULL, NULL, 10, NULL, 1, 0),
(49, 6, 4, 'Type de droit (sur les ventes ou le chiffre d\'affaire)', NULL, 1, NULL, 1, 0),
(50, 6, 35, 'Numéro de contrat', NULL, 2, NULL, 1, 0),
(51, 6, 393, NULL, NULL, 3, NULL, 1, 0),
(52, 6, 394, '(optionnel)', NULL, 4, NULL, 0, 0),
(53, 6, 395, '(optionnel)', NULL, 5, NULL, 0, 0),
(54, 6, 6, 'Auteurs concernés', NULL, 6, 'resource:item', 1, 0),
(55, 6, 1, 'Livre ou jeu concerné', NULL, 7, 'resource:item', 1, 0),
(58, 7, 7, 'de paiement', NULL, 1, NULL, 0, 0),
(59, 7, 349, 'Bonus', NULL, 2, NULL, 0, 0),
(60, 7, 388, '(total à verser)', NULL, 3, NULL, 0, 0),
(61, 7, 36, 'Contrat concerné', NULL, 4, 'resource:item', 0, 0),
(62, 7, 35, 'Vente concernée', NULL, 5, 'resource:item', 0, 0),
(63, 5, 396, 'Affiliation à une association', NULL, 8, NULL, 0, 0),
(64, 7, 144, 'Auteur concerné', NULL, 6, 'resource:item', 1, 0),
(65, 7, 1, 'Article concerné', NULL, 7, 'resource:item', 1, 0),
(66, 2, 58, 'Auteur concerné (dupliquer si plusieurs)', NULL, 11, 'resource:item', 1, 0);

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
('2fds7470g4qn3riecmlbbiv0lp', 0x5f5f5a467c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373537373330352e34343036373b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226b68643433306962693131306b386d716a703738766a316b6871223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373537373239383b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373538303834383b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538303635333b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538303930363b7d7d72656469726563745f75726c7c733a34343a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732d322e312e312f6f6d656b612d732f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223736613764333834363733633835373538343965656664396361356133386632223b733a33323a223665646633666466396538616238363762326636336461353964663432616566223b7d733a343a2268617368223b733a36353a2236656466336664663965386162383637623266363364613539646634326165662d3736613764333834363733633835373538343965656664396361356133386632223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a333033323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33343a7b733a33323a223332616364626163306138326666393063306631663939646262393630663163223b733a33323a223439346661623964646436386236656332333962353335643330616530656561223b733a33323a226633376231656266366334643362323530343832643365666337646261346363223b733a33323a226131323765643835366430633966623934366162653734343464636462343063223b733a33323a226638396331346236643031373133323433363166333266353161656163653534223b733a33323a226561306435303662353934633133316336306464373437383131323937376537223b733a33323a223066333837343134363862653562323066383639643732646161663137386633223b733a33323a223531316261343533666265373430623039303463633035323266306164313364223b733a33323a226535393065346335633063663966626231346436626237623136336264313561223b733a33323a223530356436633464373962326638633662373762356234336465313536666139223b733a33323a223337646664303365306263323130396530643132393433383339636665363035223b733a33323a226161643963646465323065343865316665393839353362303931333835303166223b733a33323a223730633531346137363562643938383464353835346138333864396434613732223b733a33323a226164306332613861636366353062326638353364663966366430313133393134223b733a33323a226132303337306534333564393532396564323265376562313332653031366639223b733a33323a223235343731373866353636393330663734363763316466323136653765326138223b733a33323a226636343137343433646439353061383739363134663338363065303438636133223b733a33323a226636623639393032346434633037653463393164356438356136363739393536223b733a33323a223765366365323662323566363865646431626434613237323434373830343030223b733a33323a223730666337633431653834653664303536633663356630353363323233363937223b733a33323a226364386639323438656561313432613265346163636131393137643865346234223b733a33323a223438343265303962396433336262623136353866633630643035643063363364223b733a33323a226564636566326537653061326165613433643538306234383037656534383066223b733a33323a223638356539366435616164336231363464663630653466643136626634633731223b733a33323a223139346638623765653531363562643432326366363732386236396532333339223b733a33323a223261303166616565373765366466313465363231373163306665613131356137223b733a33323a226630393762636534613065346466643666303265393635343131653235313335223b733a33323a223033346638666133613533316464393366643433303231636435616166363637223b733a33323a223933396139656630386566323836363763333935326333663638346463373966223b733a33323a223830646631326337363264626666386330383663393334326638653136663039223b733a33323a223430653739386530633335373330636232313031613939623761393561643063223b733a33323a226231636534353431656130313531323361656662373962616634393237303833223b733a33323a223765666565636664626263636663666139363433666239366531643634653432223b733a33323a223266633364326166623861393363303164646662626163333964653335646130223b733a33323a226163323838636264373836363934393238633433656363316466656134666662223b733a33323a223465363037393837653464663164633931316434333639656662326365633363223b733a33323a226333386234316139616234313364636637653365386437326164643332626435223b733a33323a226432306537623835383435393664313866633339373030646462333430633137223b733a33323a223062313233643134383532383066396234656139343836383037626632653162223b733a33323a226635386135303136656630663462393332323834633131303762333635346530223b733a33323a226339323535356263336361323130383664383461623236333631363537366334223b733a33323a223636386562623564333634366130326532343466316433323862393532623333223b733a33323a223134373261613230323233356634386435356264363031356333333839666338223b733a33323a223961366664623331383661343337373035343063653365383362653634633134223b733a33323a223165623036366636386637623239313162366564303363303030366264333832223b733a33323a226365366133343739396131333031353136333638346134343732346464383264223b733a33323a223262623434383562663030343563663734363138343534653266613761383035223b733a33323a223538653864613435323433333036346263393537613533613931313834643564223b733a33323a226532626263313466343635343832653566323265626437383138643436383463223b733a33323a223964306234623161633839323663616339323032353830313732376566616363223b733a33323a223130633435376163343532373038663263613934363663386461396564623536223b733a33323a223362666337373563393234633830316265313164396266343034356131326333223b733a33323a226563336636626362396335363135323835623338386633376132636633333137223b733a33323a226562366538373439356638623561626236373931383365346166393464356265223b733a33323a223435306639613431393339646562363130313539386430353364373461653162223b733a33323a223362353435343766376335386331333063643232626437303163363266363965223b733a33323a223735623166616333353064326466383565643634363937333539396163613734223b733a33323a226139383964663038336139326434396635613062373933323561666231643962223b733a33323a223364383430333334636466396536633235363338373666623065313639653262223b733a33323a223231376638396134653764613333323831623066303836393931326363383833223b733a33323a223737343362373634376433353465663838313931663564316264646436316637223b733a33323a223264366665653163316461343832633861306439326564663437663032646531223b733a33323a223465363232653732666361393532373930356538633065333836336230363863223b733a33323a223263623939346136386332633061353039633762613633343265346337643565223b733a33323a226462666434323433616230303231643663383663363836353066366562646534223b733a33323a223364636234323264626562326361623834303230363766616437366432336566223b733a33323a223631373966393034363439383165333031323264666561373234363836323732223b733a33323a223831336135663362663665383038333737386632323363643437376361373964223b7d733a343a2268617368223b733a36353a2238313361356633626636653830383337373866323233636434373763613739642d3631373966393034363439383165333031323264666561373234363836323732223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223335386462336436303231616266343132366564386431653564656239386632223b733a33323a226166383264383835393832333135643332356139623132356130663566336438223b733a33323a226237643933636562386263646333613663366564353739333235613664653838223b733a33323a226265646561613539303936313663303262626339636266393834646132336438223b733a33323a226663373434626263383861666162303433656636323464633331363932643035223b733a33323a223065616633666535373230623264663965383334303438343265326237663935223b7d733a343a2268617368223b733a36353a2230656166336665353732306232646639653833343034383432653262376639352d6663373434626263383861666162303433656636323464633331363932643035223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a353237323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a36323a7b733a33323a226166313963393563616661633731386437366438343930633834346564323732223b733a33323a223136626361616634616265353631636665613335346330306539303261646133223b733a33323a226237613332643461643664326164633739333339393431336233336133613264223b733a33323a223431356338333934616161386563393261353366623436653662323131306335223b733a33323a223438353733663534383031356565623561356534383234303139396166353734223b733a33323a223535346461656639636264333335373063373662333037663035396462366138223b733a33323a226339373738356161306463666566633830616631353935356239333938346437223b733a33323a223764383234356236613932666232666130323562663262623564393839393531223b733a33323a223433616339336337626436643332623138396434613965646630626162366666223b733a33323a226565663038316662383634313462643838306366393665663863383862393034223b733a33323a226162333933303839316131363235386638616565383261396630336436366462223b733a33323a223435343765633833613838303137653134373662346664623431316533343637223b733a33323a226664643465306330386165636533316666626630656563356561666531633364223b733a33323a223565636338666663326335306166353735333135383130363239386531366232223b733a33323a226665316139666431353734616466366362383036643539323936306537373062223b733a33323a226237663832626237366138616262316563306362643336326434373038656334223b733a33323a223437343234333335343239323335656362393134666336353536303834333131223b733a33323a223664633864613661323235663063623836383933383032306466346534393963223b733a33323a226565613364333938333338656637613265366635383738646162393364326566223b733a33323a223437373163383861636433326433363437666136353361373032356430333036223b733a33323a226334626333313239653832613935636331636665646166363539313732343334223b733a33323a223434306565306536316136343762386465343666626137333439323739326530223b733a33323a223238313831323538646539653730373932303435303561353164336430376637223b733a33323a223437396466633234653263303036393164326235383430383234303332383739223b733a33323a223034623831656639336538656664633164336366613666316339356130376137223b733a33323a226163346563306166323262613262346639376432616635306461613435313964223b733a33323a226430656165396662363132396435343131353063303963383666663331643231223b733a33323a223161343932656365663235353935643361646463313235326138393835393830223b733a33323a223436313361313636636361333132316137363733346231666434346533653733223b733a33323a226236353334363463373038623230656638373630306164356561633536346462223b733a33323a223732376132313263656334383365616536643830346134333239393530376162223b733a33323a223566646336383361643963383733663132303537343162613135656238653261223b733a33323a223265393363373933666235646433653336303635363461383933663034633762223b733a33323a226561333439613838303438363033323831303866333336353535356463323766223b733a33323a223732666232393838323465303131313631636132633666313066323035636135223b733a33323a223634306131393637363932316163623336306235633733643835623461633731223b733a33323a223162643266396436323732393231373833353966653434643739643038353364223b733a33323a226661373862366330663061346133336638643265333161633235613263353230223b733a33323a223163306464616364653139653362323833313031623437376666373736336563223b733a33323a226134663465663266376135303135333633393738336334323665356437323535223b733a33323a223935383139323836306334366237393263313964393434633236303062346635223b733a33323a226461363336653265633762353438613532306233306433636135336261646162223b733a33323a223362656434646339393461393633396333356431303865326535316539323137223b733a33323a223739303762623966393063333639376564653464333462353962663361646363223b733a33323a223833393366623531636364623439366335316466646632313332363730353836223b733a33323a226239356562343434333931666134633636643534623732386666663833333761223b733a33323a223936386237383834333334646265383563613732373261653162656337323136223b733a33323a223433363161653330303233663037363262343661386230343737333263636232223b733a33323a226636643134363231623634383733336535613038626435656563383431333634223b733a33323a223538626264366334306663633365646530653563326666666632353034663266223b733a33323a223964313264393663663163326666656534373734643032623462643665663363223b733a33323a223933393434663637643637366264353630326366393932373964633966366637223b733a33323a226430633430656338663762303263323864333066666332386332386238306630223b733a33323a226163333235356562373130643264383966363336366262643035383733623831223b733a33323a223034383732643135613833653136346634366537643431353036383465306231223b733a33323a223438306338333563666530613762313230386238623261633964326532336330223b733a33323a223837336536623133386534333936353535393735366466396631313339393331223b733a33323a223764373066636661393462613534336239363433366432373365666461376564223b733a33323a226361303537396134356564333634306135396665346238333732663536346263223b733a33323a223332653733303138386337393464396531336635383336323430663664306334223b733a33323a226531613331346164393931323531323763653730666532666139353934633964223b733a33323a223964323337636231653536663737303137643265623438393662383232323631223b733a33323a226465623335626365316662643530316531393137393766356164393331623561223b733a33323a226231356661613861333336356665393834356236646362666665306437643631223b733a33323a226664646636623838366565646661363737643137636265393636333366306461223b733a33323a226365623734363665656662393762333635336531306532656461623361343165223b733a33323a226633353235626532356661646663336561303732323038626562613634643765223b733a33323a223335623763616164656166373537306139396363353063363666646236303933223b733a33323a226663333837313833613533626337343035616534333235306536373162376564223b733a33323a223238656639326635386261383833386165663964333238363731346531366632223b733a33323a226262363433613332366538303033643332636638613935306362316334666433223b733a33323a223030613239653232636462633862366430353761636262323731303562666139223b733a33323a223765386365653663333431313034396364363839343766666232313361646531223b733a33323a226238326338626239303366393934376232626536376430386534313132613761223b733a33323a226533303734356232323532313565333339323139666537363039633638313834223b733a33323a226165373363643131313735356331336138643333353738303366323132333330223b733a33323a226639616362313265323731333465376536353664346637323562306132636136223b733a33323a226161613264663730323863383039613639643733653038336339633864343435223b733a33323a226664613238343232323935373166323433663536346136663039383965663464223b733a33323a223966306461343738646261366139363065633839653565393031376131323964223b733a33323a223264313232383336363463643063636565363838383834613033363337313135223b733a33323a223031356638316132313261623333616436313538373130393164653464363432223b733a33323a223834643864366362636330623438656562643334376362343331643761636163223b733a33323a226664323637336164663064336635666138666434346237616133373936393031223b733a33323a226339323362346536623732323237333562643838653861663662663637393133223b733a33323a223338376631383666303366353634303165323164306234626464353332646662223b733a33323a226465316337356635643265326535643663636137633630313132313965363534223b733a33323a223638336435323030383538323863363366373463623034336531626234323539223b733a33323a223939633431313064363133363930353733353237326364386233613530613434223b733a33323a223562393164363932353931373461326663623931326632343433366430383933223b733a33323a226562326435656538616237353436323865623263343534313365386634383731223b733a33323a223763373136653036636462356536323531303130613465323333626431363961223b733a33323a226465643366333437353563643966383234323263393435303239333234393662223b733a33323a223736643632313332353932346336376566356164643162386230646237333730223b733a33323a223730353736326530623635373563393766613239383335316334653864323562223b733a33323a226263383235613838633565353035636262613362336338636437306338653538223b733a33323a223631333765363934316430336630346664353434373962666533373834663736223b733a33323a226133376137623065326163623031386530313165353561363462386138303463223b733a33323a223539643038393064623131333963653365353263643430356339306537633764223b733a33323a223138316630303337356236646431373034326264653862323463323732393164223b733a33323a223836333538323738666562646239633039613436366634656536363164643164223b733a33323a223433393766326131633036323463616132303034383234333635383739666539223b733a33323a226234633330616136333630653664623834623938383439656136663465663137223b733a33323a226235626165666262643832383630656132613239383162323835316235616234223b733a33323a223934613665363536333466643038653336303433653533306562303762306166223b733a33323a223437343966653636653431323762393235316531616263623962306435373632223b733a33323a223863653134663931616535343162633131643131633130633230383631353635223b733a33323a223837373161326166366665313161656231333465633361383965326133396634223b733a33323a223831643264353031376331663534653664306431333563336565363639633063223b733a33323a223435313931356463313637373938333432396231663261353734326636353265223b733a33323a223065396230323131303365303739326266363263643661653431386465616561223b733a33323a223964633561666132396437353365626238663761373137366461363162396331223b733a33323a223664393765343066376230316436376262613763373566616339643066333061223b733a33323a226434336561373231636637643835303164323864623136356330663939663739223b733a33323a223331303864343466373536373036326362383031306130363938626363323239223b733a33323a223836316436613935616562346161383566366339666138636264356462663163223b733a33323a226437306363356465653264346630336362663139303231633366663139663264223b733a33323a223634306562643464303338633161313364353238633532663166363230386366223b733a33323a223030663461653564336531343534623362373636633837666463326164343431223b733a33323a223033643030333032656435366365613562646166636232346632623437366434223b733a33323a226231646537386432666362323866316639353764353633333961363837313233223b733a33323a223364386436313636303766646339366232613334393730383864373938356330223b733a33323a226437346163363732666633313263663139356436393863623835353661333662223b733a33323a223630663663656561393834316333663736383738646235373765366234666633223b7d733a343a2268617368223b733a36353a2236306636636565613938343163336637363837386462353737653662346666332d6437346163363732666633313263663139356436393863623835353661333662223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587577306),
('2qmrnanjrb3kburqmihs3pengt', 0x5f5f5a467c613a393a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373133353936392e3831393234333b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226e6b66677337326266356b6f6871316332633937683139637172223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373132363634333b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373133393530323b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373133393530333b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373133303035353b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373133303036313b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373133393433363b7d733a34353a225a656e645f56616c696461746f725f437372665f73616c745f637573746f6d766f636162666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373133393434373b7d7d72656469726563745f75726c7c733a34343a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732d322e312e312f6f6d656b612d732f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223665653330343136613931653262363037366133646139336332313737316630223b733a33323a223161326166656434303865306461313834313635623934306261323530383530223b7d733a343a2268617368223b733a36353a2231613261666564343038653064613138343136356239343062613235303835302d3665653330343136613931653262363037366133646139336332313737316630223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3837313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a223261636138353965643932623032623438333066346434613264653464313035223b733a33323a223938616339613330303761343865653330636437333139633863333133343230223b733a33323a223961616632323731363134313866393831663530346233343964343665636239223b733a33323a226661326563303431386264656533623933326437383735343466666265346464223b733a33323a223133326132333332383861633165373637613332306164663063373932313331223b733a33323a226432353737616263316632373565366161613935393263383562303931663165223b733a33323a223834326464386561623863393534623966323233653938663733366231343837223b733a33323a223462326261633535616431663834613536333137373839376265633238373061223b733a33323a226335303935363863623262626530636563613762666466386333666363656662223b733a33323a223735653638333538633838633461633338636238613639623932363031663736223b733a33323a226232366365653134623266363363346261326637656364643735343931383239223b733a33323a223761656230633436363134353830623135363531643565346138336237396266223b733a33323a223436643863343132383334313963323736303664313966643135323630666137223b733a33323a226534326330326337353532373766386336643464646437646632653164623536223b7d733a343a2268617368223b733a36353a2265343263303263373535323737663863366434646464376466326531646235362d3436643863343132383334313963323736303664313966643135323630666137223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3837313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a223130303831333465656561316436623137636132383863303763323830666664223b733a33323a223438326636653837373462336135343239633332363466616331626566623535223b733a33323a226130643733303162613464383735656566346635386436343166323833316535223b733a33323a223064346333636438323935656139316438653533326564646433393666633832223b733a33323a226632613962613135643337656435623930333232343862316239383865613837223b733a33323a223163363231396338643865346466363535353862303066386430626665353163223b733a33323a223936353965313832313331626636316661646636653062663338623135616465223b733a33323a226535626333383033653637623233383134316335363934333236383236336465223b733a33323a226333363132303334353137623231313638653136313264306264663665303937223b733a33323a226634306330653731626263353639326265333365346234633130376635303338223b733a33323a226237383066393666623233616230633736646565373133303163623236616264223b733a33323a226239313339616263656661353430656538303536326332623332653539333130223b733a33323a223039663535353336613638633135353630616130313836313566333338386634223b733a33323a223033353561333236346165313361613832656235356235343435323731343462223b7d733a343a2268617368223b733a36353a2230333535613332363461653133616138326562353562353434353237313434622d3039663535353336613638633135353630616130313836313566333338386634223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226236376665373966326336356633616235643935326166333935306537373264223b733a33323a226238636466666464626362346139613739366137363462656634663038663737223b733a33323a226364366136666533303563663830636634653639386332353232346538666638223b733a33323a226161373531323235653764653138616230653465616433356666313234393137223b7d733a343a2268617368223b733a36353a2261613735313232356537646531386162306534656164333566663132343931372d6364366136666533303563663830636634653639386332353232346538666638223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223631663866386435353532633438393839313562373936326338666364373862223b733a33323a226130646435333933303464336464616134613136366161636462336662633931223b733a33323a226430303137303662336236313337666564376136343664313332636136363139223b733a33323a226330396638303838393333363064623265343061323166663735316334653135223b7d733a343a2268617368223b733a36353a2263303966383038383933333630646232653430613231666637353163346531352d6430303137303662336236313337666564376136343664313332636136363139223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313433323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31343a7b733a33323a223631663139353539333063636561313430623531316561626466333630383437223b733a33323a226334646662636135383931336430643037613936383031363839316236616564223b733a33323a223038663062633232326538626631623138313664393633643131656366636631223b733a33323a223333393338626666366232326239363138626362303931613633323636663765223b733a33323a223834383363353132386432326233396432646132643063653038343661623939223b733a33323a223265333438643836323435373164323535323130303038633138333431343736223b733a33323a226132643935316634653930663138313265663939363164306431366461616262223b733a33323a223933616131613766353561626663303864353538383664393066346134666333223b733a33323a226163303361363837376335626538386138363735336135656266343663636530223b733a33323a226164326464376334383339663834626361343338616661363763346464306135223b733a33323a226364636662623561393431663831663462633162353466393861666133303130223b733a33323a223533656431376362316636353965626561346437383364303136373431626636223b733a33323a226262326635376637666564383630313037613661653231326164343864306134223b733a33323a226436303339373937623239636164653663613361623332316233633132623762223b733a33323a226132663136383465346535363338313030613538653661383437663339633963223b733a33323a226334336435353930653533363965306130333039653738366436393636316465223b733a33323a226536623766303131363634633461326633623665353935623363306234633634223b733a33323a226561633233353632363033653562343931303332623139666630633438316137223b733a33323a223833363330663366343064366363663432396436656131663561346262643865223b733a33323a223465383833646264326534333366613339636238393066623438356235396536223b733a33323a223266613233383964336336333839653836636663343462333163636633653533223b733a33323a223039386261393864633862323963663336316362356538666537343735323836223b733a33323a223531386636383261306663383330306230663564343632616136373631626232223b733a33323a223266663632303635323432663232303932623734373461363765343031356538223b733a33323a226366383736626261623832623035356263343332393734646531303433373232223b733a33323a223532643866373661616566363762626264356461326432633836353936356162223b733a33323a223630396165643737303930643062393064313336326235633962643232623461223b733a33323a223638303932323065613735636138363366616239306161666131363238366435223b7d733a343a2268617368223b733a36353a2236383039323230656137356361383633666162393061616661313632383664352d3630396165643737303930643062393064313336326235633962643232623461223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637573746f6d766f636162666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226437346435303233393736663766363131653862343532303630663239366462223b733a33323a223434393138613765613031333239393063333832356530393938363731343639223b7d733a343a2268617368223b733a36353a2234343931386137656130313332393930633338323565303939383637313436392d6437346435303233393736663766363131653862343532303630663239366462223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587135970),
('5qlj0g18d90rff0jsr51edqa53', 0x5f5f5a467c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538363936323232332e3538343732373b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22316164736b746d6e6b377563726265327063356f303273713236223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538363935393638313b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538363936313535343b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538363936353737353b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538363936353832343b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223566393962343864633261663031366431343664326532343338623932633937223b733a33323a223532643530613566373635303531313066623232333933616438656332333639223b7d733a343a2268617368223b733a36353a2235326435306135663736353035313130666232323339336164386563323336392d3566393962343864633261663031366431343664326532343338623932633937223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223234396237366137623936396663663839353339383233623630303730636662223b733a33323a226534626435663437666536303266313036343465383663376465656163623961223b733a33323a223562346138633035356633376130373133623964303062396663656462663964223b733a33323a226664363238653539646434323136303435303966303035343164336566383431223b733a33323a223565643035306533396636643363396334323662636135633530653364663561223b733a33323a223037343261633533373031363666346163343564643966653436663733386164223b733a33323a223238373631646162656336323463326136336537393965313838333138343865223b733a33323a223666316165623531323037383234356231326361343239303062613032656237223b7d733a343a2268617368223b733a36353a2236663161656235313230373832343562313263613432393030626130326562372d3238373631646162656336323463326136336537393965313838333138343865223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3837313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a223966376538656138353265663461623762343366623835353136313737363539223b733a33323a223434363337393364623666353333306534383632346233313531613265646363223b733a33323a223339376134303263323638343365633163393638646464653538616464306134223b733a33323a223764356236333233343835306239656437313635663463363062363962323962223b733a33323a223165323936336338363135363034393066313338656238646436326239336131223b733a33323a226138623136396338616466386137666366316634316465623362626239366638223b733a33323a223239366364373062393066326636636437353338353361663436666364396363223b733a33323a223865363665376161336431366366396335303662333036366433633263393432223b733a33323a223932636663353935623663366332303162306464613937666463633836626530223b733a33323a223735343039356635343239383034653737336136656632303164333339356535223b733a33323a223065653863393062376661373761336238366136643635356263653631633236223b733a33323a223965613834643339303138323264663439646134653561376361363664626637223b733a33323a226433653638653330303531646334613938316239653237613166656632306630223b733a33323a223130653164393335613434326561373661396534353965633430316561353166223b7d733a343a2268617368223b733a36353a2231306531643933356134343265613736613965343539656334303165613531662d6433653638653330303531646334613938316239653237613166656632306630223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223730326132323639346236333266613861376438633536373831383361663265223b733a33323a223133313731333338303163663466653136363765656230366166396231366531223b7d733a343a2268617368223b733a36353a2231333137313333383031636634666531363637656562303661663962313665312d3730326132323639346236333266613861376438633536373831383361663265223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1586962224);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('slkm1260ov9cl701n4a6hbi3cr', 0x5f5f5a467c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373033323138362e3238373932313b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226c6971746774693163376b63323938646364326b363570353761223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373032343637343b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373033353734373b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373033353139363b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373033353734383b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373033353230333b7d7d72656469726563745f75726c7c733a34343a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732d322e312e312f6f6d656b612d732f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223430303038613064656164633939663931636538616336663231373832366236223b733a33323a223238373038323266303737346137633130383164626238383662623738666139223b7d733a343a2268617368223b733a36353a2232383730383232663037373461376331303831646262383836626237386661392d3430303038613064656164633939663931636538616336663231373832366236223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a323135323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32333a7b733a33323a223733333830633234656438333232316462303262643365646562663239653434223b733a33323a226364303561316131326665316161623562633132623361346364383437313939223b733a33323a223534386337363531613036373262383161616263666363356232623965663339223b733a33323a226332353566393261623538323764303666353034393439393765633039313138223b733a33323a223039636265306536383633646564376361316562313465326533343165333032223b733a33323a223831323361303635303939633764303665323139623134373763636432306336223b733a33323a223162383666386262373531316239333434306435663636336561656337366638223b733a33323a223733303436623361626166383932653537666431653664363063636234653931223b733a33323a226565656433353837343931643437393366353632663437613464336439633764223b733a33323a223234343665656561316238653237373336376632323361306533376231303562223b733a33323a226539656532656134356564623962663732363436316337633861643463653664223b733a33323a226263363933306634343033643265343834306139316563333630633036316436223b733a33323a223233613839626139353362626565653935393063396635386564393762383835223b733a33323a226166326236623264363738363733346531636665366336656361613636356339223b733a33323a223633343330323866393565356635366633646462613139633030626239663132223b733a33323a226162343130336539663364653931356137663836313933666230363339633133223b733a33323a223039383562356636323834636338333331303834323166653731646430636237223b733a33323a226265653664316561653931653365343636386363333736363565633530306662223b733a33323a223235383562653131363932613438346530663232653036333262383036626366223b733a33323a223262323366386561393566613433646534303931643531643866333038386661223b733a33323a223639353233333064373937663034303832633062353664396235303630663430223b733a33323a223334356133316662613832353061303236323834396538336138313434663534223b733a33323a223563323132366134306538333864366231646139666633366330313332616666223b733a33323a223962643338613963323534633731336639316366656261313432303334383765223b733a33323a223962666363316664393965616630646639656366363937343032363234346561223b733a33323a223336333737313365613166313930343838346333636333336236663364303339223b733a33323a226266623435346566346565386465633734336235313163373836623834333665223b733a33323a223563666431396363386632376463363931383966323936336636396232326462223b733a33323a223730343433633766643161656433663239626639366463373532343636626466223b733a33323a223864613331356663353763623364353831616462623562306237653662613538223b733a33323a223539353862643337626666356138633533323631623962653034303037383638223b733a33323a223632343536633434323635383739383137643434343563363461313566643133223b733a33323a223936356530656136623261323066396166636533313163313731313862326465223b733a33323a226161633332326137366538633061626665313666616363643439623337303032223b733a33323a226166633165356662343738306239643530333638353836656565653161616337223b733a33323a226138303436396464663633643132383434383564373965663132306335373233223b733a33323a223434383231643263626337306565393164623362646563333061316565616637223b733a33323a226462663763633834313361326635313631336362333361363636363562383662223b733a33323a223731333136353939643165376165633836663935643064616363633537353465223b733a33323a223438353337623262316164646163396532363565656538306136393161346665223b733a33323a223134393533363766663236373262616465653362383439626532666235383266223b733a33323a223430333037336162663866373366396239376361643165313365313138643665223b733a33323a223462306164353161653739316632303661343432306431613735366137366562223b733a33323a223730373738653238633762393338656162326535326661656536386632623332223b733a33323a226438323562373236393064666636326565616231303163633938666632353733223b733a33323a226237383833663264653333373663373365643666643737646430646362653639223b7d733a343a2268617368223b733a36353a2262373838336632646533333736633733656436666437376464306463626536392d6438323562373236393064666636326565616231303163633938666632353733223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a323739323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33313a7b733a33323a223535326235316337633066373364356465366663333230663631366264316162223b733a33323a223039656138393239643833346239396136383939663164346564363636646163223b733a33323a223438316263336135306439666162626366303230353862326633366362613336223b733a33323a223133646661386261373063646234396166313235323866663138313239386339223b733a33323a223366346339313332353737643863326431643463636231333838663634363932223b733a33323a223336653037363562303565666536666261313836356139356162303638336139223b733a33323a226135343230316662633536636537386466373237333065343165646635396234223b733a33323a226334666139613566366638393030323936616133373434336563303432636266223b733a33323a223538396466613961353834313539653962326435383635316439613639616534223b733a33323a223862366135343833393434336433643862306139343933646562636565353566223b733a33323a223461643636646334303061656532383237366534323232333262633637393266223b733a33323a226666616366346463636266323732333230356264313963613762383233663861223b733a33323a226561663161626263383562383136376534643336366234383539663735303639223b733a33323a226363373362376332326166343865646537383330636665363239633966363535223b733a33323a226339346636303739626562646337656665326134613236626466393466626435223b733a33323a226130373235353535656538326363336630613235643661336161363366623264223b733a33323a223636333132333634646639383035336330616466623634653136383365376639223b733a33323a223232313037653632356236383664613431363630663133366366643839396230223b733a33323a226466306536633832363865376636343232353432623333343732326235393561223b733a33323a223135383637306337646633373337313236633434343431326162653364393135223b733a33323a223362633436306561353235346461383563393165386437366361613537326637223b733a33323a223935663934623065393334313932636638383065366537663332336133623166223b733a33323a223639373336343963666266366633353561373861356262343566383738613865223b733a33323a223436623533393839653231363533343162336664663030623262653432383339223b733a33323a226132656365646337373837303638346330623432653963633865666234636232223b733a33323a223866366236313237623735356462373461393335613563326362366332356666223b733a33323a226437323935313638633238313034313861646232656135346365383734633534223b733a33323a226431396437373666643334343239386539343462363563303265656465366364223b733a33323a223131303937616364613631666634376463303462316163363432393666653965223b733a33323a223332373463613661353161323961623639313262626465336239383437383962223b733a33323a226538313239333435373563356566306637323433643135376632623836653565223b733a33323a226131383164373335383463336434343835656564313330333361613938643238223b733a33323a223132303063343438646334303264623536313765663563633331643532303036223b733a33323a226532393762666362303066353038306634616566623362623662343861653637223b733a33323a223363626263396338646337383039323733383732633332626363316436643135223b733a33323a226236346262653564306261636539323736663062626462313461643761323661223b733a33323a223161393861623164373639343166333536656561656563346366353161646338223b733a33323a226463333832616139303761333564353035363066346438393936313835376139223b733a33323a226162313661356436383764656563346431616461613566613162333562303662223b733a33323a223366363733363534333634646265376537366134633234376265353261336363223b733a33323a223362376133353330366135323037326633626164376133656139663534376134223b733a33323a223761373133663864666465363661326136353731336634333036336562346664223b733a33323a223839623761313939626131613734396336393236373535306461316333343965223b733a33323a226236313632313638366537393862343135336634663963656331313166663430223b733a33323a226464333833616235386331613462653434643430306531363138353863616561223b733a33323a223733636539346437353961616535363137336138633534663031383931643164223b733a33323a223762363334633736396236303461333137353763343063636539656135306530223b733a33323a226133636536393637333830386630326235303634616536336437623637633465223b733a33323a223563653931633531386531326463646437323735306238393966303664323462223b733a33323a223636653131333738623234376134323032306666643331663434383834306537223b733a33323a223238326432393064376238643739306666643963386163623362633765306532223b733a33323a223363343432303764336566306135373764623562393733663865303039633261223b733a33323a226138346534346534343331636164316134633166653165643432363031663464223b733a33323a223964366632356362643633303237633764663238373864393837303463306362223b733a33323a223131653338303563653161356261356365386436383962666233313834333034223b733a33323a223632636534393365316564363161663264343533666133336430623165306531223b733a33323a223536623435643831663164666263373533373863666564656633353239396338223b733a33323a226334323930336238623931316633346236303638366131666565396165616236223b733a33323a226264333133326630393937383566616466626361343862303335326536333030223b733a33323a226266346563366362306439303863363464303439373666643039383331356131223b733a33323a226266306236383562656264386330383663643132656634396461616239333663223b733a33323a223966333265326431636436363633363935656161666532616632623763303465223b7d733a343a2268617368223b733a36353a2239663332653264316364363636333639356561616665326166326237633034652d6266306236383562656264386330383663643132656634396461616239333663223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a323135323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32333a7b733a33323a226332636333366631663436633765353766323334323030313038383339323532223b733a33323a226335663530326336303033303536643564653034323236656365616663303839223b733a33323a223265313634323236396332383062303062643266353331663564643466633034223b733a33323a223135643465303636646165626332326465633238363866616466666232646463223b733a33323a223464326230313563323034613137393966316261303961313339313862366336223b733a33323a223431396335643266656566656634656462646239303365643832613963643730223b733a33323a223935386663353165656362653433326235663639316130643666386237306662223b733a33323a223664663866373035616663326638653839326462623364376432376130376662223b733a33323a223236373934316331383136353931356630626362656131346439376134393363223b733a33323a223465326439323739626234616263366534623061363137363433316439636533223b733a33323a223562386633346434353061666235376362653266303338663733666562636131223b733a33323a223532393063313837396331653466313636346135646162363562303161366562223b733a33323a223138643834626534343236623962646236663261336664366238386338396365223b733a33323a226463356637353938316366333535386533646137613066633334666230393066223b733a33323a223930623662616135373636393463383231663638373966313066616165313861223b733a33323a226632636439666531666665616333373731336638616333353063336136333333223b733a33323a223332353735316232323262313730626137366161653536656539323462616334223b733a33323a226265626537613130623239623938313833626633376433353030333564663935223b733a33323a226138623431623536396165353039386630636135633138383664333337363866223b733a33323a223232356630326166356232303137313738646339373865306433303830623562223b733a33323a226433363838346665623161343165666463353961626331323132646135623130223b733a33323a223630646462623865666563353337323738623834396432336234396331343535223b733a33323a223263316234646437353361333061643363663964666263643338313733626461223b733a33323a223134366639336233323238363362383832343437326366656531633135623234223b733a33323a223433653162326437383537313834393537363332653837356632663165393038223b733a33323a223034616463393032326336373330666365636636616434623963313461663063223b733a33323a226436386562303431646561633937383434303464346337303938363266623537223b733a33323a226433653566353838383331343835326263646264393630646465373361356138223b733a33323a226636633866636164626361376339316636646261656138396162303161623536223b733a33323a223034373263363634643462323365373834646534373732323238623536613264223b733a33323a223032616264613832663830366438353339353235376235326465653238313139223b733a33323a226464356266306464623831623932643236303634356439373934363961366366223b733a33323a226537393835313938383032376138363236356231376531663336373430396439223b733a33323a226336663539386332383539356232613732363230353862313264363831653761223b733a33323a226438656362356535646563633061393362643162393034656564343162366666223b733a33323a226463663765356235666134373737303835646432626161373035336330653833223b733a33323a226661663336333835633330663035303362306537333236613363656539623035223b733a33323a223933313162663434383738636139353039373066393930633163653935373239223b733a33323a223334316563353135646461623363373434616534373162626262623062613631223b733a33323a226462643466616632383530373230323862323634323436376139666635336537223b733a33323a223935633031313736326237366530663732376439623038306637373333653135223b733a33323a226533396236386362383630326130343865366164396130613130396137303165223b733a33323a223466343438386232663465306562303431356532336331336138386530663865223b733a33323a226139333232623664386439353633313432666238333739646564303430333161223b733a33323a223438623738626134316661376234393738396336323532623333323963653030223b733a33323a223339383933343530653661653861373233323837616635616435333062386430223b7d733a343a2268617368223b733a36353a2233393839333435306536616538613732333238376166356164353330623864302d3438623738626134316661376234393738396336323532623333323963653030223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223132656665323136353862616134363738323365376636363934636638613432223b733a33323a226633326262343764306638333466656535633630636630656665346339393862223b733a33323a223638623333363938326630373434616262343632646238323038306263373263223b733a33323a223265333162363864383630613537313430336636353566393439333034393032223b733a33323a223865396235303336313362653165323930653366646362353235333539336466223b733a33323a223736393634393834306262653066386633346464346435663962396565316133223b7d733a343a2268617368223b733a36353a2237363936343938343062626530663866333464643464356639623965653161332d3865396235303336313362653165323930653366646362353235333539336466223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587032186),
('t40gvvi2im02jd1r9u4d7pl3i0', 0x5f5f5a467c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373032313034342e3337333638383b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a227434306776766932696d30326a6431723975346437706c336930223b7d7d, 1587021054);

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
('administrator_email', '\"hiedwig@live.fr\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"test_omeka\"'),
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
(1, 'hiedwig@live.fr', 'A B', '2020-04-15 13:07:54', '2020-04-15 13:07:55', '$2y$10$ZmJ2ty8MhMJpSwocEnXAJOP5xfrTdVkW7I3OXtGeo3jdlQ2RA7RFa', 'global_admin', 1),
(2, 'samuel.szoniecky@univ-paris8.fr', 'Samuel Szoniecky', '2020-04-15 13:38:39', '2020-04-15 13:40:23', '$2y$10$vICgotDyZfopSvi3SC6HcObj3ONURPF/9WMS2gqibUU0tpJ6KbcTq', 'global_admin', 1);

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
(1, 1, 144, NULL, 'literal', '', 'Marcastel', NULL, 1),
(2, 1, 139, NULL, 'literal', '', 'Jean-Luc', NULL, 1),
(3, 1, 146, NULL, 'literal', '', '0366125411', NULL, 1),
(4, 1, 123, NULL, 'literal', '', 'jlm@fakeadress.fr', NULL, 1),
(5, 1, 389, NULL, 'literal', '', 'FRZZ-1235-RT85-6585-GHTR', NULL, 1),
(6, 1, 391, NULL, 'literal', '', '62845', NULL, 1),
(7, 1, 390, NULL, 'literal', '', '6 01 222 555 63 112', NULL, 1),
(8, 1, 396, NULL, 'literal', '', 'SAGL', NULL, 1),
(9, 2, 144, NULL, 'literal', '', 'Jaworski', NULL, 1),
(10, 2, 139, NULL, 'literal', '', 'Jean-Philippe', NULL, 1),
(11, 2, 123, NULL, 'literal', '', 'JPJ@fakeadress.fr', NULL, 1),
(12, 2, 389, NULL, 'literal', '', 'FR0T - 16558 - 852 -oeuf', NULL, 1),
(13, 2, 391, NULL, 'literal', '', '9545356', NULL, 1),
(14, 2, 390, NULL, 'literal', '', '5 02 788 256 14 6', NULL, 1),
(15, 3, 144, NULL, 'literal', '', 'Faye', NULL, 1),
(16, 3, 139, NULL, 'literal', '', 'Estelle', NULL, 1),
(17, 3, 146, NULL, 'literal', '', '061258795948', NULL, 1),
(18, 3, 389, NULL, 'literal', '', 'DE86-HTUI-2886-HY84', NULL, 1),
(19, 3, 391, NULL, 'literal', '', '58988', NULL, 1),
(20, 3, 390, NULL, 'literal', '', '6 7959462146585588745 56', NULL, 1),
(21, 3, 396, NULL, 'literal', '', 'SACD', NULL, 1),
(22, 4, 144, NULL, 'literal', '', 'Akkouche', NULL, 1),
(23, 4, 139, NULL, 'literal', '', 'Jérôme', NULL, 1),
(24, 4, 389, NULL, 'literal', '', 'FR23 - fod^dgvpv-9856-etfh', NULL, 1),
(25, 4, 390, NULL, 'literal', '', '7 - 558588998- 03', NULL, 1),
(26, 4, 396, NULL, 'literal', '', 'SGDL', NULL, 1),
(27, 5, 144, NULL, 'literal', '', 'Vargas', NULL, 1),
(28, 5, 139, NULL, 'literal', '', 'Fred', NULL, 1),
(29, 5, 389, NULL, 'literal', '', 'FR12-1566-YTFJ-HGY', NULL, 1),
(30, 5, 391, NULL, 'literal', '', '8987878', NULL, 1),
(31, 5, 390, NULL, 'literal', '', '8-8995586233321 01', NULL, 1),
(32, 5, 396, NULL, 'literal', '', 'SACD\nSGDL', NULL, 1),
(33, 6, 1, NULL, 'literal', '', 'Dimension routes de légendes, légendes de la route.', NULL, 1),
(34, 6, 8, NULL, 'customvocab:1', NULL, 'Livre\nJeu\nJeu de rôle', NULL, 1),
(35, 6, 35, NULL, 'literal', '', 'L789', NULL, 1),
(36, 6, 99, NULL, 'literal', '', '9781612275901', NULL, 1),
(37, 6, 204, NULL, 'literal', '', '2016', NULL, 1),
(38, 6, 349, NULL, 'literal', '', '30 EUR', NULL, 1),
(39, 6, 108, NULL, 'literal', '', '50', NULL, 1),
(40, 6, 388, NULL, 'literal', '', '31.65', NULL, 1),
(41, 6, 392, NULL, 'literal', '', '5.5', NULL, 1),
(42, 6, 58, 4, 'resource:item', NULL, NULL, NULL, 1),
(43, 7, 1, NULL, 'literal', '', 'Louis le Galoup 1', NULL, 1),
(44, 7, 8, NULL, 'customvocab:1', NULL, 'Livre\nJeu\nJeu de rôle', NULL, 1),
(45, 7, 35, NULL, 'literal', '', 'L56', NULL, 1),
(46, 7, 36, NULL, 'literal', '', 'Z123', NULL, 1),
(47, 7, 99, NULL, 'literal', '', '9782354500450', NULL, 1),
(48, 7, 204, NULL, 'literal', '', '2009', NULL, 1),
(49, 7, 349, NULL, 'literal', '', '10', NULL, 1),
(50, 7, 108, NULL, 'literal', '', '100', NULL, 1),
(51, 7, 388, NULL, 'literal', '', '105.5', NULL, 1),
(52, 7, 392, NULL, 'literal', '', '5.5', NULL, 1),
(53, 7, 58, 1, 'resource:item', NULL, NULL, NULL, 1),
(54, 8, 1, NULL, 'literal', '', 'Debout les morts', NULL, 1),
(55, 8, 8, NULL, 'customvocab:1', NULL, 'Livre\nJeu\nJeu de rôle', NULL, 1),
(56, 8, 35, NULL, 'literal', '', 'f5', NULL, 1),
(57, 8, 99, NULL, 'literal', '', '978-2290351307', NULL, 1),
(58, 8, 204, NULL, 'literal', '', '1995', NULL, 1),
(59, 8, 349, NULL, 'literal', '', '15 EUR', NULL, 1),
(60, 8, 108, NULL, 'literal', '', '156', NULL, 1),
(61, 8, 388, NULL, 'literal', '', '158,08', NULL, 1),
(62, 8, 392, NULL, 'literal', '', '5.5', NULL, 1),
(63, 8, 58, 5, 'resource:item', NULL, NULL, NULL, 1),
(64, 9, 1, NULL, 'literal', '', 'Gagner la guerre', NULL, 1),
(65, 9, 8, NULL, 'customvocab:1', NULL, 'Livre\nJeu\nJeu de rôle', NULL, 1),
(66, 9, 35, NULL, 'literal', '', 'L1', NULL, 1),
(67, 9, 36, NULL, 'literal', '', 'f15', NULL, 1),
(68, 9, 99, NULL, 'literal', '', '9782070464272', NULL, 1),
(69, 9, 204, NULL, 'literal', '', '2009', NULL, 1),
(70, 9, 349, NULL, 'literal', '', '15', NULL, 1),
(71, 9, 108, NULL, 'literal', '', '589', NULL, 1),
(72, 9, 388, NULL, 'literal', '', '15,75', NULL, 1),
(73, 9, 392, NULL, 'literal', '', '5.5', NULL, 1),
(74, 9, 58, 2, 'resource:item', NULL, NULL, NULL, 1),
(75, 10, 144, NULL, 'literal', '', 'Interforum', NULL, 1),
(76, 10, 123, NULL, 'literal', '', 'interforum@fake.com', NULL, 1),
(77, 10, 302, NULL, 'literal', '', 'Distributeur', NULL, 1),
(78, 11, 144, NULL, 'literal', '', 'Hachette', NULL, 1),
(79, 11, 123, NULL, 'literal', '', 'h@fake.eu', NULL, 1),
(80, 11, 146, NULL, 'literal', '', '03.101.56.12.54', NULL, 1),
(81, 11, 302, NULL, 'literal', '', 'Distributeur', NULL, 1),
(82, 12, 144, NULL, 'literal', '', 'Salon du fantastique', NULL, 1),
(83, 12, 302, NULL, 'literal', '', 'Salon', NULL, 1),
(84, 13, 4, NULL, 'literal', '', 'Ventes', NULL, 1),
(85, 13, 35, NULL, 'literal', '', '4562', NULL, 1),
(86, 13, 393, NULL, 'literal', '', '10', NULL, 1),
(87, 13, 6, 1, 'resource:item', NULL, NULL, NULL, 1),
(88, 13, 1, 7, 'resource:item', NULL, NULL, NULL, 1),
(89, 14, 4, NULL, 'literal', '', 'Ventes\nChiffre d\'affaire', NULL, 1),
(90, 14, 35, NULL, 'literal', '', 'C-4562', NULL, 1),
(91, 14, 393, NULL, 'literal', '', '82', NULL, 1),
(92, 14, 394, NULL, 'literal', '', '2', NULL, 1),
(93, 14, 6, 3, 'resource:item', NULL, NULL, NULL, 1),
(94, 14, 6, 4, 'resource:item', NULL, NULL, NULL, 1),
(95, 14, 1, 6, 'resource:item', NULL, NULL, NULL, 1),
(96, 15, 4, NULL, 'literal', '', 'Chiffre d\'affaires', NULL, 1),
(97, 15, 35, NULL, 'literal', '', 'V-123589489', NULL, 1),
(98, 15, 393, NULL, 'literal', '', '2', NULL, 1),
(99, 15, 6, 5, 'resource:item', NULL, NULL, NULL, 1),
(100, 15, 1, 8, 'resource:item', NULL, NULL, NULL, 1),
(101, 16, 4, NULL, 'literal', '', 'Ventes', NULL, 1),
(102, 16, 35, NULL, 'literal', '', 'C-777', NULL, 1),
(103, 16, 393, NULL, 'literal', '', '15', NULL, 1),
(104, 16, 6, 2, 'resource:item', NULL, NULL, NULL, 1),
(105, 16, 1, 9, 'resource:item', NULL, NULL, NULL, 1),
(106, 17, 349, NULL, 'literal', '', '150', NULL, 1),
(107, 17, 7, NULL, 'literal', '', '22/04/2020', NULL, 1),
(108, 17, 385, NULL, 'literal', '', '15', NULL, 1),
(109, 17, 6, 12, 'resource:item', NULL, NULL, NULL, 1),
(110, 17, 1, 9, 'resource:item', NULL, NULL, NULL, 1),
(111, 18, 349, NULL, 'literal', '', '3000', NULL, 1),
(112, 18, 7, NULL, 'literal', '', '01/06/2002', NULL, 1),
(113, 18, 385, NULL, 'literal', '', '300', NULL, 1),
(114, 18, 6, 10, 'resource:item', NULL, NULL, NULL, 1),
(115, 18, 1, 8, 'resource:item', NULL, NULL, NULL, 1),
(116, 19, 7, NULL, 'literal', '', '31/12/2002', NULL, 1),
(117, 19, 349, NULL, 'literal', '', '54 EUR', NULL, 1),
(118, 19, 388, NULL, 'literal', '', '3054', NULL, 1),
(119, 19, 36, 15, 'resource:item', NULL, NULL, NULL, 1),
(120, 19, 35, 18, 'resource:item', NULL, NULL, NULL, 1),
(121, 19, 144, 5, 'resource:item', NULL, NULL, NULL, 1),
(122, 19, 1, 8, 'resource:item', NULL, NULL, NULL, 1),
(123, 20, 7, NULL, 'literal', '', '31/12/2020', NULL, 1),
(124, 20, 388, NULL, 'literal', '', '150', NULL, 1),
(125, 20, 36, 16, 'resource:item', NULL, NULL, NULL, 1),
(126, 20, 35, 17, 'resource:item', NULL, NULL, NULL, 1),
(127, 20, 144, 2, 'resource:item', NULL, NULL, NULL, 1),
(128, 20, 1, 9, 'resource:item', NULL, NULL, NULL, 1),
(129, 6, 58, 3, 'resource:item', NULL, NULL, NULL, 1),
(130, 6, 4, NULL, 'literal', '', ' Nous vous invitons au voyage, sur des chemins creux en bas de chez vous ou au-delà de notre galaxie, dans un camion pensant ou à bord d’un trois-mâts qui sent le sel et la poudre, au fond d’une jungle à fées, dans le Grand Nord ou sur la Route du Thé. Suivez des arpenteurs dans leur périple, cartographiez des territoires inconnus, survivez à des accidents dantesques et grimpez sur des panneaux de signalisation... Au passage, n’oubliez pas de ramassez les petits cailloux au bord de la voie. Qui sait quelle est leur histoire ? ', NULL, 1),
(131, 7, 4, NULL, 'literal', '', 'La nuit, le feu, une grande forteresse assaillie, une créature monstrueuse, un loup terrible, un loup debout... un galoup. Tel est le cauchemar qui hante Louis, dans son village au bout du monde, près de la Grande Brèche et de sa lueur maudite qui marque la fin du royaume et de toutes les routes...\nCe royaume que l\'ombre du Vicomte de Marsac, l\'Usurpateur, et de ses terribles barons.', NULL, 1),
(132, 8, 4, NULL, 'literal', '', 'Debout les morts est un roman policier français de Fred Vargas, paru en 1995. Ce quatrième roman obtient le prix du Polar de la ville du Mans, avant d’être couronné par le prix Mystère de la critique en 1996', NULL, 1),
(133, 9, 4, NULL, 'literal', '', 'Gagner une guerre, c\'est bien joli, mais quand il faut partager le butin entre les vainqueurs, et quand ces triomphateurs sont des nobles pourris d\'orgueil et d\'ambition, le coup de grâce infligé à l\'ennemi n\'est qu\'un amuse-gueule. C\'est la curée qui commence. On en vient à regretter les bonnes vieilles batailles rangées et les tueries codifiées selon l\'art militaire. Désormais, pour rafler le pactole, c\'est au sein de la famille qu\'on sort les couteaux. Et il se trouve que les couteaux, justement, c\'est plutôt mon rayon...', NULL, 1);

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
(6, 1, 'http://iflastandards.info/ns/isbd/elements/', 'ISBD elements', 'ISBD', ''),
(7, 1, 'http://schema.org/price', 'schemaPrice', 'schema', ''),
(8, 1, 'http://dbpedia.org/ontology/Tax', 'dbpedia-owl', 'dbpedia-owl', ''),
(9, 1, 'http://schema.org', 'schema2', 'schema2', ''),
(10, 1, 'http://purl.org/acco/ns', 'acco', 'acco', ''),
(11, 1, 'https://DroitsAuteurs/vocab.fr', 'DroitsA', 'DroitsA', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
