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
-- Table structure for table `autoload_registry_file`
--

DROP TABLE IF EXISTS `autoload_registry_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autoload_registry_file` (
  `filename` varchar(255) NOT NULL,
  `hash` varchar(64) NOT NULL,
  PRIMARY KEY (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoload_registry_file`
--

LOCK TABLES `autoload_registry_file` WRITE;
/*!40000 ALTER TABLE `autoload_registry_file` DISABLE KEYS */;
INSERT INTO `autoload_registry_file` VALUES ('sites/all/modules/quiz/question_types/truefalse/truefalse.classes.inc','d2e7a3dde4d3320407bddacefc7fa8b1439ddc633b9a22c487e5c32d2b405472'),('sites/all/modules/quiz/question_types/short_answer/short_answer.classes.inc','176880c10bebc009208ac9d16ca56a941a915cf758ca025085ebb89acfd81f33'),('sites/all/modules/quiz/question_types/scale/scale.classes.inc','17b67b2906a5c27dc111b75cdff52fb75418e582f5eb6b7a9c7b5a87ad2543b5'),('sites/all/modules/quiz/question_types/quiz_question/quiz_question.core.inc','357c3653035f7d766fc2fde212d433ca45b068ce314c8fc67c736e377f7bc4f0'),('sites/all/modules/quiz/question_types/quiz_directions/quiz_directions.classes.inc','b143fc2bcddd49e1c1597e7d3237038c90674922964d7b6a6d3e6b23d07a9f22'),('sites/all/modules/quiz/question_types/multichoice/multichoice.classes.inc','809beec4e363424a7ae3006376aef73fa523aa68d585c1293eb5c3611884c6a6'),('sites/all/modules/quiz/question_types/matching/matching.classes.inc','b21c0023fa1fe85dbf47af84c53a89dd92405e7f7d3fdc7d48999c95e937967d'),('sites/all/modules/quiz/question_types/long_answer/long_answer.classes.inc','da9332e5d4d72acf378b47ab380c0192183efad7b28f83cddab4b04958f7b69a'),('sites/all/modules/quiz_assignment/quiz_assignment.classes.inc','9e0e96d0fcace3f8d282c6fbcef2692999da53f703b046905c212ca9d6c5d963'),('sites/all/modules/link/link.migrate.inc','d01ba946225900bbc0fbc227872e077066008329f4c8d2bd2b8ea351b558761c');
/*!40000 ALTER TABLE `autoload_registry_file` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:34
