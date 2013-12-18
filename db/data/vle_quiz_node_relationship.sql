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
-- Table structure for table `quiz_node_relationship`
--

DROP TABLE IF EXISTS `quiz_node_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_node_relationship` (
  `parent_nid` int(10) unsigned NOT NULL,
  `parent_vid` int(10) unsigned NOT NULL,
  `child_nid` int(10) unsigned NOT NULL,
  `child_vid` int(10) unsigned NOT NULL,
  `question_status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `weight` int(11) NOT NULL DEFAULT '0',
  `max_score` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`parent_nid`,`parent_vid`,`child_nid`,`child_vid`),
  KEY `parent_id` (`parent_vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_node_relationship`
--

LOCK TABLES `quiz_node_relationship` WRITE;
/*!40000 ALTER TABLE `quiz_node_relationship` DISABLE KEYS */;
INSERT INTO `quiz_node_relationship` VALUES (2105,2342,2106,2343,2,1,1),(3787,4063,3791,4067,0,24,1),(3787,4063,3810,4086,0,23,1),(3787,4063,3797,4073,0,22,1),(3787,4063,3816,4092,0,21,1),(3787,4063,3803,4079,0,20,1),(3787,4063,3790,4066,0,19,1),(3787,4063,3809,4085,0,18,1),(3787,4063,3796,4072,0,17,1),(3787,4063,3815,4091,0,16,1),(3787,4063,3802,4078,0,15,1),(3787,4063,3821,4097,0,14,1),(3787,4063,3789,4065,0,13,1),(3787,4063,3808,4084,0,12,1),(3787,4063,3795,4071,0,11,1),(3787,4063,3814,4090,0,10,1),(3787,4063,3801,4077,0,9,1),(3787,4063,3820,4096,0,8,1),(3787,4063,3788,4064,0,7,1),(3787,4063,3807,4083,0,6,1),(3787,4063,3794,4070,0,5,1),(3787,4063,3813,4089,0,4,1),(3787,4063,3800,4076,0,3,1),(3787,4063,3819,4095,0,2,1),(3787,4063,3806,4082,0,1,1),(3787,4063,3793,4069,0,0,1);
/*!40000 ALTER TABLE `quiz_node_relationship` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:22
