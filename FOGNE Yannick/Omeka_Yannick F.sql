-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 26 avr. 2020 à 20:55
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
-- Base de données : `csv_db 7`
--
CREATE DATABASE IF NOT EXISTS `csv_db 7` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `csv_db 7`;

-- --------------------------------------------------------

--
-- Structure de la table `data1`
--

CREATE TABLE `data1` (
  `COL 1` varchar(18) DEFAULT NULL,
  `COL 2` varchar(14) DEFAULT NULL,
  `COL 3` varchar(9) DEFAULT NULL,
  `COL 4` varchar(3) DEFAULT NULL,
  `COL 5` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `data1`
--

INSERT INTO `data1` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`) VALUES
('idpatients_Covid19', 'Pays', 'Continent', 'Age', 'Sexe'),
('FR001', 'France', 'Europe', '74', ''),
('BE001', 'Belgique', 'Europe', '72', ''),
('CH001', 'Chine', 'Asie', '65', ''),
('US001', 'USA', 'Amérique', '65', ''),
('UK001', 'Angleterre', 'Europe', '70', ''),
('EG001', 'Egypte', 'Afrique', '56', ''),
('MX001', 'Mexique', 'Amérique', '52', ''),
('RSA01', 'Afrique du Sud', 'Afrique', '52', ''),
('IT001', 'Italie', 'Europe', '65', ''),
('JP001', 'Japon', 'Asie', '70', '');
--
-- Base de données : `omeka`
--
CREATE DATABASE IF NOT EXISTS `omeka` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `omeka`;

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

--
-- Déchargement des données de la table `asset`
--

INSERT INTO `asset` (`id`, `owner_id`, `name`, `media_type`, `storage_id`, `extension`) VALUES
(1, 1, 'pict cancer.jpg', 'image/jpeg', '727d2c84c28aa9e417b012882b35fca34b6fc61f', 'jpg');

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
(1, 'items', 1, 1, 'Asthme', 'Asthme \n\'asthme se manifeste généralement sous différentes formes :\nLa toux, généralement sèche et survenant par quinte. Elle peut annoncer le début d\'une crise ou en être la principale manifestation ;\nLes sifflements dans la poitrine est certainement le symptôme le plus courant de l\'asthme ;\nLa gêne respiratoire associée au sifflement peut également prendre des formes différentes. Une oppression (ou sensation de thorax bloqué) pourra être prise pour une alerte cardiaque chez les seniors. \nCes signes peuvent survenir la nuit ou à l\'effort, souvent entrecoupées de longues périodes d\'accalmie. Mais trop souvent encore, ces signes passent inaperçus et le diagnostic n\'intervient que tardivement. \"Il m\'arrive de rencontrer des patients qui ont traîné de tels symptômes pendant des mois, voire des années avant d\'être diagnostiqués asthmatiques. Un seul de ces symptômes peut évoquer la maladie. Ce sont des indices au même titre que la présence d\'antécédents familiaux d\'asthme ou d\'allergie\" nous déclare le Dr Pierrick Hordé, allergologue. \nSymptômes Asthme : Toux, sifflements, gêne respiratoire... Les symptômes de l\'asthme sont bien connus, mais ils sont peu caractéristiques. Comment les distinguer d\'autres affections respiratoires ? Comment poser le diagnostic ? Les réponses.'),
(2, 'items', 1, 1, 'Rosacée (couperose)', 'Rosacée (couperose)\nFree \n2020/04/21\nLa rosacée (ou couperose) est une maladie de peau qui touche les petits vaisseaux sanguins. Localisée sur le centre du visage, cette pathologie peut devenir très inesthétique.\nFrançais \nmaladie cutanée \nMINSANTE \nhttps://www.doctissimo.fr/html/dossiers/peau_boutons.htm Maladie cutanée\nSymptômes Rosacée : '),
(3, 'items', 1, 1, 'Covid 19', 'Covid 19 \nAll rights reserved \nMaladie pandémie \nMINSANTE \n12/03/2020\nLa maladie à coronavirus 2019 (COVID-19) est une ‎maladie infectieuse due à un coronavirus découvert ‎récemment. ‎\n\nLa majorité des personnes atteintes de la COVID-19 ‎ne ressentiront que des symptômes bénins ou ‎modérés et guériront sans traitement particulier. ‎\n\nPropagation\n\nLe virus qui entraîne la COVID-19 se transmet ‎principalement par des gouttelettes produites ‎lorsqu’une personne infectée tousse, éternue, ou ‎lors d’une expiration. Ces gouttelettes sont trop ‎lourdes pour rester dans l’air et tombent ‎rapidement sur le sol ou sur toute surface proche.‎\n\nVous pouvez être infecté en respirant le virus, si ‎vous êtes à proximité d’une personne malade, ou en ‎touchant une surface contaminée puis vos yeux, ‎votre nez ou votre bouche.‎\nFrançais \nhttps://www.linternaute.com/actualite/guide-vie-quotidienne/2489651-covid-19-en-france-cas-morts-et-hospitalisations-statistiques-du-24-avril-2020/ COVID 19\nGrippes\nMladie Covid '),
(4, 'items', 1, 1, 'Page web Minsanté', 'Page web Minsanté \nTous droits réserves \nhttps://solidarites-sante.gouv.fr/ Ministère de la santé \nà la recherche\n\nPour les articles homonymes, voir Ministère des Affaires sociales et de la Santé. \nMinistère des Solidarités et de la Santé\n(appellation depuis 2017)\n\nHistoire\nFondation\n1920 : ministère de l\'Hygiène, de l\'Assistance et de la Prévoyance sociale\n1930 : ministère de la Santé publique\n1945 : ministère de la Sécurité sociale\nCadre\nType\nMinistère français\nForme juridique\nMinistère en France\nSiège social\n14, avenue Duquesne\nParis 7e\nPays\n France\nCoordonnées\n48° 51′ 08″ N, 2° 18′ 33″ E\nLangue\nFrançais\nOrganisation\nEffectif\n11 157 (2013)2\nMinistre\nOlivier Véran\nPersonnes clés\nEdgar Faure\nPierre Bérégovoy\nPhilippe Séguin\nClaude Évin\nSimone Veil\nFrançois Fillon\nRoselyne Bachelot\nMarisol Touraine\nAgnès Buzyn\nOrganisation mère\nGouvernement de la République française\nBudget\n19 596 millions d’euros (2016)1\nSites web\nsolidarites-sante.gouv.fr\nwww.social-sante.gouv.fr\nIdentifiants\nSIREN\n130016538\ndata.gouv.fr\n534fff94a3a7292c64a77fc1\nAnnuaire du service public\ngouvernement/administration-centrale-ou-ministere_192696\nLocalisation sur la carte de Paris\n\n\n\nvoir sur la carte de France\nvoir sur la carte de Paris\nmodifier - modifier le code - modifier Wikidata\n\nLe ministère des Affaires sociales et de la Santé, appelé depuis 2017 « ministère des Solidarités et de la Santé », est l’administration française chargée de la mise en œuvre de la politique du gouvernement dans les domaines des affaires sociales, de la solidarité et de la cohésion sociale, de la santé publique et de la protection sociale. Il est dirigé par le ministre correspondant, membre du gouvernement français. \nL’appellation peut varier, notamment en fonction de l\'existence ou non d’un ministère du Travail séparé. \nL’action sociale fait également partie de la compétences des conseils départementaux. \nLe titulaire actuel est Olivier Véran, ministre des Solidarités et de la Santé dans le Gouvernement d\'Édouard Philippe II. \nFrançais \nDermatologie\nPandémies grippales\nOncologie\nMinistère s\'occupant des maladies et de la prise en changer des patients dans les hopitaux et cliniques. '),
(5, 'items', 1, 1, 'Melanome-de-la-peau', 'Melanome-de-la-peau\nFree\n10/10/2018\nhttps://www.e-cancer.fr/Patients-et-proches/Les-cancers/Melanome-de-la-peau/Points-cles Maladies de la peau\nSymptômes : Métastases, enflement, douleur, rougeur, \nUn mélanome de la peau est une maladie des cellules de la peau appelées mélanocytes. Il se développe à partir d’une cellule initialement normale qui se transforme et se multiplie de façon anarchique pour former une lésion appelée tumeur maligne.\nIl existe quatre principaux types de mélanome de la peau : le mélanome superficiel extensif, le mélanome de Dubreuilh, le mélanome nodulaire et le mélanome acrolentigineux. Le traitement de ces différents types de mélanome repose essentiellement sur la chirurgie qui sera adaptée à la topographie (c’est-à-dire à l’endroit où est situé le mélanome) et à la profondeur de la lésion.\nAvec près de 11 176 cas estimés en 2012, le mélanome représente entre 2 et 3 % de l’ensemble des cancers. Il touche un peu plus de femmes (53 %) que d’hommes (47 %) et l’âge moyen au diagnostic est de 56 ans. C’est le cancer pour lequel le nombre de nouveaux cas par an (incidence) augmente le plus (10 % par an depuis 50 ans).'),
(6, 'items', 1, 1, 'Cancer du pancréas', 'Cancer du pancréas \nFree use \nRessources maladies\nMINSANTE \n10/01/2020\nLe pancréas est un organe du système digestif. Il est enfoui profondément dans l\'abdomen et se situe derrière l\'estomac, tout contre l\'intestin et à proximité d\'un réseau dense de vaisseaux sanguins. Le pancréas aide à la digestion et joue un rôle majeur dans la régulation du taux de glucose dans le sang.\nUn cancer apparaît lorsque des cellules du pancréas se développent et se multiplient de manière anarchique et incontrôlée jusqu\'à former une tumeur maligne. La plupart des tumeurs se situent sur la tête du pancréas, partie de l\'organe proche de l\'intestin.\nFrançais \nhttps://www.e-cancer.fr/Patients-et-proches/Les-cancers/Cancer-du-pancreas/Points-cles Cancers du pancréas '),
(7, 'items', 1, 1, 'Cancer du rein', 'Cancer du rein \nFree use\nSanté \nMINSANTE \nJune 21, 2019\nUn cancer apparaît lorsqu\'une cellule du rein initialement normale se transforme, puis se multiplie de façon incontrôlée en formant un amas de cellules anormales qu\'on appelle une tumeur. Un cancer du rein peut prendre naissance à partir d\'une cellule de différentes parties du rein ; dans la majorité des cas, il se développe à partir d\'une cellule du parenchyme rénal. Ce type de cancer du rein porte le nom de carcinome à cellules rénales.\nLe nombre de nouveaux cas de cancer du rein en France était estimé à 11 090 en 2011. Le cancer du rein représente ainsi environ 3 % de l\'ensemble des cancers. Il touche deux fois plus les hommes que les femmes. L\'âge moyen au moment du diagnostic est 65 ans.\nhttps://www.e-cancer.fr/Patients-et-proches/Les-cancers/Cancer-du-rein/Points-cles Référence cancer du rein \nSymptômes cancers du rein '),
(8, 'items', 1, 1, 'Cancer du colon', 'Cancer du colon \nOnly academic use. For all commercial use, contact the author for rights\nhttps://www.e-cancer.fr/Patients-et-proches/Les-cancers/Cancer-du-colon/Points-cles Infos cancers \nMINSANTE \n10/01/2020\nLe cancer du côlon se développe à partir des cellules qui tapissent la paroi interne du côlon. Dans plus de 80 % des cas, il provient d’une tumeur bénigne, appelée polype adénomateux, qui évolue lentement et finit par devenir cancéreuse.\nChaque cancer est unique et se définit notamment en fonction de sa localisation dans le côlon, de sa profondeur dans la paroi, de l’atteinte ou non des ganglions proches du côlon et de la présence ou non de métastases au niveau d’autres organes.\nMaladies cancérigènes '),
(9, 'items', 1, 1, 'Cancers de l\'estomac', 'Cancers de l\'estomac \nAll rights reserved \nType de maladie \nMINSANTE \n25/02/2020\nL\'estomac est un organe de l\'appareil digestif. Il est situé dans la partie supérieure et médiane de l\'abdomen (région épigastrique). Il fait suite à l\'œsophage et précède le duodénum. L\'estomac participe à la digestion.\n90 % des cancers de l\'estomac sont des adénocarcinomes.\nOn estime à environ 6 550 le nombre de nouveaux cas de cancers de l\'estomac en France en 2012, dont près de 66 % concernent des hommes.\nLe cancer de l\'estomac est associé à plusieurs facteurs de risque, notamment, une gastrite chronique principalement liée à une infection par la bactérie Helicobacter pylori, le tabagisme, une alimentation riche en produits salés et pauvre en légumes et fruits frais, des antécédents de cancer de l\'estomac dans la famille ou encore une prédisposition génétique augmentant le risque de développer un cancer de l\'estomac.\nhttps://www.e-cancer.fr/Patients-et-proches/Les-cancers?%25253fgclid=CjwKCAjwv4_1BRAhEiwAtMDLstxgPqJpaGhJ0VPc6ePdj6uUsXodon3bz8w5T2lre696GTjmYpa7MxoCouQQAvD_BwE Symptômes de cancers \nhttps://www.minsante.cm/site/?q=en/node/543 MINSANTE\nSymptômes du cancer du cancer de l\'estomac : Douleurs, boule à l\'endroit, amaigrissements'),
(10, 'items', 1, 1, 'Grippes', 'Grippes\nAll rights reserved \nType de maladie \nMINSANTE \nMarch 21, 2020\nLa grippe (ou influenza) est une maladie infectieuse fréquente et contagieuse causée par certains virus à ARN de la famille des orthomyxoviridés : le virus de la grippe A, le virus de la grippe B, le virus de la grippe C et le virus de la grippe D.\nFrançais \nhttps://www.oscillo.fr/?gclid=CjwKCAjwv4_1BRAhEiwAtMDLsnlJSpPsppwGbaCFth6CrKWr5mQjJYZwVqe1vncziajeiNDLsZ4Z_RoCA2UQAvD_BwE \nSymptômes: Toux, rhum, fièvre, fatigue, maux de gorge'),
(11, 'item_sets', 1, 1, 'Oncologie', 'Oncologie\nall rights reserved \nMaladies cancéreuses, \nMinsante\n10/02/2018\nL\'oncologie ou carcinologie ou cancérologie est la spécialité médicale d\'étude, de diagnostic et de traitement des cancers. Un médecin qui pratique cette discipline est appelé oncologue ou cancérologue. Le terme vient du grec onkos, signifiant vrac, masse ou tumeur, et le suffixe -logie, signifiant « étude de \nLa cancérologie (appelée aussi carcinologie ou oncologie) est la spécialité d\'étude, de diagnostic et de traitement des cancers. Un médecin qui pratique cette discipline est appelé oncologue ou cancérologue. La cancérologie peut être pratiquée dans des services individualisés ou dans des services plus généraux : pneumologie, gastro-entérologie, ORL…\nFrançais \nCancers de l\'estomac\nCancer du rein\nCancer du pancréas\nCancer du colon\nPage web Minsanté\nCancérologie: ETudes, dépistages et traitement des cancers \nDépartement de dépistage et de traitement des cancers '),
(12, 'item_sets', 1, 1, 'Dermatologie', 'Dermatologie\nPage web Minsanté\nMaladies cutanées\nministère de la santé \n10/02/2019\nLa dermatologie est une spécialité de médecine qui s\'occupe de la peau, des muqueuses et des phanères. Elle est associée à la vénérologie, c’est-à-dire l\'étude des maladies vénériennes ou infections sexuellement transmissibles. Le médecin spécialisé pratiquant la dermatologie s\'appelle le dermatologue\nLa dermatologie s\'occupe des maladies de la peau \nFrançais \nMelanome-de-la-peau\nRosacée (couperose)\nDermatologies: Maladies de la couche cutanée'),
(13, 'item_sets', 1, 1, 'Pandémies grippales', 'Pandémies grippales \nPage web Minsanté\nMaladies saisonnières grippales \nhttps://www.livi.fr/sante/eruptions_cutanees_et_demangeaisons/ Ressources medecine interne\n30/05/2018\nle virus grippal est le seul agent infectieux capable de rendre malade le tiers de la population mondiale en moins de six mois et de causer des millions de décès en une période aussi courte. L’OMS, pour répondre à cette menace, a constitué l’un de ses réseaux les plus efficaces, et le plus ancien, FluNet, connectant entre eux, en temps réel, plus de 112 centres nationaux de la grippe répartis sur les 5 continents (il y en a deux en France, à l’Institut Pasteur de Paris pour le Nord de la France et à l’Université de Lyon, pour le Sud) et quatre centres collaborateurs mondiaux de lutte contre la grippe [1]. Après avoir connu trois pandémies grippales au vingtième siècle, il n’y a aucune raison de ne pas craindre une nouvelle émergence d’une souche de virus grippal à potentiel pandémique au cours du xxi e siècle.\nCHU \nGrippes\nAsthme\nMinistère de la santé \nMaladies  grippales, pandémies saisonnières \nMaladies respiratoires '),
(14, 'items', 1, 1, 'Fièvre', 'Fièvre \nFroid et chaleur \nPandémies grippales'),
(15, 'items', 1, 1, 'Douleurs', 'Douleurs \nPandémies grippales\nDermatologie\nOncologie'),
(16, 'items', 1, 1, 'Éruptions et lesions cutanées', 'Éruptions et lesions cutanées \nLes éruptions cutanées et démangeaisons sont un phénomène très courant qui touche des millions de personnes. Il est possible de souffrir de ces symptômes pour de nombreuses raisons : acné, urticaire, eczéma, psoriasis, verrues, rosacée etc... Afin de bénéficier du traitement approprié, il est important de préciser le type d\'éruption cutanée dont vous souffrez.\nMelanome-de-la-peau\nRosacée (couperose)\nCovid 19'),
(17, 'items', 1, 1, 'Chimiothérapie', 'Chimiothérapie \nOncologie\nLa chimiothérapie est l\'usage de certaines substances chimiques pour traiter une maladie. C\'est une technique de traitement à part entière au même titre que la chirurgie ou la radiothérapie');

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
(14),
(15),
(16),
(17);

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
(11, 0),
(12, 0),
(13, 0);

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
(184, NULL, 4, 'status', 'status', 'A string expressing what the user is happy for the general public (normally) to know about their current activity.');

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
(1, 1, 24, 1, NULL, 'Asthme', 1, '2020-04-21 09:35:30', '2020-04-25 21:45:49', 'Omeka\\Entity\\Item'),
(2, 1, 24, 1, NULL, 'Rosacée (couperose)', 1, '2020-04-21 09:41:12', '2020-04-25 21:42:34', 'Omeka\\Entity\\Item'),
(3, 1, 24, 1, NULL, 'Covid 19', 1, '2020-04-21 09:42:45', '2020-04-26 03:52:06', 'Omeka\\Entity\\Item'),
(4, 1, 90, 1, NULL, 'Page web Minsanté', 1, '2020-04-21 09:44:19', '2020-04-26 03:49:21', 'Omeka\\Entity\\Item'),
(5, 1, 24, 1, NULL, 'Melanome-de-la-peau', 1, '2020-04-21 09:45:01', '2020-04-25 20:45:53', 'Omeka\\Entity\\Item'),
(6, 1, 24, 1, NULL, 'Cancer du pancréas', 1, '2020-04-21 09:46:29', '2020-04-25 20:37:53', 'Omeka\\Entity\\Item'),
(7, 1, 24, 1, NULL, 'Cancer du rein', 1, '2020-04-21 09:47:40', '2020-04-25 20:32:40', 'Omeka\\Entity\\Item'),
(8, 1, 24, 1, NULL, 'Cancer du colon', 1, '2020-04-21 09:50:13', '2020-04-25 20:18:54', 'Omeka\\Entity\\Item'),
(9, 1, 24, 1, NULL, 'Cancers de l\'estomac', 1, '2020-04-21 09:52:29', '2020-04-25 20:21:04', 'Omeka\\Entity\\Item'),
(10, 1, 24, 1, NULL, 'Grippes', 1, '2020-04-21 09:54:19', '2020-04-25 20:28:24', 'Omeka\\Entity\\Item'),
(11, 1, 24, 1, NULL, 'Oncologie', 1, '2020-04-21 10:17:54', '2020-04-26 07:05:25', 'Omeka\\Entity\\ItemSet'),
(12, 1, 24, 1, NULL, 'Dermatologie', 1, '2020-04-21 10:35:11', '2020-04-26 03:44:29', 'Omeka\\Entity\\ItemSet'),
(13, 1, 24, 1, NULL, 'Pandémies grippales', 1, '2020-04-26 03:30:03', '2020-04-26 07:01:17', 'Omeka\\Entity\\ItemSet'),
(14, 1, 24, 1, NULL, 'Fièvre', 1, '2020-04-26 06:48:18', '2020-04-26 06:48:18', 'Omeka\\Entity\\Item'),
(15, 1, 24, 1, NULL, 'Douleurs', 1, '2020-04-26 06:50:14', '2020-04-26 07:32:12', 'Omeka\\Entity\\Item'),
(16, 1, 24, 1, NULL, 'Éruptions et lesions cutanées', 1, '2020-04-26 06:55:45', '2020-04-26 06:57:50', 'Omeka\\Entity\\Item'),
(17, 1, 24, 2, NULL, 'Chimiothérapie', 1, '2020-04-26 18:53:16', '2020-04-26 18:54:14', 'Omeka\\Entity\\Item');

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
(105, NULL, 4, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.');

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
(1, NULL, 24, NULL, NULL, 'Symptomes '),
(2, 1, 36, NULL, NULL, 'Médécine interne '),
(3, 1, 26, NULL, NULL, 'Covid spreading ');

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
(12, 1, 6, NULL, NULL, 10, NULL, 0, 0),
(13, 1, 25, NULL, NULL, 11, NULL, 0, 0),
(14, 1, 10, NULL, NULL, 12, NULL, 0, 0),
(15, 1, 13, NULL, NULL, 13, NULL, 0, 0),
(17, 1, 30, NULL, NULL, 14, NULL, 0, 0),
(18, 1, 50, NULL, NULL, 15, NULL, 0, 0),
(19, 1, 3, NULL, NULL, 16, NULL, 0, 0),
(20, 1, 41, NULL, NULL, 17, NULL, 0, 0),
(21, 2, 1, NULL, NULL, 1, NULL, 0, 0),
(22, 2, 4, NULL, NULL, 2, NULL, 0, 0),
(23, 3, 1, NULL, NULL, 1, NULL, 0, 0),
(24, 3, 4, NULL, NULL, 2, NULL, 0, 0);

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
('0rbtha2qpfv7rshbblc4i393le', 0x5f5f5a467c613a393a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373539353134362e3335363639373b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2274616c3063696267666b376d7037366e6530696a6c6f6663376c223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373436333437353b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373539383032313b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539373931323b7d733a33343a225a656e645f56616c696461746f725f437372665f73616c745f666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373436393139363b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373439363239393b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539323432343b7d733a35363a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539333238393b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223065333032343134656438326664393532663031343861303733663264336638223b733a33323a226566663239353736353830313835393535666535323663326334373032666464223b7d733a343a2268617368223b733a36353a2265666632393537363538303138353935356665353236633263343730326664642d3065333032343134656438326664393532663031343861303733663264336638223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226261633038366662306538616635303737336365363766653830613864383966223b733a33323a226166303536613537353262353963613434663037343732373238663133363833223b733a33323a223333303164376665313130643732636330323365313532343730396366643339223b733a33323a226631303261613136613036336364383566313732383032626661323662636362223b7d733a343a2268617368223b733a36353a2266313032616131366130363363643835663137323830326266613236626363622d3333303164376665313130643732636330323365313532343730396366643339223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223964333265373630666438356363623762356131373562666562313262636330223b733a33323a226563633265356439316237613464396633363035313064383863313234333838223b733a33323a226138393033326436336235346366373865666239396434666437323763616637223b733a33323a223031623734306136303431653033333537623831396566633664336530393365223b7d733a343a2268617368223b733a36353a2230316237343061363034316530333335376238313965666336643365303933652d6138393033326436336235346366373865666239396434666437323763616637223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223962323464346662333465383566306265333734383862313065316164653062223b733a33323a223461643961313864353037306365313066363636356331373264316137393935223b733a33323a223734396536643264396139653062643832663137353363653566643762386532223b733a33323a223064663733646630613133346464373536303731313862343038343835396433223b733a33323a223461363130393837376139336139663366346536393235373131333866303737223b733a33323a223133303966626237383932663361626533303961663264393764343763356130223b733a33323a223933366363326261353538333534303131633433396166343461643464646238223b733a33323a223763363665613166653064646263313030656161353632326366653731373336223b7d733a343a2268617368223b733a36353a2237633636656131666530646462633130306561613536323263666537313733362d3933366363326261353538333534303131633433396166343461643464646238223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223261386637313533393861316162316134663963646335663461626364393439223b733a33323a226230313263646164623432386436313566336261353932666236353637353562223b733a33323a223662333033383965383333356462666431303935343763313739626664316431223b733a33323a223338616565333363363039363635623766666639633939613430643764653334223b7d733a343a2268617368223b733a36353a2233386165653333633630393636356237666666396339396134306437646533342d3662333033383965383333356462666431303935343763313739626664316431223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223866646539646238306330353063613261313766353961643966386532636665223b733a33323a223135303165373039326430656363363833643534613336663361316438343238223b733a33323a223331663736386433666666633833396439336434616232616432613963623766223b733a33323a226535623963663462336666393561653230313139643063323366393438323538223b733a33323a223735616261383161306131356639343039636362656439383339336338336630223b733a33323a223739333032303138316234643438613032313233333261336638396263353033223b733a33323a226165396135663732323437623663313034636538363935636565356466346564223b733a33323a223132623665346237373561613838616132333231333261656239636536663337223b7d733a343a2268617368223b733a36353a2231326236653462373735616138386161323332313332616562396365366633372d6165396135663732323437623663313034636538363935636565356466346564223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223562623466633063666134363133323761313034313939646631346363343132223b733a33323a223962656634386363383664613737623833393465303731613334396530663132223b733a33323a226162393934313364353037393538313736353736363331363465666230326235223b733a33323a226266346633313061643031333330626666393437336564316235323839656233223b733a33323a223037316664643836653665326362306165666661663264633136636536333336223b733a33323a223865386337316534396339373765663930353564306630363434346138313163223b7d733a343a2268617368223b733a36353a2238653863373165343963393737656639303535643066303634343461383131632d3037316664643836653665326362306165666661663264633136636536333336223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587595146),
('3evqk2rv25lkdu4mtetl4atval', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373635323033352e3438343738343b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2230363133686a76676a636869686a367168333568353074633173223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373635323639373b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373635353639303b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373635353638333b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223536306164383130336464346331323062636561376163656263346233353463223b733a33323a223132313832333765376265383963616431343666326430323837653331393665223b7d733a343a2268617368223b733a36353a2231323138323337653762653839636164313436663264303238376533313936652d3536306164383130336464346331323062636561376163656263346233353463223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223838326639613734623131346333393531306238633938333066663833613431223b733a33323a226535616261646636313466386164316235373661393931313635343234323331223b733a33323a226663666561653938396134313762353965383033323237643035643435346262223b733a33323a226464336666373733663536306661616161323335363836373963616236376366223b733a33323a226135653936613561313965376564326562376162303061333730383961356262223b733a33323a223637336665303564373765376230316132306534373164663636343563313636223b7d733a343a2268617368223b733a36353a2236373366653035643737653762303161323065343731646636363435633136362d6135653936613561313965376564326562376162303061333730383961356262223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226366633935343630393337363936333836316662366634333332333437363863223b733a33323a223137366535643837643734343364376638633362366638373861663639346364223b7d733a343a2268617368223b733a36353a2231373665356438376437343433643766386333623666383738616636393463642d6366633935343630393337363936333836316662366634333332333437363863223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587652093),
('6obemh8o2sd1p8t2d8t6dhlj96', 0x5f5f5a467c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373634393035362e3438313535353b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22366f62656d68386f32736431703874326438743664686c6a3936223b7d7d, 1587649057),
('csttpon4friiutmne30lsri45n', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373932373235392e3738333035313b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2273756264716568667033357272756336756f686239727076756f223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373932393033343b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373933303833303b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373933303836303b7d7d72656469726563745f75726c7c733a34313a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e2f6974656d2f31342f65646974223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226437326235366339333037383637336530323063323435326363633863656433223b733a33323a223638383163663137353839383762393861363263383364366365396166336464223b733a33323a226130343233333832353736666432643765303034366564633233633735363963223b733a33323a223266363462643037663362316533666135623238633235616434313366633734223b7d733a343a2268617368223b733a36353a2232663634626430376633623165336661356232386332356164343133666337342d6130343233333832353736666432643765303034366564633233633735363963223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a226664333966383838633861353431343865333738616665616632373834633730223b733a33323a223434346465643263633632393736366439613935303064623539663036303832223b733a33323a223761313064656166313038336137623333356265366636653766633132396663223b733a33323a223365643231643239623332656638383833353133653833303630646439306163223b733a33323a223162316261386431306435386136623739376631656230306566633839623165223b733a33323a226430376466366466353536366433653139333939363736366264663465633236223b7d733a343a2268617368223b733a36353a2264303764663664663535363664336531393339393637363662646634656332362d3162316261386431306435386136623739376631656230306566633839623165223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313237323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31323a7b733a33323a223631346263626431663332333365336136326165666433393437333638343435223b733a33323a223963646536303330386364623765643365666631646565323766663730663337223b733a33323a223238333934643939376536306639666432313834643031356133336637653061223b733a33323a223633303137393061663335613236633262303738366330313164646361373033223b733a33323a226235653665323030636330323533623037666661336238373832323335343262223b733a33323a226463333866333831323062653631626236386232303965333834383166326563223b733a33323a223564366636663132353035366166623033666332656538303435346237373235223b733a33323a226563343930313461326338613432616235663265303739356331653431306261223b733a33323a223136383863336632383432363732356262333463333363633562626135333838223b733a33323a223435623064653130316635653931383238613866393864643833383338363533223b733a33323a223166356338333238646364313631323236366535616535666265653433363939223b733a33323a223366333930393233363462663237346331613535353465363561393434313262223b733a33323a226161306331333062376139613436643734336137643261386665656134333664223b733a33323a223664313631356365626161373762646230313837323538393035333065313537223b733a33323a223330363030313232313030396639313235383238326433313838626462643262223b733a33323a223962333737383837613365326164643639663764383664393835373532306139223b733a33323a223465653637663033613135663061633739326665306462663533646333653966223b733a33323a226163303263313638303838643139613931366262623038643365353061313934223b733a33323a223733623961323139613935306665616635336634376263343061376231333837223b733a33323a223964623536396139313564656539616237383233363739653436656337643833223b733a33323a223436333439303933326366663866386137663662663430383061666237626163223b733a33323a226662313639373466623739343436643936363830623932323463623037333030223b733a33323a226365663064373332383632626661306561663663383132653935373761356332223b733a33323a223164353564393862303632653264663063313035333063353837363938326633223b7d733a343a2268617368223b733a36353a2231643535643938623036326532646630633130353330633538373639383266332d6365663064373332383632626661306561663663383132653935373761356332223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587927260),
('is24tpinjcma7c5n94npl60pcj', 0x5f5f5a467c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373132343231312e3535393638363b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226f6b69643665396e716a617534616d34616761656c3463616d68223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373131363933383b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373132373831323b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223734393361366666363161376630613132643361613834663835383466366336223b733a33323a226637393633656330356232643733323532636637336435633962356261336130223b733a33323a223532643530376366333464323134613765376132616364636666326661643165223b733a33323a226361313961393136343964336339303936323138393761643064626263353163223b7d733a343a2268617368223b733a36353a2263613139613931363439643363393039363231383937616430646262633531632d3532643530376366333464323134613765376132616364636666326661643165223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223635356561306132326230373233396238336436306535646536386331303563223b733a33323a223137633131326162353733633337623862613333323465333335303132366535223b733a33323a223034626136316562353462326263643235386661383933313231646334653165223b733a33323a226166643330616331313830643035376364363063396566323764643964373062223b7d733a343a2268617368223b733a36353a2261666433306163313138306430353763643630633965663237646439643730622d3034626136316562353462326263643235386661383933313231646334653165223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587124213),
('ppouu00969q7hjspu3ggcakrad', 0x5f5f5a467c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373033333738342e3439393730353b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226f6b69733334756e6e76727531686b7162623333733375646272223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373033373335393b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226334313438326366396238323031666235333431343732623261336564363835223b733a33323a223630666231306231346562393666643061353264353436363864393630626136223b7d733a343a2268617368223b733a36353a2236306662313062313465623936666430613532643534363638643936306261362d6334313438326366396238323031666235333431343732623261336564363835223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b, 1587033786),
('vg9ih466i2alp1em3s7lkdnqfs', 0x5f5f5a467c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373932343332322e3033333635393b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2233367372766a6266363667756e647533326a3572756b6a696d37223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373831383638333b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373932373834333b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373932373834323b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373837383736363b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373837373036363b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373838393236313b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226437393336643137343966623630393566376637623732333063323430346363223b733a33323a226431333363653034353136323837646639313039373934653763356266663638223b7d733a343a2268617368223b733a36353a2264313333636530343531363238376466393130393739346537633562666636382d6437393336643137343966623630393566376637623732333063323430346363223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3935313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a223365306466623030393034393865663239313336393662376431323836313937223b733a33323a223332343638353961623933643331366532643635386436383937303633303765223b733a33323a223963623633656237306438326333616631666232386437396133316265343930223b733a33323a226663626336396339613038336332373530353961343461376331306437313139223b733a33323a223236636638623134623831333630633232613334333039623739666235356663223b733a33323a226430356235353932303438356537643461623861613334646639663762633936223b733a33323a226131346131336136363338623861313363643133616636343637623031333039223b733a33323a226636346632396663386163636231323134353238663764666164353961623766223b733a33323a226534323064643837333834656435383334366536663638306438663564353539223b733a33323a226334616665326332383330343263373334343430336433376563633038336531223b733a33323a223435393762396266326136326234653233373734386665626332376662396439223b733a33323a223862666139376633353431353431636563343066363837616433663334323464223b733a33323a223965656464613532336338393334633738343334653433313363663730643766223b733a33323a223136626234306636396236353530626532373236623061626638646230313632223b733a33323a223738303032363638363236333339383238363065643935663766633662306430223b733a33323a223766326261613531663933643737633636656465356636303763373236663937223b7d733a343a2268617368223b733a36353a2237663262616135316639336437376336366564653566363037633732366639372d3738303032363638363236333339383238363065643935663766633662306430223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226238333135353233306331333563663466396636383931643761393831393639223b733a33323a223439376363333661383437666637356239333735633939313235633365346131223b733a33323a223666616261316630636332306230626265636636333934626366376566313435223b733a33323a226535626239303566363232663133366332316266303837656132666265333665223b7d733a343a2268617368223b733a36353a2265356262393035663632326631333663323162663038376561326662653336652d3666616261316630636332306230626265636636333934626366376566313435223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3837313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a223633333433613366343237636331383535653761316132376131666265643461223b733a33323a223333666438363132396565366565376334383731396537616135393064393535223b733a33323a226462646330363634313332626162363134376136376164643431643433303632223b733a33323a223065633466633738333232343939613635343936373132313939363062343138223b733a33323a223133323630353337633030613739346632333132383462393062386263626464223b733a33323a226638393963313030646133376431343435303563656263393334366330633133223b733a33323a223736386262366439653431336338333533626338666663346234623166616630223b733a33323a223064613031383561666535393966353636306539623761366662313238373266223b733a33323a223830646135643735346163393063326539386464303033383731363637656333223b733a33323a226466616162663238393639666439653363363862353763616366356431636263223b733a33323a226665353061666332366261356233666235373665623131393739323866623035223b733a33323a223933623937626161326431393933643631316537356362363362643637363632223b733a33323a226431303164353930303766646334666263366565333334383635623637626539223b733a33323a223465333062303133343834663932623466343433333232623433643461623731223b7d733a343a2268617368223b733a36353a2234653330623031333438346639326234663434333332326234336434616237312d6431303164353930303766646334666263366565333334383635623637626539223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223365356362373232633137313038613966396335613466316565396634336534223b733a33323a223736613037343031393261343531333663303964323135613238323439386534223b7d733a343a2268617368223b733a36353a2237366130373430313932613435313336633039643231356132383234393865342d3365356362373232633137313038613966396335613466316565396634336534223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223863616431323864363665383733643534663634323964383033363233343735223b733a33323a223337386162666636636633393864646335646161343830666664326137666539223b733a33323a223061303930306561376130333565643066316231333832383961356566633464223b733a33323a226236643031356637633066323162643663333866633062626564323639333133223b733a33323a223262646264623838303264313133633633363035656335323838333965333365223b733a33323a223837313766306137346430313236643538383938653337663332383063393637223b7d733a343a2268617368223b733a36353a2238373137663061373464303132366435383839386533376633323830633936372d3262646264623838303264313133633633363035656335323838333965333365223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587924323);

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
('administrator_email', '\"fogneyan@gmail.com\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"omeka\"'),
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
(1, NULL, 1, 'www_yannickfogneomekamedas_fr', 'default', 'yannick_fogne_omeka_medas', 'Site that will show my data sets and all items', '[{\"type\":\"browse\",\"data\":{\"label\":\"Browse\",\"query\":\"\"},\"links\":[]}]', '{\"fulltext_search\":\"\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"\"],\"resource_template_id\":[\"\"],\"item_set_id\":[\"11\"],\"o:site_item_set\":[{\"o:item_set\":{\"o:id\":\"11\"}}]}', '2020-04-21 09:57:37', '2020-04-21 10:39:55', 1);

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
(1, 1, 11, 1);

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
(1, 1, 'welcome', 'Welcome', '2020-04-21 09:57:37', '2020-04-21 09:57:37');

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
(1, 1, 'html', '{\"html\":\"Welcome to your new site. This is an example page.\"}', 1);

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
(1, 'fogneyan@gmail.com', 'Yannick FOGNE', '2020-04-16 10:42:36', '2020-04-16 10:42:37', '$2y$10$5d7W2yjNXNqFVZvjbQVBRe1JV1pEm4yA/1xs.N1vGN/qB7qNiNOf6', 'global_admin', 1);

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
('locale', 1, '\"fr\"');

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
(1, 1, 1, NULL, 'literal', '', 'Asthme ', NULL, 1),
(2, 2, 1, NULL, 'literal', '', 'Rosacée (couperose)', NULL, 1),
(3, 2, 15, NULL, 'literal', '', 'Free ', NULL, 1),
(4, 2, 7, NULL, 'literal', '', '2020/04/21', NULL, 1),
(5, 2, 4, NULL, 'literal', '', 'La rosacée (ou couperose) est une maladie de peau qui touche les petits vaisseaux sanguins. Localisée sur le centre du visage, cette pathologie peut devenir très inesthétique.', NULL, 1),
(6, 3, 1, NULL, 'literal', '', 'Covid 19 ', NULL, 1),
(7, 4, 1, NULL, 'literal', '', 'Page web Minsanté ', NULL, 1),
(8, 4, 15, NULL, 'literal', '', 'Tous droits réserves ', NULL, 1),
(9, 4, 8, NULL, 'uri', NULL, 'Ministère de la santé ', 'https://solidarites-sante.gouv.fr/', 1),
(10, 4, 4, NULL, 'literal', '', 'à la recherche\n\nPour les articles homonymes, voir Ministère des Affaires sociales et de la Santé. \nMinistère des Solidarités et de la Santé\n(appellation depuis 2017)\n\nHistoire\nFondation\n1920 : ministère de l\'Hygiène, de l\'Assistance et de la Prévoyance sociale\n1930 : ministère de la Santé publique\n1945 : ministère de la Sécurité sociale\nCadre\nType\nMinistère français\nForme juridique\nMinistère en France\nSiège social\n14, avenue Duquesne\nParis 7e\nPays\n France\nCoordonnées\n48° 51′ 08″ N, 2° 18′ 33″ E\nLangue\nFrançais\nOrganisation\nEffectif\n11 157 (2013)2\nMinistre\nOlivier Véran\nPersonnes clés\nEdgar Faure\nPierre Bérégovoy\nPhilippe Séguin\nClaude Évin\nSimone Veil\nFrançois Fillon\nRoselyne Bachelot\nMarisol Touraine\nAgnès Buzyn\nOrganisation mère\nGouvernement de la République française\nBudget\n19 596 millions d’euros (2016)1\nSites web\nsolidarites-sante.gouv.fr\nwww.social-sante.gouv.fr\nIdentifiants\nSIREN\n130016538\ndata.gouv.fr\n534fff94a3a7292c64a77fc1\nAnnuaire du service public\ngouvernement/administration-centrale-ou-ministere_192696\nLocalisation sur la carte de Paris\n\n\n\nvoir sur la carte de France\nvoir sur la carte de Paris\nmodifier - modifier le code - modifier Wikidata\n\nLe ministère des Affaires sociales et de la Santé, appelé depuis 2017 « ministère des Solidarités et de la Santé », est l’administration française chargée de la mise en œuvre de la politique du gouvernement dans les domaines des affaires sociales, de la solidarité et de la cohésion sociale, de la santé publique et de la protection sociale. Il est dirigé par le ministre correspondant, membre du gouvernement français. \nL’appellation peut varier, notamment en fonction de l\'existence ou non d’un ministère du Travail séparé. \nL’action sociale fait également partie de la compétences des conseils départementaux. \nLe titulaire actuel est Olivier Véran, ministre des Solidarités et de la Santé dans le Gouvernement d\'Édouard Philippe II. ', NULL, 1),
(11, 5, 1, NULL, 'literal', '', 'Melanome-de-la-peau', NULL, 1),
(12, 5, 15, NULL, 'literal', '', 'Free', NULL, 1),
(13, 6, 1, NULL, 'literal', '', 'Cancer du pancréas ', NULL, 1),
(14, 6, 15, NULL, 'literal', '', 'Free use ', NULL, 1),
(15, 6, 8, NULL, 'literal', '', 'Ressources maladies', NULL, 1),
(16, 7, 1, NULL, 'literal', '', 'Cancer du rein ', NULL, 1),
(17, 7, 15, NULL, 'literal', '', 'Free use', NULL, 1),
(18, 7, 8, NULL, 'literal', '', 'Santé ', NULL, 1),
(19, 7, 2, NULL, 'literal', '', 'MINSANTE ', NULL, 1),
(20, 7, 7, NULL, 'literal', '', 'June 21, 2019', NULL, 1),
(21, 8, 1, NULL, 'literal', '', 'Cancer du colon ', NULL, 1),
(22, 8, 15, NULL, 'literal', '', 'Only academic use. For all commercial use, contact the author for rights', NULL, 1),
(23, 9, 1, NULL, 'literal', '', 'Cancers de l\'estomac ', NULL, 1),
(24, 9, 15, NULL, 'literal', '', 'All rights reserved ', NULL, 1),
(25, 9, 8, NULL, 'literal', '', 'Type de maladie ', NULL, 1),
(26, 9, 2, NULL, 'literal', '', 'MINSANTE ', NULL, 1),
(27, 9, 7, NULL, 'literal', '', '25/02/2020', NULL, 1),
(28, 10, 1, NULL, 'literal', '', 'Grippes', NULL, 1),
(29, 10, 15, NULL, 'literal', '', 'All rights reserved ', NULL, 1),
(30, 10, 8, NULL, 'literal', '', 'Type de maladie ', NULL, 1),
(31, 10, 2, NULL, 'literal', '', 'MINSANTE ', NULL, 1),
(32, 10, 7, NULL, 'literal', '', 'March 21, 2020', NULL, 1),
(33, 10, 4, NULL, 'literal', '', 'La grippe (ou influenza) est une maladie infectieuse fréquente et contagieuse causée par certains virus à ARN de la famille des orthomyxoviridés : le virus de la grippe A, le virus de la grippe B, le virus de la grippe C et le virus de la grippe D.', NULL, 1),
(34, 11, 1, NULL, 'literal', '', 'Oncologie', NULL, 1),
(35, 11, 15, NULL, 'literal', '', 'all rights reserved ', NULL, 1),
(36, 12, 1, NULL, 'literal', '', 'Dermatologie', NULL, 1),
(37, 10, 12, NULL, 'literal', '', 'Français ', NULL, 1),
(38, 10, 13, NULL, 'uri', NULL, '', 'https://www.oscillo.fr/?gclid=CjwKCAjwv4_1BRAhEiwAtMDLsnlJSpPsppwGbaCFth6CrKWr5mQjJYZwVqe1vncziajeiNDLsZ4Z_RoCA2UQAvD_BwE', 1),
(39, 10, 3, NULL, 'literal', '', 'Symptômes: Toux, rhum, fièvre, fatigue, maux de gorge', NULL, 1),
(40, 9, 4, NULL, 'literal', '', 'L\'estomac est un organe de l\'appareil digestif. Il est situé dans la partie supérieure et médiane de l\'abdomen (région épigastrique). Il fait suite à l\'œsophage et précède le duodénum. L\'estomac participe à la digestion.\n90 % des cancers de l\'estomac sont des adénocarcinomes.\nOn estime à environ 6 550 le nombre de nouveaux cas de cancers de l\'estomac en France en 2012, dont près de 66 % concernent des hommes.\nLe cancer de l\'estomac est associé à plusieurs facteurs de risque, notamment, une gastrite chronique principalement liée à une infection par la bactérie Helicobacter pylori, le tabagisme, une alimentation riche en produits salés et pauvre en légumes et fruits frais, des antécédents de cancer de l\'estomac dans la famille ou encore une prédisposition génétique augmentant le risque de développer un cancer de l\'estomac.', NULL, 1),
(41, 9, 4, NULL, 'uri', NULL, 'Symptômes de cancers ', 'https://www.e-cancer.fr/Patients-et-proches/Les-cancers?%25253fgclid=CjwKCAjwv4_1BRAhEiwAtMDLstxgPqJpaGhJ0VPc6ePdj6uUsXodon3bz8w5T2lre696GTjmYpa7MxoCouQQAvD_BwE', 1),
(42, 9, 6, NULL, 'uri', NULL, 'MINSANTE', 'https://www.minsante.cm/site/?q=en/node/543', 1),
(43, 9, 3, NULL, 'literal', '', 'Symptômes du cancer du cancer de l\'estomac : Douleurs, boule à l\'endroit, amaigrissements', NULL, 1),
(44, 8, 8, NULL, 'uri', NULL, 'Infos cancers ', 'https://www.e-cancer.fr/Patients-et-proches/Les-cancers/Cancer-du-colon/Points-cles', 1),
(45, 8, 2, NULL, 'literal', '', 'MINSANTE ', NULL, 1),
(46, 8, 7, NULL, 'literal', '', '10/01/2020', NULL, 1),
(47, 8, 4, NULL, 'literal', '', 'Le cancer du côlon se développe à partir des cellules qui tapissent la paroi interne du côlon. Dans plus de 80 % des cas, il provient d’une tumeur bénigne, appelée polype adénomateux, qui évolue lentement et finit par devenir cancéreuse.\nChaque cancer est unique et se définit notamment en fonction de sa localisation dans le côlon, de sa profondeur dans la paroi, de l’atteinte ou non des ganglions proches du côlon et de la présence ou non de métastases au niveau d’autres organes.', NULL, 1),
(48, 8, 3, NULL, 'literal', '', 'Maladies cancérigènes ', NULL, 1),
(49, 7, 4, NULL, 'literal', '', 'Un cancer apparaît lorsqu\'une cellule du rein initialement normale se transforme, puis se multiplie de façon incontrôlée en formant un amas de cellules anormales qu\'on appelle une tumeur. Un cancer du rein peut prendre naissance à partir d\'une cellule de différentes parties du rein ; dans la majorité des cas, il se développe à partir d\'une cellule du parenchyme rénal. Ce type de cancer du rein porte le nom de carcinome à cellules rénales.\nLe nombre de nouveaux cas de cancer du rein en France était estimé à 11 090 en 2011. Le cancer du rein représente ainsi environ 3 % de l\'ensemble des cancers. Il touche deux fois plus les hommes que les femmes. L\'âge moyen au moment du diagnostic est 65 ans.', NULL, 1),
(50, 7, 13, NULL, 'uri', NULL, 'Référence cancer du rein ', 'https://www.e-cancer.fr/Patients-et-proches/Les-cancers/Cancer-du-rein/Points-cles', 1),
(51, 7, 3, NULL, 'literal', '', 'Symptômes cancers du rein ', NULL, 1),
(52, 6, 2, NULL, 'literal', '', 'MINSANTE ', NULL, 1),
(53, 6, 7, NULL, 'literal', '', '10/01/2020', NULL, 1),
(54, 6, 4, NULL, 'literal', '', 'Le pancréas est un organe du système digestif. Il est enfoui profondément dans l\'abdomen et se situe derrière l\'estomac, tout contre l\'intestin et à proximité d\'un réseau dense de vaisseaux sanguins. Le pancréas aide à la digestion et joue un rôle majeur dans la régulation du taux de glucose dans le sang.\nUn cancer apparaît lorsque des cellules du pancréas se développent et se multiplient de manière anarchique et incontrôlée jusqu\'à former une tumeur maligne. La plupart des tumeurs se situent sur la tête du pancréas, partie de l\'organe proche de l\'intestin.', NULL, 1),
(55, 6, 12, NULL, 'literal', '', 'Français ', NULL, 1),
(56, 6, 13, NULL, 'uri', NULL, 'Cancers du pancréas ', 'https://www.e-cancer.fr/Patients-et-proches/Les-cancers/Cancer-du-pancreas/Points-cles', 1),
(57, 5, 7, NULL, 'literal', '', '10/10/2018', NULL, 1),
(58, 5, 13, NULL, 'uri', NULL, 'Maladies de la peau', 'https://www.e-cancer.fr/Patients-et-proches/Les-cancers/Melanome-de-la-peau/Points-cles', 1),
(59, 5, 3, NULL, 'literal', '', 'Symptômes : Métastases, enflement, douleur, rougeur, ', NULL, 1),
(60, 5, 91, NULL, 'literal', '', 'Un mélanome de la peau est une maladie des cellules de la peau appelées mélanocytes. Il se développe à partir d’une cellule initialement normale qui se transforme et se multiplie de façon anarchique pour former une lésion appelée tumeur maligne.\nIl existe quatre principaux types de mélanome de la peau : le mélanome superficiel extensif, le mélanome de Dubreuilh, le mélanome nodulaire et le mélanome acrolentigineux. Le traitement de ces différents types de mélanome repose essentiellement sur la chirurgie qui sera adaptée à la topographie (c’est-à-dire à l’endroit où est situé le mélanome) et à la profondeur de la lésion.\nAvec près de 11 176 cas estimés en 2012, le mélanome représente entre 2 et 3 % de l’ensemble des cancers. Il touche un peu plus de femmes (53 %) que d’hommes (47 %) et l’âge moyen au diagnostic est de 56 ans. C’est le cancer pour lequel le nombre de nouveaux cas par an (incidence) augmente le plus (10 % par an depuis 50 ans).', NULL, 1),
(61, 4, 12, NULL, 'literal', '', 'Français ', NULL, 1),
(62, 3, 15, NULL, 'literal', '', 'All rights reserved ', NULL, 1),
(63, 3, 8, NULL, 'literal', '', 'Maladie pandémie ', NULL, 1),
(64, 3, 2, NULL, 'literal', '', 'MINSANTE ', NULL, 1),
(65, 3, 7, NULL, 'literal', '', '12/03/2020', NULL, 1),
(66, 3, 4, NULL, 'literal', '', 'La maladie à coronavirus 2019 (COVID-19) est une ‎maladie infectieuse due à un coronavirus découvert ‎récemment. ‎\n\nLa majorité des personnes atteintes de la COVID-19 ‎ne ressentiront que des symptômes bénins ou ‎modérés et guériront sans traitement particulier. ‎\n\nPropagation\n\nLe virus qui entraîne la COVID-19 se transmet ‎principalement par des gouttelettes produites ‎lorsqu’une personne infectée tousse, éternue, ou ‎lors d’une expiration. Ces gouttelettes sont trop ‎lourdes pour rester dans l’air et tombent ‎rapidement sur le sol ou sur toute surface proche.‎\n\nVous pouvez être infecté en respirant le virus, si ‎vous êtes à proximité d’une personne malade, ou en ‎touchant une surface contaminée puis vos yeux, ‎votre nez ou votre bouche.‎', NULL, 1),
(67, 3, 12, NULL, 'literal', '', 'Français ', NULL, 1),
(68, 3, 6, NULL, 'uri', NULL, 'COVID 19', 'https://www.linternaute.com/actualite/guide-vie-quotidienne/2489651-covid-19-en-france-cas-morts-et-hospitalisations-statistiques-du-24-avril-2020/', 1),
(69, 3, 13, 10, 'resource', NULL, NULL, NULL, 1),
(70, 2, 12, NULL, 'literal', '', 'Français ', NULL, 1),
(71, 2, 17, NULL, 'literal', '', 'maladie cutanée ', NULL, 1),
(72, 2, 6, NULL, 'literal', '', 'MINSANTE ', NULL, 1),
(73, 2, 13, NULL, 'uri', NULL, 'Maladie cutanée', 'https://www.doctissimo.fr/html/dossiers/peau_boutons.htm', 1),
(74, 2, 3, NULL, 'literal', '', 'Symptômes Rosacée : ', NULL, 1),
(75, 1, 4, NULL, 'literal', '', '\'asthme se manifeste généralement sous différentes formes :\nLa toux, généralement sèche et survenant par quinte. Elle peut annoncer le début d\'une crise ou en être la principale manifestation ;\nLes sifflements dans la poitrine est certainement le symptôme le plus courant de l\'asthme ;\nLa gêne respiratoire associée au sifflement peut également prendre des formes différentes. Une oppression (ou sensation de thorax bloqué) pourra être prise pour une alerte cardiaque chez les seniors. \nCes signes peuvent survenir la nuit ou à l\'effort, souvent entrecoupées de longues périodes d\'accalmie. Mais trop souvent encore, ces signes passent inaperçus et le diagnostic n\'intervient que tardivement. \"Il m\'arrive de rencontrer des patients qui ont traîné de tels symptômes pendant des mois, voire des années avant d\'être diagnostiqués asthmatiques. Un seul de ces symptômes peut évoquer la maladie. Ce sont des indices au même titre que la présence d\'antécédents familiaux d\'asthme ou d\'allergie\" nous déclare le Dr Pierrick Hordé, allergologue. ', NULL, 1),
(76, 1, 3, NULL, 'literal', '', 'Symptômes Asthme : Toux, sifflements, gêne respiratoire... Les symptômes de l\'asthme sont bien connus, mais ils sont peu caractéristiques. Comment les distinguer d\'autres affections respiratoires ? Comment poser le diagnostic ? Les réponses.', NULL, 1),
(77, 12, 15, 4, 'resource', NULL, NULL, NULL, 1),
(78, 12, 8, NULL, 'literal', '', 'Maladies cutanées', NULL, 1),
(79, 12, 2, NULL, 'literal', '', 'ministère de la santé ', NULL, 1),
(80, 12, 7, NULL, 'literal', '', '10/02/2019', NULL, 1),
(81, 12, 4, NULL, 'literal', '', 'La dermatologie est une spécialité de médecine qui s\'occupe de la peau, des muqueuses et des phanères. Elle est associée à la vénérologie, c’est-à-dire l\'étude des maladies vénériennes ou infections sexuellement transmissibles. Le médecin spécialisé pratiquant la dermatologie s\'appelle le dermatologue', NULL, 1),
(82, 12, 9, NULL, 'literal', '', 'La dermatologie s\'occupe des maladies de la peau ', NULL, 1),
(83, 12, 12, NULL, 'literal', '', 'Français ', NULL, 1),
(84, 11, 8, NULL, 'literal', '', 'Maladies cancéreuses, ', NULL, 1),
(85, 11, 2, NULL, 'literal', '', 'Minsante', NULL, 1),
(86, 11, 7, NULL, 'literal', '', '10/02/2018', NULL, 1),
(87, 11, 4, NULL, 'literal', '', 'L\'oncologie ou carcinologie ou cancérologie est la spécialité médicale d\'étude, de diagnostic et de traitement des cancers. Un médecin qui pratique cette discipline est appelé oncologue ou cancérologue. Le terme vient du grec onkos, signifiant vrac, masse ou tumeur, et le suffixe -logie, signifiant « étude de \nLa cancérologie (appelée aussi carcinologie ou oncologie) est la spécialité d\'étude, de diagnostic et de traitement des cancers. Un médecin qui pratique cette discipline est appelé oncologue ou cancérologue. La cancérologie peut être pratiquée dans des services individualisés ou dans des services plus généraux : pneumologie, gastro-entérologie, ORL…', NULL, 1),
(88, 11, 12, NULL, 'literal', '', 'Français ', NULL, 1),
(89, 11, 13, 9, 'resource', NULL, NULL, NULL, 1),
(90, 11, 13, 7, 'resource', NULL, NULL, NULL, 1),
(91, 11, 13, 6, 'resource', NULL, NULL, NULL, 1),
(92, 11, 13, 8, 'resource', NULL, NULL, NULL, 1),
(93, 11, 50, 4, 'resource', NULL, NULL, NULL, 1),
(94, 11, 3, NULL, 'literal', '', 'Cancérologie: ETudes, dépistages et traitement des cancers ', NULL, 1),
(95, 13, 1, NULL, 'literal', '', 'Pandémies grippales ', NULL, 1),
(96, 13, 15, 4, 'resource', NULL, NULL, NULL, 1),
(97, 13, 8, NULL, 'literal', '', 'Maladies saisonnières grippales ', NULL, 1),
(98, 13, 8, NULL, 'uri', NULL, 'Ressources medecine interne', 'https://www.livi.fr/sante/eruptions_cutanees_et_demangeaisons/', 1),
(99, 13, 7, NULL, 'literal', '', '30/05/2018', NULL, 1),
(100, 13, 4, NULL, 'literal', '', 'le virus grippal est le seul agent infectieux capable de rendre malade le tiers de la population mondiale en moins de six mois et de causer des millions de décès en une période aussi courte. L’OMS, pour répondre à cette menace, a constitué l’un de ses réseaux les plus efficaces, et le plus ancien, FluNet, connectant entre eux, en temps réel, plus de 112 centres nationaux de la grippe répartis sur les 5 continents (il y en a deux en France, à l’Institut Pasteur de Paris pour le Nord de la France et à l’Université de Lyon, pour le Sud) et quatre centres collaborateurs mondiaux de lutte contre la grippe [1]. Après avoir connu trois pandémies grippales au vingtième siècle, il n’y a aucune raison de ne pas craindre une nouvelle émergence d’une souche de virus grippal à potentiel pandémique au cours du xxi e siècle.', NULL, 1),
(101, 13, 6, NULL, 'literal', '', 'CHU ', NULL, 1),
(102, 13, 13, 10, 'resource', NULL, NULL, NULL, 1),
(103, 13, 13, 1, 'resource', NULL, NULL, NULL, 1),
(104, 13, 50, NULL, 'literal', '', 'Ministère de la santé ', NULL, 1),
(105, 11, 17, NULL, 'literal', '', 'Département de dépistage et de traitement des cancers ', NULL, 1),
(106, 12, 13, 5, 'resource', NULL, NULL, NULL, 1),
(107, 12, 13, 2, 'resource', NULL, NULL, NULL, 1),
(108, 12, 3, NULL, 'literal', '', 'Dermatologies: Maladies de la couche cutanée', NULL, 1),
(109, 13, 3, NULL, 'literal', '', 'Maladies  grippales, pandémies saisonnières ', NULL, 1),
(110, 4, 13, 12, 'resource', NULL, NULL, NULL, 1),
(111, 4, 13, 13, 'resource', NULL, NULL, NULL, 1),
(112, 4, 13, 11, 'resource', NULL, NULL, NULL, 1),
(113, 4, 3, NULL, 'literal', '', 'Ministère s\'occupant des maladies et de la prise en changer des patients dans les hopitaux et cliniques. ', NULL, 1),
(114, 3, 3, NULL, 'literal', '', 'Mladie Covid ', NULL, 1),
(115, 14, 1, NULL, 'literal', '', 'Fièvre ', NULL, 1),
(116, 14, 8, NULL, 'literal', '', 'Froid et chaleur ', NULL, 1),
(117, 14, 13, 13, 'resource', NULL, NULL, NULL, 1),
(118, 15, 1, NULL, 'literal', '', 'Douleurs ', NULL, 1),
(119, 15, 13, 13, 'resource', NULL, NULL, NULL, 1),
(120, 15, 13, 12, 'resource', NULL, NULL, NULL, 1),
(121, 15, 13, 11, 'resource', NULL, NULL, NULL, 1),
(122, 16, 1, NULL, 'literal', '', 'Éruptions et lesions cutanées ', NULL, 1),
(123, 16, 4, NULL, 'literal', '', 'Les éruptions cutanées et démangeaisons sont un phénomène très courant qui touche des millions de personnes. Il est possible de souffrir de ces symptômes pour de nombreuses raisons : acné, urticaire, eczéma, psoriasis, verrues, rosacée etc... Afin de bénéficier du traitement approprié, il est important de préciser le type d\'éruption cutanée dont vous souffrez.', NULL, 1),
(124, 16, 13, 5, 'resource', NULL, NULL, NULL, 1),
(125, 16, 13, 2, 'resource', NULL, NULL, NULL, 1),
(126, 16, 13, 3, 'resource', NULL, NULL, NULL, 1),
(127, 13, 41, NULL, 'literal', '', 'Maladies respiratoires ', NULL, 1),
(128, 17, 1, NULL, 'literal', '', 'Chimiothérapie ', NULL, 1),
(129, 17, 1, 11, 'resource', NULL, NULL, NULL, 1),
(130, 17, 4, NULL, 'literal', '', 'La chimiothérapie est l\'usage de certaines substances chimiques pour traiter une maladie. C\'est une technique de traitement à part entière au même titre que la chirurgie ou la radiothérapie', NULL, 1);

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
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Maladies pandémiques ', 'Les grippes pandémiques\r\nUne pandémie grippale est une épidémie qui sévit à l’échelle d’une zone géographique très étendue, à l’occasion de l’émergence d’un nouveau virus grippal résultant généralement d’une modification génétique majeure.'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Cancerologie ', 'Socially assistive robots use social interaction as a mean in itself for enhancing health and psychological well-being of older people motivating users to maintain a healthy lifestyle, guiding them in the execution of daily activities and providing companionship. In this context, endowing a socially assistive robot with cultural knowledge makes it more aware of culture-related preferences, traditions and needs, and allows it to behave more competently, tuning its behaviour to meet the customs and expectations of the user. As ageing populations across the world are placing health and social care systems under pressure, culturally competent robots can assist human caregivers in some tasks, thus helping to reduce the pressure in hospitals and care homes and improve care delivery at home.');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `site_page`
--
ALTER TABLE `site_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `site_permission`
--
ALTER TABLE `site_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
--
-- Base de données : `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Déchargement des données de la table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Déchargement des données de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"omeka\",\"table\":\"item_set\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Déchargement des données de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-04-26 18:25:20', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"fr\"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de données : `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
