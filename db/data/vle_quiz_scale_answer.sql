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
-- Table structure for table `quiz_scale_answer`
--

DROP TABLE IF EXISTS `quiz_scale_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_scale_answer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `answer_collection_id` int(10) unsigned NOT NULL,
  `answer` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_scale_answer`
--

LOCK TABLES `quiz_scale_answer` WRITE;
/*!40000 ALTER TABLE `quiz_scale_answer` DISABLE KEYS */;
INSERT INTO `quiz_scale_answer` VALUES (1,1,'Always'),(2,1,'Very often'),(3,1,'Some times'),(4,1,'Rarely'),(5,1,'Very rarely'),(6,1,'Never'),(7,2,'Excellent'),(8,2,'Very good'),(9,2,'Good'),(10,2,'Ok'),(11,2,'Poor'),(12,2,'Very poor'),(13,3,'Totally agree'),(14,3,'Agree'),(15,3,'Not sure'),(16,3,'Disagree'),(17,3,'Totally disagree'),(18,4,'Very important'),(19,4,'Important'),(20,4,'Moderately important'),(21,4,'Less important'),(22,4,'Least important');
/*!40000 ALTER TABLE `quiz_scale_answer` ENABLE KEYS */;
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
