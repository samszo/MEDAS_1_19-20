-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 23 avr. 2020 à 00:54
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `omk_medas`
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
-- Structure de la table `csvimport_entity`
--

CREATE TABLE `csvimport_entity` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `resource_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `csvimport_import`
--

CREATE TABLE `csvimport_import` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `undo_job_id` int(11) DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_err` tinyint(1) NOT NULL,
  `stats` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
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
(1, 'items', 1, 1, 'Sama', 'Sama\nEtudiant M1\nPrince\nVegeta1\nVegeta\n8001'),
(2, 'items', 1, 1, 'BDD relationnel', 'BDD relationnel\ndbpedia \nffze\nfez\nfez\nfez\nfez'),
(4, 'items', 1, 1, 'Real Madrid vs AC Fiorentina', '1957\nReal Madrid vs AC Fiorentina\n2-0\nStade Santiago-Bernabéu (Madrid) \nReal Madrid vs AC Fiorentina'),
(5, 'items', 1, 1, 'Real Madrid vs AC Milan', '1958\nReal Madrid vs AC Milan\n3 - 2\n Stade du Heysel (Bruxelles) \nReal Madrid vs AC Milan'),
(7, 'item_sets', 1, 1, 'Les finales de Ligue des Champions', 'Les finales de Ligue des Champions\nReal Madrid vs AC Milan\nReal Madrid vs AC Fiorentina\nBenfica Lisbonne vs Eintracht Francfort\nBenfica Lisbonne vs FC Barcelone\nReal Madrid (7) vs Juventus\nAC Milan (5) vs FC Barcelone\nFeyenoord Rotterdam vs Celtic Glasgow\nAC Milan (2) vs Ajax Amsterdam\nCeltic Glasgow vs Inter Milan\nReal Madrid vs Stade de Reims\nBenfica Lisbonne vs FC Barcelone\nBenfica Lisbonne vs Eintracht Francfort\nReal Madrid vs Stade de Reims\nReal Madrid vs AC Milan\nReal Madrid vs AC Fiorentina'),
(8, 'items', 1, 1, 'Real Madrid vs Stade de Reims', '1959\nReal Madrid vs Stade de Reims\n2 - 0\n Neckarstadion (Stuttgart) \nReal Madrid vs Stade de Reims'),
(9, 'items', 1, 1, 'Benfica Lisbonne vs Eintracht Francfort', '1960\nBenfica Lisbonne vs Eintracht Francfort\n\n7 - 3\nHampden Park (Glasgow) \nBenfica Lisbonne vs Eintracht Francfort\n'),
(10, 'items', 1, 1, 'Benfica Lisbonne vs FC Barcelone', '1961\nBenfica Lisbonne vs FC Barcelone\n3 - 2\n\nStade du Wankdorf (Berne) \nBenfica Lisbonne vs FC Barcelone'),
(15, 'items', 1, 1, 'Real Madrid', 'Real Madrid\nLos Merengues	6 mars 1902	Blanc	Espagne\nReal Madrid'),
(16, 'items', 1, 1, 'Benfica Lisbonne', 'Benfica Lisbonne\nÁguias (Aigles)	28 février 1904	rouge et blanc	\nBenfica Lisbonne'),
(17, 'item_sets', 1, 1, 'Clubs', 'Clubs\nReal Madrid\nBenfica Lisbonne\nValence CF\nHambourg SV\nCeltic Football Club\nInter Milan\nManchester United\nAjax Amsterdam\nFC Barcelone\nBayern Munich'),
(18, 'items', 1, 1, 'Real Madrid vs Stade de Reims', '1956\nReal Madrid vs Stade de Reims\n4 - 3\nParc des Prince (Paris)\nReal Madrid vs Stade de Reims'),
(19, 'items', 1, 1, 'Bayern Munich', 'Bayern Munich\nBayern Munich\n27 février 1900\nRouge et blanc\nBayern Munich'),
(20, 'items', 1, 1, 'FC Barcelone', 'FC Barcelone\nFC Barcelone\nBlaugranes\n29 novembre 1899\nBleu et grenat\nFC Barcelone'),
(21, 'items', 1, 1, 'Ajax Amsterdam', 'Ajax Amsterdam\nAjax Amsterdam\n 18 mars 1900\nAjax Amsterdam\nPays-Bas'),
(22, 'items', 1, 1, 'Manchester United', 'Manchester United\nManchester United\nRed Devils\n5 mars 1878\nRouge et noir\nManchester United\nAngleterre'),
(23, 'items', 1, 1, 'Inter Milan', 'Inter Milan\nInter Milan\nNerazzurri\n 	28 février 1904\nBleu et noir\nInter Milan'),
(24, 'items', 1, 1, 'Celtic Football Club', 'Celtic Football Club\nCeltic Football Club\nThe Bhoys\n6 novembre 1887\nvert et blanc\nCeltic Football Club\nEcosse'),
(25, 'items', 1, 1, 'Hambourg SV', 'Hambourg SV\nHambourg SV\nHambourg SV'),
(26, 'items', 1, 1, 'Valence CF', 'Valence CF\nValence CF\nValence CF\nEspagne'),
(27, 'items', 1, 1, 'Celtic Glasgow vs Inter Milan', '1967\nCeltic Glasgow vs Inter Milan\n2 – 1\nStade national (Lisbonne)\nCeltic Glasgow vs Inter Milan'),
(28, 'items', 1, 1, 'AC Milan (2) vs Ajax Amsterdam', '1969\nAC Milan (2) vs Ajax Amsterdam\n4 – 1\nStade Santiago-Bernabéu (Madrid)\nAC Milan (2) vs Ajax Amsterdam'),
(29, 'items', 1, 1, 'Feyenoord Rotterdam vs Celtic Glasgow', 'Feyenoord Rotterdam vs Celtic Glasgow\nFeyenoord Rotterdam vs Celtic Glasgow\n4 – 1\nStade San Siro (Milan)\nFeyenoord Rotterdam vs Celtic Glasgow\nFeyenoord Rotterdam vs Celtic Glasgow'),
(30, 'items', 1, 1, 'AC Milan (5) vs FC Barcelone', '1994\nAC Milan (5) vs FC Barcelone\n4 – 0\nStade olympique (Athènes)\nAC Milan (5) vs FC Barcelone'),
(31, 'items', 1, 1, 'Real Madrid (7) vs Juventus', '1998\nReal Madrid (7) vs Juventus\n1 – 0\nAmsterdam ArenA (Amsterdam)\nReal Madrid (7) vs Juventus'),
(32, 'items', 1, 1, 'Francisco GENTO', 'GENTO\nFrancisco\n21/10/1933\nFrancisco GENTO\nReal Madrid\nEspagne\nAilier gauche'),
(33, 'items', 1, 1, 'Paola MALDINI', 'MALDINI\nPaolo\n29/06/1968\nPaola MALDINI\nMilan AC\nItalie\nDéfenseur'),
(34, 'items', 1, 1, 'Alfredo DI STEFANO', 'DI STEFANO\nAlfredo\n4 juillet 1926 \nAlfredo DI STEFANO\nReal Madrid\nArgentine\nAttaquant'),
(35, 'items', 1, 1, 'José María ZARRAGA', 'ZARRAGA\nJosé María \n 	15 août 1930\nJosé María ZARRAGA\nReal Madrid\nEspagne\nMilieu de terrain'),
(36, 'items', 1, 1, 'Cristiano RONALDO', 'RONALDO\nCristiano\n5 février 1985\nCristiano RONALDO\nManchester United, Real Madrid\nPortugal\nAttaquant'),
(37, 'items', 1, 1, 'Marcos Alonso IMAZ MARQUITOS', 'IMAZ MARQUITOS\nMarcos Alonso\n16 avril 1933\nMarcos Alonso IMAZ MARQUITOS\nReal Madrid\nEspagne\nDéfenseur'),
(38, 'items', 1, 1, 'Phil NEAL', 'NEAL\nPhil\n20 février 1951\nPhil NEAL\nLiverpool FC\nAngleterre\nDéfenseur'),
(39, 'items', 1, 1, 'Clarence SEEDORF', 'SEEDORF\nClarence\n1er avril 1976\nClarence SEEDORF\nBayern Munich, Real Madrid, Milan AC\nMilieu de terrain\nMilieu de terrain'),
(40, 'items', 1, 1, 'Toni KROOS', 'KROOS\nToni\n 	4 janvier 1990\nToni KROOS\nBayern Munich, Real Madrid\nPays-Bas\nMilieu de terrain'),
(41, 'items', 1, 1, 'Sergio RAMOS', 'RAMOS\nSergio\n 	30 mars 1986\nSergio RAMOS\nReal Madrid\nEspagne\nDéfenseur central'),
(42, 'item_sets', 1, 1, 'Joueurs', 'Joueurs\nSergio RAMOS\nToni KROOS\nClarence SEEDORF\nPhil NEAL\nMarcos Alonso IMAZ MARQUITOS\nCristiano RONALDO\nJosé María ZARRAGA\nAlfredo DI STEFANO\nPaola MALDINI\nFrancisco GENTO');

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
(4),
(5),
(8),
(9),
(10),
(15),
(16),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

CREATE TABLE `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_item_set`
--

INSERT INTO `item_item_set` (`item_id`, `item_set_id`) VALUES
(16, 17),
(18, 7),
(19, 17),
(20, 17),
(21, 17),
(22, 17),
(23, 17),
(24, 17),
(25, 17),
(26, 17),
(27, 7),
(28, 7),
(29, 7),
(30, 7),
(31, 7),
(32, 42),
(33, 42),
(34, 42),
(35, 42),
(36, 42),
(37, 42),
(38, 42),
(39, 42),
(40, 42),
(41, 42);

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
(7, 0),
(17, 0),
(42, 0);

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

--
-- Déchargement des données de la table `job`
--

