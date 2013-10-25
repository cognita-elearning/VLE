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
-- Table structure for table `rules_sets`
--

DROP TABLE IF EXISTS `rules_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rules_sets` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules_sets`
--

LOCK TABLES `rules_sets` WRITE;
/*!40000 ALTER TABLE `rules_sets` DISABLE KEYS */;
INSERT INTO `rules_sets` VALUES ('rules_set_1','a:4:{s:5:\"label\";s:44:\"Example: Empty rule set working with content\";s:9:\"arguments\";a:1:{s:4:\"node\";a:2:{s:4:\"type\";s:4:\"node\";s:5:\"label\";s:7:\"Content\";}}s:10:\"categories\";a:1:{i:0;s:7:\"example\";}s:6:\"status\";s:6:\"custom\";}'),('rules_send_course_email_reminders','a:4:{s:9:\"arguments\";a:3:{s:10:\"form_state\";a:2:{s:5:\"label\";s:10:\"Form state\";s:4:\"type\";s:10:\"form_state\";}s:4:\"node\";a:2:{s:5:\"label\";s:8:\"Sadržaj\";s:4:\"type\";s:4:\"node\";}s:4:\"user\";a:2:{s:5:\"label\";s:8:\"Korisnik\";s:4:\"type\";s:4:\"user\";}}s:5:\"label\";s:27:\"Send course email reminders\";s:6:\"status\";s:6:\"custom\";s:10:\"categories\";a:1:{i:0;s:9:\"Messaging\";}}');
/*!40000 ALTER TABLE `rules_sets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:17
