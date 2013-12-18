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
-- Table structure for table `content_type_book_assignment`
--

DROP TABLE IF EXISTS `content_type_book_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_type_book_assignment` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_type_book_assignment`
--

LOCK TABLES `content_type_book_assignment` WRITE;
/*!40000 ALTER TABLE `content_type_book_assignment` DISABLE KEYS */;
INSERT INTO `content_type_book_assignment` VALUES (175,97),(190,112),(191,113),(192,114),(193,115),(194,116),(196,118),(197,119),(198,120),(200,122),(202,124),(204,126),(205,127),(206,128),(207,129),(208,130),(209,131),(210,132),(211,133),(212,134),(213,135),(214,136),(215,137),(216,138),(217,139),(218,140),(219,141),(220,142),(221,143),(222,144),(223,145),(224,146),(225,147),(226,148),(227,149),(228,150),(229,151),(280,201),(281,202),(282,203),(283,204),(284,205),(285,206),(286,207),(287,208),(288,209),(289,210),(290,211),(291,212),(292,213),(293,214),(294,215),(295,216),(296,217),(297,218),(298,219),(299,220),(300,221),(301,222),(302,223),(303,224),(304,225),(305,226),(306,227),(307,228),(308,229),(309,230),(310,231),(311,232),(312,233),(313,234),(314,235),(315,236),(316,237);
/*!40000 ALTER TABLE `content_type_book_assignment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:21
