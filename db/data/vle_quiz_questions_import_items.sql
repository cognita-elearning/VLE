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
-- Table structure for table `quiz_questions_import_items`
--

DROP TABLE IF EXISTS `quiz_questions_import_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_questions_import_items` (
  `import_id` int(10) unsigned NOT NULL,
  `question_nid` int(10) unsigned NOT NULL,
  `index` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_questions_import_items`
--

LOCK TABLES `quiz_questions_import_items` WRITE;
/*!40000 ALTER TABLE `quiz_questions_import_items` DISABLE KEYS */;
INSERT INTO `quiz_questions_import_items` VALUES (1,3788,0),(1,3789,1),(1,3790,2),(1,3791,3),(1,3792,4),(1,3793,5),(1,3794,6),(1,3795,7),(1,3796,8),(1,3797,9),(1,3798,10),(1,3799,11),(1,3800,12),(1,3801,13),(1,3802,14),(1,3803,15),(1,3804,16),(1,3805,17),(1,3806,18),(1,3807,19),(1,3808,20),(1,3809,21),(1,3810,22),(1,3811,23),(1,3812,24),(1,3813,25),(1,3814,26),(1,3815,27),(1,3816,28),(1,3817,29),(1,3818,30),(1,3819,31),(1,3820,32),(1,3821,33);
/*!40000 ALTER TABLE `quiz_questions_import_items` ENABLE KEYS */;
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
