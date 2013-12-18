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
-- Table structure for table `content_field_assignment_file`
--

DROP TABLE IF EXISTS `content_field_assignment_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_field_assignment_file` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_assignment_file_fid` int(11) DEFAULT NULL,
  `field_assignment_file_list` tinyint(4) DEFAULT NULL,
  `field_assignment_file_data` text,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_field_assignment_file`
--

LOCK TABLES `content_field_assignment_file` WRITE;
/*!40000 ALTER TABLE `content_field_assignment_file` DISABLE KEYS */;
INSERT INTO `content_field_assignment_file` VALUES (175,97,0,NULL,NULL,NULL),(190,112,0,NULL,NULL,NULL),(191,113,0,NULL,NULL,NULL),(192,114,0,NULL,NULL,NULL),(193,115,0,NULL,NULL,NULL),(194,116,0,NULL,NULL,NULL),(196,118,0,NULL,NULL,NULL),(197,119,0,NULL,NULL,NULL),(198,120,0,119,1,NULL),(200,122,0,NULL,NULL,NULL),(202,124,0,NULL,NULL,NULL),(204,126,0,NULL,NULL,NULL),(205,127,0,NULL,NULL,NULL),(206,128,0,NULL,NULL,NULL),(207,129,0,NULL,NULL,NULL),(208,130,0,NULL,NULL,NULL),(209,131,0,NULL,NULL,NULL),(210,132,0,NULL,NULL,NULL),(211,133,0,NULL,NULL,NULL),(212,134,0,NULL,NULL,NULL),(213,135,0,NULL,NULL,NULL),(214,136,0,NULL,NULL,NULL),(215,137,0,NULL,NULL,NULL),(216,138,0,NULL,NULL,NULL),(217,139,0,NULL,NULL,NULL),(218,140,0,NULL,NULL,NULL),(219,141,0,NULL,NULL,NULL),(220,142,0,NULL,NULL,NULL),(221,143,0,NULL,NULL,NULL),(222,144,0,NULL,NULL,NULL),(223,145,0,NULL,NULL,NULL),(224,146,0,NULL,NULL,NULL),(225,147,0,NULL,NULL,NULL),(226,148,0,NULL,NULL,NULL),(227,149,0,NULL,NULL,NULL),(228,150,0,NULL,NULL,NULL),(229,151,0,NULL,NULL,NULL),(280,201,0,79,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(281,202,0,80,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(282,203,0,81,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(283,204,0,82,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(284,205,0,83,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(285,206,0,84,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(286,207,0,85,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(287,208,0,120,1,NULL),(288,209,0,87,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(289,210,0,88,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(290,211,0,89,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(291,212,0,90,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(292,213,0,91,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(293,214,0,92,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(294,215,0,93,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(295,216,0,94,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(296,217,0,95,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(297,218,0,96,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(298,219,0,97,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(299,220,0,98,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(300,221,0,99,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(301,222,0,100,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(302,223,0,101,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(303,224,0,102,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(304,225,0,103,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(305,226,0,104,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(306,227,0,105,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(307,228,0,106,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(308,229,0,107,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(309,230,0,108,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(310,231,0,109,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(311,232,0,110,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(312,233,0,111,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(313,234,0,112,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(314,235,0,113,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(315,236,0,114,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}'),(316,237,0,115,1,'a:3:{s:11:\"description\";s:0:\"\";s:3:\"alt\";N;s:5:\"title\";N;}');
/*!40000 ALTER TABLE `content_field_assignment_file` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:34
