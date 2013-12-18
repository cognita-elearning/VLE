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
-- Table structure for table `video_preset_settings`
--

DROP TABLE IF EXISTS `video_preset_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_preset_settings` (
  `presetid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transcoder` varchar(30) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`presetid`,`transcoder`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_preset_settings`
--

LOCK TABLES `video_preset_settings` WRITE;
/*!40000 ALTER TABLE `video_preset_settings` DISABLE KEYS */;
INSERT INTO `video_preset_settings` VALUES (1,'video_localcommand','a:2:{s:8:\"commands\";a:1:{i:0;s:158:\"!cmd_path -y -i !videofile -s !widthx!height -r 15 -b 250 -ar 22050 -ab 48 -vf \"pad=!paddingwidth:!paddingheight:!paddingleft:!paddingtop:000000\" !convertfile\";}s:11:\"useflvtool2\";i:1;}'),(2,'video_localcommand','a:2:{s:8:\"commands\";a:2:{i:0;s:217:\"!cmd_path -strict experimental -y -i !videofile -pass 1 -s !widthx!height -b 500k -threads 0 -vcodec libx264 -vf \"pad=!paddingwidth:!paddingheight:!paddingleft:!paddingtop:000000\" -vpre slow_firstpass -an !convertfile\";i:1;s:224:\"!cmd_path -strict experimental -y -i !videofile -pass 2 -s !widthx!height -b 500k -threads 0 -vcodec libx264 -vf \"pad=!paddingwidth:!paddingheight:!paddingleft:!paddingtop:000000\" -vpre slow -acodec aac -ab 128k !convertfile\";}s:14:\"useqtfaststart\";i:0;}'),(3,'video_localcommand','a:1:{s:8:\"commands\";a:1:{i:0;s:91:\"ffmpeg2theora --videobitrate 500 --max_size !widthx!height --output !convertfile !videofile\";}}'),(4,'video_localcommand','a:1:{s:8:\"commands\";a:2:{i:0;s:253:\"!cmd_path -strict experimental -y -i !videofile -pass 1 -s !widthx!height -b 500k -threads 0 -vcodec libvpx -keyint_min 0 -g 250 -skip_threshold 0 -qmin 1 -qmax 51 -f webm -vf \"pad=!paddingwidth:!paddingheight:!paddingleft:!paddingtop:000000\" -an -y NUL\";i:1;s:282:\"!cmd_path -strict experimental -y -i !videofile -pass 2 -s !widthx!height -b 500k -threads 0 -vcodec libvpx -keyint_min 0 -g 250 -skip_threshold 0 -qmin 1 -qmax 51 -f webm -vf \"pad=!paddingwidth:!paddingheight:!paddingleft:!paddingtop:000000\" -acodec libvorbis -ac 2 -y !convertfile\";}}'),(5,'video_localcommand','a:2:{s:8:\"commands\";a:1:{i:0;s:252:\"!cmd_path -strict experimental -y -i !videofile -s !widthx!height -f mp4 -vcodec mpeg4 -maxrate 1000k -b 700k -qmin 3 -qmax 5 -bufsize 4096k -g 300 -acodec aac -ab 192k -vf \"pad=!paddingwidth:!paddingheight:!paddingleft:!paddingtop:000000\" !convertfile\";}s:14:\"useqtfaststart\";i:1;}');
/*!40000 ALTER TABLE `video_preset_settings` ENABLE KEYS */;
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
