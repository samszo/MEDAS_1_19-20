CREATE DATABASE  IF NOT EXISTS `omeka` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `omeka`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 192.168.1.47    Database: omeka
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `api_key`
--

DROP TABLE IF EXISTS `api_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_key` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `credential_hash` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_ip` varbinary(16) DEFAULT NULL COMMENT '(DC2Type:ip_address)',
  `last_accessed` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C912ED9D7E3C61F9` (`owner_id`),
  CONSTRAINT `FK_C912ED9D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_key`
--

LOCK TABLES `api_key` WRITE;
/*!40000 ALTER TABLE `api_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset`
--

DROP TABLE IF EXISTS `asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2AF5A5C5CC5DB90` (`storage_id`),
  KEY `IDX_2AF5A5C7E3C61F9` (`owner_id`),
  CONSTRAINT `FK_2AF5A5C7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset`
--

LOCK TABLES `asset` WRITE;
/*!40000 ALTER TABLE `asset` DISABLE KEYS */;
INSERT INTO `asset` VALUES (1,1,'717Di3DGIbL._AC_SL1092_.jpg','image/jpeg','8e1460aa7aabd171cc57e73997740889d238c26d','jpg'),(2,1,'MN0005219412_1_0005219430_0005219432_0005219434_0005219436_0005219450.jpg','image/jpeg','d213fb377157982cb6e4e8ce6120e76382ca736a','jpg'),(3,1,'2883594743f7b0950f7597cbbbe1.jpg','image/jpeg','83824cc2b2752cf86116d55b5a216fa53695acca','jpg'),(4,1,'WhatsApp Image 2020-04-17 at 15.19.10.jpeg','image/jpeg','8241e6644452333895dda71e51c14f508f6707aa','jpeg'),(5,1,'AR201409160254_d0.jpg','image/png','d39506020aab679ad78927f01dc455a3bbe91ad0','jpg'),(6,1,'LD0005241275_2.jpg','image/jpeg','136bd54aa9fd9b60d5f2f3305d21be32f561d924','jpg'),(7,1,'2019021115513944e18412f6db42424d44677cbf1e4f8fcb_big.png','image/png','6610c25a8484855a49d027dbb94b5756fea6e001','png'),(8,1,'s-l300.jpg','image/jpeg','9aeb855ead3c9dc8b5ad1481ac7f0efb0f2c092c','jpg');
/*!40000 ALTER TABLE `asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_vocab`
--

DROP TABLE IF EXISTS `custom_vocab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_vocab` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_set_id` int DEFAULT NULL,
  `owner_id` int DEFAULT NULL,
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8533D2A5EA750E8` (`label`),
  KEY `IDX_8533D2A5960278D7` (`item_set_id`),
  KEY `IDX_8533D2A57E3C61F9` (`owner_id`),
  CONSTRAINT `FK_8533D2A57E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_8533D2A5960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_vocab`
--

LOCK TABLES `custom_vocab` WRITE;
/*!40000 ALTER TABLE `custom_vocab` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_vocab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fulltext_search`
--

DROP TABLE IF EXISTS `fulltext_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fulltext_search` (
  `id` int NOT NULL,
  `resource` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`resource`),
  KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`),
  FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`),
  CONSTRAINT `FK_AA31FE4A7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fulltext_search`
--

LOCK TABLES `fulltext_search` WRITE;
/*!40000 ALTER TABLE `fulltext_search` DISABLE KEYS */;
INSERT INTO `fulltext_search` VALUES (1,'site_pages',1,1,'Bienvenue sur le site Helicorp','\r\n'),(3,'site_pages',1,1,'Accueil','\r\n'),(4,'items',1,1,'AMD RYZEN 7 3700X','1\n3.6Ghz\nAMD\n3700X\nAM4\nAMD RYZEN 7 3700X'),(4,'site_pages',1,1,'Galerie',''),(5,'items',1,1,'AM4','1\nAMD\nAM4\nAM4'),(5,'site_pages',1,1,'HeliMine','Exemple d&#39;une de nos interventions avec HeliSpace :\r\n\r\n\r\n\r\n\r\n'),(6,'items',1,1,'G.Skill Trident Z Royal Silver','1\nG.SKILL\nTrident Z Royal\nDDR4\nSilver\n3600MHz\n8\nG.Skill Trident Z Royal Silver'),(7,'item_sets',1,1,'PC Liberty','MSI GTX970 Gaming 4\nG.Skill Trident Z Royal Silver\nG.Skill Trident Z Royal Silver\nAM4\nFractal RGB\nFractal RGB\nFractal RGB\nAMD RYZEN 7 3700X\nIN WIN 301\nPC Liberty'),(8,'items',1,1,'MSI GTX970 Gaming 4','1\nMSI\nNVIDIA Geforce GTX970\n4Go\nMSI GTX970 Gaming 4'),(9,'items',1,1,'Fractal RGB','1\n140\nFractal Design\nPrisma RGB PWM\nFractal RGB'),(10,'items',1,1,'AORUS B450-M','1\nGigabyte\nAORUS B450-M\nMicro ATX\nAM4\nAORUS B450-M'),(11,'items',1,1,'IN WIN 301','Blanc\nMicro ATX\n1\nIN WIN\n301\nIN WIN 301');
/*!40000 ALTER TABLE `fulltext_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_1F1B251EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (4),(5),(6),(8),(9),(10),(11);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_item_set`
--

DROP TABLE IF EXISTS `item_item_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_item_set` (
  `item_id` int NOT NULL,
  `item_set_id` int NOT NULL,
  PRIMARY KEY (`item_id`,`item_set_id`),
  KEY `IDX_6D0C9625126F525E` (`item_id`),
  KEY `IDX_6D0C9625960278D7` (`item_set_id`),
  CONSTRAINT `FK_6D0C9625126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_6D0C9625960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_item_set`
--

LOCK TABLES `item_item_set` WRITE;
/*!40000 ALTER TABLE `item_item_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_item_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_set`
--

DROP TABLE IF EXISTS `item_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_set` (
  `id` int NOT NULL,
  `is_open` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_1015EEEBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_set`
--

LOCK TABLES `item_set` WRITE;
/*!40000 ALTER TABLE `item_set` DISABLE KEYS */;
INSERT INTO `item_set` VALUES (7,0);
/*!40000 ALTER TABLE `item_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int DEFAULT NULL,
  `pid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `args` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `log` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `started` datetime NOT NULL,
  `ended` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FBD8E0F87E3C61F9` (`owner_id`),
  CONSTRAINT `FK_FBD8E0F87E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int NOT NULL,
  `item_id` int NOT NULL,
  `ingester` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `renderer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `source` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sha256` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint DEFAULT NULL,
  `has_original` tinyint(1) NOT NULL,
  `has_thumbnails` tinyint(1) NOT NULL,
  `position` int DEFAULT NULL,
  `lang` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6A2CA10C5CC5DB90` (`storage_id`),
  KEY `IDX_6A2CA10C126F525E` (`item_id`),
  KEY `item_position` (`item_id`,`position`),
  CONSTRAINT `FK_6A2CA10C126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  CONSTRAINT `FK_6A2CA10CBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migration` (
  `version` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('20171128053327'),('20180412035023'),('20180919072656'),('20180924033501'),('20181002015551'),('20181004043735'),('20181106060421'),('20190307043537'),('20190319020708'),('20190412090532'),('20190423040354'),('20190423071228'),('20190514061351'),('20190515055359'),('20190729023728'),('20190809092609'),('20190815062003');
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module` (
  `id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES ('CustomVocab',1,'1.2.0');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_creation`
--

DROP TABLE IF EXISTS `password_creation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_creation` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int NOT NULL,
  `created` datetime NOT NULL,
  `activate` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`),
  CONSTRAINT `FK_C77917B4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_creation`
--

LOCK TABLES `password_creation` WRITE;
/*!40000 ALTER TABLE `password_creation` DISABLE KEYS */;
INSERT INTO `password_creation` VALUES ('LiG1RhMYKpKpVveRRTWWJD7kwqsE6FJT',2,'2020-04-16 08:15:04',1),('tn5GTE7Cgcuh4laReaBkzfafAfLLrJy3',1,'2020-04-16 07:14:14',0);
/*!40000 ALTER TABLE `password_creation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int DEFAULT NULL,
  `vocabulary_id` int NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`),
  CONSTRAINT `FK_8BF21CDE7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_8BF21CDEAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,NULL,1,'title','Title','A name given to the resource.'),(2,NULL,1,'creator','Creator','An entity primarily responsible for making the resource.'),(3,NULL,1,'subject','Subject','The topic of the resource.'),(4,NULL,1,'description','Description','An account of the resource.'),(5,NULL,1,'publisher','Publisher','An entity responsible for making the resource available.'),(6,NULL,1,'contributor','Contributor','An entity responsible for making contributions to the resource.'),(7,NULL,1,'date','Date','A point or period of time associated with an event in the lifecycle of the resource.'),(8,NULL,1,'type','Type','The nature or genre of the resource.'),(9,NULL,1,'format','Format','The file format, physical medium, or dimensions of the resource.'),(10,NULL,1,'identifier','Identifier','An unambiguous reference to the resource within a given context.'),(11,NULL,1,'source','Source','A related resource from which the described resource is derived.'),(12,NULL,1,'language','Language','A language of the resource.'),(13,NULL,1,'relation','Relation','A related resource.'),(14,NULL,1,'coverage','Coverage','The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.'),(15,NULL,1,'rights','Rights','Information about rights held in and over the resource.'),(16,NULL,1,'audience','Audience','A class of entity for whom the resource is intended or useful.'),(17,NULL,1,'alternative','Alternative Title','An alternative name for the resource.'),(18,NULL,1,'tableOfContents','Table Of Contents','A list of subunits of the resource.'),(19,NULL,1,'abstract','Abstract','A summary of the resource.'),(20,NULL,1,'created','Date Created','Date of creation of the resource.'),(21,NULL,1,'valid','Date Valid','Date (often a range) of validity of a resource.'),(22,NULL,1,'available','Date Available','Date (often a range) that the resource became or will become available.'),(23,NULL,1,'issued','Date Issued','Date of formal issuance (e.g., publication) of the resource.'),(24,NULL,1,'modified','Date Modified','Date on which the resource was changed.'),(25,NULL,1,'extent','Extent','The size or duration of the resource.'),(26,NULL,1,'medium','Medium','The material or physical carrier of the resource.'),(27,NULL,1,'isVersionOf','Is Version Of','A related resource of which the described resource is a version, edition, or adaptation.'),(28,NULL,1,'hasVersion','Has Version','A related resource that is a version, edition, or adaptation of the described resource.'),(29,NULL,1,'isReplacedBy','Is Replaced By','A related resource that supplants, displaces, or supersedes the described resource.'),(30,NULL,1,'replaces','Replaces','A related resource that is supplanted, displaced, or superseded by the described resource.'),(31,NULL,1,'isRequiredBy','Is Required By','A related resource that requires the described resource to support its function, delivery, or coherence.'),(32,NULL,1,'requires','Requires','A related resource that is required by the described resource to support its function, delivery, or coherence.'),(33,NULL,1,'isPartOf','Is Part Of','A related resource in which the described resource is physically or logically included.'),(34,NULL,1,'hasPart','Has Part','A related resource that is included either physically or logically in the described resource.'),(35,NULL,1,'isReferencedBy','Is Referenced By','A related resource that references, cites, or otherwise points to the described resource.'),(36,NULL,1,'references','References','A related resource that is referenced, cited, or otherwise pointed to by the described resource.'),(37,NULL,1,'isFormatOf','Is Format Of','A related resource that is substantially the same as the described resource, but in another format.'),(38,NULL,1,'hasFormat','Has Format','A related resource that is substantially the same as the pre-existing described resource, but in another format.'),(39,NULL,1,'conformsTo','Conforms To','An established standard to which the described resource conforms.'),(40,NULL,1,'spatial','Spatial Coverage','Spatial characteristics of the resource.'),(41,NULL,1,'temporal','Temporal Coverage','Temporal characteristics of the resource.'),(42,NULL,1,'mediator','Mediator','An entity that mediates access to the resource and for whom the resource is intended or useful.'),(43,NULL,1,'dateAccepted','Date Accepted','Date of acceptance of the resource.'),(44,NULL,1,'dateCopyrighted','Date Copyrighted','Date of copyright.'),(45,NULL,1,'dateSubmitted','Date Submitted','Date of submission of the resource.'),(46,NULL,1,'educationLevel','Audience Education Level','A class of entity, defined in terms of progression through an educational or training context, for which the described resource is intended.'),(47,NULL,1,'accessRights','Access Rights','Information about who can access the resource or an indication of its security status.'),(48,NULL,1,'bibliographicCitation','Bibliographic Citation','A bibliographic reference for the resource.'),(49,NULL,1,'license','License','A legal document giving official permission to do something with the resource.'),(50,NULL,1,'rightsHolder','Rights Holder','A person or organization owning or managing rights over the resource.'),(51,NULL,1,'provenance','Provenance','A statement of any changes in ownership and custody of the resource since its creation that are significant for its authenticity, integrity, and interpretation.'),(52,NULL,1,'instructionalMethod','Instructional Method','A process, used to engender knowledge, attitudes and skills, that the described resource is designed to support.'),(53,NULL,1,'accrualMethod','Accrual Method','The method by which items are added to a collection.'),(54,NULL,1,'accrualPeriodicity','Accrual Periodicity','The frequency with which items are added to a collection.'),(55,NULL,1,'accrualPolicy','Accrual Policy','The policy governing the addition of items to a collection.'),(229,1,33,'ID','ID',NULL),(230,1,33,'Marque','Marque',NULL),(231,1,33,'Modele','Modele',NULL),(232,1,33,'Type','Type',NULL),(233,1,33,'Taille','Taille',NULL),(234,1,33,'Nombre','Nombre',NULL),(235,1,33,'Couleur','Couleur',NULL),(236,1,33,'Format','Format',NULL),(237,1,33,'Frequence','Frequence',NULL),(238,1,33,'Norme','Norme',NULL),(239,1,33,'hasCarteGrpahique','hasCG','La carte mere a comme carte graphique'),(240,1,33,'hasBaretteRAM','hasRAM','La carte mere a comme Barette de ram'),(241,1,33,'hasVentilateur','hasVentilateur','Le chassis a comme ventilateur'),(242,NULL,33,'hasSocket','hasSocket','Modele de socket'),(243,NULL,33,'hasProcesseur','hasProcesseur',NULL),(244,NULL,33,'Capacite','Capacité de stockage',NULL),(245,NULL,33,'hasChassis','hasChassis',NULL),(246,NULL,33,'hasRadiator','hasRadiatteur',NULL),(247,NULL,33,'hasCM','Has Carte Mere',NULL),(304,1,38,'relevantToDataset','Relevant to Dataset','This property indicates the data resource or dataset that the data value metadata describes.'),(305,1,38,'computedOn','computed on','This property indicates the data resource or dataset that is being analysed using a Data Value metric.'),(306,1,38,'hasValueDimension','has Value Dimension','This property will link a Data Value object (dave:DataValue) to any data value dimensions it contains. '),(307,1,38,'hasValueGroup','has Value Group','This property will link a Dimension (dave:Dimension) to data metric groups (dave:MetricGroup).'),(308,1,38,'hasValueMetric','has Value Metric','This property will link a data metric group (dave:MetricGroup) to the related metrics (dave:Metric).'),(309,1,38,'implementsMetric','Implements Metric','This property will link a toolset to any metrics it implements.'),(310,1,38,'hasDescription','has Description','This property will link a metric with its relevant description.'),(311,1,38,'hasValueMeasurement','has Value Measurement','This property provides a link between a metric, and any number of measurements for the implementation of this metric.'),(312,1,38,'hasValue','has Value','Each metric will return a quantification of value. Since there will be different return types for different metrics, this property will link a metric with a value object, including boolean, double, literal, etc.');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int DEFAULT NULL,
  `resource_class_id` int DEFAULT NULL,
  `resource_template_id` int DEFAULT NULL,
  `thumbnail_id` int DEFAULT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`),
  CONSTRAINT `FK_BC91F41616131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_BC91F416448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_BC91F4167E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_BC91F416FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (4,1,205,3,1,'AMD RYZEN 7 3700X',1,'2020-04-17 12:55:06','2020-04-17 13:03:06','Omeka\\Entity\\Item'),(5,1,204,2,3,'AM4',1,'2020-04-17 12:58:12','2020-04-17 15:14:42','Omeka\\Entity\\Item'),(6,1,208,5,2,'G.Skill Trident Z Royal Silver',1,'2020-04-17 13:06:20','2020-04-17 13:28:32','Omeka\\Entity\\Item'),(7,1,211,6,4,'PC Liberty',1,'2020-04-17 13:16:55','2020-04-17 13:54:34','Omeka\\Entity\\ItemSet'),(8,1,207,7,5,'MSI GTX970 Gaming 4',1,'2020-04-17 13:22:47','2020-04-17 13:28:24','Omeka\\Entity\\Item'),(9,1,210,8,6,'Fractal RGB',1,'2020-04-17 13:32:25','2020-04-17 13:32:54','Omeka\\Entity\\Item'),(10,1,212,9,7,'AORUS B450-M',1,'2020-04-17 13:39:49','2020-04-17 13:39:49','Omeka\\Entity\\Item'),(11,1,209,10,8,'IN WIN 301',1,'2020-04-17 13:41:38','2020-04-17 13:41:50','Omeka\\Entity\\Item');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_class`
--

DROP TABLE IF EXISTS `resource_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int DEFAULT NULL,
  `vocabulary_id` int NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`),
  CONSTRAINT `FK_C6F063AD7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_C6F063ADAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_class`
--

LOCK TABLES `resource_class` WRITE;
/*!40000 ALTER TABLE `resource_class` DISABLE KEYS */;
INSERT INTO `resource_class` VALUES (1,NULL,1,'Agent','Agent','A resource that acts or has the power to act.'),(2,NULL,1,'AgentClass','Agent Class','A group of agents.'),(3,NULL,1,'BibliographicResource','Bibliographic Resource','A book, article, or other documentary resource.'),(4,NULL,1,'FileFormat','File Format','A digital resource format.'),(5,NULL,1,'Frequency','Frequency','A rate at which something recurs.'),(6,NULL,1,'Jurisdiction','Jurisdiction','The extent or range of judicial, law enforcement, or other authority.'),(7,NULL,1,'LicenseDocument','License Document','A legal document giving official permission to do something with a Resource.'),(8,NULL,1,'LinguisticSystem','Linguistic System','A system of signs, symbols, sounds, gestures, or rules used in communication.'),(9,NULL,1,'Location','Location','A spatial region or named place.'),(10,NULL,1,'LocationPeriodOrJurisdiction','Location, Period, or Jurisdiction','A location, period of time, or jurisdiction.'),(11,NULL,1,'MediaType','Media Type','A file format or physical medium.'),(12,NULL,1,'MediaTypeOrExtent','Media Type or Extent','A media type or extent.'),(13,NULL,1,'MethodOfInstruction','Method of Instruction','A process that is used to engender knowledge, attitudes, and skills.'),(14,NULL,1,'MethodOfAccrual','Method of Accrual','A method by which resources are added to a collection.'),(15,NULL,1,'PeriodOfTime','Period of Time','An interval of time that is named or defined by its start and end dates.'),(16,NULL,1,'PhysicalMedium','Physical Medium','A physical material or carrier.'),(17,NULL,1,'PhysicalResource','Physical Resource','A material thing.'),(18,NULL,1,'Policy','Policy','A plan or course of action by an authority, intended to influence and determine decisions, actions, and other matters.'),(19,NULL,1,'ProvenanceStatement','Provenance Statement','A statement of any changes in ownership and custody of a resource since its creation that are significant for its authenticity, integrity, and interpretation.'),(20,NULL,1,'RightsStatement','Rights Statement','A statement about the intellectual property rights (IPR) held in or over a Resource, a legal document giving official permission to do something with a resource, or a statement about access rights.'),(21,NULL,1,'SizeOrDuration','Size or Duration','A dimension or extent, or a time taken to play or execute.'),(22,NULL,1,'Standard','Standard','A basis for comparison; a reference point against which other things can be evaluated.'),(23,NULL,2,'Collection','Collection','An aggregation of resources.'),(24,NULL,2,'Dataset','Dataset','Data encoded in a defined structure.'),(25,NULL,2,'Event','Event','A non-persistent, time-based occurrence.'),(26,NULL,2,'Image','Image','A visual representation other than text.'),(27,NULL,2,'InteractiveResource','Interactive Resource','A resource requiring interaction from the user to be understood, executed, or experienced.'),(28,NULL,2,'Service','Service','A system that provides one or more functions.'),(29,NULL,2,'Software','Software','A computer program in source or compiled form.'),(30,NULL,2,'Sound','Sound','A resource primarily intended to be heard.'),(31,NULL,2,'Text','Text','A resource consisting primarily of words for reading.'),(32,NULL,2,'PhysicalObject','Physical Object','An inanimate, three-dimensional object or substance.'),(33,NULL,2,'StillImage','Still Image','A static visual representation.'),(34,NULL,2,'MovingImage','Moving Image','A series of visual representations imparting an impression of motion when shown in succession.'),(204,1,33,'Socket','Socket',NULL),(205,1,33,'Processeur','Processeur',NULL),(206,1,33,'Radiateur','Radiateur',NULL),(207,1,33,'Carte_Graphique','Carte Graphique',NULL),(208,1,33,'Barette_RAM','Barette de RAM',NULL),(209,1,33,'Chassis','Chassis',NULL),(210,1,33,'Ventilateur','Ventilateur',NULL),(211,NULL,33,'PC','PC',NULL),(212,NULL,33,'CarteMere','Carte Mere',NULL),(226,1,38,'DataValue','Data Value Characterisation','Defines an aggregation of data value dimensions that characterise data value for a specific context of data use.'),(227,1,38,'Toolset','Framework or Toolset','Identifies a specific framework or toolset that implements data value metrics'),(228,1,38,'Description','Metric Description','Describes a data value metric, including the context of use, the expected result, and the approach taken within the Metric to assess data value'),(229,1,38,'ValueMeasurement','Value Measurement','Contains the measurement (quantification) of a data value metric for assessing a data resource or dataset, as well as details about the assessment execution.'),(230,1,38,'Dimension','Dimension','This represents the highest level of the characterisation of data value. A Dimension contains a number of data value Metric Groups. Dimensions are provided as subclasses of this abstract class, which is not intended for direct usage.'),(231,1,38,'MetricGroup','Metric Groups','A metric group is the second level of characterisation of data value, and represents a group of metrics that are related to each other, e.g. by being a recognised set of independent proxies for a given data value dimension. Each Metric Group is a part of a larger group called dimension (See dave:Dimension). MetricGroups are provided as subclasses of this abstract class, which is not intended for direct usage.'),(232,1,38,'Metric','Metric','This is the smallest unit of characterisation of data value. It is part of a larger group called Metric Group (See dave:MetricGroup). This concept represents metrics that are heuristics designed to fit a specific assessment situation. Metrics are provided as subclasses of this abstract class, which is not intended for direct usage.');
/*!40000 ALTER TABLE `resource_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_template`
--

DROP TABLE IF EXISTS `resource_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_template` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int DEFAULT NULL,
  `resource_class_id` int DEFAULT NULL,
  `title_property_id` int DEFAULT NULL,
  `description_property_id` int DEFAULT NULL,
  `label` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_39ECD52EEA750E8` (`label`),
  KEY `IDX_39ECD52E7E3C61F9` (`owner_id`),
  KEY `IDX_39ECD52E448CC1BD` (`resource_class_id`),
  KEY `IDX_39ECD52E724734A3` (`title_property_id`),
  KEY `IDX_39ECD52EB84E0D1D` (`description_property_id`),
  CONSTRAINT `FK_39ECD52E448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_39ECD52E724734A3` FOREIGN KEY (`title_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_39ECD52E7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_39ECD52EB84E0D1D` FOREIGN KEY (`description_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_template`
--

LOCK TABLES `resource_template` WRITE;
/*!40000 ALTER TABLE `resource_template` DISABLE KEYS */;
INSERT INTO `resource_template` VALUES (1,NULL,NULL,NULL,NULL,'Base Resource'),(2,1,204,NULL,NULL,'Socket'),(3,1,205,NULL,NULL,'Processeur'),(5,1,208,NULL,NULL,'RAM'),(6,1,211,NULL,NULL,'PC'),(7,1,207,NULL,NULL,'Carte Graphique'),(8,1,210,NULL,NULL,'Ventialteur'),(9,1,212,NULL,NULL,'Carte Mere'),(10,1,209,NULL,NULL,'Chassis');
/*!40000 ALTER TABLE `resource_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_template_property`
--

DROP TABLE IF EXISTS `resource_template_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_template_property` (
  `id` int NOT NULL AUTO_INCREMENT,
  `resource_template_id` int NOT NULL,
  `property_id` int NOT NULL,
  `alternate_label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `position` int DEFAULT NULL,
  `data_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  KEY `IDX_4689E2F1549213EC` (`property_id`),
  CONSTRAINT `FK_4689E2F116131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`),
  CONSTRAINT `FK_4689E2F1549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_template_property`
--

LOCK TABLES `resource_template_property` WRITE;
/*!40000 ALTER TABLE `resource_template_property` DISABLE KEYS */;
INSERT INTO `resource_template_property` VALUES (1,1,1,NULL,NULL,1,NULL,0,0),(2,1,15,NULL,NULL,2,NULL,0,0),(3,1,8,NULL,NULL,3,NULL,0,0),(4,1,2,NULL,NULL,4,NULL,0,0),(5,1,7,NULL,NULL,5,NULL,0,0),(6,1,4,NULL,NULL,6,NULL,0,0),(7,1,9,NULL,NULL,7,NULL,0,0),(8,1,12,NULL,NULL,8,NULL,0,0),(9,1,40,'Place',NULL,9,NULL,0,0),(10,1,5,NULL,NULL,10,NULL,0,0),(11,1,17,NULL,NULL,11,NULL,0,0),(12,1,6,NULL,NULL,12,NULL,0,0),(13,1,25,NULL,NULL,13,NULL,0,0),(14,1,10,NULL,NULL,14,NULL,0,0),(15,1,13,NULL,NULL,15,NULL,0,0),(16,1,29,NULL,NULL,16,NULL,0,0),(17,1,30,NULL,NULL,17,NULL,0,0),(18,1,50,NULL,NULL,18,NULL,0,0),(19,1,3,NULL,NULL,19,NULL,0,0),(20,1,41,NULL,NULL,20,NULL,0,0),(24,2,229,NULL,NULL,1,NULL,1,0),(25,2,230,NULL,NULL,2,NULL,0,0),(26,2,232,NULL,NULL,3,NULL,0,0),(27,3,229,NULL,NULL,1,NULL,1,0),(28,3,237,NULL,NULL,2,NULL,0,0),(29,3,230,NULL,NULL,3,NULL,0,0),(30,3,231,NULL,NULL,4,NULL,0,0),(31,3,242,NULL,NULL,5,'resource:item',0,0),(32,5,229,NULL,NULL,1,NULL,1,0),(33,5,230,NULL,NULL,2,NULL,0,0),(34,5,231,NULL,NULL,3,NULL,0,0),(36,5,238,NULL,NULL,4,NULL,0,0),(37,5,235,NULL,NULL,5,NULL,0,0),(38,5,237,NULL,NULL,6,NULL,0,0),(40,6,239,NULL,NULL,1,'resource:item',0,0),(41,6,240,NULL,NULL,2,'resource:item',0,0),(42,6,242,NULL,NULL,3,'resource:item',0,0),(43,6,241,NULL,NULL,4,'resource:item',0,0),(44,6,243,NULL,NULL,5,'resource:item',0,0),(45,7,229,NULL,NULL,1,NULL,1,0),(46,7,230,NULL,NULL,2,NULL,0,0),(47,7,231,NULL,NULL,3,NULL,0,0),(48,5,244,NULL,NULL,7,NULL,0,0),(49,7,244,NULL,NULL,4,NULL,0,0),(50,6,245,NULL,NULL,6,'resource:item',0,0),(51,6,246,NULL,NULL,7,'resource:item',0,0),(52,8,229,NULL,NULL,1,NULL,0,0),(53,8,233,NULL,NULL,2,NULL,0,0),(54,8,230,NULL,NULL,3,NULL,0,0),(55,8,231,NULL,NULL,4,NULL,0,0),(56,9,229,NULL,NULL,1,NULL,1,0),(57,9,230,NULL,NULL,2,NULL,0,0),(58,9,231,NULL,NULL,3,NULL,0,0),(59,9,233,NULL,NULL,4,NULL,0,0),(60,9,242,NULL,NULL,5,'resource:item',0,0),(61,10,235,NULL,NULL,1,NULL,0,0),(62,10,236,NULL,NULL,2,NULL,0,0),(63,10,241,NULL,NULL,3,'resource:item',0,0),(64,10,229,NULL,NULL,4,NULL,1,0),(65,10,230,NULL,NULL,5,NULL,0,0),(66,10,231,NULL,NULL,6,NULL,0,0);
/*!40000 ALTER TABLE `resource_template_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longblob NOT NULL,
  `modified` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES ('0s7t1mu1ajlrejtrvme1vosfcj',_binary '__ZF|a:5:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587135939.364838;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"htpubagt2st14qv39upb3dmd1v\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587127507;}s:41:\"Zend_Validator_Csrf_salt_confirmform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587133238;}s:29:\"Zend_Validator_Csrf_salt_csrf\";a:1:{s:6:\"EXPIRE\";i:1587127774;}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":471:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:2:{s:32:\"af43b1ab482aaeb1a368ede6e8add8fa\";s:32:\"01e5585331c56ccdf42f340c19c887ca\";s:32:\"e6390ce60cb09c0b7cc2e1badf8229e9\";s:32:\"ef8be2e4878109e8ee5969c35c5e3278\";}s:4:\"hash\";s:65:\"ef8be2e4878109e8ee5969c35c5e3278-e6390ce60cb09c0b7cc2e1badf8229e9\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Auth|C:23:\"Zend\\Stdlib\\ArrayObject\":223:{a:4:{s:7:\"storage\";a:1:{s:7:\"storage\";i:2;}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}OmekaMessenger|C:23:\"Zend\\Stdlib\\ArrayObject\":205:{a:4:{s:7:\"storage\";a:0:{}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_confirmform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":2872:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:32:{s:32:\"d8502a16d9aea69ac757031898f59154\";s:32:\"efb21d53f8e2b409460beddb85d606a5\";s:32:\"023cf2ac0d3fdb3b9e4ab27ca2ac09d2\";s:32:\"f0bf8f09c44151f5f932eed411ac7faa\";s:32:\"ec8bce3d3fdf4bb4e4f52d9de0f26de7\";s:32:\"296b24c1bbc446c09cf5995f3dde8a88\";s:32:\"51e4e7612b7af6ad0caa638c78a839bd\";s:32:\"e4d0bb34f7ea8cfc0873d9301d1a3bbc\";s:32:\"72a7342a29b1badd677fe6f947c5b58d\";s:32:\"b7796d2070eb8fb92d9635ad9d58ade4\";s:32:\"d79c5fe1c9f63be4d76a98444e999869\";s:32:\"91ec05212d9de6c4ebe8decad6e73570\";s:32:\"6d3f700e3acf6a2b9b07f10a8609de63\";s:32:\"070c9b4a117f4bf88721cf7278c27a21\";s:32:\"e1f1b9896e6e0de7e0d381036494aacf\";s:32:\"b66ca3ecf6d889757bc03ebc0c386321\";s:32:\"243408c61f69eec3b3dad04dd3f0c041\";s:32:\"f89df0e3fc1d7b104e5d6f7b43132dd0\";s:32:\"5f0f2ae65f8e320aea6af7ae3286ea87\";s:32:\"53f605d30634fc29b4aac4319e2e2d99\";s:32:\"c56cc51305bdbcc12eb279e7043f7da0\";s:32:\"06e50631b8dda4c7f96da2f5a92684b2\";s:32:\"7873d43ed7bb69e2ff4045f564cf879c\";s:32:\"7c39b081bcd2cc20624d0fcb6043dad4\";s:32:\"b5d1ea93ed3f87f8817135af1a64c125\";s:32:\"c875b0f9a83a0540c5a8f802b016c735\";s:32:\"d0cb12ae61b83042704c76a9dbb71e5a\";s:32:\"5793669a1898d0c21c0e649f9d161c01\";s:32:\"a5454e325b856c5b861d48066c02bb9c\";s:32:\"bf37d394c4fc921e381667d50d236158\";s:32:\"f4e4abb5740c2526b20e764f29d6887c\";s:32:\"fb0d5b8394d56801a8dc22921e81695b\";s:32:\"b5536bd6013bcf7f0f8e9f5d418b087c\";s:32:\"6421d8ffbb5ef6dadc659278d8aaf299\";s:32:\"d06f2e8c7837c711e5094b1f1cf21223\";s:32:\"4edce3ef8105b30df4b30ac54b7b5d9f\";s:32:\"1ad7e4ccacbafa098126e69c0ed1f3f5\";s:32:\"a78ef0d98c77b01ae7b6b9bd0f1ffd08\";s:32:\"0884296895e01182dd3aa2dd659de10d\";s:32:\"98a07e8dbe848a5220a503eaa917879f\";s:32:\"975c4c64044130e41630a6fbae3c919c\";s:32:\"9f5cf821577fb9d7232834af9a285ee4\";s:32:\"fd8ccae70255a429c284fcfc6579a6ec\";s:32:\"71a7f919a76fa98e3639da5744f428dd\";s:32:\"21938944604e703a08da21624d38ec8b\";s:32:\"8eddb2eac6a1f5d93ad6ea4ac1f9def2\";s:32:\"ea81301198237bf00b0a422a70c5541c\";s:32:\"0cfd9b426987c4e4b6b2593f55ebf911\";s:32:\"b9627f3ec74c7de9f34940175ded9f7d\";s:32:\"34f9b12b07ab5ec573ebe7dab58a58ab\";s:32:\"3487a039c807c17bb30521f13a186e1c\";s:32:\"5e69dfe5c40a2e3466ccad3f0bfe8188\";s:32:\"3891925aa272bc2ae695734e112fb07a\";s:32:\"330196e0908a2e9d25c855c3aa757374\";s:32:\"87f14611d44774885d678d2504dc4b92\";s:32:\"50d8af8b8b44b8ba8f40e3ef78a60dd7\";s:32:\"01001374f1069c7177f8675467b91f5e\";s:32:\"a0bf27d812b99a26990494827d6f1658\";s:32:\"41087c35cae4f2077df122a93673c7cd\";s:32:\"3386c511208007fed8bdeb7ef37ce11e\";s:32:\"6b833e145d54bdf239e584dfb9771e29\";s:32:\"e239cd0c815b38cc871b2c0c61a90961\";s:32:\"b922f6ecc1dcb6fb476eae1b54a40391\";s:32:\"2e8dd40df35a6ee2f5fd6b6d205f69f2\";}s:4:\"hash\";s:65:\"2e8dd40df35a6ee2f5fd6b6d205f69f2-b922f6ecc1dcb6fb476eae1b54a40391\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":631:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:4:{s:32:\"3c2da3ddbfef38f3d023f44ca7edf528\";s:32:\"055805ef8f3c5ecfd1e1274850736cd6\";s:32:\"5405ad16bc1e3ebea68bc7b5d20c3abd\";s:32:\"75a43e1d6083636332b8982fe24862ca\";s:32:\"6c29c04acb9de4c485325daef646bf9f\";s:32:\"f928b7ab673f49aef5a4f477e4578bc6\";s:32:\"3f6148367ab535f4605de70cb42e5bd5\";s:32:\"d4903c027c9ce71a010562b28b011eb7\";}s:4:\"hash\";s:65:\"d4903c027c9ce71a010562b28b011eb7-3f6148367ab535f4605de70cb42e5bd5\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587135939),('3arl9750mnucajihfql46qhjf6',_binary '__ZF|a:3:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587543802.204964;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"3arl9750mnucajihfql46qhjf6\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587547402;}}Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"40c2f8c5172a51fd0228466fac617ae1\";s:32:\"1b614bb1998cc9df3fde57a25cb81c75\";}s:4:\"hash\";s:65:\"1b614bb1998cc9df3fde57a25cb81c75-40c2f8c5172a51fd0228466fac617ae1\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587543802),('3njj0sge5bgjk5fdb7rr7epop7',_binary '__ZF|a:4:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587124240.494233;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"cmbvf17llpu6c3odf7udc9q35d\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587127840;}s:48:\"Zend_Validator_Csrf_salt_forgotpasswordform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587127835;}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":711:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:5:{s:32:\"03a33aeba4ac28e657a67a3c4b809e00\";s:32:\"c68306433d544a5d38bafaee04f1b16e\";s:32:\"bfe1e5600e87bdfd19fa1575ae223bae\";s:32:\"a1655fc4ed97e31d15a860a46d441ff5\";s:32:\"6f3338f49e72be3c439a9073cb79ded8\";s:32:\"36109a9e321002efa53b3250e8558cb8\";s:32:\"b8d1220b1bf65c7408f6dd24b3ad4eef\";s:32:\"de01a044258903d8bd75ff69744cc0e3\";s:32:\"993097899d8743d01e740d7fed9423b2\";s:32:\"5cb6c04f50c9f8ca5d79df3adca5b67e\";}s:4:\"hash\";s:65:\"5cb6c04f50c9f8ca5d79df3adca5b67e-993097899d8743d01e740d7fed9423b2\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}OmekaMessenger|C:23:\"Zend\\Stdlib\\ArrayObject\":205:{a:4:{s:7:\"storage\";a:0:{}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_forgotpasswordform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"70d1658ddc1a723e31e5deb0a2ceee03\";s:32:\"63c3d1c506347ed53ddb47b46554addd\";}s:4:\"hash\";s:65:\"63c3d1c506347ed53ddb47b46554addd-70d1658ddc1a723e31e5deb0a2ceee03\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587124240),('44nnp3nop6u931m6lb28hj7037',_binary '__ZF|a:3:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587123936.892547;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"44nnp3nop6u931m6lb28hj7037\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587127536;}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"0a2931b38df92ce48017182b042e17c3\";s:32:\"af9215ce9e77753b76997e36be8d512a\";}s:4:\"hash\";s:65:\"af9215ce9e77753b76997e36be8d512a-0a2931b38df92ce48017182b042e17c3\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587123936),('46mlg2bm059bpk1o4qh1qupl1f',_binary '__ZF|a:3:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587543872.477296;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"46mlg2bm059bpk1o4qh1qupl1f\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587547472;}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"51470a5279501cf3f2fe33efa20b84d1\";s:32:\"4c37c2a2b77e67ef5b6fd6d1b53d057f\";}s:4:\"hash\";s:65:\"4c37c2a2b77e67ef5b6fd6d1b53d057f-51470a5279501cf3f2fe33efa20b84d1\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587543872),('478h1rlbsdeuik8oqaoed3eag9',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587039238.99614;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"478h1rlbsdeuik8oqaoed3eag9\";}}',1587039239),('47fp8uegm4qapvjp05a9q9kfou',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587543121.805516;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"47fp8uegm4qapvjp05a9q9kfou\";}}',1587543121),('52rgdbepqeg4dv335pq0umfo5i',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587123913.677555;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"52rgdbepqeg4dv335pq0umfo5i\";}}',1587123913),('6t834e8v46itns9fgeniiuqc05',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587543806.073206;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"6t834e8v46itns9fgeniiuqc05\";}}',1587543806),('76ohb5r408r3qvc276fsrctghq',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587543801.08445;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"76ohb5r408r3qvc276fsrctghq\";}}redirect_url|s:40:\"http://vm.helicorp.fr/omeka-s/admin/item\";',1587543801),('7dkruoosne86guv2gi7r00t5n0',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587123910.977158;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"7dkruoosne86guv2gi7r00t5n0\";}}',1587123911),('7ub7c8ebt8hgbs6u27bgoci5sa',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587147597.962415;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"7ub7c8ebt8hgbs6u27bgoci5sa\";}}',1587147598),('98panpjl01irgu973c83qu2l0l',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1586956025.062137;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"98panpjl01irgu973c83qu2l0l\";}}',1586956025),('9hsfhm07fnfoqbd3dp22aumrrh',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587547861.65187;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"9hsfhm07fnfoqbd3dp22aumrrh\";}}',1587547861),('9re3gjn3416jioscrmfi44p5vf',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587464422.247369;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"9re3gjn3416jioscrmfi44p5vf\";}}',1587464422),('9rlrbnuita3cf6c63r9uaq9b0g',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587464221.837825;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"9rlrbnuita3cf6c63r9uaq9b0g\";}}',1587464221),('9u4cmomv8048i29th0uh2tlq63',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1586955998.252816;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"9u4cmomv8048i29th0uh2tlq63\";}}',1586955998),('adu3g216b36tctnfbf9lm5t992',_binary '__ZF|a:8:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587587484.370673;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"iufpunqp8ucl2qg52g259kgck8\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587546031;}s:44:\"Zend_Validator_Csrf_salt_vocabularyform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587590286;}s:41:\"Zend_Validator_Csrf_salt_confirmform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587580944;}s:50:\"Zend_Validator_Csrf_salt_vocabularyupdateform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587570284;}s:50:\"Zend_Validator_Csrf_salt_resourcetemplateform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587580896;}s:29:\"Zend_Validator_Csrf_salt_csrf\";a:1:{s:6:\"EXPIRE\";i:1587580943;}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"0c5f0bd5161251b7dd335c1a70aff0d4\";s:32:\"31056f02ff02c1445d3e14c98b06ed78\";}s:4:\"hash\";s:65:\"31056f02ff02c1445d3e14c98b06ed78-0c5f0bd5161251b7dd335c1a70aff0d4\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Auth|C:23:\"Zend\\Stdlib\\ArrayObject\":223:{a:4:{s:7:\"storage\";a:1:{s:7:\"storage\";i:1;}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}OmekaMessenger|C:23:\"Zend\\Stdlib\\ArrayObject\":205:{a:4:{s:7:\"storage\";a:0:{}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_vocabularyform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":471:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:2:{s:32:\"7478b77fd2cde3f7c2c3f1c4489f4ae2\";s:32:\"5b73b355aad10184e8328695cfa5103b\";s:32:\"6934cc76461e4c5f58b64672415c9145\";s:32:\"ebee2ec50995042e667fce0f715df0eb\";}s:4:\"hash\";s:65:\"ebee2ec50995042e667fce0f715df0eb-6934cc76461e4c5f58b64672415c9145\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_confirmform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":1992:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:21:{s:32:\"9c0e6abeeaac9f9602081dd2782c9c9e\";s:32:\"0afd39eafa839103a4015f80646f9536\";s:32:\"38117a813650b372481f931c5a8b0f98\";s:32:\"d0ea8176d4c772e9e037db635635976f\";s:32:\"814da846680497011845631db1f48f05\";s:32:\"aa66b6cbacb2f47e77770165ffd2059f\";s:32:\"2a62e4c9e73a50ded6c72e0e802ced3e\";s:32:\"18dc36185e70f0ef23743427e7bc6668\";s:32:\"12dc2d35325eaa46d0b894e3201f05fd\";s:32:\"b9eef2f8c0e0f65a0f0ede1589e0b2fb\";s:32:\"1744bdffbfaba1c9b21b5559da77f8d8\";s:32:\"2e6f58c3ad07efd525fdcbd5dc6b1efc\";s:32:\"2e3159635c3cedbb3584dcd22a9c47ca\";s:32:\"dc1d16100729d79acc8ded960903c465\";s:32:\"98ad7b4f239eb17c4299f3da0d2b8261\";s:32:\"c550f562f307210497c35e8418d00fa6\";s:32:\"e5ebc7fcaa5cf9fb1fa69121107b1f57\";s:32:\"643c594971c53796d696fa75ecc3ad7c\";s:32:\"b30b5b91e955c8dcc2ffaf2651439d6f\";s:32:\"e9d8b3716d1f463d0f9c1ca7172d4914\";s:32:\"5dec7df2e49102fa377824b838d65342\";s:32:\"4664f1f217673b7047a2074522e55d88\";s:32:\"31f000213ba197b091e51835502aba4b\";s:32:\"01dcc86d073b4c23404af316479d7867\";s:32:\"00b43e8717376afe50146141a63c3fcb\";s:32:\"853ea7fe0577916d5f7aad95375b9690\";s:32:\"16727ca14898cee1529eec711e0cb628\";s:32:\"ee5c39d9320513909f081125d68b7d85\";s:32:\"6d1fd7f38eb12a87e2eac1bba307620e\";s:32:\"4f2245557d1d3e3c8d033ac4e24cf4c6\";s:32:\"d68da09fafff55a9bc0f747659bfca8f\";s:32:\"cf8826829f0d8dcd084bfdd64b887ea8\";s:32:\"1ff854f029da834fabc996c369b928ca\";s:32:\"c15beb15f00e88a2e7a0d982f9566e83\";s:32:\"02372eb01349c1070f6c010167732833\";s:32:\"f132a36002dad247b2bdefc197fc6fdc\";s:32:\"3fa05afcb235fa7938e4d7599c883caf\";s:32:\"40590cf1e61547acae5ad306fcb7f5a7\";s:32:\"763083f1ed2c50dce9edd0373b264318\";s:32:\"e18e41a6d79ca791c5ac8c51b65eadba\";s:32:\"5704f1e07f28ff3be2f51c6cea8fcd7b\";s:32:\"19cd2ddd516efb2a843ad4c2ad752a98\";}s:4:\"hash\";s:65:\"19cd2ddd516efb2a843ad4c2ad752a98-5704f1e07f28ff3be2f51c6cea8fcd7b\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_vocabularyupdateform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"7a2ee547b3c1f6756120eb18c4d51d2e\";s:32:\"1ab7630bb1d8e57d2fb8f3721e7d5263\";}s:4:\"hash\";s:65:\"1ab7630bb1d8e57d2fb8f3721e7d5263-7a2ee547b3c1f6756120eb18c4d51d2e\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_resourcetemplateform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":791:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:6:{s:32:\"94753341a9302e351e7abae446acba08\";s:32:\"9ecadec7f58ef5869e855ba6992fd70f\";s:32:\"20247c0406bb80f772dd0d6fbddfba5f\";s:32:\"7acb2d1afa4c1d1c52876e24e1415a76\";s:32:\"e355336c929cff11d2c508cf2db6ce0b\";s:32:\"4868ffc1613c761b8ab585a491a514d8\";s:32:\"09556f87c3ac8ec3e9dc898781f3c21a\";s:32:\"d0b5a7c5ad3d07ac1880a0738ac34958\";s:32:\"0bedc160fdef552fe5e37161a87536fb\";s:32:\"fbeb9c18bdf5eb75423a3aefdfce0136\";s:32:\"f6f2f6de984361fd82075167712bee1a\";s:32:\"875697b052bab8f6fa5eb49e00cc532c\";}s:4:\"hash\";s:65:\"875697b052bab8f6fa5eb49e00cc532c-f6f2f6de984361fd82075167712bee1a\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":551:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:3:{s:32:\"acf535500558541d36ff8fb323665d8a\";s:32:\"4a375c3f5c48b258ef32797a80e11dfc\";s:32:\"c6ea7ef209b4a286a13abbf563aeeeaf\";s:32:\"cfdb0710cba56e6d918fa8345e64813d\";s:32:\"d657ddeb244bb9c394aea382c986b7fa\";s:32:\"a184a577bb33dcc5210e0b6763c7ec7f\";}s:4:\"hash\";s:65:\"a184a577bb33dcc5210e0b6763c7ec7f-d657ddeb244bb9c394aea382c986b7fa\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587587484),('bei97mvle3kividor2c5ped0rq',_binary '__ZF|a:3:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587543801.180377;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"bei97mvle3kividor2c5ped0rq\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587547401;}}Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"82bf2948bd4a24b6fe5a6133d613e8c7\";s:32:\"d09ae91454df1c4463517f127d5487af\";}s:4:\"hash\";s:65:\"d09ae91454df1c4463517f127d5487af-82bf2948bd4a24b6fe5a6133d613e8c7\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587543801),('cggvdcsn2mggal7g9k6ed9k00s',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587543121.080033;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"cggvdcsn2mggal7g9k6ed9k00s\";}}',1587543121),('dog5ig7ch1dedfs34m1ps33633',_binary '__ZF|a:3:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587131565.826465;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"dog5ig7ch1dedfs34m1ps33633\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587135165;}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"d27ad631220a2fb8949fde00f494a955\";s:32:\"29e92b0aee0a2d68348bcf9e0fe5ff28\";}s:4:\"hash\";s:65:\"29e92b0aee0a2d68348bcf9e0fe5ff28-d27ad631220a2fb8949fde00f494a955\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587131565),('du6es1lorojsat2168k8ft4nbd',_binary '__ZF|a:3:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587123931.908955;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"du6es1lorojsat2168k8ft4nbd\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587127531;}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":471:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:2:{s:32:\"85910abdda90714a3d09e121e403cac7\";s:32:\"7656e5ca5ea95438d46c3f69f59a9d1e\";s:32:\"5b814f62febd5cebd8b332d5f46eaea5\";s:32:\"8c6979ef4825e3d1f4fd0ab00fae9789\";}s:4:\"hash\";s:65:\"8c6979ef4825e3d1f4fd0ab00fae9789-5b814f62febd5cebd8b332d5f46eaea5\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587123931),('emtnobej4p1hfhdicjdpifjfd4',_binary '__ZF|a:3:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587025582.501538;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"emtnobej4p1hfhdicjdpifjfd4\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587028871;}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":471:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:2:{s:32:\"97fe8a8f9288e08aee12c9486c5496ff\";s:32:\"aa742b37f0d9f5ae5b0bbc5814db5114\";s:32:\"474c24caa0a9638b34b6c6a99ebceae0\";s:32:\"382f403643526fc465b28db07eab1ae3\";}s:4:\"hash\";s:65:\"382f403643526fc465b28db07eab1ae3-474c24caa0a9638b34b6c6a99ebceae0\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587025582),('fr60cho2elrqg3j2rvksg38sul',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587587679.563914;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"fr60cho2elrqg3j2rvksg38sul\";}}',1587587679),('fv4rnbh9vs6l57jlp7pi32i5ao',_binary '__ZF|a:3:{s:20:\"_REQUEST_ACCESS_TIME\";d:1586956066.578042;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"4f26o8qq3to05i18ai41jtoue7\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1586959572;}}Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"f7bdaada330fe6577da5dd3ced1bb43d\";s:32:\"20d8664bd30c8768fd50c00aac8cd43c\";}s:4:\"hash\";s:65:\"20d8664bd30c8768fd50c00aac8cd43c-f7bdaada330fe6577da5dd3ced1bb43d\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Auth|C:23:\"Zend\\Stdlib\\ArrayObject\":205:{a:4:{s:7:\"storage\";a:0:{}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}OmekaMessenger|C:23:\"Zend\\Stdlib\\ArrayObject\":271:{a:4:{s:7:\"storage\";a:1:{s:8:\"messages\";a:1:{i:1;a:1:{i:0;s:23:\"Successfully logged out\";}}}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}redirect_url|N;',1586956066),('gdmnc42tdgoms0ll032dmr1urh',_binary '__ZF|a:5:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587578210.680592;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"v8m2lm151e9o942rlp2ppeahtn\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587569339;}s:41:\"Zend_Validator_Csrf_salt_confirmform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587581805;}s:29:\"Zend_Validator_Csrf_salt_csrf\";a:1:{s:6:\"EXPIRE\";i:1587581676;}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"fbf24ae097449dbdcc3932eacd26cea3\";s:32:\"fdef02ac8269724ff511aff1f06a4aa4\";}s:4:\"hash\";s:65:\"fdef02ac8269724ff511aff1f06a4aa4-fbf24ae097449dbdcc3932eacd26cea3\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Auth|C:23:\"Zend\\Stdlib\\ArrayObject\":223:{a:4:{s:7:\"storage\";a:1:{s:7:\"storage\";i:2;}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}OmekaMessenger|C:23:\"Zend\\Stdlib\\ArrayObject\":205:{a:4:{s:7:\"storage\";a:0:{}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_confirmform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":1752:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:18:{s:32:\"dfecf994950f436ea4d1e0874cf01e36\";s:32:\"ca1203469dbd96a2116b59a56867e6b8\";s:32:\"dff062e736c854dc4ca8e6b80b64efa0\";s:32:\"a4c9f560ce57d359342035cf7845a12a\";s:32:\"343598f12b30576c1d7b2edf692cc116\";s:32:\"6167615a353299cad986f369c6a74247\";s:32:\"3250f228e8e978d054707e8aeefe527b\";s:32:\"2cc640795b95d05ee4f20690f0b7c846\";s:32:\"4fbab7f0d3389c1c67d92dc0894f2f0d\";s:32:\"cd08379bfd3bc361fe2b66dbfc2d1023\";s:32:\"8e09f529fce7f74b2afd244c47243ef6\";s:32:\"e45d5f43939166d0af49ab0b1d1c0cf2\";s:32:\"86024ffff2fa757d654d78951a99b013\";s:32:\"22ca68a4e64ba9e61166b14b589523c8\";s:32:\"c812c2260320f66d5b99cdb94c0a68bc\";s:32:\"468700eb032f10e6988a445f964795d3\";s:32:\"c28dace7b14e3432a856d0c76f32f423\";s:32:\"4c2742c3a7735c056ccaafeb16239c7c\";s:32:\"55567e72026c3775125de4fdd3f9247b\";s:32:\"0a75e607e16e2bb9104fc4909f38e88c\";s:32:\"eac1d05c3de40d0352d31a87feeda30a\";s:32:\"94bbae534608e1fe099396a0a74b3936\";s:32:\"981d2960da89585a1b7578696b4ec92c\";s:32:\"c670a8ae4c1339b03f80ef8a7b08cdba\";s:32:\"12762bc07c2dcc5d2d5a44fbc0466de1\";s:32:\"d7fd07354dca06c29723f11b5237f29f\";s:32:\"59ca65998478c66953d19e1c9ed8617b\";s:32:\"ba7793718eedd6788967f331287a7d9f\";s:32:\"94bc35903d40a442cb186f1b9105f71f\";s:32:\"2af834951fa06668db856969be575073\";s:32:\"7b7f57d1b54686ead379f8e384d711ac\";s:32:\"a96d615a4a4362b559a19825570f4a84\";s:32:\"712bf0013995439c9a9fb40ff70e3f33\";s:32:\"ef5bebff21cabd7b00dcd8185cfea800\";s:32:\"76bccc3df50010479a615a0e7313eed8\";s:32:\"4c7c678c85cfb26be065c16380b7daa0\";}s:4:\"hash\";s:65:\"4c7c678c85cfb26be065c16380b7daa0-76bccc3df50010479a615a0e7313eed8\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":471:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:2:{s:32:\"b65c89fb8c5439c8092c429f60ab8b2e\";s:32:\"951bb657c72826f8ec23fe2b20f06289\";s:32:\"ee4ab16efd583efbf7aa4c31dbdcaa83\";s:32:\"7a8ef3f557548fe33cc9dc3e310a6aab\";}s:4:\"hash\";s:65:\"7a8ef3f557548fe33cc9dc3e310a6aab-ee4ab16efd583efbf7aa4c31dbdcaa83\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587578210),('gdp0dlvu11h677i9h5jajd177t',_binary '__ZF|a:5:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587548185.918851;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"f6gsqpk3cdkr4agktn3vnfn87n\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587546856;}s:41:\"Zend_Validator_Csrf_salt_confirmform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587551153;}s:44:\"Zend_Validator_Csrf_salt_vocabularyform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587551153;}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":711:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:5:{s:32:\"bf69f34847965e52e52010b79a615c0f\";s:32:\"73bc4e3a3e6abd3b449aeb32f4a6448d\";s:32:\"a277db078c9a119b9eab11db00118a72\";s:32:\"e608d48accb69639afc02927b6f6e838\";s:32:\"6a0277c5b75ae688ab45aacb042fa5ff\";s:32:\"341d03e8a5c7ac907589bc917d5c40b1\";s:32:\"5a6630b480a65fa15f39329e6a3ea3bf\";s:32:\"707eec1810aabe15c82ea90bba8bddbd\";s:32:\"4f5082ee5968eb7f653843ec22edc567\";s:32:\"79eb5ab300f8e0d815ac467964c2fd09\";}s:4:\"hash\";s:65:\"79eb5ab300f8e0d815ac467964c2fd09-4f5082ee5968eb7f653843ec22edc567\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}OmekaMessenger|C:23:\"Zend\\Stdlib\\ArrayObject\":205:{a:4:{s:7:\"storage\";a:0:{}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Auth|C:23:\"Zend\\Stdlib\\ArrayObject\":223:{a:4:{s:7:\"storage\";a:1:{s:7:\"storage\";i:2;}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_confirmform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":2312:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:25:{s:32:\"66bf0b1fae326cf2d48d5c78251920e5\";s:32:\"8d18c798604749be5acae66bac98ef6d\";s:32:\"22f90f7c48c8d10d959f69fbc37031d4\";s:32:\"5a9b9b92492d95986b26402cabf1866b\";s:32:\"c835c925ad0eb95733d5ffe6379cb79d\";s:32:\"06b15ed273bcb33d190f312c4bada379\";s:32:\"1de74250aadef22acfdb89a646f31833\";s:32:\"889cb204dc2549b2518e8fe275d009e9\";s:32:\"82af6739f1587f99fa6df4571871876e\";s:32:\"ad08f83fa501489281b4bf2fc06e3132\";s:32:\"01529fbbc62eb451e8b096cf65b065a0\";s:32:\"758ea0a9cde4bf5f129b709ccf44d778\";s:32:\"356e66ecd4133bc414cc667b13b36096\";s:32:\"d52f0f2c18792571fa60cd76178a3b4f\";s:32:\"4874f45fbcb6661e11a2c9a4538162e1\";s:32:\"f5f124060d5eb51f0e73fcf8555a85a3\";s:32:\"a0a4377ce4757d463a9b2d05820a5f8c\";s:32:\"2af80881982fc01b37d9a73f93cc3d7d\";s:32:\"4a64002850e3a82f45498f6632d8fd27\";s:32:\"30dbc64dc4c1043f3dd50db75ad71df4\";s:32:\"a5e38f18a39abd2fcb27127689b7a591\";s:32:\"b53b954e45272e2a7b65b50aefa6a360\";s:32:\"e3778d5a3a76745b48041978c5859984\";s:32:\"e382d441b276c92efa6f5af95c6e9c90\";s:32:\"72a0615fa4a567722e09ec6ab4991c88\";s:32:\"eac61f952f749fe355ee10a6b1af80b6\";s:32:\"3ec5f8bd901b4ee2a404c8e6666cc14b\";s:32:\"e960c98f12034e4238e09d4f16ee33be\";s:32:\"8f745134119c7c45e378e5d7547d29ed\";s:32:\"e57b9f58d6300074e431c99fe697b63a\";s:32:\"8fe0c470c138af10c703ae0f44cac202\";s:32:\"56a381bb6ab24572160e3c0551f16924\";s:32:\"0f5b7a3889ab4e5b50630214b29bd453\";s:32:\"e2fafff3aaa7911c93332c0e59fd2ab1\";s:32:\"6aa641245e6593e78f476335a6dd4ed0\";s:32:\"0e661d48f273b2c0e975ec7c5d692329\";s:32:\"fce18aeb2cc26ca3fe5e6c2e8cd1dc12\";s:32:\"5f9fc6068a556afb016ed471596c8245\";s:32:\"3cfc619429e35deaa20443383f3ea038\";s:32:\"3cf4eb763c941e3062dcc96f258494dc\";s:32:\"762cb02924e19dfccdfa0ef397ad0a30\";s:32:\"1662a0d23cad39768a8c8cfd5a4a347b\";s:32:\"de382e0f85f190527ee475a7940bd9c4\";s:32:\"b3d005025f9d8b77993c09a373eb2310\";s:32:\"fd00187d0e1922f9fcae871ac110beab\";s:32:\"4395c3b376fe9f41d25129c3658a098a\";s:32:\"764b69677082b9e59ab720a591056680\";s:32:\"33db8a1675594e986bc2e99e390960cb\";s:32:\"e2ac9015070d7cc7d1c9eb59a29d8e4e\";s:32:\"44e7b4c37afb84c603b9a9d651ef22fc\";}s:4:\"hash\";s:65:\"44e7b4c37afb84c603b9a9d651ef22fc-e2ac9015070d7cc7d1c9eb59a29d8e4e\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_vocabularyform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"67c7d23b9f0d5bcb62d2ccb02335f0f7\";s:32:\"1a98996ed63272fa0cfd1ad764673cd2\";}s:4:\"hash\";s:65:\"1a98996ed63272fa0cfd1ad764673cd2-67c7d23b9f0d5bcb62d2ccb02335f0f7\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587548186),('gem23klr57odgqrrg5a30dk5fo',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587543120.756143;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"gem23klr57odgqrrg5a30dk5fo\";}}',1587543120),('hk73c5aj495vusriestoubmjcp',_binary '__ZF|a:8:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587024533.791976;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"877911t57sqtv5u4pn4sn0o7up\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587025029;}s:48:\"Zend_Validator_Csrf_salt_forgotpasswordform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587025026;}s:41:\"Zend_Validator_Csrf_salt_confirmform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587025037;}s:50:\"Zend_Validator_Csrf_salt_resourcetemplateform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587028133;}s:44:\"Zend_Validator_Csrf_salt_vocabularyform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587027798;}s:56:\"Zend_Validator_Csrf_salt_resourcetemplateimportform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587027830;}}redirect_url|s:30:\"http://localhost/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":951:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:8:{s:32:\"8e0f7a63dccfc3cdd5f74e4832302b04\";s:32:\"abaaa06312dbdaaf0dfd010e9fae0ee8\";s:32:\"d9e4ced18bd2d5084fb6a8c0b9c88f8a\";s:32:\"e00687a4c958317b9290d33a1a702d2c\";s:32:\"1ee7e312c16474f8394d7bf61b9c4b49\";s:32:\"b1a6df1cac7f1960318c821c7725c95a\";s:32:\"7f4c58703abf1944b3179568e20594bf\";s:32:\"aa1ece4fc523bb69bef75b78221c2419\";s:32:\"ff42e8e15aa994a446cf75f67fa90ac6\";s:32:\"9e63e5afdd230a8f1eec8c89774f19ea\";s:32:\"cd30dc3c9e68392f74cfe1f0d019cf10\";s:32:\"3b1bfa2a02f47dfa55de44cc523d0e3a\";s:32:\"d262dbfd518e9bb3fe071ba599231b53\";s:32:\"d5af3edc1d24c5c4fa81a17a9e5e6af1\";s:32:\"bc67aa7702f4b6b1ce6e6e6a70683123\";s:32:\"b881a346cd7cb6ae45c5074fb4425763\";}s:4:\"hash\";s:65:\"b881a346cd7cb6ae45c5074fb4425763-bc67aa7702f4b6b1ce6e6e6a70683123\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}OmekaMessenger|C:23:\"Zend\\Stdlib\\ArrayObject\":205:{a:4:{s:7:\"storage\";a:0:{}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_forgotpasswordform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":551:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:3:{s:32:\"2909d8f8b4d41ee897df379538a478af\";s:32:\"ab90d625a1c617f28939c17159e161b2\";s:32:\"15e3a23113213d756aff628509f283c8\";s:32:\"8f60adf061779a24fa969161fa2d7a73\";s:32:\"e638e33c748c8506b7c451f14ed67c03\";s:32:\"d9082179c724fb58c0a9a66847690b1b\";}s:4:\"hash\";s:65:\"d9082179c724fb58c0a9a66847690b1b-e638e33c748c8506b7c451f14ed67c03\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Auth|C:23:\"Zend\\Stdlib\\ArrayObject\":223:{a:4:{s:7:\"storage\";a:1:{s:7:\"storage\";i:1;}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_confirmform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":471:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:2:{s:32:\"b5fa98ecd45b5fc412365fca77b22da1\";s:32:\"a4706303443e860da5fde5fae8ba8041\";s:32:\"f645b4434d242a3ab0d491f2ce554cb9\";s:32:\"b53d267e4ad619a046b8b625d144f70f\";}s:4:\"hash\";s:65:\"b53d267e4ad619a046b8b625d144f70f-f645b4434d242a3ab0d491f2ce554cb9\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_resourcetemplateform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":471:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:2:{s:32:\"fb5657f9b2136843310f04cb510f142f\";s:32:\"26f18d86c7bb597af831a1f856bc3029\";s:32:\"45f28d5b1a6e347b8ca0d52198cea6ec\";s:32:\"130141adefbf47b10f958850588e92f5\";}s:4:\"hash\";s:65:\"130141adefbf47b10f958850588e92f5-45f28d5b1a6e347b8ca0d52198cea6ec\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_vocabularyform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"e977eb7d26974ee0b2b0b01777f15590\";s:32:\"a9fc44748faabbeb1b2965e8ffc8a422\";}s:4:\"hash\";s:65:\"a9fc44748faabbeb1b2965e8ffc8a422-e977eb7d26974ee0b2b0b01777f15590\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_resourcetemplateimportform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"c2ab7f0d54cc495707ef3e53431b3038\";s:32:\"d7e0c30164f6c61b4a5571b2f85f1f5c\";}s:4:\"hash\";s:65:\"d7e0c30164f6c61b4a5571b2f85f1f5c-c2ab7f0d54cc495707ef3e53431b3038\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587024534),('itu4t74947816ata4fpr32obj6',_binary '__ZF|a:7:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587034668.97123;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"0olpejcilja7r6j685e5ar6dv4\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587028480;}s:41:\"Zend_Validator_Csrf_salt_confirmform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587029237;}s:29:\"Zend_Validator_Csrf_salt_csrf\";a:1:{s:6:\"EXPIRE\";i:1587038249;}s:44:\"Zend_Validator_Csrf_salt_vocabularyform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587030099;}s:50:\"Zend_Validator_Csrf_salt_resourcetemplateform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587029216;}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":471:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:2:{s:32:\"216c554956eb93ae517ecb7b4cf527f7\";s:32:\"fb46dfa3d3b59aeb490a5e56edfe0854\";s:32:\"a6b8dd4024c5d1d4bd14c65ed47de69b\";s:32:\"b26bca2c45cb8597390b172fb00564ad\";}s:4:\"hash\";s:65:\"b26bca2c45cb8597390b172fb00564ad-a6b8dd4024c5d1d4bd14c65ed47de69b\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}OmekaMessenger|C:23:\"Zend\\Stdlib\\ArrayObject\":271:{a:4:{s:7:\"storage\";a:1:{s:8:\"messages\";a:1:{i:1;a:1:{i:0;s:23:\"Successfully logged out\";}}}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Auth|C:23:\"Zend\\Stdlib\\ArrayObject\":205:{a:4:{s:7:\"storage\";a:0:{}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_confirmform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":1192:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:11:{s:32:\"dba9e13d32638c91a244568f1759cf15\";s:32:\"d97660d6bfebb6ceb9bf9db680fbcd84\";s:32:\"8ce0fb674f248a3c0df758dc50d8f2d9\";s:32:\"4bf07fdb42a2f0e4e7049ab837934530\";s:32:\"0dd2f98bc8518ec6ee4d62f090efad0b\";s:32:\"eccce178dcbb2570ed82b9e4027e4c75\";s:32:\"14f6f338ea00efaa9f9296a4fc8a5c16\";s:32:\"f13c530aa71ea78bf68b8255fb0bc610\";s:32:\"856a7846341f8a47cb3a40ebbfbf0306\";s:32:\"bb4ab3b0beac326af4973044ba675176\";s:32:\"fdf9a5bfb22f4c04511b1fa71177ec34\";s:32:\"0a729381f79177bc3c26ab5ecac4b7c0\";s:32:\"5c40a5a0d8e7a5fe1069b9dbebd9b131\";s:32:\"85ef040a57953a4a0cf996096cd16253\";s:32:\"c3edd8ad8fd4344a76332e3a6d11594a\";s:32:\"d07639a0ce711d4b868d5c138a4d7277\";s:32:\"57dca5ccaa4b981236b5910abb427250\";s:32:\"1b33cc063a63a97e5c39eb7ac8260882\";s:32:\"793d9ae8b9241348d8032d56ce42aa49\";s:32:\"3798b5bd26f1f14b9af5734586f4e45c\";s:32:\"1104640d9ade80d1be00254b25c41fda\";s:32:\"e4a2b0f813aa7b66d167dddce4d98e61\";}s:4:\"hash\";s:65:\"e4a2b0f813aa7b66d167dddce4d98e61-1104640d9ade80d1be00254b25c41fda\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"d10e92b4eef2dbd3535313e625b94524\";s:32:\"e7df62e30763dcf17ce211389ca136be\";}s:4:\"hash\";s:65:\"e7df62e30763dcf17ce211389ca136be-d10e92b4eef2dbd3535313e625b94524\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_vocabularyform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":871:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:7:{s:32:\"53c16fe7d2d50265a2955fd0bec80e86\";s:32:\"8715e79f5df87d268bc641026691af98\";s:32:\"0ea4d45851c329b4bb32f4c8c350fea9\";s:32:\"0d4af9b06e1beb9de1ac01e189d7d4d4\";s:32:\"361e4ee265463e4af04a21a17b9c94cf\";s:32:\"e40c921a7d0fb215bbabbedac5e572d7\";s:32:\"aceff0b172d1d372d35daab44c6b72d6\";s:32:\"ce9b97336e8245618a2c5c02529164dd\";s:32:\"41cbd89518d4cdc0773923fcdd425ff2\";s:32:\"2e5441d624565928159f20996d951333\";s:32:\"d74b14948ed525be01fe3969cd5dba56\";s:32:\"7d7fcef0b78e1445be1b190cb924a94e\";s:32:\"a4f17b32a61e6b325ead4f89d6166b83\";s:32:\"fc1bce0c6c83b791051d34df943e8f66\";}s:4:\"hash\";s:65:\"fc1bce0c6c83b791051d34df943e8f66-a4f17b32a61e6b325ead4f89d6166b83\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_resourcetemplateform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"0086bafaa0a75ebcd86f9965860a696d\";s:32:\"b96d9d5490924b555023b8da4b5c0263\";}s:4:\"hash\";s:65:\"b96d9d5490924b555023b8da4b5c0263-0086bafaa0a75ebcd86f9965860a696d\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587034668),('jnnptkqh0a76b4iuiojhct59qk',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587543121.719314;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"jnnptkqh0a76b4iuiojhct59qk\";}}',1587543121),('k7tio1nvq93i8f25ggp63stvf3',_binary '__ZF|a:11:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587136501.40542;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"h54kmr3tkvmj69j9aprihs796r\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587127325;}s:41:\"Zend_Validator_Csrf_salt_confirmform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587140071;}s:50:\"Zend_Validator_Csrf_salt_resourcetemplateform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587139231;}s:42:\"Zend_Validator_Csrf_salt_sitepageform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587134814;}s:29:\"Zend_Validator_Csrf_salt_csrf\";a:1:{s:6:\"EXPIRE\";i:1587140071;}s:44:\"Zend_Validator_Csrf_salt_vocabularyform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587140060;}s:50:\"Zend_Validator_Csrf_salt_vocabularyupdateform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587134176;}s:34:\"Zend_Validator_Csrf_salt_form_csrf\";a:1:{s:6:\"EXPIRE\";i:1587138319;}s:45:\"Zend_Validator_Csrf_salt_customvocabform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587139969;}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"dfcf17d12f30dbc46cb59f753bdc5f11\";s:32:\"9f917835f3f0b424227b71e102a86d19\";}s:4:\"hash\";s:65:\"9f917835f3f0b424227b71e102a86d19-dfcf17d12f30dbc46cb59f753bdc5f11\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Auth|C:23:\"Zend\\Stdlib\\ArrayObject\":223:{a:4:{s:7:\"storage\";a:1:{s:7:\"storage\";i:1;}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}OmekaMessenger|C:23:\"Zend\\Stdlib\\ArrayObject\":205:{a:4:{s:7:\"storage\";a:0:{}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_confirmform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":20233:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:249:{s:32:\"afe84d742783fbcbac95c1290a570ba4\";s:32:\"abd59ad5f4fbd2122e4b34d6e939c371\";s:32:\"86802cf85cdc28cdc43861843c8c9df9\";s:32:\"6b43089896894b486ca34f97aa3dbcb7\";s:32:\"786dc7d9450a20ff1ebc5409fe621d27\";s:32:\"7293805b30c4a00ed72c4013649fa336\";s:32:\"e6e57baffa42bff1ae8da8611c55e78e\";s:32:\"6aa06f5bd71c422f3d7601dd4d47f786\";s:32:\"c60285bc435d1f25e984e711bf0ca863\";s:32:\"21173571276ce034518a4bca41ceb06f\";s:32:\"694ec71b268440e86d3cc9742dfd9d48\";s:32:\"7475ff218bd9c2a6dcc8b36f97211e66\";s:32:\"efb4b7d0d54a55c89a5c1fd21981cabf\";s:32:\"14a4eb6f660e6c72d4501416daa64658\";s:32:\"5c341952c5698508b8bb0b66e11d783b\";s:32:\"b80aa139b42c7b10ae7bacfac35ad0ed\";s:32:\"5cdb43ee24a9492f511ba0567e0ceb70\";s:32:\"e16476b1a20eb85a62e31093ba08ef14\";s:32:\"a99361f39098d45a35c7981f33509576\";s:32:\"e756128c17ecb5c41eeb061975062b72\";s:32:\"3bdfe55b87ed63bfc95bf86c46a14bd2\";s:32:\"0141e45a1a07677179be154ea552579d\";s:32:\"db04790b303aa711c0881982d4da5976\";s:32:\"70ecd6a641e0ea54182e2d016a9b4a65\";s:32:\"a8e6157a8bdd5385502f16e89c2e2180\";s:32:\"69b4daa39aedd97bf712d6bb9fbaff4c\";s:32:\"e6e8c412b1b5a0ff62a7c6242e1ac476\";s:32:\"7c7e72c648e6c3456808e317ce6176a4\";s:32:\"8d0ddb9eb3439514f16d624d74418b00\";s:32:\"719fb26f5c28683b35291f370e330a1c\";s:32:\"84fea78f277879fcd9f2b3ab5246b863\";s:32:\"0361b696e3110fe2c28349cdc823d29a\";s:32:\"a02426b26e7fc6e8e69af4e692c20efe\";s:32:\"5f7e95dac1df4bfec85019b7fcb86cd9\";s:32:\"f709d7fc6460998fc2731cd938cc4110\";s:32:\"2b0bb15a15ac78674bb4aa95ba3f2c1b\";s:32:\"a04b17ec50901b589182bdd82bae9e5c\";s:32:\"85bdce1c2b9b3716fc66f8269e5342de\";s:32:\"51d46611836f6a0125f1defa89370a87\";s:32:\"7f46c67ad043914ba3285bc4e9abf5ac\";s:32:\"f71816b2b933e6e4aa1b1097f3f84e05\";s:32:\"0cbe9b73335d2b7ed5253e1856c5d35b\";s:32:\"ef74554f4e5a95cb57ee851c1ee0a2f9\";s:32:\"279522f22b6e3e4bab6091b5f6c28da8\";s:32:\"c0519cdad633a2b96fb4f95e4d377bf4\";s:32:\"19bac8d5d727689581b57f668828f66d\";s:32:\"47a8d2255b214e57dd88bc254a7d5596\";s:32:\"2b24b3aa602e1e1de0535f66e792a69f\";s:32:\"56aa9c1bce398d3b3569df76fc444880\";s:32:\"d9e0e185e5814a15624ebb24369504b9\";s:32:\"f42577ae9627c03921e624084ee3115b\";s:32:\"0fa4d88f5f7a983568746b2bf3eda7eb\";s:32:\"14eec76dd4016f2b1b8036207e12d01b\";s:32:\"e528f1ca3d75a72d2d6073f2243e4a74\";s:32:\"cc333918d02bb98a89520812093f1b71\";s:32:\"4f903a37e9561615dda326cbcc59d343\";s:32:\"5f42034b96beda71bb3dc10a15e15472\";s:32:\"ddaa472d779547ce51f8640d3ea072e7\";s:32:\"34b16b41c0a2b995deb5eef03ababa96\";s:32:\"7d4e6e9e657252ab239c51d2e9340b40\";s:32:\"21568378a3dedf6763ac527ecfab7dc6\";s:32:\"5ac6e0ab9310a0663eb46127648b2ce7\";s:32:\"3adbd61accbc3370cf9fa85cb99be194\";s:32:\"44c7c136f1047088b5b6a421c78bdba7\";s:32:\"3827847bf1f0515a98ae3b118fd6415f\";s:32:\"94f4b02577de198fa3cb30dbe885ee5c\";s:32:\"8497f07217530861672f17f9c7575723\";s:32:\"c7404037aef7de7a408546712296c0d4\";s:32:\"3598325866b1f395c197748d96cfc094\";s:32:\"097578777ff1a7d974ed8cce9fc540b8\";s:32:\"f619d8f946025d93fc1d7ba68a6eaadf\";s:32:\"bb2f84b4fdf12f2f9543bc649e1d1f18\";s:32:\"eb7bb7f9d768360c3e97064bde6f632a\";s:32:\"f27ca2b3de38eeea0fdca6264b8c0c77\";s:32:\"f0fc529c4cc276a71efcf5441c8af0f0\";s:32:\"6352ee25b3d9309feaa5d06a78fed9c5\";s:32:\"caafe013f206468a396118d60f8c6d5b\";s:32:\"a7e394f0d8db6327be8b1cd5d73c5194\";s:32:\"6fb3d04b4b9139f4f18c33f3f8957ea1\";s:32:\"80c0a7732cd0a5b048cab4c8a38aaa67\";s:32:\"a19b5a478c1ede4a9ff431b4078fdcb9\";s:32:\"98ef48c70dc4128048ac30b7be2008b7\";s:32:\"0cc36cff25a5d710d5c0fd5e28736e5d\";s:32:\"c8daa9b83a2023b3958ff7a5d73c28a5\";s:32:\"2e304b5cd127660b322b34dbfe3bc0de\";s:32:\"5e4c6aad4b5747f019075372881af789\";s:32:\"85c2843f309ef9637b0eb9e9f541fb55\";s:32:\"d96ae6f0a00ad17b2bd6aca89c087a61\";s:32:\"be477935a453f3a15406459cf9ef91f8\";s:32:\"69eecc9bd69f89da276352a613a6e4da\";s:32:\"dfb6d3a9ed735ccc04c279442245eff0\";s:32:\"8eadea1d5992af5fea20f152b1a504ef\";s:32:\"a4b181627ec5fcc28e35a6c06b0ac87e\";s:32:\"eb7afebb66d6554076bdb6a3ad5a46c1\";s:32:\"3b1ea004fb5bf3f86d4825f967a92992\";s:32:\"d9c8c1a4b37fe1750eaa962c5e14c610\";s:32:\"7cd870f62586b630debe9ff5c74c2533\";s:32:\"5d60135ef1c8ad9edd304cc963c4273a\";s:32:\"de255d95532db30ad6eec90ed1176cd6\";s:32:\"5cabe0685761ae8101793d77ae2e8f5f\";s:32:\"465688ebadfc61018958eaf8e688c2b2\";s:32:\"b4f6c0c292e12492f7c160a455ce106d\";s:32:\"b1cf6db040386a47d318a79102a4db0e\";s:32:\"61eca6491e67f3371f412762dac65c60\";s:32:\"5e71b62c744ecb6ab7c6092ebe529ebf\";s:32:\"c10b914bd739d358a2883e13713dd43c\";s:32:\"83013d359afc0b94a76a29e6118c5ec4\";s:32:\"61161fdc58307d12d6d06b9404ff4c1e\";s:32:\"1c33426fd865eaab59540d9b5dc5eb02\";s:32:\"1a722fee354289c5d0eba8480697644c\";s:32:\"cad0c049ac93829b0b8dfb23e3b35e44\";s:32:\"a58ba7daefbbe12ee3dba03cbdc2f5ce\";s:32:\"ed17e1773925ad32c89b3e28e6464a45\";s:32:\"40c841f82222ca1276dc0bc65b976307\";s:32:\"0ac02b50547d42f980937861574bbb06\";s:32:\"5cedd8d03a58f6e48b547a0ed143d6b4\";s:32:\"35587f20b8bd50f50be653a5bf0ee49b\";s:32:\"6fb8a4258146216e84adff3cf4f85ce0\";s:32:\"ebd206f45b813878cbbc4dcc69d058b4\";s:32:\"1fdc0b856a0588a9b18afb7238e166df\";s:32:\"474d8177610341ea0e61487eee51be6b\";s:32:\"5e9f595215761b8662a8960dd1e17ee6\";s:32:\"50b0fbb1e9464ff8ec0a4079411c11f7\";s:32:\"58c88bb221d616aaa7266980d7b93c29\";s:32:\"a5b7321e05b0afe46225e3067cb2b1d3\";s:32:\"1cd76beff0c48f2999fcfd661b01fb24\";s:32:\"c56e4ef26365e6eb62400158dd83e7bb\";s:32:\"1899f37b2282ea65a1769e0c83dbd032\";s:32:\"1cafcc2dbe565fe928b85bbbfd75f667\";s:32:\"f059fcc666dd00510c6b7041e7b15389\";s:32:\"a0b65308c2e4d3e0db1528bd0c946c44\";s:32:\"f7d1d0ad8fb44392a9e5651853beabb0\";s:32:\"7bcbd5e0f549cd2773c1236654d4eda5\";s:32:\"5144a658eb4329e5175e730bf13735a3\";s:32:\"8d1cb94d45f79832e4d646cfa00eba25\";s:32:\"7a0a6fd5a967940d137f4d94376904e8\";s:32:\"a26211d383bc4805f82c35e3d16d759a\";s:32:\"cbfa6b5bd63df33b33e46c5693cd67f9\";s:32:\"86ff2ad35d6aa72b55abb38c5c991cc9\";s:32:\"65a91c49641238649fc6cb8fd0ed987a\";s:32:\"eea169f4deebe8cb804738a5945b0b30\";s:32:\"cefe48b7841bc1dcb8db86c46f570ebe\";s:32:\"0522a59847bc3b1666640268d0bb47ee\";s:32:\"a3c5347195e01c002366fe0b993cb6ae\";s:32:\"561fcb0d880445404a6f9083e559bed7\";s:32:\"fa7150842429713db502715963cac5d7\";s:32:\"067d7cbafab8f5197cb677fa45fb7b5d\";s:32:\"c2de67ccfc9e2347e51c2f0bd00ce722\";s:32:\"aa16d72fc4113bf9a4c4c15253f20f84\";s:32:\"2eb95565ef766fc6e1ccdd4f9e8ae70d\";s:32:\"3c2142cff177b4419fa62c2dbe9dd38e\";s:32:\"47ff1b5b3918e2ec9562ec2fcf2cb8f2\";s:32:\"824d628d19fadda9e76bdd0872863033\";s:32:\"0f29f6d3e177aaedb2035f675c6fa0a4\";s:32:\"4732976899f40617b1f7cfa560f5c7e7\";s:32:\"0071df03f74e324dba3fb8f589e27543\";s:32:\"726d96e33c3f537083e5855460ff4dd3\";s:32:\"eb92a41877e425ec7267db5d61f397c0\";s:32:\"fbe611b2f0527588ad40f5d52bb7aafd\";s:32:\"7dd11d4bd775660627c5304cfffde078\";s:32:\"aa6c3611238415933cec9324965548d0\";s:32:\"c9ce00e14fd46c29f702571581687f43\";s:32:\"de57a179b6f8b2e538c5736a456136aa\";s:32:\"ff2f0fe8cc804010de35ef82cfdaa118\";s:32:\"a62a5472fa0e149f61380a75de42f5d5\";s:32:\"d47e54d9183c7eaf70e05f7d268e9c8e\";s:32:\"42613912fd8f443b8b65eb0c14e2a21c\";s:32:\"636de225d45a06728a25faf6b1c43425\";s:32:\"022f43bc50ed070194485f12876ee138\";s:32:\"ee8ed5818636143cf8409d64a05dffe1\";s:32:\"05924d82d3d17e69de0909ecc126f27a\";s:32:\"484ae9bad6d1144692d003feead945db\";s:32:\"b204db438877bdbea8149b2e25eac6e1\";s:32:\"c7d962b2b5b8899bf05a5ec023e18199\";s:32:\"0f2885ddf98beb8d2d2eb80771359502\";s:32:\"15f2465c1e4197294fb65d742a478ac0\";s:32:\"53e996776558c9b3d4ff6d1fdabe96e4\";s:32:\"376e68cc6afaf8622a7fe4c98060b73c\";s:32:\"4463bb8b388b33fed32500496a4adf17\";s:32:\"b3708c22ec7f3888ab76d6612e800901\";s:32:\"66030fd8d96249bbcdbb70a60d1bfe97\";s:32:\"6753639ba38be30dc567b12831cd72d5\";s:32:\"b6ff7a16854fc89e1c289404d26ef9e6\";s:32:\"1e8c82714bec46edb90b71d1244e2f26\";s:32:\"b1eed30836951293b1a034dbac346fcf\";s:32:\"bbab892dd5ef750d550afad811e2a8d0\";s:32:\"70148185f8f1137179a717c2dba91d78\";s:32:\"529fe7c9ce51673f92537f6f0ae305b6\";s:32:\"1bbaa460d4d9e6189bd0e6867a2bcdf3\";s:32:\"8059319c3ee6499e0272728885c058fc\";s:32:\"b05f6cadbf3f06d13d95e28a183a500c\";s:32:\"c6f09610e69e5b1d8657eb1c3ddbe42b\";s:32:\"471c857a7a207a0708005a9fa32409b6\";s:32:\"89558dd45db6adb84f01ce5584d398e3\";s:32:\"357de44b8b3896cea38998561efb6968\";s:32:\"12d1db4e51efa20be52cfd9f7ba05466\";s:32:\"453447e75e4110225f4f8815a5ed268e\";s:32:\"d62d8932b272a1b59743040ba92381fc\";s:32:\"72fef5431936432bd68b0a93db0866d1\";s:32:\"0517297f9c0a622f4c9cc729933274d0\";s:32:\"7dcb7db689412d01523052e7293e6dac\";s:32:\"d4a8d64556fa819180c6980efa876090\";s:32:\"f217ddddd443ca506e2c8c7afa9d61c3\";s:32:\"5f87eaa04164cbd5450677fc35dd7933\";s:32:\"11d72682107bde353b938f521ece15e0\";s:32:\"0c5f6d088221e299ceafeefa0b2b8ab2\";s:32:\"c796b06bdeb12644600d6f4d84578287\";s:32:\"022bbfec5a5affef9f9f1f0344f5e4fe\";s:32:\"5484160f0ca045043d3ae2e5a6f2b4b5\";s:32:\"dfcbee102d21b7382bacbbdab9594b49\";s:32:\"ed19cdcd7f6f282f03693797d104e393\";s:32:\"746a60793d4a968f5e7d11744f884bdd\";s:32:\"111fdb1669a8dbf94b3d4f1f384d3f67\";s:32:\"3aa89065c0c1e96f9b5f45e7a4c5b96a\";s:32:\"b463aef5cd8932957052d234d72b046c\";s:32:\"f37e05d6121e12d8ca15cb969d996b02\";s:32:\"f2cedc8e8a835d5ec57780e95671c545\";s:32:\"68d12628f5fe5675f992aaf640bcbe90\";s:32:\"024461015429f3ba0a0f0ee43d5ee817\";s:32:\"a1d14b092458647248829727b60372db\";s:32:\"fff6247308de8ae1f8209b1d6de5e1c6\";s:32:\"f8ff92ca35daf02ba0c4a7359be3b1bc\";s:32:\"357bdbe26314c4532a0f7739376f1500\";s:32:\"c47bc941d47e83207b1347dfb50d53ba\";s:32:\"06bf29c9b87f922f1406773dd85992c8\";s:32:\"6f8e0c9f27d7fa0db1218f98337ec2cd\";s:32:\"8d7a7adbe7f14953a8c3c8dd0257f8d5\";s:32:\"9eea2f9fa48fb1727691a49c8af8a83c\";s:32:\"a7564c05d2ac6474340f217eed261301\";s:32:\"fa9c75d524cd7baf058a38ea3bd7803b\";s:32:\"50d37fef86ca4107163a92de5cded533\";s:32:\"7904744a67252b922e39a1f51d38638d\";s:32:\"bb9acb2fc13ecd7390476082d2cb0930\";s:32:\"002b98f913c970076d0c6dad22e25404\";s:32:\"b55f3fed9d8035fbce416c3646d1afae\";s:32:\"558048cc2f384c73a4afbabe358958e9\";s:32:\"26207cbab9bcd1906ea1ddf70ffc8dd7\";s:32:\"d187155772cca4788fbeea9b217405ac\";s:32:\"7aa0e76b95649f01233261347a53634f\";s:32:\"9e5266eab3bb5d901b99e043a9758462\";s:32:\"820e039f72e9ac88ce36afec64d56abb\";s:32:\"aac93ee7b1ebb4e11458ddb4f18c0412\";s:32:\"3791fbcb5273bfefa00684ef666b2753\";s:32:\"9b31ad3a829be46c36c2c60ea71f160c\";s:32:\"c17e65c64debae3f8900f5aef6f041ad\";s:32:\"f5240a7380bbb67b390b809af295c6c2\";s:32:\"e8200ae84b89e78fa1354e5c71fa0740\";s:32:\"bbf174455259c8681a916a93e3079a5c\";s:32:\"29cfb85bea63293c78bbc9f4beede6ae\";s:32:\"fe4fcbc1433c2e332b71945fe6dc3923\";s:32:\"33dfa86254978349652eb9dc437c1c55\";s:32:\"04e9acba163407f8d4fd599161274cb0\";s:32:\"b65f660065aba23846f1331b2296caa3\";s:32:\"45324ffc3cd3d6b108280dd0aee2be37\";s:32:\"d6810f4f647c6a50789af4f73f821846\";s:32:\"43b65f4c3df2deed026bc1c68c4e4bdf\";s:32:\"0d06a2107e3b8c9f7b82bd6018192ade\";s:32:\"239b881823ce8230edc702bd6c062ec3\";s:32:\"d8e54ea1f9270275fdca16e4af579f69\";s:32:\"dcc31920f7383ac3ba29f502366ee374\";s:32:\"b284f01782679a66d6c524f965fb0b3b\";s:32:\"ca24612cb0256203066d340f543b7b15\";s:32:\"5d66b9f2ae5031038fcbc02e00373f42\";s:32:\"d0d7effa7f9a8dab7e3b399d21e8ff6b\";s:32:\"e75e6fe6bf032173603b062f09e6a7c5\";s:32:\"733ae79cf4903922db2b39a99d9e39d2\";s:32:\"b84a554dc45c51205da34a8db3c9b3b1\";s:32:\"d5c9373e9557a4c076c50f86162c20a4\";s:32:\"27f9517fa07e524988d6e665edda00d6\";s:32:\"7a8869c5c3b5c93f8770a9f6f0bd90c6\";s:32:\"79edd67ee616db78747499ef8dc0e464\";s:32:\"ba18a3e73aff54a6185bed18211d78d1\";s:32:\"cae0408bb001a7f2fe28e5c00dec969c\";s:32:\"fd1658cd1f86b66b4ad845670e97e607\";s:32:\"78dc7e6a3db6e35af6923fb32c411366\";s:32:\"d739e01f177eff58500e9e0a35c0125b\";s:32:\"a774379965e1d6162941ed190543743e\";s:32:\"7ea0765aef8195b605b4923f547e941e\";s:32:\"7c4157741cc38f0bbf86eee62c4ee437\";s:32:\"25f9e2fb7a77f2a59e1476c40f97e25f\";s:32:\"0b43ae6745feb6a00eb8fd2f2e21deb2\";s:32:\"cd2f71824c22de01c4fbb727f0e08813\";s:32:\"8a80b4e0a8fe6663a1137f7e2e04c2d2\";s:32:\"12f5275369dbfa75f7c56cba624e14fd\";s:32:\"ebfbdc3838eab31724c1722ff204b9aa\";s:32:\"7afc63ec58d82452b26e13dbb6cd5566\";s:32:\"908883e5f694ebcf8585e2af40938d17\";s:32:\"578d6ae16b5f23b47e6579ac0f146052\";s:32:\"3a04e07d10dba309aa3664cbe6258a2e\";s:32:\"ab8752599264abf91259ea4ea7721b8e\";s:32:\"9dd14116095648469afb07c0e064840b\";s:32:\"f6160c2bb146b51469617fedeec9abdb\";s:32:\"562d6e8c075dd4efce394e0d67f770ac\";s:32:\"17b9875770008e9d128f7c8ee884fcc4\";s:32:\"3446fc9aa9e76269ed4b33bf41052eac\";s:32:\"3bb6556abee92106d3e1edcdb0b3c778\";s:32:\"ca0e82956912d881ed1c36e3043b1251\";s:32:\"684f084ac2bd6f86f593c8a80b12395f\";s:32:\"cbfb823d69a7a404a73c28f5e91241bb\";s:32:\"08aef89fe5cc06aab88d09b2b3a03963\";s:32:\"60db9e72ae538793c1da53ffefa7f900\";s:32:\"7f20e5077e6fa569c71bd5153e702eb0\";s:32:\"c5d5e50b1e7d0e598187100e2ee37dae\";s:32:\"fc1e959025ace01557914b3da3a50425\";s:32:\"e7d372401e49ae381e5f0c34a8c75d50\";s:32:\"5e2a360aed8577fcde816483c80af5be\";s:32:\"5ee1864edf80cfd6098ecf001e006f46\";s:32:\"4d5c082bf41f40345146a492f8e0735d\";s:32:\"881381d796e671652e380089e9b2746d\";s:32:\"1b63700acb4ad091397965314f7069ae\";s:32:\"70e11959838e0964667ea36ac332e451\";s:32:\"11ae0e456b98274dd0f682e1ed0fb8a0\";s:32:\"3b0479296687ec94dd4ccc6b71b6fe94\";s:32:\"f89815c5f7d3cc92b3d9e2c40a64faad\";s:32:\"48e6ab790a9c2c33d7570f64c10ec9c0\";s:32:\"f4dc7fcb67fc3f6f18aa72a1b7072619\";s:32:\"6419018cbdc74393321b20517bb0dada\";s:32:\"cdedffbf6fa74771041add46f71f8016\";s:32:\"626902cda8aa60e7f08434f98458ba70\";s:32:\"8fb0dfbb13fae73dd938e4f754761cb5\";s:32:\"62309c72c85e4cf50c92b8313cb43b3d\";s:32:\"116c8ed10335212eccef434821ae72f8\";s:32:\"9568a7e59837d16c9f9a90d4f74c67a6\";s:32:\"bbe0b4ad725f3b0f06854da6d948af4e\";s:32:\"f2784d5ee62c2faae1d824ad2d995526\";s:32:\"42590793e61c8add7b6ad76fb7b6f13e\";s:32:\"118ad12ae0ffb1707dcb6878910734de\";s:32:\"a6f2136c84650fd9410f4df08c0de781\";s:32:\"1502f53b4c28d3292ef6672efe7de414\";s:32:\"a5fccf74b7fc422019520ab7c3795582\";s:32:\"3b4df15862b3be8457c878f2d208f047\";s:32:\"b19045caa413ad53eb3491319683014c\";s:32:\"e86861fd4fbe94f7f52deb7c1069da36\";s:32:\"d707e9c2ae9e0cd06103d6450f7c5d66\";s:32:\"c2329273a60f5698e29b5961f2b46901\";s:32:\"b522ad6820cfcf0d17b0232771ada67b\";s:32:\"403e32fd107121dab71bc814b3b17022\";s:32:\"365a98f63648e732a92c790211cd0d50\";s:32:\"30a3bd905dc3e21f1b9674632f716beb\";s:32:\"7a7664c6b08e06552028e54b4ee48275\";s:32:\"00fd35cde5e92a5f3948fb362c61374f\";s:32:\"55d1ba0be2e95d0656ea1d03042490ca\";s:32:\"d3e4171bb1c4d0bdebe1b347855faca8\";s:32:\"a69bb44b641c4082c8d5920f721ba652\";s:32:\"ea5c36325cf68d3bf6ad8c8220b9921b\";s:32:\"712e9d16b23df4e3a97ff782599dbb80\";s:32:\"f29abaf02bfe79b4498631adfbeb2f2b\";s:32:\"9445ebb3e4fcd161f1faf1b1947fe9c8\";s:32:\"4db2a09837d9f7123043810eb73ad160\";s:32:\"c5185b81b1dc1b164317bb9d599c09d4\";s:32:\"0d6d5822f527d3feff0cbbb114c034c0\";s:32:\"8a2b4448d5edf9178172795cee84333c\";s:32:\"840cff492bdd28bf108a5ce294b8a8c3\";s:32:\"5c69563a7417b53a2d982bfe69ab7f8d\";s:32:\"0b083b511be851639721f0b70d9b9838\";s:32:\"4c80bbf6268f9f943957dc01422db6c6\";s:32:\"aa2380682009f9eb40a3059c871ce14a\";s:32:\"1c1f690105ce6fc2861cc00923d2a274\";s:32:\"d6e83a1e546757c8e26454b83e6bac07\";s:32:\"7bde768e6ccda54d76875c9f843390ba\";s:32:\"dc11532fabb901a9a9f651683fb73143\";s:32:\"97fc464b8ed181e4e08317d675be673d\";s:32:\"b1ba46722d8ab6f9c81422ffe7d30fd9\";s:32:\"e3f0b5dbaca15bae847bdeb6f7157762\";s:32:\"88573f8cefb1c1cc3473ab417fca25f0\";s:32:\"fc04102a6656524af989359dc731a671\";s:32:\"3096970ce51c66ea6fdadbc783cef35d\";s:32:\"ec72b15c74002699d5f9fdd9f7761a58\";s:32:\"2dcdadecc8b0395526b0e8420c5b181c\";s:32:\"3a3110dd4edb39dd376f25a09e103187\";s:32:\"7815ffd2e7a323d03fc213728afaa00d\";s:32:\"6191dc1196bcce84c64c34bc92a31a6d\";s:32:\"d6dcbf229bdfa4ac3a734b8bdceccfe7\";s:32:\"dae1a4ca9cc95fdea6c8e81b77c11c58\";s:32:\"e0a8bd2e91d7a89acab36f8d05df33ab\";s:32:\"211961aaee21f5f46b9365a349ac7175\";s:32:\"c75dfbb76b3618be2d8046646b4e815b\";s:32:\"19141e1f6f6cf773fafc84d857e9c829\";s:32:\"3c1126d3784f3bd07c292ad793022eda\";s:32:\"56301e2c3c005d14d6b90774f2a7dcc1\";s:32:\"4062bfd5f55c57f383247c1575c21808\";s:32:\"18d5e53c03d18fe1b90bec1db2cbfb9b\";s:32:\"d2d152dfbdf1f061fc14d452f7d124f9\";s:32:\"d00f904db51730436843b41ebf4d1072\";s:32:\"8da4257df85a05a7f6c3bfa33b160d70\";s:32:\"02476dd6a12391a6fa7fcde2cb2b9d3e\";s:32:\"fcf86296a5c964cfee86d478bfbfc8f4\";s:32:\"307087e304923676c96dfd3ad7d9550d\";s:32:\"f0336071ea2fc5e6951a4360e92ae0a7\";s:32:\"b5ea54a23df4df9f8374efa816b77af8\";s:32:\"0222b79951268059f2383c897aa7b76c\";s:32:\"31f82871d53372598884551ef891dcc1\";s:32:\"4d58b6accf662dc69bf731fa646c4c43\";s:32:\"d8531f2f7dac2f52885d42e89afb0fb8\";s:32:\"20a29cdacb7b03d26ceea3447c96075a\";s:32:\"43588b1a94db5ec46aec69559557f48a\";s:32:\"495146b85400bdf41fb0ec61773c355e\";s:32:\"fba69c888fe0b87f81cb259642853b1d\";s:32:\"638f5237fcfea78681d27ab3aa0d9f49\";s:32:\"667ae6aa0458d048cfc56615c20e4e81\";s:32:\"6b40da6859ab8feaa60fb5b96cb57f57\";s:32:\"61f277843c4549ee951ca70b61a1aa29\";s:32:\"833433c0f27997d2977f213a4163534c\";s:32:\"a5425755d49a07347d1ae72d91e72483\";s:32:\"18daa17ce64a360ff22afd9907ad34fb\";s:32:\"29358c037cbbc54ad6f977e1012190e9\";s:32:\"0520351da66d8734b7b38f904f3a1418\";s:32:\"aa508c623cdfbdf831978488eb802e77\";s:32:\"3ef740fcb2d946b0e356486ce70088d8\";s:32:\"b2d5b81b6b2bac8a1cfc9b0c7be5cc80\";s:32:\"9c43a6b8dc5de3559e58b185f62dc363\";s:32:\"5cbe725d81c5064dbe05dba9b8927d2c\";s:32:\"ff4f3c0c407899ce64e808ad526c74b2\";s:32:\"2056a9a2cf689c902dd5d598e6340aa4\";s:32:\"47be735038896bbe7985078ca51e77f3\";s:32:\"897d45da820b1d63f62a7bfeec10a8e7\";s:32:\"d7eddd0ee971c508912c3055fbdeaa42\";s:32:\"52ec88a8a4e50e36ac8becd45598a114\";s:32:\"362d323600172785e2a6f5cc8fd7cdc6\";s:32:\"3654d5d084f655b9cb193049541d4235\";s:32:\"86ef209943b1a950a4bfbce6904d6ede\";s:32:\"db33459445ac207469fe7bb966ee8ce7\";s:32:\"50cbebfa3f4e7b95f5f27c9678cc4249\";s:32:\"99d9cd2a3af2055aa68818311886fe94\";s:32:\"0a90c667b65364e5d7c41f83b4a8ea9d\";s:32:\"9ff38f267755df826d981210216ef917\";s:32:\"8479fd4c4628ea521b4dab90fa0d2b43\";s:32:\"2c8b95f56407177db5075aa522a8e34c\";s:32:\"6b5211a7431ac14f98fb29005040f9d6\";s:32:\"db543ff4a50ae257f869a79148038668\";s:32:\"c285caabb47b93c35b99644fba5d726b\";s:32:\"f9783c8d213434fb0ec2ed8b2f29a578\";s:32:\"68de6e2d38072c01301a217e49c593fa\";s:32:\"e4408c90b50a8301b8cb58245119dfe8\";s:32:\"e726b2e6508cad4fe1a6495d1f27b09b\";s:32:\"c2c617d14782c1228e258088226ee049\";s:32:\"a1cd20173b7384effb919b1bd9c8ab26\";s:32:\"8c7c1216dd6994ddf91f1e13890fe76d\";s:32:\"62203b691e4982b46726c80e4aea8e4f\";s:32:\"15eaf17cfdb3e625a86507c18fe7c4ae\";s:32:\"3ddfa80eaeb2f9b741b9741f4e0f6c89\";s:32:\"eaae6130d9bb7eff7a5e3d215d958141\";s:32:\"4a0ad7c702eb420ac808d0845292334f\";s:32:\"1aa88070b248cf777155a6c24efd5a0a\";s:32:\"4bfa89aa9b8ea9821e792cdd8f2ac80c\";s:32:\"cf222261d8e79a6f3139aaa2ec3872e3\";s:32:\"b4cfd2b791a66db98bf02cf86edf5949\";s:32:\"78d7a33a8aa243b02fc070c80a9eea49\";s:32:\"55db2ad9b4ce887d8051333642643432\";s:32:\"a04ae1f07f96d44d3fe3ead85c8a528d\";s:32:\"02bca503f0fd244efa5ea9c5507874a6\";s:32:\"3375311b7e8b9b009207da1a91f164a4\";s:32:\"ce7bb414fa08266ef10141717d1b2389\";s:32:\"770724c4ceb8e030078f1903e6a83050\";s:32:\"f8946d5c9e14139d094ff2372387b4ec\";s:32:\"8d806bc12d67eb1346e5c3b4bfcb3843\";s:32:\"4c2602824b370004a7b460adab935ab3\";s:32:\"f8241ce2a4822f93a28f990447b3c4f8\";s:32:\"9f95dbc58a0680cc968784b8ad4ef79e\";s:32:\"4c3676c6583a41708b981b92d4999dc3\";s:32:\"2bebc4b6774185111bd9075a555fa6bd\";s:32:\"755edea8fadc64c20fcecba0e940631a\";s:32:\"146f38121b195f52ce4c09c6fad4df96\";s:32:\"a28ee3f07acb5cbcb0b9e17a5ec9c6fe\";s:32:\"af36a56d977ab9bb156e374646280846\";s:32:\"a640ee137ec9299b290364fa34d8801d\";s:32:\"25acdeb0fc9de6b09e82ffab94138d4f\";s:32:\"a5be01287465ce936abf31868e887f98\";s:32:\"dfdda1cd59c7dd7333d1575c4edb36c7\";s:32:\"a01a6e9f8f5c348e6d74edd6b06e98a2\";s:32:\"9181417b9a8f0b4b8dde423341e4eb93\";s:32:\"ac0d985e7cd695829f2f55abd1bbb79f\";s:32:\"7375a0383e9b45a4f7fd973745c9e566\";s:32:\"ae25293078452af0bdaf7754693801f6\";s:32:\"50e8ab453cc5700a06dc688f9247fd59\";s:32:\"01e570c9937d2824cf019ffa9127c16f\";s:32:\"2ce5f20e4ce03bf4c7f74559a2b59825\";s:32:\"80348eb123a29eb136914434d27dab82\";s:32:\"248f2a61c1cb4725e414156d72a86ca3\";s:32:\"1e660f47c9a282e00b77e2154e5ce459\";s:32:\"fea62f3f659727b4a5c23dded3c0a9bc\";s:32:\"9d251de7a9ffbdc5f686468cfe5f36b8\";s:32:\"19ce5c00e0b738b8fafcd81c6471aa89\";s:32:\"3e4440b2537aad582faf1ac348a7badc\";s:32:\"ccc3f8d70e5bca8b7a9787cec1ee0550\";s:32:\"a4ed320f76400569dfd60facf982dfc3\";s:32:\"05b7db5f4f4b2576aaa504a5a0a239ca\";s:32:\"e9cc9f6987fd0a136d46df581cb044c5\";s:32:\"e9280c1d17996866fb036a5be7899b40\";s:32:\"57d1099fb6e2e8cf8ec7b7d571b568e2\";s:32:\"e08705ef4095343bb2d0d7742df4694d\";s:32:\"c2141fa370dc223ff1131af03fb51b6c\";s:32:\"62a94106a15b11c3f52720ec130c92a9\";s:32:\"ced2519354b8a4a2f383fe4a8914a9d7\";s:32:\"db847cebf9add10e2c596bdd9d7aac61\";s:32:\"a3de92ce191d03ceadb254bfdbd928ef\";s:32:\"8646694efb9982001bcb7ce2df220c94\";s:32:\"4aa662a7c5e211de977584eb67ce16bc\";}s:4:\"hash\";s:65:\"4aa662a7c5e211de977584eb67ce16bc-8646694efb9982001bcb7ce2df220c94\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_resourcetemplateform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":711:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:5:{s:32:\"afbbd224436691d3855aeadbdccce11b\";s:32:\"6adffc155706a0dcc038aa6dd5f909be\";s:32:\"71b455018474a48eba67db697e8bec7e\";s:32:\"230ccefcf3d1bbca777eb2c327c4c6a8\";s:32:\"2ad7cd0a9d08d8d58d22bd39279895f1\";s:32:\"abe7dd9f4c82fb5e3fadd4ef297487a3\";s:32:\"b440f085f41c856ce451f5692bf6c668\";s:32:\"1c75c2668511f5da91c1d01797f4959a\";s:32:\"745fb151d3d13cabe132cdfcfd0f5497\";s:32:\"f669731cd93fad48b3e7750eeab681cd\";}s:4:\"hash\";s:65:\"f669731cd93fad48b3e7750eeab681cd-745fb151d3d13cabe132cdfcfd0f5497\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_sitepageform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":631:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:4:{s:32:\"987058d20419697d9724ad20ffcd7058\";s:32:\"6bb81c00aa0a1739a39b169006827ba5\";s:32:\"1201dbd8ab23457138f82fd87fc87eed\";s:32:\"522e511b3e8a0126d22f889223670af6\";s:32:\"7b6b841a8de020cf9c06e5d4871cb17e\";s:32:\"95b792748faae553e82f23162809f9b8\";s:32:\"0132ecc350b98911a6139a05d7752ca0\";s:32:\"117dcab81810d1ba83fa624ecbb51881\";}s:4:\"hash\";s:65:\"117dcab81810d1ba83fa624ecbb51881-0132ecc350b98911a6139a05d7752ca0\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":5672:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:67:{s:32:\"0162041528b59ed16934c1ca106ef615\";s:32:\"24af6d64beb52adc09f6c521b09e0947\";s:32:\"786b7f9f1b6e46eb735bc81fe7143bbe\";s:32:\"d396af48f5607ec23d8ba2ad8343b3ed\";s:32:\"d1fc5258e626bfe94b79e4aaf4d3751d\";s:32:\"3e0c4c2d26336e782fcb75f66bc93c45\";s:32:\"fdda5f1267fdeaa67d4da254ab75a545\";s:32:\"e8b2ee3dcc600a7d503f47b8be8bb7c8\";s:32:\"c728183343ee4b695d6480bb1049248b\";s:32:\"7a206fcd929b05c09b4d4362f3825042\";s:32:\"1f2661c59036e8dc006182d851360535\";s:32:\"f1e32f5d2fe3b2ede7137167726079f2\";s:32:\"0f64830f23ff2326ceda0fdb9f4b6f96\";s:32:\"b842dc72e7d23fe67d3b6799847bc1ef\";s:32:\"4fef0f953697ca3c331efc54d805c3eb\";s:32:\"46333811db284af193a33b05bc94b950\";s:32:\"a861276393d178c11332f9a72d215f78\";s:32:\"62d5a4ee8a64c0cb986d59f852f406c0\";s:32:\"04b232cfb64f701aed3929a0fe2111cc\";s:32:\"6efe6465242de5f9ecc6f4f85ac291b0\";s:32:\"9b57e581db61b428f8630cc1e7b310a2\";s:32:\"69ffaeca2d0259f41b89824c885e7992\";s:32:\"e14acb521602dbd70a4d9dcb9cca4b83\";s:32:\"4f9ec2d12eac22d092d7b1837b07c971\";s:32:\"e8592715ca41f74ed0cb2956ef52decf\";s:32:\"c48a569ddb434fc8bccbcd446dda249a\";s:32:\"8166f61578e5c108adf9e1c3e29c4e58\";s:32:\"a1254f89cd4581cc2da8f8dc376b58c6\";s:32:\"c81b23275ba1f7ad21fb15a5ee8794d9\";s:32:\"c02d08b3c53b50bcaac791fc2148cea6\";s:32:\"89ddc9e9371eb891cd3d4fb91f46c92b\";s:32:\"4f3fe9728cd12ae7184a956598edceb9\";s:32:\"217c00c951e090748004b02cdf4dcb14\";s:32:\"d31b171b07b8de413ddc4e6113b38c15\";s:32:\"5e19834fcf4afb0816b2d9cfcb996c48\";s:32:\"1a931ce94877bdb77e25b77aaa181d72\";s:32:\"7afa09eb5b2fc235744198210bd9ad37\";s:32:\"2b0c9a7b0d7abdb364d927056261fd52\";s:32:\"f0e2d3f65a117d5a1e6598b9ce21bf58\";s:32:\"ff4129132a9a5ec9e73d6601529e11e7\";s:32:\"c3376c2a60bbb5834088a06c6b14b4fb\";s:32:\"decfe61fc8e4d0f5f1a603237db201bc\";s:32:\"b38eb7557bef24625d64c5d327372963\";s:32:\"8ba50f9c707712682fdc08ada23e06d5\";s:32:\"f93d81d9222a40c32ffeacd7188ba161\";s:32:\"81ab8437cdf46513fad3f8b09e52b4c2\";s:32:\"67edb698d99b015a967f75b0ff3dda12\";s:32:\"dd91ac0d90a8727b5cdbde1d1787603e\";s:32:\"d2b457dcdcc3ec54d6f3cbfe528e8da1\";s:32:\"9283c46f23d87b0d69f112832ef0d35b\";s:32:\"4990784b01f6c1abd7a90d2fd142fb19\";s:32:\"f359e71bb91c9766b5cfe9c48bcafd5d\";s:32:\"5c92681f0a0ae5dd2135e2a3002f5f73\";s:32:\"c02eed7d326addbbe855182116c4e3ba\";s:32:\"3b8b90fa978ada6f990373826b2d0408\";s:32:\"fd925f6a6f0fba6c051695a6ff84b4b6\";s:32:\"eeae8f8bffd8fc4738f9658b03338094\";s:32:\"c783189214f839c6f61774173a73c4de\";s:32:\"b0f5ffdf09519914b3914450f099c3d0\";s:32:\"1825e6b603b01f46401958923874e19b\";s:32:\"2a421e7da1d49c862b3b95fba76075c7\";s:32:\"88cb68f7aeb5b62b3440359f06f67d2f\";s:32:\"fa6b0dfe4a36f4b69fd502d749c9783e\";s:32:\"fdb5975045d1ea8dca9a0ecb7fb9fe9b\";s:32:\"177ce854c18f43a2c712e624a4ff6288\";s:32:\"d6657b5e6ae5abec8fc5d57a985847a4\";s:32:\"048c25aab1e41936cef1ec14f1af3cd8\";s:32:\"790c5bcc4cfcf54fd8887822ac093a42\";s:32:\"bc47a10eec2c8ee37f320fde56b4798e\";s:32:\"5b084dd7ac328d7f6a865e6926fb5680\";s:32:\"3461e380498a38cd239bc30f30c2d8ce\";s:32:\"37be47826b5d79e759a6bf102ea887eb\";s:32:\"a91efea36d685f9e15b18018c8e9e2d0\";s:32:\"af6dc3441fa8052fa6dd5bf4144c9037\";s:32:\"5d63014d8a4b2b953990ee2fa9cfe17e\";s:32:\"124584f45180f8409b07263f91a1e8dc\";s:32:\"02e7e403c44a478270f40fc3416f6d31\";s:32:\"edc6be1abf034296d3dd3782165d471c\";s:32:\"e43d45d4dccc464986c93326de6b5a53\";s:32:\"b5ed2378af27ac0e10181ce45c3d203a\";s:32:\"1be686255c28d9bb67c7c806aff73196\";s:32:\"44493ebc0524e6e426c4ad8f423c6893\";s:32:\"9607f154e22dad82a85164b18a24687e\";s:32:\"93ca065177f5197c132fc5a95a831a1d\";s:32:\"23f91e6f70124c3adac11ed1c9be7765\";s:32:\"3665235ddc95ccd69858b988cda72d8e\";s:32:\"844f9c253cd88d083e30c6f71ce271ff\";s:32:\"2bf440bcf5bb531d7669a0f4dde81dff\";s:32:\"95cb0506ed6aa8c285a5f005221827ef\";s:32:\"8f1ed7a29273422f465a65d1eed189fe\";s:32:\"5b429f373db0b92decf48b7430af67ff\";s:32:\"5bf1992919a2956cbac99878e74c4212\";s:32:\"5a72581164cda367f6ed732680ed4868\";s:32:\"47109e96e03b802c2712248c2deedb42\";s:32:\"054af970e9ff58923fb363520f57f198\";s:32:\"4ae210df7e03abdae1f7579210aa4fcc\";s:32:\"4df424c802854641990de3130e2b8da7\";s:32:\"5a7bdc204b0b6786a071480b4596a2fc\";s:32:\"f7c8e68681282ee86a1954ca10d10ff7\";s:32:\"6be4cc9ba9d78d83584897888be4c30a\";s:32:\"06bba24ffb8d5d7667fa9a91fbacce6e\";s:32:\"79fcfe787e3655557f18ecb7c7e5a362\";s:32:\"db5925d7cc2a6d2b11b0c984e5cc46a1\";s:32:\"a86d710bd689f74185579b3d3e5ecaf1\";s:32:\"7ee095d6c216b4689b66c6979be2d392\";s:32:\"c915d60422de47991fb97627cd162143\";s:32:\"0833bded8accdabe3466af2a82cb4772\";s:32:\"e8a3151938d1e0d2bf4bdef3fd1f092f\";s:32:\"9d8685ff30aee093387d2fcca018b29f\";s:32:\"13dffa82bd27501e1ae9d3f237e58446\";s:32:\"1b7673d66ed3b322e65f2c497afc76c5\";s:32:\"a54f6fceeed3ba04242c466047308e31\";s:32:\"867b849d1045b69f5554cff520d76936\";s:32:\"a81e639d3f2e27f08581a792960a4b0e\";s:32:\"e6ead9e77e0fe7b69770e8abe130e93b\";s:32:\"e22f6c8a1935da2eb5fe9084d7fe77af\";s:32:\"e2b462e754cf977c47d76138c9b3c948\";s:32:\"522e8b0c47ac701e2aed4f48870fc6a0\";s:32:\"ab4996ff56f2a6f00adddb2148cf04b9\";s:32:\"b1a2bfce6a8ba66981f3561e8c76704e\";s:32:\"e01e16e713f88bc11e3864b0174cb3cb\";s:32:\"8d7adebe63ef3763470f16772d3f37d1\";s:32:\"884ae6639b41c57b9c399a098c80f372\";s:32:\"7b12ac262de1abb8d6c011651e0a8ca3\";s:32:\"dedd975f77ca83eb79de570db8eda762\";s:32:\"7f07462caf2c936bc86a3d27d8cd0de4\";s:32:\"d406a11ea826efc0df569eddf36ffb06\";s:32:\"937315e3aab0dbd93e603e5c73a44907\";s:32:\"e7fa1bc72d2ab696e041576870cb6f6e\";s:32:\"ebfaa3e344b700a3b6c20a685f2caedd\";s:32:\"502f9b6a01f539f665639d6578ef4733\";s:32:\"3e6ec4be4653240fa739f727b309740e\";s:32:\"28eaeca0e3ba32dd276782e475737899\";s:32:\"b09589d178b0747815a011c447b09d3e\";}s:4:\"hash\";s:65:\"b09589d178b0747815a011c447b09d3e-28eaeca0e3ba32dd276782e475737899\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_vocabularyform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"10b49bda359908fee74fc1215c7b81d4\";s:32:\"411c9b0c0431997b2c91b0c5580a0488\";}s:4:\"hash\";s:65:\"411c9b0c0431997b2c91b0c5580a0488-10b49bda359908fee74fc1215c7b81d4\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_vocabularyupdateform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":711:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:5:{s:32:\"e8b786345783e93dbc746f8d11f5c55e\";s:32:\"21bac8e6747e892638731106df9dba83\";s:32:\"32d97239329e0eebd6beff792aec9de6\";s:32:\"eb80f7729bd9d986718cae28603f70d3\";s:32:\"72538565bc0f93e601914253efc79114\";s:32:\"9f30b5d2dde7c8dbe82e4c0d1b96726b\";s:32:\"49f7bdc5a72bd70da5314d82614183ac\";s:32:\"8417d2480083230b49342cb0d518f7f2\";s:32:\"aa04e1f7530a07ec3f072647ed73c670\";s:32:\"39cd87dce02ed6863b291f39d4992aa7\";}s:4:\"hash\";s:65:\"39cd87dce02ed6863b291f39d4992aa7-aa04e1f7530a07ec3f072647ed73c670\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_form_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":871:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:7:{s:32:\"7fadc0ae6a4003db98800b0058fe6362\";s:32:\"9211fc58c3a912daadd8cc4f8c5915fa\";s:32:\"e103e0feaa8cfed16367c78876f74728\";s:32:\"70a4e5f2aa2cc505b26c287d0c00d0fd\";s:32:\"901630032a6bf0692205e7c6947bb727\";s:32:\"2fb35782d06dc1f7fabfff0538b76d9f\";s:32:\"1427bd2e5195799cd381aaa2c848871b\";s:32:\"e29519dd60bf5cc4480bc8a85cdfddb1\";s:32:\"104a2d06af277a16ec2bc8a1b902b1c5\";s:32:\"45fd8dfd82d7e5b2bb876af18d3477c4\";s:32:\"a3765e9495da007d66d9d40ebda3b45b\";s:32:\"f8965367ea2f42b082cf8aad0d52b33e\";s:32:\"01a37b256a15ce27d2b61d0b23a1ca00\";s:32:\"c3349cbdc67df0a5cd4b303a9f2a8f7f\";}s:4:\"hash\";s:65:\"c3349cbdc67df0a5cd4b303a9f2a8f7f-01a37b256a15ce27d2b61d0b23a1ca00\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_customvocabform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":951:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:8:{s:32:\"b25c10c4f9864fded96e59cd7ceedfd7\";s:32:\"ff63db2e42106f1d33853722f74a4237\";s:32:\"c55b6f3c1b3d6a30b18526df45043e80\";s:32:\"14a241eee2622e920aceb2c1019286c6\";s:32:\"2616bee0283697d20bf5f8dc6e31c508\";s:32:\"d425fb928bb1813683f8c2279f5800d2\";s:32:\"f67e7f02463108777a02ba737c0c7b8c\";s:32:\"72efd87c80676438efb8dff38a3b3898\";s:32:\"4633ed086e49e40e02898af7554f7190\";s:32:\"c1c57d4f853b8d243c2abf6b3a28c312\";s:32:\"a73baeb052dbe898cce557f4ba8163b8\";s:32:\"e9cbea53e956a4c5ec3adc7d4460c398\";s:32:\"bed4be8b1279832b2cd408dd4018b39e\";s:32:\"00b0d0c416b177cd5cd737da79b1e723\";s:32:\"e44706ce399c8c31fea741e2d58085ce\";s:32:\"4c8f26d933ecca9da19e5d1dc6fa3b17\";}s:4:\"hash\";s:65:\"4c8f26d933ecca9da19e5d1dc6fa3b17-e44706ce399c8c31fea741e2d58085ce\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587136501),('k8del6ch1q43g31fqhr71b5855',_binary '__ZF|a:5:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587133564.301848;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"rs1h9lmf04g5eh88t3qg2gh5gq\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587028602;}s:50:\"Zend_Validator_Csrf_salt_resourcetemplateform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587127589;}s:41:\"Zend_Validator_Csrf_salt_confirmform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587135066;}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"2d5dbf1cc7bf138153d4886e3fe87ca4\";s:32:\"6440afec0880f111f7b493a1663c6690\";}s:4:\"hash\";s:65:\"6440afec0880f111f7b493a1663c6690-2d5dbf1cc7bf138153d4886e3fe87ca4\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Auth|C:23:\"Zend\\Stdlib\\ArrayObject\":223:{a:4:{s:7:\"storage\";a:1:{s:7:\"storage\";i:2;}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}OmekaMessenger|C:23:\"Zend\\Stdlib\\ArrayObject\":205:{a:4:{s:7:\"storage\";a:0:{}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_resourcetemplateform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"b8552bc90a1a95c6d60fc04e6527901d\";s:32:\"815043d4cfadb90414f106b7d35b1732\";}s:4:\"hash\";s:65:\"815043d4cfadb90414f106b7d35b1732-b8552bc90a1a95c6d60fc04e6527901d\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_confirmform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":791:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:6:{s:32:\"a435b0211b397216b484e1508ad0f700\";s:32:\"dddf011ffa423b4ffd5c6dd8caf4e855\";s:32:\"7551d34a01a32b5db0b4852656aad695\";s:32:\"f99ebaa785889cce5ccad606d4e65aab\";s:32:\"e253dc2449cd0219ec981e28473d0f11\";s:32:\"dc4ba8726fc98a5ebe4063bc4959a1ea\";s:32:\"8f77e864344d51f1788149c3fc50ec2b\";s:32:\"cc19194cf4ab135330294154d67aa0e8\";s:32:\"c4b01220858ca37b50bfd6f9a7653079\";s:32:\"5cc9ac8c4b24b5d6a3f7534c7d6f05ce\";s:32:\"c8099e23a100b08ab4ddb69ed07687eb\";s:32:\"01646677138803332f777e4af93bb9d9\";}s:4:\"hash\";s:65:\"01646677138803332f777e4af93bb9d9-c8099e23a100b08ab4ddb69ed07687eb\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587133564),('kpq6d7ev337j5jsk9h89aqnm2n',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587543800.441477;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"kpq6d7ev337j5jsk9h89aqnm2n\";}}redirect_url|s:40:\"http://vm.helicorp.fr/omeka-s/admin/item\";',1587543800),('lb4upsisvdjndk1494jgeas0lf',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1586956136.090886;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"lb4upsisvdjndk1494jgeas0lf\";}}',1586956136),('lu146mn94ea487tl0ikkq39eaq',_binary '__ZF|a:3:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587543800.537833;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"lu146mn94ea487tl0ikkq39eaq\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587547400;}}Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"bbddc17b88e5e1977404eed7883f65c8\";s:32:\"8551356792048d08c91826e81ca8018d\";}s:4:\"hash\";s:65:\"8551356792048d08c91826e81ca8018d-bbddc17b88e5e1977404eed7883f65c8\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587543800),('m33pm648bandrq3r9p6s179dnl',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587133046.58694;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"m33pm648bandrq3r9p6s179dnl\";}}',1587133046),('m4h4gm76map8i7jbqdbstbrgsu',_binary '__ZF|a:11:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587058083.781627;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"24j71r1n5q5fadvtcm0245se1v\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587041354;}s:29:\"Zend_Validator_Csrf_salt_csrf\";a:1:{s:6:\"EXPIRE\";i:1587061683;}s:41:\"Zend_Validator_Csrf_salt_confirmform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587061180;}s:42:\"Zend_Validator_Csrf_salt_sitepageform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587042771;}s:34:\"Zend_Validator_Csrf_salt_form_csrf\";a:1:{s:6:\"EXPIRE\";i:1587042602;}s:44:\"Zend_Validator_Csrf_salt_vocabularyform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587061160;}s:50:\"Zend_Validator_Csrf_salt_resourcetemplateform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587061180;}s:50:\"Zend_Validator_Csrf_salt_vocabularyupdateform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587056582;}s:56:\"Zend_Validator_Csrf_salt_resourcetemplateimportform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587059025;}}Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":471:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:2:{s:32:\"b254aa2099217924dac866bf5701d43d\";s:32:\"280da0f9800146d9fad1fa102c784489\";s:32:\"9bc59fb2f79c0a6e477b153a86e5c54e\";s:32:\"4d05aa8a0512711aa111556eba7d8da2\";}s:4:\"hash\";s:65:\"4d05aa8a0512711aa111556eba7d8da2-9bc59fb2f79c0a6e477b153a86e5c54e\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Auth|C:23:\"Zend\\Stdlib\\ArrayObject\":223:{a:4:{s:7:\"storage\";a:1:{s:7:\"storage\";i:1;}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}OmekaMessenger|C:23:\"Zend\\Stdlib\\ArrayObject\":205:{a:4:{s:7:\"storage\";a:0:{}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":1112:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:10:{s:32:\"f8b4eab37b0602734bc210f70cc28230\";s:32:\"a3b1f5e5ba1c834844d19606cda537b1\";s:32:\"12edf4309b5f496dacbe7d615bc7b62e\";s:32:\"be7ddb96c1376420e0bf0912015b462b\";s:32:\"a144dc70ca90ed53849ca60c539c6904\";s:32:\"9417a83da2b31202c10a8f3130e7abdd\";s:32:\"6eeeebb53c8357767bca9688733e5ad4\";s:32:\"29eb4c2599156a236b969b10f98f15b7\";s:32:\"3bc99f0e1af206328e5ca9e840c2d9a3\";s:32:\"a89ce58790c0c90e5a4f1025984dc13f\";s:32:\"1586301dd9fd4e9d2d43cfb6d5bec0fc\";s:32:\"0f30ce305dcb0726af61be0c809a4640\";s:32:\"8a5be2cbf14fe7404248463359a11544\";s:32:\"79c9cac640442a0a9e49e8018d741a49\";s:32:\"9837e92123737a39cd300034b1b95f31\";s:32:\"57889147ecdc849d717f5605ab839783\";s:32:\"7b180c8d552cfc79a56a038dc91086df\";s:32:\"68a951c9d3dffea7d800ffd6a39a1b5d\";s:32:\"9660ca2a4f81af659f4dc2409f63b302\";s:32:\"b44798703c44bb181fde971b07afce54\";}s:4:\"hash\";s:65:\"b44798703c44bb181fde971b07afce54-9660ca2a4f81af659f4dc2409f63b302\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_confirmform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":5512:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:65:{s:32:\"7397d586aab7f591c2159185e79426c4\";s:32:\"351fcc25d1ef4c58bd87302855c6a765\";s:32:\"cc9e50345de1da24bf2f3732b5b8df8f\";s:32:\"afc34b970cf4bb3c33d57ed04a3aca19\";s:32:\"de7ec5eac2808a9526bd65300fc49db6\";s:32:\"90248fbe4e78e77b4123de826fb662d1\";s:32:\"706b9dee3d65938cd70a546e154419f0\";s:32:\"07886de3a63d39483453c862e2228ff0\";s:32:\"644604edec3ee6f2d0bb070ff0e3e907\";s:32:\"fa81f9c2a5cbe0cb68f97bbcfe5af548\";s:32:\"1365ba7243d2ff82fe3c76603ce47d1b\";s:32:\"e932fcce667383158399a7b0614bb4cc\";s:32:\"fcc8e455e69cc162a3f75d226afd76c5\";s:32:\"8a1502175a26bb4bc91d2833caf2d951\";s:32:\"fda12efb791cf1b94b44ea432a9ae32a\";s:32:\"5e98c0458bceb54927b7e690505425be\";s:32:\"9db266fac218e34ca911bffbf56883a5\";s:32:\"ded037e011524bbbd1dc7caf68e36ccb\";s:32:\"2386dc92a999dbaf489e272d3a0ca3f1\";s:32:\"612d5b187b72721a8bdcdb89236428ff\";s:32:\"78453a02271d0649b633f5265d915101\";s:32:\"85b2b7611235b55cded7245c62e25a13\";s:32:\"16437b3f8ab3574a7c75de6a947c9908\";s:32:\"6d159f40d76afc741a1b395273c1afa6\";s:32:\"37c762c31fa3055243c9c93ab5cfc619\";s:32:\"cd782372a59520623b5b6947eb0023fa\";s:32:\"3dcc5ce07d5094910cf9fd7aad01c030\";s:32:\"1d5979029d0611d4379e17d94ab3e341\";s:32:\"546cb7a2c178c2b581430d22a75b24e0\";s:32:\"8176d00a0649d558d7b31f31e84bf76e\";s:32:\"3945dfddfaf3936c1a9dc4eb95863ea9\";s:32:\"56b9eb1741305cd315a654c836bd8e7e\";s:32:\"9592fe801416fd14b634180ed6f521c3\";s:32:\"c32fad606008263464a1664444ff35b6\";s:32:\"511e3a699ed71c7c74f42be6a7bf1226\";s:32:\"6f1c7fe5e18a5ee92075b96331dc9355\";s:32:\"b3a781d085511a3c3096ce71b562dcd8\";s:32:\"48364834c5e35d3352633b4415cd2a42\";s:32:\"c296e1d322c53133284da634c53432a2\";s:32:\"d0419080e262e06365aea5636cc61ae2\";s:32:\"b65bbe807164da248c1f028c86b665bc\";s:32:\"2120c4d743ced5b7e256a97274101680\";s:32:\"856e8bb230c3af339cd566ec153941cc\";s:32:\"330e5a2f1bc62e6e23f3abbcc07aa3c1\";s:32:\"409dec3c5a346298608a8743f0be9651\";s:32:\"1b45d87e10df1045a05d54e1dbc1f50f\";s:32:\"f89dbef5af0414d9614ca35da5ab2ce2\";s:32:\"4f2a095ffbcf2d8b7ea4073ef1b07b73\";s:32:\"bd3133f4f697736e7092efc7563e7150\";s:32:\"dda23f15e90de406f90fa3c770e91b8a\";s:32:\"7853717eac6fdfc46013bb2a5b5abad5\";s:32:\"66e0fbcd4c9e69757516bab3ec8700d9\";s:32:\"4e8e875ef2ebc20b39feb1ae69e29018\";s:32:\"dc928b98171dafa634a488d13ff8872a\";s:32:\"bdf32edd6ccf17aadf7350007514d7b7\";s:32:\"1cfdaef06b42f0c8349de207481ecd97\";s:32:\"6b0f968d99788a2b2aacd31f2699478d\";s:32:\"4654fe8fe098cec34b9c6fc81ec767f5\";s:32:\"3aec819da3f76d6fc55d6f45d0a69af7\";s:32:\"9d27a7c23c384334941486b4eb7906c9\";s:32:\"a02f2deed6b33abb4914c8311629f094\";s:32:\"8d533aa045cad32ea1a7334dcf3f5cee\";s:32:\"b50d73b762050bc7f34d26ad2140f6fc\";s:32:\"cce56e1078ec73b4fe5b9c91126a35b5\";s:32:\"5f626eafd4d5efed17eee82158fd34e4\";s:32:\"f5dffa5c09af0124ef425eb6be9fc079\";s:32:\"678ee8f5fbfbdd63ccc73f21c7c2e138\";s:32:\"7fc4157cae1c7bd85eebc5a81bbe8e17\";s:32:\"753be8a65e640c9d6d99b981b39be191\";s:32:\"423cd18f3dac4b4a2b8bcef82af4c47c\";s:32:\"ddfffb9404f90316dff3d48266979bdd\";s:32:\"0a0ed82eb9d8ea26fdc75b19d763c640\";s:32:\"462b43ffa7438d000bd719e5fa8b46ef\";s:32:\"fa0179476f5745b304503ce416d2ed88\";s:32:\"522833e2a4168c20059a53113e675a3c\";s:32:\"9ac1c89a98ff90f3ee80b62433359c36\";s:32:\"693d021b8890913bb6bb8c7e5a977eb9\";s:32:\"f0f5128e3af49dbc14290c1c13b47d98\";s:32:\"0aecc84beca5289c527727c041c55823\";s:32:\"f6510871b2faa500128493affc695aab\";s:32:\"662adf2485e232a39a62f50b0bdcf42c\";s:32:\"eb1a31b76f7a1ec9fce5ed50f0a54217\";s:32:\"42fd0195d65b475cf7536722d7fd4189\";s:32:\"831d6f76488b12189cc2be8307ab8522\";s:32:\"b9a884c5032548b759d5880fba6b6372\";s:32:\"e27088203b0a87e3c996a740752d6f58\";s:32:\"79864331809a22df53f144fd3896f244\";s:32:\"7ab5af069db641fdfe3278881c968a3f\";s:32:\"6e42c2a9ed3b128920edcc120e826951\";s:32:\"846c81adb7e2bab89e7f08342d6e02c2\";s:32:\"595d68933346e3fa394405161eb22e22\";s:32:\"06bd65e085a6118acdc792bba5903b1d\";s:32:\"ae156c8501a20ae4e1054eeda8b06272\";s:32:\"6f59cd1825ebf33bd04c11ac650b0ba2\";s:32:\"94bbeb78d992652ff8e0ab4ec010e273\";s:32:\"8be1b29114b2bd66e67f43b099d3aed6\";s:32:\"87e5a23fd814b528e671ff73cd8f0557\";s:32:\"e364964855a4076ff9cc46aea088535e\";s:32:\"c5194bdce2177c2a9d250f8329ebd1c9\";s:32:\"7a6274b353f0aac15b55afadce689979\";s:32:\"ec8dc3bde8ef5687aa78c56d1c1f517c\";s:32:\"48846108bf771064a1ac12b1d0bc351c\";s:32:\"f63d4b90215719fecb73c9e2d35c13b1\";s:32:\"73e0fc196f26cc5311e207351228a95a\";s:32:\"9609800e86f729022de796b73b70aaee\";s:32:\"9cbbc0727e67a136fa0f6a2cde3f3358\";s:32:\"665d3fd1b7f57921907d28594a58d875\";s:32:\"7b322a59beb5bcf3d7d297415901c22b\";s:32:\"cc459bad1cafe3029fdbdb8425a940fe\";s:32:\"22c9810e6cd7134f18cdf84f628b8e41\";s:32:\"86d46cae6c81401e8406d8b50035353a\";s:32:\"7fae980ab165984d3b8ade3365e6507f\";s:32:\"caf2e82bfc8f1b93a1a7d4bac2e64a99\";s:32:\"690b71956b33cf19d3d210cfc57d3b2b\";s:32:\"e1c30688ddf0c39651e82dd6ea09fd57\";s:32:\"2f16e847642651604c7b0609094b979c\";s:32:\"66be44af07d32e8cf08857483f0f1e21\";s:32:\"42b92b223eaf94ded8658468243af476\";s:32:\"c7c2236b44e55e51b84300838007a283\";s:32:\"415b5e996ac1a0a9671f56ffa2b07a2f\";s:32:\"02ed8890a4ad25f1bdc68eb8428ccfbe\";s:32:\"aa95fca76cf76eb6358899d7ec16069a\";s:32:\"332a04f6cf570854624b641f45a9c2e5\";s:32:\"8e55911bc500b60d57b27fcd83e09581\";s:32:\"3f7e43bded3050a301b3723c7d5d6383\";s:32:\"aaaac5ce1130427ba2e780b2f2c633a6\";s:32:\"fc8aa9d88509b7f04f14a82ddaa43113\";s:32:\"adec412703ded6a30fa70102222386fc\";s:32:\"62b6d566637c2a9a3522deef1cbec2fa\";s:32:\"275607eba91349eece2f62782769e044\";}s:4:\"hash\";s:65:\"275607eba91349eece2f62782769e044-62b6d566637c2a9a3522deef1cbec2fa\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_sitepageform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":2072:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:22:{s:32:\"258848352552a597796bf6970198b235\";s:32:\"8928380cf8410667f6be62012c4de24f\";s:32:\"517f854b4be251a69bc4c95c902c270f\";s:32:\"fb8cd9913fbdefcac83e87c7dbe8cdcc\";s:32:\"6410e779989d1856385b058bfad83e99\";s:32:\"b245360544b6806673d2b59771483d05\";s:32:\"bb18ad4c2ad54983a8a9a5e979e6e618\";s:32:\"f57c2d401706d1024f76586b97033c4e\";s:32:\"a816569be35a58a67aa9387bd476768f\";s:32:\"006e90929a26f0ec1717b3ebe50e3096\";s:32:\"c046d4348697a0c206a45ca9581c75c0\";s:32:\"e386ebad62e091ee1fc8379358e13748\";s:32:\"b88958e5ba0c828caab25b6618300920\";s:32:\"d48a841b827df6f0059dafe5826ce666\";s:32:\"f60e12471858b7367f35679b2e86940d\";s:32:\"a3552234e8ff0403c7721473f65e7e46\";s:32:\"2a7a3aacfaeaee6236509fed883eaed2\";s:32:\"c2e5a546634bb43b5767b44e51e2d4cc\";s:32:\"3063d0e4d9f33e444888a6fd8c1e5941\";s:32:\"42ae503dc3e6b56d7a59f62be50a572f\";s:32:\"741fe9ad3e7711fdf8662bc10d995ed9\";s:32:\"57289e33cfecd4cc0b46c9504b4a3d55\";s:32:\"d3dbe01b56d21cf7348befdcef511d5b\";s:32:\"67b5796d1656ce443c38c1b0072a73dd\";s:32:\"0ff0c6293dc047af6aad387daaa63ab0\";s:32:\"9eb75877f28fa472ac24210df62d09b1\";s:32:\"d8d658c586390e73c83c0ee7e6daf08c\";s:32:\"567acb58148466ca6c0fb6122d458cd0\";s:32:\"9145db29c5cdaacc18e0957e49607fac\";s:32:\"c89750980652feb1850029864243acdf\";s:32:\"afabe53a5aec42459f7a6f94d9dbe0af\";s:32:\"c7dc4eb3e2ad9dc510b46615a54f958f\";s:32:\"dfd14e21be053ba7cbf7881774520883\";s:32:\"d0813c7d7f7b893ff97e6c12712b36f6\";s:32:\"1e032e66ac3284e7cb59cb7f4657cb5e\";s:32:\"eef83d9c371f0a638ee862e84b80b51a\";s:32:\"d701969d4f085f75e85b9d8666f005b6\";s:32:\"74bdd4b1f062b029add5060d61f3443b\";s:32:\"95b671483d3733c17d63b69ecfbee2d1\";s:32:\"0e99fb9295f22a2990ad6a6a2564075f\";s:32:\"faa4b3891327ec1e26da3aa6fcb7facb\";s:32:\"6471f40be872303e276065ec0715e88f\";s:32:\"9da9ee8746491dfdd1894f220bdd15f4\";s:32:\"cd3e5f388f5981b464dad3423a3d48e4\";}s:4:\"hash\";s:65:\"cd3e5f388f5981b464dad3423a3d48e4-9da9ee8746491dfdd1894f220bdd15f4\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_form_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":871:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:7:{s:32:\"ccf0830961d5d77b47f47a48769728a1\";s:32:\"efeab23b5eae647a337d52a796dd5827\";s:32:\"23b36c95fce4d231a4b6811a8e9b8236\";s:32:\"815b5f625052dcd08c4cab8d65109993\";s:32:\"8860150238ccbfcaa48a5bcd24e0157e\";s:32:\"7e388c953c020486b6941cf331f7c183\";s:32:\"a07a7d4981d10cfdd6f0794fff990994\";s:32:\"b22a24695dfc3900e7aee9c540ec386f\";s:32:\"4e8d72cacd66fa11af464682e048dcd7\";s:32:\"2479a59c48734dd05cdcb560b04ad26e\";s:32:\"ecffc1627ab7e906678b94658bd9d30a\";s:32:\"f12fa0373f35e076378a5a098e92160d\";s:32:\"b6bba8f39191378c624831c4d18ee6b5\";s:32:\"256fd911081cb6e9dc145a159c4e40cb\";}s:4:\"hash\";s:65:\"256fd911081cb6e9dc145a159c4e40cb-b6bba8f39191378c624831c4d18ee6b5\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_vocabularyform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":6472:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:77:{s:32:\"c3d772418c34feb828c98a4fe1945925\";s:32:\"289c7997579ab54fc2e5caf566fb8ecd\";s:32:\"2db22a93f229472525658a90d5ca858b\";s:32:\"d4d1100a5ee4507ecf3187ae164bf634\";s:32:\"8e4083c27822039fbab78e275736bcd4\";s:32:\"231b0acf9e5395d471fd78ec8c65c7be\";s:32:\"b2b2aa91e7bb2baf3860bc3bb2608873\";s:32:\"57bdd411956f92898fb71b0d7857411d\";s:32:\"60212ed3c126890d56374ccb0b1f3442\";s:32:\"3a2091b5941efe3fb7a04e8500073b47\";s:32:\"5ff586b335d33ce09f0cbab57a8a260d\";s:32:\"2f2a8b5afa88309caced1d3c4096ffc8\";s:32:\"f38b0f42f223db3205961b34d5a1643a\";s:32:\"83b395ff508d6a368322e3487f749045\";s:32:\"e26fb020c668bfb79a625c2d1f394803\";s:32:\"598378fbcfa36f7a92b7f541c25e013d\";s:32:\"670d7dfb8e1bcdb959a38c6a6e550056\";s:32:\"59a5cfce55b3481d918efffa9d5a28e8\";s:32:\"d1de3d3fe9e43cc74a1af94d12a34b4c\";s:32:\"cd572c0c3c7d2f6af7458b038244a15c\";s:32:\"ac2a5733c2d22320ebc09d4d98a689a4\";s:32:\"de148f03b4885e97327ec53400b80d42\";s:32:\"fcbd9ca15f6c16b071892757ea9cd463\";s:32:\"452cdf53d9abbbd67693c5f279297da6\";s:32:\"a038c1d903c56a8dc962833a5d10ed86\";s:32:\"83d6dae3867c9aafcd32a9a022dc7169\";s:32:\"ff5aa29ec6fabe6ccaf553f922666cd0\";s:32:\"ce63790125a7dc0f07df438a7d95edc9\";s:32:\"096d587c056642ac08129a3a191f7683\";s:32:\"4f5b8597568b008f1db8f62cefd21594\";s:32:\"c60489813614958af3e0bf5b550c14be\";s:32:\"09618b74efcae5b0079a830f708cb842\";s:32:\"59b6a6a8714782b061c1128220b156b9\";s:32:\"53a6ee34e0d6d106268a8a79a1b040a4\";s:32:\"d14f1f30996001957071a850f4ac2e3c\";s:32:\"6265030ed0efbd73158b4b8ee0d3f71c\";s:32:\"5a8c0088c5af1c8ba6f9d2787b7714dc\";s:32:\"a0b9f3ad43aad40a885cb5bb0fdcb278\";s:32:\"b25c5679e7ae6e79d5c3748286018695\";s:32:\"956115810f14eb2ba5b073b7dfbbfd60\";s:32:\"3a03304d8f291410cffad47e7304665d\";s:32:\"5582d05805d60f5ab922fa64c65494f9\";s:32:\"cb57ac339ca9c0176e437c9a8d31225e\";s:32:\"bd61275c064442f40d31b6fcf9e15c94\";s:32:\"ac6d20772a1f0386962dfb939f7cd255\";s:32:\"eb33355ee786c986a17f5329031a6ac6\";s:32:\"9d44e47d9299b87391ed659e48329356\";s:32:\"693de58a892dbf0005ea4cdfa399c49e\";s:32:\"f378210c2ae2e45c4e086cf7289b264c\";s:32:\"e4c2b1c2721c5642c3a2469411346d02\";s:32:\"f294b163268409159c181f9332fc9841\";s:32:\"3bfbe01942fcf18254bbc366168bc18d\";s:32:\"663c60cafb3337188d37801190cdb23f\";s:32:\"729039ee4dbaec6d1085666bb4e4724a\";s:32:\"475d0b7ea2f12d9b2a27b9bae092a1e0\";s:32:\"dabca92934645d5aeae0a91aab852638\";s:32:\"04325d1fd3475f3686ce48625e75e3d0\";s:32:\"0075fb0a118cfc186f307294f4482160\";s:32:\"842762efb74dbcf1f40a1164cf6f6b8a\";s:32:\"2fb929794f02f0da306bf0a1846dbc98\";s:32:\"891c143a292f6718184c15d2bafd19b2\";s:32:\"580e7874216530f496acada374fd699a\";s:32:\"de724fea937a51c11a0e01953d85826f\";s:32:\"318ddecf0cb8437f056f936f7896af6f\";s:32:\"c89a11afcdbc81c1061cc62e6362fe00\";s:32:\"809e2d9273a24a1610e0d4d246162b2a\";s:32:\"657d2c7557f9e2137572623e16f74d8e\";s:32:\"ff3314ef35334a3efb580c585f92102a\";s:32:\"41540f33072a9c437542aaceff489a0a\";s:32:\"5e45a8de9378c78c57289553c1d884ae\";s:32:\"7bc0082d9b556ab9ea07065471c5b7a8\";s:32:\"75e869b88abf50c712806763d7e76b31\";s:32:\"35ecbc19fb5ee06957ae07d47eaf6e15\";s:32:\"0bd63b0b327be8a26201fe8d186ea540\";s:32:\"ee960237868a2762f6eeb55023cbf2fd\";s:32:\"e6f4633e61c7f4ca7dbd2688dc6b4781\";s:32:\"b04e40442a1eee176a8d3628f0c4c8a8\";s:32:\"60652b4fd332d146d75f04a99c298850\";s:32:\"9f7abd48224c43fa535153df0107f466\";s:32:\"c7e8134ef9b4adf4f10d2e3fb8f6566e\";s:32:\"f59db8f1f9fe000f94e29f6633216650\";s:32:\"36487b08b02e46aacba258ff452a1d47\";s:32:\"c56aeb3117cfa21416aa868afb02582e\";s:32:\"df8a807b9de5514cd255a872239e3baf\";s:32:\"b4f8399d9df7e02ac555744c69c2cc6c\";s:32:\"52f342d24ad0bb6b6b43ff43bd70bbf1\";s:32:\"e58d13923dc6e24ca4b5aa62d986654c\";s:32:\"a6b04b7fd32ead7f90f6a90888155b45\";s:32:\"78ceaf34dc6039223ef9909d9018f6c4\";s:32:\"22b5815d9befa48bbbec99128163222a\";s:32:\"0e8d7ffccb3543fa6839c21e701d5dfb\";s:32:\"14a733fafacd0d8c4cee0a0f907ae281\";s:32:\"bd9405003ef840fc30fe4be769ea6213\";s:32:\"032611cde179a409e924849dd4386375\";s:32:\"e7edfc0b401302f08312ee1c4a1a8f03\";s:32:\"00d76a2d03200a4133c74f1e0244f426\";s:32:\"38d00a2a4cc0d6277be50dd9111251d9\";s:32:\"8b0b00245915e85841597e82017aafa8\";s:32:\"f2d4941fd3d119c3008388364b93fafd\";s:32:\"b05dc06f33977ef2836cf12d214721bb\";s:32:\"b557db86a365e396d3112456c9f82722\";s:32:\"45cb27d5b2f3ab1f08961065feb257ff\";s:32:\"16aba93bea3dcea636f057f45f03f667\";s:32:\"73f25ab65158a2280a378dc0c21756ca\";s:32:\"6b6f61a38c49c349fc7ae0bf75014237\";s:32:\"1f27b9239692f683981ea442c86467b6\";s:32:\"4b3f67bdbae0bab7686afc1174d29d5a\";s:32:\"f02a07326a43bac8e52c53f3b635e8de\";s:32:\"8f0b7a4a969020f236eaddcfb67ea0ae\";s:32:\"1ab073e2670232ae7e19f5dd749e0017\";s:32:\"7b3342f19da0d03a3569e340ed3b9ddb\";s:32:\"3368f278ed5d9968ea3fe4c787300c48\";s:32:\"8e771f818e5bc5420a13b8d7bcb80ff8\";s:32:\"1e9e56e862d4d2def1018914942b77bf\";s:32:\"6e200febbb93de655cab060fa14a8497\";s:32:\"d653e6e490b7287e93dd7755aee31760\";s:32:\"98bf50358dcd819f52855f2d14309281\";s:32:\"84ae077add13949bca9ec53f233076f6\";s:32:\"f6b8bdb00d8d2c97c6a3ad7fd1c02770\";s:32:\"d09d713b18bc2394940fa67e0257cd13\";s:32:\"bc8f17386df0f8270b485497d0083921\";s:32:\"28707bd091d04862d879ed7192721ad8\";s:32:\"7e046bdfdc08dae69be48f4abb9fbd66\";s:32:\"f27cadef580dbfae0db891449b9069f6\";s:32:\"54fca9f6e282e833bb8e4ee03af5f420\";s:32:\"d22662269bb616ea56b6b4d315dc3bc9\";s:32:\"9e902aa6c6f2469f1613b8eb5e17e682\";s:32:\"9208e86210804680948cb34099b0cd8e\";s:32:\"2eda90e58694089df79dff755115954b\";s:32:\"55d62d3910386b9c98d02763f7e1635b\";s:32:\"8e6e1f4737f1eb719693dbb81405e62a\";s:32:\"9a177fa70fd542d2c04066f7b42e1e71\";s:32:\"6d8c80493b2a3fb08de381eb46303c29\";s:32:\"0ba55a7090e0b6570d0710d486bb399d\";s:32:\"4b969f5d7e583dda4ef83a4a09d42c21\";s:32:\"a6a0b3cdb8b277edda90e62db249108d\";s:32:\"4c43e2f64ee443bebb919b8d1e7f7cc1\";s:32:\"8387e9635f743f2f4793bfed79333bab\";s:32:\"48a3de3e08892cd09ce74334cb7d40a1\";s:32:\"d8ac5bd5d1bb6429df5ab018c8a0f81b\";s:32:\"64c087b4fddd2666ee1f6c63b989adfb\";s:32:\"21030b1c7bd2cffd1d8921dc5a53ec36\";s:32:\"8715a52e0e3114839f52c967a69454fa\";s:32:\"3c3ea06a457c657c81c98c4cfa8ce287\";s:32:\"bdbe9cb4397ba2bf902bd0b56417b078\";s:32:\"1f4144c66655b2e0ec3c317ee376abce\";s:32:\"337652d583e83b98b386e8ca9b9ef53f\";s:32:\"4241ef76c0cbd567bdf03e8ec51f1270\";s:32:\"b0600ac9f06668b8e1ce852b7d3dfb55\";s:32:\"ae5b36f5eb67a11d3cca82a0fdd48228\";s:32:\"a21115adce342f8a08f127c42ae3823f\";s:32:\"fee05c4989febe70fa89060d27776d88\";s:32:\"38d436f9148e1db183d71c017de4aa5a\";s:32:\"1f13e5ebbf6412a5a7b7f07c572ef7b9\";}s:4:\"hash\";s:65:\"1f13e5ebbf6412a5a7b7f07c572ef7b9-38d436f9148e1db183d71c017de4aa5a\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_resourcetemplateform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":551:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:3:{s:32:\"ae56b8eb738857827b5790de5a3458b8\";s:32:\"a70354b43d10bb99a8b115fb4782c17c\";s:32:\"5d56b522fd437801bf59bf897dfa61b9\";s:32:\"7af4f171a27420a7a633f19d8192e69c\";s:32:\"97e8a5054d9cbe09eeb29186c119c8ea\";s:32:\"6fccb32e39d7e371bc2da052841ad459\";}s:4:\"hash\";s:65:\"6fccb32e39d7e371bc2da052841ad459-97e8a5054d9cbe09eeb29186c119c8ea\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_vocabularyupdateform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":1031:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:9:{s:32:\"35cfc36e0f04080a4591578cf5b98944\";s:32:\"1ae5e849df7d9ba0f73e493d8a9ed769\";s:32:\"facf0af351b6e85dfc6f5920cc8b6943\";s:32:\"04d40dcc09451e5f69e98e6690907d5b\";s:32:\"747e1feec3b27efe380e2692f95d2cac\";s:32:\"563c374207156683c04c562ec7062f73\";s:32:\"7ec76276de800ef0005e9fbe8e67c8cd\";s:32:\"1463db06b3a83ce3f7e82465ccfdf9a9\";s:32:\"9f5962cce11d5908e2f919679adad996\";s:32:\"17995eca275a227fabae0c30bc263c97\";s:32:\"dd8933d55dd2ba88366e5ad64d6eff65\";s:32:\"807ec2bfee9fc4556940c7503ede942f\";s:32:\"5983e908a7a5e69618d2a815e687808f\";s:32:\"ca55bff71f78a771f241cb92102464cc\";s:32:\"85fde828a216badb46c629b009a33a9b\";s:32:\"7a2ca12ebf458be59300d0de344b0c78\";s:32:\"9dcc8adfc122939df64d9b28997ab6db\";s:32:\"d0cfe4ca407683052e2ecb9b11ddb387\";}s:4:\"hash\";s:65:\"d0cfe4ca407683052e2ecb9b11ddb387-9dcc8adfc122939df64d9b28997ab6db\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_resourcetemplateimportform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"11a829fb5c45faf5974467c329e6f8ec\";s:32:\"ff97de6a2fd5579ac397bf1f19dcf0db\";}s:4:\"hash\";s:65:\"ff97de6a2fd5579ac397bf1f19dcf0db-11a829fb5c45faf5974467c329e6f8ec\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587058083),('p4oumkcdjok1bjpilffl7jdnnj',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587543121.232901;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"p4oumkcdjok1bjpilffl7jdnnj\";}}',1587543121),('qfr4ltam6leau083oaauugv1f9',_binary '__ZF|a:7:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587543851.93281;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"3g22m8v94qeutkhjaju1r394b6\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587544732;}s:44:\"Zend_Validator_Csrf_salt_vocabularyform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587546234;}s:41:\"Zend_Validator_Csrf_salt_confirmform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587547452;}s:29:\"Zend_Validator_Csrf_salt_csrf\";a:1:{s:6:\"EXPIRE\";i:1587546230;}s:50:\"Zend_Validator_Csrf_salt_resourcetemplateform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587546583;}}redirect_url|s:30:\"http://localhost/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"dab4cfd537ca3c26e281107c2858d5a9\";s:32:\"69a38621f607679a382398634f2f7c2e\";}s:4:\"hash\";s:65:\"69a38621f607679a382398634f2f7c2e-dab4cfd537ca3c26e281107c2858d5a9\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Auth|C:23:\"Zend\\Stdlib\\ArrayObject\":223:{a:4:{s:7:\"storage\";a:1:{s:7:\"storage\";i:1;}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}OmekaMessenger|C:23:\"Zend\\Stdlib\\ArrayObject\":205:{a:4:{s:7:\"storage\";a:0:{}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_vocabularyform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":951:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:8:{s:32:\"9ad9724a46a3f689a98d2231a45b7156\";s:32:\"45e23d49295faa1fded9266b696f2768\";s:32:\"9aebdd7bdc577f493c890b43613dcd68\";s:32:\"c5f4f7e2c3adc8370160d6e4965f06f2\";s:32:\"17471fe6bd3298b8ab30d30680e40eee\";s:32:\"c814cb2b83aeca39352661d0185ac5bc\";s:32:\"77e73ebd34cb48458d48ac2d48f5c042\";s:32:\"d64a6b4d14f0fa8cf069ca26e5dbfcbc\";s:32:\"490cac13bdbcb08daf32ccac15439b69\";s:32:\"d71b5d31109fdb0808159909cf3351a3\";s:32:\"608a5b4fc0bc281049e9e4b507bb4ec4\";s:32:\"a5851296e9337efc0c8f6d27ac819a86\";s:32:\"ac075857434d8627de3562471048b1d1\";s:32:\"b12b926937c71ed266f144cafd776099\";s:32:\"d3bb469191133fe879517aa2f0d639b6\";s:32:\"07708eb3701d3fea38244067f3082100\";}s:4:\"hash\";s:65:\"07708eb3701d3fea38244067f3082100-d3bb469191133fe879517aa2f0d639b6\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_confirmform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":2792:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:31:{s:32:\"aa1dc3fb6a0e0bb93e4761e7cf0f6061\";s:32:\"077f8962161350478cf5ffc6eadd9af1\";s:32:\"d9b1db8036a1c831a98581aea469da01\";s:32:\"d8cb3327ccc4b7a1a5d02235e8e6f4ab\";s:32:\"687d8177dd4a7ab1d9133d616d2100b4\";s:32:\"c87014af82ad756ec0ce7caf62e038ef\";s:32:\"2e26a4b74208db1f5787fdc4a87cb631\";s:32:\"0d7f64d65da01fe6237271b9b03b2798\";s:32:\"48da75399c1cbfeac96ad3aed7892fe6\";s:32:\"ab8eb255b0c75612915f9b89397bb873\";s:32:\"b90a6452ae4a026aceabab76f47fe02e\";s:32:\"d11704d3646d0acbdcb7ddbfcedb32ce\";s:32:\"cae101945a081337b639837556e17aa2\";s:32:\"016270b0fa38dd343438e3a435f1a05e\";s:32:\"74d9b9d1700e7ae48e171bc41276b17c\";s:32:\"539278e1623393b7baf0c1fdff575b08\";s:32:\"4504f5fbaeef333d7345a8dc90b81fa2\";s:32:\"ba5f5d16644b932e4fa2712292e6da19\";s:32:\"3b886f04f719cb49232dd9fa0e9c630c\";s:32:\"4eb2b4c6c25bfbc0c41eaba8b6337050\";s:32:\"f766d7ef90f7fc5ecae5eda53c66c256\";s:32:\"9592beaa52f3c37945fc5d9f170e369d\";s:32:\"839a7bbaf65f698c1e7ce2b859d791ad\";s:32:\"f4f6c1f3048e835ce0a92e09909accb7\";s:32:\"b2226d74c306419928f279f3d3b8640e\";s:32:\"93696206d8b3d95d6a3bc264fde229d3\";s:32:\"05e821e9edf8a8474c36b11ade709e80\";s:32:\"61bbf184ecd04e6be628b48f9f774c47\";s:32:\"64cfdcaaa2a99d229c4052e49e4e24ce\";s:32:\"daed7dba9cee525e71128fd7fece4678\";s:32:\"ee3c206e27234d01a4cb11dfb2d10c0d\";s:32:\"b0894eb33a2ac329c5efc6df1b2546da\";s:32:\"493ba2c7e9943c27c89f1b8f04b36f07\";s:32:\"d58bf8f52925265e00aaf8dfa8ca1c74\";s:32:\"bf0e43660f160aef8390d95d70c6c3fb\";s:32:\"1469dfc47500736ad290f87f31281068\";s:32:\"b233e2a05da1ab09fbe89ebf354c5e8a\";s:32:\"7673cc3a48c414832c908d5f3d01a8ab\";s:32:\"181327b4600fe948bcb62076ef818a8c\";s:32:\"2ac95a59a54d7188b428e82962e4ff62\";s:32:\"ed01500767abeedca8978d484702a841\";s:32:\"280d7b195ae7cb9b1889cb3073049d64\";s:32:\"ff0c04686bdc849bd613da35b7ccab4d\";s:32:\"286b667bd7e8259130b453bd8f148bd0\";s:32:\"2875372ee83c9e72c235251ca0488264\";s:32:\"cd324a67d91ce5b60d41c88e1e93fff6\";s:32:\"d8968d921018e5ed4a9bc5a526151557\";s:32:\"01545de0de187fdf16eb753342919903\";s:32:\"7904ce37248094e03ef88c0b02207439\";s:32:\"38fc9463cf3305f98ba97bf4b0c0ae8c\";s:32:\"e1f3c7ab58815a9afe87c37e3f37b5cd\";s:32:\"fe59f7d56552e5d46fc51b075eaf3572\";s:32:\"571e01a4ec6a15ef351218c9e73fb74a\";s:32:\"ce61266749dab717cf373696aef986ce\";s:32:\"d85cb760e568e50a1505e2d6d6a20370\";s:32:\"a9a73019b24472ea859b964aabfbe0fa\";s:32:\"007b53e85fabcd12b5608ae10abafa71\";s:32:\"4bbab8babc232f251523fdd69dace22d\";s:32:\"098978b0532018fbac991a3469c71d6a\";s:32:\"6ca5d8e7211ac96187a56555add8f87e\";s:32:\"5fe98a7b81552c840b144ec1f2043b01\";s:32:\"87b13cf386775af5ff98296d0e6b7478\";}s:4:\"hash\";s:65:\"87b13cf386775af5ff98296d0e6b7478-5fe98a7b81552c840b144ec1f2043b01\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":471:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:2:{s:32:\"0f33da840c60c04897c5d8cac8e4ac64\";s:32:\"171e9244529513fe64a64a1e49ce84b3\";s:32:\"6be6972dbc424d63b81f84e9ebf738f3\";s:32:\"f22c17e71041e49ab2df62ffb34e3a73\";}s:4:\"hash\";s:65:\"f22c17e71041e49ab2df62ffb34e3a73-6be6972dbc424d63b81f84e9ebf738f3\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_resourcetemplateform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"9f3ead85dbafb1801c465694e108488f\";s:32:\"5b437e4f0c474009195ca591069bbe8a\";}s:4:\"hash\";s:65:\"5b437e4f0c474009195ca591069bbe8a-9f3ead85dbafb1801c465694e108488f\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587543852),('r1mv7mholsv3q3aa8ql601jhjv',_binary '__ZF|a:3:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587124211.167391;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"r1mv7mholsv3q3aa8ql601jhjv\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587127811;}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"e7fbcf623369a238ca0057a93ef56281\";s:32:\"f61220a59e78f8bdbdd0733498319ddf\";}s:4:\"hash\";s:65:\"f61220a59e78f8bdbdd0733498319ddf-e7fbcf623369a238ca0057a93ef56281\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587124211),('s2mps3q2dt27flu6vlos7qv1be',_binary '__ZF|a:3:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587553902.890706;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"s2mps3q2dt27flu6vlos7qv1be\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587557502;}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"8f4fc5df2db1ccb48dcc0e82053ed855\";s:32:\"385e1ea6c1e8dcd275e5bd9cc9e2eeba\";}s:4:\"hash\";s:65:\"385e1ea6c1e8dcd275e5bd9cc9e2eeba-8f4fc5df2db1ccb48dcc0e82053ed855\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587553902),('tmbuhsm37mbn14ulqb9tcma56p',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587500218.793273;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"tmbuhsm37mbn14ulqb9tcma56p\";}}',1587500218),('trh99r5lusvvpf78eaign0m1vc',_binary '__ZF|a:2:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587129016.587055;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"trh99r5lusvvpf78eaign0m1vc\";}}',1587129016),('ub799csf6kmgas539kontpb8gr',_binary '__ZF|a:5:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587489427.264194;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"afm4uj40it8o228flco04ua9vi\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587467496;}s:42:\"Zend_Validator_Csrf_salt_sitepageform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587467786;}s:41:\"Zend_Validator_Csrf_salt_confirmform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587493027;}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"c4db487b972ed672d06b1bec64a52a79\";s:32:\"1dec75b854451e11ffbd32290935ce0d\";}s:4:\"hash\";s:65:\"1dec75b854451e11ffbd32290935ce0d-c4db487b972ed672d06b1bec64a52a79\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Auth|C:23:\"Zend\\Stdlib\\ArrayObject\":223:{a:4:{s:7:\"storage\";a:1:{s:7:\"storage\";i:1;}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}OmekaMessenger|C:23:\"Zend\\Stdlib\\ArrayObject\":205:{a:4:{s:7:\"storage\";a:0:{}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_sitepageform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":871:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:7:{s:32:\"0417e4cd835cae44285e82e209300b84\";s:32:\"81f1e9f3f1a710dc9b5b7feaf5b470ef\";s:32:\"97e323fa771758cccb55576ece030eb4\";s:32:\"273f500a4bdafee6acd9f81ae98e416a\";s:32:\"4ddca13226b4be1455eecce82f8bcaa6\";s:32:\"beb9bced6f0ba9c860ed104c6e7dd13f\";s:32:\"c72435d641f8d940a08bf4d155366157\";s:32:\"2fccdcb09b92a9818c220764721c23f0\";s:32:\"13ea633e7a6605c6c93b260c3242b5a0\";s:32:\"a930885d60e87328f65a3127d34feb09\";s:32:\"8cd3002f4daacf7089f4d020ecf20c8d\";s:32:\"bc9140580fd1d592c293a4c77c05d9a3\";s:32:\"aac0eaaf90e5f0996211b5178633815f\";s:32:\"a5c379a29f5a77b16948508d29f8a75f\";}s:4:\"hash\";s:65:\"a5c379a29f5a77b16948508d29f8a75f-aac0eaaf90e5f0996211b5178633815f\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_confirmform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":471:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:2:{s:32:\"883e87e741309b11a580b9d687004c64\";s:32:\"edf353a7b8231a0bbfcaa475470436e5\";s:32:\"147a9b9ffbe89b8c20d2c059357d6c5a\";s:32:\"4d85404a6aed4c18f75569a2c3d6ba5c\";}s:4:\"hash\";s:65:\"4d85404a6aed4c18f75569a2c3d6ba5c-147a9b9ffbe89b8c20d2c059357d6c5a\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587489427),('ubeok6j311b93gsep3vl6ci91b',_binary '__ZF|a:3:{s:20:\"_REQUEST_ACCESS_TIME\";d:1586972738.061232;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"vtifqktobhnj4ubog4p2hlbfut\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1586962932;}}Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":551:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:3:{s:32:\"ca095fd4cb199fb248a9f2e0817ce760\";s:32:\"91825e2fefad9da8345689295b45c622\";s:32:\"aa4376ea192ff680c00976478ede4b9c\";s:32:\"266282e3a8b65925e4f4fed2c5ecbd19\";s:32:\"ff75ecf64fb482bf60f0fa54e450c5cd\";s:32:\"52a61d19ba0c568adc4db86afe8352cf\";}s:4:\"hash\";s:65:\"52a61d19ba0c568adc4db86afe8352cf-ff75ecf64fb482bf60f0fa54e450c5cd\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Auth|C:23:\"Zend\\Stdlib\\ArrayObject\":223:{a:4:{s:7:\"storage\";a:1:{s:7:\"storage\";i:1;}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}OmekaMessenger|C:23:\"Zend\\Stdlib\\ArrayObject\":205:{a:4:{s:7:\"storage\";a:0:{}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1586972738),('vrqu634aho7em9q1gkdbe1b3hj',_binary '__ZF|a:6:{s:20:\"_REQUEST_ACCESS_TIME\";d:1587582911.70558;s:6:\"_VALID\";a:1:{s:25:\"Zend\\Session\\Validator\\Id\";s:26:\"4hrfk2sqmntkoqbk5u34j72dv5\";}s:39:\"Zend_Validator_Csrf_salt_loginform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587547530;}s:29:\"Zend_Validator_Csrf_salt_csrf\";a:1:{s:6:\"EXPIRE\";i:1587583935;}s:41:\"Zend_Validator_Csrf_salt_confirmform_csrf\";a:1:{s:6:\"EXPIRE\";i:1587583935;}s:34:\"Zend_Validator_Csrf_salt_form_csrf\";a:1:{s:6:\"EXPIRE\";i:1587583944;}}redirect_url|s:35:\"http://vm.helicorp.fr/omeka-s/admin\";Zend_Validator_Csrf_salt_loginform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":391:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:1:{s:32:\"177bb70b6b878e2a4b274ffbd72518c0\";s:32:\"11efdb2cbb995143913f3d6ace1f1bf5\";}s:4:\"hash\";s:65:\"11efdb2cbb995143913f3d6ace1f1bf5-177bb70b6b878e2a4b274ffbd72518c0\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Auth|C:23:\"Zend\\Stdlib\\ArrayObject\":223:{a:4:{s:7:\"storage\";a:1:{s:7:\"storage\";i:2;}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}OmekaMessenger|C:23:\"Zend\\Stdlib\\ArrayObject\":205:{a:4:{s:7:\"storage\";a:0:{}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":471:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:2:{s:32:\"37bc46ff58aeeb21cf3740d1b27292e0\";s:32:\"dd0faf3962192f525f8b49566ca667df\";s:32:\"b27e763b327a53b9bc0a577754c7b3df\";s:32:\"aa90ffbd5c6c13079257426e271c5dff\";}s:4:\"hash\";s:65:\"aa90ffbd5c6c13079257426e271c5dff-b27e763b327a53b9bc0a577754c7b3df\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_confirmform_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":1592:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:16:{s:32:\"77f12a2d724aa49c8df0dda1cef17686\";s:32:\"387d0201a5042dbd3f78d7d2829a1079\";s:32:\"f677c9ccfb76c6651427a564bb275c0c\";s:32:\"4255bad220e84d391d2676bfa2b8683c\";s:32:\"84f6ab71bd940940458a964200ba6a41\";s:32:\"751e7c404d2a9246e2cb1c94348f7c31\";s:32:\"d04c6239c47fc61443de4ae932e9eed0\";s:32:\"6c95375df4afd4a738ef0ff3af692154\";s:32:\"de85f54f7dd9ca8b1003a9e89eb0218e\";s:32:\"75c6732a7c44e63bf7f9077271e511b2\";s:32:\"220c12e8bdbd643a2bfa9f1f3a150a41\";s:32:\"af660806675e1dd71b0156e0b40f6686\";s:32:\"e1faaeeb30cc6fdac3bd5d949708ae50\";s:32:\"8a0d09ddf51e2e81c0557b0a336d1a7d\";s:32:\"58b652e66faf4b7d056a2d1cd7d598f7\";s:32:\"8b7e608de65e452f24dccf0cf6761f2e\";s:32:\"35ccfe36c22b1064a9ea8c5fc195f454\";s:32:\"859d1526984409674b38df853357a161\";s:32:\"494bea5e0ef98623243f85cb55822782\";s:32:\"2fa161112cfbefdd591d399bef1c7f07\";s:32:\"1d6ef4996dd4e91237d70af195e1da29\";s:32:\"cc46b5742d3385f30364342f6167ac28\";s:32:\"f39cc98817ca570c481c6e1ff2c038b5\";s:32:\"c798c13e4c4b0676a7e95fce3ac02560\";s:32:\"62f9b833a65fc11a50ceca5dbfa152b1\";s:32:\"e77a1d57a6e9c8ac62674edf8fffa2ae\";s:32:\"43af1a57bbf9084c798d7479311207da\";s:32:\"4ec7cf652614c8784481eb5ee7a186e8\";s:32:\"a27a85f00293e9771aa2d142fcad4151\";s:32:\"cb34f5c5026e3096a05ce604ccac56de\";s:32:\"04f8ff4495c5a716d71d444bc188452e\";s:32:\"8b5a22820333e03ab58e36c9557db7b9\";}s:4:\"hash\";s:65:\"8b5a22820333e03ab58e36c9557db7b9-04f8ff4495c5a716d71d444bc188452e\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}Zend_Validator_Csrf_salt_form_csrf|C:23:\"Zend\\Stdlib\\ArrayObject\":1192:{a:4:{s:7:\"storage\";a:2:{s:9:\"tokenList\";a:11:{s:32:\"6fa33d5b7e6c1eac4ccf0326cc79c746\";s:32:\"276c84b50c3eea78837e5cd629826174\";s:32:\"10e4afb898231b7850b1ce16a901890e\";s:32:\"ab7f774ac1e1bb87947fe10dc2bcf287\";s:32:\"d2d4b1f339b006942b8c727c3dea4cda\";s:32:\"a03e350225b40cfd9c5d3618c0409fa7\";s:32:\"d02b631b7c1eb081446ba5068b9834fe\";s:32:\"d81c0aca75f5a52c396a423b76d1671e\";s:32:\"b74ef3a54866c23263a73bcee64c0456\";s:32:\"f4cb393895407196d6ff1406d5a1dc6a\";s:32:\"19e9da979d2e4b2739675a24c2765690\";s:32:\"e320bd7ad992fc73526aa182f299b1a6\";s:32:\"a7a5d8e282ad7a9c08e58fe0f27a8db5\";s:32:\"c79e565f0ec7b8e2fb074d69a79bc86e\";s:32:\"80e3808242f8647d78c119bb0403be35\";s:32:\"581b4f25fc3d7eaa881a7f99c91f7dfd\";s:32:\"7bd9dfc6973466b8456af0a6bf73f664\";s:32:\"9b539c97cea7ba24ff143a78d5d7ca46\";s:32:\"1d7e436832b7c48c542bbc45f4f73c20\";s:32:\"b06a26ae5c3495365df650481e6202ce\";s:32:\"688e713f62d372fea78c8c6e635da7a3\";s:32:\"e10c2d1568cd6164cf45a49b356c53d5\";}s:4:\"hash\";s:65:\"e10c2d1568cd6164cf45a49b356c53d5-688e713f62d372fea78c8c6e635da7a3\";}s:4:\"flag\";i:2;s:13:\"iteratorClass\";s:13:\"ArrayIterator\";s:19:\"protectedProperties\";a:4:{i:0;s:7:\"storage\";i:1;s:4:\"flag\";i:2;s:13:\"iteratorClass\";i:3;s:19:\"protectedProperties\";}}}',1587582911);
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting` (
  `id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES ('administrator_email','\"idriss.benhamed@gmail.com\"'),('default_site','\"\"'),('default_to_private','\"0\"'),('disable_file_validation','\"1\"'),('disable_jsonld_embed','\"0\"'),('extension_whitelist','[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),('installation_title','\"MEDAS 19-20\"'),('locale','\"en_US\"'),('media_type_whitelist','[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),('pagination_per_page','\"25\"'),('property_label_information','\"none\"'),('recaptcha_secret_key','\"\"'),('recaptcha_site_key','\"\"'),('time_zone','\"UTC\"'),('use_htmlpurifier','\"0\"'),('version','\"2.1.1\"'),('version_notifications','\"1\"');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site` (
  `id` int NOT NULL AUTO_INCREMENT,
  `homepage_id` int DEFAULT NULL,
  `owner_id` int DEFAULT NULL,
  `slug` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `navigation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `item_pool` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_694309E4989D9B62` (`slug`),
  UNIQUE KEY `UNIQ_694309E4571EDDA` (`homepage_id`),
  KEY `IDX_694309E47E3C61F9` (`owner_id`),
  CONSTRAINT `FK_694309E4571EDDA` FOREIGN KEY (`homepage_id`) REFERENCES `site_page` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_694309E47E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site`
--

LOCK TABLES `site` WRITE;
/*!40000 ALTER TABLE `site` DISABLE KEYS */;
INSERT INTO `site` VALUES (2,NULL,1,'bienvenue-sur-le-site-helicorp','default','Bienvenue sur le site Helicorp',NULL,'[{\"type\":\"page\",\"links\":[],\"data\":{\"id\":3,\"label\":null}},{\"type\":\"page\",\"links\":[],\"data\":{\"id\":4,\"label\":null}},{\"type\":\"page\",\"links\":[],\"data\":{\"id\":5,\"label\":null}}]','{\"fulltext_search\":\"\",\"o:site_item_set\":[{\"o:item_set\":{\"o:id\":\"7\"}}]}','2020-04-16 12:09:00','2020-04-21 10:12:20',1);
/*!40000 ALTER TABLE `site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_block_attachment`
--

DROP TABLE IF EXISTS `site_block_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_block_attachment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `block_id` int NOT NULL,
  `item_id` int DEFAULT NULL,
  `media_id` int DEFAULT NULL,
  `caption` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_236473FEE9ED820C` (`block_id`),
  KEY `IDX_236473FE126F525E` (`item_id`),
  KEY `IDX_236473FEEA9FDD75` (`media_id`),
  KEY `block_position` (`block_id`,`position`),
  CONSTRAINT `FK_236473FE126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_236473FEE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `site_page_block` (`id`),
  CONSTRAINT `FK_236473FEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_block_attachment`
--

LOCK TABLES `site_block_attachment` WRITE;
/*!40000 ALTER TABLE `site_block_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_block_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_item_set`
--

DROP TABLE IF EXISTS `site_item_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_item_set` (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_id` int NOT NULL,
  `item_set_id` int NOT NULL,
  `position` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D4CE134F6BD1646960278D7` (`site_id`,`item_set_id`),
  KEY `IDX_D4CE134F6BD1646` (`site_id`),
  KEY `IDX_D4CE134960278D7` (`item_set_id`),
  KEY `position` (`position`),
  CONSTRAINT `FK_D4CE134960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_D4CE134F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_item_set`
--

LOCK TABLES `site_item_set` WRITE;
/*!40000 ALTER TABLE `site_item_set` DISABLE KEYS */;
INSERT INTO `site_item_set` VALUES (1,2,7,1);
/*!40000 ALTER TABLE `site_item_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_page`
--

DROP TABLE IF EXISTS `site_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_page` (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_id` int NOT NULL,
  `slug` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2F900BD9F6BD1646989D9B62` (`site_id`,`slug`),
  KEY `IDX_2F900BD9F6BD1646` (`site_id`),
  CONSTRAINT `FK_2F900BD9F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_page`
--

LOCK TABLES `site_page` WRITE;
/*!40000 ALTER TABLE `site_page` DISABLE KEYS */;
INSERT INTO `site_page` VALUES (3,2,'accueil','Accueil','2020-04-16 12:10:58','2020-04-16 12:12:02'),(4,2,'Galerie','Galerie','2020-04-16 12:12:51','2020-04-17 13:46:54'),(5,2,'helimine','HeliMine','2020-04-21 10:12:19','2020-04-21 10:16:26');
/*!40000 ALTER TABLE `site_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_page_block`
--

DROP TABLE IF EXISTS `site_page_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_page_block` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` int NOT NULL,
  `layout` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `position` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C593E731C4663E4` (`page_id`),
  KEY `page_position` (`page_id`,`position`),
  CONSTRAINT `FK_C593E731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `site_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_page_block`
--

LOCK TABLES `site_page_block` WRITE;
/*!40000 ALTER TABLE `site_page_block` DISABLE KEYS */;
INSERT INTO `site_page_block` VALUES (4,3,'html','{\"html\":\"<p><img src=\\\"http:\\/\\/vm.helicorp.fr\\/omeka-s\\/image\\/banniere.jpg\\\" \\/><\\/p>\\r\\n\"}',1),(6,4,'pageTitle','[]',1),(7,4,'browsePreview','{\"resource_type\":\"item_sets\",\"query\":\"\",\"limit\":\"12\",\"heading\":\"\",\"link-text\":\"Browse all\"}',2),(8,5,'pageTitle','[]',1),(9,5,'html','{\"html\":\"<h3>Exemple d&#39;une de nos interventions avec HeliSpace :<\\/h3>\\r\\n\\r\\n<center>\\r\\n<h2><iframe allow=\\\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\\\" allowfullscreen=\\\"\\\" frameborder=\\\"0\\\" height=\\\"720\\\" src=\\\"https:\\/\\/www.youtube.com\\/embed\\/SiAqCyIs004?controls=0\\\" style=\\\"height: 720px;\\\" width=\\\"1280\\\"><\\/iframe><\\/h2>\\r\\n<\\/center>\\r\\n\"}',2);
/*!40000 ALTER TABLE `site_page_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_permission`
--

DROP TABLE IF EXISTS `site_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_id` int NOT NULL,
  `user_id` int NOT NULL,
  `role` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C0401D6FF6BD1646A76ED395` (`site_id`,`user_id`),
  KEY `IDX_C0401D6FF6BD1646` (`site_id`),
  KEY `IDX_C0401D6FA76ED395` (`user_id`),
  CONSTRAINT `FK_C0401D6FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C0401D6FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_permission`
--

LOCK TABLES `site_permission` WRITE;
/*!40000 ALTER TABLE `site_permission` DISABLE KEYS */;
INSERT INTO `site_permission` VALUES (2,2,1,'admin');
/*!40000 ALTER TABLE `site_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_setting`
--

DROP TABLE IF EXISTS `site_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_setting` (
  `id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_id` int NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`,`site_id`),
  KEY `IDX_64D05A53F6BD1646` (`site_id`),
  CONSTRAINT `FK_64D05A53F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_setting`
--

LOCK TABLES `site_setting` WRITE;
/*!40000 ALTER TABLE `site_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'idriss.benhamed@gmail.com','Helicraft','2020-04-15 13:06:11','2020-04-15 13:06:11','$2y$10$ar2CIUaYt1/1Rf358m1NSe6MSdP62RIEWZq87xkcl5/XcGLKTkD9i','global_admin',1),(2,'samuel.szoniecky@univ-paris8.fr','Samuel','2020-04-16 08:15:04','2020-04-16 08:15:44','$2y$10$o3eaJh/pi9W/1dzlkYeKUeEgnPAOdhdFwxN.gjLxLbxbRw8MUYQI2','global_admin',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_setting`
--

DROP TABLE IF EXISTS `user_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_setting` (
  `id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`,`user_id`),
  KEY `IDX_C779A692A76ED395` (`user_id`),
  CONSTRAINT `FK_C779A692A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_setting`
--

LOCK TABLES `user_setting` WRITE;
/*!40000 ALTER TABLE `user_setting` DISABLE KEYS */;
INSERT INTO `user_setting` VALUES ('default_resource_template',2,'\"\"'),('locale',2,'\"\"');
/*!40000 ALTER TABLE `user_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `value`
--

DROP TABLE IF EXISTS `value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `value` (
  `id` int NOT NULL AUTO_INCREMENT,
  `resource_id` int NOT NULL,
  `property_id` int NOT NULL,
  `value_resource_id` int DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `uri` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1D77583489329D25` (`resource_id`),
  KEY `IDX_1D775834549213EC` (`property_id`),
  KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  KEY `value` (`value`(190)),
  KEY `uri` (`uri`(190)),
  CONSTRAINT `FK_1D7758344BC72506` FOREIGN KEY (`value_resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_1D775834549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_1D77583489329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `value`
--

LOCK TABLES `value` WRITE;
/*!40000 ALTER TABLE `value` DISABLE KEYS */;
INSERT INTO `value` VALUES (5,4,229,NULL,'literal','','1',NULL,1),(6,4,237,NULL,'literal','','3.6Ghz',NULL,1),(7,4,230,NULL,'literal','','AMD',NULL,1),(8,4,231,NULL,'literal','','3700X',NULL,1),(10,5,229,NULL,'literal','','1',NULL,1),(11,5,230,NULL,'literal','','AMD',NULL,1),(12,5,232,NULL,'literal','','AM4',NULL,1),(13,4,242,5,'resource:item',NULL,NULL,NULL,1),(15,4,1,NULL,'literal','','AMD RYZEN 7 3700X',NULL,1),(16,6,229,NULL,'literal','','1',NULL,1),(17,6,230,NULL,'literal','','G.SKILL',NULL,1),(18,6,231,NULL,'literal','','Trident Z Royal',NULL,1),(19,6,238,NULL,'literal','','DDR4',NULL,1),(20,6,235,NULL,'literal','','Silver',NULL,1),(21,6,237,NULL,'literal','','3600MHz',NULL,1),(22,6,244,NULL,'literal','','8',NULL,1),(23,7,239,8,'resource:item',NULL,NULL,NULL,1),(24,7,240,6,'resource:item',NULL,NULL,NULL,1),(25,7,240,6,'resource:item',NULL,NULL,NULL,1),(26,7,242,5,'resource:item',NULL,NULL,NULL,1),(27,8,229,NULL,'literal','','1',NULL,1),(28,8,230,NULL,'literal','','MSI',NULL,1),(29,8,231,NULL,'literal','','NVIDIA Geforce GTX970',NULL,1),(30,8,244,NULL,'literal','','4Go',NULL,1),(31,7,241,9,'resource:item',NULL,NULL,NULL,1),(32,8,1,NULL,'literal','','MSI GTX970 Gaming 4',NULL,1),(33,6,1,NULL,'literal','','G.Skill Trident Z Royal Silver',NULL,1),(34,7,241,9,'resource:item',NULL,NULL,NULL,1),(35,9,229,NULL,'literal','','1',NULL,1),(36,9,233,NULL,'literal','','140',NULL,1),(37,9,230,NULL,'literal','','Fractal Design',NULL,1),(38,9,231,NULL,'literal','','Prisma RGB PWM',NULL,1),(39,9,1,NULL,'literal','','Fractal RGB',NULL,1),(40,7,241,9,'resource:item',NULL,NULL,NULL,1),(41,7,243,4,'resource:item',NULL,NULL,NULL,1),(42,7,245,11,'resource:item',NULL,NULL,NULL,1),(43,10,229,NULL,'literal','','1',NULL,1),(44,10,230,NULL,'literal','','Gigabyte',NULL,1),(45,10,231,NULL,'literal','','AORUS B450-M',NULL,1),(46,10,233,NULL,'literal','','Micro ATX',NULL,1),(47,10,242,5,'resource:item',NULL,NULL,NULL,1),(48,10,1,NULL,'literal','','AORUS B450-M',NULL,1),(49,11,235,NULL,'literal','','Blanc',NULL,1),(50,11,236,NULL,'literal','','Micro ATX',NULL,1),(51,11,229,NULL,'literal','','1',NULL,1),(52,11,230,NULL,'literal','','IN WIN',NULL,1),(53,11,231,NULL,'literal','','301',NULL,1),(54,11,1,NULL,'literal','','IN WIN 301',NULL,1),(55,7,1,NULL,'literal','','PC Liberty',NULL,1),(58,5,1,NULL,'literal','','AM4',NULL,1);
/*!40000 ALTER TABLE `value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabulary`
--

DROP TABLE IF EXISTS `vocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vocabulary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int DEFAULT NULL,
  `namespace_uri` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  KEY `IDX_9099C97B7E3C61F9` (`owner_id`),
  CONSTRAINT `FK_9099C97B7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabulary`
--

LOCK TABLES `vocabulary` WRITE;
/*!40000 ALTER TABLE `vocabulary` DISABLE KEYS */;
INSERT INTO `vocabulary` VALUES (1,NULL,'http://purl.org/dc/terms/','dcterms','Dublin Core','Basic resource metadata (DCMI Metadata Terms)'),(2,NULL,'http://purl.org/dc/dcmitype/','dctype','Dublin Core Type','Basic resource types (DCMI Type Vocabulary)'),(33,1,'https://helicorp.fr/PC','PC','PC',''),(38,1,'http://theme-e.adaptcentre.ie/dave','dave','Data value','');
/*!40000 ALTER TABLE `vocabulary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-30 10:33:38
