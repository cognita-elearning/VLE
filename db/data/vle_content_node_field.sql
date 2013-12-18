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
-- Table structure for table `content_node_field`
--

DROP TABLE IF EXISTS `content_node_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_node_field` (
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(127) NOT NULL DEFAULT '',
  `global_settings` mediumtext NOT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `multiple` tinyint(4) NOT NULL DEFAULT '0',
  `db_storage` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(127) NOT NULL DEFAULT '',
  `db_columns` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_node_field`
--

LOCK TABLES `content_node_field` WRITE;
/*!40000 ALTER TABLE `content_node_field` DISABLE KEYS */;
INSERT INTO `content_node_field` VALUES ('field_elearner_idccd','text','a:4:{s:15:\"text_processing\";s:1:\"0\";s:10:\"max_length\";s:0:\"\";s:14:\"allowed_values\";s:0:\"\";s:18:\"allowed_values_php\";s:0:\"\";}',0,0,0,'text','a:1:{s:5:\"value\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"size\";s:3:\"big\";s:8:\"not null\";b:0;s:8:\"sortable\";b:1;s:5:\"views\";b:1;}}',1,0),('field_elearner_idscodynamics','text','a:4:{s:15:\"text_processing\";s:1:\"0\";s:10:\"max_length\";s:0:\"\";s:14:\"allowed_values\";s:0:\"\";s:18:\"allowed_values_php\";s:0:\"\";}',0,0,1,'text','a:1:{s:5:\"value\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"size\";s:3:\"big\";s:8:\"not null\";b:0;s:8:\"sortable\";b:1;s:5:\"views\";b:1;}}',1,0),('field_assignment_reference','nodereference','a:3:{s:19:\"referenceable_types\";a:17:{s:15:\"book_assignment\";s:15:\"book_assignment\";s:4:\"poll\";i:0;s:15:\"quiz_assignment\";i:0;s:4:\"book\";i:0;s:11:\"long_answer\";i:0;s:8:\"matching\";i:0;s:11:\"multichoice\";i:0;s:4:\"quiz\";i:0;s:15:\"quiz_directions\";i:0;s:7:\"comment\";i:0;s:5:\"scale\";i:0;s:12:\"short_answer\";i:0;s:4:\"page\";i:0;s:9:\"truefalse\";i:0;s:7:\"webform\";i:0;s:5:\"story\";i:0;s:6:\"course\";b:0;}s:13:\"advanced_view\";s:2:\"--\";s:18:\"advanced_view_args\";s:0:\"\";}',0,0,1,'nodereference','a:1:{s:3:\"nid\";a:4:{s:4:\"type\";s:3:\"int\";s:8:\"unsigned\";b:1;s:8:\"not null\";b:0;s:5:\"index\";b:1;}}',1,0),('field_lesson_mandatory','text','a:4:{s:15:\"text_processing\";s:1:\"0\";s:10:\"max_length\";s:0:\"\";s:14:\"allowed_values\";s:10:\"1|Da\r\n2|Ne\";s:18:\"allowed_values_php\";s:0:\"\";}',0,0,0,'text','a:1:{s:5:\"value\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"size\";s:3:\"big\";s:8:\"not null\";b:0;s:8:\"sortable\";b:1;s:5:\"views\";b:1;}}',1,0),('field_assignment_answer_referer','nodereference','a:3:{s:19:\"referenceable_types\";a:16:{s:15:\"book_assignment\";s:15:\"book_assignment\";s:4:\"poll\";i:0;s:15:\"quiz_assignment\";i:0;s:4:\"book\";i:0;s:11:\"long_answer\";i:0;s:8:\"matching\";i:0;s:11:\"multichoice\";i:0;s:4:\"quiz\";i:0;s:15:\"quiz_directions\";i:0;s:7:\"comment\";i:0;s:5:\"scale\";i:0;s:12:\"short_answer\";i:0;s:4:\"page\";i:0;s:9:\"truefalse\";i:0;s:7:\"webform\";i:0;s:5:\"story\";i:0;}s:13:\"advanced_view\";s:2:\"--\";s:18:\"advanced_view_args\";s:0:\"\";}',0,0,1,'nodereference','a:1:{s:3:\"nid\";a:4:{s:4:\"type\";s:3:\"int\";s:8:\"unsigned\";b:1;s:8:\"not null\";b:0;s:5:\"index\";b:1;}}',1,0),('field_score_max','number_decimal','a:9:{s:6:\"prefix\";s:0:\"\";s:6:\"suffix\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:14:\"allowed_values\";s:0:\"\";s:18:\"allowed_values_php\";s:0:\"\";s:9:\"precision\";s:2:\"10\";s:5:\"scale\";s:1:\"2\";s:7:\"decimal\";s:1:\",\";}',0,0,1,'number','a:1:{s:5:\"value\";a:5:{s:4:\"type\";s:7:\"numeric\";s:9:\"precision\";s:2:\"10\";s:5:\"scale\";s:1:\"2\";s:8:\"not null\";b:0;s:8:\"sortable\";b:1;}}',1,0),('field_assignment_file','filefield','a:3:{s:10:\"list_field\";s:1:\"0\";s:12:\"list_default\";i:1;s:17:\"description_field\";s:1:\"0\";}',1,1,0,'filefield','a:3:{s:3:\"fid\";a:3:{s:4:\"type\";s:3:\"int\";s:8:\"not null\";b:0;s:5:\"views\";b:1;}s:4:\"list\";a:4:{s:4:\"type\";s:3:\"int\";s:4:\"size\";s:4:\"tiny\";s:8:\"not null\";b:0;s:5:\"views\";b:1;}s:4:\"data\";a:3:{s:4:\"type\";s:4:\"text\";s:9:\"serialize\";b:1;s:5:\"views\";b:1;}}',1,0),('field_user_upload','filefield','a:3:{s:10:\"list_field\";s:1:\"0\";s:12:\"list_default\";i:1;s:17:\"description_field\";s:1:\"0\";}',0,1,0,'filefield','a:3:{s:3:\"fid\";a:3:{s:4:\"type\";s:3:\"int\";s:8:\"not null\";b:0;s:5:\"views\";b:1;}s:4:\"list\";a:4:{s:4:\"type\";s:3:\"int\";s:4:\"size\";s:4:\"tiny\";s:8:\"not null\";b:0;s:5:\"views\";b:1;}s:4:\"data\";a:3:{s:4:\"type\";s:4:\"text\";s:9:\"serialize\";b:1;s:5:\"views\";b:1;}}',1,0),('field_score','number_decimal','a:9:{s:6:\"prefix\";s:0:\"\";s:6:\"suffix\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:14:\"allowed_values\";s:0:\"\";s:18:\"allowed_values_php\";s:0:\"\";s:9:\"precision\";s:2:\"10\";s:5:\"scale\";s:1:\"2\";s:7:\"decimal\";s:1:\",\";}',0,0,1,'number','a:1:{s:5:\"value\";a:5:{s:4:\"type\";s:7:\"numeric\";s:9:\"precision\";s:2:\"10\";s:5:\"scale\";s:1:\"2\";s:8:\"not null\";b:0;s:8:\"sortable\";b:1;}}',1,0),('field_score_comment','text','a:4:{s:15:\"text_processing\";s:1:\"0\";s:10:\"max_length\";s:0:\"\";s:14:\"allowed_values\";s:0:\"\";s:18:\"allowed_values_php\";s:0:\"\";}',0,0,1,'text','a:1:{s:5:\"value\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"size\";s:3:\"big\";s:8:\"not null\";b:0;s:8:\"sortable\";b:1;s:5:\"views\";b:1;}}',1,0),('field_backref_264b8559e2bf14f625','noderelationships_backref','a:2:{s:13:\"referrer_type\";s:4:\"book\";s:14:\"referrer_field\";s:26:\"field_assignment_reference\";}',0,0,1,'noderelationships','a:0:{}',1,0),('field_sco_status','text','a:4:{s:15:\"text_processing\";s:1:\"0\";s:10:\"max_length\";s:0:\"\";s:14:\"allowed_values\";s:101:\"not attempted|Not attempted\r\nincomplete|Incomplete\r\ncompleted|Completed\r\npassed|Passed\r\nfailed|Failed\";s:18:\"allowed_values_php\";s:0:\"\";}',0,0,1,'text','a:1:{s:5:\"value\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"size\";s:3:\"big\";s:8:\"not null\";b:0;s:8:\"sortable\";b:1;s:5:\"views\";b:1;}}',1,0),('field_scorm','filefield','a:3:{s:10:\"list_field\";s:1:\"0\";s:12:\"list_default\";i:1;s:17:\"description_field\";s:1:\"0\";}',0,0,1,'filefield','a:3:{s:3:\"fid\";a:3:{s:4:\"type\";s:3:\"int\";s:8:\"not null\";b:0;s:5:\"views\";b:1;}s:4:\"list\";a:4:{s:4:\"type\";s:3:\"int\";s:4:\"size\";s:4:\"tiny\";s:8:\"not null\";b:0;s:5:\"views\";b:1;}s:4:\"data\";a:3:{s:4:\"type\";s:4:\"text\";s:9:\"serialize\";b:1;s:5:\"views\";b:1;}}',1,0),('field_kategorija','text','a:4:{s:15:\"text_processing\";s:1:\"0\";s:10:\"max_length\";s:0:\"\";s:14:\"allowed_values\";s:98:\"1|Problem s tečajem\r\n2|Problem pri spajanju na sustav\r\n3|Problem pri uploadu rješenja\r\n4|Ne znam\";s:18:\"allowed_values_php\";s:0:\"\";}',1,0,1,'text','a:1:{s:5:\"value\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"size\";s:3:\"big\";s:8:\"not null\";b:0;s:8:\"sortable\";b:1;s:5:\"views\";b:1;}}',1,0),('field_status','text','a:4:{s:15:\"text_processing\";s:1:\"0\";s:10:\"max_length\";s:0:\"\";s:14:\"allowed_values\";s:33:\"1|Novo\r\n2|Rješava se\r\n3|Rješeno\";s:18:\"allowed_values_php\";s:0:\"\";}',1,0,1,'text','a:1:{s:5:\"value\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"size\";s:3:\"big\";s:8:\"not null\";b:0;s:8:\"sortable\";b:1;s:5:\"views\";b:1;}}',1,0),('field_prioritet','text','a:4:{s:15:\"text_processing\";s:1:\"0\";s:10:\"max_length\";s:0:\"\";s:14:\"allowed_values\";s:47:\"1|Nije hitno\r\n2|Normalno\r\n3|Hitno\r\n4|Jako hitno\";s:18:\"allowed_values_php\";s:0:\"\";}',1,0,1,'text','a:1:{s:5:\"value\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"size\";s:3:\"big\";s:8:\"not null\";b:0;s:8:\"sortable\";b:1;s:5:\"views\";b:1;}}',1,0),('field_preuzeo','userreference','a:4:{s:19:\"referenceable_roles\";a:7:{i:9;i:9;i:2;i:0;i:5;i:0;i:7;i:0;i:3;i:0;i:6;i:0;i:8;i:0;}s:20:\"referenceable_status\";s:0:\"\";s:13:\"advanced_view\";s:2:\"--\";s:18:\"advanced_view_args\";s:0:\"\";}',0,0,1,'userreference','a:1:{s:3:\"uid\";a:4:{s:4:\"type\";s:3:\"int\";s:8:\"unsigned\";b:1;s:8:\"not null\";b:0;s:5:\"index\";b:1;}}',1,0),('field_url','text','a:4:{s:15:\"text_processing\";s:1:\"0\";s:10:\"max_length\";s:0:\"\";s:14:\"allowed_values\";s:0:\"\";s:18:\"allowed_values_php\";s:0:\"\";}',0,0,1,'text','a:1:{s:5:\"value\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"size\";s:3:\"big\";s:8:\"not null\";b:0;s:8:\"sortable\";b:1;s:5:\"views\";b:1;}}',1,0),('field_opis_problema','text','a:4:{s:15:\"text_processing\";s:1:\"0\";s:10:\"max_length\";s:0:\"\";s:14:\"allowed_values\";s:0:\"\";s:18:\"allowed_values_php\";s:0:\"\";}',0,0,1,'text','a:1:{s:5:\"value\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"size\";s:3:\"big\";s:8:\"not null\";b:0;s:8:\"sortable\";b:1;s:5:\"views\";b:1;}}',1,0),('field_mentor_izmjenio','text','a:4:{s:15:\"text_processing\";s:1:\"0\";s:10:\"max_length\";s:0:\"\";s:14:\"allowed_values\";s:0:\"\";s:18:\"allowed_values_php\";s:0:\"\";}',0,0,1,'text','a:1:{s:5:\"value\";a:5:{s:4:\"type\";s:4:\"text\";s:4:\"size\";s:3:\"big\";s:8:\"not null\";b:0;s:8:\"sortable\";b:1;s:5:\"views\";b:1;}}',1,0);
/*!40000 ALTER TABLE `content_node_field` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:28
