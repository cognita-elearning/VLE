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
-- Table structure for table `quiz_question_properties`
--

DROP TABLE IF EXISTS `quiz_question_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_question_properties` (
  `nid` int(10) unsigned NOT NULL,
  `vid` int(10) unsigned NOT NULL,
  `max_score` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`nid`,`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_question_properties`
--

LOCK TABLES `quiz_question_properties` WRITE;
/*!40000 ALTER TABLE `quiz_question_properties` DISABLE KEYS */;
INSERT INTO `quiz_question_properties` VALUES (11,33,1),(2111,2348,1),(2112,2349,1),(2113,2350,1),(2114,2351,1),(2115,2352,1),(2116,2353,1),(2119,2356,1),(3788,4064,1),(3789,4065,1),(3790,4066,1),(3791,4067,1),(3792,4068,1),(3793,4069,1),(3794,4070,1),(3795,4071,1),(3796,4072,1),(3797,4073,1),(3798,4074,1),(3799,4075,1),(3800,4076,1),(3801,4077,1),(3802,4078,1),(3803,4079,1),(3804,4080,1),(3805,4081,1),(3806,4082,1),(3807,4083,1),(3808,4084,1),(3809,4085,1),(3810,4086,1),(3811,4087,1),(3812,4088,1),(3813,4089,1),(3814,4090,1),(3815,4091,1),(3816,4092,1),(3817,4093,1),(3818,4094,1),(3819,4095,1),(3820,4096,1),(3821,4097,1);
/*!40000 ALTER TABLE `quiz_question_properties` ENABLE KEYS */;
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
