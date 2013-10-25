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
-- Table structure for table `pm_message`
--

DROP TABLE IF EXISTS `pm_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_message` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author` int(10) unsigned NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `format` smallint(6) NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pm_message`
--

LOCK TABLES `pm_message` WRITE;
/*!40000 ALTER TABLE `pm_message` DISABLE KEYS */;
INSERT INTO `pm_message` VALUES (1,1,'asdf','asf',2,1377185741),(2,357,'Pozdrav','bok',2,1377186086),(3,357,'Probna poruka','Poruke su \"up and runing\".\r\nMalo pogledaj i isprobaj ali mislim da je ok.\r\nSamo mi se prilikom čitanja poruke ne sviđa ovaj raspored (komentiraj), pa bi se to CSS-om dalo rasporediti bolje. \r\nI pls da mi daš permission na privatemsg i taskbar.\r\n\r\nthx',2,1377186618),(4,1,'NOVI FEATURE - poruke','Ugradili smo novi feature; slanje poruka.\r\nPrvenstveno bi se koristilo da korisnici mogu poslati mentoru poruku umjesto da pišu komentare...',2,1377244714),(7,1,'Probna poruka','Poruke dobre!\r\nJoš sredim prosljeđivanje na e-mail i to je to!\r\n\r\nTomi',2,1377264156),(8,356,'Komentar rješenja zadataka tečaja Excel napredni','<p>Po&scaron;tovana,</p>\r\n<p>mentor je pregledao Va&scaron;a rje&scaron;enja zadataka, međutim od njih 34, ispravno ste rije&scaron;ili samo njih 15.</p>\r\n<p>Uvidom u Va&scaron;u statistiku kori&scaron;tenja lekcija tečaja Excel napredni, vidimo da imate dosta lekcija koje niste pogledali ili zavr&scaron;ili (statusi not attempted ili incomplete), pa Vas molimo da radi boljeg razumijevanja i uspje&scaron;nosti prilikom rje&scaron;avanja zadataka, najprije pažljivo prođete lekcije tečaja, a tek potom rije&scaron;ite pripadajuće zadatke.</p>\r\n<p>Hvala i lijep pozdrav,</p>\r\n<p>Mentor.</p>\r\n',2,1378118262),(10,1,'Statistika riješenih zadataka','Poštovana,\r\n\r\nmentor je ispravljao Vaša rješenja zadataka, međutim rezultati nisu dobri. \r\nVidimo da niste prošli lekcije tečaja kako biste naučili, pa Vam savjetujemo da prije rješavanja zadataka prođete pojedinu lekciju, bit će Vam lakše i bit ćete točniji prilikom rješavanja.\r\n\r\nSretno i lijep pozdrav,\r\nMentor.',2,1378709818);
/*!40000 ALTER TABLE `pm_message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-25 11:43:28
