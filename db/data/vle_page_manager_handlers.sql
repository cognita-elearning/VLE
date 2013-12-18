CREATE DATABASE  IF NOT EXISTS `vle` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `vle`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: vle
-- ------------------------------------------------------
-- Server version	5.5.24-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `page_manager_handlers`
--

DROP TABLE IF EXISTS `page_manager_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_manager_handlers` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `task` varchar(64) DEFAULT NULL,
  `subtask` varchar(64) NOT NULL DEFAULT '',
  `handler` varchar(64) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `conf` longtext NOT NULL,
  PRIMARY KEY (`did`),
  UNIQUE KEY `name` (`name`),
  KEY `fulltask` (`task`,`subtask`,`weight`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_manager_handlers`
--

LOCK TABLES `page_manager_handlers` WRITE;
/*!40000 ALTER TABLE `page_manager_handlers` DISABLE KEYS */;
INSERT INTO `page_manager_handlers` VALUES (1,'page_home_panel_context','page','home','panel_context',0,'a:8:{s:5:\"title\";s:4:\"Home\";s:9:\"no_blocks\";i:0;s:8:\"pipeline\";s:8:\"standard\";s:6:\"css_id\";s:0:\"\";s:3:\"css\";s:0:\"\";s:8:\"contexts\";a:1:{i:0;a:5:{s:4:\"name\";s:4:\"user\";s:2:\"id\";i:1;s:10:\"identifier\";s:8:\"Korisnik\";s:7:\"keyword\";s:4:\"user\";s:16:\"context_settings\";a:3:{s:4:\"type\";s:7:\"current\";s:4:\"user\";s:0:\"\";s:3:\"uid\";s:0:\"\";}}}s:13:\"relationships\";a:0:{}s:3:\"did\";s:1:\"1\";}');
/*!40000 ALTER TABLE `page_manager_handlers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:18
