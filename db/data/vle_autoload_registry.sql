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
-- Table structure for table `autoload_registry`
--

DROP TABLE IF EXISTS `autoload_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autoload_registry` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(9) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL DEFAULT '',
  `weight` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`,`type`),
  KEY `hook` (`type`,`weight`,`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoload_registry`
--

LOCK TABLES `autoload_registry` WRITE;
/*!40000 ALTER TABLE `autoload_registry` DISABLE KEYS */;
INSERT INTO `autoload_registry` VALUES ('TrueFalseQuestion','class','sites/all/modules/quiz/question_types/truefalse/truefalse.classes.inc','truefalse',0),('ShortAnswerResponse','class','sites/all/modules/quiz/question_types/short_answer/short_answer.classes.inc','short_answer',0),('ShortAnswerQuestion','class','sites/all/modules/quiz/question_types/short_answer/short_answer.classes.inc','short_answer',0),('ScaleResponse','class','sites/all/modules/quiz/question_types/scale/scale.classes.inc','scale',0),('ScaleQuestion','class','sites/all/modules/quiz/question_types/scale/scale.classes.inc','scale',0),('QuizQuestionResponse','class','sites/all/modules/quiz/question_types/quiz_question/quiz_question.core.inc','quiz_question',0),('QuizQuestion','class','sites/all/modules/quiz/question_types/quiz_question/quiz_question.core.inc','quiz_question',0),('QuizDirectionsResponse','class','sites/all/modules/quiz/question_types/quiz_directions/quiz_directions.classes.inc','quiz_directions',0),('QuizDirectionsQuestion','class','sites/all/modules/quiz/question_types/quiz_directions/quiz_directions.classes.inc','quiz_directions',0),('MultichoiceResponse','class','sites/all/modules/quiz/question_types/multichoice/multichoice.classes.inc','multichoice',0),('MultichoiceQuestion','class','sites/all/modules/quiz/question_types/multichoice/multichoice.classes.inc','multichoice',0),('MatchingResponse','class','sites/all/modules/quiz/question_types/matching/matching.classes.inc','matching',0),('MatchingQuestion','class','sites/all/modules/quiz/question_types/matching/matching.classes.inc','matching',0),('LongAnswerResponse','class','sites/all/modules/quiz/question_types/long_answer/long_answer.classes.inc','long_answer',0),('LongAnswerQuestion','class','sites/all/modules/quiz/question_types/long_answer/long_answer.classes.inc','long_answer',0),('TrueFalseResponse','class','sites/all/modules/quiz/question_types/truefalse/truefalse.classes.inc','truefalse',0),('QuizAssignmentQuestion','class','sites/all/modules/quiz_assignment/quiz_assignment.classes.inc','quiz_assignment',0),('QuizAssignmentResponse','class','sites/all/modules/quiz_assignment/quiz_assignment.classes.inc','quiz_assignment',0),('MigrateLinkFieldHandler','class','sites/all/modules/link/link.migrate.inc','link',0);
/*!40000 ALTER TABLE `autoload_registry` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:18
