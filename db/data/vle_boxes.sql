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
-- Table structure for table `boxes`
--

DROP TABLE IF EXISTS `boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boxes` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext,
  `info` varchar(128) NOT NULL DEFAULT '',
  `format` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  UNIQUE KEY `info` (`info`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boxes`
--

LOCK TABLES `boxes` WRITE;
/*!40000 ALTER TABLE `boxes` DISABLE KEYS */;
INSERT INTO `boxes` VALUES (1,'<?php\r\nif ((arg(0) == \'node\') && is_numeric(arg(1))) { \r\n\r\n$node = node_load(arg(1)); \r\n\r\n  $book_top_page=$node->book[bid];\r\n  $tree = menu_tree_all_data(book_menu_name($book_top_page));\r\n  \r\n  $output = \'\';\r\n  $items = array();\r\n\r\n  // Pull out just the menu items we are going to render so that we\r\n  // get an accurate count for the first/last classes.\r\n  foreach ($tree as $data) {\r\n    if (!$data[\'link\'][\'hidden\']) {\r\n\r\n      $items[] = $data;\r\n    }\r\n  }\r\n\r\n  $num_items = count($items);\r\n  foreach ($items as $i => $data) {\r\n\r\n    $extra_class = array();\r\n    if ($i == 0) {\r\n      $extra_class[] = \'first\';\r\n    }\r\n    if ($i == $num_items - 1) {\r\n      $extra_class[] = \'last\';\r\n    }\r\n    $extra_class = implode(\' \', $extra_class);\r\n    $link = theme(\'menu_item_link\', $data[\'link\']);\r\n    if ($data[\'below\']) {\r\n      $output .= theme(\'menu_item\', $link, $data[\'link\'][\'has_children\'], menu_tree_output($data[\'below\']), $data[\'link\'][\'in_active_trail\'], $extra_class);\r\n    }\r\n    else {\r\n      $output .= theme(\'menu_item\', $link, $data[\'link\'][\'has_children\'], \'\', $data[\'link\'][\'in_active_trail\'], $extra_class);\r\n    }\r\n  }\r\n/*DEBUG*/\r\n\r\n/*END DEBUG*/\r\n  $out = $output ? theme(\'menu_tree\', $output) : \'\';\r\n  print $out;\r\n}\r\n?>','Sadržaj tečaja',3),(2,'<a href=\"/sites/default/files/2.mp4\" rel=\"lightvideo[|width:854px; height:480px;]\"><img src=\"/sites/default/files/video_button.jpg\" border=\"0\" width=\"100px\"></a>\r\n<a href=\"/sites/default/files/2.mp4\" rel=\"lightvideo\">Pogledajte video uputu</a>','Video uputa',2),(5,'<p>\r\n	<a href=\"/rba.elearning.hr/messages/new/\r\n<?php \r\n$node=node_load(arg(1));\r\nprint $node->field_mentor[\'0\'][\'uid\'];  \r\n?>\r\n\"><img alt=\"\" src=\"/sites/pbz.elearning.hr/files/pen.png\" style=\"vertical-align: middle; width: 50px; height: 50px;\" />Kontaktiraj mentora</a>\r\n</p>','Kontaktiraj mentora',3),(4,'<p>\r\n	<a href=\"/node/add/problem?url=<?php print $_GET[\'q\'] ?>\"><img alt=\"\" src=\"/sites/pbz.elearning.hr/files/report_problem.png\" style=\"vertical-align: middle; width: 50px; height: 40px;\" />Prijavi problem</a></p>\r\n<p>\r\n	<a href=\"/content/pomoc\"><img alt=\"\" src=\"/sites/pbz.elearning.hr/files/help.png\" style=\"vertical-align: middle; width: 50px; height: 50px;\" />Pomoć</a></p>\r\n<p>\r\n	<a href=\"/moji-problemi\">Moji problemi</a></p>\r\n','Problemi u radu',3);
/*!40000 ALTER TABLE `boxes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:20
