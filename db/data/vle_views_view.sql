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
-- Table structure for table `views_view`
--

DROP TABLE IF EXISTS `views_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `views_view` (
  `vid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `tag` varchar(255) DEFAULT '',
  `base_table` varchar(64) NOT NULL DEFAULT '',
  `core` int(11) DEFAULT '0',
  PRIMARY KEY (`vid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `views_view`
--

LOCK TABLES `views_view` WRITE;
/*!40000 ALTER TABLE `views_view` DISABLE KEYS */;
INSERT INTO `views_view` VALUES (1,'nodecomments','Node comments flat','','node',0),(13,'rjesenja_zadataka','Rješenja zadataka','','node',6),(3,'edit_nodes','Edit nodes','edit','node',6),(4,'my_courses','Dostupni tečajevi','','node',6),(5,'komentari','Pregled komentara','','comments',6),(7,'Pregled_zadataka_Mario','Pregled_zadataka_Mario','','node',6),(8,'vbo','vbo','','node',6),(9,'zadatak_uz_lekciju','Zadatak uz lekciju','','node',6),(11,'users_per_og_reminder','','','users',6),(14,'noderelationships_backref','Back references to nodes of any type. The Node Relationships module will dynamically add the proper relationship as well as the arguments to filter by the node type and nodereference field depending on the context the view is executed.','noderelationships_backref','node',0),(15,'unanswered_comments','','','comments',6),(16,'total_results_per_users','','','quiz_node_properties',6),(18,'problems','','','node',6),(19,'admin_content','Emulates the Drupal content administration page.','','node',0);
/*!40000 ALTER TABLE `views_view` ENABLE KEYS */;
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
