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
-- Table structure for table `upload`
--

DROP TABLE IF EXISTS `upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload` (
  `fid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `list` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`,`fid`),
  KEY `fid` (`fid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload`
--

LOCK TABLES `upload` WRITE;
/*!40000 ALTER TABLE `upload` DISABLE KEYS */;
INSERT INTO `upload` VALUES (8,16,38,'Pregled ciljeva lekcija - MS Excel - dodatne dvije lekcije.doc',1,0),(12,97,175,'Pregled ciljeva lekcija - MS Excel - dodatne dvije lekcije.docx',1,0),(15,112,190,'Posebno kopiranje (Paste Special).xlsx',1,0),(16,113,191,'Kategorije funkcija i konvencije.xlsx',1,0),(17,114,192,'Matematičke funkcije.xlsx',1,0),(18,115,193,'Zaokruživanje brojeva.xlsx',1,0),(19,116,194,'Statističke funkcije.xlsx',1,0),(20,118,196,'Goal Seek.xlsx',1,0),(21,119,197,'Relacije i relacijske formule.xlsx',1,0),(22,120,198,'Funkcija IF.xlsx',1,0),(23,122,200,'Logičke funkcije.xlsx',1,0),(24,124,202,'Uvjetne funkcije.xlsx',1,0),(25,126,204,'Provjera podataka.xlsx',1,0),(26,127,205,'Provjera podataka pomoću liste.xlsx',1,0),(27,128,206,'Uvjetno oblikovanje na osnovi vrijednosti.xlsx',1,0),(28,129,207,'Uvjetno oblikovanje - napredno korištenje.xlsx',1,0),(29,130,208,'Računanje s datumima.xlsx',1,0),(30,131,209,'Datumske i vremenske funkcije.xlsx',1,0),(31,132,210,'Formule s tekstom.xlsx',1,0),(32,133,211,'Funkcija MATCH.xlsx',1,0),(33,134,212,'Funkcija VLOOKUP.xlsx',1,0),(34,135,213,'Baze podataka u Excelu.xlsx',1,0),(35,136,214,'Excel tablice.xlsx',1,0),(36,137,215,'Sortiranje.xlsx',1,0),(37,138,216,'Filtriranje odabirom vrijednosti.xlsx',1,0),(38,139,217,'Filtriranje postavljanjem kriterija.xlsx',1,0),(39,140,218,'Napredno filtriranje.xlsx',1,0),(40,141,219,'Kriteriji naprednog filtriranja i funkcija baza.xlsx',1,0),(41,142,220,'Izdvajanje jedinstvenih vrijednosti.xlsx',1,0),(42,143,221,'Subtotali.xlsx',1,0),(43,144,222,'Uvod u pivot tablice.xlsx',1,0),(44,145,223,'Rad s pivot tablicom.xlsx',1,0),(46,146,224,'Oblikovanje pivot tablice.xlsx',1,0),(47,147,225,'Sortiranje podataka u pivot tablici.xlsx',1,0),(48,148,226,'Filtriranje podataka u pivot tablici.xlsx',1,0),(49,149,227,'Grupe i subtotali.xlsx',1,0),(50,150,228,'Grupiranje podataka u pivot tablici.xlsx',1,0),(51,151,229,'Values polje.xlsx',1,0);
/*!40000 ALTER TABLE `upload` ENABLE KEYS */;
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
