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
-- Table structure for table `og`
--

DROP TABLE IF EXISTS `og`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `og` (
  `nid` int(11) NOT NULL,
  `og_selective` int(11) NOT NULL DEFAULT '0',
  `og_description` varchar(255) DEFAULT NULL,
  `og_theme` varchar(255) DEFAULT NULL,
  `og_register` tinyint(4) NOT NULL DEFAULT '0',
  `og_directory` tinyint(4) NOT NULL DEFAULT '0',
  `og_language` varchar(12) NOT NULL DEFAULT '',
  `og_private` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `og`
--

LOCK TABLES `og` WRITE;
/*!40000 ALTER TABLE `og` DISABLE KEYS */;
INSERT INTO `og` VALUES (284,1,'MS Excel osnovni','',0,1,'',0),(200,1,'Verzija 2010','',0,1,'',0),(349,1,'MS PowerPoint osnovni','',0,1,'',0),(374,1,'MS Word osnovni','',0,1,'',0),(442,2,'MS Word napredni','',0,1,'',0),(450,2,'MS Access napredni','',0,1,'',0),(459,1,'MS Access osnovni','',0,1,'',0),(3077,1,'Internet i MS Outlook','',0,1,'',0),(3078,1,'MS Project','',0,1,'',0),(3460,1,'MS Windows XP','',0,1,'',0);
/*!40000 ALTER TABLE `og` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:29
