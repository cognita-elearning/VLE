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
-- Table structure for table `minipanel_templates`
--

DROP TABLE IF EXISTS `minipanel_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minipanel_templates` (
  `nid` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `page` varchar(128) NOT NULL DEFAULT '',
  `teaser` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`nid`,`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minipanel_templates`
--

LOCK TABLES `minipanel_templates` WRITE;
/*!40000 ALTER TABLE `minipanel_templates` DISABLE KEYS */;
INSERT INTO `minipanel_templates` VALUES (3558,3992,'',''),(1809,2039,'',''),(1809,2040,'',''),(1813,2044,'',''),(1813,2045,'',''),(1814,2046,'',''),(1895,2132,'',''),(1823,2057,'',''),(1823,2058,'',''),(1824,2059,'',''),(1824,2060,'',''),(1826,2062,'',''),(1826,2063,'',''),(3787,4063,'','');
/*!40000 ALTER TABLE `minipanel_templates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:20
