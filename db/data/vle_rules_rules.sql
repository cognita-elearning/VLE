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
-- Table structure for table `rules_rules`
--

DROP TABLE IF EXISTS `rules_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rules_rules` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `data` longblob,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules_rules`
--

LOCK TABLES `rules_rules` WRITE;
/*!40000 ALTER TABLE `rules_rules` DISABLE KEYS */;
INSERT INTO `rules_rules` VALUES ('rules_example_1','a:8:{s:5:\"#type\";s:4:\"rule\";s:4:\"#set\";s:15:\"event_node_view\";s:6:\"#label\";s:59:\"Example rule: When viewing an unpublished page, publish it.\";s:7:\"#status\";s:6:\"custom\";s:11:\"#categories\";a:1:{i:0;s:7:\"example\";}s:7:\"#active\";i:0;s:11:\"#conditions\";a:2:{i:0;a:4:{s:5:\"#type\";s:9:\"condition\";s:5:\"#name\";s:36:\"rules_condition_content_is_published\";s:9:\"#settings\";a:1:{s:13:\"#argument map\";a:1:{s:4:\"node\";s:4:\"node\";}}s:7:\"#negate\";i:1;}i:1;a:3:{s:5:\"#type\";s:9:\"condition\";s:5:\"#name\";s:31:\"rules_condition_content_is_type\";s:9:\"#settings\";a:2:{s:13:\"#argument map\";a:1:{s:4:\"node\";s:4:\"node\";}s:4:\"type\";a:1:{i:0;s:4:\"page\";}}}}s:8:\"#actions\";a:1:{i:0;a:3:{s:5:\"#type\";s:6:\"action\";s:5:\"#name\";s:30:\"rules_core_node_publish_action\";s:9:\"#settings\";a:2:{s:13:\"#argument map\";a:1:{s:4:\"node\";s:4:\"node\";}s:9:\"auto_save\";b:1;}}}}'),('rules_send_weekly_message','a:9:{s:5:\"#type\";s:4:\"rule\";s:4:\"#set\";s:10:\"event_cron\";s:6:\"#label\";s:19:\"Send weekly message\";s:7:\"#active\";i:0;s:7:\"#weight\";s:1:\"0\";s:11:\"#categories\";a:1:{i:0;s:9:\"Messaging\";}s:7:\"#status\";s:6:\"custom\";s:11:\"#conditions\";a:1:{i:0;a:5:{s:5:\"#type\";s:9:\"condition\";s:9:\"#settings\";a:1:{s:13:\"#argument map\";a:2:{s:5:\"user1\";s:4:\"user\";s:5:\"user2\";s:4:\"user\";}}s:5:\"#name\";s:31:\"rules_condition_user_comparison\";s:5:\"#info\";a:3:{s:5:\"label\";s:17:\"Compare two users\";s:9:\"arguments\";a:2:{s:5:\"user1\";a:2:{s:4:\"type\";s:4:\"user\";s:5:\"label\";s:14:\"User account 1\";}s:5:\"user2\";a:2:{s:4:\"type\";s:4:\"user\";s:5:\"label\";s:14:\"User account 2\";}}s:6:\"module\";s:4:\"User\";}s:7:\"#weight\";d:0;}}s:8:\"#actions\";a:0:{}}'),('rules_send_course_reminder_mail','a:7:{s:5:\"#type\";s:4:\"rule\";s:4:\"#set\";s:10:\"event_cron\";s:6:\"#label\";s:25:\"Send course reminder mail\";s:7:\"#active\";i:0;s:7:\"#weight\";s:1:\"0\";s:11:\"#categories\";a:1:{i:0;s:9:\"Messaging\";}s:7:\"#status\";s:6:\"custom\";}'),('rules_send_course_email_reminder','a:7:{s:5:\"#type\";s:4:\"rule\";s:4:\"#set\";s:33:\"rules_send_course_email_reminders\";s:6:\"#label\";s:26:\"Send course email reminder\";s:7:\"#active\";i:1;s:7:\"#weight\";s:1:\"0\";s:11:\"#categories\";a:1:{i:0;s:9:\"Messaging\";}s:7:\"#status\";s:6:\"custom\";}'),('rules_update_elearner_lms_lesson_status','a:9:{s:5:\"#type\";s:4:\"rule\";s:4:\"#set\";s:17:\"event_node_update\";s:6:\"#label\";s:33:\"Update eLearner LMS lesson status\";s:7:\"#active\";i:1;s:7:\"#weight\";s:1:\"0\";s:11:\"#categories\";a:1:{i:0;s:8:\"elearner\";}s:7:\"#status\";s:6:\"custom\";s:11:\"#conditions\";a:1:{i:0;a:5:{s:5:\"#type\";s:9:\"condition\";s:9:\"#settings\";a:2:{s:4:\"type\";a:1:{s:7:\"comment\";s:7:\"comment\";}s:13:\"#argument map\";a:1:{s:4:\"node\";s:4:\"node\";}}s:5:\"#name\";s:31:\"rules_condition_content_is_type\";s:5:\"#info\";a:3:{s:5:\"label\";s:36:\"Updated content is Rješenje zadatka\";s:9:\"arguments\";a:1:{s:4:\"node\";a:2:{s:4:\"type\";s:4:\"node\";s:5:\"label\";s:8:\"Sadržaj\";}}s:6:\"module\";s:4:\"Node\";}s:7:\"#weight\";d:0;}}s:8:\"#actions\";a:1:{i:0;a:5:{s:7:\"#weight\";d:0;s:5:\"#info\";a:3:{s:5:\"label\";s:23:\"Execute custom PHP code\";s:6:\"module\";s:3:\"PHP\";s:10:\"eval input\";a:1:{i:0;s:4:\"code\";}}s:5:\"#name\";s:23:\"rules_action_custom_php\";s:9:\"#settings\";a:3:{s:4:\"code\";s:1818:\"//drupal_set_message(\"aaa\");\r\n/*\r\ndrupal_set_message(\'nodeid zadatak=\' . $node->field_assignment_answer_referer[0][nid]);\r\n$node1 = node_load($node->field_assignment_answer_referer[0][nid]);\r\ndrupal_set_message(\'nodeid lekcija=\' . $node1->field_backref_264b8559e2bf14f625[0][nid] . \' - \' . $node1->field_assignment_reference);\r\n*/\r\n\r\n\r\n$nodeId=$node->field_assignment_answer_referer[0][nid];\r\n$sql=\"\r\nSELECT node.nid AS nodeNid\r\n FROM node \r\n JOIN content_type_book \r\n  ON node.nid=content_type_book.nid\r\n  AND node.vid=content_type_book.vid\r\n WHERE content_type_book.field_assignment_reference_nid={$nodeId}\r\n\";\r\n$result=db_query($sql);\r\n$id=mysql_fetch_object($result);\r\n$bookNode=node_load($id->nodeNid);\r\n$idscodynamics=$bookNode->field_elearner_idscodynamics[0][value];\r\n$idccd =$bookNode->field_elearner_idccd[0][value];\r\n\r\n//global $user;\r\n$uid = $node->uid;\r\n$u = user_load($uid);\r\nprofile_load_profile($u);\r\n$lmsid = $u->profile_elearner_userid;\r\n$maxscore=$node->field_score_max[0][value];\r\n$score=$node->field_score[0][value];\r\n$status=$node->field_sco_status[0][value];\r\n\r\n\r\nif ($idccd == \'\' || $lmsid == \'\')\r\n break; \r\n\r\n//drupal_set_message( variable_get(\'cognita_elearner_updatescostatus_url\',\'\') . \'?userid=\' . $lmsid . \'&idccd=\' . $idccd . \'&idscodynamics=\' . $idscodynamics . \'&lms=\' . variable_get(\'cognita_elearner_app_url\',\'\') . \'&score=\' . $score . \'&maxscore=\' . $maxscore . \"&status=\".$status);\r\n\r\n$content = file_get_contents(variable_get(\'cognita_elearner_updatescostatus_url\',\'\') . \'?userid=\' . $lmsid . \'&idccd=\' . $idccd . \'&idscodynamics=\' . $idscodynamics . \'&lms=\' . variable_get(\'cognita_elearner_app_url\',\'\') . \'&score=\' . $score . \'&maxscore=\' . $maxscore . \"&status=\".$status);\r\n\r\n\r\nif( $content == FALSE ) {\r\n  // add your JS into $content\r\n  $content = t(\'Invalid settings\');\r\n}\r\n\";s:4:\"vars\";a:2:{i:0;s:4:\"node\";i:1;s:4:\"user\";}s:11:\"#eval input\";a:1:{s:27:\"token_rules_input_evaluator\";a:1:{s:4:\"code\";a:1:{i:0;s:7:\":global\";}}}}s:5:\"#type\";s:6:\"action\";}}}'),('rules_mentor_rjesenje_update','a:9:{s:5:\"#type\";s:4:\"rule\";s:4:\"#set\";s:17:\"event_node_update\";s:6:\"#label\";s:22:\"Mentor rjesenje update\";s:7:\"#active\";i:1;s:7:\"#weight\";s:1:\"0\";s:11:\"#categories\";a:4:{i:0;s:6:\"mentor\";i:1;s:7:\"vrijeme\";i:2;s:8:\"rjesenje\";i:3;s:6:\"update\";}s:7:\"#status\";s:6:\"custom\";s:11:\"#conditions\";a:1:{i:0;a:5:{s:7:\"#weight\";d:0;s:5:\"#info\";a:3:{s:5:\"label\";s:16:\"User has role(s)\";s:9:\"arguments\";a:1:{s:4:\"user\";a:2:{s:4:\"type\";s:4:\"user\";s:5:\"label\";s:8:\"Korisnik\";}}s:6:\"module\";s:4:\"User\";}s:5:\"#name\";s:28:\"rules_condition_user_hasrole\";s:9:\"#settings\";a:3:{s:5:\"roles\";a:2:{i:0;i:3;i:1;i:8;}s:9:\"operation\";s:2:\"OR\";s:13:\"#argument map\";a:1:{s:4:\"user\";s:4:\"user\";}}s:5:\"#type\";s:9:\"condition\";}}s:8:\"#actions\";a:1:{i:0;a:5:{s:7:\"#weight\";d:0;s:5:\"#info\";a:4:{s:5:\"label\";s:56:\"Populate updated content\'s field \'field_mentor_izmjenio\'\";s:9:\"arguments\";a:1:{s:4:\"node\";a:2:{s:4:\"type\";s:4:\"node\";s:5:\"label\";s:8:\"Sadržaj\";}}s:10:\"eval input\";a:2:{i:0;s:4:\"code\";i:1;s:13:\"value|0|value\";}s:6:\"module\";s:3:\"CCK\";}s:5:\"#name\";s:35:\"content_rules_action_populate_field\";s:9:\"#settings\";a:6:{s:10:\"field_name\";s:21:\"field_mentor_izmjenio\";s:13:\"#argument map\";a:1:{s:4:\"node\";s:4:\"node\";}s:5:\"value\";a:1:{i:0;a:1:{s:5:\"value\";s:19:\"2013-09-04 00:39:14\";}}s:4:\"code\";s:130:\"$vrijeme=date(\"Y-m-d H:i:s\");\r\nreturn array(\r\n          0 => array(\r\n                 \'value\' => $vrijeme\r\n          ),\r\n       );\";s:4:\"vars\";a:0:{}s:11:\"#eval input\";a:1:{s:27:\"token_rules_input_evaluator\";a:2:{s:4:\"code\";a:1:{i:0;s:7:\":global\";}s:13:\"value|0|value\";a:1:{i:0;s:7:\":global\";}}}}s:5:\"#type\";s:6:\"action\";}}}');
/*!40000 ALTER TABLE `rules_rules` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:32
