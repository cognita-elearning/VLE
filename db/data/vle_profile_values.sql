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
-- Table structure for table `profile_values`
--

DROP TABLE IF EXISTS `profile_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_values` (
  `fid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `value` text,
  PRIMARY KEY (`uid`,`fid`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_values`
--

LOCK TABLES `profile_values` WRITE;
/*!40000 ALTER TABLE `profile_values` DISABLE KEYS */;
INSERT INTO `profile_values` VALUES (1,1,'1073'),(2,10,'Mario'),(3,10,'Fabijanić'),(2,1,'Cognita'),(3,1,'Administrator'),(3,406,'Bojić'),(1,406,'14032'),(2,407,'Zoran'),(3,407,'Hinic'),(1,407,'14033'),(2,408,'Ante'),(3,408,'Vrdoljak'),(1,408,'14034'),(2,409,'Matija'),(3,409,'Injic'),(1,409,'14035'),(2,410,'Jadranko'),(3,410,'Vlahović'),(1,410,'14036'),(1,405,'14031'),(3,405,'Toth'),(3,364,'Mikulec'),(1,364,'13991'),(2,405,'Đeni'),(1,404,'14030'),(2,404,'Vanja'),(3,404,'Plačko Dodig'),(1,403,'14029'),(3,403,'Susec'),(2,403,'Renato'),(1,402,'14028'),(3,402,'Tomić'),(2,402,'Marin'),(1,401,'14027'),(3,401,'Novak'),(2,401,'Krešimir'),(1,400,'14026'),(3,400,'Nađ'),(2,400,'Marija'),(1,399,'14025'),(2,382,'Marko'),(3,382,'Fistrić'),(1,382,'14008'),(2,383,'Sonja'),(3,383,'Babler'),(1,383,'14009'),(2,384,'Jasmina'),(3,384,'Erceg'),(1,384,'14010'),(2,385,'Danijela'),(3,385,'Kamberović'),(1,385,'14011'),(2,386,'Iris'),(3,386,'Nuić'),(1,386,'14012'),(2,387,'Mario'),(3,387,'Stanojčić'),(1,387,'14013'),(2,388,'Tomislav'),(3,388,'Hunski'),(1,388,'14014'),(2,389,'Miro'),(3,389,'Vladušić'),(1,389,'14015'),(2,390,'Joško'),(3,390,'Purišić'),(1,390,'14016'),(2,391,'Slađana'),(3,391,'Škarić Radeljić'),(1,391,'14017'),(2,392,'Gordana'),(3,392,'Milošić'),(1,392,'14018'),(2,393,'Barbara'),(3,393,'Imper'),(1,393,'14019'),(2,394,'Zvijezdana'),(3,394,'Gršić Mažurin'),(1,394,'14020'),(2,395,'Nataša'),(3,395,'Cerovečki'),(1,395,'14021'),(2,396,'Tamara'),(3,396,'Vagić'),(1,396,'14022'),(2,397,'Josip'),(3,397,'Koričančić'),(1,397,'14023'),(2,398,'Tomislav'),(3,398,'Šereg'),(1,398,'14024'),(2,399,'Sanja'),(3,399,'Mesić'),(1,380,'14006'),(3,380,'Generalić'),(2,380,'Vicko'),(1,379,'14005'),(3,379,'Bučić'),(2,379,'Nataša'),(1,378,'14004'),(3,378,'Fišer'),(2,378,'Dario'),(1,377,'14003'),(3,377,'Ružić'),(2,377,'Nikša'),(1,376,'14002'),(3,376,'Mandity Dacer'),(2,376,'Dubravka'),(1,375,'14001'),(3,375,'Kovačiček'),(2,375,'Mirjana'),(2,366,'Alma'),(3,366,'Brajkovic'),(1,366,'13993'),(2,367,'Hrvoje'),(3,367,'Horvatinec'),(1,367,'13994'),(2,368,'Anamarija'),(3,368,'Borovac'),(1,368,'13995'),(2,369,'Klaudia'),(3,369,'Vincetic'),(1,369,'7139'),(2,370,'Aleksandra'),(3,370,'Fehir Slukić'),(1,370,'13996'),(2,371,'Davor'),(3,371,'Kendi'),(1,371,'13997'),(2,372,'Petar'),(3,372,'Zlatoper'),(1,372,'13998'),(2,373,'Carmen'),(3,373,'Čuček Klanac'),(1,373,'13999'),(2,374,'Andrej'),(3,374,'Bilalović'),(1,374,'14000'),(1,365,'13992'),(2,356,'Cognita'),(3,356,'Mentor'),(1,356,'1073'),(2,357,'Alen'),(3,357,'Pagač'),(1,357,'13538'),(3,381,'Vranješ'),(2,381,'Sanja'),(2,406,'Predrag'),(1,381,'14007'),(3,365,'Skomrak Smolar'),(2,365,'Gordana'),(2,364,'Ana');
/*!40000 ALTER TABLE `profile_values` ENABLE KEYS */;
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
