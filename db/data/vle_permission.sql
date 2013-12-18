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
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `perm` longtext,
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (250,1,'access content',0),(252,3,'use PHP for title patterns, add content to books, administer book outlines, create new books, show book reorder tab, show core Outline form element, show core Outline tab, access ckeditor, access ckeditor link, clone node, clone own nodes, access comments, administer comments, post comments, post comments without approval, edit field_assignment_answer_referer, edit field_assignment_file, edit field_assignment_reference, edit field_elearner_idccd, edit field_elearner_idscodynamics, edit field_izmjena, edit field_kategorija, edit field_lesson_mandatory, edit field_mentor_izmjenio, edit field_opis_problema, edit field_preuzeo, edit field_prioritet, edit field_sco_status, edit field_score, edit field_score_comment, edit field_score_max, edit field_status, edit field_user_upload, view field_assignment_answer_referer, view field_assignment_file, view field_assignment_reference, view field_backref_264b8559e2bf14f625, view field_elearner_idccd, view field_elearner_idscodynamics, view field_izmjena, view field_lesson_mandatory, view field_mentor_izmjenio, view field_opis_problema, view field_preuzeo, view field_prioritet, view field_sco_status, view field_score, view field_score_comment, view field_score_max, view field_status, view field_url, view field_user_upload, view date repeats, access content, administer nodes, create comment content, create problem content, delete own comment content, edit any book_assignment content, edit any comment content, edit own comment content, delete privatemsg, read privatemsg, write privatemsg, filter private messages, tag private messages, quiz assignment download file, search content, subscribe to newsletters, upload files, view uploaded files, access user profiles',0),(255,7,'access ckeditor, access ckeditor link, edit field_kategorija, edit field_opis_problema, edit field_preuzeo, edit field_prioritet, edit field_status, view field_izmjena, view field_mentor_izmjenio, view field_opis_problema, view field_preuzeo, view field_prioritet, view field_score_comment, view field_status, view field_url, create problem content, delete privatemsg, read privatemsg, write privatemsg, filter private messages, tag private messages, access user profiles',0),(253,5,'access ckeditor, access ckeditor link, edit field_kategorija, edit field_lesson_mandatory, edit field_opis_problema, edit field_preuzeo, edit field_prioritet, edit field_status, edit field_url, edit field_user_upload, view field_izmjena, view field_mentor_izmjenio, view field_opis_problema, view field_preuzeo, view field_prioritet, view field_score_comment, view field_status, view field_url, view field_user_upload, create comment content, create problem content, delete any problem content, delete own comment content, delete own problem content, edit any problem content, edit own comment content, edit own problem content, administer privatemsg settings, delete privatemsg, read all private messages, read privatemsg, write privatemsg, create private message tags, filter private messages, tag private messages, subscribe to newsletters, access user profiles',0),(254,6,'edit field_kategorija, edit field_opis_problema, edit field_user_upload, view field_assignment_file, view field_kategorija, view field_opis_problema, view field_score_comment, view field_status, view field_url, view field_user_upload, create comment content, create problem content, delete own comment content, edit own comment content, edit own problem content, delete privatemsg, read privatemsg, write privatemsg, filter private messages, tag private messages, subscribe to newsletters, access user profiles',0),(256,8,'access ckeditor, edit field_izmjena, edit field_kategorija, edit field_mentor_izmjenio, edit field_opis_problema, edit field_prioritet, edit field_status, view field_izmjena, view field_mentor_izmjenio, view field_opis_problema, view field_preuzeo, view field_prioritet, view field_score_comment, view field_status, view field_url, create problem content, delete privatemsg, read privatemsg, write privatemsg, filter private messages, tag private messages, access user profiles',0),(257,9,'access ckeditor, edit field_kategorija, edit field_opis_problema, edit field_preuzeo, edit field_prioritet, edit field_status, edit field_url, view field_izmjena, view field_opis_problema, view field_preuzeo, view field_prioritet, view field_status, view field_url, create problem content, delete any problem content, delete own problem content, edit any problem content, edit own problem content, delete privatemsg, read privatemsg, write privatemsg, filter private messages, tag private messages, access user profiles',0),(251,2,'use PHP for title patterns, access comments, post comments, post comments without approval, edit field_assignment_answer_referer, view field_assignment_answer_referer, view field_assignment_file, view field_assignment_reference, view field_kategorija, view field_lesson_mandatory, view field_mentor_izmjenio, view field_opis_problema, view field_prioritet, view field_score, view field_status, view date repeats, access content, create comment content, create problem content, delete any problem content, delete own comment content, delete own problem content, edit any problem content, edit own comment content, edit own problem content, cancel own vote, vote on polls, delete privatemsg, read privatemsg, write privatemsg, filter private messages, tag private messages, access quiz, view own quiz results, view quiz question outside of a quiz, view results for own quiz, quiz assignment download file, view own quiz report, search content, subscribe to newsletters, use taskbar, use taskbar alert, upload files, view uploaded files, access user profiles, access own webform results, access own webform submissions, delete own webform submissions, edit own webform submissions',0);
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:17
