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
-- Table structure for table `scorm`
--

DROP TABLE IF EXISTS `scorm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scorm` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `nodereference` bigint(20) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `summary` text NOT NULL,
  `version` varchar(9) NOT NULL,
  `maxgrade` float NOT NULL DEFAULT '0',
  `grademethod` tinyint(4) NOT NULL DEFAULT '0',
  `whatgrade` bigint(20) NOT NULL DEFAULT '0',
  `maxattempt` bigint(20) NOT NULL DEFAULT '1',
  `updatefreq` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `md5hash` varchar(32) NOT NULL,
  `launch` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skipview` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `hidebrowse` tinyint(4) NOT NULL DEFAULT '0',
  `hidetoc` tinyint(4) NOT NULL DEFAULT '0',
  `hidenav` tinyint(4) NOT NULL DEFAULT '0',
  `auto` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `popup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `options` varchar(255) NOT NULL,
  `width` bigint(20) unsigned NOT NULL DEFAULT '100',
  `height` bigint(20) unsigned NOT NULL DEFAULT '600',
  `timemodified` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scorm`
--

LOCK TABLES `scorm` WRITE;
/*!40000 ALTER TABLE `scorm` DISABLE KEYS */;
/*!40000 ALTER TABLE `scorm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:23
