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
-- Table structure for table `realname`
--

DROP TABLE IF EXISTS `realname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realname` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `realname` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `realname` (`realname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realname`
--

LOCK TABLES `realname` WRITE;
/*!40000 ALTER TABLE `realname` DISABLE KEYS */;
INSERT INTO `realname` VALUES (10,'Mario Fabijanić'),(1,'Cognita Administrator'),(396,'Tamara Vagić'),(397,'Josip Koričančić'),(398,'Tomislav Šereg'),(399,'Sanja Mesić'),(400,'Marija Nađ'),(401,'Krešimir Novak'),(402,'Marin Tomić'),(403,'Renato Susec'),(404,'Vanja Plačko Dodig'),(405,'Đeni Toth'),(406,'Predrag Bojić'),(407,'Zoran Hinic'),(408,'Ante Vrdoljak'),(409,'Matija Injic'),(410,'Jadranko Vlahović'),(395,'Nataša Cerovečki'),(364,'Ana Mikulec'),(365,'Gordana Skomrak Smolar'),(366,'Alma Brajkovic'),(367,'Hrvoje Horvatinec'),(368,'Anamarija Borovac'),(369,'Klaudia Vincetic'),(370,'Aleksandra Fehir Slukić'),(371,'Davor Kendi'),(372,'Petar Zlatoper'),(373,'Carmen Čuček Klanac'),(374,'Andrej Bilalović'),(375,'Mirjana Kovačiček'),(376,'Dubravka Mandity Dacer'),(377,'Nikša Ružić'),(378,'Dario Fišer'),(379,'Nataša Bučić'),(380,'Vicko Generalić'),(381,'Sanja Vranješ'),(382,'Marko Fistrić'),(383,'Sonja Babler'),(384,'Jasmina Erceg'),(385,'Danijela Kamberović'),(386,'Iris Nuić'),(387,'Mario Stanojčić'),(388,'Tomislav Hunski'),(389,'Miro Vladušić'),(390,'Joško Purišić'),(391,'Slađana Škarić Radeljić'),(392,'Gordana Milošić'),(393,'Barbara Imper'),(394,'Zvijezdana Gršić Mažurin'),(356,'Cognita Mentor'),(357,'Alen Pagač');
/*!40000 ALTER TABLE `realname` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:19
