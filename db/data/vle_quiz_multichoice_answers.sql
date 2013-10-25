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
-- Table structure for table `quiz_multichoice_answers`
--

DROP TABLE IF EXISTS `quiz_multichoice_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_multichoice_answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `answer` text,
  `answer_format` int(11) DEFAULT NULL,
  `feedback_if_chosen` text,
  `feedback_if_chosen_format` int(11) DEFAULT NULL,
  `feedback_if_not_chosen` text,
  `feedback_if_not_chosen_format` int(11) DEFAULT NULL,
  `score_if_chosen` int(11) NOT NULL DEFAULT '0',
  `score_if_not_chosen` int(11) NOT NULL DEFAULT '0',
  `question_nid` int(10) unsigned NOT NULL,
  `question_vid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_id` (`question_nid`,`question_vid`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_multichoice_answers`
--

LOCK TABLES `quiz_multichoice_answers` WRITE;
/*!40000 ALTER TABLE `quiz_multichoice_answers` DISABLE KEYS */;
INSERT INTO `quiz_multichoice_answers` VALUES (1,'Važno mi je',2,'',2,'',2,1,0,2119,2356),(2,'Nije mi važno',2,'',2,'',2,0,0,2119,2356),(3,'is',1,'',1,'',1,1,0,3788,4064),(4,'are',1,'',1,'',1,0,0,3788,4064),(5,'not',1,'',1,'',1,0,0,3788,4064),(6,'don\\\'t',1,'',1,'',1,0,0,3789,4065),(7,'doesn\\\'t',1,'',1,'',1,1,0,3789,4065),(8,'hasn\\\'t',1,'',1,'',1,0,0,3789,4065),(9,'many',1,'',1,'',1,0,0,3790,4066),(10,'much',1,'',1,'',1,1,0,3790,4066),(11,'is',1,'',1,'',1,0,0,3790,4066),(12,'is',1,'',1,'',1,0,0,3791,4067),(13,'are',1,'',1,'',1,1,0,3791,4067),(14,'have',1,'',1,'',1,0,0,3791,4067),(15,'doesn\\\'t',1,'',1,'',1,0,0,3792,4068),(16,'haven\\\'t',1,'',1,'',1,0,0,3792,4068),(17,'don\\\'t',1,'',1,'',1,1,0,3792,4068),(18,'to come',1,'',1,'',1,0,0,3793,4069),(19,'coming',1,'',1,'',1,0,0,3793,4069),(20,'come',1,'',1,'',1,1,0,3793,4069),(21,'Would you like',1,'',1,'',1,1,0,3794,4070),(22,'Do you like',1,'',1,'',1,0,0,3794,4070),(23,'You\\\'d like',1,'',1,'',1,0,0,3794,4070),(24,'go',1,'',1,'',1,0,0,3795,4071),(25,'went',1,'',1,'',1,1,0,3795,4071),(26,'goes',1,'',1,'',1,0,0,3795,4071),(27,'didn\\\'t used',1,'',1,'',1,0,0,3796,4072),(28,'didn\\\'t use',1,'',1,'',1,1,0,3796,4072),(29,'haven\\\'t used',1,'',1,'',1,0,0,3796,4072),(30,'was',1,'',1,'',1,1,0,3797,4073),(31,'were',1,'',1,'',1,0,0,3797,4073),(32,'is',1,'',1,'',1,0,0,3797,4073),(33,'hadn\\\'t',1,'',1,'',1,0,0,3798,4074),(34,'haven\\\'t',1,'',1,'',1,0,0,3798,4074),(35,'have',1,'',1,'',1,1,0,3798,4074),(36,'is losing',1,'',1,'',1,0,0,3799,4075),(37,'loses',1,'',1,'',1,0,0,3799,4075),(38,'has lost',1,'',1,'',1,1,0,3799,4075),(39,'did',1,'',1,'',1,0,0,3800,4076),(40,'have',1,'',1,'',1,1,0,3800,4076),(41,'do',1,'',1,'',1,0,0,3800,4076),(42,'will',1,'',1,'',1,0,0,3801,4077),(43,'shall',1,'',1,'',1,0,0,3801,4077),(44,'would',1,'',1,'',1,1,0,3801,4077),(45,'would be',1,'',1,'',1,0,0,3802,4078),(46,'will be',1,'',1,'',1,1,0,3802,4078),(47,'does be',1,'',1,'',1,0,0,3802,4078),(48,'will',1,'',1,'',1,0,0,3803,4079),(49,'can',1,'',1,'',1,0,0,3803,4079),(50,'would',1,'',1,'',1,1,0,3803,4079),(51,'already left work',1,'',1,'',1,0,0,3804,4080),(52,'has already left work',1,'',1,'',1,0,0,3804,4080),(53,'had already left work',1,'',1,'',1,1,0,3804,4080),(54,'knew',1,'',1,'',1,0,0,3805,4081),(55,'have known',1,'',1,'',1,0,0,3805,4081),(56,'had known',1,'',1,'',1,1,0,3805,4081),(57,'will have left',1,'',1,'',1,1,0,3806,4082),(58,'are going to leave',1,'',1,'',1,0,0,3806,4082),(59,'would leave',1,'',1,'',1,0,0,3806,4082),(60,'will',1,'',1,'',1,0,0,3807,4083),(61,'would',1,'',1,'',1,0,0,3807,4083),(62,'might',1,'',1,'',1,1,0,3807,4083),(63,'to lock up',1,'',1,'',1,1,0,3808,4084),(64,'locking up',1,'',1,'',1,0,0,3808,4084),(65,'lock up',1,'',1,'',1,0,0,3808,4084),(66,'to try',1,'',1,'',1,0,0,3809,4085),(67,'in try',1,'',1,'',1,0,0,3809,4085),(68,'trying',1,'',1,'',1,1,0,3809,4085),(69,'Despite',1,'',1,'',1,0,0,3810,4086),(70,'Even though',1,'',1,'',1,1,0,3810,4086),(71,'In spite',1,'',1,'',1,0,0,3810,4086),(72,'off',1,'',1,'',1,0,0,3811,4087),(73,'up',1,'',1,'',1,1,0,3811,4087),(74,'at',1,'',1,'',1,0,0,3811,4087),(75,'not to write',1,'',1,'',1,1,0,3812,4088),(76,'not write',1,'',1,'',1,0,0,3812,4088),(77,'not writing',1,'',1,'',1,0,0,3812,4088),(78,'had',1,'',1,'',1,0,0,3813,4089),(79,'had had',1,'',1,'',1,1,0,3813,4089),(80,'did have',1,'',1,'',1,0,0,3813,4089),(81,'I came',1,'',1,'',1,0,0,3814,4090),(82,'came I',1,'',1,'',1,0,0,3814,4090),(83,'did I come',1,'',1,'',1,1,0,3814,4090),(84,'clear',1,'',1,'',1,0,0,3815,4091),(85,'sheer',1,'',1,'',1,1,0,3815,4091),(86,'entire',1,'',1,'',1,0,0,3815,4091),(87,'are not saying',1,'',1,'',1,0,0,3816,4092),(88,'are not to say',1,'',1,'',1,1,0,3816,4092),(89,'haven\\\'t said',1,'',1,'',1,0,0,3816,4092),(90,'fast enough',1,'',1,'',1,1,0,3817,4093),(91,'so fast',1,'',1,'',1,0,0,3817,4093),(92,'as fast',1,'',1,'',1,0,0,3817,4093),(93,'must leave',1,'',1,'',1,0,0,3818,4094),(94,'must have left',1,'',1,'',1,1,0,3818,4094),(95,'must had left',1,'',1,'',1,0,0,3818,4094),(96,'may take',1,'',1,'',1,0,0,3819,4095),(97,'may have taken',1,'',1,'',1,0,0,3819,4095),(98,'should have taken',1,'',1,'',1,1,0,3819,4095),(99,'meet',1,'',1,'',1,0,0,3820,4096),(100,'meeting',1,'',1,'',1,0,0,3820,4096),(101,'to meet',1,'',1,'',1,1,0,3820,4096),(102,'on',1,'',1,'',1,1,0,3821,4097),(103,'with',1,'',1,'',1,0,0,3821,4097),(104,'in',1,'',1,'',1,0,0,3821,4097);
/*!40000 ALTER TABLE `quiz_multichoice_answers` ENABLE KEYS */;
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
