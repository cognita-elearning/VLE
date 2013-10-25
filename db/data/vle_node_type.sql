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
-- Table structure for table `node_type`
--

DROP TABLE IF EXISTS `node_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_type` (
  `type` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `module` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `help` mediumtext NOT NULL,
  `has_title` tinyint(3) unsigned NOT NULL,
  `title_label` varchar(255) NOT NULL DEFAULT '',
  `has_body` tinyint(3) unsigned NOT NULL,
  `body_label` varchar(255) NOT NULL DEFAULT '',
  `min_word_count` smallint(5) unsigned NOT NULL,
  `custom` tinyint(4) NOT NULL DEFAULT '0',
  `modified` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `orig_type` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_type`
--

LOCK TABLES `node_type` WRITE;
/*!40000 ALTER TABLE `node_type` DISABLE KEYS */;
INSERT INTO `node_type` VALUES ('page','Stranica','node','<em>Stranica</em>, slična <em>Članku</em> po formi, je jednostavna metoda kreiranja i prikaza informacije koja se rijetko mijenja, kao što je \"O nama\" odjeljak stranice. Izvorne postavke stranice ne dopuštaju komentare i prikazivanje na naslovnici.','',1,'Naslov',1,'Tijelo',0,1,1,0,'page'),('story','Članak','node','<em>Članak</em> srodan formi <em>stranice</em>, je idealan za kreiranje i prikaz sadržaja koji informira ili uključuje posjetitelje stranice. Novosti i objave, neformalni blog unosi i slično, mogu biti kreirani putem <em>Članka</em>. Zadane postavke automatski prikazuju članak na naslovnici i omogućuju komentiranje korisnicima.','',1,'Naslov',1,'Tijelo',0,1,1,0,'story'),('book','Book page','node','A <em>book page</em> is a page of content, organized into a collection of related entries collectively known as a <em>book</em>. A <em>book page</em> automatically displays links to adjacent pages, providing a simple navigation system for organizing and reviewing structured content.','',1,'Naslov',1,'Tijelo',0,1,1,0,'book'),('comment','Rješenje zadatka','node','Pronađite stranicu sa zadatakom u tečaju i kliknite \"Dodaj svoje rješenje\".','<p>\r\n	<br />\r\n	<strong>VAŽNO:</strong> ukoliko vas mentor uputi da popravite i postaviti novo rje&scaron;enje zadatka, NEMOJTE BRISATI ONO PRIJA&Scaron;NJE. Uvijek dodajte nova.</p>\r\n',1,'Naslov',1,'Uputa',0,1,1,0,'comment'),('webform','Webform','node','Create a new form or questionnaire accessible to users. Submission results and statistics are recorded and accessible to privileged users.','',1,'Naslov',1,'Tijelo',0,1,1,0,'webform'),('poll','Anketa','poll','A <em>poll</em> is a question with a set of possible responses. A <em>poll</em>, once created, automatically provides a simple running count of the number of votes received for each response.','',1,'Question',0,'',0,0,0,1,'poll'),('quiz_assignment','Assignment question','quiz_question','Quiz questions that allows the user to submit a file as part of a quiz.','',1,'Naslov',1,'Question',0,0,1,1,'quiz_assignment'),('truefalse','True/false question','quiz_question','Quiz questions that allow a user to select \"true\" or \"false\" as his response to a statement.','',1,'Naslov',1,'Question',0,0,0,1,'truefalse'),('short_answer','Short answer question','quiz_question','Quiz questions that allow a user to enter a line of text.','',1,'Naslov',1,'Question',0,0,0,1,'short_answer'),('scale','Scale question','quiz_question','Quiz questions that allow a user to choose from a scale.','',1,'Naslov',1,'Question',0,0,0,1,'scale'),('quiz_directions','Quiz directions','quiz_question','Quiz directions allow you to drop in directions anywhere in a quiz. You can also use them to insert a confirmation step at the end of the quiz.','',1,'Naslov',1,'Question',0,0,0,1,'quiz_directions'),('multichoice','Multiple choice question','quiz_question','This provides multiple choice questions for use by the Quiz module.','',1,'Naslov',1,'Question',0,0,0,1,'multichoice'),('matching','Matching','quiz_question','Matching question type for quiz module. A question type for the quiz module: allows you to create matching type questions, which connect terms with one another.','',1,'Naslov',1,'Question',0,0,0,1,'matching'),('long_answer','Long answer question','quiz_question','Quiz questions that allow a user to enter multiple paragraphs of text.','',1,'Naslov',1,'Question',0,0,0,1,'long_answer'),('quiz','Quiz','quiz','Create interactive quizzes for site visitors','',1,'Naslov',1,'Tijelo',0,0,0,1,'quiz'),('book_assignment','Book assignment','node','Book page with user upload.','',1,'Naslov',1,'Tijelo',0,1,1,0,''),('course','Course','node','A Course is a basic hierarchy structure for book pages.','',1,'Naslov',1,'Opis',0,1,1,0,''),('simplenews','Newsletter issue','node','A newsletter issue to be sent to subscribed email addresses.','',1,'Naslov',1,'Tijelo',0,1,0,0,'simplenews'),('scorm_lesson','SCORM lekcija','node','SCORM compliant lesson.','',1,'Naslov',1,'Tijelo',0,1,1,0,''),('problem','Problem','node','Prijava problema u sustavu','Dodatni komentar na problem. Nije obavezno ispuniti.',1,'Naslov',1,'Dodatni komentar',0,1,1,0,'');
/*!40000 ALTER TABLE `node_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:30
