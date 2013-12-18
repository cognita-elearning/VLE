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
-- Table structure for table `quiz_multichoice_properties`
--

DROP TABLE IF EXISTS `quiz_multichoice_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_multichoice_properties` (
  `nid` int(10) unsigned NOT NULL,
  `vid` int(10) unsigned NOT NULL,
  `choice_multi` int(10) unsigned NOT NULL DEFAULT '0',
  `choice_random` int(10) unsigned NOT NULL DEFAULT '0',
  `choice_boolean` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`,`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_multichoice_properties`
--

LOCK TABLES `quiz_multichoice_properties` WRITE;
/*!40000 ALTER TABLE `quiz_multichoice_properties` DISABLE KEYS */;
INSERT INTO `quiz_multichoice_properties` VALUES (2119,2356,0,0,0),(3788,4064,0,0,0),(3789,4065,0,0,0),(3790,4066,0,0,0),(3791,4067,0,0,0),(3792,4068,0,0,0),(3793,4069,0,0,0),(3794,4070,0,0,0),(3795,4071,0,0,0),(3796,4072,0,0,0),(3797,4073,0,0,0),(3798,4074,0,0,0),(3799,4075,0,0,0),(3800,4076,0,0,0),(3801,4077,0,0,0),(3802,4078,0,0,0),(3803,4079,0,0,0),(3804,4080,0,0,0),(3805,4081,0,0,0),(3806,4082,0,0,0),(3807,4083,0,0,0),(3808,4084,0,0,0),(3809,4085,0,0,0),(3810,4086,0,0,0),(3811,4087,0,0,0),(3812,4088,0,0,0),(3813,4089,0,0,0),(3814,4090,0,0,0),(3815,4091,0,0,0),(3816,4092,0,0,0),(3817,4093,0,0,0),(3818,4094,0,0,0),(3819,4095,0,0,0),(3820,4096,0,0,0),(3821,4097,0,0,0);
/*!40000 ALTER TABLE `quiz_multichoice_properties` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:27
