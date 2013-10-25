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
-- Table structure for table `term_data`
--

DROP TABLE IF EXISTS `term_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term_data` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext,
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `taxonomy_tree` (`vid`,`weight`,`name`),
  KEY `vid_name` (`vid`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_data`
--

LOCK TABLES `term_data` WRITE;
/*!40000 ALTER TABLE `term_data` DISABLE KEYS */;
INSERT INTO `term_data` VALUES (1,1,'MS Excel 2010','',0),(2,1,'Sučelje','',0),(3,1,'Kopiranje podataka i formula','',1),(4,1,'Uređivanje tablice','',2),(5,1,'Formati brojeva i datuma','',3),(6,1,'Napredne mogućnosti','',6),(7,1,'Promjena prikaza i ispis','',4),(8,1,'Grafikoni','',5),(9,1,'Funkcije','',7),(10,1,'Korisni alati','',8),(11,1,'Matematičke i statističke funkcije','',9),(12,1,'Relacije i uvjeti','',10),(13,1,'Uvjetne naredbe','',11),(14,1,'Izračuni s datumima i tekstom','',12),(15,1,'Funkcije pretrage','',13),(16,1,'Liste i baze podataka','',0),(17,1,'Pivot tablice','',0),(18,2,'e-learning portal newsletter','',0),(19,2,'Podsjetnik o napretku na tečajevima','Daily/weekly/monthly reminder email.',0);
/*!40000 ALTER TABLE `term_data` ENABLE KEYS */;
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
