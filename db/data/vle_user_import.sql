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
-- Table structure for table `user_import`
--

DROP TABLE IF EXISTS `user_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_import` (
  `import_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL DEFAULT '',
  `filename` varchar(50) NOT NULL DEFAULT '',
  `oldfilename` varchar(50) NOT NULL DEFAULT '',
  `filepath` tinytext NOT NULL,
  `started` int(11) NOT NULL DEFAULT '0',
  `pointer` int(11) NOT NULL DEFAULT '0',
  `processed` int(11) NOT NULL DEFAULT '0',
  `valid` int(11) NOT NULL DEFAULT '0',
  `field_match` longtext NOT NULL,
  `roles` longtext NOT NULL,
  `options` longtext NOT NULL,
  `setting` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`import_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_import`
--

LOCK TABLES `user_import` WRITE;
/*!40000 ALTER TABLE `user_import` DISABLE KEYS */;
INSERT INTO `user_import` VALUES (1,'','RBA_user_import.txt','RBA_user_import.txt','/tmp/RBA_user_import.txt',1363859357,2760,31,31,'a:6:{i:0;a:3:{s:11:\"field_match\";s:9:\"profile-2\";s:8:\"username\";s:1:\"0\";s:10:\"abbreviate\";i:0;}i:1;a:3:{s:11:\"field_match\";s:9:\"profile-3\";s:8:\"username\";s:1:\"0\";s:10:\"abbreviate\";i:0;}i:2;a:3:{s:11:\"field_match\";s:1:\"0\";s:8:\"username\";s:1:\"0\";s:10:\"abbreviate\";i:0;}i:3;a:3:{s:11:\"field_match\";s:10:\"user-email\";s:8:\"username\";s:1:\"1\";s:10:\"abbreviate\";i:0;}i:4;a:3:{s:11:\"field_match\";s:9:\"profile-1\";s:8:\"username\";s:1:\"0\";s:10:\"abbreviate\";i:0;}i:5;a:3:{s:11:\"field_match\";s:13:\"user-password\";s:8:\"username\";s:1:\"0\";s:10:\"abbreviate\";i:0;}}','a:3:{i:2;i:2;i:1;i:0;i:3;i:0;}','a:15:{s:3:\"ftp\";b:0;s:5:\"og_id\";i:0;s:9:\"roles_new\";i:0;s:7:\"subject\";s:0:\"\";s:7:\"message\";s:0:\"\";s:14:\"message_format\";s:1:\"0\";s:11:\"message_css\";s:0:\"\";s:15:\"first_line_skip\";i:1;s:7:\"contact\";i:0;s:10:\"send_email\";i:0;s:14:\"username_space\";i:0;s:8:\"activate\";i:1;s:9:\"delimiter\";s:1:\",\";s:11:\"update_user\";a:4:{s:7:\"profile\";s:1:\"0\";s:5:\"roles\";s:1:\"0\";s:8:\"password\";s:1:\"0\";s:7:\"contact\";s:1:\"0\";}s:4:\"test\";s:4:\"Test\";}','imported'),(2,'','Import - Users.txt','Import - Users.txt','/tmp/Import - Users.txt',1368536986,22648,309,309,'a:6:{i:0;a:3:{s:11:\"field_match\";s:9:\"profile-2\";s:8:\"username\";s:1:\"0\";s:10:\"abbreviate\";i:0;}i:1;a:3:{s:11:\"field_match\";s:9:\"profile-3\";s:8:\"username\";s:1:\"0\";s:10:\"abbreviate\";i:0;}i:2;a:3:{s:11:\"field_match\";s:10:\"user-email\";s:8:\"username\";s:1:\"1\";s:10:\"abbreviate\";i:0;}i:3;a:3:{s:11:\"field_match\";s:1:\"0\";s:8:\"username\";s:1:\"0\";s:10:\"abbreviate\";i:0;}i:4;a:3:{s:11:\"field_match\";s:13:\"user-password\";s:8:\"username\";s:1:\"0\";s:10:\"abbreviate\";i:0;}i:5;a:3:{s:11:\"field_match\";s:9:\"profile-1\";s:8:\"username\";s:1:\"0\";s:10:\"abbreviate\";i:0;}}','a:5:{i:2;i:2;i:6;i:6;i:1;i:0;i:5;i:0;i:3;i:0;}','a:20:{s:3:\"ftp\";b:0;s:5:\"og_id\";i:0;s:9:\"roles_new\";i:0;s:7:\"subject\";s:0:\"\";s:7:\"message\";s:0:\"\";s:14:\"message_format\";s:1:\"0\";s:11:\"message_css\";s:0:\"\";s:15:\"first_line_skip\";i:1;s:7:\"contact\";i:1;s:10:\"send_email\";i:0;s:14:\"username_space\";i:0;s:8:\"activate\";i:1;s:9:\"delimiter\";s:1:\",\";s:6:\"groups\";a:1:{i:200;i:0;}s:19:\"existing_og_subject\";s:0:\"\";s:18:\"existing_og_markup\";s:1:\"0\";s:19:\"existing_og_message\";s:0:\"\";s:15:\"existing_og_css\";s:0:\"\";s:11:\"update_user\";a:5:{s:7:\"profile\";s:1:\"0\";s:5:\"roles\";s:1:\"0\";s:8:\"password\";s:1:\"0\";s:7:\"contact\";s:1:\"0\";s:14:\"user_import_og\";s:1:\"0\";}s:4:\"test\";s:4:\"Test\";}','imported'),(3,'','users - Orbico.txt','users - Orbico.txt','/tmp/users - Orbico.txt',1379684565,3048,47,47,'a:5:{i:0;a:3:{s:11:\"field_match\";s:9:\"profile-2\";s:8:\"username\";s:1:\"0\";s:10:\"abbreviate\";i:0;}i:1;a:3:{s:11:\"field_match\";s:9:\"profile-3\";s:8:\"username\";s:1:\"0\";s:10:\"abbreviate\";i:0;}i:2;a:3:{s:11:\"field_match\";s:10:\"user-email\";s:8:\"username\";s:1:\"1\";s:10:\"abbreviate\";i:0;}i:3;a:3:{s:11:\"field_match\";s:9:\"profile-1\";s:8:\"username\";s:1:\"0\";s:10:\"abbreviate\";i:0;}i:4;a:3:{s:11:\"field_match\";s:13:\"user-password\";s:8:\"username\";s:1:\"0\";s:10:\"abbreviate\";i:0;}}','a:8:{i:2;i:2;i:6;i:6;i:1;i:0;i:5;i:0;i:7;i:0;i:3;i:0;i:8;i:0;i:9;i:0;}','a:20:{s:3:\"ftp\";b:0;s:5:\"og_id\";i:0;s:9:\"roles_new\";i:0;s:7:\"subject\";s:0:\"\";s:7:\"message\";s:0:\"\";s:14:\"message_format\";s:1:\"0\";s:11:\"message_css\";s:0:\"\";s:15:\"first_line_skip\";i:1;s:7:\"contact\";i:1;s:10:\"send_email\";i:0;s:14:\"username_space\";i:0;s:8:\"activate\";i:1;s:9:\"delimiter\";s:1:\",\";s:6:\"groups\";a:10:{i:3077;i:0;i:450;i:0;i:459;i:0;i:200;i:0;i:284;i:0;i:349;i:0;i:3078;i:0;i:409;i:0;i:442;i:0;i:374;i:0;}s:19:\"existing_og_subject\";s:0:\"\";s:18:\"existing_og_markup\";s:1:\"0\";s:19:\"existing_og_message\";s:0:\"\";s:15:\"existing_og_css\";s:0:\"\";s:11:\"update_user\";a:5:{s:7:\"profile\";s:1:\"0\";s:5:\"roles\";s:1:\"0\";s:8:\"password\";s:1:\"0\";s:7:\"contact\";s:1:\"0\";s:14:\"user_import_og\";s:1:\"0\";}s:4:\"test\";s:4:\"Test\";}','imported');
/*!40000 ALTER TABLE `user_import` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:24
