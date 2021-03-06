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
-- Table structure for table `quiz_node_results_answers`
--

DROP TABLE IF EXISTS `quiz_node_results_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_node_results_answers` (
  `result_id` int(10) unsigned NOT NULL,
  `question_nid` int(10) unsigned NOT NULL,
  `question_vid` int(10) unsigned NOT NULL,
  `tid` int(10) unsigned DEFAULT NULL,
  `is_correct` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_skipped` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `points_awarded` tinyint(4) NOT NULL DEFAULT '0',
  `answer_timestamp` int(10) unsigned NOT NULL,
  `number` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`result_id`,`question_nid`,`question_vid`),
  KEY `result_id` (`result_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_node_results_answers`
--

LOCK TABLES `quiz_node_results_answers` WRITE;
/*!40000 ALTER TABLE `quiz_node_results_answers` DISABLE KEYS */;
INSERT INTO `quiz_node_results_answers` VALUES (5,3795,4071,NULL,0,1,0,1382441408,1),(5,3809,4085,NULL,0,1,0,1382441413,2),(5,3802,4078,NULL,0,1,0,1382441419,3),(5,3806,4082,NULL,0,1,0,1382441423,4),(5,3791,4067,NULL,0,1,0,1382441428,5);
/*!40000 ALTER TABLE `quiz_node_results_answers` ENABLE KEYS */;
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
