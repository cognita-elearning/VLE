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
-- Table structure for table `noderelationships_settings`
--

DROP TABLE IF EXISTS `noderelationships_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noderelationships_settings` (
  `type_name` varchar(32) NOT NULL DEFAULT '',
  `relation_type` varchar(10) NOT NULL DEFAULT '',
  `related_type` varchar(32) NOT NULL DEFAULT '',
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `settings` mediumtext NOT NULL,
  PRIMARY KEY (`type_name`,`relation_type`,`related_type`,`field_name`),
  KEY `type_field_relation` (`type_name`,`field_name`,`relation_type`),
  KEY `related_field_relation` (`related_type`,`field_name`,`relation_type`),
  KEY `field_name` (`field_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noderelationships_settings`
--

LOCK TABLES `noderelationships_settings` WRITE;
/*!40000 ALTER TABLE `noderelationships_settings` DISABLE KEYS */;
INSERT INTO `noderelationships_settings` VALUES ('book_assignment','backref','book','field_assignment_reference','a:3:{s:6:\"weight\";s:1:\"0\";s:19:\"back_reference_view\";s:0:\"\";s:6:\"region\";s:5:\"field\";}'),('book','noderef','','field_assignment_reference','a:4:{s:25:\"search_and_reference_view\";s:36:\"noderelationships_noderef:page_table\";s:18:\"view_in_new_window\";s:26:\"field_assignment_reference\";s:14:\"edit_reference\";s:26:\"field_assignment_reference\";s:20:\"create_and_reference\";s:26:\"field_assignment_reference\";}');
/*!40000 ALTER TABLE `noderelationships_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:19
