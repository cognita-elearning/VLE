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
-- Table structure for table `menu_per_role`
--

DROP TABLE IF EXISTS `menu_per_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_per_role` (
  `mlid` int(10) unsigned NOT NULL,
  `rids` text NOT NULL,
  `hrids` text NOT NULL,
  PRIMARY KEY (`mlid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_per_role`
--

LOCK TABLES `menu_per_role` WRITE;
/*!40000 ALTER TABLE `menu_per_role` DISABLE KEYS */;
INSERT INTO `menu_per_role` VALUES (3775,'','5'),(3776,'5,3',''),(3777,'5,3',''),(3778,'5,7,3',''),(3779,'5,7,3',''),(3780,'5,7,3',''),(3781,'5,7,3',''),(3782,'5,7,3',''),(3783,'5,7,3',''),(3784,'5,7,3',''),(3786,'5,7,3',''),(3787,'5,7,3',''),(3788,'5,7,3',''),(3789,'5,7,3',''),(3790,'5,7,3',''),(3791,'5,7,3',''),(3792,'5,7,3',''),(3793,'5,7,3',''),(3794,'5,7,3',''),(3797,'5,7',''),(3798,'5,7',''),(3808,'5,7',''),(3800,'5,7,8',''),(3796,'5,7',''),(3785,'5,7,3',''),(3795,'5,7,3',''),(3799,'5,7,3,9',''),(4026,'5','');
/*!40000 ALTER TABLE `menu_per_role` ENABLE KEYS */;
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