INSERT INTO `job` (`id`, `owner_id`, `pid`, `status`, `class`, `args`, `log`, `started`, `ended`) VALUES
(1, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"Clubs.csv\",\"filesize\":\"757\",\"filepath\":\"C:\\\\Users\\\\DAN\\\\AppData\\\\Local\\\\Temp\\\\ome41C0.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column\":[\"id\",\"Nom\",\"Surnom\",\"Fondation\",\"Couleur\",\"Pays\"],\"column-data-type\":[\"literal\",\"literal\",\"literal\",\"literal\",\"literal\",\"literal\"],\"generic-data\":\"default\",\"media-source\":\"default\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2020-04-20T17:29:14+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-04-20T17:29:14+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(154): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Controller\\AbstractActionController.php(78): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(322): Zend\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Zend\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(179): Zend\\EventManager\\EventManager->triggerListeners(Object(Zend\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Controller\\AbstractController.php(104): Zend\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Zend\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\DispatchListener.php(138): Zend\\Mvc\\Controller\\AbstractController->dispatch(Object(Zend\\Http\\PhpEnvironment\\Request), Object(Zend\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(322): Zend\\Mvc\\DispatchListener->onDispatch(Object(Zend\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(179): Zend\\EventManager\\EventManager->triggerListeners(Object(Zend\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Application.php(332): Zend\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Zend\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Zend\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-04-20 17:29:13', '2020-04-20 17:29:14'),
(2, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"ligue_des_champions.csv\",\"filesize\":\"515\",\"filepath\":\"C:\\\\Users\\\\DAN\\\\AppData\\\\Local\\\\Temp\\\\ome8704.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column\":[\"id\",\"Edition\",\"Match finale\",\"Score\",\"Lieu de la finale\"],\"column-data-type\":[\"literal\",\"literal\",\"literal\",\"literal\",\"literal\"],\"generic-data\":\"default\",\"media-source\":\"default\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2020-04-20T17:30:25+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-04-20T17:30:25+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(154): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Controller\\AbstractActionController.php(78): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(322): Zend\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Zend\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(179): Zend\\EventManager\\EventManager->triggerListeners(Object(Zend\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Controller\\AbstractController.php(104): Zend\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Zend\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\DispatchListener.php(138): Zend\\Mvc\\Controller\\AbstractController->dispatch(Object(Zend\\Http\\PhpEnvironment\\Request), Object(Zend\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(322): Zend\\Mvc\\DispatchListener->onDispatch(Object(Zend\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(179): Zend\\EventManager\\EventManager->triggerListeners(Object(Zend\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Application.php(332): Zend\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Zend\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Zend\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-04-20 17:30:25', '2020-04-20 17:30:25'),
(3, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"Clubs.csv\",\"filesize\":\"757\",\"filepath\":\"C:\\\\Users\\\\DAN\\\\AppData\\\\Local\\\\Temp\\\\omeD6A4.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-data-type\":[\"literal\",\"literal\",\"literal\",\"literal\",\"literal\",\"literal\"],\"generic-data\":\"default\",\"media-source\":\"default\",\"o:resource_template\":{\"o:id\":1},\"o:resource_class\":{\"o:id\":115},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2020-04-20T17:38:08+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-04-20T17:38:08+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(154): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Controller\\AbstractActionController.php(78): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(322): Zend\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Zend\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(179): Zend\\EventManager\\EventManager->triggerListeners(Object(Zend\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Controller\\AbstractController.php(104): Zend\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Zend\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\DispatchListener.php(138): Zend\\Mvc\\Controller\\AbstractController->dispatch(Object(Zend\\Http\\PhpEnvironment\\Request), Object(Zend\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(322): Zend\\Mvc\\DispatchListener->onDispatch(Object(Zend\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(179): Zend\\EventManager\\EventManager->triggerListeners(Object(Zend\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Application.php(332): Zend\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Zend\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Zend\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-04-20 17:38:08', '2020-04-20 17:38:08'),
(4, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"Clubs.csv\",\"filesize\":\"757\",\"filepath\":\"C:\\\\Users\\\\DAN\\\\AppData\\\\Local\\\\Temp\\\\ome4196.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-data-type\":[\"literal\",\"literal\",\"literal\",\"literal\",\"literal\",\"literal\"],\"generic-data\":\"default\",\"media-source\":\"default\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":115},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"o:item_set\":[\"17\"],\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2020-04-20T17:42:21+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-04-20T17:42:21+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(154): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Controller\\AbstractActionController.php(78): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(322): Zend\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Zend\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(179): Zend\\EventManager\\EventManager->triggerListeners(Object(Zend\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Controller\\AbstractController.php(104): Zend\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Zend\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\DispatchListener.php(138): Zend\\Mvc\\Controller\\AbstractController->dispatch(Object(Zend\\Http\\PhpEnvironment\\Request), Object(Zend\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(322): Zend\\Mvc\\DispatchListener->onDispatch(Object(Zend\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(179): Zend\\EventManager\\EventManager->triggerListeners(Object(Zend\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Application.php(332): Zend\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Zend\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Zend\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-04-20 17:42:21', '2020-04-20 17:42:21'),
(5, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"ldc3.csv\",\"filesize\":\"5156\",\"filepath\":\"C:\\\\Users\\\\DAN\\\\AppData\\\\Local\\\\Temp\\\\omeE37E.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-data-type\":[\"literal\",\"literal\",\"literal\",\"literal\",\"literal\"],\"generic-data\":\"default\",\"media-source\":\"default\",\"o:resource_template\":{\"o:id\":4},\"o:resource_class\":{\"o:id\":115},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"o:item_set\":[\"7\"],\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"#\",\"escape\":\"\\\\\"}', '2020-04-21T13:20:02+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-04-21T13:20:02+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(154): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Controller\\AbstractActionController.php(78): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(322): Zend\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Zend\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(179): Zend\\EventManager\\EventManager->triggerListeners(Object(Zend\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Controller\\AbstractController.php(104): Zend\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Zend\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\DispatchListener.php(138): Zend\\Mvc\\Controller\\AbstractController->dispatch(Object(Zend\\Http\\PhpEnvironment\\Request), Object(Zend\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(322): Zend\\Mvc\\DispatchListener->onDispatch(Object(Zend\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(179): Zend\\EventManager\\EventManager->triggerListeners(Object(Zend\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Application.php(332): Zend\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Zend\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Zend\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-04-21 13:20:02', '2020-04-21 13:20:02'),
(6, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"ldc3.csv\",\"filesize\":\"5156\",\"filepath\":\"C:\\\\Users\\\\DAN\\\\AppData\\\\Local\\\\Temp\\\\ome7328.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-data-type\":[\"literal\",\"literal\",\"literal\",\"literal\",\"literal\"],\"generic-data\":\"default\",\"media-source\":\"default\",\"o:resource_template\":{\"o:id\":4},\"o:resource_class\":{\"o:id\":115},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"o:item_set\":[\"7\"],\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"#\",\"escape\":\"\\\\\"}', '2020-04-21T13:21:49+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-04-21T13:21:49+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(154): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Controller\\AbstractActionController.php(78): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(322): Zend\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Zend\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(179): Zend\\EventManager\\EventManager->triggerListeners(Object(Zend\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Controller\\AbstractController.php(104): Zend\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Zend\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\DispatchListener.php(138): Zend\\Mvc\\Controller\\AbstractController->dispatch(Object(Zend\\Http\\PhpEnvironment\\Request), Object(Zend\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(322): Zend\\Mvc\\DispatchListener->onDispatch(Object(Zend\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-eventmanager\\src\\EventManager.php(179): Zend\\EventManager\\EventManager->triggerListeners(Object(Zend\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\zendframework\\zend-mvc\\src\\Application.php(332): Zend\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Zend\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Zend\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-04-21 13:21:49', '2020-04-21 13:21:49');

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
('CSVImport', 1, '2.1.1'),
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
('KwPHyONmrXymHz8ZuxpWBkSg1Y4nXQ9l', 2, '2020-04-15 13:37:40', 1);

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
(185, 1, 6, 'specializes', 'specializes', 'This property allows to express hierarchies of roles, through of role specialization: if role A specializes role B, and B specializes C, then role A specializes role C.'),
(186, 1, 6, 'requires', 'requires', 'This property relates roles and their requisites, i.e. other roles.'),
(187, 1, 6, 'atContext', 'at context', 'This property enables to relate a profile with a given context (geographical, temporal, spatial, social, etc.).'),
(188, 1, 6, 'plays', 'plays', 'This property relates roles and their players, who can be any foaf:Agent (a person, a group, etc.)'),
(189, 1, 6, 'profiles', 'profiles', 'This property relates people and the featured profiles.'),
(190, 1, 6, 'personalizes', 'personalizes', 'A role is personalized by means of a profile, which wrap the role in the identity of the person behind the profile.'),
(191, 1, 6, 'participates', 'participates', 'This property encodes the participation relation between profiles and the communities they are member of.'),
(192, 1, 6, 'isActive', 'is active', 'This property allows to specify which is the user profile that is active, \ngiven a interaction between two applications.'),
(193, 1, 13, 'team', 'team', NULL);

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
(1, 1, 94, 2, NULL, 'Sama', 1, '2020-04-15 14:11:09', '2020-04-15 14:11:09', 'Omeka\\Entity\\Item'),
(2, 1, 94, 2, NULL, 'BDD relationnel', 1, '2020-04-15 14:50:43', '2020-04-15 14:51:11', 'Omeka\\Entity\\Item'),
(4, 1, 115, 4, NULL, 'Real Madrid vs AC Fiorentina', 1, '2020-04-16 09:34:19', '2020-04-20 21:12:20', 'Omeka\\Entity\\Item'),
(5, 1, 115, 4, NULL, 'Real Madrid vs AC Milan', 1, '2020-04-16 09:36:04', '2020-04-20 21:15:18', 'Omeka\\Entity\\Item'),
(7, 1, 115, NULL, NULL, 'Les finales de Ligue des Champions', 1, '2020-04-16 09:54:45', '2020-04-22 22:49:58', 'Omeka\\Entity\\ItemSet'),
(8, 1, 115, 4, NULL, 'Real Madrid vs Stade de Reims', 1, '2020-04-17 11:41:26', '2020-04-20 21:16:40', 'Omeka\\Entity\\Item'),
(9, 1, 115, 4, NULL, 'Benfica Lisbonne vs Eintracht Francfort', 1, '2020-04-17 11:42:53', '2020-04-20 21:18:13', 'Omeka\\Entity\\Item'),
(10, 1, 115, 4, NULL, 'Benfica Lisbonne vs FC Barcelone', 1, '2020-04-17 11:43:53', '2020-04-20 21:20:32', 'Omeka\\Entity\\Item'),
(15, 1, 115, NULL, NULL, 'Real Madrid', 1, '2020-04-17 12:29:43', '2020-04-17 13:03:59', 'Omeka\\Entity\\Item'),
(16, 1, 115, NULL, NULL, 'Benfica Lisbonne', 1, '2020-04-17 12:30:47', '2020-04-22 22:46:04', 'Omeka\\Entity\\Item'),
(17, 1, 115, NULL, NULL, 'Clubs', 1, '2020-04-17 12:32:15', '2020-04-22 22:48:34', 'Omeka\\Entity\\ItemSet'),
(18, 1, 115, 4, NULL, 'Real Madrid vs Stade de Reims', 1, '2020-04-20 21:10:23', '2020-04-22 22:45:28', 'Omeka\\Entity\\Item'),
(19, 1, 115, 5, NULL, 'Bayern Munich', 1, '2020-04-22 20:49:47', '2020-04-22 22:45:08', 'Omeka\\Entity\\Item'),
(20, 1, 115, 5, NULL, 'FC Barcelone', 1, '2020-04-22 20:51:36', '2020-04-22 22:44:51', 'Omeka\\Entity\\Item'),
(21, 1, 115, 5, NULL, 'Ajax Amsterdam', 1, '2020-04-22 20:53:57', '2020-04-22 22:44:26', 'Omeka\\Entity\\Item'),
(22, 1, 115, 5, NULL, 'Manchester United', 1, '2020-04-22 20:55:24', '2020-04-22 22:43:22', 'Omeka\\Entity\\Item'),
(23, 1, 115, 5, NULL, 'Inter Milan', 1, '2020-04-22 21:03:34', '2020-04-22 22:42:58', 'Omeka\\Entity\\Item'),
(24, 1, 115, 5, NULL, 'Celtic Football Club', 1, '2020-04-22 21:18:40', '2020-04-22 22:42:21', 'Omeka\\Entity\\Item'),
(25, 1, 115, 5, NULL, 'Hambourg SV', 1, '2020-04-22 21:20:58', '2020-04-22 22:46:43', 'Omeka\\Entity\\Item'),
(26, 1, 115, 5, NULL, 'Valence CF', 1, '2020-04-22 21:21:40', '2020-04-22 22:46:22', 'Omeka\\Entity\\Item'),
(27, 1, 115, 4, NULL, 'Celtic Glasgow vs Inter Milan', 1, '2020-04-22 21:26:56', '2020-04-22 22:40:40', 'Omeka\\Entity\\Item'),
(28, 1, 115, 4, NULL, 'AC Milan (2) vs Ajax Amsterdam', 1, '2020-04-22 21:28:25', '2020-04-22 22:40:10', 'Omeka\\Entity\\Item'),
(29, 1, 115, 4, NULL, 'Feyenoord Rotterdam vs Celtic Glasgow', 1, '2020-04-22 21:35:10', '2020-04-22 22:39:46', 'Omeka\\Entity\\Item'),
(30, 1, 115, 4, NULL, 'AC Milan (5) vs FC Barcelone', 1, '2020-04-22 21:44:00', '2020-04-22 22:38:59', 'Omeka\\Entity\\Item'),
(31, 1, 115, 4, NULL, 'Real Madrid (7) vs Juventus', 1, '2020-04-22 21:45:59', '2020-04-22 22:38:36', 'Omeka\\Entity\\Item'),
(32, 1, 115, 6, NULL, 'Francisco GENTO', 1, '2020-04-22 21:55:26', '2020-04-22 22:38:17', 'Omeka\\Entity\\Item'),
(33, 1, 115, 6, NULL, 'Paola MALDINI', 1, '2020-04-22 21:57:28', '2020-04-22 22:37:56', 'Omeka\\Entity\\Item'),
(34, 1, 115, 6, NULL, 'Alfredo DI STEFANO', 1, '2020-04-22 22:01:45', '2020-04-22 22:36:04', 'Omeka\\Entity\\Item'),
(35, 1, 115, 6, NULL, 'José María ZARRAGA', 1, '2020-04-22 22:05:41', '2020-04-22 22:35:11', 'Omeka\\Entity\\Item'),
(36, 1, 115, 6, NULL, 'Cristiano RONALDO', 1, '2020-04-22 22:08:17', '2020-04-22 22:34:23', 'Omeka\\Entity\\Item'),
(37, 1, 115, 6, NULL, 'Marcos Alonso IMAZ MARQUITOS', 1, '2020-04-22 22:16:29', '2020-04-22 22:33:07', 'Omeka\\Entity\\Item'),
(38, 1, 115, 6, NULL, 'Phil NEAL', 1, '2020-04-22 22:17:58', '2020-04-22 22:32:21', 'Omeka\\Entity\\Item'),
(39, 1, 115, 6, NULL, 'Clarence SEEDORF', 1, '2020-04-22 22:19:36', '2020-04-22 22:31:29', 'Omeka\\Entity\\Item'),
(40, 1, 115, 6, NULL, 'Toni KROOS', 1, '2020-04-22 22:21:47', '2020-04-22 22:30:11', 'Omeka\\Entity\\Item'),
(41, 1, 115, 6, NULL, 'Sergio RAMOS', 1, '2020-04-22 22:23:44', '2020-04-22 22:28:36', 'Omeka\\Entity\\Item'),
(42, 1, 115, NULL, NULL, 'Joueurs', 1, '2020-04-22 22:25:44', '2020-04-22 22:26:49', 'Omeka\\Entity\\ItemSet');

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
(107, 1, 6, 'Role', 'Role', 'A property that can be predicated of a person. In WAI ontology, roles are reified as first order individuals and relations between roles and players are expressed by means of the wai:plays property. WAI does not impose any subclassification of roles. The concept is open to be refined according to domain or application requirements.'),
(108, 1, 6, 'Profile', 'Profile', 'A profile represents a particular person playing a given role. In the literature it is also known as a \"qua-individual\". WAI extends the meaning of profile to capture \"person-as-role\", \"person-at-context\" and \"person-in-community\".'),
(109, 1, 6, 'Context', 'Context', 'Contexts are similar to situations or state of affairs providing interpretation coordinates for profiles. In the most simple case, these coordinates are just geographical/spatial or temporal coordinates. WAI does not impose a fixed definition of context. It is deliberately wide in order to enable third-parties the adequation of the meaning of context according to their modeling needs and requirements.'),
(115, 1, 12, 'Soccer', 'football', 'A sports game in which the ball must be played by foot');

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
(2, 1, 94, NULL, NULL, 'Etudiant'),
(3, 1, 92, NULL, NULL, 'Cours'),
(4, 1, NULL, NULL, NULL, 'Finales de Ligue des Champions'),
(5, 1, 115, NULL, NULL, 'Equipes de football'),
(6, 1, 115, NULL, NULL, 'Joueurs');

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
(23, 2, 131, NULL, NULL, 3, NULL, 0, 0),
(24, 2, 145, NULL, NULL, 4, NULL, 0, 0),
(25, 2, 139, NULL, NULL, 5, NULL, 0, 0),
(26, 2, 182, NULL, NULL, 6, NULL, 0, 0),
(27, 3, 1, NULL, NULL, 1, NULL, 0, 0),
(28, 3, 4, NULL, NULL, 2, NULL, 0, 0),
(29, 3, 161, NULL, NULL, 3, NULL, 0, 0),
(30, 3, 3, NULL, NULL, 4, NULL, 0, 0),
(31, 3, 46, NULL, NULL, 5, NULL, 0, 0),
(32, 4, 94, NULL, NULL, 1, NULL, 0, 0),
(33, 4, 193, NULL, NULL, 2, NULL, 0, 0),
(34, 4, 184, NULL, NULL, 3, NULL, 0, 0),
(35, 4, 62, NULL, NULL, 4, NULL, 0, 0),
(36, 5, 193, NULL, NULL, 1, NULL, 0, 0),
(37, 5, 138, NULL, NULL, 2, NULL, 0, 0),
(38, 5, 131, NULL, NULL, 3, NULL, 0, 0),
(39, 5, 182, NULL, NULL, 4, NULL, 0, 0),
(40, 5, 175, NULL, NULL, 5, NULL, 0, 0),
(41, 6, 140, NULL, NULL, 1, NULL, 0, 0),
(42, 6, 139, NULL, NULL, 2, NULL, 0, 0),
(43, 6, 182, NULL, NULL, 3, NULL, 0, 0),
(44, 6, 1, NULL, NULL, 4, NULL, 0, 0),
(45, 6, 193, NULL, NULL, 5, NULL, 0, 0),
(46, 6, 4, NULL, NULL, 6, NULL, 0, 0),
(47, 6, 189, NULL, NULL, 7, NULL, 0, 0);

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
('lscibrjp9vdgc0bmrptuq51pb7', 0x5f5f5a467c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373338343439352e3230303137383b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226e336933727576346c6935653336706768366764366c686b3431223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373338383034353b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373338383039363b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223635363665613734373936323831346339646532336436643230323063373564223b733a33323a223565356132656362366262346639356666363730333934633239663066633637223b7d733a343a2268617368223b733a36353a2235653561326563623662623466393566663637303339346332396630666336372d3635363665613734373936323831346339646532336436643230323063373564223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223961666538353935316138623964333231623665333336313934663064326461223b733a33323a223865363534666630636466333731653564636537613761313863373037663834223b7d733a343a2268617368223b733a36353a2238653635346666306364663337316535646365376137613138633730376638342d3961666538353935316138623964333231623665333336313934663064326461223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587384497),
('rshm3p1o33aom9kj6vv6ptaa6u', 0x5f5f5a467c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373133323034372e3632313633373b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226567346a647031653771656a736b6c6d6b306d613967316d6175223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538363935393633383b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373133353634383b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373133323838333b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373132383530313b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373032343530323b7d733a31313a2245617379496e7374616c6c223b613a323a7b733a363a22455850495245223b693a313538373133323838333b733a31313a224558504952455f484f5053223b613a323a7b733a343a22686f7073223b693a31303b733a323a227473223b643a313538373132393238312e3737373136363b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223632623132393937303264626230303237626663313364663036303437633863223b733a33323a223961373261336462373832353033646164303635383038346539323039666162223b7d733a343a2268617368223b733a36353a2239613732613364623738323530336461643036353830383465393230396661622d3632623132393937303264626230303237626663313364663036303437633863223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a353539323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a36363a7b733a33323a226233333461396162333565393966653031323362393133333138636632666363223b733a33323a223263386262616139616663316335623565633562396332303937303662336163223b733a33323a223763336561643464313966323732353364376137616635306161376139623831223b733a33323a223864383963303766346230333561643566643664316666343966666166626461223b733a33323a223530353034633135626632323731663438343866623336323432303530333138223b733a33323a223261623561303638373035393661643930336135343435393130336166653962223b733a33323a223066666230386634353266306262363836373030383239366133636664343737223b733a33323a226434666230343235346332336230383332313966626262363636323938356537223b733a33323a226666363463656138656439316364393563343833313831333431643863346238223b733a33323a223833343032393639346334373932343835653733353738636132666161616234223b733a33323a223132333337386339313935616633623234313965346134613631393234626238223b733a33323a223933643131306232616165666465343033656130353034336431623235343134223b733a33323a223561353966313766393433396534626639656336366230613465306165353037223b733a33323a223932343430306366386265313431363634333365333633356435636532326265223b733a33323a223663643932653330383061666339653431336233386461343634366234623738223b733a33323a223332343934613534363532343339333830353333373437613638376634653231223b733a33323a226661663734333763666134386538633637303635623166356236643165613536223b733a33323a226431333432396537653563336638323763333530303632343636373861656435223b733a33323a223866306232366531306234393461633261343137643831663333306135646335223b733a33323a223763346530386464396262346566626337323830313261316464396333356463223b733a33323a223535646661613962626530616137663265663039346561323539646363323636223b733a33323a223131393862666464336562653861333531383664626164336531653035366533223b733a33323a226139386161313437373264663861346633313031326261663964393264346539223b733a33323a223834653161383430396566393737613230313832343062303535636537336533223b733a33323a223430376461656432303865363035373261653234393730646464626236373931223b733a33323a223633356636663238363763333166636536303565663438353636653536326564223b733a33323a223833393430376337613135323330646462626338313831343330343230383861223b733a33323a226331376136616232346233353662616630623836353463643139376335343964223b733a33323a226265643333643061353136636238333333653238333337366634303061623666223b733a33323a226637613533333733323962383465376430663530386263656362376462666631223b733a33323a226237613666323864333834663365303136333031656630656361663362313863223b733a33323a223639646330396336313237366162643263653838346161356165393937383230223b733a33323a226637333464653735383031633462666162663534643261386232653964646637223b733a33323a223462313965393164373563663939363063363463393138323564613664303463223b733a33323a226163373737353863643537626131353262626464623236393036386265663663223b733a33323a223061303766303762393032336163343536313736383834353235316661336664223b733a33323a226232376463663131333635353337316433666465623461316335393761336535223b733a33323a223566316431313436626537333933383937336361663065333532363830316364223b733a33323a223035303766336436383639623234333764626461376561643062653936313933223b733a33323a223764366334343465323330356438616266313662363162393032326462386433223b733a33323a223931616463653065666530323465626332643933643439363135353930356466223b733a33323a223933326437623032656534613937343737626463323364393531363566333134223b733a33323a223461633532343661613366623436663731633964383766356332306266333939223b733a33323a223231346131363730373162333033396134386236313865376238313764376364223b733a33323a223836623062633362323230373264383737313066393061303831393639633063223b733a33323a223539643431393137663861343335323138353566306339643433643139666661223b733a33323a223033336537353061383161316365323964623637653337366562306530373263223b733a33323a223039616331663337396163616437663963373765343661643433353733646231223b733a33323a226534346632643066306336353466393837636432353730313361346336356131223b733a33323a223031346164313735336434346333373438396131626264616338313032303961223b733a33323a226337643463306264363264386163346566303834633731313037616138666232223b733a33323a223738653362303562333562613764613738303465666539346431633330623430223b733a33323a226532653566383533353033333630313436303163343731626339646436356464223b733a33323a223238653631356230386330333438393262373463383662613436393230383566223b733a33323a223132633731383366383439306563633233656466656232643438356238343535223b733a33323a223034653239333665353465653166646334396338393133626561353564663463223b733a33323a223934323930633766386436363366376162383834353661643937313339373662223b733a33323a223465356563333839373139343135626236323434626265343734316333383931223b733a33323a226538373162363536303936616331303633356430363833393162356437393163223b733a33323a223633363039333062616533636136353561303737653434356332623738336461223b733a33323a223030356635333061326661666331333061323931656134393936326466376566223b733a33323a223363303532346438303064626265396231353932656534356133626164653739223b733a33323a226335333436623736336638353565653061653239646561633133643965313262223b733a33323a226232306532636131373563376633363638346430313766343136623764306666223b733a33323a223637313566616562616665373035663934336465633336363761633531633739223b733a33323a223661313262613537376637303565636539346131636166346230613262636566223b733a33323a226232366461636563643438306430396539643037646162396132316534323265223b733a33323a223931313939386464656166363230653836323439313365623336393963386533223b733a33323a223335303765363735383835383934636366646239306363633532653934306562223b733a33323a223163613836356264623135366566643066353930336231653663373966656161223b733a33323a223766666564353738316533623265663039333935393132303733313965383237223b733a33323a223366306239633738633730643338636566393433363362333238346538643332223b733a33323a223366373533656430386138353834373333356234316565303334633434613563223b733a33323a223234306633363865343234363565306431303631316635373939666638363032223b733a33323a226365306364613466326465376435613331363837633337346332343863616638223b733a33323a226265613637373739653365373366303263343865366635306131636365346137223b733a33323a226563306265303161663336313664346565646465373436383463306233613237223b733a33323a223130336131323333386562663938366435393662343765323736616333343732223b733a33323a223735383365616665316335663366633437323337323132613265343831643864223b733a33323a223932613637353534353965353862363235313066313033373534303530623232223b733a33323a226630623661643965316630616638636335363564383165656465383064626564223b733a33323a226231346136636661393366356164613762343839376164333937623239636362223b733a33323a223638393631313863343833363063653935303431356663386165633366373765223b733a33323a223739303762333338633737663037303161363062393634356162623330396562223b733a33323a226461633438643130376331353562643031636533353535356361333166313265223b733a33323a223361626263333864653266353036326339313131333232633536633930376563223b733a33323a223662666164643465643737656633333439666539336331383336393361333264223b733a33323a223862623737303261373135663265646336386262646562323262316262306563223b733a33323a223330326565313137313537393532353939613766363765613033646266663266223b733a33323a223565363732376536643763653739313935343966373834316237613837383239223b733a33323a223161373530396137623436643263613539663238393631343333373033333933223b733a33323a223164333165343731396134323734663138386134353863393637353530376530223b733a33323a223537323231386365376566363663623635383539626665626132393161353539223b733a33323a223862653739363530346639326135356235396262343661306432346265363863223b733a33323a223937626132636462616434613961663934306134633339303137646635356338223b733a33323a223135356636633735326366666537343336633135386161623334643630306330223b733a33323a226466343566643236623632316333373665616362373630303632653038623038223b733a33323a223035646634653063623762386337363262343463393932363366623465623734223b733a33323a223238383664636234613161656636323164383666626233393031343637373065223b733a33323a223630636336666465623966643833346661316662616634393739623266316662223b733a33323a226461373531626137636233643266643530326438333265623862613433626434223b733a33323a223162616639616230373538386266373137376235303232633936363564323465223b733a33323a226339333135393936343135346136353933393735353465346361303537613362223b733a33323a223636646534363764646463303237653961623365316564613961353266653230223b733a33323a223634626365383464316666323733383633396232303063393531643937383539223b733a33323a223836373938373866653662396264643537626566353765383133663561343462223b733a33323a226137643762356463396635353434633533313035333661343961646266343130223b733a33323a223730616566336166653132633561336633313238333130383830663763366134223b733a33323a226430653536316631653039333731326633663339313834663830623333383433223b733a33323a223032313466626232313532653362353638653134653838316462366631316264223b733a33323a223861326338393738383138343236353337613764316535353861366139633238223b733a33323a223139333736363730333964393437343833366634653061333335313465363234223b733a33323a226531333163636133363738613562303037366236373830343035393632623765223b733a33323a223332373738356164306333643337653933666264373332366332356530366365223b733a33323a223930633130633134323265346133343233343038336135386339383638623761223b733a33323a223164333536316432383433623066623331326138643263623237353261613037223b733a33323a223633306261613866613535633336613365613434353262353039376632346363223b733a33323a223565323434363963336562633864363562636139373033396337316230663866223b733a33323a223163353635373138663762346163656239303731623636326465646431663230223b733a33323a223339666331313235633234613130613162663731633837653865656261393836223b733a33323a223866336330333637326462616232386236303030333765333161323066306436223b733a33323a223262373932376639356530316535633839366239643064343739666564343362223b733a33323a223439333732333961343131313362363535383061383031353665363636363932223b733a33323a226532613130363430323963646332613832613566633465383238373066626563223b733a33323a226438356436396534663136383530363432316439633765653234653263613431223b733a33323a226265626137656138646233376336386334323861623763633336373238356561223b733a33323a223431346531663033613964393962666133613733616237333733306263393737223b733a33323a223164313065636238613338643338353234323734633336393331646263363635223b733a33323a223463393966376462323162353262666561303863353638653335656330326333223b733a33323a223863363432316163356536343834303034386661656263333937343230393066223b733a33323a223639656232663366356135313032353161383564323735633837643363306364223b733a33323a223766373630393365643433663362383430316365313633633439346133386561223b7d733a343a2268617368223b733a36353a2237663736303933656434336633623834303163653136336334393461333865612d3639656232663366356135313032353161383564323735633837643363306364223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a323437323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32373a7b733a33323a226134623135316361636537323232623531363062653937363134646163353465223b733a33323a223761333663336164313263323539643731613535343233643362323230643766223b733a33323a223366336263343333623130393935343762386562643737323761363265616132223b733a33323a223939366265616562633033663065386665306261346666646663623732393033223b733a33323a226139303637633238366339663265613761363863356434623531343232643962223b733a33323a223837663932656232616566626266373663323830613935316630376333613762223b733a33323a226263326532303631633839353463346239316535336365666330356234313438223b733a33323a223432383964383136353232626563323333623332366564303466306566376362223b733a33323a223634393034323638326235663661383061323131313463656366643131343936223b733a33323a223963363936383563646534343035343039383862323231383337613263613838223b733a33323a226265626635343630393938623032656130626531373230363133373436613433223b733a33323a223264386431353434653634613335383461323162616231616331666336616638223b733a33323a226239343464303566616339653435636366393766393734346239343137393031223b733a33323a226230323633646534656266656433363635376664313365653531313232353163223b733a33323a223937303737633931366135633731623761376564643632316564393934636462223b733a33323a223035616465316662333933623937393861333262313535386531316435666332223b733a33323a226439343563386439363437666132323264623763393966333261626263633633223b733a33323a223433326534646238366164343238363138346437363265333837633064363061223b733a33323a223035643634633930336433303433643234313833353334323764313133313464223b733a33323a223838306538333766343730356236646339386564663439303666373961303134223b733a33323a226331313234666330643363653462356630396263393965303633313861663132223b733a33323a223937346132373334656437393636623264303932386135623539353034643239223b733a33323a226132366261386137396634343662306665393433653634666662366630393735223b733a33323a223730363764353431383564376165323139393935346231303133363164326434223b733a33323a226337306433333538353339636136376264303634386264373333633235643764223b733a33323a226234653164383830363363356530643330373862386563396334663434346538223b733a33323a223033646438333164333337613663663436643061656435386536633131643365223b733a33323a223330383861366663343565346362626130303930386331363334353361633333223b733a33323a223532636539363439633131396239633464666565336362326639323635326635223b733a33323a223030353864306432653737383839633230653265613638613730316434633139223b733a33323a223661363636623365333261663939396435373533326535373661316336313438223b733a33323a226238353233303331656462656134313664643464303563313465386137643264223b733a33323a226138663261323739643565313931626231616264383833616432633736396232223b733a33323a223661393665663034316661386134666562353836356330646166386533363739223b733a33323a226366666138386631633634653135623031643165313536356163663165343934223b733a33323a223662303236306536643434316164613962323261616234336262376263356231223b733a33323a226334343934636561636230306561363435613939386236386163636431366263223b733a33323a223062343161396336633430666636663663653538636432623737343361653730223b733a33323a223631643232376531393934636336336635616435353861373037626239636636223b733a33323a223664336130643530373633373432323233343432343532333837333737313235223b733a33323a226231396361306137633039393962383638363966333535353662323930646535223b733a33323a223135653732616163303065666564656665353665616361383162623538323564223b733a33323a223330653435363032613234393336343235626231666533393933633164353237223b733a33323a223932346237653939323534363634343832383636346462613837366330316332223b733a33323a223632376161373963356566656539383262636636333738303235336139623830223b733a33323a223133366134626538626631616461363863653662623836373735363037316236223b733a33323a226561663835313838613433373962316432376463613035643031646239376235223b733a33323a223261323464623066656230323162313031396462663836306163383166633861223b733a33323a223936643933356162393266313464363462666162656665616536383764653362223b733a33323a223239316163376161376361376162303062616262353538613835653131353937223b733a33323a223838616634303933393539393639386232316631346430386330323737303263223b733a33323a223034656365633336626332623566303564373837316439613661353630313961223b733a33323a226163306661356236366232356339623666393863626231393766313435396464223b733a33323a223730653963363330393662303930626135393932623735636135656665303131223b7d733a343a2268617368223b733a36353a2237306539633633303936623039306261353939326237356361356566653031312d6163306661356236366232356339623666393863626231393766313435396464223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223935363036373438656534353332653065313266623461353664613933613035223b733a33323a226638343663633139653666353033333131316164316534363732653037316165223b7d733a343a2268617368223b733a36353a2266383436636331396536663530333331313161643165343637326530373161652d3935363036373438656534353332653065313266623461353664613933613035223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226536326631623831326237373430343061323333626236363665313131396131223b733a33323a223138373035653730353266346364303062326538363362393762373537373036223b7d733a343a2268617368223b733a36353a2231383730356537303532663463643030623265383633623937623735373730362d6536326631623831326237373430343061323333626236363665313131396131223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d45617379496e7374616c6c7c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3331303a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a363a226164646f6e73223b613a343a7b733a31313a226f6d656b616d6f64756c65223b613a303a7b7d733a31303a226f6d656b617468656d65223b613a303a7b7d733a363a226d6f64756c65223b613a303a7b7d733a353a227468656d65223b613a303a7b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587132048);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('vf4c710pmstfdur17e196h94pq', 0x5f5f5a467c613a31303a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373539363031382e3032373731353b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226667653468327535713636346835307164387538706e386c626d223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373338393637313b7d733a34383a225a656e645f56616c696461746f725f437372665f73616c745f666f72676f7470617373776f7264666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373338393635303b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539393630363b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373539393631383b7d733a31313a2245617379496e7374616c6c223b613a323a7b733a363a22455850495245223b693a313538373430383436393b733a31313a224558504952455f484f5053223b613a323a7b733a343a22686f7073223b693a31303b733a323a227473223b643a313538373430343836382e3338343639333b7d7d733a35363a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373430383635343b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539343933373b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373539343539333b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313139323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31313a7b733a33323a226261393838313262633334333039306663313363396634623666353332366639223b733a33323a223238393230636533613836393333333663333966313538323336653432633234223b733a33323a223538396365323739376132343562326437393537306439323738316465623839223b733a33323a226463643863653066376334376331383161666538636239313138376534393465223b733a33323a226462386635623633343835313964623363653766626263616335633864323265223b733a33323a226137616537633761393034303034346434363162613733393939333833626233223b733a33323a226563636433616237356336303363396261646433393735653361633836623634223b733a33323a223261353261333733383732613434356461303831393366616366623063376462223b733a33323a223765356130653233623663303235666437363936343432386230376331396261223b733a33323a223837613431646639343930316532643632623166663462363633333464323866223b733a33323a223462626439393663616239313234383431376436353230346239613633616566223b733a33323a226333306231646536353632633535386330323338383431333664333633346433223b733a33323a226339386336346439306463376534313862376665313435646132353537656238223b733a33323a223738353339353165313563376234663462623338383639356632373133613233223b733a33323a223734316531393466376166643730643539666266366463383335623335623262223b733a33323a223766643536363361316266626261383538363834393038653837363233376532223b733a33323a226235346130333162666436383762326261313462306231303664373666623365223b733a33323a223335393736626332336230386537363439666439653765353335663632636432223b733a33323a226530363861353038336161656238383166316363396532306230363736316462223b733a33323a223861303535393131313866386634303634346633653830356564323737653836223b733a33323a226261316332616563333764636639626164393832653936323731376363626662223b733a33323a226465303731666334616665356366643766353333393562393733363836333836223b7d733a343a2268617368223b733a36353a2264653037316663346166653563666437663533333935623937333638363338362d6261316332616563333764636639626164393832653936323731376363626662223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f666f72676f7470617373776f7264666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223330303664643666643866303336363835376434376332356333623137383739223b733a33323a223661613361383430366335356661636135383230663739643862363464373131223b7d733a343a2268617368223b733a36353a2236616133613834303663353566616361353832306637396438623634643731312d3330303664643666643866303336363835376434376332356333623137383739223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a393433333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3131343a7b733a33323a223736383537353262653761666464383865303535323964306166646339343066223b733a33323a226334353966613835306262653735383663353764386435613465346631623035223b733a33323a226361663730386331343962323537386637373439643636643337633135376163223b733a33323a223038303537613137653437663038306363353630306234316637393461336266223b733a33323a223536636137383431313934303864633663326233363664633737366665376432223b733a33323a226330653630386131343464346466353138376262306239333161346533633865223b733a33323a223337396637646338396562316637326539613464343432643961643936633563223b733a33323a226361653666633531383531303163323636653838316135313938326466663634223b733a33323a226334356135396564393830313131653530636662656130623166643836643635223b733a33323a226661346461623036366636326231306536343864613062343432333539366434223b733a33323a223539396261653666386461643066663866303365636431613038653132663562223b733a33323a223262373936613665323366323735373061333330313038396234376438643966223b733a33323a223065613038316634616261613837653663383462383635633832383465643932223b733a33323a223634333631646664393238663565613865343662643766633035613864373762223b733a33323a223635633936653735323631373039646461343430363163653838393765336633223b733a33323a223536666136643530383334366361386161663437613562646365613135633465223b733a33323a223035616133306266626533383438303631616162353037313634653833323533223b733a33323a226531623931376535366262656131643536643437333831623263366364356631223b733a33323a226463613633663364633935643736656232623439663832623638396363336232223b733a33323a223666323664343062653261376666393130313364303863363436656332393666223b733a33323a223333333739303065316133313332303865373935383431356638626636333338223b733a33323a223561386462623130376562326239633538303264643339343731616232643465223b733a33323a223566646636353435313364303334386436646134663139386539396336653137223b733a33323a223962393533353131656161646265633039326237656635626563663035633730223b733a33323a223935363731316433323833623661633134626532333137316661383737626231223b733a33323a223237383036643766613034613062353330646634303761616436623864323331223b733a33323a223064643131333766666132646166333736303362346539643436316631383366223b733a33323a223062343434303238386461653136303639326563613630303138376131303063223b733a33323a223531333565666563633039613937343831353435663437633233396364373662223b733a33323a226536663339386133643931643431396238386163343635333463343061643339223b733a33323a223262356438373231393739353132386139616462643161653361633763303836223b733a33323a223862373766613534633563333564383765316533333266326466396537346637223b733a33323a226331303439616436616233616633306161643737643565613030633166393037223b733a33323a223934313836386665623138396336356433323631656261633764353561313561223b733a33323a223364663962386165646531326363616362313234336235366661316663663537223b733a33323a223064393638626134396661643536653139616165326635333232333236313035223b733a33323a226137616432353863663130306565623365343966336664613661393866383932223b733a33323a226565373139653236363636653139376330663962313335376366363933656363223b733a33323a223539616466643263626433343861306633323063303239396534303830303766223b733a33323a223931386562643963666139396533383631633035666339663332323664316339223b733a33323a223563623632313334396235336536653532363662616532626265646631646163223b733a33323a223066303664366565363561636162323663396135663033306638313536653238223b733a33323a223664616433616531376363373566393731336463653937646161633537393139223b733a33323a223062326539316434613962373763393530326165623435373738623663333338223b733a33323a223432623934333236343863623937343634353236343532333431656231623363223b733a33323a223234646565646233313237656136363866336364373435343333633934333632223b733a33323a226466383366633631336661343839613961343536656331653630643563353638223b733a33323a223334353630643965643730346231633262323834633663613333663662343966223b733a33323a223263623633376635366133303537396538313638323435376435623462666630223b733a33323a223966353231303932643735623832303830386663313134393433336232366164223b733a33323a226363376263366431383532306563626333373936636438323765343430303562223b733a33323a223763376565636434316437326536616234666238376533626161623432366130223b733a33323a223363353037363631313335373864363164333731623438336532356633386431223b733a33323a223838343139303938643732393131353431643332333761346138653736316237223b733a33323a226462326137336431366639313439393963616635616363306536653539396563223b733a33323a223333313333333361313165353735666234373732633232393637373030386233223b733a33323a223430373632333262316565303239363238336665373662353665336233626166223b733a33323a223062323363616438376131373961333264363661653532653836636331383238223b733a33323a223335363763646663333838383338616230623535626338386339613766653839223b733a33323a223830323665613838623530383466366265646537643936636433303936336334223b733a33323a223165633536663135616432323666623862633033353733356261616639663066223b733a33323a223138616665333938666535366365643363313538613131633939646334666261223b733a33323a226233656463626161373935663836363464323834383739646264343634623536223b733a33323a223366383832333239396135373332386239363430316438636138373936656431223b733a33323a223661626661336631626334353261656462666561663931626633333766323933223b733a33323a223735613337663363383432643535316137356139356366343664303132356638223b733a33323a223430636336393238303564343466343739356465386234343763653964613263223b733a33323a223334633538373663653839393633633039303734376333613234306131663266223b733a33323a223065613063626433633165353335666537646438623064376566373133323361223b733a33323a223236643861313465393935363030383130386162373738643164363563646565223b733a33323a226230303435653133633736333337313935333336313166373034313531393934223b733a33323a223830313135366630313961646533646264663466376534373236643830353432223b733a33323a223438353161646632613139653937333733376632653830623461386631393030223b733a33323a226666356631633637656163653839343137313237343836303236393035376630223b733a33323a226163636636353934343736356430643139363239623164356334656338616232223b733a33323a223462393465646336346533646435393334333334333630666230386332386534223b733a33323a226636363231303266336132623764386332323839346630363739613436393431223b733a33323a226137613564373766323737656564616263376232666433643337643138363737223b733a33323a226336643538326231643662623736633631353837313261363430646137663562223b733a33323a223034666330313065366637313832373831643138663539613738613266623138223b733a33323a223264646532326166343230373039343934353233333130383336653663383630223b733a33323a226433323838313265306335663530306266653633376137336437623233393138223b733a33323a223861386139383034303061383932633732323038333765313664313663353533223b733a33323a223564383938353136396565313838346161303064643364343539353432343562223b733a33323a226439336261636639623530376230636233383531356232663034393762386439223b733a33323a223933316561663338303934346333643436346639396663653037333733643437223b733a33323a223230313961663466363137666339303630386566646533643963363061376662223b733a33323a226435633765346266376264613265366333323135366538313932383037646237223b733a33323a223935653536366562373530633630633164643631636461646237663663616230223b733a33323a226361663236376131336463373933383363343131646439376362663032326334223b733a33323a226263316434346537383664633865633562346235343032303766373633313864223b733a33323a223433376661616335353036336666616133663234353531633661313236383632223b733a33323a226362303665383433353637363162653766666439633161333430353161366265223b733a33323a223938373730366261653039393464633361346337663461386630653730333331223b733a33323a223163316534636235633133363034623466623865373236613133636636383337223b733a33323a226433623733353461343930616335393839643130636634613736383231356361223b733a33323a223631316533353032653632313664623063346232353234636137623365353164223b733a33323a223465343133643266643934633165653732633065313736303834376532383665223b733a33323a226633326338636562333064656138643930363839633938633531366362663166223b733a33323a226565663434333938613033383930656634653131376664333463313730376636223b733a33323a223039396230303236323330323436386238643535643138303931373231383330223b733a33323a223666386331303966393433623830653030646638623939616630316566306135223b733a33323a223964666661623339306363376262643134613462366631333661323038653135223b733a33323a223931656130643037333565326565303164356263616236393763633438363063223b733a33323a223534656434613063616135396263336266363339626330616432633966346132223b733a33323a223635636164393262663464383739633266363061373662373936393235356665223b733a33323a223032306439633736366230393233303034343462383965303432323436393566223b733a33323a223137303437653463646632643961373939636235323437333063303432613832223b733a33323a226336343962613138383061643034383230386466363735376365636634616539223b733a33323a226337383734303734386634613637653739643739376433633031313334616132223b733a33323a226461623565383231383261363461313734343039636531616639363339313837223b733a33323a223861313962663739626262366138356662663638643663326238363031333835223b733a33323a226233373765356633666138373038383264343963666236383763373662323730223b733a33323a226264326236333239666561636162303330343937656132346631336131636437223b733a33323a226639393461643036323738356262356164623065623561666539346563616238223b733a33323a226162356134376434356363633035363637326139633931383538613635616632223b733a33323a226131643735623931633534396536643731333431396338663861383961316237223b733a33323a223937303536373133366231306265613338623531376335376363326532633236223b733a33323a226134356237653763613539633139616635383238363964653334643130653836223b733a33323a223838373765366430386462346131613161316630613464396431663664653832223b733a33323a223431393631656137646231396530333337303530393131363934366333626630223b733a33323a223636623636333836626632653263626337303164363837356135386261303232223b733a33323a223564663937666531653633316466373836363264343762326437383732366633223b733a33323a223335326662666532323164376635653632393239333732383233396663643664223b733a33323a223330643030663234373830663935393735336438343766313733393535626636223b733a33323a223463633830336164336162633832353061316330623532613432663631303236223b733a33323a223936323533356339636164333762396261653734356137353538373733336530223b733a33323a223733663730663064333537363631616139316134313038333762656539316231223b733a33323a223638326433373630356134346431613230396537656631346535346334373535223b733a33323a223433386239303337613530653038343938353735353537333936313535343539223b733a33323a223564363136666536393266373733363537303838656133623966313630303733223b733a33323a226663386239663833336537393366643935663539383739313263323465643662223b733a33323a223138383035663764376261613431336664626433656539366638336132396335223b733a33323a223065383833613530636534613132343136653562646236373233346435363666223b733a33323a223934323432303236666565656661313866616230396466393339336438303131223b733a33323a226139383330613762333036613832643662666161353236633864666638303137223b733a33323a226630336261663932393734613562383262346132643433373232653537346365223b733a33323a223634636230363033383966356565303862306239326239353639386231623532223b733a33323a226338393336393832663038313765346337386538623833343034353139353963223b733a33323a223231356566613530353264623339396135363961313539343030373964656262223b733a33323a223162666434336266343466623639643038336135346231306239636363396131223b733a33323a226232643737616635626465353838306466316564383565396462653664356339223b733a33323a223537333736376330363939336236343166373731376632303730626161323338223b733a33323a223766396262353733343535313130623835633934383736363666313066666562223b733a33323a223933356633626134626533323937633737613333373537366339373065653562223b733a33323a223332333533613566623166303835663131316139316465613035393934666132223b733a33323a223532656138323730383732663437393963323061643763323030376435323732223b733a33323a226365396661383661313234646166613265396638633462303664643463326163223b733a33323a223266316335383465373637363363656536303764653734353734356337303735223b733a33323a223766616334373431343964653434316333363333343131333136653633386237223b733a33323a223838636562626531613662353037633137303066636562356533313065353431223b733a33323a226332376661633131626163376537396238363838333333646230666235626539223b733a33323a223233303564633637616230376432336163646266333539316631666538393531223b733a33323a223937366136623537303962633163633436663466323532306339653433323263223b733a33323a226634353439393263346361366433626437366239663232363965373661396230223b733a33323a223637356264373139326134613532363164613862333239396635623437383033223b733a33323a223362633433333062643864663632396137313966633934316361393736313163223b733a33323a226333383366373066396166303566383931613932373435653166636663333466223b733a33323a226234346563636438363939366136336632303261323366623133623562343463223b733a33323a223532313230613939353161613236303235376231303134393034656431396434223b733a33323a223964393164613430333038313736393539346139306235623764646336323261223b733a33323a223266613565343532393331626235386539363734353461393437306163643037223b733a33323a223265303266386266343764323161326137373261633863366437646539336530223b733a33323a223064633964373337393961376565626235316134636661376531636339613532223b733a33323a226634383834313838356266306538393234616636643561613839626331356132223b733a33323a223532353663303964313061313464633131326635393361643135316637656663223b733a33323a226466316263633539653831666133306165653837396435366238313863643830223b733a33323a223836313965343835323038366338383736663133333935343163303836366663223b733a33323a226133343132376339386330366638356162643633646263373364376234356466223b733a33323a223562363830653666386166623033653265333265306363663865373766626162223b733a33323a223261393463393535313233393534316666396632323037343838653136353161223b733a33323a226235643061353437343662336336386665346661653465333431356635386238223b733a33323a223835333335383661353065383535313461666134336637643761383538393365223b733a33323a223235313565373537313061336561643536666337313163623462316163383663223b733a33323a226664343963373261356562303839643732656339623033393264613037393662223b733a33323a223639383838323331646562623765623839613066396333646666616634363435223b733a33323a223333363363306130653831616132623933343739623037656339323133383230223b733a33323a226334333731663466633139383832333637316533666133366665316131376464223b733a33323a223462306231313237653139356535393065623833643161343862616230663961223b733a33323a223463386165323161633334616465623938643861656563363330363034356561223b733a33323a223164656135653066333061616134643630343364336534323235316634356431223b733a33323a226533636539323435333264333636626135353830333166636331616530373066223b733a33323a226437393561323031303066313134633061373135626661666437366361343164223b733a33323a223864316639383937656264376662313764666132616264373839383533336533223b733a33323a223766323132343138383530653234343236613965616431663832663934313235223b733a33323a226434326465353630313135396666613334643737636437306139316465626666223b733a33323a223537623339326332376233386436613730343731323037373034306462303635223b733a33323a223230663734633236323830643563396664373434613166306432396165373230223b733a33323a226539666631636165616666666663393337343937633564333133303031363263223b733a33323a223766363737636636393432613138306536386663613736303134306463666238223b733a33323a223130343432633064643635363164353538636337316238333865623364643438223b733a33323a223035323436383463313536346362633763656130393338323262646333313934223b733a33323a226531393235343232613535643766323430646333666639353630333066386537223b733a33323a223362333937643461626431653533623436316435626233393331326531303865223b733a33323a223563306532356439393964663235663938393263623831316362663464623936223b733a33323a226662333238653139366232383039343637616239306164393065613766366532223b733a33323a226363346361336630353266363430363836623966633461646565383464646337223b733a33323a223461626261666264373335346366323761613562313030306536656466616533223b733a33323a223835333730383064366665383231346235383761656237663139383565363630223b733a33323a223934626637313735376166396165356264316539353637386561613638666137223b733a33323a223566633530333135643564373464343365646437326332633162656263653065223b733a33323a223262386263393239393835343533373363626431303165613936623832623737223b733a33323a223830373964346134303738663532333832396362323335656136653061373062223b733a33323a223533366161633735343566656239633336313936306262323463356238653766223b733a33323a226435656262373861666462303832333639616665363634346664326263653765223b733a33323a223932646663363037336637663963303435323239366333316164353362386266223b733a33323a223738633464393233373135616135653436643531333638613731626362343262223b733a33323a223634613032643361356530303632626331626530313361343932313337316230223b733a33323a223265666530373834303634663137306565303430613132316337383133633737223b733a33323a223431303138333432663661356235323333653838313933366138646664653836223b733a33323a226139333734376339326233356264373939666331633062666634613263383130223b733a33323a226237633631366533366264633031373031653135656631343463323361303634223b733a33323a223636346338323135373036356332336564383937623435623534393161313530223b733a33323a223265336338613366363038636437663163353535316631663164346632353230223b733a33323a223064343164313034306338393732656230323833376435363232323162316339223b733a33323a223836363032653362346564356233656363653031656164663531323230656431223b733a33323a226164343536643935623636363963376435326130326263303035396164633933223b733a33323a226665663739313636663734656164393161383333663462376139633162643931223b733a33323a223332646163333337666130313866363633323662396661333233393430643864223b733a33323a226364303765656466643539333731393361636639643335353332363633623666223b733a33323a223764323938353034623832336564323536613262646537313631353730353034223b733a33323a223530663133376637643566636537373938666136623565663861356333393262223b733a33323a223763633431326465333166623039373937636631303334323938336439393965223b733a33323a223664333337303030333964333262363036393830653930663264643039383864223b733a33323a226139373138653963623034643662333438306363316266363664343135663237223b733a33323a223865313230323762393532306164623730316330373662316366313232656566223b733a33323a226234346538346437353630633834613765393937633133623438323833373231223b733a33323a223562643039643364353235383761333530623565626437613731376330353762223b7d733a343a2268617368223b733a36353a2235626430396433643532353837613335306235656264376137313763303537622d6234346538346437353630633834613765393937633133623438323833373231223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a353637323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a36373a7b733a33323a223661663661386434666236373363343630303434393439636434613661343631223b733a33323a226664363132383833333961643636333664613133313938366166373135623436223b733a33323a223139313036613732646363613465623233383932376436313939646538353565223b733a33323a223466633062326561633033353064313634633736323637393064343761303932223b733a33323a226662303130333666346130633664653332653638626239383964333033393861223b733a33323a226363383731653261626266333564303934386332333266626538383935326239223b733a33323a226234666134323630313164386536306461623133366431393163393337626231223b733a33323a226432396562656233373632643063396533663535653734373935643137323362223b733a33323a223666353137633763636432366537383634353464333239333831613531386365223b733a33323a223431623362313332393663356162633234666464363966363032346332353433223b733a33323a223664366261353662643663393366343162336639623765363336353139343237223b733a33323a223761323466366134363231383431373166363839353339383863303864623432223b733a33323a223162396439316265356131303065333561646234316636396332373230393565223b733a33323a226438363865383236323337393035303731303038636661623663313964333135223b733a33323a223830663162366339313632363934646362346366663061373563623831666232223b733a33323a226532663135613830366539333737356465636539653838653664623836366264223b733a33323a223439656638326565393232316634643436373862613332626464626261313864223b733a33323a223062396135636330636665326530373038623462626338636165326437646631223b733a33323a223238343630663030653562383363643161306535626631653264353839653434223b733a33323a223130363831393535363330366364656266313763366161353930393939663064223b733a33323a226662666639363530393834323365633862353561396464346365643066343131223b733a33323a223762396663653933303064383161323130353734343162306266636334303463223b733a33323a223032323630653235663964656638393264663333643261303634363663643865223b733a33323a223232386265323761633265313865333566353336656432336437646563313663223b733a33323a223362353566616433303133316136636134383935343534366665373562666236223b733a33323a223863623535323534636635373865376230666531376438353166633134656135223b733a33323a223363363238323834366636356235393839646330633234326230623333383636223b733a33323a226666346433646639303065396535383030653865363139666239633062633863223b733a33323a223362356261333036616265643138613033666361353465373234393563623431223b733a33323a223966643664396561373565373663316234313234363334306234313932396237223b733a33323a223530333065313133353963616161633335643236366631356435633265666663223b733a33323a223338303931363633666438646136636233343530616133393766343438623762223b733a33323a226361643931356366633439393837396237336235303562353264633931393432223b733a33323a226634333164303961356165333638626436386434326533663738323236393630223b733a33323a223463623364353130626331303638636264363834613530386438346135376364223b733a33323a226461333631643235616338393232343935373231326339646138303131663761223b733a33323a223661306437643865346332663662323238316163626233393162373134646161223b733a33323a226237343631303736393337326565643736396436313531363963383962656136223b733a33323a226330383439343137666435353830633464363231663339303763346462333534223b733a33323a226565383532336661343534373962616263376464333534313338346263636266223b733a33323a223264613062336237323836323033383039353736636231373135636133363066223b733a33323a226536616264353161633064383765666539333235303932333661326438333734223b733a33323a223665316237386338306663303038303834656134613538633331663735326132223b733a33323a223031363932613732333037643162306363613238366165353265616236663634223b733a33323a223138613732326439386166623665663763333364613339646462396466393030223b733a33323a226638323933346135333866333761643036643561376365656138656462306630223b733a33323a223439306238373063356135626332336663333661356536316564313734353462223b733a33323a223236626135663035303666393761313932643737383766383538663232653262223b733a33323a223961386431316137383562616434353433383166383462616664326638623464223b733a33323a226233303864396564366230366537343939653665626633373065323339353635223b733a33323a223264373932653065376162646536386262333039616566643735343861616438223b733a33323a226634373531623031343231366534616237393332386266373261616561643161223b733a33323a226361303734656235343163623866373162663732373461366362386636616236223b733a33323a226665316537623061656564306338333663636237396336663462363434386162223b733a33323a226237346238373839323831663934383535373063333335383835303332346338223b733a33323a223630363439613232376361653936336334643433333931363236323732393539223b733a33323a226265633064336230633934376334626666353835326139363536383636316132223b733a33323a226639383930323561313239353564376533316366636638373066343639396165223b733a33323a223832383138316166353163623034323131663830656633633239656533386236223b733a33323a223764343732656661346438663131303139376432313032376635393366386334223b733a33323a226637383164313366643734343930323735386630393261616434643635343532223b733a33323a223938336139313335366165313738336165386636623563303363396364316533223b733a33323a226563363338633931323661313264326535393830643034656430333962306361223b733a33323a226265623139376433303132383334386536366436333864636434353339313337223b733a33323a223361626630396362633731353563366663336563626263346339626634333733223b733a33323a223364336435663238316235623837663361396433363336353539633232303039223b733a33323a223764343364313536643032323239316663396266323838643338343962393162223b733a33323a223130336130656435316535323336313365663561353037643162306630393534223b733a33323a223734363635303338643763356165616565383333333738323465303566323961223b733a33323a223135383039306633653766313238396666366638643339333531373935383733223b733a33323a223661383963323636373638336538636664323130376139343237336131356262223b733a33323a226630363238396665316162323834386336363039646366663065343437376330223b733a33323a223364343266356634666236326630303462363235356133616338326163653837223b733a33323a223463613732393965336566393030316633633434666336663135366531646564223b733a33323a223133316430636232343735636636323735316265653766323430623134653365223b733a33323a226431353637323234376637363034633566336365663438613530326133306431223b733a33323a223230626463653061386437323266666135623832346366663364633962643861223b733a33323a223130663265656130326232376463353661396263393635303030323833313865223b733a33323a226130306635326530316331373331356539336263306265373363663936376336223b733a33323a226131613930633634376434343765633464656465336432623461616135653332223b733a33323a226562633061343139663865363334653734376439386534646637313163396636223b733a33323a223336383263616337343464343534616265633261666266326164303034623631223b733a33323a223531373764373730366635376530313962363731653336393536646236303837223b733a33323a223362306134313666363036653239346561373537623632643739326637613530223b733a33323a223435653338383931366538663035613937346438333330653864616639366161223b733a33323a223237393432316662623432353235333838313563393432373736616635343164223b733a33323a223366363363653066633362626632383431333865343266333335396266343465223b733a33323a226439333232313434353762613039316362396236663162316532656264663835223b733a33323a226234626333383231623137323734666531653937323565333035656539343931223b733a33323a223562386637633939326461316239313731636566336632323731383431313266223b733a33323a226135336639626365656435343366376664376333386361643161313565333864223b733a33323a226662613831373531336430376562623737373264313063666131346464616466223b733a33323a226464383232633261363838336238303965666362626632316162313533393331223b733a33323a226432376662313333343930636364633235663066313764663663363535303038223b733a33323a223331353531376163313164663735616362343537396538363262393462626661223b733a33323a226637313961363930373438363530346438393233393863613031393539393435223b733a33323a223464663062663830353462653566306435336337393132396663396333343033223b733a33323a223463336536303366326638656136656535646330366138623137623837386135223b733a33323a226233663266346437353237666165616239666134306165346534653461666535223b733a33323a223835653166633934623261643036386330623232356430316462313436353664223b733a33323a226135343532373661643762313761633431653831356637653335376163663137223b733a33323a223337363532633465616464366435663563346263306262646136326532376539223b733a33323a226338616336346131626634643266356635343932633864366562343136346265223b733a33323a226238343362643839383239363335393937363538343863323337656565633261223b733a33323a226639323731356562633662633164366135353161653739666539626238396563223b733a33323a223834663865656232613361363837333837333337393566383164633438666561223b733a33323a226334636165653931323131303962383031306338653130326266326138636437223b733a33323a223062323332663435313765623431623665646464336439623761383264303839223b733a33323a223339363031623864623534393866313837626138343261363237363434353062223b733a33323a226538346162636331353436363466353937313565663662643463626538653930223b733a33323a223134366463306263323033373565613464363761646532663730373462376263223b733a33323a223463663065373165616635306533626365616162303365366165303062636163223b733a33323a226635623863636135363733643037353232386166343638366166663066643039223b733a33323a223430353236623564663731626436343762353530346264373763373963326661223b733a33323a223136306166363235333965646130373465613763636430353034623132366437223b733a33323a226565663538343239306132633139373939393131653264333132643931633031223b733a33323a223230383965383132623266303534623461393862333532326638353430323636223b733a33323a226139373439363933626633386137666262373736663032333331333433653866223b733a33323a226165663263626362303733353261353463353532326266313036393134613638223b733a33323a226364626666306366373961643634386265646535666364306161393135353162223b733a33323a223537636363323830326633303736376132396435383534366366373837343639223b733a33323a223730336165646531366237366632356231383836366432666463646432303961223b733a33323a226437616537313535353034363361306330633162383032663031643165393638223b733a33323a223237343237643838343064313963336261623339313864323034363866393432223b733a33323a223436386463396535393931316231366337333032663938653863376362623965223b733a33323a223338313838386665366239323430306436366132626662343536366231313831223b733a33323a223161323934393066356562356666666538336330356433386639346635626133223b733a33323a223730613937663533326234386666373966376637386463623232373065356565223b733a33323a223630306535346535626137616336623162376139633837393364323536623463223b733a33323a223834356132306230653633383535643331333534643863386432666665316630223b733a33323a223232663663616639666234363837646435343237373538353131346461356461223b733a33323a226561663065353539353631373266323033393039336536353739306466613330223b733a33323a223530636465303361343835383830613666333539323165336432313466623133223b733a33323a223632363063356539376130376662616465373534653033363665663161313631223b7d733a343a2268617368223b733a36353a2236323630633565393761303766626164653735346530333636656631613136312d3530636465303361343835383830613666333539323165336432313466623133223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d45617379496e7374616c6c7c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3331303a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a363a226164646f6e73223b613a343a7b733a31313a226f6d656b616d6f64756c65223b613a303a7b7d733a31303a226f6d656b617468656d65223b613a303a7b7d733a363a226d6f64756c65223b613a303a7b7d733a353a227468656d65223b613a303a7b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223961656534343235363963306231353766393937333238346662646532323361223b733a33323a223662336661383638643932386434366537653364636364656530633662303062223b7d733a343a2268617368223b733a36353a2236623366613836386439323864343665376533646363646565306336623030622d3961656534343235363963306231353766393937333238346662646532323361223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223639666339633733623965663230343239626361643634303039653935643334223b733a33323a226662636161613233313164633465636535626138386237363331336561373038223b7d733a343a2268617368223b733a36353a2266626361616132333131646334656365356261383862373633313365613730382d3639666339633733623965663230343239626361643634303039653935643334223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313033313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a393a7b733a33323a226164353835326639346639373931363966643736643638393866386638366233223b733a33323a226364333564653937646339633636613762343831636162646634386236393437223b733a33323a223935353536333338633762313335653430653436303834653432633563613562223b733a33323a223835323430613034353030653037363463646661346462666633316364326238223b733a33323a226336313764646361366534633139316364323938306635646537396333633033223b733a33323a223062396537376435643462333538353435313666636632646166353936626230223b733a33323a226366393631343235353935663661343464303037343934666165393236366138223b733a33323a223633626639313762613464653666383232396433346364643034333230373433223b733a33323a223562626130373566313265613462393235326561623331343732626662353061223b733a33323a223235366630336335356262663663363166303665346137303061313261653234223b733a33323a226435366135396663636539383939366230656537303261626634633065663831223b733a33323a226239303934353532313866626566303830663765653437336438636261303431223b733a33323a223464613839663564326136633332333464376237616331323565393833643966223b733a33323a226335396335373562313661316262313136373564326136646531303336643464223b733a33323a223361386133326234653461356235653735353662666463346530323263383232223b733a33323a226635343863353733613964303637323234353430643033613730306431343937223b733a33323a226465663837393336323265313863353035353966663531316364313837653935223b733a33323a223265326462343230343462613264643366373530363563646262313464373238223b7d733a343a2268617368223b733a36353a2232653264623432303434626132646433663735303635636462623134643732382d6465663837393336323265313863353035353966663531316364313837653935223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587596019);

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
('administrator_email', '\"dan.long.auditeur@lecnam.net\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"medas\"'),
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
(1, 'dan.long.auditeur@lecnam.net', 'Dan LONG', '2020-04-15 13:07:17', '2020-04-15 13:07:17', '$2y$10$012Uk8/7q1RWd7OfB5XWmOb4rvmF5Bw8yUrvVBcx9zfoXmpHwN3R6', 'global_admin', 1),
(2, 'samuel.szoniecky@univ-paris8.fr', 'Samuel', '2020-04-15 13:37:40', '2020-04-15 13:39:26', '$2y$10$w4zgtJU8ihQC5xoUfmsp5eGA4IY4vwXmJU0QvRRzWmNLDbnFHYEZ2', 'global_admin', 1);

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
('csv_import_automap_check_names_alone', 1, 'false'),
('csv_import_delimiter', 1, '\",\"'),
('csv_import_enclosure', 1, '\"#\"'),
('csv_import_global_language', 1, '\"\"'),
('csv_import_identifier_property', 1, '\"\"'),
('csv_import_multivalue_separator', 1, '\",\"'),
('csv_import_rows_by_batch', 1, '20'),
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
(1, 1, 1, NULL, 'literal', '', 'Sama', NULL, 1),
(2, 1, 4, NULL, 'literal', '', 'Etudiant M1', NULL, 1),
(3, 1, 131, NULL, 'literal', '', 'Prince', NULL, 1),
(4, 1, 145, NULL, 'literal', '', 'Vegeta1', NULL, 1),
(5, 1, 139, NULL, 'literal', '', 'Vegeta', NULL, 1),
(6, 1, 182, NULL, 'literal', '', '8001', NULL, 1),
(7, 2, 1, NULL, 'literal', '', 'BDD relationnel', NULL, 1),
(8, 2, 1, NULL, 'uri', NULL, '', 'dbpedia', 1),
(9, 2, 4, NULL, 'literal', '', 'ffze', NULL, 1),
(10, 2, 131, NULL, 'literal', '', 'fez', NULL, 1),
(11, 2, 145, NULL, 'literal', '', 'fez', NULL, 1),
(12, 2, 139, NULL, 'literal', '', 'fez', NULL, 1),
(13, 2, 182, NULL, 'literal', '', 'fez', NULL, 1),
(16, 4, 94, NULL, 'literal', '', '1957', NULL, 1),
(17, 4, 193, NULL, 'literal', '', 'Real Madrid vs AC Fiorentina', NULL, 1),
(18, 5, 94, NULL, 'literal', '', '1958', NULL, 1),
(19, 5, 193, NULL, 'literal', '', 'Real Madrid vs AC Milan', NULL, 1),
(20, 7, 1, NULL, 'literal', 'fr', 'Les finales de Ligue des Champions', NULL, 1),
(21, 7, 1, 5, 'resource', NULL, NULL, NULL, 1),
(22, 7, 1, 4, 'resource', NULL, NULL, NULL, 1),
(24, 8, 94, NULL, 'literal', '', '1959', NULL, 1),
(25, 8, 193, NULL, 'literal', '', 'Real Madrid vs Stade de Reims', NULL, 1),
(26, 9, 94, NULL, 'literal', '', '1960', NULL, 1),
(27, 9, 193, NULL, 'literal', '', 'Benfica Lisbonne vs Eintracht Francfort\n', NULL, 1),
(28, 10, 94, NULL, 'literal', '', '1961', NULL, 1),
(29, 10, 193, NULL, 'literal', '', 'Benfica Lisbonne vs FC Barcelone', NULL, 1),
(31, 7, 1, 9, 'resource', NULL, NULL, NULL, 1),
(32, 7, 1, 10, 'resource', NULL, NULL, NULL, 1),
(42, 15, 1, NULL, 'literal', '', 'Real Madrid', NULL, 1),
(43, 15, 4, NULL, 'literal', '', 'Los Merengues	6 mars 1902	Blanc	Espagne', NULL, 1),
(44, 15, 193, NULL, 'literal', '', 'Real Madrid', NULL, 1),
(45, 16, 1, NULL, 'literal', '', 'Benfica Lisbonne', NULL, 1),
(46, 16, 4, NULL, 'literal', '', 'Águias (Aigles)	28 février 1904	rouge et blanc	', NULL, 1),
(47, 16, 193, NULL, 'literal', '', 'Benfica Lisbonne', NULL, 1),
(48, 17, 1, NULL, 'literal', '', 'Clubs', NULL, 1),
(49, 17, 193, 15, 'resource', NULL, NULL, NULL, 1),
(50, 17, 193, 16, 'resource', NULL, NULL, NULL, 1),
(53, 18, 94, NULL, 'literal', '', '1956', NULL, 1),
(54, 18, 193, NULL, 'literal', '', 'Real Madrid vs Stade de Reims', NULL, 1),
(55, 18, 184, NULL, 'literal', '', '4 - 3', NULL, 1),
(56, 18, 62, NULL, 'literal', '', 'Parc des Prince (Paris)', NULL, 1),
(57, 18, 1, NULL, 'literal', '', 'Real Madrid vs Stade de Reims', NULL, 1),
(58, 4, 184, NULL, 'literal', '', '2-0', NULL, 1),
(59, 4, 62, NULL, 'literal', '', 'Stade Santiago-Bernabéu (Madrid) ', NULL, 1),
(60, 4, 1, NULL, 'literal', 'fr', 'Real Madrid vs AC Fiorentina', NULL, 1),
(61, 5, 184, NULL, 'literal', '', '3 - 2', NULL, 1),
(62, 5, 62, NULL, 'literal', '', ' Stade du Heysel (Bruxelles) ', NULL, 1),
(63, 5, 1, NULL, 'literal', 'fr', 'Real Madrid vs AC Milan', NULL, 1),
(64, 8, 184, NULL, 'literal', '', '2 - 0', NULL, 1),
(65, 8, 62, NULL, 'literal', '', ' Neckarstadion (Stuttgart) ', NULL, 1),
(66, 8, 1, NULL, 'literal', '', 'Real Madrid vs Stade de Reims', NULL, 1),
(67, 9, 184, NULL, 'literal', '', '7 - 3', NULL, 1),
(68, 9, 62, NULL, 'literal', '', 'Hampden Park (Glasgow) ', NULL, 1),
(69, 9, 1, NULL, 'literal', '', 'Benfica Lisbonne vs Eintracht Francfort\n', NULL, 1),
(70, 10, 184, NULL, 'literal', '', '3 - 2\n', NULL, 1),
(71, 10, 62, NULL, 'literal', '', 'Stade du Wankdorf (Berne) ', NULL, 1),
(72, 10, 1, NULL, 'literal', '', 'Benfica Lisbonne vs FC Barcelone', NULL, 1),
(74, 19, 193, NULL, 'literal', '', 'Bayern Munich', NULL, 1),
(75, 19, 138, NULL, 'literal', '', 'Bayern Munich', NULL, 1),
(76, 19, 182, NULL, 'literal', '', '27 février 1900', NULL, 1),
(77, 19, 175, NULL, 'literal', '', 'Rouge et blanc', NULL, 1),
(78, 19, 1, NULL, 'literal', '', 'Bayern Munich', NULL, 1),
(79, 20, 193, NULL, 'literal', '', 'FC Barcelone', NULL, 1),
(80, 20, 138, NULL, 'literal', '', 'FC Barcelone', NULL, 1),
(81, 20, 131, NULL, 'literal', '', 'Blaugranes', NULL, 1),
(82, 20, 182, NULL, 'literal', '', '29 novembre 1899', NULL, 1),
(83, 20, 175, NULL, 'literal', '', 'Bleu et grenat', NULL, 1),
(84, 20, 1, NULL, 'literal', '', 'FC Barcelone', NULL, 1),
(85, 21, 193, NULL, 'literal', '', 'Ajax Amsterdam', NULL, 1),
(86, 21, 138, NULL, 'literal', '', 'Ajax Amsterdam', NULL, 1),
(87, 21, 182, NULL, 'literal', '', ' 18 mars 1900', NULL, 1),
(88, 21, 1, NULL, 'literal', '', 'Ajax Amsterdam', NULL, 1),
(89, 21, 4, NULL, 'literal', '', 'Pays-Bas', NULL, 1),
(90, 22, 193, NULL, 'literal', '', 'Manchester United', NULL, 1),
(91, 22, 138, NULL, 'literal', '', 'Manchester United', NULL, 1),
(92, 22, 131, NULL, 'literal', '', 'Red Devils', NULL, 1),
(93, 22, 182, NULL, 'literal', '', '5 mars 1878', NULL, 1),
(94, 22, 175, NULL, 'literal', '', 'Rouge et noir', NULL, 1),
(95, 22, 1, NULL, 'literal', '', 'Manchester United', NULL, 1),
(96, 22, 4, NULL, 'literal', '', 'Angleterre', NULL, 1),
(97, 23, 193, NULL, 'literal', '', 'Inter Milan', NULL, 1),
(98, 23, 138, NULL, 'literal', '', 'Inter Milan', NULL, 1),
(99, 23, 131, NULL, 'literal', '', 'Nerazzurri', NULL, 1),
(100, 23, 182, NULL, 'literal', '', ' 	28 février 1904', NULL, 1),
(101, 23, 175, NULL, 'literal', '', 'Bleu et noir', NULL, 1),
(102, 23, 1, NULL, 'literal', '', 'Inter Milan', NULL, 1),
(103, 24, 193, NULL, 'literal', '', 'Celtic Football Club', NULL, 1),
(104, 24, 138, NULL, 'literal', '', 'Celtic Football Club', NULL, 1),
(105, 24, 131, NULL, 'literal', '', 'The Bhoys', NULL, 1),
(106, 24, 182, NULL, 'literal', '', '6 novembre 1887', NULL, 1),
(107, 24, 175, NULL, 'literal', '', 'vert et blanc', NULL, 1),
(108, 24, 1, NULL, 'literal', '', 'Celtic Football Club', NULL, 1),
(109, 24, 4, NULL, 'literal', '', 'Ecosse', NULL, 1),
(110, 25, 193, NULL, 'literal', '', 'Hambourg SV', NULL, 1),
(111, 25, 138, NULL, 'literal', '', 'Hambourg SV', NULL, 1),
(112, 25, 1, NULL, 'literal', '', 'Hambourg SV', NULL, 1),
(113, 26, 193, NULL, 'literal', '', 'Valence CF', NULL, 1),
(114, 26, 138, NULL, 'literal', '', 'Valence CF', NULL, 1),
(115, 26, 1, NULL, 'literal', '', 'Valence CF', NULL, 1),
(116, 26, 4, NULL, 'literal', '', 'Espagne', NULL, 1),
(117, 27, 94, NULL, 'literal', '', '1967', NULL, 1),
(118, 27, 193, NULL, 'literal', '', 'Celtic Glasgow vs Inter Milan', NULL, 1),
(119, 27, 184, NULL, 'literal', '', '2 – 1', NULL, 1),
(120, 27, 62, NULL, 'literal', '', 'Stade national (Lisbonne)', NULL, 1),
(121, 27, 1, NULL, 'literal', '', 'Celtic Glasgow vs Inter Milan', NULL, 1),
(122, 28, 94, NULL, 'literal', '', '1969', NULL, 1),
(123, 28, 193, NULL, 'literal', '', 'AC Milan (2) vs Ajax Amsterdam', NULL, 1),
(124, 28, 184, NULL, 'literal', '', '4 – 1', NULL, 1),
(125, 28, 62, NULL, 'literal', '', 'Stade Santiago-Bernabéu (Madrid)', NULL, 1),
(126, 28, 1, NULL, 'literal', '', 'AC Milan (2) vs Ajax Amsterdam', NULL, 1),
(127, 29, 94, NULL, 'literal', '', 'Feyenoord Rotterdam vs Celtic Glasgow', NULL, 1),
(128, 29, 193, NULL, 'literal', '', 'Feyenoord Rotterdam vs Celtic Glasgow', NULL, 1),
(129, 29, 184, NULL, 'literal', '', '4 – 1', NULL, 1),
(130, 29, 62, NULL, 'literal', '', 'Stade San Siro (Milan)', NULL, 1),
(131, 29, 138, NULL, 'literal', '', 'Feyenoord Rotterdam vs Celtic Glasgow', NULL, 1),
(132, 29, 1, NULL, 'literal', '', 'Feyenoord Rotterdam vs Celtic Glasgow', NULL, 1),
(133, 30, 94, NULL, 'literal', '', '1994', NULL, 1),
(134, 30, 193, NULL, 'literal', '', 'AC Milan (5) vs FC Barcelone', NULL, 1),
(135, 30, 184, NULL, 'literal', '', '4 – 0', NULL, 1),
(136, 30, 62, NULL, 'literal', '', 'Stade olympique (Athènes)', NULL, 1),
(137, 30, 1, NULL, 'literal', '', 'AC Milan (5) vs FC Barcelone', NULL, 1),
(138, 31, 94, NULL, 'literal', '', '1998', NULL, 1),
(139, 31, 193, NULL, 'literal', '', 'Real Madrid (7) vs Juventus', NULL, 1),
(140, 31, 184, NULL, 'literal', '', '1 – 0', NULL, 1),
(141, 31, 62, NULL, 'literal', '', 'Amsterdam ArenA (Amsterdam)', NULL, 1),
(142, 31, 1, NULL, 'literal', '', 'Real Madrid (7) vs Juventus', NULL, 1),
(143, 32, 140, NULL, 'literal', '', 'GENTO', NULL, 1),
(144, 32, 139, NULL, 'literal', '', 'Francisco', NULL, 1),
(145, 32, 182, NULL, 'literal', '', '21/10/1933', NULL, 1),
(146, 32, 1, NULL, 'literal', '', 'Francisco GENTO', NULL, 1),
(147, 32, 193, NULL, 'literal', '', 'Real Madrid', NULL, 1),
(148, 32, 4, NULL, 'literal', '', 'Espagne', NULL, 1),
(149, 32, 189, NULL, 'literal', '', 'Ailier gauche', NULL, 1),
(150, 33, 140, NULL, 'literal', '', 'MALDINI', NULL, 1),
(151, 33, 139, NULL, 'literal', '', 'Paolo', NULL, 1),
(152, 33, 182, NULL, 'literal', '', '29/06/1968', NULL, 1),
(153, 33, 1, NULL, 'literal', '', 'Paola MALDINI', NULL, 1),
(154, 33, 193, NULL, 'literal', '', 'Milan AC', NULL, 1),
(155, 33, 4, NULL, 'literal', '', 'Italie', NULL, 1),
(156, 33, 189, NULL, 'literal', '', 'Défenseur', NULL, 1),
(157, 34, 140, NULL, 'literal', '', 'DI STEFANO', NULL, 1),
(158, 34, 139, NULL, 'literal', '', 'Alfredo', NULL, 1),
(159, 34, 182, NULL, 'literal', '', '4 juillet 1926 ', NULL, 1),
(160, 34, 1, NULL, 'literal', '', 'Alfredo DI STEFANO', NULL, 1),
(161, 34, 193, NULL, 'literal', '', 'Real Madrid', NULL, 1),
(162, 34, 4, NULL, 'literal', '', 'Argentine', NULL, 1),
(163, 34, 189, NULL, 'literal', '', 'Attaquant', NULL, 1),
(164, 35, 140, NULL, 'literal', '', 'ZARRAGA', NULL, 1),
(165, 35, 139, NULL, 'literal', '', 'José María ', NULL, 1),
(166, 35, 182, NULL, 'literal', '', ' 	15 août 1930', NULL, 1),
(167, 35, 1, NULL, 'literal', '', 'José María ZARRAGA', NULL, 1),
(168, 35, 193, NULL, 'literal', '', 'Real Madrid', NULL, 1),
(169, 35, 4, NULL, 'literal', '', 'Espagne', NULL, 1),
(170, 35, 189, NULL, 'literal', '', 'Milieu de terrain', NULL, 1),
(171, 36, 140, NULL, 'literal', '', 'RONALDO', NULL, 1),
(172, 36, 139, NULL, 'literal', '', 'Cristiano', NULL, 1),
(173, 36, 182, NULL, 'literal', '', '5 février 1985', NULL, 1),
(174, 36, 1, NULL, 'literal', '', 'Cristiano RONALDO', NULL, 1),
(175, 36, 193, NULL, 'literal', '', 'Manchester United, Real Madrid', NULL, 1),
(176, 36, 4, NULL, 'literal', '', 'Portugal', NULL, 1),
(177, 36, 189, NULL, 'literal', '', 'Attaquant', NULL, 1),
(178, 37, 140, NULL, 'literal', '', 'IMAZ MARQUITOS', NULL, 1),
(179, 37, 139, NULL, 'literal', '', 'Marcos Alonso', NULL, 1),
(180, 37, 182, NULL, 'literal', '', '16 avril 1933', NULL, 1),
(181, 37, 1, NULL, 'literal', '', 'Marcos Alonso IMAZ MARQUITOS', NULL, 1),
(182, 37, 193, NULL, 'literal', '', 'Real Madrid', NULL, 1),
(183, 37, 4, NULL, 'literal', '', 'Espagne', NULL, 1),
(184, 37, 189, NULL, 'literal', '', 'Défenseur', NULL, 1),
(185, 38, 140, NULL, 'literal', '', 'NEAL', NULL, 1),
(186, 38, 139, NULL, 'literal', '', 'Phil', NULL, 1),
(187, 38, 182, NULL, 'literal', '', '20 février 1951', NULL, 1),
(188, 38, 1, NULL, 'literal', '', 'Phil NEAL', NULL, 1),
(189, 38, 193, NULL, 'literal', '', 'Liverpool FC', NULL, 1),
(190, 38, 4, NULL, 'literal', '', 'Angleterre', NULL, 1),
(191, 38, 189, NULL, 'literal', '', 'Défenseur', NULL, 1),
(192, 39, 140, NULL, 'literal', '', 'SEEDORF', NULL, 1),
(193, 39, 139, NULL, 'literal', '', 'Clarence', NULL, 1),
(194, 39, 182, NULL, 'literal', '', '1er avril 1976', NULL, 1),
(195, 39, 1, NULL, 'literal', '', 'Clarence SEEDORF', NULL, 1),
(196, 39, 193, NULL, 'literal', '', 'Bayern Munich, Real Madrid, Milan AC', NULL, 1),
(197, 39, 4, NULL, 'literal', '', 'Milieu de terrain', NULL, 1),
(198, 39, 189, NULL, 'literal', '', 'Milieu de terrain', NULL, 1),
(199, 40, 140, NULL, 'literal', '', 'KROOS', NULL, 1),
(200, 40, 139, NULL, 'literal', '', 'Toni', NULL, 1),
(201, 40, 182, NULL, 'literal', '', ' 	4 janvier 1990', NULL, 1),
(202, 40, 1, NULL, 'literal', '', 'Toni KROOS', NULL, 1),
(203, 40, 193, NULL, 'literal', '', 'Bayern Munich, Real Madrid', NULL, 1),
(204, 40, 4, NULL, 'literal', '', 'Pays-Bas', NULL, 1),
(205, 40, 189, NULL, 'literal', '', 'Milieu de terrain', NULL, 1),
(206, 41, 140, NULL, 'literal', '', 'RAMOS', NULL, 1),
(207, 41, 139, NULL, 'literal', '', 'Sergio', NULL, 1),
(208, 41, 182, NULL, 'literal', '', ' 	30 mars 1986', NULL, 1),
(209, 41, 1, NULL, 'literal', '', 'Sergio RAMOS', NULL, 1),
(210, 41, 193, NULL, 'literal', '', 'Real Madrid', NULL, 1),
(211, 41, 4, NULL, 'literal', '', 'Espagne', NULL, 1),
(212, 41, 189, NULL, 'literal', '', 'Défenseur central', NULL, 1),
(213, 42, 1, NULL, 'literal', '', 'Joueurs', NULL, 1),
(214, 42, 1, 41, 'resource', NULL, NULL, NULL, 1),
(215, 42, 1, 40, 'resource', NULL, NULL, NULL, 1),
(216, 42, 1, 39, 'resource', NULL, NULL, NULL, 1),
(217, 42, 1, 38, 'resource', NULL, NULL, NULL, 1),
(218, 42, 1, 37, 'resource', NULL, NULL, NULL, 1),
(219, 42, 1, 36, 'resource', NULL, NULL, NULL, 1),
(220, 42, 1, 35, 'resource', NULL, NULL, NULL, 1),
(221, 42, 1, 34, 'resource', NULL, NULL, NULL, 1),
(222, 42, 1, 33, 'resource', NULL, NULL, NULL, 1),
(223, 42, 1, 32, 'resource', NULL, NULL, NULL, 1),
(224, 17, 193, 26, 'resource', NULL, NULL, NULL, 1),
(225, 17, 193, 25, 'resource', NULL, NULL, NULL, 1),
(226, 17, 193, 24, 'resource', NULL, NULL, NULL, 1),
(227, 17, 193, 23, 'resource', NULL, NULL, NULL, 1),
(228, 17, 193, 22, 'resource', NULL, NULL, NULL, 1),
(229, 17, 193, 21, 'resource', NULL, NULL, NULL, 1),
(230, 17, 193, 20, 'resource', NULL, NULL, NULL, 1),
(231, 17, 193, 19, 'resource', NULL, NULL, NULL, 1),
(232, 7, 1, 31, 'resource', NULL, NULL, NULL, 1),
(233, 7, 1, 30, 'resource', NULL, NULL, NULL, 1),
(234, 7, 1, 29, 'resource', NULL, NULL, NULL, 1),
(235, 7, 1, 28, 'resource', NULL, NULL, NULL, 1),
(236, 7, 1, 27, 'resource', NULL, NULL, NULL, 1),
(237, 7, 1, 18, 'resource', NULL, NULL, NULL, 1),
(238, 7, 1, 10, 'resource', NULL, NULL, NULL, 1),
(239, 7, 1, 9, 'resource', NULL, NULL, NULL, 1),
(240, 7, 1, 8, 'resource', NULL, NULL, NULL, 1),
(241, 7, 1, 5, 'resource', NULL, NULL, NULL, 1),
(242, 7, 1, 4, 'resource', NULL, NULL, NULL, 1);

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
(6, 1, 'http://purl.org/wai', 'http://purl.org/wai#', 'Roles et profiles WAI', ''),
(12, 1, 'http://dbpedia.org/ontology/', 'dbpedia-owl', 'DBpedia football', ''),
(13, 1, 'http://dbpedia.org/ontology', 'dbpedia', 'Football team', '');

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
-- Index pour la table `csvimport_entity`
--
ALTER TABLE `csvimport_entity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_84D382F4BE04EA9` (`job_id`);

--
-- Index pour la table `csvimport_import`
--
ALTER TABLE `csvimport_import`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_17B50881BE04EA9` (`job_id`),
  ADD UNIQUE KEY `UNIQ_17B508814C276F75` (`undo_job_id`);

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
-- AUTO_INCREMENT pour la table `csvimport_entity`
--
ALTER TABLE `csvimport_entity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `csvimport_import`
--
ALTER TABLE `csvimport_import`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- Contraintes pour la table `csvimport_entity`
--
ALTER TABLE `csvimport_entity`
  ADD CONSTRAINT `FK_84D382F4BE04EA9` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`);

--
-- Contraintes pour la table `csvimport_import`
--
ALTER TABLE `csvimport_import`
  ADD CONSTRAINT `FK_17B508814C276F75` FOREIGN KEY (`undo_job_id`) REFERENCES `job` (`id`),
  ADD CONSTRAINT `FK_17B50881BE04EA9` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`);

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
