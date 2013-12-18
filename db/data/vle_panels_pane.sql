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
-- Table structure for table `panels_pane`
--

DROP TABLE IF EXISTS `panels_pane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panels_pane` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL DEFAULT '0',
  `panel` varchar(32) DEFAULT '',
  `type` varchar(32) DEFAULT '',
  `subtype` varchar(64) DEFAULT '',
  `shown` tinyint(4) DEFAULT '1',
  `access` longtext,
  `configuration` longtext,
  `cache` longtext,
  `style` longtext,
  `css` longtext,
  `extras` longtext,
  `position` smallint(6) DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `did_idx` (`did`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panels_pane`
--

LOCK TABLES `panels_pane` WRITE;
/*!40000 ALTER TABLE `panels_pane` DISABLE KEYS */;
INSERT INTO `panels_pane` VALUES (1,1,'left','node','node',1,'a:0:{}','a:8:{s:3:\"nid\";s:1:\"1\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:0;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0),(2,1,'right','block','poll-0',1,'a:0:{}','a:2:{s:14:\"override_title\";i:0;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',2),(3,1,'right','block','comment-0',1,'a:0:{}','a:2:{s:14:\"override_title\";i:0;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',4),(4,1,'right','block','search-0',1,'a:0:{}','a:2:{s:14:\"override_title\";i:0;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',1),(6,1,'left','views','my_courses',1,'a:1:{s:7:\"plugins\";a:1:{i:0;a:4:{s:4:\"name\";s:4:\"role\";s:8:\"settings\";a:1:{s:4:\"rids\";a:1:{i:0;i:1;}}s:7:\"context\";s:14:\"context_user_1\";s:3:\"not\";b:1;}}}','a:14:{s:23:\"override_pager_settings\";i:0;s:9:\"use_pager\";i:0;s:14:\"nodes_per_page\";s:2:\"10\";s:8:\"pager_id\";s:0:\"\";s:6:\"offset\";s:1:\"0\";s:9:\"more_link\";i:0;s:10:\"feed_icons\";i:0;s:10:\"panel_args\";i:0;s:12:\"link_to_view\";i:0;s:4:\"args\";s:0:\"\";s:3:\"url\";s:0:\"\";s:7:\"display\";s:7:\"block_1\";s:14:\"override_title\";i:0;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',1),(7,1,'right','block','user-3',1,'a:1:{s:7:\"plugins\";a:1:{i:0;a:4:{s:4:\"name\";s:4:\"role\";s:8:\"settings\";a:1:{s:4:\"rids\";a:6:{i:0;i:2;i:1;i:7;i:2;i:3;i:3;i:6;i:4;i:8;i:5;i:9;}}s:7:\"context\";s:14:\"context_user_1\";s:3:\"not\";b:0;}}}','a:2:{s:14:\"override_title\";i:0;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0),(8,1,'right','views','rjesenja_zadataka',1,'a:0:{}','a:14:{s:23:\"override_pager_settings\";i:0;s:9:\"use_pager\";i:1;s:14:\"nodes_per_page\";s:2:\"50\";s:8:\"pager_id\";s:0:\"\";s:6:\"offset\";s:1:\"0\";s:9:\"more_link\";i:0;s:10:\"feed_icons\";i:0;s:10:\"panel_args\";i:0;s:12:\"link_to_view\";i:0;s:4:\"args\";s:0:\"\";s:3:\"url\";s:0:\"\";s:7:\"display\";s:7:\"block_2\";s:14:\"override_title\";i:0;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',3);
/*!40000 ALTER TABLE `panels_pane` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:31
