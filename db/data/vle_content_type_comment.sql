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
-- Table structure for table `content_type_comment`
--

DROP TABLE IF EXISTS `content_type_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_type_comment` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_assignment_answer_referer_nid` int(10) unsigned DEFAULT NULL,
  `field_score_max_value` decimal(10,2) DEFAULT NULL,
  `field_score_value` decimal(10,2) DEFAULT NULL,
  `field_score_comment_value` longtext,
  `field_sco_status_value` longtext,
  `field_mentor_izmjenio_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`),
  KEY `field_assignment_answer_referer_nid` (`field_assignment_answer_referer_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_type_comment`
--

LOCK TABLES `content_type_comment` WRITE;
/*!40000 ALTER TABLE `content_type_comment` DISABLE KEYS */;
INSERT INTO `content_type_comment` VALUES (3993,3717,223,NULL,NULL,NULL,NULL,NULL),(3994,3718,223,NULL,NULL,NULL,NULL,NULL),(3995,3719,219,NULL,NULL,NULL,NULL,NULL),(3996,3720,223,NULL,NULL,NULL,NULL,NULL),(3997,3721,223,NULL,NULL,NULL,NULL,NULL),(3998,3722,237,NULL,NULL,NULL,NULL,NULL),(3999,3723,223,NULL,NULL,NULL,NULL,NULL),(4000,3724,216,NULL,NULL,NULL,NULL,NULL),(4001,3725,219,NULL,NULL,NULL,NULL,NULL),(4002,3726,229,NULL,NULL,NULL,NULL,NULL),(4003,3727,224,NULL,NULL,NULL,NULL,NULL),(4004,3728,223,NULL,NULL,NULL,NULL,NULL),(4005,3729,219,NULL,NULL,NULL,NULL,NULL),(4006,3730,216,NULL,NULL,NULL,NULL,NULL),(4007,3731,219,NULL,NULL,NULL,NULL,NULL),(4008,3732,232,NULL,NULL,NULL,NULL,NULL),(4009,3733,211,NULL,NULL,NULL,NULL,NULL),(4010,3734,229,NULL,NULL,NULL,NULL,NULL),(4011,3735,208,NULL,NULL,NULL,NULL,NULL),(4012,3736,218,NULL,NULL,NULL,NULL,NULL),(4013,3737,234,NULL,NULL,NULL,NULL,NULL),(4014,3738,216,NULL,NULL,NULL,NULL,NULL),(4015,3739,219,NULL,NULL,NULL,NULL,NULL),(4016,3740,237,NULL,NULL,NULL,NULL,NULL),(4017,3741,237,NULL,NULL,NULL,NULL,NULL),(4018,3742,232,NULL,NULL,NULL,NULL,NULL),(4019,3743,232,NULL,NULL,NULL,NULL,NULL),(4020,3744,211,NULL,NULL,NULL,NULL,NULL),(4021,3745,229,NULL,NULL,NULL,NULL,NULL),(4022,3746,208,NULL,NULL,NULL,NULL,NULL),(4023,3747,229,NULL,NULL,NULL,NULL,NULL),(4024,3748,218,NULL,NULL,NULL,NULL,NULL),(4025,3749,234,NULL,NULL,NULL,NULL,NULL),(4026,3750,225,NULL,NULL,NULL,NULL,NULL),(4027,3751,209,NULL,NULL,NULL,NULL,NULL),(4028,3752,210,NULL,NULL,NULL,NULL,NULL),(4029,3753,201,NULL,NULL,NULL,NULL,NULL),(4030,3754,211,NULL,NULL,NULL,NULL,NULL),(4031,3755,229,NULL,NULL,NULL,NULL,NULL),(4032,3756,226,NULL,NULL,NULL,NULL,NULL),(4033,3757,221,NULL,NULL,NULL,NULL,NULL),(4034,3758,235,NULL,NULL,NULL,NULL,NULL),(4035,3759,227,NULL,NULL,NULL,NULL,NULL),(4036,3760,202,NULL,NULL,NULL,NULL,NULL),(4037,3761,232,NULL,NULL,NULL,NULL,NULL),(4038,3762,207,NULL,NULL,NULL,NULL,NULL),(4039,3763,209,NULL,NULL,NULL,NULL,NULL),(4040,3764,237,NULL,NULL,NULL,NULL,NULL),(4041,3765,210,NULL,NULL,NULL,NULL,NULL),(4042,3766,201,NULL,NULL,NULL,NULL,NULL),(4043,3767,203,NULL,NULL,NULL,NULL,NULL),(4044,3768,230,NULL,NULL,NULL,NULL,NULL),(4045,3769,204,NULL,NULL,NULL,NULL,NULL),(4046,3770,205,NULL,NULL,NULL,NULL,NULL),(4047,3771,220,NULL,NULL,NULL,NULL,NULL),(4048,3772,217,NULL,NULL,NULL,NULL,NULL),(4049,3773,215,NULL,NULL,NULL,NULL,NULL),(4050,3774,233,NULL,NULL,NULL,NULL,NULL),(4051,3775,224,NULL,NULL,NULL,NULL,NULL),(4052,3776,228,NULL,NULL,NULL,NULL,NULL),(4053,3777,214,NULL,NULL,NULL,NULL,NULL),(4054,3778,222,NULL,NULL,NULL,NULL,NULL),(4055,3779,231,NULL,NULL,NULL,NULL,NULL),(4056,3780,206,NULL,NULL,NULL,NULL,NULL),(4057,3781,212,NULL,NULL,NULL,NULL,NULL),(4058,3782,213,NULL,NULL,NULL,NULL,NULL),(4059,3783,236,NULL,NULL,NULL,NULL,NULL),(4060,3784,223,NULL,NULL,NULL,NULL,NULL),(4061,3785,223,NULL,NULL,NULL,NULL,NULL),(4062,3786,233,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `content_type_comment` ENABLE KEYS */;
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
