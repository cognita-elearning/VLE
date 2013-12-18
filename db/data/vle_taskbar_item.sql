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
-- Table structure for table `taskbar_item`
--

DROP TABLE IF EXISTS `taskbar_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taskbar_item` (
  `name` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `provider` varchar(32) NOT NULL,
  `region` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `weight` smallint(6) NOT NULL DEFAULT '0',
  `settings` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskbar_item`
--

LOCK TABLES `taskbar_item` WRITE;
/*!40000 ALTER TABLE `taskbar_item` DISABLE KEYS */;
INSERT INTO `taskbar_item` VALUES ('basic','Basic Links','link','',0,0,'a:8:{s:5:\"links\";a:1:{s:4:\"home\";a:3:{s:5:\"title\";s:9:\"Frontpage\";s:3:\"url\";s:7:\"<front>\";s:7:\"options\";a:0:{}}}s:4:\"text\";s:5:\"basic\";s:11:\"description\";s:11:\"Basic Links\";s:5:\"roles\";a:0:{}s:7:\"refresh\";b:0;s:4:\"ajax\";b:0;s:6:\"update\";b:0;s:12:\"ajax refresh\";i:0;}'),('users','users','block','right',1,-4,'a:9:{s:4:\"text\";s:5:\"Users\";s:11:\"description\";s:5:\"users\";s:5:\"roles\";a:0:{}s:7:\"refresh\";b:0;s:4:\"ajax\";b:0;s:6:\"update\";b:0;s:12:\"ajax refresh\";s:1:\"0\";s:6:\"module\";s:10:\"menu_block\";s:5:\"delta\";s:1:\"1\";}'),('quizzes','quizzes','block','right',1,-3,'a:9:{s:4:\"text\";s:7:\"Quizzes\";s:11:\"description\";s:7:\"quizzes\";s:5:\"roles\";a:0:{}s:7:\"refresh\";b:0;s:4:\"ajax\";b:0;s:6:\"update\";b:0;s:12:\"ajax refresh\";s:1:\"0\";s:6:\"module\";s:10:\"menu_block\";s:5:\"delta\";s:1:\"2\";}'),('settings','settings','block','right',1,-2,'a:9:{s:4:\"text\";s:8:\"Settings\";s:11:\"description\";s:8:\"settings\";s:5:\"roles\";a:0:{}s:7:\"refresh\";b:0;s:4:\"ajax\";b:0;s:6:\"update\";b:0;s:12:\"ajax refresh\";s:1:\"0\";s:6:\"module\";s:10:\"menu_block\";s:5:\"delta\";s:1:\"3\";}'),('logout','logout','link','left',1,-4,'a:8:{s:4:\"text\";s:6:\"logout\";s:11:\"description\";s:6:\"logout\";s:5:\"roles\";a:0:{}s:7:\"refresh\";b:0;s:4:\"ajax\";b:0;s:6:\"update\";b:0;s:12:\"ajax refresh\";i:0;s:5:\"links\";a:1:{s:5:\"link1\";a:3:{s:3:\"url\";s:6:\"logout\";s:5:\"title\";s:6:\"Logout\";s:7:\"options\";a:0:{}}}}'),('all_problems','all_problems','link','right',1,-5,'a:8:{s:4:\"text\";s:12:\"all_problems\";s:11:\"description\";s:12:\"all_problems\";s:5:\"roles\";a:2:{i:5;i:5;i:9;i:9;}s:7:\"refresh\";b:0;s:4:\"ajax\";b:0;s:6:\"update\";b:0;s:12:\"ajax refresh\";i:0;s:5:\"links\";a:1:{s:5:\"link1\";a:3:{s:3:\"url\";s:12:\"svi-problemi\";s:5:\"title\";s:12:\"All problems\";s:7:\"options\";a:0:{}}}}'),('messages','Messages','block','left',1,-3,'a:9:{s:4:\"text\";s:8:\"Messages\";s:11:\"description\";s:8:\"Messages\";s:5:\"roles\";a:7:{i:5;i:5;i:2;i:2;i:7;i:7;i:3;i:3;i:6;i:6;i:8;i:8;i:9;i:9;}s:7:\"refresh\";b:0;s:4:\"ajax\";b:0;s:6:\"update\";b:0;s:12:\"ajax refresh\";s:1:\"0\";s:6:\"module\";s:10:\"privatemsg\";s:5:\"delta\";s:15:\"privatemsg-menu\";}'),('new_message','New message','block','left',1,-2,'a:9:{s:4:\"text\";s:11:\"New message\";s:11:\"description\";s:11:\"New message\";s:5:\"roles\";a:7:{i:5;i:5;i:2;i:2;i:7;i:7;i:3;i:3;i:6;i:6;i:8;i:8;i:9;i:9;}s:7:\"refresh\";b:0;s:4:\"ajax\";b:0;s:6:\"update\";b:0;s:12:\"ajax refresh\";s:1:\"0\";s:6:\"module\";s:10:\"privatemsg\";s:5:\"delta\";s:14:\"privatemsg-new\";}'),('Statistika','Statistika','link','right',1,-1,'a:8:{s:4:\"text\";s:10:\"Statistika\";s:11:\"description\";s:10:\"Statistika\";s:5:\"roles\";a:2:{i:5;i:5;i:3;i:3;}s:7:\"refresh\";b:0;s:4:\"ajax\";b:0;s:6:\"update\";b:0;s:12:\"ajax refresh\";i:0;s:5:\"links\";a:1:{s:5:\"link1\";a:3:{s:3:\"url\";s:11:\"reminderxls\";s:5:\"title\";s:10:\"Statistika\";s:7:\"options\";a:0:{}}}}');
/*!40000 ALTER TABLE `taskbar_item` ENABLE KEYS */;
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
