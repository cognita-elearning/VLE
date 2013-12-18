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
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions` (
  `aid` varchar(255) NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT '',
  `callback` varchar(255) NOT NULL DEFAULT '',
  `parameters` longtext NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES ('comment_publish_action','comment','comment_publish_action','','Publish comment'),('comment_unpublish_action','comment','comment_unpublish_action','','Neobjavljen komentar'),('node_publish_action','node','node_publish_action','','Objaviti sadržaj'),('node_unpublish_action','node','node_unpublish_action','','Neobjaviti sadržaj'),('node_make_sticky_action','node','node_make_sticky_action','','Učiniti sadržaj ljepljivim'),('node_make_unsticky_action','node','node_make_unsticky_action','','Učiniti sadržaj odljepljenim'),('node_promote_action','node','node_promote_action','','Promovirati sadržaj na početnu stranicu'),('node_unpromote_action','node','node_unpromote_action','','Ukloniti sadržaj sa početne stranice'),('node_save_action','node','node_save_action','','Spremi sadržaj'),('user_block_user_action','user','user_block_user_action','','Blokiraj trenutnog korisnika'),('user_block_ip_action','user','user_block_ip_action','','Blokiraj IP adresu trenutnog korisnika'),('imagecache_flush_action','node','imagecache_flush_action','','ImageCache: Flush ALL presets for this node\'s filefield images'),('imagecache_generate_all_action','node','imagecache_generate_all_action','','ImageCache: Generate ALL presets for this node\'s filefield images'),('og_remove_groups_action','node','og_remove_groups_action','','Remove post from all groups'),('views_bulk_operations_ruleset_action_rules_set_1','node','views_bulk_operations_ruleset_action_rules_set_1','','Example: Empty rule set working with content'),('views_bulk_operations_archive_action','file','views_bulk_operations_archive_action','','Download archive of selected files'),('views_bulk_operations_delete_node_action','node','views_bulk_operations_delete_node_action','','Delete node'),('views_bulk_operations_delete_user_action','user','views_bulk_operations_delete_user_action','','Delete user'),('views_bulk_operations_delete_comment_action','comment','views_bulk_operations_delete_comment_action','','Obriši komentar'),('views_bulk_operations_delete_term_action','term','views_bulk_operations_delete_term_action','','Delete term'),('views_bulk_operations_remove_book_action','node','views_bulk_operations_remove_book_action','','Remove book page from outline'),('og_make_public_action','node','og_make_public_action','','Make post publicly visible'),('og_make_private_action','node','og_make_private_action','','Make post private to its groups'),('simplenews_cron_action','simplenews','simplenews_cron_action','','Send pending simplenews newsletters');
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
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
