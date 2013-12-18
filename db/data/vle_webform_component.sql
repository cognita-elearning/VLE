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
-- Table structure for table `webform_component`
--

DROP TABLE IF EXISTS `webform_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webform_component` (
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `form_key` varchar(128) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `value` text NOT NULL,
  `extra` text NOT NULL,
  `mandatory` tinyint(4) NOT NULL DEFAULT '0',
  `weight` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`,`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webform_component`
--

LOCK TABLES `webform_component` WRITE;
/*!40000 ALTER TABLE `webform_component` DISABLE KEYS */;
INSERT INTO `webform_component` VALUES (2120,1,0,'advanced_importing_and_exporting_with_access_2010','1. Advanced Importing and Exporting with Access 2010','select','','a:8:{s:11:\"description\";s:718:\"Popis tema za tečaj Advanced Importing and Exporting with Access 2010:\r\n - import data from one Access database into another Access database\r\n - import data from SQL Server into an Access database\r\n - link an Access database to data in SQL Server\r\n - export data from an Access database to a Word document\r\n - export data from an Access database to an Excel spreadsheet\r\n - export data from an Access database to an XML document\r\n - collect data by using e-mail messages\r\n - import Outlook 2010 contacts to a new Access 2010 table\r\n - import data in Access\r\n - export data from Access to other applications\r\n - use e-mail messages to collect data in Access\r\n - import an Outlook 2010 folder to a new Access 2010 table\";s:5:\"items\";s:32:\"1|Važno mi je\r\n2|Nije mi važno\";s:8:\"multiple\";i:0;s:13:\"title_display\";s:6:\"before\";s:7:\"private\";i:0;s:6:\"aslist\";i:0;s:7:\"optrand\";i:0;s:20:\"conditional_operator\";s:1:\"=\";}',1,0),(2120,2,0,'pivottables_and_pivotcharts_in_access_2010','2. PivotTables and PivotCharts in Access 2010','select','','a:8:{s:11:\"description\";s:381:\"Popis tema za tečaj PivotTables and PivotCharts in Access 2010:\r\n - identify key characteristics of Access PivotTables\r\n - create a PivotTable in an Access database\r\n - use a PivotTable to analyze data\r\n - create a PivotChart in an Access database\r\n - use a PivotChart to analyze data\r\n - create a PivotTable and manipulate its data\r\n - create a PivotChart and manipulate its data\";s:5:\"items\";s:32:\"1|Važno mi je\r\n2|Nije mi važno\";s:8:\"multiple\";i:0;s:13:\"title_display\";s:6:\"before\";s:7:\"private\";i:0;s:6:\"aslist\";i:0;s:7:\"optrand\";i:0;s:20:\"conditional_operator\";s:1:\"=\";}',1,1),(2120,3,0,'retrieving_validating_and_attaching_data_in_access_2010','3. Retrieving, Validating, and Attaching Data in Access 2010','select','','a:8:{s:11:\"description\";s:505:\"Popis tema za tečaj Retrieving, Validating, and Attaching Data in Access 2010:\r\n - create a lookup field for data entry\r\n - modify the behavior of a lookup field\r\n - validate control data on a form using the Expression Builder\r\n - identify ways that attachments can be used in Access 2010\r\n - add an attachment to a table\r\n - add an attachment to a form\r\n - create a lookup field and change its behavior\r\n - validate control data on a form\r\n - add an attachment to a table\r\n - add an attachment to a form\";s:5:\"items\";s:32:\"1|Važno mi je\r\n2|Nije mi važno\";s:8:\"multiple\";i:0;s:13:\"title_display\";s:6:\"before\";s:7:\"private\";i:0;s:6:\"aslist\";i:0;s:7:\"optrand\";i:0;s:20:\"conditional_operator\";s:1:\"=\";}',1,2),(2120,4,0,'subforms_subreports_and_conditional_formatting_in_access_2010','4. Subforms, Subreports, and Conditional Formatting in Access 2010','select','','a:8:{s:11:\"description\";s:488:\"Popis tema za tečaj Subforms, Subreports, and Conditional Formatting in Access 2010:\r\n - create subforms\r\n - set the default view of a subform\r\n - create subreports\r\n - make design change subreports\r\n - apply conditional formatting to data in a report\r\n - change the priority of a conditional formatting rule\r\n - add a subform to a form and set it\'s default view\r\n - add a subreport to a report and prepare to make subsequent design alterations\r\n - use conditional formatting in a report\";s:5:\"items\";s:32:\"1|Važno mi je\r\n2|Nije mi važno\";s:8:\"multiple\";i:0;s:13:\"title_display\";s:6:\"before\";s:7:\"private\";i:0;s:6:\"aslist\";i:0;s:7:\"optrand\";i:0;s:20:\"conditional_operator\";s:1:\"=\";}',1,3),(2120,5,0,'joins_sql_and_action_queries_in_access_2010','5. Joins, SQL, and Action Queries in Access 2010','select','','a:8:{s:11:\"description\";s:635:\"Popis tema za tečaj Joins, SQL, and Action Queries in Access 2010:\r\n - create and edit joins in Access 2010 databases\r\n - creates a parameter query\r\n - modify data in existing tables\r\n - create a new table from data in other tables\r\n - delete data from an Access 2010 database\r\n - identify how to create a union queries\r\n - modify an object within a database using a data-definition query\r\n - access a hosted database with a view to running a pass-through query\r\n - remove duplicate records from a table using a subquery\r\n - specify a join in a query\r\n - use action queries to modify a database\r\n - create and refine queries using SQL\";s:5:\"items\";s:32:\"1|Važno mi je\r\n2|Nije mi važno\";s:8:\"multiple\";i:0;s:13:\"title_display\";s:6:\"before\";s:7:\"private\";i:0;s:6:\"aslist\";i:0;s:7:\"optrand\";i:0;s:20:\"conditional_operator\";s:1:\"=\";}',1,4),(2120,6,0,'access_2010_macros_and_vba','6. Access 2010 Macros and VBA','select','','a:8:{s:11:\"description\";s:309:\"Popis tema za tečaj Access 2010 Macros and VBA:\r\n - create macros\r\n - execute macro actions conditionally\r\n - create data macros\r\n - work with data macros\r\n - recognize situations when you should use macros or VBA\r\n - convert macros to VBA\r\n - create macros\r\n - create a data macro\r\n - convert a macro to VBA\";s:5:\"items\";s:32:\"1|Važno mi je\r\n2|Nije mi važno\";s:8:\"multiple\";i:0;s:13:\"title_display\";s:6:\"before\";s:7:\"private\";i:0;s:6:\"aslist\";i:0;s:7:\"optrand\";i:0;s:20:\"conditional_operator\";s:1:\"=\";}',1,5);
/*!40000 ALTER TABLE `webform_component` ENABLE KEYS */;
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
