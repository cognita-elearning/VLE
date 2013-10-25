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
-- Table structure for table `quiz_node_properties`
--

DROP TABLE IF EXISTS `quiz_node_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_node_properties` (
  `vid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `aid` varchar(255) NOT NULL,
  `number_of_random_questions` smallint(5) unsigned NOT NULL DEFAULT '0',
  `max_score_for_random` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `pass_rate` tinyint(3) unsigned NOT NULL,
  `summary_pass` text,
  `summary_default` text,
  `randomization` smallint(6) NOT NULL DEFAULT '0',
  `backwards_navigation` tinyint(3) unsigned NOT NULL,
  `keep_results` tinyint(3) unsigned NOT NULL,
  `repeat_until_correct` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `feedback_time` tinyint(3) unsigned NOT NULL,
  `display_feedback` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `quiz_open` int(10) unsigned NOT NULL DEFAULT '0',
  `quiz_close` int(10) unsigned NOT NULL DEFAULT '0',
  `takes` tinyint(3) unsigned NOT NULL,
  `show_attempt_stats` tinyint(4) NOT NULL DEFAULT '1',
  `time_limit` int(10) unsigned NOT NULL DEFAULT '0',
  `quiz_always` tinyint(4) NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `has_userpoints` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time_left` smallint(6) NOT NULL DEFAULT '0',
  `max_score` int(11) NOT NULL DEFAULT '0',
  `allow_skipping` smallint(6) NOT NULL DEFAULT '0',
  `allow_resume` smallint(6) NOT NULL DEFAULT '1',
  `allow_jumping` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `quiz_id` (`vid`,`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:39:08
