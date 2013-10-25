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
-- Table structure for table `pm_index`
--

DROP TABLE IF EXISTS `pm_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_index` (
  `mid` int(10) unsigned NOT NULL,
  `thread_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` int(10) unsigned NOT NULL DEFAULT '1',
  `deleted` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `list` (`uid`,`deleted`,`is_new`),
  KEY `messages` (`mid`,`uid`),
  KEY `participants` (`thread_id`,`uid`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pm_index`
--

LOCK TABLES `pm_index` WRITE;
/*!40000 ALTER TABLE `pm_index` DISABLE KEYS */;
INSERT INTO `pm_index` VALUES (1,1,357,0,1377185785),(1,1,1,0,0),(2,2,1,0,0),(2,2,357,0,0),(3,3,1,0,0),(3,3,357,0,0),(4,4,356,0,0),(4,4,1,0,0),(7,3,357,0,0),(7,3,1,0,0),(8,8,356,0,0),(10,10,1,0,0);
/*!40000 ALTER TABLE `pm_index` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:25
