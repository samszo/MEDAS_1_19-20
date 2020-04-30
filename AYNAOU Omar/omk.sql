-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 30 avr. 2020 à 16:24
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
(1, 'items', 1, 1, NULL, '1\nappartement\n1 Rue des Trois Frères,\n 75018 Paris\n\n0\n1\n1\n4\nOui\nCuisine équipée, Climatisation, Balcon'),
(2, 'items', 1, 1, NULL, '23/04/2020'),
(3, 'items', 1, 1, NULL, '1\nHomme\nAynaou\nOmar\nParticulier'),
(4, 'items', 1, 1, NULL, '1\n1\n50 avenue george sand\nappartement 100\nLa Plaine Saint Denis\nFrance'),
(5, 'items', 1, 1, NULL, '1\n1\nomaraynaou94@gmail.com\nFrance'),
(6, 'items', 1, 1, NULL, '1\n1\nPortable\n0751959250\nFrance'),
(7, 'items', 1, 1, NULL, '1\n1\n1\n10%\n10\n90\n20%'),
(8, 'items', 1, 1, NULL, '1\n1\n Carte Bancaire\n23/04/2020\n22/04/2020'),
(9, 'items', 1, 1, NULL, '23/04/2020\n10%\n0'),
(10, 'items', 1, 1, NULL, '1\n100\n23/04/2020');

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
(10);

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
('5tzqDxl3BtXEzVRdEGhsUNajukO998GB', 1, '2020-04-30 13:03:40', 0),
('NyO2xJ0HAk8agk79NG4vRWQTqMWPatUk', 2, '2020-04-30 08:27:44', 1);

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
(275, 1, 7, 'LOG_ID', 'id du logement', NULL),
(276, 1, 7, 'LOG_TYPE', 'type du logement', NULL),
(277, 1, 7, 'LOG_ADRESSE', 'adresse du logement', NULL),
(278, 1, 7, 'LOG_BAIN', 'nombre de bain dans le logement', NULL),
(279, 1, 7, 'LOG_DOUCHE', 'nombre de douche dans le logement', NULL),
(280, 1, 7, 'LOG_WC', 'nombre de WC dans le logement', NULL),
(281, 1, 7, 'LOG_COUCHAGE', 'nombre de couchage dans le logement', NULL),
(282, 1, 7, 'LOG_INTERNET', 'acces internet dans le logement', NULL),
(283, 1, 7, 'LOG_AUTRES_EQUIPEMENTS', 'les autres équipements dans le logement', NULL),
(284, 1, 7, 'PLN_JOUR', 'le planning du jour', NULL),
(285, 1, 7, 'CLI_ID', 'id du client', NULL),
(286, 1, 7, 'CLI_SEXE', 'sexe du client', NULL),
(287, 1, 7, 'CLI_NOM', 'nom du client', NULL),
(288, 1, 7, 'CLI_PRENOM', 'prénom du client', NULL),
(289, 1, 7, 'CLI_ENSEIGNE', 'l\'enseigne du client', NULL),
(290, 1, 7, 'EML_ID', 'id de l\'émail', NULL),
(291, 1, 7, 'EML_ADRESSE', 'l\'adresse émail', NULL),
(292, 1, 7, 'EML_LOCALISATION', 'la localisation de l\'émail', NULL),
(293, 1, 7, 'ADR_ID', 'id de l\'adresse', NULL),
(294, 1, 7, 'ADR_LIGNE1', 'ligne 1 de l\'adresse', NULL),
(295, 1, 7, 'ADR_LIGNE2', 'ligne 2 de l\'adresse', NULL),
(296, 1, 7, 'ADR_LIGNE3', 'ligne 3 de l\'adresse', NULL),
(297, 1, 7, 'ADR_VILLE', 'ville', NULL),
(298, 1, 7, 'ADR_PAYS', 'pays', NULL),
(299, 1, 7, 'TEL_ID', 'id du téléphone', NULL),
(300, 1, 7, 'TEL_TYPE', 'le type du téléphone', NULL),
(301, 1, 7, 'TEL_NUMERO', 'le numéro du téléphone', NULL),
(302, 1, 7, 'TEL_LOCALISATION', 'localisation du téléphone', NULL),
(303, 1, 7, 'LOG_PLN_CLI_NB_PERS', 'nombre de personnes', NULL),
(304, 1, 7, 'LOG_PLN_CLI_RESERVE', 'client reservant', NULL),
(305, 1, 7, 'LOG_PLN_CLI_OCCUPE', 'client occupant', NULL),
(306, 1, 7, 'TRF_LOG_PRIX', 'prix logement', NULL),
(307, 1, 7, 'TRF_DATE_DEBUT', 'date de début de location', NULL),
(308, 1, 7, 'TRF_TAUX_TAXES', 'taux des taxes', NULL),
(309, 1, 7, 'TRF_SERVICES', 'tarifs des services', NULL),
(310, 1, 7, 'LGN_FAC_ID', 'id de la ligne facture', NULL),
(311, 1, 7, 'LGN_FAC_QTE', 'quantité de la ligne facture', NULL),
(312, 1, 7, 'LGN_FAC_REMISE_POURCENT', 'pourcentage de la remise', NULL),
(313, 1, 7, 'LGN_FAC_REMISE_MONTANT', 'montant de la remise', NULL),
(314, 1, 7, 'LGN_FAC_MONTANT', 'montant', NULL),
(315, 1, 7, 'LGN_FAC_TAUX_TVA', 'taux de la tva', NULL),
(316, 1, 7, 'FCT_ID', 'id de la facture', NULL),
(317, 1, 7, 'FCT_PAIMENET_MDE', 'mode du payement', NULL),
(318, 1, 7, 'FCT_DATE', 'date de la facture', NULL),
(319, 1, 7, 'FCT_PAIEMENT_DATE', 'date du payement de la facture', NULL),
(320, 2, 8, 'address', 'address', 'The locn:address property relationship associates any resource with the locn:Address class '),
(321, 2, 8, 'addressArea', 'address area', 'The name or names of a geographic area or locality that groups a number of addressable objects for addressing purposes, without being an administrative unit. This would typically be part of a city, a neighbourhood or village. The domain of locn:addressArea is locn:Address.'),
(322, 2, 8, 'addressId', 'address ID', 'The concept of adding a globally unique identifier for each instance of an address is a crucial part of the INSPIRE data spec. The domain of locn:addressId is locn:Address.'),
(323, 2, 8, 'adminUnitL1', 'admin unit level 1', 'The uppermost administrative unit for the address, almost always a country. The domain of locn:adminUnitL1 is locn:Address and the range is a literal, conceptually defined by the INSPIRE Geographical Name data type.'),
(324, 2, 8, 'adminUnitL2', 'admin unit level 2', 'The region of the address, usually a county, state or other such area that typically encompasses several localities. The domain of  locn:adminUnitL2 is locn:Address and the range is a literal, conceptually defined by the INSPIRE Geographical Name data type.'),
(325, 2, 8, 'fullAddress', 'full address', 'The complete address written as a string, with or without formatting. The domain of locn:fullAddress is locn:Address.'),
(326, 2, 8, 'geographicName', 'geographic name', '\nA geographic name is a proper noun applied to a spatial object. Taking the example used in the relevant INSPIRE data specification (page 18), the following are all valid geographic names for the Greek capital:\n- Αθήνα (the Greek endonym written in the Greek script)\n- Athína (the standard Romanisation of the endonym)\n- Athens (the English language exonym)\nFor INSPIRE-conformant data, provide the metadata for the geographic name using a skos:Concept as a datatype.\n'),
(327, 2, 8, 'geometry', 'geometry', 'Associates any resource with the corresponding geometry.'),
(328, 2, 8, 'location', 'location', 'The location property links any resource to the Location Class. Asserting the location relationship implies only that the domain has some connection to a Location in time or space. It does not imply that the resource is necessarily at that location at the time when the assertion is made.'),
(329, 2, 8, 'locatorDesignator', 'locator designator', 'A number or a sequence of characters that uniquely identifies the locator within the relevant scope(s). The full identification of the locator could include one or more locator designators.\n    '),
(330, 2, 8, 'locatorName', 'locator name', 'Proper noun(s) applied to the real world entity identified by the locator. The locator name could be the name of the property or complex, of the building or part of the building, or it could be the name of a room inside a building. \n    '),
(331, 2, 8, 'poBox', 'PO box', 'The Post Office Box number. The domain of locn:poBox is locn:Address.'),
(332, 2, 8, 'postCode', 'post code', 'The post code (a.k.a postal code, zip code etc.). Post codes are common elements in many countries\' postal address systems. The domain of locn:postCode is locn:Address.'),
(333, 2, 8, 'postName', 'post name', 'The key postal division of the address, usually the city. (INSPIRE\'s definition is \"One or more names created and maintained for postal purposes to identify a subdivision of addresses and postal delivery points.\"). The domain of locn:postName is locn:Address.'),
(334, 2, 8, 'thoroughfare', 'thoroughfare', 'An address component that represents the name of a passage or way through from one location to another. A thoroughfare is not necessarily a road, it might be a waterway or some other feature. The domain of locn:thoroughfare is locn:Address.'),
(335, 2, 9, 'boundary', 'boundary', 'Connect a polygon to a ring describing its boundary.'),
(336, 2, 9, 'centroid', 'centroid', 'Centroid of a geometry'),
(337, 2, 9, 'crs', 'coordinate reference system', 'Coordinate system associated with a geometric primitive.'),
(338, 2, 9, 'envelope', 'envelope', 'Minimal enclosing rectangle of a geometry'),
(339, 2, 9, 'exterior', 'exterior', 'Connect a polygon to a ring describing the outer contour of its surface.'),
(340, 2, 9, 'firstAndLast', 'first and last', 'Désigne le point servant de point initial et de point final à une liste circulaire de points.'),
(341, 2, 9, 'geometry', 'a pour géométrie', 'Geometric primitive associated with an object to represent its location and possibly its shape.'),
(342, 2, 9, 'interior', 'interior', 'Connect a polygon to a ring describing a hole in its surface.'),
(343, 2, 9, 'lineStringMember', 'line string member', 'Links a MultiLineString geometry to the linestrings that compose it.'),
(344, 2, 9, 'lowerCorner', 'coin inférieur', 'Coin d\'une enveloppe correspondant aux valeurs de X et Y les moins élevées.'),
(345, 2, 9, 'pointMember', 'point member', 'Connect a MultiPoint geometry to the points that compose it.'),
(346, 2, 9, 'points', 'points', 'La liste ordonnée des points consitutant une géométrie de type Curve.'),
(347, 2, 9, 'polygonMember', 'polygon member', 'Connects a MultiPolygon geometry to the polygons that compose it.'),
(348, 2, 9, 'upperCorner', 'coin supérieur', 'Coin d\'une enveloppe correspondant aux valeurs de X et Y les plus élevées.'),
(349, 2, 9, 'coordM', 'm', 'L\'interprétation des coordonnées d\'un point dépend du système de coordonnées de référence associé à ce point. La coordonnées M d\'un point représente une mesure.'),
(350, 2, 9, 'coordX', 'x', 'L\'interprétation des coordonnées d\'un point dépend du système de coordonnées de référence associé à ce point. La propriété coordX désigne la coordonnée définie par rapport au premier axe du système de coordonnées.'),
(351, 2, 9, 'coordY', 'y', 'L\'interprétation des coordonnées d\'un point dépend du système de coordonnées de référence associé à ce point. La propriété coordY désigne la coordonnée définie par rapport au deuxième axe du système de coordonnées.'),
(352, 2, 9, 'coordZ', 'z', 'L\'interprétation des coordonnées d\'un point dépend du système de coordonnées de référence associé à ce point. La propriété coordZ désigne la coordonnée définie par rapport au troisième axe du système de coordonnées. La coordonnées Z d\'un point représente typiquement, mais pas nécessairement, l\'altitude ou la hauteur de ce point.'),
(353, 2, 10, 'borneFin', 'borne finale', 'Relation entre un tronçon de route et la borne postale correspondant à son point final.'),
(354, 2, 10, 'borneIni', 'borne initiale', 'Relation entre un tronçon de route et la borne postale correspondant à son point initial.'),
(355, 2, 10, 'clAdmin', 'administrative status', 'Administrative classification. Status of a numbered or named road.'),
(356, 2, 10, 'concerne', 'concerne', 'Relation entre une borne postale et la voie à laquelle elle se rapporte.'),
(357, 2, 10, 'gestionVoie', 'commune gestionnaire de la voie nommée', 'Relation entre une voie nommée et la commune dont elle dépend.'),
(358, 2, 10, 'nature', 'nature', 'Link a topographic entity to the concept that specifies its nature.'),
(359, 2, 10, 'origine', 'origine', 'Source de l\'information.'),
(360, 2, 10, 'typeDeBatiment', 'type de bâtiment', 'Links a building instance to an instance of skos: Concept defined in the list \'building\' which specifies its nature.'),
(361, 2, 10, 'typeDeConstruction', 'type de construction', 'Links a build instance to an instance of skos: Concept defined in the list \'cnstr\' which specifies its nature.'),
(362, 2, 10, 'typeDeFranchissement', 'type de franchissement', 'Links the elements of the transport networks to the type of crossing structure to which they correspond.'),
(363, 2, 10, 'typeDeLaisse', 'type de laisse', 'Links an instance of leash to an instance of skos: Concept defined in the list \'tdl\' which specifies its nature.'),
(364, 2, 10, 'typeDePointDEau', 'type de point d\'eau', 'Links an instance of water point to an instance of skos: Concept defined in the list \'pte\' which specifies its nature.'),
(365, 2, 10, 'typeDeRelief', 'type d\'élément du relief', 'Links a terrain element instance to an instance of skos: Concept defined in the \'rel\' list that specifies its nature.'),
(366, 2, 10, 'typeDeReservoir', 'type de réservoir', 'Links a tank instance to an instance of skos: Concept defined in the \'rsv\' list which specifies its nature.'),
(367, 2, 10, 'typeDeRoute', 'type de route', 'Links a route instance to an instance of skos: Concept defined in the list \'rte\' which specifies its nature.'),
(368, 2, 10, 'typeDeTerrainDeSport', 'type de terrain de sport', 'Links a sport field instance to an instance of skos: Concept defined in the \'tds\' list which specifies its nature.'),
(369, 2, 10, 'typeDeTransportCable', 'type de ligne de transport par câble', 'Links a cable transport infrastructure instance to an instance of skos: Concept defined in the \'tpc\' list which specifies its nature.'),
(370, 2, 10, 'typeDeVegetation', 'type de végétation', 'Links an instance of a vegetation zone to an instance of skos: Concept defined in the \'veg\' list which specifies its nature.'),
(371, 2, 10, 'typeDeVoieFerree', 'type de voie ferrée', 'Links a railroad instance to an instance of skos: Concept defined in the \'vfr\' list which specifies its nature.'),
(372, 2, 10, 'typeDeZAI', 'type de ZAI', 'Links an instance of activity and interest zone to an instance of skos: Concept defined in the list \'zai\' which specifies its nature.'),
(373, 2, 10, 'artif', 'artificial', 'Allows natural streams to be distinguished from artificial or artificialized streams.'),
(374, 2, 10, 'codePostal', 'code postal', 'Numéro de code postal.'),
(375, 2, 10, 'electrifie', 'electrified', 'Désigne le type d\'énergie servant à la propulsion des locomotives. Prends la valeur \'vrai\' s\'il s\'agit d\'une ligne électrifiée.'),
(376, 2, 10, 'enConstruction', 'en construction', 'Indicates the state of an artificial topographic feature. Returns \'true\' if this entity is being built.'),
(377, 2, 10, 'fictif', 'dummy', 'La valeur \'oui\' indique que la géométrie du tronçon de réseau n\'est pas significative.'),
(378, 2, 10, 'gestion', 'gestionnaire', 'Defines the administrative manager of a route. All classified routes have a \'Manager\'.'),
(379, 2, 10, 'hauteur', 'hauteur', 'Hauteur du bâtiment correspondant à la différence entre le Z le plus élevé du pourtour du bâtiment et un point situé au pied du bâtiment.'),
(380, 2, 10, 'importance', 'importance', 'Importance du toponyme dans son environnement. Le toponyme de valeur 1 est plus important que le toponyme de valeur 2, lui-même plus important que le toponyme de valeur 3, etc.'),
(381, 2, 10, 'itEurop', 'european itinerary', 'European road number: a European road generally uses the motorway or national network (exceptionally departmental or unclassified).'),
(382, 2, 10, 'itVert', 'green itinerary', 'Indicates whether or not a road segment belongs to the green network. The green network, made up of green poles and green links, covers the entire French territory. The green poles are made up of communes of more than 23,000 inhabitants in the province and 39,000 inhabitants in Ile-de-France, as well as certain poles of administrative, economic, tourist or industrial activities. We only remember the green transit network between green poles. The green network of drawdown, inside the cities, and the green network recommended to the trucks are not retained.'),
(383, 2, 10, 'largeurChaussee', 'carriageway width', 'Largeur de chaussée (d’accotement à accotement) exprimée en mètres.'),
(384, 2, 10, 'largeurVF', 'largeur de la voie ferrée', 'Attribut permettant de distinguer les voies ferrées de largeur standard (normale) pour la France (1,435 m), des voies ferrées plus larges ou plus étroites.'),
(385, 2, 10, 'militaire', 'entité à vocation militaire', 'Attribut permettant de distinguer une entité topographique à vocation militaire ou simplement gérée par le ministère de la défense d\'une entité civile. La valeur « vrai » est également affectée aux cimetières militaires gérés par le Ministère des Anciens Combattants ou par des états étrangers.'),
(386, 2, 10, 'miseEnService', 'date de mise en service', 'Defines the planned date or effective date of bringing a section of road into service. This attribute is only filled for sections under construction, it is at \"NR\" in other cases. Sections with a date of commissioning are completely closed to vehicles before that date.'),
(387, 2, 10, 'nbVoiesCirculation', 'nombre de voies de circulation', 'Nombre total de voies d’une route, d’une rue ou d’une chaussée de route à chaussées séparées.'),
(388, 2, 10, 'nbVoiesFerrees', 'nombre de voies ferrées', 'Nombre de voies constituant cette portion de ligne de chemin de fer. La valeur 0 indique que le nombre de voies est inconnu.'),
(389, 2, 10, 'nomIti', 'name of itinerary', 'Define a named route.'),
(390, 2, 10, 'numero', 'number', 'Désigne le classement administratif d\'un tronçon routier.'),
(391, 2, 10, 'numeroBorne', 'civic number', 'Numéro de borne postale.'),
(392, 2, 10, 'posSol', 'position in relation to the ground', 'Position par rapport au sol. Donne le niveau de l’objet par rapport à la surface du sol (valeur nulle pour un objet au sol, négative pour un objet situé au-dessous du niveau du sol et positive pour un objet en sursol).'),
(393, 2, 10, 'precAlti', 'altimetric accuracy', 'Geometric altimetric accuracy.'),
(394, 2, 10, 'precPlani', 'planimetric accuracy', 'Planimetric geometric precision.'),
(395, 2, 10, 'regime', 'régime des eaux', 'Attribut permettant de caractériser un objet hydrographique en fonction du régime des eaux.'),
(396, 2, 10, 'sens', 'direction of traffic', 'Permitted traffic direction for cars on tracks.'),
(397, 2, 10, 'typAdres', 'type d’adressage', 'Provides information on the type of addressing of the section.'),
(398, 2, 10, 'typeDePiste', 'type de piste', 'Attribut permettant de distinguer différentes natures d\'aérodrome.'),
(399, 2, 10, 'voltage', 'voltage', 'Tension de construction de la ligne électrique en kV (kilo Volts).'),
(400, 2, 10, 'zFin', 'final z', 'Altitude du sommet final d\'une portion d\'élément linéaire d\'un réseau.'),
(401, 2, 10, 'zIni', 'initial z', 'Altitude du sommet initial d\'une portion d\'élément linéaire d\'un réseau.'),
(402, 2, 10, 'zMax', 'max z', 'Altitude maximale d’un objet linéaire ou surfacique. Cette information est issue de la saisie photogrammétrique et concerne des objets dont les points initiaux et finaux ne sont pas caractéristiques de l’altitude de l’objet (objets surfaciques, objets linéaires isolés). Pour des objets surfaciques comme les bâtiments ou les réservoirs, il s’agit de l’altitude maximum du pourtour tel qu’il est défini en planimétrie (généralement l’altitude aux gouttières) et non de l’altitude maximum absolue (voir schéma ci-dessus). Dans le cas d’un bâtiment obtenu après intégration du bâti issu du cadastre, Z_MAX correspond à une altitude toit médiane calculée, en prenant en compte les altitudes des contours des bâtiments directement contigus s’ils existent. Dans ce cas Z_MAX et Z_MIN prennent la même valeur. L’attribut peut prendre une valeur conventionnelle (9999) lorsque la géométrie de l’objet n’est pas issue d’une saisie photogrammétrique (ex. objets numérisés sur la carte en service). '),
(403, 2, 10, 'zMin', 'min z', 'Altitude minimale d’un objet linéaire ou surfacique. Cette information est issue de la saisie photogrammétrique et concerne des objets dont les points initiaux et finaux ne sont pas caractéristiques de l’altitude de l’objet (objets surfaciques, objets linéaires isolés). Pour des objets surfaciques comme les bâtiments ou les réservoirs, il s’agit de l’altitude minimum du pourtour tel qu’il est défini en planimétrie (généralement l’altitude aux gouttières) et non de l’altitude minimum absolue. Dans le cas d’un bâtiment obtenu après intégration du bâti issu du cadastre, Z_MIN correspond à une altitude toit médiane calculée, en prenant en compte les altitudes des contours des bâtiments directement contigus s’ils existent. Dans ce cas Z_MAX et Z_MIN prennent la même valeur. L’attribut peut prendre une valeur conventionnelle (9999) lorsque la géométrie de l’objet n’est pas issue d’une saisie photogrammétrique (ex. objets numérisés sur la carte en service).'),
(404, 2, 10, 'zMoyen', 'average z', 'Altitude moyenne des points composants la géométrie de l’objet telle qu’il a été saisi à l’origine lorsqu’il est issu d’une saisie photogrammétrique. L’attribut peut prendre une valeur conventionnelle (9999) lorsque la géométrie de l’objet n’est pas issue d’une saisie photogrammétrique (ex. objets numérisés sur la carte en service).'),
(405, 2, 11, 'occupancyAdults', 'occupancy adults (0..1)', 'The allowed total occupancy of adults (in the sense of fully paying guests) for the accommodation in persons. The exact definition of what constitutes an adult varies across regions and will typically not match the legal definition of being an adult. \nTypical unit code(s): C62 for person'),
(406, 2, 11, 'partOf', 'partOf (0..*)', 'A naive parthood relation between two acco:Accommodation instances. Examples: A certain hotel room is part of a certain hotel, a certain house is part of a holiday resort, etc. '),
(407, 2, 11, 'referenceQuantity', 'reference quantity (0..*)', 'The reference quantity for which a certain price applies, e.g. 1 EUR per 4 kWh of electricity. This property is a replacement for gr:hasUnitOfMeasurement for the advanced cases where the price does not relate to a standard unit.'),
(408, 2, 11, 'bed', 'bed (0..*)', 'The type of bed or beds included in the accommodation. For the single case of just one bed of a certain type, you use acco:bed directly with acco:BedType instances. If you want to indicate the quantity of a certain acco:BedType, use an instance of acco:BedDetails. For more detailed information, use acco:feature.'),
(409, 2, 11, 'priceComponent', 'price component (0..*)', 'This property links to all gr:UnitPriceSpecification nodes that apply in parallel for the acco:CompoundPrice node.'),
(410, 2, 11, 'availabilityTimes', 'availability times (0..1)', 'Indicates the times of availability of a particular accommodation feature. Example: The sauna is available from 8:00 - 10:00 a.m. on weekdays.'),
(411, 2, 11, 'occupancy', 'occupancy (0..1)', 'The allowed total occupancy for the accommodation in persons (including infants etc.\nTypical unit code(s): C62 for person'),
(412, 2, 11, 'typeOfBed', 'type of bed (1..1)', 'The type of bed to which the acco:BedDetail node refers, i.e. the type of bed available in the quantity indicated by acco:quantity.'),
(413, 2, 11, 'size', 'size (0..1)', 'The size of the accommodation, e.g. in square meter or squarefoot.\nTypical unit code(s): MTK for square meter, FTK for square foot, or YDK for square yard '),
(414, 2, 11, 'permittedUsage', 'permitted usage (0..*)', 'The type of objects that you are allowed to put on the camping pitch, e.g. a tent, car, boat, or mobile homre. Use DBpedia URIs whenever possible.'),
(415, 2, 11, 'occupancyMinors', 'occupancy minors (0..1)', 'The allowed total occupancy of minors (in the sense of not fully paying guests) for the accommodation in persons. The exact definition of what constitutes a minor varies across regions and will typically not match the legal definition of being a minor. \nTypical unit code(s): C62 for person'),
(416, 2, 11, 'numberOfRooms', 'number of rooms (0..1)', 'The number of rooms (excluding bathrooms and closets of the acco:Suite, acco:House, or acco:Apartment. \nTypical unit code(s): C62 for person'),
(417, 2, 11, 'includedFeature', 'included feature (0..*)', 'A feature (e.g. a characteristic or service) of the acco:Accommodation that is included in the offer for the main accommodation, i.e. at no extra costs. '),
(418, 2, 11, 'feature', 'feature (0..*)', 'A feature (e.g. a characteristic or service) of the acco:Accommodation. This generic property does not make a statement about whether the feature is included in the offer for the main accommodation or available at extra costs. '),
(419, 2, 11, 'optionalFeature', 'optional feature (0..*)', 'A feature (e.g. a characteristic or service) of the acco:Accommodation that is generally available but not included in the offer for the main accommodation, i.e. at  extra costs. '),
(420, 2, 11, 'unit', 'unit (0..1)', 'A textual representation of the unit of measurement, e.g. global identifier, e.g. \"m\" or \"meter\". When you have the UN/CEFACT Common Code for the unit available, it is better to use acco:unitCode. This property is for the cases where a standardized unit code is not available from the data source.'),
(421, 2, 11, 'value', 'value (0..1)', 'The point value for the feature unless it is an interval. If possible, use numerical datatypes, e.g. xsd:decimal, xsd:int, or xsd:float. Textual content is also acceptable, though.'),
(422, 2, 11, 'validThrough', 'valid from (0..1)', 'Indicates the beginning of a time interval during which a certain feature is valid or available. For example, a sauna or swimming pool may only be available during certain periods.'),
(423, 2, 11, 'gated', 'gated (0..1)', 'Indicates whether the accommodation is gated, i.e. access is controlled via a fence and some form of gate.'),
(424, 2, 11, 'validFrom', 'valid from (0..1)', 'Indicates the beginning of a time interval during which a certain feature is valid or available. For example, a sauna or swimming pool may only be available during certain periods.'),
(425, 2, 11, 'min', 'min (0..1)', 'The lower bound of the value for the feature. It is best to use this property with numerical datatypes, e.g. xsd:decimal, xsd:int, or xsd:float.'),
(426, 2, 11, 'unitCode', 'unit code (0..1)', 'The UN/CEFACT Common Code for the unit of measurement, e.g. \"MTR\" for meter, \"HUR\" for hours, etc. If you only have a textual representation of the unit of measurement, use acco:unit instead.'),
(427, 2, 11, 'propertyID', 'property ID (0..1)', 'A global identifier, e.g. a URI, a prefixed string, or any other identifier that can be used to refer to a standardized property type.\n\nThe following prefixes and values are reserved:\nstarRating:HOTREC \nstarRating:DEHOGA\nstarRating:WHR\nstarRating:Hotelstars\n'),
(428, 2, 11, 'quantity', 'quantity (1..1)', 'The quantity of the given bed type available in the acco:HotelRoom, acco:Suite, acco:House, or acco:Apartment.'),
(429, 2, 11, 'max', 'max (0..1)', 'The upper bound of the value for the feature. It is best to use this property with numerical datatypes, e.g. xsd:decimal, xsd:int, or xsd:float.'),
(430, 2, 11, 'petsAllowed', 'pets allowed (0..1)', 'Indicates whether pets are allowed to enter the accommodation.');

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
(1, 1, 116, 9, NULL, NULL, 1, '2020-04-22 19:30:46', '2020-04-22 19:34:25', 'Omeka\\Entity\\Item'),
(2, 1, 117, 10, NULL, NULL, 1, '2020-04-22 19:31:30', '2020-04-22 19:31:30', 'Omeka\\Entity\\Item'),
(3, 1, 118, 11, NULL, NULL, 1, '2020-04-22 19:33:41', '2020-04-22 19:34:42', 'Omeka\\Entity\\Item'),
(4, 1, 120, 12, NULL, NULL, 1, '2020-04-22 19:35:48', '2020-04-22 19:35:48', 'Omeka\\Entity\\Item'),
(5, 1, 119, 13, NULL, NULL, 1, '2020-04-22 19:36:24', '2020-04-22 19:36:24', 'Omeka\\Entity\\Item'),
(6, 1, 121, 18, NULL, NULL, 1, '2020-04-22 19:37:05', '2020-04-22 19:37:05', 'Omeka\\Entity\\Item'),
(7, 1, 125, 15, NULL, NULL, 1, '2020-04-22 19:38:15', '2020-04-22 19:42:31', 'Omeka\\Entity\\Item'),
(8, 1, 126, 14, NULL, NULL, 1, '2020-04-22 19:39:35', '2020-04-22 19:41:10', 'Omeka\\Entity\\Item'),
(9, 1, 124, 17, NULL, NULL, 1, '2020-04-22 19:40:21', '2020-04-22 19:40:21', 'Omeka\\Entity\\Item'),
(10, 1, 123, 19, NULL, NULL, 1, '2020-04-22 19:43:06', '2020-04-22 19:43:06', 'Omeka\\Entity\\Item');

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
(116, 1, 7, 'LOGEMENT', 'LOGEMENT', NULL),
(117, 1, 7, 'PLANNING', 'PLANNING', NULL),
(118, 1, 7, 'CLIENT', 'CLIENT', NULL),
(119, 1, 7, 'EMAIL', 'EMAIL', NULL),
(120, 1, 7, 'ADRESSE', 'ADRESSE', NULL),
(121, 1, 7, 'TELEPHONE', 'TELEPHONE', NULL),
(122, 1, 7, 'LOG_PLN_CLI', 'LOG_PLN_CLI', NULL),
(123, 1, 7, 'TRF_LOG', 'TRF_LOG', NULL),
(124, 1, 7, 'TARIF', 'TARIF', NULL),
(125, 1, 7, 'LIGNE_FACTURE', 'LIGNE_FACTURE', NULL),
(126, 1, 7, 'FACTURE', 'FACTURE', NULL),
(127, 2, 8, 'Address', 'Address', 'An \"address representation\" as conceptually defined by the INSPIRE Address Representation data type. The locn:addressId property may be used to link this locn:Address to other representations.'),
(128, 2, 8, 'Geometry', 'Geometry', 'The locn:Geometry class provides the means to identify a location as a point, line, polygon, etc. expressed using coordinates in some coordinate reference system.'),
(129, 2, 9, 'Curve', 'Courbe', 'Geometric primitive representing a curve. It is not instantiable. It\'s specializations are instantiated as an ordered list of points associated with an interpolation function.'),
(130, 2, 9, 'Envelope', 'Envelope', 'Geometric primitive representing the minimal envelope of a geometry. An envelope is represented by two points: its maximum coordinate corner and its minimal coordinate corner.'),
(131, 2, 9, 'Geometry', 'Geometry', 'Non-instantiable geometric primitive, root of the ontology of geometric primitives. Geometry is associated with a coordinate system and only one.'),
(132, 2, 9, 'GeometryCollection', 'Collection de géométries', 'Collection comprenant un ou plusieurs objets géométriques, sans structure interne. Tous les éléments d\'une collection de géométries sont définis dans le même système de coordonnées.'),
(133, 2, 9, 'Line', 'Ligne', 'Geometric primitive specializing the primitive Polyline and consisting of only two points.'),
(134, 2, 9, 'LineString', 'Line string', 'Geometric primitive specializing the abstract primitive curve. Its points are linked by a linear interpolation function. Each pair of successive points therefore constitutes a straight line segment.'),
(135, 2, 9, 'LinearRing', 'Anneau', 'Geometric primitive specializing the primitive Polyline. It is a simple, closed curve.'),
(136, 2, 9, 'MultiCurve', 'Multi curve', 'Collection d\'objets géométriques de type Courbe. Cette primitive n\'est pas instanciable: elle définit des propriétés pour ses sous-classes.'),
(137, 2, 9, 'MultiLineString', 'Multi line string', 'Collection d\'objets géométriques de type Polyligne. C\'est une MultiCourbe dont tous les éléments sont des Polylignes.'),
(138, 2, 9, 'MultiPoint', 'Multi point', 'Collection d\'objets géométriques de type Point, non connectés et non ordonnés. Un multipoint est dit simple si tous ses points sont différents (i.e. ont des coordonnées différentes).'),
(139, 2, 9, 'MultiPolygon', 'Multi polygon', 'Collection d\'objets géométriques de type Polygone. C\'est une MultiSurface dont tous les éléments sont des Polygones.'),
(140, 2, 9, 'MultiSurface', 'Multi surface', 'Collection d\'objets géométriques de type Surface. Cette primitive n\'est pas instanciable: elle définit des propriétés pour ses sous classes.'),
(141, 2, 9, 'Point', 'Point', 'Geometric primitive to represent a geographical position. This position is represented via X and Y coordinates expressed in a given coordinate system. If the coordinate system associated with the point allows it, the point may also have Z and M coordinates.'),
(142, 2, 9, 'PointsList', 'List of points', 'List of points'),
(143, 2, 9, 'Polygon', 'Polygon', 'Geometric primitive specializing Surface primitive. It is a flat surface defined by an outer boundary and zero or more interior boundaries. Each inner boundary defines a hole in the polygon.'),
(144, 2, 9, 'Surface', 'Surface', 'Geometric primitive locally representing a continuous image of a region of a plane. It is not instantiable. The outline of a surface is a set of closed curves corresponding to its boundaries.'),
(145, 2, 10, 'AireDePeage', 'Aire de péage', 'Emprise de la chaussée d\'une aire de péage.'),
(146, 2, 10, 'AireDeTriage', 'Aire de triage', 'Area encompassing all sections of tracks, sidings, switches for sorting cars and the composition of trains. Sorting area, beam of tracks.'),
(147, 2, 10, 'Bassin', 'Basin', 'Construction non couverte destinée à recevoir de l\'eau temporairement ou de manière permanente.'),
(148, 2, 10, 'Bati', 'Buildings and structures', 'Buildings (undifferentiated, industrial and remarkable) and other constructions.'),
(149, 2, 10, 'Batiment', 'Building', 'Construction d\'une certaine importance destinée à abriter des personnes, des choses ou des animaux.'),
(150, 2, 10, 'BornePostale', 'Borne postale', 'Borne postale située à l\'extrémité d\'un tronçon de route.'),
(151, 2, 10, 'CanalisationDEau', 'Canalisation d\'eau', 'Aerial water pipeline.'),
(152, 2, 10, 'Cimetiere', 'Cemetery', 'Lieu où l’on enterre les morts.'),
(153, 2, 10, 'Conduite', 'Conduite', 'Conduite (autre que canalisation d’eau) ou tapis roulant utilisés pour le transport de matière première (gaz, hydrocarbure, minerai, etc.) ou canalisation de nature inconnue.'),
(154, 2, 10, 'Construction', 'Construction', 'Civil engineering works.'),
(155, 2, 10, 'CoursDEau', 'Cours d\'eau', 'Portion de cours d\'eau, réel ou fictif, permanent ou temporaire, naturel ou artificiel, homogène pour l\'ensemble des attributs qui la concernent, et qui n\'inclut pas de confluent.'),
(156, 2, 10, 'ElementDuRelief', 'Relief feature', 'Entité topographique correspondant à une rupture de pente artificielle, ou à un élément remarquable du relief nommé.'),
(157, 2, 10, 'ElementReseauFerroviaire', 'Transport by rail feature', 'Elements of the rail transportation system: railways and marshalling yards.'),
(158, 2, 10, 'ElementReseauRoutier', 'Road transport feature', 'Elements of the road transport network: paved and unpaved roads, \'addressed\' network, and a selection of roads and trails.'),
(159, 2, 10, 'EntiteHydrographiqueTerrestre', 'Entité hydrographique terrestre', 'Entité topographique relative au réseau hydrographique terrestre, à la production ou au stockage d\'eau.'),
(160, 2, 10, 'EntiteTopographique', 'Entité topographique', 'A real world phenomenon that is associated with a location on earth'),
(161, 2, 10, 'InfrastructureTransportEnergie', 'Energy transport infrastructure', 'Elements of the electricity transmission network at high and very high voltage, and pipes used for the transport of raw material.'),
(162, 2, 10, 'Laisse', 'Laisse', 'Limite supérieure ou inférieure de l\'estran.'),
(163, 2, 10, 'LigneElectrique', 'Electricity transmission line', 'Portion de ligne électrique homogène pour l\'ensemble des attributs qui la concernent.'),
(164, 2, 10, 'LigneTransportCable', 'Cableway transport line', 'Means of transport consisting of one or more carrying cables.'),
(165, 2, 10, 'Parking', 'Car park', 'Area developed for the parking of automobiles. Parking uncovered, public or private, parking area of about half a hectare and more.'),
(166, 2, 10, 'PisteAerodrome', 'Piste d\'aérodrome', 'Aire située sur un aérodrome, aménagée afin de servir au roulement des aéronefs, au décollage et à l’atterrissage, en dur ou en herbe.'),
(167, 2, 10, 'Place', 'Place', 'Place or crossroads covered with wide width.'),
(168, 2, 10, 'PointDEau', 'Point d\'eau', 'Source (captured or not), point of water production (pumping, drilling, well, ...) or small water storage point (cistern, waterer, laundry, basin).'),
(169, 2, 10, 'PosteTransformation', 'Poste de transformation', 'Enceinte à l\'intérieur de laquelle le courant transporté par une ligne électrique est transformé.'),
(170, 2, 10, 'Pylone', 'Pylon', 'Electric line support. Pylon, portico.'),
(171, 2, 10, 'Reservoir', 'Réservoir', 'Réservoir (eau, matières industrielles,...) de plus de 10m de diamètre.'),
(172, 2, 10, 'Route', 'Road', 'Portion de voie de communication destinée aux automobiles, aux piétons, aux cycles ou aux animaux, homogène pour l\'ensemble des attributs et des relations qui la concerne. Le tronçon de route peut être revêtu ou non revêtu (pas de revêtement de surface ou revêtement de surface fortement dégradé).'),
(173, 2, 10, 'SurfaceDEau', 'Surface d\'eau', 'Non-marine water surface: wide channel, pond, wide river, lake, pond, wide river.'),
(174, 2, 10, 'TerrainDeSport', 'Sports ground', 'Outdoor sports equipment.'),
(175, 2, 10, 'TypeDeBatiment', 'Type de bâtiment', 'Includes all instances designating building types.'),
(176, 2, 10, 'TypeDeConstruction', 'Type de construction', 'Group together all the instances designating types of constructions.'),
(177, 2, 10, 'TypeDeFranchissement', 'Type de franchissement', 'Includes all instances designating types of crossing structures.'),
(178, 2, 10, 'TypeDeLaisse', 'Type de laisse', 'Group together all instances designating leash types.'),
(179, 2, 10, 'TypeDePointDEau', 'Type de point d\'eau', 'Gathers all the instances designating types of water points.'),
(180, 2, 10, 'TypeDeRelief', 'Type d\'élément du relief', 'Gathers all the instances designating types of reliefs.'),
(181, 2, 10, 'TypeDeReservoir', 'Type de réservoir', 'Group together all instances designating types of tanks.'),
(182, 2, 10, 'TypeDeRoute', 'Type de route', 'Group together all instances designating types of routes.'),
(183, 2, 10, 'TypeDeTerrainDeSport', 'Type de terrain de sport', 'Includes all instances designating types of sports fields.'),
(184, 2, 10, 'TypeDeTransportCable', 'Type de ligne de transport par câble', 'Consists of all instances designating types of cable transport infrastructure.'),
(185, 2, 10, 'TypeDeVegetation', 'Type de végétation', 'Includes all instances designating tree vegetation types.'),
(186, 2, 10, 'TypeDeVoieFerree', 'Type de voie ferrée', 'Includes all instances designating railway types.'),
(187, 2, 10, 'TypeDeZAI', 'Type de ZAI', 'Includes all instances designating types of activity and interest areas.'),
(188, 2, 10, 'Voie', 'Named street', 'A lane is a set of road sections associated with the same name. A path is identified by name in a given commune. The channel name is the one used for addressing.'),
(189, 2, 10, 'VoieFerree', 'Railway track', 'Portion de voie ferrée homogène pour l\'ensemble des attributs qui la concernent. Dans le cas d’une ligne composée de deux à quatre voies parallèles, l’ensemble des voies est modélisé par un seul objet.'),
(190, 2, 10, 'ZoneActiviteInteret', 'Working area or area of interest', 'Building or site with a specific vocation or character (administrative, religious, sports, industrial, etc.).'),
(191, 2, 10, 'ZoneDeVegetation', 'Vegetation area', 'Espace végétal naturel ou non différencié selon le couvert forestier.'),
(192, 2, 11, 'Hotel', 'Hotel (gr:ProductOrService, gr:Location)', 'A hotel is an establishment that provides lodging paid on a short-term basis. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/Hotel)'),
(193, 2, 11, 'MeetingRoom', 'Meeting Room (gr:ProductOrService, gr:Location)', 'A meeting room, conference room, or conference hall is a room provided for singular events such as business conferences and meetings. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/Conference_hall)  '),
(194, 2, 11, 'Dinner', 'Dinner (gr:ProductOrService)', 'A dinner is the main meal of the day, often consumed in the evening of the day.'),
(195, 2, 11, 'Breakfast', 'Breakfast (gr:ProductOrService)', 'A breakfast is the first meal taken after rising from a night\'s sleep, most often eaten in the early morning before undertaking the day\'s work. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/Breakfast)'),
(196, 2, 11, 'Lunch', 'Lunch (gr:ProductOrService)', 'A luncheon, commonly abbreviated to lunch, is a middle of the day meal. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/Lunch)'),
(197, 2, 11, 'BedType', 'Bed Type', 'A type of bed. This is used for indicating the bed or beds available in an accommodation. Use DBpedia URIs whenever possible.'),
(198, 2, 11, 'Meal', 'Meal (gr:ProductOrService)', 'A meal in the sense of this vocabulary is some combination of food or beverages.'),
(199, 2, 11, 'BedDetails', 'Bed Details', 'A node holding detailed information about the available bed types, e.g. the quantity of twin beds for a hotel room. For the single case of just one bed of a certain type, you can use acco:bed directly with acco:BedType instances.'),
(200, 2, 11, 'Resort', 'Resort (gr:ProductOrService, gr:Location)', 'A resort is a place used for relaxation or recreation, attracting visitors for holidays or vacations. Resorts are places, towns or sometimes commercial establishment operated by a single company. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/Resort)'),
(201, 2, 11, 'CampingSite', 'Camping Site (gr:ProductOrService, gr:Location)', 'A camping site, campsite, or campground is a place used for overnight stay in the outdoors. In British English a campsite is an area, usually divided into a number of pitches, where people can camp overnight using tents or camper vans or caravans; this British English use of the word is synonymous with the American English expression campground. In American English the term campsite generally means an area where an individual, family, group, or military unit can pitch a tent or parks a camper; a campground may contain many campsites. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/Campsite)'),
(202, 2, 11, 'DwellingType', 'Dwelling Type', 'A type of dwelling, e.g. tent, mobile home, etc. for indicating the permitted usage on a campsite. Use DBpedia URIs whenever possible.'),
(203, 2, 11, 'Suite', 'Suite (gr:ProductOrService, gr:Location)', 'A suite in a hotel or other public accommodation, denotes a class of luxury accommodations, the key feature of which is multiple rooms. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/Suite_(hotel)) '),
(204, 2, 11, 'Accommodation', 'Accommodation (gr:ProductOrService, gr:Location)', 'An accommodation is a place that can accommodate human beings, e.g. a hotel room, a camping pitch, or a meeting room. Many accommodations are for overnight stays, but this is not a mandatory requirement.\n\nNote: For more specific types of accommodations not defined in this ontology, you can easily use any Wikipedia entry from \n\n    http://en.wikipedia.org/wiki/List_of_human_habitation_forms\n\nand replace the base URI\n\n    http://en.wikipedia.org/wiki/\n\nby\n\n    http://www.productontology.org/id/\n\nFor instance, if you want want to describe an igloo (http://en.wikipedia.org/wiki/Igloo) for rent, you can use the local part \'Igloo\' as a class identifier as follows:\n\n    http://www.productontology.org/id/Igloo'),
(205, 2, 11, 'CampingPitch', 'Camping Pitch (gr:ProductOrService, gr:Location)', 'A camping pitch is an individual place for overnight stay in the outdoors, typically being part of a larger acco:CampSite.'),
(206, 2, 11, 'HotelRoom', 'Hotel Room (gr:ProductOrService, gr:Location)', 'A hotel room is a single room in a hotel.'),
(207, 2, 11, 'Apartment', 'Apartment (gr:ProductOrService, gr:Location)', 'An apartment (in American English) or flat (in British English) is a self-contained housing unit (a type of residential real estate) that occupies only part of a building. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/Apartment)'),
(208, 2, 11, 'AccommodationFeature', 'Accommodation Feature', 'An accommodation feature is a structured value representing the feature of an accommodation as a property-value pair of varying degrees of formality.'),
(209, 2, 11, 'Allinclusive', 'All-inclusive (gr:ProductOrService)', 'All-inclusive in the sense of this vocabulary is a comprehesive set of foods and beverages, and sometimes complementing services, provided throughout the entire day.'),
(210, 2, 11, 'CompoundPrice', 'Compound Price', 'A compound price specification is one that bundles multiple prices that all apply in combination for different dimensions of consumption. Use gr:name for indicating the dimension (e.g. \"electricity\" or \"final cleaning\").'),
(211, 2, 11, 'House', 'House (gr:ProductOrService, gr:Location)', 'A house is a building or structure that has the ability to be occupied for habitation by humans or other creatures. (Source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/House)');

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
(9, 1, 116, NULL, NULL, 'LOGEMENT'),
(10, 1, 117, NULL, NULL, 'PLANNING'),
(11, 1, 118, NULL, NULL, 'CLIENT'),
(12, 1, 120, NULL, NULL, 'ADRESSE'),
(13, 1, 119, NULL, NULL, 'EMAIL'),
(14, 1, 126, NULL, NULL, 'FACTURE'),
(15, 1, 125, NULL, NULL, 'LIGNE_FACTURE'),
(16, 1, 122, NULL, NULL, 'LOG_PLN_CLI'),
(17, 1, 124, NULL, NULL, 'TARIF'),
(18, 1, 121, NULL, NULL, 'TELEPHONE'),
(19, 1, 123, NULL, NULL, 'TRF_LOG');

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
(66, 12, 293, NULL, NULL, 1, NULL, 0, 0),
(67, 12, 285, NULL, NULL, 2, NULL, 0, 0),
(68, 12, 294, NULL, NULL, 3, NULL, 0, 0),
(69, 12, 295, NULL, NULL, 4, NULL, 0, 0),
(70, 12, 296, NULL, NULL, 5, NULL, 0, 0),
(71, 12, 297, NULL, NULL, 6, NULL, 0, 0),
(72, 12, 298, NULL, NULL, 7, NULL, 0, 0),
(73, 11, 285, NULL, NULL, 1, NULL, 0, 0),
(74, 11, 286, NULL, NULL, 2, NULL, 0, 0),
(75, 11, 287, NULL, NULL, 3, NULL, 0, 0),
(76, 11, 288, NULL, NULL, 4, NULL, 0, 0),
(77, 11, 289, NULL, NULL, 5, NULL, 0, 0),
(78, 9, 275, NULL, NULL, 1, NULL, 0, 0),
(79, 9, 277, NULL, NULL, 3, NULL, 0, 0),
(80, 9, 278, NULL, NULL, 4, NULL, 0, 0),
(81, 9, 279, NULL, NULL, 5, NULL, 0, 0),
(82, 9, 280, NULL, NULL, 6, NULL, 0, 0),
(83, 9, 281, NULL, NULL, 7, NULL, 0, 0),
(84, 9, 282, NULL, NULL, 8, NULL, 0, 0),
(85, 9, 283, NULL, NULL, 9, NULL, 0, 0),
(86, 10, 284, NULL, NULL, 1, NULL, 0, 0),
(89, 13, 290, NULL, NULL, 1, NULL, 0, 0),
(90, 13, 285, NULL, NULL, 2, NULL, 0, 0),
(91, 13, 291, NULL, NULL, 3, NULL, 0, 0),
(92, 13, 292, NULL, NULL, 4, NULL, 0, 0),
(95, 14, 316, NULL, NULL, 1, NULL, 0, 0),
(96, 14, 285, NULL, NULL, 2, NULL, 0, 0),
(97, 14, 317, NULL, NULL, 3, NULL, 0, 0),
(98, 14, 318, NULL, NULL, 4, NULL, 0, 0),
(99, 14, 319, NULL, NULL, 5, NULL, 0, 0),
(102, 15, 310, NULL, NULL, 1, NULL, 0, 0),
(103, 15, 316, NULL, NULL, 2, NULL, 0, 0),
(104, 15, 311, NULL, NULL, 3, NULL, 0, 0),
(105, 15, 312, NULL, NULL, 4, NULL, 0, 0),
(106, 15, 313, NULL, NULL, 5, NULL, 0, 0),
(107, 15, 314, NULL, NULL, 6, NULL, 0, 0),
(108, 15, 315, NULL, NULL, 7, NULL, 0, 0),
(111, 16, 285, NULL, NULL, 1, NULL, 0, 0),
(112, 16, 284, NULL, NULL, 2, NULL, 0, 0),
(113, 16, 275, NULL, NULL, 3, NULL, 0, 0),
(114, 16, 303, NULL, NULL, 4, NULL, 0, 0),
(115, 16, 304, NULL, NULL, 5, NULL, 0, 0),
(116, 16, 305, NULL, NULL, 6, NULL, 0, 0),
(119, 17, 307, NULL, NULL, 1, NULL, 0, 0),
(120, 17, 308, NULL, NULL, 2, NULL, 0, 0),
(121, 17, 309, NULL, NULL, 3, NULL, 0, 0),
(124, 18, 299, NULL, NULL, 1, NULL, 0, 0),
(125, 18, 285, NULL, NULL, 2, NULL, 0, 0),
(126, 18, 300, NULL, NULL, 3, NULL, 0, 0),
(127, 18, 301, NULL, NULL, 4, NULL, 0, 0),
(128, 18, 302, NULL, NULL, 5, NULL, 0, 0),
(131, 19, 275, NULL, NULL, 1, NULL, 0, 0),
(132, 19, 306, NULL, NULL, 2, NULL, 0, 0),
(133, 19, 307, NULL, NULL, 3, NULL, 0, 0),
(134, 9, 276, NULL, NULL, 2, NULL, 0, 0);

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
('31n0alu7nrfrj145qmfau46hi8', 0x5f5f5a467c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383234393937392e33383236323b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226b726c6439633471666e6231706f3269676b6c37346469646a74223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383233383432343b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383234353631373b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538383234343630323b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383235333536303b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226639663765663838383665336266373139373762306630663438386665386665223b733a33323a223439666331306531663133306436353331383433663863343962656135653933223b7d733a343a2268617368223b733a36353a2234396663313065316631333064363533313834336638633439626561356539332d6639663765663838383665336266373139373762306630663438386665386665223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223832656365633538336661636132396236653236653838633436656530356436223b733a33323a223135383438643735663034646232363632623331333964303930663139626438223b733a33323a226564623934666139316235623564613539313939343231356163626631656262223b733a33323a223663393733656261306133633739353938646435336535373539646431633566223b733a33323a223336393038613035373865343862346561613765353862353539306164656535223b733a33323a226334393264333736353530346539346261316166323366666136646439393338223b733a33323a223265376231336333363039313830613661316537333532326533663666643031223b733a33323a226130393961353134356539363363323638323231623133346662623532396535223b7d733a343a2268617368223b733a36353a2261303939613531343565393633633236383232316231333466626235323965352d3265376231336333363039313830613661316537333532326533663666643031223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223735323136313164353537396233306635626335663362616164376234633433223b733a33323a223133343464633561636430353631326533303939633135306130643962643334223b733a33323a223665663264323562333930303035666263346232643830346435613834323937223b733a33323a226232306434663133303035636533366639653835653739306565373430303135223b733a33323a223761666663393037626235613235386261383534613963643565623464373862223b733a33323a223539306530363838613031653134656463386432366162313531653136653533223b7d733a343a2268617368223b733a36353a2235393065303638386130316531346564633864323661623135316531366535332d3761666663393037626235613235386261383534613963643565623464373862223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223665643235373134336561313564653766373235626236303034346132633262223b733a33323a223564616434636336366364336634306436663064613239346665643663623538223b733a33323a226438626262643163376233306363366333373331303531333663396230646161223b733a33323a223966343039303739393139353638313036323066663962653136366365663731223b7d733a343a2268617368223b733a36353a2239663430393037393931393536383130363230666639626531363663656637312d6438626262643163376233306363366333373331303531333663396230646161223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1588249979),
('hqdm83eevdjpvm0b3n6rkicje6', 0x5f5f5a467c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383235343633302e3939323737383b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226b6f3667627531656d6f30663137663033706b71716a63356437223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383235353636373b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383235383032303b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223538373337353161646535313231346361336562343131386564313862366465223b733a33323a226232363830373733326533663435303335633731343938343366626666316637223b733a33323a223139386639366365623764303431323165336234376132393037636434363830223b733a33323a223564376435666134366436626463363431313666663637356162303931343638223b7d733a343a2268617368223b733a36353a2235643764356661343664366264633634313136666636373561623039313436382d3139386639366365623764303431323165336234376132393037636434363830223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a323b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313237323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31323a7b733a33323a226137363161353737326638626261396537383930363235303932386339613033223b733a33323a223563336135393466333836373030636464353331353065653232306530653562223b733a33323a223431393031373933663339626166633562373633353331353935303830393232223b733a33323a223030316235626461646461393062323439653364666433306336666336326262223b733a33323a223266653836613436303065396631643234643330646133633634643436656532223b733a33323a226632626430313666323130613837643563383630306630646139616531663063223b733a33323a226235666666363965376561663939666466663864313237316263656135396661223b733a33323a223063663939333835373130336164393831383639633733323231343733333135223b733a33323a226233306235303264326233336533633136346665386365613761386264336363223b733a33323a226536343638393733613164373339313465613162373765363662326565613164223b733a33323a223734643036323364333264373833393431303930353532326165383364646536223b733a33323a226636373063666163366531303437303432333331336537633266666330663330223b733a33323a223331336261623763336539626435386163633662613461326464613432326130223b733a33323a226538366461323462626537366232333966356566643339323431386131343032223b733a33323a223765646163383733353131333437383364653430636461366237373038613033223b733a33323a226365383537313938633961313330303137306237383862303464336666353161223b733a33323a226565653636323733343635366664623233343933393131396566333235356434223b733a33323a223835633764363337356161396165636232316438633535306630313637363939223b733a33323a223938643136313366653932313737383631643539323635326431656439396337223b733a33323a223036386632636132616665643436663836363132313535303833376462393162223b733a33323a226130633132346631636235353334306335363435666436386565666334306636223b733a33323a226663646535666532323162663961646334363162396334653833613931396661223b733a33323a223535303239616336363935313561333735653865616230636436663564613834223b733a33323a223535366235323033383837323131373163613431626539343636353437393032223b7d733a343a2268617368223b733a36353a2235353662353230333838373231313731636134316265393436363534373930322d3535303239616336363935313561333735653865616230636436663564613834223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1588254631),
('jqmnrj3b2gqbgr0i7vld4m35a2', 0x5f5f5a467c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373539373631392e3637373630393b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22656d656b327534376d6130376d616a70666139756e6e3035616f223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373535373539353b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538393335363b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538373634313b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373538383331323b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373538383135383b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223165383433386663313338626132633639383961613237343764643834653961223b733a33323a223236323338613564363734613337356164383736643263313934396661633461223b733a33323a226330316666333030633666633331343763323432343862306366333862356436223b733a33323a223430663832386264326531663233326532656632646464666439343734623964223b7d733a343a2268617368223b733a36353a2234306638323862643265316632333265326566326464646664393437346239642d6330316666333030633666633331343763323432343862306366333862356436223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a343331323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a35303a7b733a33323a223133363761646264396163306666616138313265626137346262333330353565223b733a33323a223330386233616232666661616432333639316237643338356633353036646236223b733a33323a226534633330626662613965643231343464656162626436353638303131356261223b733a33323a223264343731616135633764633862373566353665356637313766346265623739223b733a33323a226566376235626261326238363138663639383462363837353638613839313063223b733a33323a226366623363303963633034323634336233386238343832306639626333626666223b733a33323a223139326332613738623535353731666539343330363465613461656636303432223b733a33323a223036616666643137393932333639613538366439326162393565663035636530223b733a33323a226565323738373736313630663662393031393233393562386539363633633931223b733a33323a223961343665356630393237353838353262633365633234336435666135336163223b733a33323a223337643136666532663237653638393433623136383335616438346232633266223b733a33323a223661386264373261363265663830633233633931316365363638356133663966223b733a33323a226233633335333432626662326561336532613231646364643336643663376263223b733a33323a223864306638653265663636396238663365343733386161633231346437323764223b733a33323a223933303030323533343837383933316433643934633837356462356431653132223b733a33323a223561663162303164643766623836353333306632373861386334303662396538223b733a33323a223337373061633164316233396234646437303935346439653335616465303932223b733a33323a223530656461393465383339643466633132623739303635343637623133626331223b733a33323a223333643834613131393962613038653162623863623935363361663764383861223b733a33323a223739343033343863646663303463303962396139623937333231376366653132223b733a33323a226330353763343935633836313365613239623731363637373335613030613432223b733a33323a226462316637343062613566643333666135323439646638396536353535373334223b733a33323a223139333636353266366465346135623066333838333730613630333031373066223b733a33323a223661393637356261333330373335383838363634363132646662343230393937223b733a33323a223230373565653866353039303761346535363633376536396237326461666430223b733a33323a226363333730323835396336323564373063626363643530633932326166643364223b733a33323a226436613633376136626565323639653230323630343563616139626430386531223b733a33323a223762623132666339336336343533656634383838376638656232343862386165223b733a33323a226166396563613661366435363130663939643338333936376630643532303639223b733a33323a226331656336313430636366393135616638663637373761373338303338653561223b733a33323a226436653962336164323566613239363736376236663035303262666338663933223b733a33323a226631383866616461366336373562336131623432306662383435393664616537223b733a33323a223234343030656661666430333234613536633735616337343939663862633666223b733a33323a223335303533333135643839653736306365643066336435373361663464393139223b733a33323a223163633438636362373831623035646466356261633065373038386337326234223b733a33323a223930653737616533626665356130313230623362383263343234313338333734223b733a33323a223462636265616666333738626335313033386633383538313632643136626535223b733a33323a223965363638643335323830646233653933653032326161383938613264323432223b733a33323a223562386565383563303638396336316165643165643366663133323365356431223b733a33323a223139383231663164653431653964343363643561323432316238366561626430223b733a33323a226464356465356562663961383330663863376364376539336565353265353162223b733a33323a223733633431313663633835353237383362643934353566653166346564333965223b733a33323a226666616664353730653030653266663162623830383335336632303361626131223b733a33323a223566353562333863663638643134626231616538393162393835306563363130223b733a33323a226638636634653962306235306130653739326633376331333630633439333733223b733a33323a223530313263306366376338303938383264326562646335633632326335313830223b733a33323a223161313162626461343634633337666663343038356666366564363161383861223b733a33323a223237323063393531313730383531656562343165643264663532336266616666223b733a33323a223734386230636232333661303133313533323235663538356333623663623631223b733a33323a223761326537306139333635356532643663393065363639363366663537313533223b733a33323a226634366433656461323735616634663961333434336364386565666239343430223b733a33323a226535623335346661663338653234393238636437653232383032643538303633223b733a33323a226163353231363532333333646435623566613333303430663262653330333939223b733a33323a226233336533363433376262303965373061346161616431323238346665633439223b733a33323a223335666364343064636337646331373461326562303131393964373630376164223b733a33323a223662323635336163393230363134316132646561633434313833336538616231223b733a33323a223233653666313831653861306137653765383337656464303565326466363639223b733a33323a223932373834323632633962313362633365386633613136393039393061376238223b733a33323a223762346363313031386564633738653761383439373538383038326239316562223b733a33323a226330623233633766613932623933663263626165653365346637373431303434223b733a33323a226433656437613366663537353235623139353339643734306665613966643637223b733a33323a226438636333333033313436383066376564653637363238316330313463343766223b733a33323a226637313233353136336566323336373361656231373261663836666633633234223b733a33323a226361396461333561383732326339303530373730303566633030353461383739223b733a33323a223732383038303864366465333461323739383566353131646162613063356333223b733a33323a223535616234353939343033383232643339373835346662396431353262663536223b733a33323a223834303130373934333337373335653334626433386635613337663731623665223b733a33323a223461373666383838306636643561643335363637336631346166333664626461223b733a33323a226533353366323363613864363664326564666538313130666139343463613238223b733a33323a226630353162623334613366666133393966363163653431353164356462663866223b733a33323a223166663137386230643531303835396333373431343965646530356466333733223b733a33323a226366666535633836316565343636353433646439333662326430353435646531223b733a33323a223735393636306361393862656561626636656638346232333863313565373331223b733a33323a223035313235313964643362623130393230333832326437393830656564636332223b733a33323a226633613332353762316161383433643961306661666534343130386439323264223b733a33323a223966623863303136333766363131353933326632313163373861623236333137223b733a33323a226238393231393639373231653063613662613634626162323230373665626635223b733a33323a226461643337316538656536363931373232373765323565316136363466363263223b733a33323a223639326539386532363236663831326664666134333663383963613434393061223b733a33323a223436336362646135306234353066343965373435656563636463323436386466223b733a33323a226238613563363233323439653932653530623938383436396335376565303834223b733a33323a223831363366313131346337366263633066303065333865306435613538646365223b733a33323a223230363466653234346462303839316630613564626430656634323961333030223b733a33323a226134366364643531366239623132623064653362653563353266326632323266223b733a33323a223530396530323136633733613064333332326662386564316264656666343764223b733a33323a226238343435363365666163336639326464656531356165333235646232363834223b733a33323a223265316164636562393362353765306631656631303630303762326462646339223b733a33323a223030353234333366373735666339343933633531396461353334376538643133223b733a33323a223539373938313064643439383534663838303237306462656439666634323239223b733a33323a223161386365383766316135643531336337616466643064613734303536656432223b733a33323a223061633065363930363864326461386137613237633765373361373737663135223b733a33323a223038653936613431636638366639633338636364323765333831653838663937223b733a33323a223635643933623831366663396331386566653031366137336137666231396265223b733a33323a226662666638663964313534383062633766646630643638393836663434353462223b733a33323a223661663966353130343962646336626531636566373661303738656234333831223b733a33323a226538653666646333396637396630623332393833373934356133613436306136223b733a33323a226433323239336463386338623262616230636265383965303365386666323437223b733a33323a223032323033346437396562356435383132373861353539353163383366333531223b733a33323a223866656234313632326231646234303930613939633335616431316335613737223b733a33323a223265663430323832643238613531326538326238636439386263373938623534223b7d733a343a2268617368223b733a36353a2232656634303238326432386135313265383262386364393862633739386235342d3866656234313632326231646234303930613939633335616431316335613737223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226633323434343666656533353234363061643430343665646162353739353139223b733a33323a223835633237306162383266353164396265663938623736323136343936383437223b7d733a343a2268617368223b733a36353a2238356332373061623832663531643962656639386237363231363439363834372d6633323434343666656533353234363061643430343665646162353739353139223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313335323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31333a7b733a33323a223865396630343235353635643266663961363531353139336231643461363863223b733a33323a226239336131323735633565653638303131383130383363353165373263343639223b733a33323a223030323862316330316631336536336536363238323563386561396162636439223b733a33323a223237366464346634326633356365643632353333643238633365343838373733223b733a33323a226462616133636534636431323636363738616462626239346437393739666464223b733a33323a226232353261373664633933313836303437656234346666343739623733376139223b733a33323a226334366561666437626633353637623161383064353862636264393739613162223b733a33323a223462353131633566336437653131396235626132313938613664633630396534223b733a33323a226664363433643337366530646535613862343766663733303039346166336437223b733a33323a223663333234383332343433643632616432363963323065306466666466343362223b733a33323a226565323330633132343338623230633263623432303061306135313064373939223b733a33323a223536313830626261626265393131363438376335373434386539646134396536223b733a33323a223264336230656434303335396135613130316535373062633563363963656338223b733a33323a226566393331333162323461326332326337386535336238393037373865663039223b733a33323a226565643335616232396466646565326538326434343834353832353264663635223b733a33323a226639326131646237396333383336356566396438306163316633343637656465223b733a33323a226563393236643934313331326537353562353739333930303337356439303864223b733a33323a226233343736636466616235303931626635316237616639313966653037323438223b733a33323a223535383331656234616230663830313539316436343431656632376537333561223b733a33323a223338666635656133356566323864353939616435343064323463343636633536223b733a33323a226432366663336461323635646437663666353235653838353434613631303031223b733a33323a226631356331653766623639663561653033343565343135366632633539626438223b733a33323a223738323861353033366165646664363039323232353533336462646235323362223b733a33323a226163343764653230643863373434303239303931326432366532613362663263223b733a33323a226264316161656436366533386333663538313339613965303465363038666636223b733a33323a223966313633373831343838396634353337633835316166303933643432326234223b7d733a343a2268617368223b733a36353a2239663136333738313438383966343533376338353161663039336434323262342d6264316161656436366533386333663538313339613965303465363038666636223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313531323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31353a7b733a33323a223739653862373735326138646337663161633535653766343861643433613535223b733a33323a223432386538323863376333333830353164353136626261373838636330653035223b733a33323a226164646262303138633536306361623333336335653264613539396139326233223b733a33323a223161346436636535376630373934616331616232363737363532336632323033223b733a33323a223262653963613931616536366463343035383866353964653564376530323830223b733a33323a223039363763626365373831633362653166393962613932623664626332353262223b733a33323a226135363765326333346137373937363134663736313739663136393134306139223b733a33323a226262393737613864343937343566393530306434336466313765623133303239223b733a33323a226162303230653936373331663262623463666532356361646232666231663539223b733a33323a223933306137396431666431336331643666653331383130313130626463393735223b733a33323a223635396662643237333164363337633736313265666435363930353633636432223b733a33323a226433623436646464646664336330333866373238363763323533396435333037223b733a33323a223332323362396539646362666435316337363864383964303530343439646566223b733a33323a223530323561313936393736393832633666326337313165396233623465313764223b733a33323a226266343931316630326636333834353164313361663862616536613564346333223b733a33323a223032316261313437656138656663646164363731396161383861653361626636223b733a33323a223064396631363139663635333037333135636234373337386562313262323239223b733a33323a226335663066626164303934393236613766626237393639656430646264316434223b733a33323a223138613237313362313930633631303063393330666566313666383435333165223b733a33323a226665323832623966303336393632666438393331383536383931393561373563223b733a33323a226632356463623862326631613231303139376136613665353962333439333831223b733a33323a223131373762346437666466333436613562666366626264313662303838626165223b733a33323a223161626331313565346262383237306462333435303761383061653263636163223b733a33323a223665353532323037613563393961373637623233333333646234363432373639223b733a33323a223632323433386431386534623061303638383635646436336334316463313764223b733a33323a226265613863376439363038343530313363393532373562363164663036636162223b733a33323a226663333665663566376163383138346533396431353362343430386536646139223b733a33323a226361363230393361326231396364643735656463343363303535636461636635223b733a33323a226165616434383265373465653263346435363635366433373866333639353134223b733a33323a226561616639626163323135333439626236376135376333363161643264623730223b7d733a343a2268617368223b733a36353a2265616166396261633231353334396262363761353763333631616432646237302d6165616434383265373465653263346435363635366433373866333639353134223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587597619),
('lhshvl59qfom3oqo4o19a94fei', 0x5f5f5a467c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538383235313832302e3330363931333b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22716c7275756264763761676f7472386d31697564746134347571223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383235353133353b7d733a34383a225a656e645f56616c696461746f725f437372665f73616c745f666f72676f7470617373776f7264666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538383235353139393b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a323037323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32323a7b733a33323a226664363230656265363362313433306138613234363331653630323934663332223b733a33323a223237613161396335623662363066636435373733386435646362313561356162223b733a33323a223862323639316362643130346137393762383035366130663433316632313262223b733a33323a223163376661366334656163333335326132313966393530386663386139393938223b733a33323a226334343730353265623936373865346562303830666132333264616363633238223b733a33323a223965623232653931323836373338326364396232666364383837656365303237223b733a33323a226462383065326364306136383666353937353139356662363062666331646331223b733a33323a223939626136353436653630393664393334306263663032316531353562656263223b733a33323a223161303366393965626535343231623436376536326436316362653030333830223b733a33323a223837333035363239366666363639316231663433613866353865333639383261223b733a33323a226333653536316562376137353465323734623334383532626135613534353935223b733a33323a223432663538313464356534326132356235656438333735653762663030316430223b733a33323a226462346237396237373934353566303465346634363434636438353430613862223b733a33323a223531353931353562613834653733306332653630643962636136333531623638223b733a33323a223631303834336366633836353232623365346332363363333061653335633565223b733a33323a226264636533373862396264376165663466336435636266326264346233333062223b733a33323a226333323737373463363534643933666330626539343931623264383331333365223b733a33323a223837353232616232353532333166303932303335343166376639613738633564223b733a33323a223065376237613230363534633032313261303634373430653364656165373963223b733a33323a223239393637353133393130616334363961636364383933333030653266316664223b733a33323a226133303234393134373264323633636161616435306538643339663630313237223b733a33323a226530623936343733346265326335303031656436633836663633333530386562223b733a33323a226439346162313665646335303530303637656231343561633162343163623364223b733a33323a223937303437333834333237663935373336623435366137336638626339393664223b733a33323a226365373831643832316336633361636638633535616637383863393931646665223b733a33323a223131313736376132653962313935633564613666356633646239373130626335223b733a33323a223961333034353639383665383362366133626130636438346638646437386439223b733a33323a223863656263323237623363613363363130393066646366386533393037373134223b733a33323a223439663639393865623836383736666131353262666432666164386464646530223b733a33323a223438663534313763343066383237626233386635663934663634316538616438223b733a33323a223736666131393166306566373739303463373966353832326632663733346134223b733a33323a226338316465663063303633343435633834316239653133333530366563323566223b733a33323a223730613236336362633165396434306139346633343465666231303632306531223b733a33323a226339346562663162396237303536656633616132363431303663643438623739223b733a33323a223061663539363161323666386366323361396631373461643033663061316262223b733a33323a226532323033613033326162373966386261363062313631373761393233323633223b733a33323a223039393230623237396438363130633366386239363036663666646633313363223b733a33323a223032343066323036643666623032373461623731336635323932656430616534223b733a33323a223036306266626665303338653464643031626331323165356566323865633434223b733a33323a223439396439666663633064393665316366393230346666636433653439353934223b733a33323a223631653663353038323264336238363736663763366261353737356331306665223b733a33323a223634633335623436396633626536366363653237363865623735383531323365223b733a33323a226461646538326539613363363235383638333263623832313432303037613461223b733a33323a223032386235333734356162633232373361303563346630396533323238626136223b7d733a343a2268617368223b733a36353a2230323862353337343561626332323733613035633466303965333232386261362d6461646538326539613363363235383638333263623832313432303037613461223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f666f72676f7470617373776f7264666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3935313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a226134313638363563363134353165316630393263643462663861663834333033223b733a33323a223935346262386433313738353237623131313139613565663566383935346162223b733a33323a223964626231333736653866663136386436636531363332356230306230376234223b733a33323a223865326662353037316336616364643539386634653438626530393536666435223b733a33323a223661356162613461633230363762633634333135656131333337663664663839223b733a33323a223865333066376265616462336539326163613963383237313164663465626232223b733a33323a223366303237326233353232353363353833636333333037646333316533383835223b733a33323a226538366662323536316662653638303732396262316166323339343638663536223b733a33323a223032383035303537326539363832346436643464633434396136373539323334223b733a33323a223739636634633638643563303664386235393037326532363163313866323636223b733a33323a223637396532373963626364326438373964366133356231633935653534623861223b733a33323a223536333464323863646538326438616632393837343832633462306136333638223b733a33323a223230366232363034393636353664336236313130373230623761636337626566223b733a33323a223130623461316563633934386363343137623730646136313337616438393435223b733a33323a223462616432616432383661326336366235636565323335636232623537623830223b733a33323a226336653537643033636137663862383731623339646634653238373430646235223b7d733a343a2268617368223b733a36353a2263366535376430336361376638623837316233396466346532383734306462352d3462616432616432383661326336366235636565323335636232623537623830223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1588251822),
('qn8u51ve3a2bfl2kbuderbuvl8', 0x5f5f5a467c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373132333439372e3138363136343b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2261713967686461656b32327463626b766f336f6e62726339376f223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373037313830373b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373037323338323b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373037323337323b7d733a35363a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373037323432343b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373037323434343b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223462303830336561386661363339303366666435353238376536363332303531223b733a33323a226264613434313965323263616137653430376634316337316131353037313136223b7d733a343a2268617368223b733a36353a2262646134343139653232636161376534303766343163373161313530373131362d3462303830336561386661363339303366666435353238376536363332303531223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313033313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a393a7b733a33323a226162333334363961323737663238373432313938393161353133303434623436223b733a33323a226631643832616338383430623335386331616262366461626539346264306338223b733a33323a223533383337343630343864616661346233346338366562316635343239346235223b733a33323a223034633631656535366132303239643332633831366663306433666562613730223b733a33323a223032663334393531376638616365376235316233623565363531616132653733223b733a33323a226264363030306163373363623231613139303035636239313662343638393530223b733a33323a223435653661346464373033633633633238303230333136623361363535663962223b733a33323a226237383430323561613761363036396263656163386364303361333730643031223b733a33323a226538353136623337386235393162663839313962316231663133336536633934223b733a33323a226134326566343832383634356439343332663032303330333966396162613730223b733a33323a223231333433393934646163613161343765653364313337363135396664623335223b733a33323a223937373138333962656164376433323363653938623934633436333434663066223b733a33323a223636653833303364646361393864643632306237616562663538366338663535223b733a33323a223732636636626434306235613665663731396361356663666330383065623735223b733a33323a223832313666326666613462613865643464353564326538383562656538623739223b733a33323a223735616361633562616262646334333534386638653466323534313264613464223b733a33323a223430303962623735306337356664363531303563326439346635643564353038223b733a33323a223132333364373031326263343830303932333232306431393535653136646538223b7d733a343a2268617368223b733a36353a2231323333643730313262633438303039323332323064313935356531366465382d3430303962623735306337356664363531303563326439346635643564353038223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a226365366363313139376562343038356339666430663139306563386338373231223b733a33323a226436623631313364663165353031646337613135323738346666636235613339223b733a33323a223833383835376435663139383830323630656639666239363834663362666362223b733a33323a223833643161663961356662373031393864613638646161396133626130333732223b733a33323a223862396434646538653937653736666566363030356230333062333336376561223b733a33323a223431313466613935393433366362373562326233366436643061303839336463223b733a33323a223261353337343263363234393739643437646232363266626639616439353131223b733a33323a223136623834613530323339643237393933393438336530633466306534373039223b7d733a343a2268617368223b733a36353a2231366238346135303233396432373939333934383365306334663065343730392d3261353337343263363234393739643437646232363266626639616439353131223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223135326161393763373639306561363536626133633934653564626134393430223b733a33323a226663636362313830643762376439303666646531323930613635656536336433223b7d733a343a2268617368223b733a36353a2266636363623138306437623764393036666465313239306136356565363364332d3135326161393763373639306561363536626133633934653564626134393430223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226233386238666131616531666636623464656466633833393131653066326464223b733a33323a223430383133636135386537323132396262333630653031333533633031303734223b7d733a343a2268617368223b733a36353a2234303831336361353865373231323962623336306530313335336330313037342d6233386238666131616531666636623464656466633833393131653066326464223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587123497);

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
('administrator_email', '\"omaraynaou94@gmail.com\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"heisenberg\"'),
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
(1, 'omaraynaou94@gmail.com', 'heisenberg', '2020-04-16 20:16:46', '2020-04-30 10:03:21', '$2y$10$.yHKtF9Xnmkmdezfo0S9XOc5V7dMW0UYGcmca0iWTxO5HdollvhtW', 'global_admin', 1),
(2, 'samuel.szoniecky@univ-paris8.fr', 'samuel.szoniecky@univ-paris8.fr', '2020-04-30 08:27:44', '2020-04-30 08:28:49', '$2y$10$CGzqAAgsqtK12zQmz1e7lumsFF/OwAsU9fjfltq165iTihPeR8siW', 'global_admin', 1);

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
(1, 1, 275, NULL, 'literal', '', '1', NULL, 1),
(2, 1, 276, NULL, 'literal', '', 'appartement', NULL, 1),
(3, 1, 277, NULL, 'literal', '', '1 Rue des Trois Frères,\n 75018 Paris\n', NULL, 1),
(4, 1, 278, NULL, 'literal', '', '0', NULL, 1),
(5, 1, 279, NULL, 'literal', '', '1', NULL, 1),
(6, 1, 280, NULL, 'literal', '', '1', NULL, 1),
(7, 1, 281, NULL, 'literal', '', '4', NULL, 1),
(8, 1, 282, NULL, 'literal', '', 'Oui', NULL, 1),
(9, 1, 283, NULL, 'literal', '', 'Cuisine équipée, Climatisation, Balcon', NULL, 1),
(10, 2, 284, NULL, 'literal', '', '23/04/2020', NULL, 1),
(11, 3, 285, NULL, 'literal', '', '1', NULL, 1),
(12, 3, 286, NULL, 'literal', '', 'Homme', NULL, 1),
(13, 3, 287, NULL, 'literal', '', 'Aynaou', NULL, 1),
(14, 3, 288, NULL, 'literal', '', 'Omar', NULL, 1),
(15, 3, 289, NULL, 'literal', '', 'Particulier', NULL, 1),
(16, 4, 293, NULL, 'literal', '', '1', NULL, 1),
(17, 4, 285, NULL, 'literal', '', '1', NULL, 1),
(18, 4, 294, NULL, 'literal', '', '50 avenue george sand', NULL, 1),
(19, 4, 295, NULL, 'literal', '', 'appartement 100', NULL, 1),
(20, 4, 297, NULL, 'literal', '', 'La Plaine Saint Denis', NULL, 1),
(21, 4, 298, NULL, 'literal', '', 'France', NULL, 1),
(22, 5, 290, NULL, 'literal', '', '1', NULL, 1),
(23, 5, 285, NULL, 'literal', '', '1', NULL, 1),
(24, 5, 291, NULL, 'literal', '', 'omaraynaou94@gmail.com', NULL, 1),
(25, 5, 292, NULL, 'literal', '', 'France', NULL, 1),
(26, 6, 299, NULL, 'literal', '', '1', NULL, 1),
(27, 6, 285, NULL, 'literal', '', '1', NULL, 1),
(28, 6, 300, NULL, 'literal', '', 'Portable', NULL, 1),
(29, 6, 301, NULL, 'literal', '', '0751959250', NULL, 1),
(30, 6, 302, NULL, 'literal', '', 'France', NULL, 1),
(31, 7, 310, NULL, 'literal', '', '1', NULL, 1),
(32, 7, 316, NULL, 'literal', '', '1', NULL, 1),
(33, 7, 311, NULL, 'literal', '', '1', NULL, 1),
(34, 7, 312, NULL, 'literal', '', '10%', NULL, 1),
(35, 7, 313, NULL, 'literal', '', '10', NULL, 1),
(36, 7, 314, NULL, 'literal', '', '90', NULL, 1),
(37, 7, 315, NULL, 'literal', '', '20%', NULL, 1),
(38, 8, 316, NULL, 'literal', '', '1', NULL, 1),
(39, 8, 285, NULL, 'literal', '', '1', NULL, 1),
(40, 8, 317, NULL, 'literal', '', ' Carte Bancaire', NULL, 1),
(41, 8, 318, NULL, 'literal', '', '23/04/2020', NULL, 1),
(42, 8, 319, NULL, 'literal', '', '22/04/2020', NULL, 1),
(43, 9, 307, NULL, 'literal', '', '23/04/2020', NULL, 1),
(44, 9, 308, NULL, 'literal', '', '10%', NULL, 1),
(45, 9, 309, NULL, 'literal', '', '0', NULL, 1),
(46, 10, 275, NULL, 'literal', '', '1', NULL, 1),
(47, 10, 306, NULL, 'literal', '', '100', NULL, 1),
(48, 10, 307, NULL, 'literal', '', '23/04/2020', NULL, 1);

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
(7, 1, 'https://localhost/Loc_Logement', 'Loc_Logement', 'loc_logment', ''),
(8, 2, 'http://www.w3.org/ns/locn#', 'Locn', 'Location', ''),
(9, 2, 'http://data.ign.fr/def/geometrie#', 'geom', 'geom', ''),
(10, 2, 'http://data.ign.fr/def/topo#', 'topo', 'topo', ''),
(11, 2, 'http://purl.org/acco/ns#', 'acco', 'acco', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=431;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
