-- MySQL dump 10.13  Distrib 5.1.67, for pc-linux-gnu (x86_64)
--
-- Host: localhost    Database: dest_distrotests
-- ------------------------------------------------------
-- Server version	5.1.67-log

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
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `config` text NOT NULL,
  `icon` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `non_exclude_fields` text,
  `explicit_allowdeny` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `custom_options` text,
  `db_mountpoints` text,
  `pagetypes_select` varchar(255) NOT NULL DEFAULT '',
  `tables_select` text,
  `tables_modify` text,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `groupMods` text,
  `file_mountpoints` text,
  `file_permissions` text,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `subgroup` text,
  `hide_in_lists` tinyint(4) NOT NULL DEFAULT '0',
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(32) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` longtext,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
INSERT INTO `be_sessions` VALUES ('dacb8acf5b72f2eb7940bd993b35caac','be_typo_user','192.168.1.202',249219988,1,1430828511,'a:2:{s:16:\"formSessionToken\";s:64:\"fbb2b5f2a7494a5e882b7d6a5d7d59a0751303ddab1422be2a8d179121675562\";s:27:\"core.template.flashMessages\";N;}',0),('f9c8aa1fecaeac2b3617567644e842a8','be_typo_user','192.168.1.202',249219988,1,1430830001,'a:2:{s:16:\"formSessionToken\";s:64:\"62c6a73f803c536e68e202eda4d2e5577f93aff9730b1f66d96abb00168109f9\";s:27:\"core.template.flashMessages\";N;}',0);
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) NOT NULL DEFAULT '',
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(2) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `db_mountpoints` text,
  `options` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) NOT NULL DEFAULT '',
  `userMods` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `uc` mediumtext,
  `file_mountpoints` text,
  `file_permissions` text,
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `disableIPlock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1430828504,'admin','$P$CRnyt44OX0CBA8DcwypjsskpasHD.G1',1,'',0,0,0,'','',NULL,0,1430828504,0,'',NULL,'','a:22:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:3:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:9:\"tx_beuser\";s:530:\"O:40:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\ModuleData\":2:{s:9:\"\0*\0demand\";O:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\":12:{s:11:\"\0*\0userName\";s:0:\"\";s:11:\"\0*\0userType\";i:0;s:9:\"\0*\0status\";i:0;s:9:\"\0*\0logins\";i:0;s:19:\"\0*\0backendUserGroup\";N;s:6:\"\0*\0uid\";N;s:16:\"\0*\0_localizedUid\";N;s:15:\"\0*\0_languageUid\";N;s:16:\"\0*\0_versionedUid\";N;s:6:\"\0*\0pid\";N;s:61:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_isClone\";b:0;s:69:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_cleanProperties\";a:0:{}}s:18:\"\0*\0compareUserList\";a:0:{}}\";s:16:\"xMOD_alt_doc.php\";a:0:{}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:10:\"noMenuMode\";i:0;s:11:\"startModule\";s:17:\"help_aboutmodules\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"helpText\";i:1;s:8:\"titleLen\";i:50;s:18:\"edit_showFieldHelp\";s:4:\"icon\";s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:13:\"navFrameWidth\";s:0:\"\";s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1430828509;s:15:\"moduleSessionID\";a:3:{s:10:\"web_layout\";s:32:\"dacb8acf5b72f2eb7940bd993b35caac\";s:9:\"tx_beuser\";s:32:\"f9c8aa1fecaeac2b3617567644e842a8\";s:16:\"xMOD_alt_doc.php\";s:32:\"f9c8aa1fecaeac2b3617567644e842a8\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:2:{s:19:\"typo3-debug-console\";O:8:\"stdClass\":1:{s:9:\"collapsed\";b:1;}s:8:\"Pagetree\";O:8:\"stdClass\":1:{s:9:\"stateHash\";O:8:\"stdClass\":2:{s:1:\"0\";i:1;s:4:\"root\";i:1;}}}}s:8:\"tcaTrees\";a:1:{s:32:\"6b65a463ec23e6c64788cf0df19087dc\";i:0;}}',NULL,NULL,1,'',0,0,NULL,1430829854,0,NULL,0,1,''),(2,0,1430830001,'_cli_lowlevel','$P$CJUVksB0JpSD9vmiVOxfeRANa4FtP8.',0,'',0,0,0,'','','',3,1430830001,1,'','','',NULL,'','readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,moveFile,deleteFile',1,'',0,0,'',0,0,NULL,0,1,'');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_imagesizes`
--

DROP TABLE IF EXISTS `cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_imagesizes` (
  `md5hash` varchar(32) NOT NULL DEFAULT '',
  `md5filename` varchar(32) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_imagesizes`
--

LOCK TABLES `cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_md5params`
--

DROP TABLE IF EXISTS `cache_md5params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_md5params` (
  `md5hash` varchar(20) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_md5params`
--

LOCK TABLES `cache_md5params` WRITE;
/*!40000 ALTER TABLE `cache_md5params` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_md5params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` char(32) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` text,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_typo3temp_log`
--

DROP TABLE IF EXISTS `cache_typo3temp_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_typo3temp_log` (
  `md5hash` varchar(32) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `orig_filename` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_typo3temp_log`
--

LOCK TABLES `cache_typo3temp_log` WRITE;
/*!40000 ALTER TABLE `cache_typo3temp_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_typo3temp_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash`
--

DROP TABLE IF EXISTS `cf_cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash`
--

LOCK TABLES `cf_cache_hash` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash` DISABLE KEYS */;
INSERT INTO `cf_cache_hash` VALUES (1,'3479c7fc6a71819ea1e44b7eef54340e',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:4:{s:8:\"options.\";a:9:{s:15:\"enableBookmarks\";s:1:\"1\";s:18:\"enableShowPalettes\";s:1:\"1\";s:10:\"file_list.\";a:3:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:23:\"enableDisplayThumbnails\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";}s:9:\"pageTree.\";a:1:{s:31:\"doktypesToShowInNewPageDragArea\";s:21:\"1,6,4,7,3,254,255,199\";}s:12:\"contextMenu.\";a:2:{s:8:\"options.\";a:1:{s:9:\"leftIcons\";s:1:\"1\";}s:6:\"table.\";a:3:{s:13:\"virtual_root.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:7:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:10:\"spriteIcon\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}i:9000;s:7:\"DIVIDER\";i:9100;s:4:\"ITEM\";s:5:\"9100.\";a:4:{s:4:\"name\";s:9:\"exportT3d\";s:5:\"label\";s:39:\"LLL:EXT:impexp/app/locallang.xlf:export\";s:10:\"spriteIcon\";s:27:\"actions-document-export-t3d\";s:14:\"callbackAction\";s:9:\"exportT3d\";}i:9200;s:4:\"ITEM\";s:5:\"9200.\";a:4:{s:4:\"name\";s:9:\"importT3d\";s:5:\"label\";s:39:\"LLL:EXT:impexp/app/locallang.xlf:import\";s:10:\"spriteIcon\";s:27:\"actions-document-import-t3d\";s:14:\"callbackAction\";s:9:\"importT3d\";}}}s:11:\"pages_root.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:12:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:4:\"view\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.view\";s:10:\"spriteIcon\";s:21:\"actions-document-view\";s:16:\"displayCondition\";s:16:\"canBeViewed != 0\";s:14:\"callbackAction\";s:8:\"viewPage\";}i:200;s:4:\"ITEM\";s:4:\"200.\";a:5:{s:4:\"name\";s:3:\"new\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.new\";s:10:\"spriteIcon\";s:16:\"actions-page-new\";s:16:\"displayCondition\";s:22:\"canCreateNewPages != 0\";s:14:\"callbackAction\";s:13:\"newPageWizard\";}i:300;s:7:\"DIVIDER\";i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:10:\"spriteIcon\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}i:9000;s:7:\"DIVIDER\";i:9100;s:4:\"ITEM\";s:5:\"9100.\";a:4:{s:4:\"name\";s:9:\"exportT3d\";s:5:\"label\";s:39:\"LLL:EXT:impexp/app/locallang.xlf:export\";s:10:\"spriteIcon\";s:27:\"actions-document-export-t3d\";s:14:\"callbackAction\";s:9:\"exportT3d\";}i:9200;s:4:\"ITEM\";s:5:\"9200.\";a:4:{s:4:\"name\";s:9:\"importT3d\";s:5:\"label\";s:39:\"LLL:EXT:impexp/app/locallang.xlf:import\";s:10:\"spriteIcon\";s:27:\"actions-document-import-t3d\";s:14:\"callbackAction\";s:9:\"importT3d\";}}}s:6:\"pages.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:18:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:4:\"view\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.view\";s:10:\"spriteIcon\";s:21:\"actions-document-view\";s:16:\"displayCondition\";s:16:\"canBeViewed != 0\";s:14:\"callbackAction\";s:8:\"viewPage\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:7:\"disable\";s:5:\"label\";s:41:\"LLL:EXT:lang/locallang_common.xlf:disable\";s:10:\"spriteIcon\";s:17:\"actions-edit-hide\";s:16:\"displayCondition\";s:52:\"getRecord|hidden = 0 && canBeDisabledAndEnabled != 0\";s:14:\"callbackAction\";s:11:\"disablePage\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:6:\"enable\";s:5:\"label\";s:40:\"LLL:EXT:lang/locallang_common.xlf:enable\";s:10:\"spriteIcon\";s:19:\"actions-edit-unhide\";s:16:\"displayCondition\";s:52:\"getRecord|hidden = 1 && canBeDisabledAndEnabled != 0\";s:14:\"callbackAction\";s:10:\"enablePage\";}i:500;s:4:\"ITEM\";s:4:\"500.\";a:5:{s:4:\"name\";s:4:\"edit\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.edit\";s:10:\"spriteIcon\";s:17:\"actions-page-open\";s:16:\"displayCondition\";s:16:\"canBeEdited != 0\";s:14:\"callbackAction\";s:18:\"editPageProperties\";}i:600;s:4:\"ITEM\";s:4:\"600.\";a:5:{s:4:\"name\";s:4:\"info\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.info\";s:10:\"spriteIcon\";s:21:\"actions-document-info\";s:16:\"displayCondition\";s:16:\"canShowInfo != 0\";s:14:\"callbackAction\";s:13:\"openInfoPopUp\";}i:700;s:4:\"ITEM\";s:4:\"700.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:10:\"spriteIcon\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}i:800;s:7:\"DIVIDER\";i:900;s:7:\"SUBMENU\";s:4:\"900.\";a:19:{s:5:\"label\";s:51:\"LLL:EXT:lang/locallang_core.xlf:cm.copyPasteActions\";i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:3:\"new\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.new\";s:10:\"spriteIcon\";s:16:\"actions-page-new\";s:16:\"displayCondition\";s:22:\"canCreateNewPages != 0\";s:14:\"callbackAction\";s:13:\"newPageWizard\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:3:\"cut\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.cut\";s:10:\"spriteIcon\";s:16:\"actions-edit-cut\";s:16:\"displayCondition\";s:53:\"isInCutMode = 0 && canBeCut != 0 && isMountPoint != 1\";s:14:\"callbackAction\";s:13:\"enableCutMode\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:3:\"cut\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.cut\";s:10:\"spriteIcon\";s:24:\"actions-edit-cut-release\";s:16:\"displayCondition\";s:32:\"isInCutMode = 1 && canBeCut != 0\";s:14:\"callbackAction\";s:14:\"disableCutMode\";}i:500;s:4:\"ITEM\";s:4:\"500.\";a:5:{s:4:\"name\";s:4:\"copy\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.copy\";s:10:\"spriteIcon\";s:17:\"actions-edit-copy\";s:16:\"displayCondition\";s:36:\"isInCopyMode = 0 && canBeCopied != 0\";s:14:\"callbackAction\";s:14:\"enableCopyMode\";}i:600;s:4:\"ITEM\";s:4:\"600.\";a:5:{s:4:\"name\";s:4:\"copy\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.copy\";s:10:\"spriteIcon\";s:25:\"actions-edit-copy-release\";s:16:\"displayCondition\";s:36:\"isInCopyMode = 1 && canBeCopied != 0\";s:14:\"callbackAction\";s:15:\"disableCopyMode\";}i:700;s:4:\"ITEM\";s:4:\"700.\";a:5:{s:4:\"name\";s:9:\"pasteInto\";s:5:\"label\";s:44:\"LLL:EXT:lang/locallang_core.xlf:cm.pasteinto\";s:10:\"spriteIcon\";s:27:\"actions-document-paste-into\";s:16:\"displayCondition\";s:85:\"getContextInfo|inCopyMode = 1 || getContextInfo|inCutMode = 1 && canBePastedInto != 0\";s:14:\"callbackAction\";s:13:\"pasteIntoNode\";}i:800;s:4:\"ITEM\";s:4:\"800.\";a:5:{s:4:\"name\";s:10:\"pasteAfter\";s:5:\"label\";s:45:\"LLL:EXT:lang/locallang_core.xlf:cm.pasteafter\";s:10:\"spriteIcon\";s:28:\"actions-document-paste-after\";s:16:\"displayCondition\";s:86:\"getContextInfo|inCopyMode = 1 || getContextInfo|inCutMode = 1 && canBePastedAfter != 0\";s:14:\"callbackAction\";s:14:\"pasteAfterNode\";}i:900;s:7:\"DIVIDER\";i:1000;s:4:\"ITEM\";s:5:\"1000.\";a:5:{s:4:\"name\";s:6:\"delete\";s:5:\"label\";s:41:\"LLL:EXT:lang/locallang_core.xlf:cm.delete\";s:10:\"spriteIcon\";s:19:\"actions-edit-delete\";s:16:\"displayCondition\";s:38:\"canBeRemoved != 0 && isMountPoint != 1\";s:14:\"callbackAction\";s:10:\"removeNode\";}}i:1000;s:7:\"SUBMENU\";s:5:\"1000.\";a:13:{s:5:\"label\";s:48:\"LLL:EXT:lang/locallang_core.xlf:cm.branchActions\";i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:15:\"mountAsTreeroot\";s:5:\"label\";s:49:\"LLL:EXT:lang/locallang_core.xlf:cm.tempMountPoint\";s:10:\"spriteIcon\";s:38:\"actions-system-extension-documentation\";s:16:\"displayCondition\";s:49:\"canBeTemporaryMountPoint != 0 && isMountPoint = 0\";s:14:\"callbackAction\";s:15:\"mountAsTreeRoot\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:12:\"expandBranch\";s:5:\"label\";s:47:\"LLL:EXT:lang/locallang_core.xlf:cm.expandBranch\";s:10:\"spriteIcon\";s:23:\"actions-pagetree-expand\";s:16:\"displayCondition\";s:0:\"\";s:14:\"callbackAction\";s:12:\"expandBranch\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:14:\"collapseBranch\";s:5:\"label\";s:49:\"LLL:EXT:lang/locallang_core.xlf:cm.collapseBranch\";s:10:\"spriteIcon\";s:25:\"actions-pagetree-collapse\";s:16:\"displayCondition\";s:0:\"\";s:14:\"callbackAction\";s:14:\"collapseBranch\";}i:9000;s:7:\"DIVIDER\";i:9100;s:4:\"ITEM\";s:5:\"9100.\";a:4:{s:4:\"name\";s:9:\"exportT3d\";s:5:\"label\";s:39:\"LLL:EXT:impexp/app/locallang.xlf:export\";s:10:\"spriteIcon\";s:27:\"actions-document-export-t3d\";s:14:\"callbackAction\";s:9:\"exportT3d\";}i:9200;s:4:\"ITEM\";s:5:\"9200.\";a:4:{s:4:\"name\";s:9:\"importT3d\";s:5:\"label\";s:39:\"LLL:EXT:impexp/app/locallang.xlf:import\";s:10:\"spriteIcon\";s:27:\"actions-document-import-t3d\";s:14:\"callbackAction\";s:9:\"importT3d\";}}}}}}s:11:\"saveDocView\";s:1:\"1\";s:10:\"saveDocNew\";s:1:\"1\";s:11:\"saveDocNew.\";a:2:{s:5:\"pages\";s:1:\"0\";s:8:\"sys_file\";s:1:\"0\";}s:14:\"disableDelete.\";a:1:{s:8:\"sys_file\";s:1:\"1\";}}s:12:\"TCAdefaults.\";a:2:{s:11:\"tt_content.\";a:1:{s:9:\"imagecols\";s:1:\"2\";}s:9:\"sys_note.\";a:2:{s:6:\"author\";s:0:\"\";s:5:\"email\";s:0:\"\";}}s:6:\"setup.\";a:1:{s:8:\"default.\";a:1:{s:8:\"edit_RTE\";s:1:\"1\";}}s:9:\"admPanel.\";a:1:{s:7:\"enable.\";a:1:{s:3:\"all\";s:1:\"1\";}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"fb95c8482b6e3037fb5c463fc4149d57\";}'),(2,'97192ac1f98b6a37783218c3014f7d27',2145909600,'a:6:{s:25:\"TYPO3.Components.PageTree\";a:4:{s:3:\"url\";s:97:\"http://dest.distro.lan/typo3/ajax.php?ajaxID=ExtDirect::route&namespace=TYPO3.Components.PageTree\";s:4:\"type\";s:8:\"remoting\";s:7:\"actions\";a:3:{s:12:\"DataProvider\";a:12:{i:0;a:3:{s:4:\"name\";s:7:\"getRoot\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}i:1;a:3:{s:4:\"name\";s:16:\"getNextTreeLevel\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:2;a:3:{s:4:\"name\";s:15:\"getFilteredTree\";s:3:\"len\";i:3;s:11:\"formHandler\";b:0;}i:3;a:3:{s:4:\"name\";s:12:\"getNodeTypes\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}i:4;a:3:{s:4:\"name\";s:13:\"getIndicators\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}i:5;a:3:{s:4:\"name\";s:13:\"loadResources\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}i:6;a:3:{s:4:\"name\";s:16:\"setStateProvider\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:7;a:3:{s:4:\"name\";s:16:\"getStateProvider\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}i:8;a:3:{s:4:\"name\";s:15:\"setDataProvider\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:9;a:3:{s:4:\"name\";s:15:\"getDataProvider\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}i:10;a:3:{s:4:\"name\";s:15:\"setNodeRenderer\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:11;a:3:{s:4:\"name\";s:15:\"getNodeRenderer\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}}s:8:\"Commands\";a:14:{i:0;a:3:{s:4:\"name\";s:11:\"visiblyNode\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:1;a:3:{s:4:\"name\";s:11:\"disableNode\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:2;a:3:{s:4:\"name\";s:10:\"deleteNode\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:3;a:3:{s:4:\"name\";s:11:\"restoreNode\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:4;a:3:{s:4:\"name\";s:11:\"updateLabel\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:5;a:3:{s:4:\"name\";s:22:\"setTemporaryMountPoint\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:6;a:3:{s:4:\"name\";s:33:\"moveNodeToFirstChildOfDestination\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:7;a:3:{s:4:\"name\";s:24:\"moveNodeAfterDestination\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:8;a:3:{s:4:\"name\";s:33:\"copyNodeToFirstChildOfDestination\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:9;a:3:{s:4:\"name\";s:24:\"copyNodeAfterDestination\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:10;a:3:{s:4:\"name\";s:35:\"insertNodeToFirstChildOfDestination\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:11;a:3:{s:4:\"name\";s:26:\"insertNodeAfterDestination\";s:3:\"len\";i:3;s:11:\"formHandler\";b:0;}i:12;a:3:{s:4:\"name\";s:11:\"getViewLink\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:13;a:3:{s:4:\"name\";s:28:\"addRootlineOfNodeToStateHash\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}}s:23:\"ContextMenuDataProvider\";a:4:{i:0;a:3:{s:4:\"name\";s:22:\"getActionsForNodeArray\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:1;a:3:{s:4:\"name\";s:17:\"getActionsForNode\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:2;a:3:{s:4:\"name\";s:15:\"setDataProvider\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:3;a:3:{s:4:\"name\";s:15:\"getDataProvider\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}}}s:9:\"namespace\";s:25:\"TYPO3.Components.PageTree\";}s:23:\"TYPO3.LiveSearchActions\";a:4:{s:3:\"url\";s:95:\"http://dest.distro.lan/typo3/ajax.php?ajaxID=ExtDirect::route&namespace=TYPO3.LiveSearchActions\";s:4:\"type\";s:8:\"remoting\";s:7:\"actions\";a:1:{s:9:\"ExtDirect\";a:2:{i:0;a:3:{s:4:\"name\";s:11:\"__construct\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}i:1;a:3:{s:4:\"name\";s:4:\"find\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}}}s:9:\"namespace\";s:23:\"TYPO3.LiveSearchActions\";}s:25:\"TYPO3.BackendUserSettings\";a:4:{s:3:\"url\";s:97:\"http://dest.distro.lan/typo3/ajax.php?ajaxID=ExtDirect::route&namespace=TYPO3.BackendUserSettings\";s:4:\"type\";s:8:\"remoting\";s:7:\"actions\";a:1:{s:9:\"ExtDirect\";a:7:{i:0;a:3:{s:4:\"name\";s:3:\"get\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:1;a:3:{s:4:\"name\";s:3:\"set\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:2;a:3:{s:4:\"name\";s:12:\"setFromArray\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:3;a:3:{s:4:\"name\";s:5:\"reset\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}i:4;a:3:{s:4:\"name\";s:8:\"unsetKey\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:5;a:3:{s:4:\"name\";s:9:\"addToList\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:6;a:3:{s:4:\"name\";s:14:\"removeFromList\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}}}s:9:\"namespace\";s:25:\"TYPO3.BackendUserSettings\";}s:9:\"TYPO3.CSH\";a:4:{s:3:\"url\";s:81:\"http://dest.distro.lan/typo3/ajax.php?ajaxID=ExtDirect::route&namespace=TYPO3.CSH\";s:4:\"type\";s:8:\"remoting\";s:7:\"actions\";a:1:{s:9:\"ExtDirect\";a:2:{i:0;a:3:{s:4:\"name\";s:14:\"getContextHelp\";s:3:\"len\";i:2;s:11:\"formHandler\";b:0;}i:1;a:3:{s:4:\"name\";s:19:\"getTableContextHelp\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}}}s:9:\"namespace\";s:9:\"TYPO3.CSH\";}s:28:\"TYPO3.ExtDirectStateProvider\";a:4:{s:3:\"url\";s:100:\"http://dest.distro.lan/typo3/ajax.php?ajaxID=ExtDirect::route&namespace=TYPO3.ExtDirectStateProvider\";s:4:\"type\";s:8:\"remoting\";s:7:\"actions\";a:1:{s:9:\"ExtDirect\";a:3:{i:0;a:3:{s:4:\"name\";s:11:\"__construct\";s:3:\"len\";i:0;s:11:\"formHandler\";b:0;}i:1;a:3:{s:4:\"name\";s:8:\"getState\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}i:2;a:3:{s:4:\"name\";s:8:\"setState\";s:3:\"len\";i:1;s:11:\"formHandler\";b:0;}}}s:9:\"namespace\";s:28:\"TYPO3.ExtDirectStateProvider\";}s:28:\"TYPO3.Components.DragAndDrop\";a:4:{s:3:\"url\";s:100:\"http://dest.distro.lan/typo3/ajax.php?ajaxID=ExtDirect::route&namespace=TYPO3.Components.DragAndDrop\";s:4:\"type\";s:8:\"remoting\";s:7:\"actions\";a:1:{s:17:\"CommandController\";a:1:{i:0;a:3:{s:4:\"name\";s:18:\"moveContentElement\";s:3:\"len\";i:3;s:11:\"formHandler\";b:0;}}}s:9:\"namespace\";s:28:\"TYPO3.Components.DragAndDrop\";}}'),(3,'5f23ec101fc11d37f5e4d7a661a1d12f',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:3:{s:4:\"mod.\";a:3:{s:9:\"web_list.\";a:3:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:22:\"enableLocalizationView\";s:10:\"selectable\";}s:8:\"wizards.\";a:3:{s:10:\"newRecord.\";a:1:{s:6:\"pages.\";a:1:{s:5:\"show.\";a:3:{s:10:\"pageInside\";s:1:\"1\";s:9:\"pageAfter\";s:1:\"1\";s:18:\"pageSelectPosition\";s:1:\"1\";}}}s:18:\"newContentElement.\";a:2:{s:10:\"renderMode\";s:4:\"tabs\";s:12:\"wizardItems.\";a:4:{s:7:\"common.\";a:3:{s:6:\"header\";s:57:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common\";s:9:\"elements.\";a:6:{s:7:\"header.\";a:4:{s:4:\"icon\";s:28:\"gfx/c_wiz/regular_header.gif\";s:5:\"title\";s:74:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_headerOnly_title\";s:11:\"description\";s:80:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_headerOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:6:\"header\";}}s:5:\"text.\";a:4:{s:4:\"icon\";s:26:\"gfx/c_wiz/regular_text.gif\";s:5:\"title\";s:75:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_regularText_title\";s:11:\"description\";s:81:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_regularText_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"text\";}}s:8:\"textpic.\";a:4:{s:4:\"icon\";s:30:\"gfx/c_wiz/text_image_right.gif\";s:5:\"title\";s:73:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_textImage_title\";s:11:\"description\";s:79:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_textImage_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:7:\"textpic\";s:11:\"imageorient\";s:2:\"17\";}}s:6:\"image.\";a:4:{s:4:\"icon\";s:25:\"gfx/c_wiz/images_only.gif\";s:5:\"title\";s:74:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_imagesOnly_title\";s:11:\"description\";s:80:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_imagesOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"image\";}}s:8:\"bullets.\";a:4:{s:4:\"icon\";s:25:\"gfx/c_wiz/bullet_list.gif\";s:5:\"title\";s:74:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_bulletList_title\";s:11:\"description\";s:80:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_bulletList_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"bullets\";}}s:6:\"table.\";a:4:{s:4:\"icon\";s:19:\"gfx/c_wiz/table.gif\";s:5:\"title\";s:69:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_table_title\";s:11:\"description\";s:75:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_table_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"table\";}}}s:4:\"show\";s:39:\"header,text,textpic,image,bullets,table\";}s:8:\"special.\";a:3:{s:6:\"header\";s:58:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special\";s:9:\"elements.\";a:7:{s:8:\"uploads.\";a:4:{s:4:\"icon\";s:23:\"gfx/c_wiz/filelinks.gif\";s:5:\"title\";s:74:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_filelinks_title\";s:11:\"description\";s:80:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_filelinks_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"uploads\";}}s:11:\"multimedia.\";a:4:{s:4:\"icon\";s:24:\"gfx/c_wiz/multimedia.gif\";s:5:\"title\";s:75:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_multimedia_title\";s:11:\"description\";s:81:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_multimedia_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:10:\"multimedia\";}}s:6:\"media.\";a:4:{s:4:\"icon\";s:24:\"gfx/c_wiz/multimedia.gif\";s:5:\"title\";s:70:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_media_title\";s:11:\"description\";s:76:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_media_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"media\";}}s:5:\"menu.\";a:4:{s:4:\"icon\";s:22:\"gfx/c_wiz/sitemap2.gif\";s:5:\"title\";s:70:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_menus_title\";s:11:\"description\";s:76:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_menus_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:4:\"menu\";s:9:\"menu_type\";s:1:\"0\";}}s:5:\"html.\";a:4:{s:4:\"icon\";s:18:\"gfx/c_wiz/html.gif\";s:5:\"title\";s:74:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_plainHTML_title\";s:11:\"description\";s:80:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_plainHTML_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"html\";}}s:4:\"div.\";a:4:{s:4:\"icon\";s:17:\"gfx/c_wiz/div.gif\";s:5:\"title\";s:72:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_divider_title\";s:11:\"description\";s:78:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_divider_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:3:\"div\";}}s:9:\"shortcut.\";a:4:{s:4:\"icon\";s:22:\"gfx/c_wiz/shortcut.gif\";s:5:\"title\";s:73:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_shortcut_title\";s:11:\"description\";s:79:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_shortcut_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:8:\"shortcut\";}}}s:4:\"show\";s:36:\"uploads,media,menu,html,div,shortcut\";}s:6:\"forms.\";a:3:{s:6:\"header\";s:56:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:forms\";s:9:\"elements.\";a:3:{s:9:\"mailform.\";a:4:{s:4:\"icon\";s:22:\"gfx/c_wiz/mailform.gif\";s:5:\"title\";s:67:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:forms_mail_title\";s:11:\"description\";s:73:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:forms_mail_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:8:\"mailform\";s:8:\"bodytext\";s:60:\"enctype = multipart/form-data\nmethod = post\nprefix = tx_form\";}}s:7:\"search.\";a:4:{s:4:\"icon\";s:24:\"gfx/c_wiz/searchform.gif\";s:5:\"title\";s:69:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:forms_search_title\";s:11:\"description\";s:75:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:forms_search_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:6:\"search\";}}s:6:\"login.\";a:4:{s:4:\"icon\";s:24:\"gfx/c_wiz/login_form.gif\";s:5:\"title\";s:68:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:forms_login_title\";s:11:\"description\";s:74:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:forms_login_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"login\";}}}s:4:\"show\";s:21:\"mailform,search,login\";}s:8:\"plugins.\";a:3:{s:6:\"header\";s:58:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:plugins\";s:9:\"elements.\";a:1:{s:8:\"general.\";a:4:{s:4:\"icon\";s:26:\"gfx/c_wiz/user_defined.gif\";s:5:\"title\";s:72:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:plugins_general_title\";s:11:\"description\";s:78:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:plugins_general_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"list\";}}}s:4:\"show\";s:1:\"*\";}}}s:5:\"form.\";a:2:{s:9:\"defaults.\";a:2:{s:8:\"showTabs\";s:23:\"elements, options, form\";s:5:\"tabs.\";a:3:{s:9:\"elements.\";a:2:{s:14:\"showAccordions\";s:26:\"basic, predefined, content\";s:11:\"accordions.\";a:3:{s:6:\"basic.\";a:1:{s:11:\"showButtons\";s:98:\"checkbox, fieldset, fileupload, hidden, password, radio, reset, select, submit, textarea, textline\";}s:11:\"predefined.\";a:1:{s:11:\"showButtons\";s:38:\"email, radiogroup, checkboxgroup, name\";}s:8:\"content.\";a:1:{s:11:\"showButtons\";s:17:\"header, textblock\";}}}s:8:\"options.\";a:2:{s:14:\"showAccordions\";s:64:\"legend, label, attributes, options, validation, filters, various\";s:11:\"accordions.\";a:4:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:217:\"accept, acceptcharset, accesskey, action, alt, checked, class, cols, dir, disabled, enctype, id, label, lang, maxlength, method, multiple, name, readonly, rows, selected, size, src, style, tabindex, title, type, value\";}s:6:\"label.\";a:1:{s:14:\"showProperties\";s:5:\"label\";}s:11:\"validation.\";a:2:{s:9:\"showRules\";s:196:\"alphabetic, alphanumeric, between, date, digit, email, equals, fileallowedtypes, filemaximumsize, fileminimumsize, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";s:6:\"rules.\";a:20:{s:11:\"alphabetic.\";a:1:{s:14:\"showProperties\";s:58:\"message, error, breakOnError, showMessage, allowWhiteSpace\";}s:13:\"alphanumeric.\";a:1:{s:14:\"showProperties\";s:58:\"message, error, breakOnError, showMessage, allowWhiteSpace\";}s:8:\"between.\";a:1:{s:14:\"showProperties\";s:70:\"message, error, breakOnError, showMessage, minimum, maximum, inclusive\";}s:5:\"date.\";a:1:{s:14:\"showProperties\";s:49:\"message, error, breakOnError, showMessage, format\";}s:6:\"digit.\";a:1:{s:14:\"showProperties\";s:41:\"message, error, breakOnError, showMessage\";}s:6:\"email.\";a:1:{s:14:\"showProperties\";s:41:\"message, error, breakOnError, showMessage\";}s:7:\"equals.\";a:1:{s:14:\"showProperties\";s:48:\"message, error, breakOnError, showMessage, field\";}s:17:\"fileallowedtypes.\";a:1:{s:14:\"showProperties\";s:48:\"message, error, breakOnError, showMessage, types\";}s:16:\"filemaximumsize.\";a:1:{s:14:\"showProperties\";s:50:\"message, error, breakOnError, showMessage, maximum\";}s:16:\"fileminimumsize.\";a:1:{s:14:\"showProperties\";s:50:\"message, error, breakOnError, showMessage, minimum\";}s:6:\"float.\";a:1:{s:14:\"showProperties\";s:41:\"message, error, breakOnError, showMessage\";}s:12:\"greaterthan.\";a:1:{s:14:\"showProperties\";s:50:\"message, error, breakOnError, showMessage, minimum\";}s:8:\"inarray.\";a:1:{s:14:\"showProperties\";s:56:\"message, error, breakOnError, showMessage, array, strict\";}s:8:\"integer.\";a:1:{s:14:\"showProperties\";s:41:\"message, error, breakOnError, showMessage\";}s:3:\"ip.\";a:1:{s:14:\"showProperties\";s:41:\"message, error, breakOnError, showMessage\";}s:7:\"length.\";a:1:{s:14:\"showProperties\";s:59:\"message, error, breakOnError, showMessage, minimum, maximum\";}s:9:\"lessthan.\";a:1:{s:14:\"showProperties\";s:50:\"message, error, breakOnError, showMessage, maximum\";}s:7:\"regexp.\";a:1:{s:14:\"showProperties\";s:53:\"message, error, breakOnError, showMessage, expression\";}s:9:\"required.\";a:1:{s:14:\"showProperties\";s:41:\"message, error, breakOnError, showMessage\";}s:4:\"uri.\";a:1:{s:14:\"showProperties\";s:41:\"message, error, breakOnError, showMessage\";}}}s:10:\"filtering.\";a:2:{s:11:\"showFilters\";s:123:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, removexss, stripnewlines, titlecase, trim, uppercase\";s:8:\"filters.\";a:12:{s:11:\"alphabetic.\";a:1:{s:14:\"showProperties\";s:15:\"allowWhiteSpace\";}s:13:\"alphanumeric.\";a:1:{s:14:\"showProperties\";s:15:\"allowWhiteSpace\";}s:9:\"currency.\";a:1:{s:14:\"showProperties\";s:31:\"decimalPoint, thousandSeparator\";}s:6:\"digit.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:8:\"integer.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:10:\"lowercase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:7:\"regexp.\";a:1:{s:14:\"showProperties\";s:10:\"expression\";}s:10:\"removexss.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:14:\"stripnewlines.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:10:\"titlecase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:5:\"trim.\";a:1:{s:14:\"showProperties\";s:13:\"characterList\";}s:10:\"uppercase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}}}}}s:5:\"form.\";a:2:{s:14:\"showAccordions\";s:44:\"behaviour, prefix, attributes, postProcessor\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:88:\"accept, acceptcharset, action, class, dir, enctype, id, lang, method, name, style, title\";}s:14:\"postProcessor.\";a:2:{s:18:\"showPostProcessors\";s:14:\"mail, redirect\";s:15:\"postProcessors.\";a:2:{s:5:\"mail.\";a:1:{s:14:\"showProperties\";s:36:\"recipientEmail, senderEmail, subject\";}s:9:\"redirect.\";a:1:{s:14:\"showProperties\";s:11:\"destination\";}}}}}}}s:9:\"elements.\";a:18:{s:7:\"button.\";a:2:{s:14:\"showAccordions\";s:10:\"attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:5:\"value\";}}}s:9:\"checkbox.\";a:2:{s:14:\"showAccordions\";s:17:\"label, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:11:\"name, value\";}}}s:9:\"fieldset.\";a:1:{s:14:\"showAccordions\";s:6:\"legend\";}s:11:\"fileupload.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:4:\"name\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:60:\"required, fileallowedtypes, filemaximumsize, fileminimumsize\";}}}s:7:\"hidden.\";a:2:{s:14:\"showAccordions\";s:10:\"attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:11:\"name, value\";}}}s:9:\"password.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:4:\"name\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:16:\"required, equals\";}}}s:6:\"radio.\";a:2:{s:14:\"showAccordions\";s:17:\"label, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:11:\"name, value\";}}}s:6:\"reset.\";a:2:{s:14:\"showAccordions\";s:10:\"attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:5:\"value\";}}}s:7:\"select.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, options, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:14:\"name, multiple\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:7:\"submit.\";a:2:{s:14:\"showAccordions\";s:10:\"attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:5:\"value\";}}}s:9:\"textarea.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:16:\"name, cols, rows\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:86:\"alphabetic, alphanumeric, lowercase, regexp, stripnewlines, titlecase, trim, uppercase\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:50:\"alphabetic, alphanumeric, length, regexp, required\";}}}s:9:\"textline.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:4:\"name\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:144:\"alphabetic, alphanumeric, between, date, digit, email, equals, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:97:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, titlecase, trim, uppercase\";}}}s:14:\"checkboxgroup.\";a:2:{s:14:\"showAccordions\";s:36:\"legend, options, various, validation\";s:11:\"accordions.\";a:1:{s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:6:\"email.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:4:\"name\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:144:\"alphabetic, alphanumeric, between, date, digit, email, equals, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:97:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, titlecase, trim, uppercase\";}}}s:7:\"header.\";a:1:{s:14:\"showAccordions\";s:7:\"various\";}s:10:\"textblock.\";a:1:{s:14:\"showAccordions\";s:7:\"various\";}s:5:\"name.\";a:1:{s:14:\"showAccordions\";s:15:\"legend, various\";}s:11:\"radiogroup.\";a:2:{s:14:\"showAccordions\";s:36:\"legend, options, various, validation\";s:11:\"accordions.\";a:1:{s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}}}}s:9:\"web_view.\";a:1:{s:19:\"previewFrameWidths.\";a:11:{s:5:\"1280.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:5:\"1024.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"960.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"800.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:4:\"768.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"600.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"640.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"480.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"400.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"360.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"300.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}}}}s:4:\"RTE.\";a:4:{s:8:\"default.\";a:18:{s:4:\"skin\";s:35:\"EXT:t3skin/rtehtmlarea/htmlarea.css\";s:3:\"FE.\";a:18:{s:4:\"skin\";s:35:\"EXT:t3skin/rtehtmlarea/htmlarea.css\";s:5:\"proc.\";a:15:{s:12:\"overruleMode\";s:6:\"ts_css\";s:21:\"dontConvBRtoParagraph\";s:1:\"1\";s:19:\"preserveDIVSections\";s:1:\"1\";s:16:\"allowTagsOutside\";s:69:\"address, article, aside, blockquote, footer, header, hr, nav, section\";s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:15:\"keepPDIVattribs\";s:67:\"id, title, dir, lang, xml:lang, itemscope, itemtype, itemprop,style\";s:26:\"transformBoldAndItalicTags\";s:1:\"1\";s:14:\"dontUndoHSC_db\";s:1:\"1\";s:11:\"dontHSC_rte\";s:1:\"1\";s:18:\"entryHTMLparser_db\";s:1:\"1\";s:19:\"entryHTMLparser_db.\";a:5:{s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:16:\"htmlSpecialChars\";s:1:\"0\";s:5:\"tags.\";a:28:{s:4:\"img.\";a:2:{s:14:\"allowedAttribs\";s:1:\"0\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:5:\"span.\";a:3:{s:10:\"fixAttrib.\";a:1:{s:6:\"style.\";a:0:{}}s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:2:\"p.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:3:\"hr.\";a:1:{s:14:\"allowedAttribs\";s:11:\"class,style\";}s:2:\"b.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"bdo.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"big.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:11:\"blockquote.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"cite.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"code.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"del.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"dfn.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"em.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"i.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"ins.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"kbd.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"label.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"q.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"samp.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"small.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strike.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strong.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sub.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sup.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"tt.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"u.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"var.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"div.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}}s:10:\"removeTags\";s:63:\"center, font, link, meta, o:p, sdfield, strike, style, title, u\";s:18:\"keepNonMatchedTags\";s:7:\"protect\";}s:14:\"HTMLparser_db.\";a:2:{s:8:\"noAttrib\";s:2:\"br\";s:14:\"xhtml_cleaning\";s:1:\"1\";}s:17:\"exitHTMLparser_db\";s:1:\"1\";s:18:\"exitHTMLparser_db.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"0\";}s:14:\"allowedClasses\";s:301:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail,align-left, align-center, align-right, align-justify,csc-frame-frame1, csc-frame-frame2,component-items, action-items,component-items-ordered, action-items-ordered,important, name-of-person, detail,indent\";}s:15:\"enableWordClean\";s:1:\"1\";s:16:\"removeTrailingBR\";s:1:\"1\";s:14:\"removeComments\";s:1:\"1\";s:10:\"removeTags\";s:37:\"center, font, o:p, sdfield, strike, u\";s:21:\"removeTagsAndContents\";s:32:\"link, meta, script, style, title\";s:11:\"showButtons\";s:493:\"blockstylelabel, blockstyle, textstylelabel, textstyle,formatblock, bold, italic, subscript, superscript,orderedlist, unorderedlist, outdent, indent, textindicator,insertcharacter, link, table, findreplace, chMode, removeformat, undo, redo, about,toggleborders, tableproperties,rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit,columninsertbefore, columninsertafter, columndelete, columnsplit,cellproperties, cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge\";s:23:\"keepButtonGroupTogether\";s:1:\"1\";s:13:\"showStatusBar\";s:1:\"0\";s:8:\"buttons.\";a:7:{s:12:\"formatblock.\";a:1:{s:11:\"removeItems\";s:11:\"pre,address\";}s:11:\"blockstyle.\";a:1:{s:5:\"tags.\";a:3:{s:4:\"div.\";a:1:{s:14:\"allowedClasses\";s:72:\"align-left, align-center, align-right,csc-frame-frame1, csc-frame-frame2\";}s:6:\"table.\";a:1:{s:14:\"allowedClasses\";s:34:\"csc-frame-frame1, csc-frame-frame2\";}s:3:\"td.\";a:1:{s:14:\"allowedClasses\";s:37:\"align-left, align-center, align-right\";}}}s:10:\"textstyle.\";a:1:{s:5:\"tags.\";a:1:{s:5:\"span.\";a:1:{s:14:\"allowedClasses\";s:33:\"important, name-of-person, detail\";}}}s:5:\"link.\";a:5:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:14:\"allowedClasses\";s:96:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail\";}}s:5:\"page.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:13:\"internal-link\";}}}s:4:\"url.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:24:\"external-link-new-window\";}}}s:5:\"file.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"download\";}}}s:5:\"mail.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:4:\"mail\";}}}}s:14:\"toggleborders.\";a:1:{s:18:\"setOnTableCreation\";s:1:\"1\";}s:5:\"bold.\";a:1:{s:6:\"hotKey\";s:1:\"b\";}s:7:\"italic.\";a:1:{s:6:\"hotKey\";s:1:\"i\";}}s:41:\"disableAlignmentFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableSpacingFieldsetInTableOperations\";s:1:\"1\";s:37:\"disableColorFieldsetInTableOperations\";s:1:\"1\";s:38:\"disableLayoutFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableBordersFieldsetInTableOperations\";s:1:\"1\";s:7:\"schema.\";a:1:{s:8:\"sources.\";a:1:{s:9:\"schemaOrg\";s:63:\"EXT:rtehtmlarea/extensions/MicrodataSchema/res/schemaOrgAll.rdf\";}}s:11:\"hideButtons\";s:202:\"chMode, blockstyle, textstyle, underline, strikethrough, subscript, superscript, lefttoright, righttoleft, left, center, right, justifyfull, table, inserttag, findreplace, removeformat, copy, cut, paste\";}s:5:\"proc.\";a:15:{s:12:\"overruleMode\";s:6:\"ts_css\";s:21:\"dontConvBRtoParagraph\";s:1:\"1\";s:19:\"preserveDIVSections\";s:1:\"1\";s:16:\"allowTagsOutside\";s:69:\"address, article, aside, blockquote, footer, header, hr, nav, section\";s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:15:\"keepPDIVattribs\";s:67:\"id, title, dir, lang, xml:lang, itemscope, itemtype, itemprop,style\";s:26:\"transformBoldAndItalicTags\";s:1:\"1\";s:14:\"dontUndoHSC_db\";s:1:\"1\";s:11:\"dontHSC_rte\";s:1:\"1\";s:18:\"entryHTMLparser_db\";s:1:\"1\";s:19:\"entryHTMLparser_db.\";a:5:{s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:16:\"htmlSpecialChars\";s:1:\"0\";s:5:\"tags.\";a:28:{s:4:\"img.\";a:2:{s:14:\"allowedAttribs\";s:1:\"0\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:5:\"span.\";a:3:{s:10:\"fixAttrib.\";a:1:{s:6:\"style.\";a:0:{}}s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:2:\"p.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:3:\"hr.\";a:1:{s:14:\"allowedAttribs\";s:11:\"class,style\";}s:2:\"b.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"bdo.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"big.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:11:\"blockquote.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"cite.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"code.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"del.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"dfn.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"em.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"i.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"ins.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"kbd.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"label.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"q.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"samp.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"small.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strike.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strong.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sub.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sup.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"tt.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"u.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"var.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"div.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}}s:10:\"removeTags\";s:63:\"center, font, link, meta, o:p, sdfield, strike, style, title, u\";s:18:\"keepNonMatchedTags\";s:7:\"protect\";}s:14:\"HTMLparser_db.\";a:2:{s:8:\"noAttrib\";s:2:\"br\";s:14:\"xhtml_cleaning\";s:1:\"1\";}s:17:\"exitHTMLparser_db\";s:1:\"1\";s:18:\"exitHTMLparser_db.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"0\";}s:14:\"allowedClasses\";s:301:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail,align-left, align-center, align-right, align-justify,csc-frame-frame1, csc-frame-frame2,component-items, action-items,component-items-ordered, action-items-ordered,important, name-of-person, detail,indent\";}s:15:\"enableWordClean\";s:1:\"1\";s:16:\"removeTrailingBR\";s:1:\"1\";s:14:\"removeComments\";s:1:\"1\";s:10:\"removeTags\";s:37:\"center, font, o:p, sdfield, strike, u\";s:21:\"removeTagsAndContents\";s:32:\"link, meta, script, style, title\";s:11:\"showButtons\";s:493:\"blockstylelabel, blockstyle, textstylelabel, textstyle,formatblock, bold, italic, subscript, superscript,orderedlist, unorderedlist, outdent, indent, textindicator,insertcharacter, link, table, findreplace, chMode, removeformat, undo, redo, about,toggleborders, tableproperties,rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit,columninsertbefore, columninsertafter, columndelete, columnsplit,cellproperties, cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge\";s:23:\"keepButtonGroupTogether\";s:1:\"1\";s:13:\"showStatusBar\";s:1:\"1\";s:8:\"buttons.\";a:7:{s:12:\"formatblock.\";a:1:{s:11:\"removeItems\";s:11:\"pre,address\";}s:11:\"blockstyle.\";a:1:{s:5:\"tags.\";a:3:{s:4:\"div.\";a:1:{s:14:\"allowedClasses\";s:72:\"align-left, align-center, align-right,csc-frame-frame1, csc-frame-frame2\";}s:6:\"table.\";a:1:{s:14:\"allowedClasses\";s:34:\"csc-frame-frame1, csc-frame-frame2\";}s:3:\"td.\";a:1:{s:14:\"allowedClasses\";s:37:\"align-left, align-center, align-right\";}}}s:10:\"textstyle.\";a:1:{s:5:\"tags.\";a:1:{s:5:\"span.\";a:1:{s:14:\"allowedClasses\";s:33:\"important, name-of-person, detail\";}}}s:5:\"link.\";a:5:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:14:\"allowedClasses\";s:96:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail\";}}s:5:\"page.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:13:\"internal-link\";}}}s:4:\"url.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:24:\"external-link-new-window\";}}}s:5:\"file.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"download\";}}}s:5:\"mail.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:4:\"mail\";}}}}s:14:\"toggleborders.\";a:1:{s:18:\"setOnTableCreation\";s:1:\"1\";}s:5:\"bold.\";a:1:{s:6:\"hotKey\";s:1:\"b\";}s:7:\"italic.\";a:1:{s:6:\"hotKey\";s:1:\"i\";}}s:41:\"disableAlignmentFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableSpacingFieldsetInTableOperations\";s:1:\"1\";s:37:\"disableColorFieldsetInTableOperations\";s:1:\"1\";s:38:\"disableLayoutFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableBordersFieldsetInTableOperations\";s:1:\"1\";s:7:\"schema.\";a:1:{s:8:\"sources.\";a:1:{s:9:\"schemaOrg\";s:63:\"EXT:rtehtmlarea/extensions/MicrodataSchema/res/schemaOrgAll.rdf\";}}}s:7:\"config.\";a:1:{s:11:\"tt_content.\";a:1:{s:9:\"bodytext.\";a:2:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}s:6:\"types.\";a:2:{s:5:\"text.\";a:1:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}}s:8:\"textpic.\";a:1:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}}}}}}s:8:\"classes.\";a:12:{s:11:\"align-left.\";a:2:{s:4:\"name\";s:63:\"LLL:EXT:rtehtmlarea/htmlarea/locallang_tooltips.xlf:justifyleft\";s:5:\"value\";s:17:\"text-align: left;\";}s:13:\"align-center.\";a:2:{s:4:\"name\";s:65:\"LLL:EXT:rtehtmlarea/htmlarea/locallang_tooltips.xlf:justifycenter\";s:5:\"value\";s:19:\"text-align: center;\";}s:12:\"align-right.\";a:2:{s:4:\"name\";s:64:\"LLL:EXT:rtehtmlarea/htmlarea/locallang_tooltips.xlf:justifyright\";s:5:\"value\";s:18:\"text-align: right;\";}s:17:\"csc-frame-frame1.\";a:2:{s:4:\"name\";s:61:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:frame-frame1\";s:5:\"value\";s:53:\"background-color: #EDEBF1; border: 1px solid #333333;\";}s:17:\"csc-frame-frame2.\";a:2:{s:4:\"name\";s:61:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:frame-frame2\";s:5:\"value\";s:53:\"background-color: #F5FFAA; border: 1px solid #333333;\";}s:10:\"important.\";a:2:{s:4:\"name\";s:58:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:important\";s:5:\"value\";s:15:\"color: #8A0020;\";}s:15:\"name-of-person.\";a:2:{s:4:\"name\";s:63:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:name-of-person\";s:5:\"value\";s:15:\"color: #10007B;\";}s:7:\"detail.\";a:2:{s:4:\"name\";s:55:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:detail\";s:5:\"value\";s:15:\"color: #186900;\";}s:16:\"component-items.\";a:2:{s:4:\"name\";s:64:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:component-items\";s:5:\"value\";s:15:\"color: #186900;\";}s:13:\"action-items.\";a:2:{s:4:\"name\";s:61:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:action-items\";s:5:\"value\";s:15:\"color: #8A0020;\";}s:24:\"component-items-ordered.\";a:2:{s:4:\"name\";s:64:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:component-items\";s:5:\"value\";s:15:\"color: #186900;\";}s:21:\"action-items-ordered.\";a:2:{s:4:\"name\";s:61:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:action-items\";s:5:\"value\";s:15:\"color: #8A0020;\";}}s:14:\"classesAnchor.\";a:6:{s:13:\"externalLink.\";a:3:{s:5:\"class\";s:13:\"external-link\";s:4:\"type\";s:3:\"url\";s:9:\"titleText\";s:80:\"LLL:EXT:rtehtmlarea/res/accessibilityicons/locallang.xlf:external_link_titleText\";}s:24:\"externalLinkInNewWindow.\";a:3:{s:5:\"class\";s:24:\"external-link-new-window\";s:4:\"type\";s:3:\"url\";s:9:\"titleText\";s:91:\"LLL:EXT:rtehtmlarea/res/accessibilityicons/locallang.xlf:external_link_new_window_titleText\";}s:13:\"internalLink.\";a:3:{s:5:\"class\";s:13:\"internal-link\";s:4:\"type\";s:4:\"page\";s:9:\"titleText\";s:80:\"LLL:EXT:rtehtmlarea/res/accessibilityicons/locallang.xlf:internal_link_titleText\";}s:24:\"internalLinkInNewWindow.\";a:3:{s:5:\"class\";s:24:\"internal-link-new-window\";s:4:\"type\";s:4:\"page\";s:9:\"titleText\";s:91:\"LLL:EXT:rtehtmlarea/res/accessibilityicons/locallang.xlf:internal_link_new_window_titleText\";}s:9:\"download.\";a:3:{s:5:\"class\";s:8:\"download\";s:4:\"type\";s:4:\"file\";s:9:\"titleText\";s:75:\"LLL:EXT:rtehtmlarea/res/accessibilityicons/locallang.xlf:download_titleText\";}s:5:\"mail.\";a:3:{s:5:\"class\";s:4:\"mail\";s:4:\"type\";s:4:\"mail\";s:9:\"titleText\";s:71:\"LLL:EXT:rtehtmlarea/res/accessibilityicons/locallang.xlf:mail_titleText\";}}}s:8:\"TCEFORM.\";a:1:{s:11:\"tt_content.\";a:3:{s:13:\"image_frames.\";a:1:{s:8:\"disabled\";s:1:\"1\";}s:6:\"CType.\";a:1:{s:11:\"removeItems\";s:29:\"swfobject,qtobject,multimedia\";}s:12:\"imageorient.\";a:1:{s:6:\"types.\";a:1:{s:6:\"image.\";a:1:{s:11:\"removeItems\";s:18:\"8,9,10,17,18,25,26\";}}}}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"e10c98498c6fcd9fa19e6cfdd06774ec\";}'),(4,'02ff3ef57a0a246e37f29b7ee4721e64',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:3:{s:4:\"mod.\";a:3:{s:9:\"web_list.\";a:3:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:22:\"enableLocalizationView\";s:10:\"selectable\";}s:8:\"wizards.\";a:3:{s:10:\"newRecord.\";a:1:{s:6:\"pages.\";a:1:{s:5:\"show.\";a:3:{s:10:\"pageInside\";s:1:\"1\";s:9:\"pageAfter\";s:1:\"1\";s:18:\"pageSelectPosition\";s:1:\"1\";}}}s:18:\"newContentElement.\";a:2:{s:10:\"renderMode\";s:4:\"tabs\";s:12:\"wizardItems.\";a:4:{s:7:\"common.\";a:3:{s:6:\"header\";s:57:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common\";s:9:\"elements.\";a:6:{s:7:\"header.\";a:4:{s:4:\"icon\";s:28:\"gfx/c_wiz/regular_header.gif\";s:5:\"title\";s:74:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_headerOnly_title\";s:11:\"description\";s:80:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_headerOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:6:\"header\";}}s:5:\"text.\";a:4:{s:4:\"icon\";s:26:\"gfx/c_wiz/regular_text.gif\";s:5:\"title\";s:75:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_regularText_title\";s:11:\"description\";s:81:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_regularText_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"text\";}}s:8:\"textpic.\";a:4:{s:4:\"icon\";s:30:\"gfx/c_wiz/text_image_right.gif\";s:5:\"title\";s:73:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_textImage_title\";s:11:\"description\";s:79:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_textImage_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:7:\"textpic\";s:11:\"imageorient\";s:2:\"17\";}}s:6:\"image.\";a:4:{s:4:\"icon\";s:25:\"gfx/c_wiz/images_only.gif\";s:5:\"title\";s:74:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_imagesOnly_title\";s:11:\"description\";s:80:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_imagesOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"image\";}}s:8:\"bullets.\";a:4:{s:4:\"icon\";s:25:\"gfx/c_wiz/bullet_list.gif\";s:5:\"title\";s:74:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_bulletList_title\";s:11:\"description\";s:80:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_bulletList_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"bullets\";}}s:6:\"table.\";a:4:{s:4:\"icon\";s:19:\"gfx/c_wiz/table.gif\";s:5:\"title\";s:69:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_table_title\";s:11:\"description\";s:75:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:common_table_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"table\";}}}s:4:\"show\";s:39:\"header,text,textpic,image,bullets,table\";}s:8:\"special.\";a:3:{s:6:\"header\";s:58:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special\";s:9:\"elements.\";a:7:{s:8:\"uploads.\";a:4:{s:4:\"icon\";s:23:\"gfx/c_wiz/filelinks.gif\";s:5:\"title\";s:74:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_filelinks_title\";s:11:\"description\";s:80:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_filelinks_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"uploads\";}}s:11:\"multimedia.\";a:4:{s:4:\"icon\";s:24:\"gfx/c_wiz/multimedia.gif\";s:5:\"title\";s:75:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_multimedia_title\";s:11:\"description\";s:81:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_multimedia_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:10:\"multimedia\";}}s:6:\"media.\";a:4:{s:4:\"icon\";s:24:\"gfx/c_wiz/multimedia.gif\";s:5:\"title\";s:70:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_media_title\";s:11:\"description\";s:76:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_media_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"media\";}}s:5:\"menu.\";a:4:{s:4:\"icon\";s:22:\"gfx/c_wiz/sitemap2.gif\";s:5:\"title\";s:70:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_menus_title\";s:11:\"description\";s:76:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_menus_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:4:\"menu\";s:9:\"menu_type\";s:1:\"0\";}}s:5:\"html.\";a:4:{s:4:\"icon\";s:18:\"gfx/c_wiz/html.gif\";s:5:\"title\";s:74:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_plainHTML_title\";s:11:\"description\";s:80:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_plainHTML_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"html\";}}s:4:\"div.\";a:4:{s:4:\"icon\";s:17:\"gfx/c_wiz/div.gif\";s:5:\"title\";s:72:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_divider_title\";s:11:\"description\";s:78:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_divider_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:3:\"div\";}}s:9:\"shortcut.\";a:4:{s:4:\"icon\";s:22:\"gfx/c_wiz/shortcut.gif\";s:5:\"title\";s:73:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_shortcut_title\";s:11:\"description\";s:79:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:special_shortcut_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:8:\"shortcut\";}}}s:4:\"show\";s:36:\"uploads,media,menu,html,div,shortcut\";}s:6:\"forms.\";a:3:{s:6:\"header\";s:56:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:forms\";s:9:\"elements.\";a:3:{s:9:\"mailform.\";a:4:{s:4:\"icon\";s:22:\"gfx/c_wiz/mailform.gif\";s:5:\"title\";s:67:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:forms_mail_title\";s:11:\"description\";s:73:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:forms_mail_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:8:\"mailform\";s:8:\"bodytext\";s:60:\"enctype = multipart/form-data\nmethod = post\nprefix = tx_form\";}}s:7:\"search.\";a:4:{s:4:\"icon\";s:24:\"gfx/c_wiz/searchform.gif\";s:5:\"title\";s:69:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:forms_search_title\";s:11:\"description\";s:75:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:forms_search_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:6:\"search\";}}s:6:\"login.\";a:4:{s:4:\"icon\";s:24:\"gfx/c_wiz/login_form.gif\";s:5:\"title\";s:68:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:forms_login_title\";s:11:\"description\";s:74:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:forms_login_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"login\";}}}s:4:\"show\";s:21:\"mailform,search,login\";}s:8:\"plugins.\";a:3:{s:6:\"header\";s:58:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:plugins\";s:9:\"elements.\";a:1:{s:8:\"general.\";a:4:{s:4:\"icon\";s:26:\"gfx/c_wiz/user_defined.gif\";s:5:\"title\";s:72:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:plugins_general_title\";s:11:\"description\";s:78:\"LLL:EXT:cms/layout/locallang_db_new_content_el.xlf:plugins_general_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"list\";}}}s:4:\"show\";s:1:\"*\";}}}s:5:\"form.\";a:2:{s:9:\"defaults.\";a:2:{s:8:\"showTabs\";s:23:\"elements, options, form\";s:5:\"tabs.\";a:3:{s:9:\"elements.\";a:2:{s:14:\"showAccordions\";s:26:\"basic, predefined, content\";s:11:\"accordions.\";a:3:{s:6:\"basic.\";a:1:{s:11:\"showButtons\";s:98:\"checkbox, fieldset, fileupload, hidden, password, radio, reset, select, submit, textarea, textline\";}s:11:\"predefined.\";a:1:{s:11:\"showButtons\";s:38:\"email, radiogroup, checkboxgroup, name\";}s:8:\"content.\";a:1:{s:11:\"showButtons\";s:17:\"header, textblock\";}}}s:8:\"options.\";a:2:{s:14:\"showAccordions\";s:64:\"legend, label, attributes, options, validation, filters, various\";s:11:\"accordions.\";a:4:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:217:\"accept, acceptcharset, accesskey, action, alt, checked, class, cols, dir, disabled, enctype, id, label, lang, maxlength, method, multiple, name, readonly, rows, selected, size, src, style, tabindex, title, type, value\";}s:6:\"label.\";a:1:{s:14:\"showProperties\";s:5:\"label\";}s:11:\"validation.\";a:2:{s:9:\"showRules\";s:196:\"alphabetic, alphanumeric, between, date, digit, email, equals, fileallowedtypes, filemaximumsize, fileminimumsize, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";s:6:\"rules.\";a:20:{s:11:\"alphabetic.\";a:1:{s:14:\"showProperties\";s:58:\"message, error, breakOnError, showMessage, allowWhiteSpace\";}s:13:\"alphanumeric.\";a:1:{s:14:\"showProperties\";s:58:\"message, error, breakOnError, showMessage, allowWhiteSpace\";}s:8:\"between.\";a:1:{s:14:\"showProperties\";s:70:\"message, error, breakOnError, showMessage, minimum, maximum, inclusive\";}s:5:\"date.\";a:1:{s:14:\"showProperties\";s:49:\"message, error, breakOnError, showMessage, format\";}s:6:\"digit.\";a:1:{s:14:\"showProperties\";s:41:\"message, error, breakOnError, showMessage\";}s:6:\"email.\";a:1:{s:14:\"showProperties\";s:41:\"message, error, breakOnError, showMessage\";}s:7:\"equals.\";a:1:{s:14:\"showProperties\";s:48:\"message, error, breakOnError, showMessage, field\";}s:17:\"fileallowedtypes.\";a:1:{s:14:\"showProperties\";s:48:\"message, error, breakOnError, showMessage, types\";}s:16:\"filemaximumsize.\";a:1:{s:14:\"showProperties\";s:50:\"message, error, breakOnError, showMessage, maximum\";}s:16:\"fileminimumsize.\";a:1:{s:14:\"showProperties\";s:50:\"message, error, breakOnError, showMessage, minimum\";}s:6:\"float.\";a:1:{s:14:\"showProperties\";s:41:\"message, error, breakOnError, showMessage\";}s:12:\"greaterthan.\";a:1:{s:14:\"showProperties\";s:50:\"message, error, breakOnError, showMessage, minimum\";}s:8:\"inarray.\";a:1:{s:14:\"showProperties\";s:56:\"message, error, breakOnError, showMessage, array, strict\";}s:8:\"integer.\";a:1:{s:14:\"showProperties\";s:41:\"message, error, breakOnError, showMessage\";}s:3:\"ip.\";a:1:{s:14:\"showProperties\";s:41:\"message, error, breakOnError, showMessage\";}s:7:\"length.\";a:1:{s:14:\"showProperties\";s:59:\"message, error, breakOnError, showMessage, minimum, maximum\";}s:9:\"lessthan.\";a:1:{s:14:\"showProperties\";s:50:\"message, error, breakOnError, showMessage, maximum\";}s:7:\"regexp.\";a:1:{s:14:\"showProperties\";s:53:\"message, error, breakOnError, showMessage, expression\";}s:9:\"required.\";a:1:{s:14:\"showProperties\";s:41:\"message, error, breakOnError, showMessage\";}s:4:\"uri.\";a:1:{s:14:\"showProperties\";s:41:\"message, error, breakOnError, showMessage\";}}}s:10:\"filtering.\";a:2:{s:11:\"showFilters\";s:123:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, removexss, stripnewlines, titlecase, trim, uppercase\";s:8:\"filters.\";a:12:{s:11:\"alphabetic.\";a:1:{s:14:\"showProperties\";s:15:\"allowWhiteSpace\";}s:13:\"alphanumeric.\";a:1:{s:14:\"showProperties\";s:15:\"allowWhiteSpace\";}s:9:\"currency.\";a:1:{s:14:\"showProperties\";s:31:\"decimalPoint, thousandSeparator\";}s:6:\"digit.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:8:\"integer.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:10:\"lowercase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:7:\"regexp.\";a:1:{s:14:\"showProperties\";s:10:\"expression\";}s:10:\"removexss.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:14:\"stripnewlines.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:10:\"titlecase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:5:\"trim.\";a:1:{s:14:\"showProperties\";s:13:\"characterList\";}s:10:\"uppercase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}}}}}s:5:\"form.\";a:2:{s:14:\"showAccordions\";s:44:\"behaviour, prefix, attributes, postProcessor\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:88:\"accept, acceptcharset, action, class, dir, enctype, id, lang, method, name, style, title\";}s:14:\"postProcessor.\";a:2:{s:18:\"showPostProcessors\";s:14:\"mail, redirect\";s:15:\"postProcessors.\";a:2:{s:5:\"mail.\";a:1:{s:14:\"showProperties\";s:36:\"recipientEmail, senderEmail, subject\";}s:9:\"redirect.\";a:1:{s:14:\"showProperties\";s:11:\"destination\";}}}}}}}s:9:\"elements.\";a:18:{s:7:\"button.\";a:2:{s:14:\"showAccordions\";s:10:\"attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:5:\"value\";}}}s:9:\"checkbox.\";a:2:{s:14:\"showAccordions\";s:17:\"label, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:11:\"name, value\";}}}s:9:\"fieldset.\";a:1:{s:14:\"showAccordions\";s:6:\"legend\";}s:11:\"fileupload.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:4:\"name\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:60:\"required, fileallowedtypes, filemaximumsize, fileminimumsize\";}}}s:7:\"hidden.\";a:2:{s:14:\"showAccordions\";s:10:\"attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:11:\"name, value\";}}}s:9:\"password.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:4:\"name\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:16:\"required, equals\";}}}s:6:\"radio.\";a:2:{s:14:\"showAccordions\";s:17:\"label, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:11:\"name, value\";}}}s:6:\"reset.\";a:2:{s:14:\"showAccordions\";s:10:\"attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:5:\"value\";}}}s:7:\"select.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, options, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:14:\"name, multiple\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:7:\"submit.\";a:2:{s:14:\"showAccordions\";s:10:\"attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:5:\"value\";}}}s:9:\"textarea.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:16:\"name, cols, rows\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:86:\"alphabetic, alphanumeric, lowercase, regexp, stripnewlines, titlecase, trim, uppercase\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:50:\"alphabetic, alphanumeric, length, regexp, required\";}}}s:9:\"textline.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:4:\"name\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:144:\"alphabetic, alphanumeric, between, date, digit, email, equals, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:97:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, titlecase, trim, uppercase\";}}}s:14:\"checkboxgroup.\";a:2:{s:14:\"showAccordions\";s:36:\"legend, options, various, validation\";s:11:\"accordions.\";a:1:{s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:6:\"email.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:4:\"name\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:144:\"alphabetic, alphanumeric, between, date, digit, email, equals, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:97:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, titlecase, trim, uppercase\";}}}s:7:\"header.\";a:1:{s:14:\"showAccordions\";s:7:\"various\";}s:10:\"textblock.\";a:1:{s:14:\"showAccordions\";s:7:\"various\";}s:5:\"name.\";a:1:{s:14:\"showAccordions\";s:15:\"legend, various\";}s:11:\"radiogroup.\";a:2:{s:14:\"showAccordions\";s:36:\"legend, options, various, validation\";s:11:\"accordions.\";a:1:{s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}}}}s:9:\"web_view.\";a:1:{s:19:\"previewFrameWidths.\";a:11:{s:5:\"1280.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:5:\"1024.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"960.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"800.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:4:\"768.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"600.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"640.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"480.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"400.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"360.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"300.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}}}}s:4:\"RTE.\";a:4:{s:8:\"default.\";a:18:{s:4:\"skin\";s:35:\"EXT:t3skin/rtehtmlarea/htmlarea.css\";s:3:\"FE.\";a:18:{s:4:\"skin\";s:35:\"EXT:t3skin/rtehtmlarea/htmlarea.css\";s:5:\"proc.\";a:15:{s:12:\"overruleMode\";s:6:\"ts_css\";s:21:\"dontConvBRtoParagraph\";s:1:\"1\";s:19:\"preserveDIVSections\";s:1:\"1\";s:16:\"allowTagsOutside\";s:69:\"address, article, aside, blockquote, footer, header, hr, nav, section\";s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:15:\"keepPDIVattribs\";s:67:\"id, title, dir, lang, xml:lang, itemscope, itemtype, itemprop,style\";s:26:\"transformBoldAndItalicTags\";s:1:\"1\";s:14:\"dontUndoHSC_db\";s:1:\"1\";s:11:\"dontHSC_rte\";s:1:\"1\";s:18:\"entryHTMLparser_db\";s:1:\"1\";s:19:\"entryHTMLparser_db.\";a:5:{s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:16:\"htmlSpecialChars\";s:1:\"0\";s:5:\"tags.\";a:28:{s:4:\"img.\";a:2:{s:14:\"allowedAttribs\";s:1:\"0\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:5:\"span.\";a:3:{s:10:\"fixAttrib.\";a:1:{s:6:\"style.\";a:0:{}}s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:2:\"p.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:3:\"hr.\";a:1:{s:14:\"allowedAttribs\";s:11:\"class,style\";}s:2:\"b.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"bdo.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"big.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:11:\"blockquote.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"cite.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"code.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"del.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"dfn.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"em.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"i.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"ins.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"kbd.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"label.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"q.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"samp.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"small.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strike.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strong.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sub.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sup.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"tt.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"u.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"var.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"div.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}}s:10:\"removeTags\";s:63:\"center, font, link, meta, o:p, sdfield, strike, style, title, u\";s:18:\"keepNonMatchedTags\";s:7:\"protect\";}s:14:\"HTMLparser_db.\";a:2:{s:8:\"noAttrib\";s:2:\"br\";s:14:\"xhtml_cleaning\";s:1:\"1\";}s:17:\"exitHTMLparser_db\";s:1:\"1\";s:18:\"exitHTMLparser_db.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"0\";}s:14:\"allowedClasses\";s:301:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail,align-left, align-center, align-right, align-justify,csc-frame-frame1, csc-frame-frame2,component-items, action-items,component-items-ordered, action-items-ordered,important, name-of-person, detail,indent\";}s:15:\"enableWordClean\";s:1:\"1\";s:16:\"removeTrailingBR\";s:1:\"1\";s:14:\"removeComments\";s:1:\"1\";s:10:\"removeTags\";s:37:\"center, font, o:p, sdfield, strike, u\";s:21:\"removeTagsAndContents\";s:32:\"link, meta, script, style, title\";s:11:\"showButtons\";s:493:\"blockstylelabel, blockstyle, textstylelabel, textstyle,formatblock, bold, italic, subscript, superscript,orderedlist, unorderedlist, outdent, indent, textindicator,insertcharacter, link, table, findreplace, chMode, removeformat, undo, redo, about,toggleborders, tableproperties,rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit,columninsertbefore, columninsertafter, columndelete, columnsplit,cellproperties, cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge\";s:23:\"keepButtonGroupTogether\";s:1:\"1\";s:13:\"showStatusBar\";s:1:\"0\";s:8:\"buttons.\";a:7:{s:12:\"formatblock.\";a:1:{s:11:\"removeItems\";s:11:\"pre,address\";}s:11:\"blockstyle.\";a:1:{s:5:\"tags.\";a:3:{s:4:\"div.\";a:1:{s:14:\"allowedClasses\";s:72:\"align-left, align-center, align-right,csc-frame-frame1, csc-frame-frame2\";}s:6:\"table.\";a:1:{s:14:\"allowedClasses\";s:34:\"csc-frame-frame1, csc-frame-frame2\";}s:3:\"td.\";a:1:{s:14:\"allowedClasses\";s:37:\"align-left, align-center, align-right\";}}}s:10:\"textstyle.\";a:1:{s:5:\"tags.\";a:1:{s:5:\"span.\";a:1:{s:14:\"allowedClasses\";s:33:\"important, name-of-person, detail\";}}}s:5:\"link.\";a:5:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:14:\"allowedClasses\";s:96:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail\";}}s:5:\"page.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:13:\"internal-link\";}}}s:4:\"url.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:24:\"external-link-new-window\";}}}s:5:\"file.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"download\";}}}s:5:\"mail.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:4:\"mail\";}}}}s:14:\"toggleborders.\";a:1:{s:18:\"setOnTableCreation\";s:1:\"1\";}s:5:\"bold.\";a:1:{s:6:\"hotKey\";s:1:\"b\";}s:7:\"italic.\";a:1:{s:6:\"hotKey\";s:1:\"i\";}}s:41:\"disableAlignmentFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableSpacingFieldsetInTableOperations\";s:1:\"1\";s:37:\"disableColorFieldsetInTableOperations\";s:1:\"1\";s:38:\"disableLayoutFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableBordersFieldsetInTableOperations\";s:1:\"1\";s:7:\"schema.\";a:1:{s:8:\"sources.\";a:1:{s:9:\"schemaOrg\";s:63:\"EXT:rtehtmlarea/extensions/MicrodataSchema/res/schemaOrgAll.rdf\";}}s:11:\"hideButtons\";s:202:\"chMode, blockstyle, textstyle, underline, strikethrough, subscript, superscript, lefttoright, righttoleft, left, center, right, justifyfull, table, inserttag, findreplace, removeformat, copy, cut, paste\";}s:5:\"proc.\";a:15:{s:12:\"overruleMode\";s:6:\"ts_css\";s:21:\"dontConvBRtoParagraph\";s:1:\"1\";s:19:\"preserveDIVSections\";s:1:\"1\";s:16:\"allowTagsOutside\";s:69:\"address, article, aside, blockquote, footer, header, hr, nav, section\";s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:15:\"keepPDIVattribs\";s:67:\"id, title, dir, lang, xml:lang, itemscope, itemtype, itemprop,style\";s:26:\"transformBoldAndItalicTags\";s:1:\"1\";s:14:\"dontUndoHSC_db\";s:1:\"1\";s:11:\"dontHSC_rte\";s:1:\"1\";s:18:\"entryHTMLparser_db\";s:1:\"1\";s:19:\"entryHTMLparser_db.\";a:5:{s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:16:\"htmlSpecialChars\";s:1:\"0\";s:5:\"tags.\";a:28:{s:4:\"img.\";a:2:{s:14:\"allowedAttribs\";s:1:\"0\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:5:\"span.\";a:3:{s:10:\"fixAttrib.\";a:1:{s:6:\"style.\";a:0:{}}s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:2:\"p.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:3:\"hr.\";a:1:{s:14:\"allowedAttribs\";s:11:\"class,style\";}s:2:\"b.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"bdo.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"big.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:11:\"blockquote.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"cite.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"code.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"del.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"dfn.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"em.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"i.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"ins.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"kbd.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"label.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"q.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"samp.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"small.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strike.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strong.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sub.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sup.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"tt.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"u.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"var.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"div.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}}s:10:\"removeTags\";s:63:\"center, font, link, meta, o:p, sdfield, strike, style, title, u\";s:18:\"keepNonMatchedTags\";s:7:\"protect\";}s:14:\"HTMLparser_db.\";a:2:{s:8:\"noAttrib\";s:2:\"br\";s:14:\"xhtml_cleaning\";s:1:\"1\";}s:17:\"exitHTMLparser_db\";s:1:\"1\";s:18:\"exitHTMLparser_db.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"0\";}s:14:\"allowedClasses\";s:301:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail,align-left, align-center, align-right, align-justify,csc-frame-frame1, csc-frame-frame2,component-items, action-items,component-items-ordered, action-items-ordered,important, name-of-person, detail,indent\";}s:15:\"enableWordClean\";s:1:\"1\";s:16:\"removeTrailingBR\";s:1:\"1\";s:14:\"removeComments\";s:1:\"1\";s:10:\"removeTags\";s:37:\"center, font, o:p, sdfield, strike, u\";s:21:\"removeTagsAndContents\";s:32:\"link, meta, script, style, title\";s:11:\"showButtons\";s:493:\"blockstylelabel, blockstyle, textstylelabel, textstyle,formatblock, bold, italic, subscript, superscript,orderedlist, unorderedlist, outdent, indent, textindicator,insertcharacter, link, table, findreplace, chMode, removeformat, undo, redo, about,toggleborders, tableproperties,rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit,columninsertbefore, columninsertafter, columndelete, columnsplit,cellproperties, cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge\";s:23:\"keepButtonGroupTogether\";s:1:\"1\";s:13:\"showStatusBar\";s:1:\"1\";s:8:\"buttons.\";a:7:{s:12:\"formatblock.\";a:1:{s:11:\"removeItems\";s:11:\"pre,address\";}s:11:\"blockstyle.\";a:1:{s:5:\"tags.\";a:3:{s:4:\"div.\";a:1:{s:14:\"allowedClasses\";s:72:\"align-left, align-center, align-right,csc-frame-frame1, csc-frame-frame2\";}s:6:\"table.\";a:1:{s:14:\"allowedClasses\";s:34:\"csc-frame-frame1, csc-frame-frame2\";}s:3:\"td.\";a:1:{s:14:\"allowedClasses\";s:37:\"align-left, align-center, align-right\";}}}s:10:\"textstyle.\";a:1:{s:5:\"tags.\";a:1:{s:5:\"span.\";a:1:{s:14:\"allowedClasses\";s:33:\"important, name-of-person, detail\";}}}s:5:\"link.\";a:5:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:14:\"allowedClasses\";s:96:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail\";}}s:5:\"page.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:13:\"internal-link\";}}}s:4:\"url.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:24:\"external-link-new-window\";}}}s:5:\"file.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"download\";}}}s:5:\"mail.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:4:\"mail\";}}}}s:14:\"toggleborders.\";a:1:{s:18:\"setOnTableCreation\";s:1:\"1\";}s:5:\"bold.\";a:1:{s:6:\"hotKey\";s:1:\"b\";}s:7:\"italic.\";a:1:{s:6:\"hotKey\";s:1:\"i\";}}s:41:\"disableAlignmentFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableSpacingFieldsetInTableOperations\";s:1:\"1\";s:37:\"disableColorFieldsetInTableOperations\";s:1:\"1\";s:38:\"disableLayoutFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableBordersFieldsetInTableOperations\";s:1:\"1\";s:7:\"schema.\";a:1:{s:8:\"sources.\";a:1:{s:9:\"schemaOrg\";s:63:\"EXT:rtehtmlarea/extensions/MicrodataSchema/res/schemaOrgAll.rdf\";}}}s:7:\"config.\";a:1:{s:11:\"tt_content.\";a:1:{s:9:\"bodytext.\";a:2:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}s:6:\"types.\";a:2:{s:5:\"text.\";a:1:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}}s:8:\"textpic.\";a:1:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}}}}}}s:8:\"classes.\";a:12:{s:11:\"align-left.\";a:2:{s:4:\"name\";s:63:\"LLL:EXT:rtehtmlarea/htmlarea/locallang_tooltips.xlf:justifyleft\";s:5:\"value\";s:17:\"text-align: left;\";}s:13:\"align-center.\";a:2:{s:4:\"name\";s:65:\"LLL:EXT:rtehtmlarea/htmlarea/locallang_tooltips.xlf:justifycenter\";s:5:\"value\";s:19:\"text-align: center;\";}s:12:\"align-right.\";a:2:{s:4:\"name\";s:64:\"LLL:EXT:rtehtmlarea/htmlarea/locallang_tooltips.xlf:justifyright\";s:5:\"value\";s:18:\"text-align: right;\";}s:17:\"csc-frame-frame1.\";a:2:{s:4:\"name\";s:61:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:frame-frame1\";s:5:\"value\";s:53:\"background-color: #EDEBF1; border: 1px solid #333333;\";}s:17:\"csc-frame-frame2.\";a:2:{s:4:\"name\";s:61:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:frame-frame2\";s:5:\"value\";s:53:\"background-color: #F5FFAA; border: 1px solid #333333;\";}s:10:\"important.\";a:2:{s:4:\"name\";s:58:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:important\";s:5:\"value\";s:15:\"color: #8A0020;\";}s:15:\"name-of-person.\";a:2:{s:4:\"name\";s:63:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:name-of-person\";s:5:\"value\";s:15:\"color: #10007B;\";}s:7:\"detail.\";a:2:{s:4:\"name\";s:55:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:detail\";s:5:\"value\";s:15:\"color: #186900;\";}s:16:\"component-items.\";a:2:{s:4:\"name\";s:64:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:component-items\";s:5:\"value\";s:15:\"color: #186900;\";}s:13:\"action-items.\";a:2:{s:4:\"name\";s:61:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:action-items\";s:5:\"value\";s:15:\"color: #8A0020;\";}s:24:\"component-items-ordered.\";a:2:{s:4:\"name\";s:64:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:component-items\";s:5:\"value\";s:15:\"color: #186900;\";}s:21:\"action-items-ordered.\";a:2:{s:4:\"name\";s:61:\"LLL:EXT:rtehtmlarea/res/contentcss/locallang.xlf:action-items\";s:5:\"value\";s:15:\"color: #8A0020;\";}}s:14:\"classesAnchor.\";a:6:{s:13:\"externalLink.\";a:3:{s:5:\"class\";s:13:\"external-link\";s:4:\"type\";s:3:\"url\";s:9:\"titleText\";s:80:\"LLL:EXT:rtehtmlarea/res/accessibilityicons/locallang.xlf:external_link_titleText\";}s:24:\"externalLinkInNewWindow.\";a:3:{s:5:\"class\";s:24:\"external-link-new-window\";s:4:\"type\";s:3:\"url\";s:9:\"titleText\";s:91:\"LLL:EXT:rtehtmlarea/res/accessibilityicons/locallang.xlf:external_link_new_window_titleText\";}s:13:\"internalLink.\";a:3:{s:5:\"class\";s:13:\"internal-link\";s:4:\"type\";s:4:\"page\";s:9:\"titleText\";s:80:\"LLL:EXT:rtehtmlarea/res/accessibilityicons/locallang.xlf:internal_link_titleText\";}s:24:\"internalLinkInNewWindow.\";a:3:{s:5:\"class\";s:24:\"internal-link-new-window\";s:4:\"type\";s:4:\"page\";s:9:\"titleText\";s:91:\"LLL:EXT:rtehtmlarea/res/accessibilityicons/locallang.xlf:internal_link_new_window_titleText\";}s:9:\"download.\";a:3:{s:5:\"class\";s:8:\"download\";s:4:\"type\";s:4:\"file\";s:9:\"titleText\";s:75:\"LLL:EXT:rtehtmlarea/res/accessibilityicons/locallang.xlf:download_titleText\";}s:5:\"mail.\";a:3:{s:5:\"class\";s:4:\"mail\";s:4:\"type\";s:4:\"mail\";s:9:\"titleText\";s:71:\"LLL:EXT:rtehtmlarea/res/accessibilityicons/locallang.xlf:mail_titleText\";}}}s:8:\"TCEFORM.\";a:1:{s:11:\"tt_content.\";a:3:{s:13:\"image_frames.\";a:1:{s:8:\"disabled\";s:1:\"1\";}s:6:\"CType.\";a:1:{s:11:\"removeItems\";s:29:\"swfobject,qtobject,multimedia\";}s:12:\"imageorient.\";a:1:{s:6:\"types.\";a:1:{s:6:\"image.\";a:1:{s:11:\"removeItems\";s:18:\"8,9,10,17,18,25,26\";}}}}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"e10c98498c6fcd9fa19e6cfdd06774ec\";}');
/*!40000 ALTER TABLE `cf_cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash_tags`
--

DROP TABLE IF EXISTS `cf_cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash_tags`
--

LOCK TABLES `cf_cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_hash_tags` VALUES (1,'3479c7fc6a71819ea1e44b7eef54340e','ident_userTS_TSconfig'),(2,'97192ac1f98b6a37783218c3014f7d27','ident_ExtDirectApi'),(3,'5f23ec101fc11d37f5e4d7a661a1d12f','ident_PAGES_TSconfig'),(4,'02ff3ef57a0a246e37f29b7ee4721e64','ident_PAGES_TSconfig');
/*!40000 ALTER TABLE `cf_cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages`
--

DROP TABLE IF EXISTS `cf_cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages`
--

LOCK TABLES `cf_cache_pages` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages_tags`
--

DROP TABLE IF EXISTS `cf_cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages_tags`
--

LOCK TABLES `cf_cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection`
--

DROP TABLE IF EXISTS `cf_cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection`
--

LOCK TABLES `cf_cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection_tags`
--

LOCK TABLES `cf_cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline`
--

DROP TABLE IF EXISTS `cf_cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline`
--

LOCK TABLES `cf_cache_rootline` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline_tags`
--

DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline_tags`
--

LOCK TABLES `cf_cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` DISABLE KEYS */;
INSERT INTO `cf_extbase_datamapfactory_datamap` VALUES (1,'TYPO3%CMS%Beuser%Domain%Model%BackendUser',1430833487,'O:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMap\":19:{s:12:\"\0*\0className\";s:41:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser\";s:12:\"\0*\0tableName\";s:8:\"be_users\";s:13:\"\0*\0recordType\";N;s:13:\"\0*\0subclasses\";a:0:{}s:13:\"\0*\0columnMaps\";a:23:{s:8:\"userName\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"userName\";s:13:\"\0*\0columnName\";s:8:\"username\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"password\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"password\";s:13:\"\0*\0columnName\";s:8:\"password\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:17:\"backendUserGroups\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:17:\"backendUserGroups\";s:13:\"\0*\0columnName\";s:9:\"usergroup\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";s:9:\"be_groups\";s:27:\"\0*\0childTableWhereStatement\";s:24:\"ORDER BY be_groups.title\";s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:12:\"locktodomain\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:12:\"locktodomain\";s:13:\"\0*\0columnName\";s:12:\"lockToDomain\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:13:\"dbMountPoints\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:13:\"dbMountPoints\";s:13:\"\0*\0columnName\";s:14:\"db_mountpoints\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"GROUP\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:2:\"DB\";}}s:15:\"fileMountPoints\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:15:\"fileMountPoints\";s:13:\"\0*\0columnName\";s:16:\"file_mountpoints\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:5:\"email\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:5:\"email\";s:13:\"\0*\0columnName\";s:5:\"email\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"realName\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"realName\";s:13:\"\0*\0columnName\";s:8:\"realName\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"isDisabled\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"isDisabled\";s:13:\"\0*\0columnName\";s:7:\"disable\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:16:\"ipLockIsDisabled\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:16:\"ipLockIsDisabled\";s:13:\"\0*\0columnName\";s:13:\"disableIPlock\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:15:\"isAdministrator\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:15:\"isAdministrator\";s:13:\"\0*\0columnName\";s:5:\"admin\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:7:\"options\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:7:\"options\";s:13:\"\0*\0columnName\";s:7:\"options\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:15:\"filePermissions\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:15:\"filePermissions\";s:13:\"\0*\0columnName\";s:16:\"file_permissions\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"workspacePerms\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"workspacePerms\";s:13:\"\0*\0columnName\";s:15:\"workspace_perms\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:16:\"startDateAndTime\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:16:\"startDateAndTime\";s:13:\"\0*\0columnName\";s:9:\"starttime\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"endDateAndTime\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"endDateAndTime\";s:13:\"\0*\0columnName\";s:7:\"endtime\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:4:\"lang\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:4:\"lang\";s:13:\"\0*\0columnName\";s:4:\"lang\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"usermods\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"usermods\";s:13:\"\0*\0columnName\";s:8:\"userMods\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:16:\"allowedLanguages\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:16:\"allowedLanguages\";s:13:\"\0*\0columnName\";s:17:\"allowed_languages\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"tsconfig\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"tsconfig\";s:13:\"\0*\0columnName\";s:8:\"TSconfig\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:4:\"TEXT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:15:\"createdbyaction\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:15:\"createdbyaction\";s:13:\"\0*\0columnName\";s:15:\"createdByAction\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:11:\"PASSTHROUGH\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:20:\"lastLoginDateAndTime\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:20:\"lastLoginDateAndTime\";s:13:\"\0*\0columnName\";s:9:\"lastlogin\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:13:\"categoryPerms\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:13:\"categoryPerms\";s:13:\"\0*\0columnName\";s:14:\"category_perms\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}}s:19:\"\0*\0pageIdColumnName\";s:3:\"pid\";s:23:\"\0*\0languageIdColumnName\";N;s:30:\"\0*\0translationOriginColumnName\";N;s:29:\"\0*\0modificationDateColumnName\";s:6:\"tstamp\";s:25:\"\0*\0creationDateColumnName\";s:6:\"crdate\";s:20:\"\0*\0creatorColumnName\";s:9:\"cruser_id\";s:24:\"\0*\0deletedFlagColumnName\";s:7:\"deleted\";s:25:\"\0*\0disabledFlagColumnName\";s:7:\"disable\";s:22:\"\0*\0startTimeColumnName\";s:9:\"starttime\";s:20:\"\0*\0endTimeColumnName\";s:7:\"endtime\";s:30:\"\0*\0frontendUserGroupColumnName\";N;s:23:\"\0*\0recordTypeColumnName\";s:5:\"admin\";s:11:\"\0*\0isStatic\";b:0;s:12:\"\0*\0rootLevel\";i:1;}'),(2,'TYPO3%CMS%Beuser%Domain%Model%BackendUserGroup',1430833487,'O:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMap\":19:{s:12:\"\0*\0className\";s:46:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup\";s:12:\"\0*\0tableName\";s:9:\"be_groups\";s:13:\"\0*\0recordType\";N;s:13:\"\0*\0subclasses\";a:0:{}s:13:\"\0*\0columnMaps\";a:20:{s:5:\"title\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:5:\"title\";s:13:\"\0*\0columnName\";s:5:\"title\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:13:\"dbMountpoints\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:13:\"dbMountpoints\";s:13:\"\0*\0columnName\";s:14:\"db_mountpoints\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"GROUP\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:2:\"DB\";}}s:15:\"fileMountpoints\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:15:\"fileMountpoints\";s:13:\"\0*\0columnName\";s:16:\"file_mountpoints\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:15:\"filePermissions\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:15:\"filePermissions\";s:13:\"\0*\0columnName\";s:16:\"file_permissions\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"workspacePerms\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"workspacePerms\";s:13:\"\0*\0columnName\";s:15:\"workspace_perms\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:15:\"pagetypesSelect\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:15:\"pagetypesSelect\";s:13:\"\0*\0columnName\";s:16:\"pagetypes_select\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:12:\"tablesModify\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:12:\"tablesModify\";s:13:\"\0*\0columnName\";s:13:\"tables_modify\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:12:\"tablesSelect\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:12:\"tablesSelect\";s:13:\"\0*\0columnName\";s:13:\"tables_select\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:16:\"nonExcludeFields\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:16:\"nonExcludeFields\";s:13:\"\0*\0columnName\";s:18:\"non_exclude_fields\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:17:\"explicitAllowdeny\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:17:\"explicitAllowdeny\";s:13:\"\0*\0columnName\";s:18:\"explicit_allowdeny\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:16:\"allowedLanguages\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:16:\"allowedLanguages\";s:13:\"\0*\0columnName\";s:17:\"allowed_languages\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:13:\"customOptions\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:13:\"customOptions\";s:13:\"\0*\0columnName\";s:14:\"custom_options\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:6:\"hidden\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:6:\"hidden\";s:13:\"\0*\0columnName\";s:6:\"hidden\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:12:\"locktodomain\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:12:\"locktodomain\";s:13:\"\0*\0columnName\";s:12:\"lockToDomain\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:9:\"groupmods\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"groupmods\";s:13:\"\0*\0columnName\";s:9:\"groupMods\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"description\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"description\";s:13:\"\0*\0columnName\";s:11:\"description\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:4:\"TEXT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"tsconfig\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"tsconfig\";s:13:\"\0*\0columnName\";s:8:\"TSconfig\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:4:\"TEXT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"hideInLists\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"hideInLists\";s:13:\"\0*\0columnName\";s:13:\"hide_in_lists\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:9:\"subGroups\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"subGroups\";s:13:\"\0*\0columnName\";s:8:\"subgroup\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";s:9:\"be_groups\";s:27:\"\0*\0childTableWhereStatement\";s:87:\"AND NOT(be_groups.uid = ###THIS_UID###) AND be_groups.hidden=0 ORDER BY be_groups.title\";s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:13:\"categoryPerms\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:13:\"categoryPerms\";s:13:\"\0*\0columnName\";s:14:\"category_perms\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}}s:19:\"\0*\0pageIdColumnName\";s:3:\"pid\";s:23:\"\0*\0languageIdColumnName\";N;s:30:\"\0*\0translationOriginColumnName\";N;s:29:\"\0*\0modificationDateColumnName\";s:6:\"tstamp\";s:25:\"\0*\0creationDateColumnName\";s:6:\"crdate\";s:20:\"\0*\0creatorColumnName\";s:9:\"cruser_id\";s:24:\"\0*\0deletedFlagColumnName\";s:7:\"deleted\";s:25:\"\0*\0disabledFlagColumnName\";s:6:\"hidden\";s:22:\"\0*\0startTimeColumnName\";N;s:20:\"\0*\0endTimeColumnName\";N;s:30:\"\0*\0frontendUserGroupColumnName\";N;s:23:\"\0*\0recordTypeColumnName\";N;s:11:\"\0*\0isStatic\";b:0;s:12:\"\0*\0rootLevel\";i:1;}');
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap_tags`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap_tags`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object`
--

DROP TABLE IF EXISTS `cf_extbase_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object`
--

LOCK TABLES `cf_extbase_object` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object` DISABLE KEYS */;
INSERT INTO `cf_extbase_object` VALUES (1,'f4161c7b5ff989cc5937476177f76d76',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(2,'28706bb75c080a9c080741d002c1cc12',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:35:\"TYPO3\\CMS\\Extbase\\Core\\ModuleRunner\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(3,'48ee39591354d5b031b745485de55720',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(4,'d77caba155d345483fd4950abb81f848',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:32:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(5,'3bcc835c5d8d7866a0ce2dc41464b9a8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(6,'dbac534c00a92e4f7b105be73fba4655',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(7,'698f3592af2e452d429bd1e9cf4e7f28',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"TYPO3\\CMS\\Extbase\\Configuration\\BackendConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:14:\"queryGenerator\";s:38:\"TYPO3\\CMS\\Core\\Database\\QueryGenerator\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:17:\"typoScriptService\";s:43:\"TYPO3\\CMS\\Extbase\\Service\\TypoScriptService\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(8,'a83f638ccc959a3a47ea70bd7ad866a8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Core\\Database\\QueryGenerator\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(9,'d9a9ae73d3607000daec9828154ef861',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Extbase\\Service\\TypoScriptService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(10,'33557becb5fd776e48ac1a4e8877c048',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(11,'1c4ccf3b1c0e8b02b14c2468bd494521',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\PersistenceManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:3:{s:12:\"queryFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactoryInterface\";s:7:\"backend\";s:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\BackendInterface\";s:18:\"persistenceSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(12,'a0b1e155c87dc5e77879a87871025d81',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:3:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:10:\"dataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(13,'07a1866183ac6e1ac9234808c4928fb3',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:7:{s:11:\"identityMap\";s:49:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\IdentityMap\";s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:10:\"qomFactory\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:18:\"persistenceSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:14:\"dataMapFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapFactory\";s:12:\"queryFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactoryInterface\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(14,'1a3b2f16107ec1391d0da233f4a07261',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\IdentityMap\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:18:\"persistenceSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(15,'b2d13edc404dad53fde6e8ed67946954',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(16,'7b6eafa37459ae90810443b105992a61',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(17,'2c1c56e551397ae5c80783e1cf2c3eda',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:12:\"cacheManager\";s:33:\"TYPO3\\CMS\\Core\\Cache\\CacheManager\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(18,'993ae131d5bac2569b6e9d01b5777ed7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Backend\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:20:\"configurationManager\";s:10:\"dependency\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:6:{s:7:\"session\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:10:\"qomFactory\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:14:\"storageBackend\";s:62:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\BackendInterface\";s:10:\"dataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:20:\"signalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(19,'01ab75a69565e18f3f821b42318e0ff1',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:60:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Typo3DbBackend\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:6:{s:10:\"dataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:12:\"cacheService\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:12:\"cacheManager\";s:33:\"TYPO3\\CMS\\Core\\Cache\\CacheManager\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";s:11:\"queryParser\";s:64:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Typo3DbQueryParser\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(20,'d3b9a967a6af09d391d44dc0c1d5c4ff',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:18:\"injectCacheManager\";s:33:\"TYPO3\\CMS\\Core\\Cache\\CacheManager\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(21,'29afe09069975b1208d85be2e28fe9e7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:64:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Typo3DbQueryParser\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:3:{s:10:\"dataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:12:\"cacheManager\";s:33:\"TYPO3\\CMS\\Core\\Cache\\CacheManager\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(22,'81de039aca085362d0579722eb57e000',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Mvc\\RequestHandlerResolver\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:3:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(23,'1a281c1a4f3a0a8df38130ed92e539a8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\FrontendRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:6:{s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:16:\"extensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:10:\"dispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:14:\"requestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(24,'161ec4a31f0f6bbc932fcc1ae6d48887',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(25,'3ed752e7ea60eee5026a21c8b9990a63',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"objectManager\";s:10:\"dependency\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:20:\"signalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(26,'97da3abbad45298c6665a64c93a84160',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:16:\"extensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(27,'a4a0eb9689419bdf7e2be55e876763a2',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\BackendRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:10:\"dispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:14:\"requestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(28,'8b1d5067ef201f9397a919b581c2febb',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:10:\"dispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:14:\"requestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestBuilder\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(29,'a85a0e954caaa9232e9c899c517e8c23',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:14:\"commandManager\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\CommandManager\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(30,'73785a4df7cf6265f746a280a022f98d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\CommandManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(31,'02602cfbe105200536e162488f3b34d8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:6:{s:23:\"ajaxWidgetContextHolder\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:14:\"requestBuilder\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestBuilder\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:10:\"dispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(32,'17dd4738af3c1aa88da935f7c7461a76',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(33,'38da5993ff181e4a0878ed613360749b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:29:\"injectAjaxWidgetContextHolder\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:16:\"extensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(34,'ffab3d90bc879cb5f9bc7dad6eeca0fe',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:33:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Request\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:3:{s:11:\"hashService\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(35,'b50521e5e180c67942dcfb9564f33b28',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(36,'72a02a2afa1e8aed876e2ed7fab01e20',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:53:\"TYPO3\\CMS\\Extbase\\Security\\Channel\\RequestHashService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:11:\"hashService\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(37,'65aa369e3ef7755812afb4329fd61d4d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:34:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Response\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(38,'e5806081e6130d8fa5c15c092cec8b70',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Beuser\\Controller\\BackendUserController\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:27:\"injectFlashMessageContainer\";s:54:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\FlashMessageContainer\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:10:{s:24:\"moduleDataStorageService\";s:49:\"TYPO3\\CMS\\Beuser\\Service\\ModuleDataStorageService\";s:21:\"backendUserRepository\";s:56:\"TYPO3\\CMS\\Beuser\\Domain\\Repository\\BackendUserRepository\";s:26:\"backendUserGroupRepository\";s:61:\"TYPO3\\CMS\\Beuser\\Domain\\Repository\\BackendUserGroupRepository\";s:28:\"backendUserSessionRepository\";s:63:\"TYPO3\\CMS\\Beuser\\Domain\\Repository\\BackendUserSessionRepository\";s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:12:\"cacheService\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:38:\"mvcPropertyMappingConfigurationService\";s:71:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfigurationService\";s:20:\"signalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:24:\"deprecatedPropertyMapper\";s:33:\"TYPO3\\CMS\\Extbase\\Property\\Mapper\";s:17:\"validatorResolver\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(39,'52b735058f3ab10579fbc382b26f85ac',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\Arguments\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(40,'ffb3215815a9810f8d66a8304cf46b41',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:54:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\FlashMessageContainer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(41,'5575eec6ba16512f916d9ae9c2b3c90f',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Beuser\\Service\\ModuleDataStorageService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(42,'b0da8218cb5e569f815f5f714722f235',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Beuser\\Domain\\Repository\\BackendUserRepository\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"objectManager\";s:10:\"dependency\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:11:\"identityMap\";s:49:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\IdentityMap\";s:7:\"backend\";s:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\BackendInterface\";s:7:\"session\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:18:\"persistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(43,'ee36b5aa7e756497c1be0353ea554c27',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Typo3QuerySettings\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(44,'a9b7eb2e3cc626abbb9358e57a920c25',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:61:\"TYPO3\\CMS\\Beuser\\Domain\\Repository\\BackendUserGroupRepository\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"objectManager\";s:10:\"dependency\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:11:\"identityMap\";s:49:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\IdentityMap\";s:7:\"backend\";s:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\BackendInterface\";s:7:\"session\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:18:\"persistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(45,'58ce14d1a69d21a832187458898a7411',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:63:\"TYPO3\\CMS\\Beuser\\Domain\\Repository\\BackendUserSessionRepository\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"objectManager\";s:10:\"dependency\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:11:\"identityMap\";s:49:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\IdentityMap\";s:7:\"backend\";s:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\BackendInterface\";s:7:\"session\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:18:\"persistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(46,'71dc71d2ae1928473ef30d8028432258',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:71:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfigurationService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:11:\"hashService\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(47,'ca1298c72d5d4795cbe3c614a0aeea8f',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:33:\"TYPO3\\CMS\\Extbase\\Property\\Mapper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:5:{s:17:\"validatorResolver\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:18:\"persistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:12:\"queryFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactoryInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(48,'c3680131daaff065daf3097af71f1980',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(49,'c92e8f46e5815b382c75ca23b75dab00',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\ModuleData\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:6:\"demand\";s:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(50,'8290d4bcb4502dd5e3629b5128dbc00b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(51,'4162aee1fc2f8a1059d3c19ec4daa1c7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Routing\\UriBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:3:{s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:16:\"extensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:18:\"environmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(52,'613780bf5183d0505e4b719eda3b6e79',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\Argument\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:1:{s:4:\"name\";s:4:\"name\";}i:1;a:1:{s:4:\"name\";s:8:\"dataType\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:25:\"injectTypeHandlingService\";s:45:\"TYPO3\\CMS\\Extbase\\Service\\TypeHandlingService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:7:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:12:\"queryFactory\";s:50:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactory\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:24:\"deprecatedPropertyMapper\";s:33:\"TYPO3\\CMS\\Extbase\\Property\\Mapper\";s:14:\"propertyMapper\";s:41:\"TYPO3\\CMS\\Extbase\\Property\\PropertyMapper\";s:28:\"propertyMappingConfiguration\";s:64:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfiguration\";s:18:\"persistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(53,'513918375379c108c2e5ced6ccfaff81',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Reflection\\ClassSchema\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:9:\"className\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:19:\"typeHandlingService\";s:45:\"TYPO3\\CMS\\Extbase\\Service\\TypeHandlingService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(54,'8e8a46863e8042a6325d3c0f542cb4e4',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Extbase\\Service\\TypeHandlingService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(55,'09c493dcbedc19fa96c15608df195b4d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Extbase\\Property\\PropertyMapper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:20:\"configurationBuilder\";s:62:\"TYPO3\\CMS\\Extbase\\Property\\PropertyMappingConfigurationBuilder\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(56,'39cc27b39b2679de6e35ce82e9cc4939',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:62:\"TYPO3\\CMS\\Extbase\\Property\\PropertyMappingConfigurationBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(57,'0ff53cdb28788cb85d1ea524f7005c17',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:55:\"TYPO3\\CMS\\Extbase\\Property\\TypeConverter\\ArrayConverter\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(58,'bbb14cbc4733781c6f2dbdea92473a9c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:57:\"TYPO3\\CMS\\Extbase\\Property\\TypeConverter\\BooleanConverter\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(59,'2d2f2bbfb34bbaf8127ad62f548b2e0e',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:58:\"TYPO3\\CMS\\Extbase\\Property\\TypeConverter\\DateTimeConverter\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(60,'79aa55a26c033fbbdfaffe904ed849b4',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:55:\"TYPO3\\CMS\\Extbase\\Property\\TypeConverter\\FloatConverter\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(61,'43f52d22953f3eb34e04aee7de9484d0',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:57:\"TYPO3\\CMS\\Extbase\\Property\\TypeConverter\\IntegerConverter\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(62,'2337d955f2e50cae58bbd071d5a12aed',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:63:\"TYPO3\\CMS\\Extbase\\Property\\TypeConverter\\ObjectStorageConverter\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(63,'cd13077ce43b6ae367b15f5bc2135831',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:66:\"TYPO3\\CMS\\Extbase\\Property\\TypeConverter\\PersistentObjectConverter\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:18:\"persistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:15:\"objectContainer\";s:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\Container\";s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(64,'725d2a8c5b32bd06d508046d308ed5fb',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Extbase\\Property\\TypeConverter\\ObjectConverter\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:3:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:15:\"objectContainer\";s:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\Container\";s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(65,'5b61e685a0920f2b7e5380d37a0990ac',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Extbase\\Property\\TypeConverter\\StringConverter\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(66,'1b2ba5ee1d485bf9c6a0eb2db39c6ea5',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:58:\"TYPO3\\CMS\\Extbase\\Property\\TypeConverter\\CoreTypeConverter\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(67,'4b7994772c63255323d5c498c1e4c860',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:54:\"TYPO3\\CMS\\Extbase\\Property\\TypeConverter\\FileConverter\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:11:\"fileFactory\";s:39:\"TYPO3\\CMS\\Core\\Resource\\ResourceFactory\";s:13:\"objectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(68,'2c5653fb2d511e56d4bf52f4ecbc9f51',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:39:\"TYPO3\\CMS\\Core\\Resource\\ResourceFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:3:{s:4:\"name\";s:20:\"signalSlotDispatcher\";s:10:\"dependency\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(69,'15b6ef04c0e8b6520bc77c173e85952c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:63:\"TYPO3\\CMS\\Extbase\\Property\\TypeConverter\\FileReferenceConverter\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:11:\"fileFactory\";s:39:\"TYPO3\\CMS\\Core\\Resource\\ResourceFactory\";s:13:\"objectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(70,'a0dcb23619784a7eb28eea48c8e50382',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:75:\"TYPO3\\CMS\\Extbase\\Property\\TypeConverter\\FolderBasedFileCollectionConverter\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:11:\"fileFactory\";s:39:\"TYPO3\\CMS\\Core\\Resource\\ResourceFactory\";s:13:\"objectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(71,'886437d3707b2ca8b68034c9687deffd',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:70:\"TYPO3\\CMS\\Extbase\\Property\\TypeConverter\\StaticFileCollectionConverter\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:11:\"fileFactory\";s:39:\"TYPO3\\CMS\\Core\\Resource\\ResourceFactory\";s:13:\"objectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(72,'977a9c642532a792319b0855c6ac5df8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Extbase\\Property\\TypeConverter\\FolderConverter\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:11:\"fileFactory\";s:39:\"TYPO3\\CMS\\Core\\Resource\\ResourceFactory\";s:13:\"objectManager\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(73,'661f62f65dfc7bfaa09bb42ba27217ae',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:64:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfiguration\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(74,'e54707c20e36cdefdc14eb02af2f7960',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"TYPO3\\CMS\\Extbase\\Validation\\Validator\\ConjunctionValidator\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:7:\"options\";s:12:\"defaultValue\";a:0:{}}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(75,'9b4409b236b9f5c84e02e1f1c77ba90a',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:61:\"TYPO3\\CMS\\Extbase\\Validation\\Validator\\GenericObjectValidator\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:7:\"options\";s:12:\"defaultValue\";a:0:{}}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(76,'3d89dd83dc3971a286ee5fc38f9be1fc',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(77,'ea25603d9243b233306d4e783571f117',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:58:\"TYPO3\\CMS\\Extbase\\Validation\\Validator\\CollectionValidator\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:7:\"options\";s:12:\"defaultValue\";a:0:{}}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:17:\"validatorResolver\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(78,'6c06740645171b100a0605c1774e691c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\ControllerContext\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:3:{s:19:\"flashMessageService\";s:44:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessageService\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:16:\"extensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(79,'fcd3672a290f64f6875bb8d84ef8362b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessageService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(80,'b7435caf112d881773a587972170ccea',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:33:\"TYPO3\\CMS\\Fluid\\View\\TemplateView\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:22:\"injectTemplateCompiler\";s:46:\"TYPO3\\CMS\\Fluid\\Core\\Compiler\\TemplateCompiler\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:14:\"templateParser\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\TemplateParser\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(81,'3316fa0a4297a6ddcca7021a1565a7e9',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\TemplateParser\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(82,'e8d805b35474fd740277e82b2633dfdc',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\Core\\Rendering\\RenderingContext\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:31:\"injectTemplateVariableContainer\";s:57:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TemplateVariableContainer\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:27:\"viewHelperVariableContainer\";s:59:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\ViewHelperVariableContainer\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(83,'6e9736d7b31f65e8bab9afe208da72f5',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:57:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TemplateVariableContainer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"variableArray\";s:12:\"defaultValue\";a:0:{}}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(84,'a640fdb9512138cae8d3d392619d9034',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\ViewHelperVariableContainer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(85,'5ed31dbb2262e355409980a4c85adca5',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Fluid\\Core\\Compiler\\TemplateCompiler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(86,'0c9864d50540c5c98ef6e9b2dd7e2762',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Query\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:4:\"type\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:10:\"dataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:18:\"persistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";s:10:\"qomFactory\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(87,'48f018e2873c2af1edd116918ebb6f2c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMap\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:4:{i:0;a:1:{s:4:\"name\";s:9:\"className\";}i:1;a:1:{s:4:\"name\";s:9:\"tableName\";}i:2;a:2:{s:4:\"name\";s:10:\"recordType\";s:12:\"defaultValue\";N;}i:3;a:2:{s:4:\"name\";s:10:\"subclasses\";s:12:\"defaultValue\";a:0:{}}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(88,'9d8fa21d3f4c3a4f8c86686a248c4e46',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:1:{s:4:\"name\";s:10:\"columnName\";}i:1;a:1:{s:4:\"name\";s:12:\"propertyName\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(89,'eaa726cb847b952868ce51ad1debc96a',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\Selector\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:1:{s:4:\"name\";s:12:\"selectorName\";}i:1;a:1:{s:4:\"name\";s:12:\"nodeTypeName\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(90,'7c21c2d2a455b835f75713bb67fdb586',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\PropertyValue\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:1:{s:4:\"name\";s:12:\"propertyName\";}i:1;a:2:{s:4:\"name\";s:12:\"selectorName\";s:12:\"defaultValue\";s:0:\"\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(91,'22e28d47dccc46a73e42571e1c148930',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\Comparison\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:3:{i:0;a:2:{s:4:\"name\";s:8:\"operand1\";s:10:\"dependency\";s:64:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\PropertyValueInterface\";}i:1;a:1:{s:4:\"name\";s:8:\"operator\";}i:2;a:1:{s:4:\"name\";s:8:\"operand2\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(92,'6a53dafc39e8ae9870a1dc56f0f3f129',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryResult\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:5:\"query\";s:10:\"dependency\";s:44:\"TYPO3\\CMS\\Extbase\\Persistence\\QueryInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:10:\"dataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:18:\"persistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(93,'82775a44b14c5ee1f99fb06534415b03',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\Configuration\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(94,'f542e57a147c74616c2c14ae45a7da4e',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\Interceptor\\Escape\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(95,'434532454ee301095ce48df889c5685c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\ParsingState\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:17:\"variableContainer\";s:57:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TemplateVariableContainer\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(96,'78b1b7823d2022e2377301c0f55ac4e6',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\RootNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(97,'630b0da604b2c9cabe61e71b441dd0e2',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\TextNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:4:\"text\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(98,'0feaa6ecc8d3d05a79d13ef36e099662',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\LayoutViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(99,'4a3a325facbf7a9fc8d188cb22d15301',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:53:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\ViewHelperNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:2:{s:4:\"name\";s:10:\"viewHelper\";s:10:\"dependency\";s:50:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\AbstractViewHelper\";}i:1;a:1:{s:4:\"name\";s:9:\"arguments\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(100,'fdd3ab12237a39824038609b9791fa1e',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\SectionViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(101,'235cd06e9b303e4891c631093a0449cc',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Beuser\\ViewHelpers\\SpriteManagerIconViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(102,'3460f0111910bdbec763a839d29eaf53',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\TranslateViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(103,'236129025489a1935e4a28fee44b4cc6',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\CommentViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(104,'1fb2371d594668a70e77b8c6ad79fab3',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:57:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\ObjectAccessorNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:10:\"objectPath\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(105,'7a6761aed6bbdcf2b0f612bc11c1217c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\IfViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(106,'6d9b313bbdc9df91dd08b4f07d2b3a13',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Beuser\\ViewHelpers\\SectionViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(107,'c2e9ae889aae6db5bc680e826e21142d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ForViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(108,'3a4cfbd9a9d33ba0ada3c8848d08e7f2',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\ArrayNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:13:\"internalArray\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(109,'4dbded97c05bcb5013605f4afc61abb0',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Link\\ActionViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:3:\"tag\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TagBuilder\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(110,'ff9b48c897971beddd71034528f6f90e',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TagBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:2:{s:4:\"name\";s:7:\"tagName\";s:12:\"defaultValue\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:10:\"tagContent\";s:12:\"defaultValue\";s:0:\"\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(111,'c7cb88ec1a57cdfb6bb3a8518f770ffe',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:61:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\HtmlspecialcharsViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(112,'1e49baaf286b96258526f8e1f83dc0cb',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:58:\"TYPO3\\CMS\\Beuser\\ViewHelpers\\SpriteIconForRecordViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(113,'733e88a3a2fbed7576776da5eb3cbb3c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\FormViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:8:{s:18:\"requestHashService\";s:53:\"TYPO3\\CMS\\Extbase\\Security\\Channel\\RequestHashService\";s:11:\"hashService\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";s:38:\"mvcPropertyMappingConfigurationService\";s:71:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfigurationService\";s:16:\"extensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:18:\"persistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";s:3:\"tag\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TagBuilder\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(114,'488aeda6f2ec8e2be474f511d54b0a89',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Form\\SubmitViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:18:\"persistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";s:3:\"tag\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TagBuilder\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(115,'17466a85af9a994978ee0405320a798b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\RenderViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(116,'5394aed9549d0cd47a0b4aa0679efbf8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\CountViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(117,'232c19c4ec41c1994aa808ba8c0e088f',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ThenViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(118,'d76f2cedf78de44bae0c0c251240b003',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\Widget\\PaginateViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:29:\"injectAjaxWidgetContextHolder\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:10:\"controller\";s:67:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\Widget\\Controller\\PaginateController\";s:16:\"extensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(119,'c7a13870d733cbf6042128ee54474587',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetContext\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(120,'7a36c32747fd9cb163be34967871cb3e',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:67:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\Widget\\Controller\\PaginateController\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:27:\"injectFlashMessageContainer\";s:54:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\FlashMessageContainer\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:6:{s:17:\"reflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:12:\"cacheService\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:38:\"mvcPropertyMappingConfigurationService\";s:71:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfigurationService\";s:20:\"signalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:24:\"deprecatedPropertyMapper\";s:33:\"TYPO3\\CMS\\Extbase\\Property\\Mapper\";s:17:\"validatorResolver\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(121,'d1627dc87083dc420614aa04dcfcf5cc',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ElseViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(122,'cf83c38ca35ec2b39e3840965ad2006a',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Uri\\ResourceViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(123,'1c90ee2c0b2d48a5cd01cda6865199d8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\ContainerViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(124,'7f788fbe440ec3552652aad308a801f2',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\Buttons\\CshViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(125,'ab638d5d5ee684a1cacceb1a3e1fa6a3',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:57:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\Menus\\ActionMenuViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:3:\"tag\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TagBuilder\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(126,'521ddad88a142407206aedad209ebff6',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:61:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\Menus\\ActionMenuItemViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:3:\"tag\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TagBuilder\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(127,'87aeec6ec0e34658755728488d287794',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:57:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\Buttons\\ShortcutViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(128,'0a2c329eb2c8346be16fcb86e5609437',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\FlashMessagesViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:2:{s:3:\"tag\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TagBuilder\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(129,'affa711f8586606a74d534366d590b82',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Form\\TextfieldViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:18:\"persistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";s:3:\"tag\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TagBuilder\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(130,'d00bbb28dacf4deb71fa1cf5e77ebdd1',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Form\\SelectViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:4:{s:20:\"configurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:18:\"persistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";s:3:\"tag\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TagBuilder\";s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(131,'2d1a5f6810b4104230e198b0f5c4ea77',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(132,'d2e4e9c0a81bf06ab0c97949d41a8cfc',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Beuser\\ViewHelpers\\IssueCommandViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(133,'95183b8c9193f428e43d78a6388ccae5',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Beuser\\ViewHelpers\\RemoveUserViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(134,'5e5f68dee1545c60c700b88060f8de73',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Beuser\\ViewHelpers\\SwitchUserViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(135,'bf66f0fcc76ef31fab03f02f04d710a2',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\DateViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(136,'0d117d62cabc9997e0760b23d053b5e1',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Backend\\Security\\CategoryPermissionsAspect\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:25:\"backendUserAuthentication\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}');
/*!40000 ALTER TABLE `cf_extbase_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object_tags`
--

DROP TABLE IF EXISTS `cf_extbase_object_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object_tags`
--

LOCK TABLES `cf_extbase_object_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection`
--

DROP TABLE IF EXISTS `cf_extbase_reflection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection`
--

LOCK TABLES `cf_extbase_reflection` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection` DISABLE KEYS */;
INSERT INTO `cf_extbase_reflection` VALUES (1,'ReflectionData_Beuser',2145909600,'a:8:{s:19:\"reflectedClassNames\";a:3:{s:41:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser\";i:1430829887;s:46:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup\";i:1430829887;s:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\";i:1430829887;}s:18:\"classPropertyNames\";a:3:{s:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\";a:10:{i:0;s:8:\"userName\";i:1;s:8:\"userType\";i:2;s:6:\"status\";i:3;s:6:\"logins\";i:4;s:16:\"backendUserGroup\";i:5;s:3:\"uid\";i:6;s:13:\"_localizedUid\";i:7;s:12:\"_languageUid\";i:8;s:13:\"_versionedUid\";i:9;s:3:\"pid\";}s:46:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup\";a:7:{i:0;s:5:\"title\";i:1;s:9:\"subGroups\";i:2;s:3:\"uid\";i:3;s:13:\"_localizedUid\";i:4;s:12:\"_languageUid\";i:5;s:13:\"_versionedUid\";i:6;s:3:\"pid\";}s:41:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser\";a:18:{i:0;s:16:\"allowedLanguages\";i:1;s:13:\"dbMountPoints\";i:2;s:15:\"fileMountPoints\";i:3;s:17:\"backendUserGroups\";i:4;s:8:\"userName\";i:5;s:15:\"isAdministrator\";i:6;s:10:\"isDisabled\";i:7;s:16:\"startDateAndTime\";i:8;s:14:\"endDateAndTime\";i:9;s:5:\"email\";i:10;s:8:\"realName\";i:11;s:20:\"lastLoginDateAndTime\";i:12;s:16:\"ipLockIsDisabled\";i:13;s:3:\"uid\";i:14;s:13:\"_localizedUid\";i:15;s:12:\"_languageUid\";i:16;s:13:\"_versionedUid\";i:17;s:3:\"pid\";}}s:15:\"classTagsValues\";a:0:{}s:16:\"methodTagsValues\";a:28:{s:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\";a:29:{s:11:\"setUserName\";a:2:{s:5:\"param\";a:1:{i:0;s:16:\"string $userName\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:11:\"getUserName\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:11:\"setUserType\";a:2:{s:5:\"param\";a:1:{i:0;s:17:\"integer $userType\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:11:\"getUserType\";a:1:{s:6:\"return\";a:1:{i:0;s:7:\"integer\";}}s:9:\"setStatus\";a:2:{s:5:\"param\";a:1:{i:0;s:15:\"integer $status\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:9:\"getStatus\";a:1:{s:6:\"return\";a:1:{i:0;s:7:\"integer\";}}s:9:\"setLogins\";a:2:{s:5:\"param\";a:1:{i:0;s:15:\"integer $logins\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:9:\"getLogins\";a:1:{s:6:\"return\";a:1:{i:0;s:7:\"integer\";}}s:19:\"setBackendUserGroup\";a:1:{s:5:\"param\";a:1:{i:0;s:34:\"BackendUserGroup $backendUserGroup\";}}s:19:\"getBackendUserGroup\";a:1:{s:6:\"return\";a:1:{i:0;s:16:\"BackendUserGroup\";}}s:8:\"__wakeup\";a:1:{s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:6:\"getUid\";a:1:{s:6:\"return\";a:1:{i:0;s:40:\"integer the uid or NULL if none set yet.\";}}s:6:\"setPid\";a:2:{s:5:\"param\";a:1:{i:0;s:17:\"integer|NULL $pid\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:6:\"getPid\";a:1:{s:6:\"return\";a:1:{i:0;s:40:\"integer The pid or NULL if none set yet.\";}}s:12:\"_setProperty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"string $propertyName\";i:1;s:20:\"mixed $propertyValue\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:12:\"_getProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:23:\"mixed The propertyValue\";}}s:14:\"_getProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:20:\"array The properties\";}}s:12:\"_hasProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:101:\"boolean TRUE bool true if the property exists, FALSE if it doesn\'t exist or NULL in case of an error.\";}}s:6:\"_isNew\";a:1:{s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:19:\"_memorizeCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omitted all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:27:\"_memorizePropertyCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omittet all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:19:\"_getCleanProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:5:\"array\";}}s:17:\"_getCleanProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:62:\"string $propertyName The name of the property to be memorized.\";}s:6:\"return\";a:1:{i:0;s:38:\"mixed The clean property value or NULL\";}}s:8:\"_isDirty\";a:3:{s:5:\"param\";a:1:{i:0;s:87:\"string $propertyName An optional name of a property to be checked if its value is dirty\";}s:6:\"throws\";a:1:{i:0;s:66:\"\\TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Exception\\TooDirtyException\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:15:\"isPropertyDirty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"mixed $previousValue\";i:1;s:19:\"mixed $currentValue\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:8:\"_isClone\";a:1:{s:6:\"return\";a:1:{i:0;s:42:\"boolean TRUE if the object has been cloned\";}}s:9:\"_setClone\";a:1:{s:5:\"param\";a:1:{i:0;s:14:\"boolean $clone\";}}s:7:\"__clone\";a:1:{s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:10:\"__toString\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}}s:51:\"TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\";a:10:{s:6:\"setPid\";a:2:{s:5:\"param\";a:1:{i:0;s:17:\"integer|NULL $pid\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:12:\"_setProperty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"string $propertyName\";i:1;s:20:\"mixed $propertyValue\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:12:\"_getProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:23:\"mixed The propertyValue\";}}s:12:\"_hasProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:101:\"boolean TRUE bool true if the property exists, FALSE if it doesn\'t exist or NULL in case of an error.\";}}s:19:\"_memorizeCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omitted all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:27:\"_memorizePropertyCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omittet all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:17:\"_getCleanProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:62:\"string $propertyName The name of the property to be memorized.\";}s:6:\"return\";a:1:{i:0;s:38:\"mixed The clean property value or NULL\";}}s:8:\"_isDirty\";a:3:{s:5:\"param\";a:1:{i:0;s:87:\"string $propertyName An optional name of a property to be checked if its value is dirty\";}s:6:\"throws\";a:1:{i:0;s:66:\"\\TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Exception\\TooDirtyException\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:15:\"isPropertyDirty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"mixed $previousValue\";i:1;s:19:\"mixed $currentValue\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:9:\"_setClone\";a:1:{s:5:\"param\";a:1:{i:0;s:14:\"boolean $clone\";}}}s:49:\"TYPO3\\CMS\\Beuser\\Controller\\BackendUserController\";a:4:{s:22:\"addToCompareListAction\";a:2:{s:5:\"param\";a:1:{i:0;s:12:\"integer $uid\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:27:\"removeFromCompareListAction\";a:2:{s:5:\"param\";a:1:{i:0;s:12:\"integer $uid\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:33:\"terminateBackendUserSessionAction\";a:2:{s:5:\"param\";a:2:{i:0;s:55:\"\\TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser $backendUser\";i:1;s:17:\"string $sessionId\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:11:\"indexAction\";a:2:{s:5:\"param\";a:1:{i:0;s:45:\"\\TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand $demand\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}}s:46:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup\";a:23:{s:8:\"setTitle\";a:1:{s:5:\"param\";a:1:{i:0;s:13:\"string $title\";}}s:8:\"getTitle\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:12:\"setSubGroups\";a:1:{s:5:\"param\";a:1:{i:0;s:55:\"\\TYPO3\\CMS\\Extbase\\Persistence\\ObjectStorage $subGroups\";}}s:12:\"getSubGroups\";a:1:{s:6:\"return\";a:1:{i:0;s:44:\"\\TYPO3\\CMS\\Extbase\\Persistence\\ObjectStorage\";}}s:8:\"__wakeup\";a:1:{s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:6:\"getUid\";a:1:{s:6:\"return\";a:1:{i:0;s:40:\"integer the uid or NULL if none set yet.\";}}s:6:\"setPid\";a:2:{s:5:\"param\";a:1:{i:0;s:17:\"integer|NULL $pid\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:6:\"getPid\";a:1:{s:6:\"return\";a:1:{i:0;s:40:\"integer The pid or NULL if none set yet.\";}}s:12:\"_setProperty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"string $propertyName\";i:1;s:20:\"mixed $propertyValue\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:12:\"_getProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:23:\"mixed The propertyValue\";}}s:14:\"_getProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:20:\"array The properties\";}}s:12:\"_hasProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:101:\"boolean TRUE bool true if the property exists, FALSE if it doesn\'t exist or NULL in case of an error.\";}}s:6:\"_isNew\";a:1:{s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:19:\"_memorizeCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omitted all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:27:\"_memorizePropertyCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omittet all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:19:\"_getCleanProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:5:\"array\";}}s:17:\"_getCleanProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:62:\"string $propertyName The name of the property to be memorized.\";}s:6:\"return\";a:1:{i:0;s:38:\"mixed The clean property value or NULL\";}}s:8:\"_isDirty\";a:3:{s:5:\"param\";a:1:{i:0;s:87:\"string $propertyName An optional name of a property to be checked if its value is dirty\";}s:6:\"throws\";a:1:{i:0;s:66:\"\\TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Exception\\TooDirtyException\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:15:\"isPropertyDirty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"mixed $previousValue\";i:1;s:19:\"mixed $currentValue\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:8:\"_isClone\";a:1:{s:6:\"return\";a:1:{i:0;s:42:\"boolean TRUE if the object has been cloned\";}}s:9:\"_setClone\";a:1:{s:5:\"param\";a:1:{i:0;s:14:\"boolean $clone\";}}s:7:\"__clone\";a:1:{s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:10:\"__toString\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}}s:41:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser\";a:49:{s:19:\"setAllowedLanguages\";a:2:{s:5:\"param\";a:1:{i:0;s:24:\"string $allowedLanguages\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:19:\"getAllowedLanguages\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:16:\"setDbMountPoints\";a:2:{s:5:\"param\";a:1:{i:0;s:6:\"string\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:16:\"getDbMountPoints\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:18:\"setFileMountPoints\";a:2:{s:5:\"param\";a:1:{i:0;s:23:\"string $fileMountPoints\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:18:\"getFileMountPoints\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:8:\"isActive\";a:1:{s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:20:\"setBackendUserGroups\";a:1:{s:5:\"param\";a:1:{i:0;s:63:\"\\TYPO3\\CMS\\Extbase\\Persistence\\ObjectStorage $backendUserGroups\";}}s:20:\"getBackendUserGroups\";a:1:{s:6:\"return\";a:1:{i:0;s:44:\"\\TYPO3\\CMS\\Extbase\\Persistence\\ObjectStorage\";}}s:11:\"getUserName\";a:1:{s:6:\"return\";a:1:{i:0;s:39:\"string the user name, will not be empty\";}}s:11:\"setUserName\";a:2:{s:5:\"param\";a:1:{i:0;s:56:\"string $userName the user name to set, must not be empty\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:18:\"getIsAdministrator\";a:1:{s:6:\"return\";a:1:{i:0;s:45:\"boolean whether this user is an administrator\";}}s:18:\"setIsAdministrator\";a:2:{s:5:\"param\";a:1:{i:0;s:69:\"boolean $isAdministrator whether this user should be an administrator\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:13:\"getIsDisabled\";a:1:{s:6:\"return\";a:1:{i:0;s:37:\"boolean whether this user is disabled\";}}s:13:\"setIsDisabled\";a:2:{s:5:\"param\";a:1:{i:0;s:49:\"boolean $isDisabled whether this user is disabled\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:19:\"getStartDateAndTime\";a:1:{s:6:\"return\";a:1:{i:0;s:38:\"\\DateTime|NULL the start date and time\";}}s:19:\"setStartDateAndTime\";a:2:{s:5:\"param\";a:1:{i:0;s:51:\"\\DateTime|NULL $dateAndTime the start date and time\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:17:\"getEndDateAndTime\";a:1:{s:6:\"return\";a:1:{i:0;s:36:\"\\DateTime|NULL the end date and time\";}}s:17:\"setEndDateAndTime\";a:2:{s:5:\"param\";a:1:{i:0;s:49:\"\\DateTime|NULL $dateAndTime the end date and time\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:8:\"getEmail\";a:1:{s:6:\"return\";a:1:{i:0;s:41:\"string the e-mail address, might be empty\";}}s:8:\"setEmail\";a:2:{s:5:\"param\";a:1:{i:0;s:46:\"string $email the e-mail address, may be empty\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:11:\"getRealName\";a:1:{s:6:\"return\";a:1:{i:0;s:36:\"string the real name. might be empty\";}}s:11:\"setRealName\";a:1:{s:5:\"param\";a:1:{i:0;s:48:\"string $name the user\'s real name, may be empty.\";}}s:11:\"isActivated\";a:1:{s:6:\"return\";a:1:{i:0;s:48:\"boolean whether this user is currently activated\";}}s:30:\"isActivatedViaStartDateAndTime\";a:1:{s:6:\"return\";a:1:{i:0;s:85:\"boolean whether this user is activated as far as the start date and time is concerned\";}}s:28:\"isActivatedViaEndDateAndTime\";a:1:{s:6:\"return\";a:1:{i:0;s:83:\"boolean whether this user is activated as far as the end date and time is concerned\";}}s:19:\"setIpLockIsDisabled\";a:2:{s:5:\"param\";a:1:{i:0;s:68:\"boolean $disableIpLock whether the IP lock for this user is disabled\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:19:\"getIpLockIsDisabled\";a:1:{s:6:\"return\";a:1:{i:0;s:53:\"boolean whether the IP lock for this user is disabled\";}}s:23:\"getLastLoginDateAndTime\";a:1:{s:6:\"return\";a:1:{i:0;s:105:\"\\DateTime|NULL this user\'s last login date and time, will be NULL if this user has never logged in before\";}}s:23:\"setLastLoginDateAndTime\";a:2:{s:5:\"param\";a:1:{i:0;s:64:\"\\DateTime|NULL $dateAndTime this user\'s last login date and time\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:8:\"__wakeup\";a:1:{s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:6:\"getUid\";a:1:{s:6:\"return\";a:1:{i:0;s:40:\"integer the uid or NULL if none set yet.\";}}s:6:\"setPid\";a:2:{s:5:\"param\";a:1:{i:0;s:17:\"integer|NULL $pid\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:6:\"getPid\";a:1:{s:6:\"return\";a:1:{i:0;s:40:\"integer The pid or NULL if none set yet.\";}}s:12:\"_setProperty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"string $propertyName\";i:1;s:20:\"mixed $propertyValue\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:12:\"_getProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:23:\"mixed The propertyValue\";}}s:14:\"_getProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:20:\"array The properties\";}}s:12:\"_hasProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:101:\"boolean TRUE bool true if the property exists, FALSE if it doesn\'t exist or NULL in case of an error.\";}}s:6:\"_isNew\";a:1:{s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:19:\"_memorizeCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omitted all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:27:\"_memorizePropertyCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omittet all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:19:\"_getCleanProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:5:\"array\";}}s:17:\"_getCleanProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:62:\"string $propertyName The name of the property to be memorized.\";}s:6:\"return\";a:1:{i:0;s:38:\"mixed The clean property value or NULL\";}}s:8:\"_isDirty\";a:3:{s:5:\"param\";a:1:{i:0;s:87:\"string $propertyName An optional name of a property to be checked if its value is dirty\";}s:6:\"throws\";a:1:{i:0;s:66:\"\\TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Exception\\TooDirtyException\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:15:\"isPropertyDirty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"mixed $previousValue\";i:1;s:19:\"mixed $currentValue\";}s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:8:\"_isClone\";a:1:{s:6:\"return\";a:1:{i:0;s:42:\"boolean TRUE if the object has been cloned\";}}s:9:\"_setClone\";a:1:{s:5:\"param\";a:1:{i:0;s:14:\"boolean $clone\";}}s:7:\"__clone\";a:1:{s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:10:\"__toString\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}}s:42:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\BackendUser\";a:6:{s:11:\"setUserName\";a:2:{s:5:\"param\";a:1:{i:0;s:56:\"string $userName the user name to set, must not be empty\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:18:\"setIsAdministrator\";a:2:{s:5:\"param\";a:1:{i:0;s:69:\"boolean $isAdministrator whether this user should be an administrator\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:13:\"setIsDisabled\";a:2:{s:5:\"param\";a:1:{i:0;s:49:\"boolean $isDisabled whether this user is disabled\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:8:\"setEmail\";a:2:{s:5:\"param\";a:1:{i:0;s:46:\"string $email the e-mail address, may be empty\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:11:\"setRealName\";a:1:{s:5:\"param\";a:1:{i:0;s:48:\"string $name the user\'s real name, may be empty.\";}}s:19:\"setIpLockIsDisabled\";a:2:{s:5:\"param\";a:1:{i:0;s:68:\"boolean $disableIpLock whether the IP lock for this user is disabled\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}}s:56:\"TYPO3\\CMS\\Beuser\\ViewHelpers\\SpriteManagerIconViewHelper\";a:1:{s:6:\"render\";a:2:{s:5:\"param\";a:2:{i:0;s:16:\"string $iconName\";i:1;s:14:\"array $options\";}s:6:\"return\";a:1:{i:0;s:6:\"string\";}}}s:40:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\IfViewHelper\";a:1:{s:6:\"render\";a:3:{s:5:\"param\";a:1:{i:0;s:40:\"boolean $condition View helper condition\";}s:6:\"return\";a:1:{i:0;s:26:\"string the rendered string\";}s:3:\"api\";a:0:{}}}s:46:\"TYPO3\\CMS\\Beuser\\ViewHelpers\\SectionViewHelper\";a:1:{s:6:\"render\";a:3:{s:5:\"param\";a:2:{i:0;s:13:\"string $title\";i:1;s:20:\"boolean $collapsible\";}s:6:\"return\";a:1:{i:0;s:6:\"string\";}s:3:\"see\";a:1:{i:0;s:19:\"template::section()\";}}}s:41:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ForViewHelper\";a:1:{s:6:\"render\";a:3:{s:5:\"param\";a:5:{i:0;s:86:\"array $each The array or \\TYPO3\\CMS\\Extbase\\Persistence\\ObjectStorage to iterated over\";i:1;s:45:\"string $as The name of the iteration variable\";i:2;s:67:\"string $key The name of the variable to store the current array key\";i:3;s:96:\"boolean $reverse If enabled, the iterator will start with the last element and proceed reversely\";i:4;s:120:\"string $iteration The name of the variable to store iteration information (index, cycle, isFirst, isLast, isEven, isOdd)\";}s:6:\"return\";a:1:{i:0;s:22:\"string Rendered string\";}s:3:\"api\";a:0:{}}}s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Link\\ActionViewHelper\";a:1:{s:6:\"render\";a:2:{s:5:\"param\";a:17:{i:0;s:28:\"string $action Target action\";i:1;s:26:\"array $arguments Arguments\";i:2;s:76:\"string $controller Target controller. If NULL current controllerName is used\";i:3;s:129:\"string $extensionName Target Extension Name (without \"tx_\" prefix and no underscores). If NULL the current extension name is used\";i:4;s:75:\"string $pluginName Target plugin. If empty, the current plugin name is used\";i:5;s:54:\"integer $pageUid target page. See TypoLink destination\";i:6;s:65:\"integer $pageType type of the target page. See typolink.parameter\";i:7;s:91:\"boolean $noCache set this to disable caching for the target page. You should not need this.\";i:8;s:113:\"boolean $noCacheHash set this to supress the cHash query parameter created by TypoLink. You should not need this.\";i:9;s:49:\"string $section the anchor to be added to the URI\";i:10;s:48:\"string $format The requested format, e.g. \".html\";i:11;s:153:\"boolean $linkAccessRestrictedPages If set, links pointing to access restricted pages will still link to the page even though the page cannot be accessed.\";i:12;s:112:\"array $additionalParams additional query parameters that won\'t be prefixed like $arguments (overrule $arguments)\";i:13;s:66:\"boolean $absolute If set, the URI of the rendered link is absolute\";i:14;s:84:\"boolean $addQueryString If set, the current query parameters will be kept in the URI\";i:15;s:119:\"array $argumentsToBeExcludedFromQueryString arguments to be removed from the URI. Only active if $addQueryString = TRUE\";i:16;s:101:\"string $addQueryStringMethod Set which parameters will be kept. Only active if $addQueryString = TRUE\";}s:6:\"return\";a:1:{i:0;s:20:\"string Rendered link\";}}}s:58:\"TYPO3\\CMS\\Beuser\\ViewHelpers\\SpriteIconForRecordViewHelper\";a:1:{s:6:\"render\";a:3:{s:5:\"param\";a:2:{i:0;s:13:\"string $table\";i:1;s:14:\"object $object\";}s:6:\"return\";a:1:{i:0;s:6:\"string\";}s:3:\"see\";a:1:{i:0;s:76:\"\\TYPO3\\CMS\\Backend\\Utility\\IconUtility::getSpriteIconForRecord($table, $row)\";}}}s:42:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\FormViewHelper\";a:1:{s:6:\"render\";a:2:{s:5:\"param\";a:20:{i:0;s:28:\"string $action Target action\";i:1;s:26:\"array $arguments Arguments\";i:2;s:36:\"string $controller Target controller\";i:3;s:129:\"string $extensionName Target Extension Name (without \"tx_\" prefix and no underscores). If NULL the current extension name is used\";i:4;s:75:\"string $pluginName Target plugin. If empty, the current plugin name is used\";i:5;s:32:\"integer $pageUid Target page uid\";i:6;s:106:\"mixed $object Object to use for the form. Use in conjunction with the \"property\" attribute on the sub tags\";i:7;s:34:\"integer $pageType Target page type\";i:8;s:91:\"boolean $noCache set this to disable caching for the target page. You should not need this.\";i:9;s:113:\"boolean $noCacheHash set this to supress the cHash query parameter created by TypoLink. You should not need this.\";i:10;s:95:\"string $section The anchor to be added to the action URI (only active if $actionUri is not set)\";i:11;s:108:\"string $format The requested format (e.g. \".html\") of the target page (only active if $actionUri is not set)\";i:12;s:162:\"array $additionalParams additional action URI query parameters that won\'t be prefixed like $arguments (overrule $arguments) (only active if $actionUri is not set)\";i:13;s:99:\"boolean $absolute If set, an absolute action URI is rendered (only active if $actionUri is not set)\";i:14;s:130:\"boolean $addQueryString If set, the current query parameters will be kept in the action URI (only active if $actionUri is not set)\";i:15;s:152:\"array $argumentsToBeExcludedFromQueryString arguments to be removed from the action URI. Only active if $addQueryString = TRUE and $actionUri is not set\";i:16;s:140:\"string $fieldNamePrefix Prefix that will be added to all field names within this form. If not set the prefix will be tx_yourExtension_plugin\";i:17;s:81:\"string $actionUri can be used to overwrite the \"action\" attribute of the form tag\";i:18;s:172:\"string $objectName name of the object that is bound to this form. If this argument is not specified, the name attribute of this form is used to determine the FormObjectName\";i:19;s:28:\"string $hiddenFieldClassName\";}s:6:\"return\";a:1:{i:0;s:20:\"string rendered form\";}}}s:44:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\RenderViewHelper\";a:1:{s:6:\"render\";a:3:{s:5:\"param\";a:4:{i:0;s:179:\"string $section Name of section to render. If used in a layout, renders a section of the main content file. If used inside a standard template, renders a section of the same file.\";i:1;s:39:\"string $partial Reference to a partial.\";i:2;s:50:\"array $arguments Arguments to pass to the partial.\";i:3;s:136:\"boolean $optional Set to TRUE, to ignore unknown sections, so the definition of a section inside a template can be optional for a layout\";}s:6:\"return\";a:1:{i:0;s:6:\"string\";}s:3:\"api\";a:0:{}}}s:43:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\CountViewHelper\";a:1:{s:6:\"render\";a:4:{s:5:\"param\";a:1:{i:0;s:52:\"array $subject The array or \\Countable to be counted\";}s:6:\"return\";a:1:{i:0;s:30:\"integer The number of elements\";}s:6:\"throws\";a:1:{i:0;s:42:\"\\TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\Exception\";}s:3:\"api\";a:0:{}}}s:56:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\Widget\\PaginateViewHelper\";a:1:{s:6:\"render\";a:2:{s:5:\"param\";a:3:{i:0;s:60:\"\\TYPO3\\CMS\\Extbase\\Persistence\\QueryResultInterface $objects\";i:1;s:10:\"string $as\";i:2;s:20:\"array $configuration\";}s:6:\"return\";a:1:{i:0;s:6:\"string\";}}}s:50:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Uri\\ResourceViewHelper\";a:1:{s:6:\"render\";a:3:{s:5:\"param\";a:3:{i:0;s:108:\"string $path The path and filename of the resource (relative to Public resource directory of the extension).\";i:1;s:96:\"string $extensionName Target extension name. If not set, the current extension name will be used\";i:2;s:53:\"boolean $absolute If set, an absolute URI is rendered\";}s:6:\"return\";a:1:{i:0;s:30:\"string The URI to the resource\";}s:3:\"api\";a:0:{}}}s:50:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\ContainerViewHelper\";a:1:{s:6:\"render\";a:3:{s:5:\"param\";a:17:{i:0;s:103:\"string  $pageTitle title tag of the module. Not required by default, as BE modules are shown in a frame\";i:1;s:150:\"boolean $enableJumpToUrl If TRUE, includes \"jumpTpUrl\" javascript function required by ActionMenu. Defaults to TRUE, deprecated, as not needed anymore\";i:2;s:99:\"boolean $enableClickMenu If TRUE, loads clickmenu.js required by BE context menus. Defaults to TRUE\";i:3;s:84:\"boolean $loadPrototype specifies whether to load prototype library. Defaults to TRUE\";i:4;s:95:\"boolean $loadScriptaculous specifies whether to load scriptaculous libraries. Defaults to FALSE\";i:5;s:67:\"string  $scriptaculousModule additionales modules for scriptaculous\";i:6;s:77:\"boolean $loadExtJs specifies whether to load ExtJS library. Defaults to FALSE\";i:7;s:77:\"boolean $loadExtJsTheme whether to load ExtJS \"grey\" theme. Defaults to FALSE\";i:8;s:76:\"string  $extJsAdapter load alternative adapter (ext-base is default adapter)\";i:9;s:98:\"boolean $enableExtJsDebug if TRUE, debug version of ExtJS is loaded. Use this for development only\";i:10;s:82:\"string $addCssFile Custom CSS file to be loaded (deprecated, use $includeCssFiles)\";i:11;s:87:\"string $addJsFile Custom JavaScript file to be loaded (deprecated, use $includeJsFiles)\";i:12;s:69:\"boolean $loadJQuery whether to load jQuery library. Defaults to FALSE\";i:13;s:59:\"array $includeCssFiles List of custom CSS file to be loaded\";i:14;s:65:\"array $includeJsFiles List of custom JavaScript file to be loaded\";i:15;s:73:\"array $addJsInlineLabels Custom labels to add to JavaScript inline labels\";i:16;s:42:\"boolean $includeCsh flag for including CSH\";}s:6:\"return\";a:1:{i:0;s:6:\"string\";}s:3:\"see\";a:2:{i:0;s:44:\"\\TYPO3\\CMS\\Backend\\Template\\DocumentTemplate\";i:1;s:33:\"\\TYPO3\\CMS\\Core\\Page\\PageRenderer\";}}}s:52:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\Buttons\\CshViewHelper\";a:1:{s:6:\"render\";a:2:{s:5:\"param\";a:4:{i:0;s:96:\"string $table Table name (\'_MOD_\'+module name). If not set, the current module name will be used\";i:1;s:49:\"string $field Field name (CSH locallang main key)\";i:2;s:71:\"boolean $iconOnly If set, the full text will never be shown (only icon)\";i:3;s:99:\"string $styleAttributes Additional style-attribute content for wrapping table (full text mode only)\";}s:6:\"return\";a:1:{i:0;s:28:\"string the rendered CSH icon\";}}}s:57:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\Menus\\ActionMenuViewHelper\";a:1:{s:6:\"render\";a:2:{s:5:\"param\";a:1:{i:0;s:25:\"string $defaultController\";}s:6:\"return\";a:1:{i:0;s:6:\"string\";}}}s:61:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\Menus\\ActionMenuItemViewHelper\";a:1:{s:6:\"render\";a:3:{s:5:\"param\";a:4:{i:0;s:37:\"string $label label of the option tag\";i:1;s:71:\"string $controller controller to be associated with this ActionMenuItem\";i:2;s:67:\"string $action the action to be associated with this ActionMenuItem\";i:3;s:112:\"array $arguments additional controller arguments to be passed to the action when this ActionMenuItem is selected\";}s:6:\"return\";a:1:{i:0;s:30:\"string the rendered option tag\";}s:3:\"see\";a:1:{i:0;s:50:\"Tx_Fluid_ViewHelpers_Be_Menus_ActionMenuViewHelper\";}}}s:57:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\Buttons\\ShortcutViewHelper\";a:1:{s:6:\"render\";a:3:{s:5:\"param\";a:2:{i:0;s:120:\"array $getVars list of GET variables to store. By default the current id, module and all module arguments will be stored\";i:1;s:124:\"array $setVars list of SET[] variables to store. See template::makeShortcutIcon(). Normally won\'t be used by Extbase modules\";}s:6:\"return\";a:1:{i:0;s:35:\"string the rendered shortcut button\";}s:3:\"see\";a:1:{i:0;s:28:\"template::makeShortcutIcon()\";}}}s:51:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\FlashMessagesViewHelper\";a:1:{s:6:\"render\";a:4:{s:3:\"see\";a:1:{i:0;s:69:\"\\TYPO3\\CMS\\Frontend\\Controller\\TypoScriptFrontendController::no_cache\";}s:5:\"param\";a:1:{i:0;s:53:\"string $renderMode one of the RENDER_MODE_* constants\";}s:6:\"return\";a:1:{i:0;s:49:\"string rendered Flash Messages, if there are any.\";}s:3:\"api\";a:0:{}}}s:52:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Form\\TextfieldViewHelper\";a:1:{s:6:\"render\";a:3:{s:5:\"param\";a:2:{i:0;s:49:\"boolean $required If the field is required or not\";i:1;s:61:\"string $type The field type, e.g. \"text\", \"email\", \"url\" etc.\";}s:6:\"return\";a:1:{i:0;s:6:\"string\";}s:3:\"api\";a:0:{}}}s:51:\"TYPO3\\CMS\\Beuser\\ViewHelpers\\IssueCommandViewHelper\";a:1:{s:6:\"render\";a:3:{s:5:\"param\";a:2:{i:0;s:187:\"string $parameters Is a set of GET params to send to tce_db.php. Example: \"&cmd[tt_content][123][move]=456\" or \"&data[tt_content][123][hidden]=1&data[tt_content][123][title]=Hello%20World\";i:1;s:126:\"string $redirectUrl Redirect URL if any other that \\TYPO3\\CMS\\Core\\Utility\\GeneralUtility::getIndpEnv(\'REQUEST_URI\') is wished\";}s:6:\"return\";a:1:{i:0;s:37:\"string URL to tce_db.php + parameters\";}s:3:\"see\";a:2:{i:0;s:56:\"\\TYPO3\\CMS\\Backend\\Utility\\BackendUtility::editOnClick()\";i:1;s:24:\"template::issueCommand()\";}}}s:49:\"TYPO3\\CMS\\Beuser\\ViewHelpers\\SwitchUserViewHelper\";a:1:{s:6:\"render\";a:2:{s:5:\"param\";a:2:{i:0;s:102:\"\\TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser $backendUser Target backendUser to switch active session to\";i:1;s:86:\"boolean $emulate Return to current session or logout after target session termination?\";}s:6:\"return\";a:1:{i:0;s:6:\"string\";}}}s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\DateViewHelper\";a:1:{s:6:\"render\";a:4:{s:5:\"param\";a:2:{i:0;s:89:\"mixed $date either a DateTime object or a string that is accepted by DateTime constructor\";i:1;s:67:\"string $format Format String which is taken to format the Date/Time\";}s:6:\"return\";a:1:{i:0;s:21:\"string Formatted date\";}s:6:\"throws\";a:1:{i:0;s:42:\"\\TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\Exception\";}s:3:\"api\";a:0:{}}}s:61:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\HtmlspecialcharsViewHelper\";a:1:{s:6:\"render\";a:4:{s:5:\"param\";a:4:{i:0;s:30:\"string $value string to format\";i:1;s:96:\"boolean $keepQuotes if TRUE, single and double quotes won\'t be replaced (sets ENT_NOQUOTES flag)\";i:2;s:16:\"string $encoding\";i:3;s:109:\"boolean $doubleEncode If FALSE existing html entities won\'t be encoded, the default is to convert everything.\";}s:6:\"return\";a:1:{i:0;s:25:\"string the altered string\";}s:3:\"see\";a:1:{i:0;s:55:\"http://www.php.net/manual/function.htmlspecialchars.php\";}s:3:\"api\";a:0:{}}}}s:16:\"methodParameters\";a:35:{s:49:\"TYPO3\\CMS\\Beuser\\Controller\\BackendUserController\";a:8:{s:11:\"indexAction\";a:1:{s:6:\"demand\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";s:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\";s:12:\"defaultValue\";N;s:4:\"type\";s:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\";}}s:16:\"initializeAction\";a:0:{}s:12:\"onlineAction\";a:0:{}s:13:\"compareAction\";a:0:{}s:22:\"addToCompareListAction\";a:1:{s:3:\"uid\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"integer\";}}s:27:\"removeFromCompareListAction\";a:1:{s:3:\"uid\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"integer\";}}s:33:\"terminateBackendUserSessionAction\";a:2:{s:11:\"backendUser\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:0;s:5:\"class\";s:41:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser\";s:4:\"type\";s:41:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser\";}s:9:\"sessionId\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:11:\"errorAction\";a:0:{}}s:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\";a:15:{s:11:\"setUserName\";a:1:{s:8:\"userName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:11:\"setUserType\";a:1:{s:8:\"userType\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"integer\";}}s:9:\"setStatus\";a:1:{s:6:\"status\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"integer\";}}s:9:\"setLogins\";a:1:{s:6:\"logins\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"integer\";}}s:19:\"setBackendUserGroup\";a:1:{s:16:\"backendUserGroup\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:16:\"BackendUserGroup\";}}s:6:\"setPid\";a:1:{s:3:\"pid\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:12:\"integer|NULL\";}}s:12:\"_setProperty\";a:2:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:13:\"propertyValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:12:\"_getProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:12:\"_hasProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:19:\"_memorizeCleanState\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:27:\"_memorizePropertyCleanState\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:17:\"_getCleanProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:8:\"_isDirty\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:15:\"isPropertyDirty\";a:2:{s:13:\"previousValue\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}s:12:\"currentValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:9:\"_setClone\";a:1:{s:5:\"clone\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"boolean\";}}}s:46:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup\";a:12:{s:8:\"setTitle\";a:1:{s:5:\"title\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:12:\"setSubGroups\";a:1:{s:9:\"subGroups\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:43:\"TYPO3\\CMS\\Extbase\\Persistence\\ObjectStorage\";}}s:6:\"setPid\";a:1:{s:3:\"pid\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:12:\"integer|NULL\";}}s:12:\"_setProperty\";a:2:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:13:\"propertyValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:12:\"_getProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:12:\"_hasProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:19:\"_memorizeCleanState\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:27:\"_memorizePropertyCleanState\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:17:\"_getCleanProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:8:\"_isDirty\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:15:\"isPropertyDirty\";a:2:{s:13:\"previousValue\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}s:12:\"currentValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:9:\"_setClone\";a:1:{s:5:\"clone\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"boolean\";}}}s:41:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser\";a:23:{s:19:\"setAllowedLanguages\";a:1:{s:16:\"allowedLanguages\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:16:\"setDbMountPoints\";a:1:{s:13:\"dbMountPoints\";a:6:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;}}s:18:\"setFileMountPoints\";a:1:{s:15:\"fileMountPoints\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:20:\"setBackendUserGroups\";a:1:{s:17:\"backendUserGroups\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:43:\"TYPO3\\CMS\\Extbase\\Persistence\\ObjectStorage\";}}s:11:\"setUserName\";a:1:{s:8:\"userName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:18:\"setIsAdministrator\";a:1:{s:15:\"isAdministrator\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"boolean\";}}s:13:\"setIsDisabled\";a:1:{s:10:\"isDisabled\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"boolean\";}}s:19:\"setStartDateAndTime\";a:1:{s:11:\"dateAndTime\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";s:8:\"DateTime\";s:12:\"defaultValue\";N;s:4:\"type\";s:8:\"DateTime\";}}s:17:\"setEndDateAndTime\";a:1:{s:11:\"dateAndTime\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";s:8:\"DateTime\";s:12:\"defaultValue\";N;s:4:\"type\";s:8:\"DateTime\";}}s:8:\"setEmail\";a:1:{s:5:\"email\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:11:\"setRealName\";a:1:{s:4:\"name\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:19:\"setIpLockIsDisabled\";a:1:{s:13:\"disableIpLock\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"boolean\";}}s:23:\"setLastLoginDateAndTime\";a:1:{s:11:\"dateAndTime\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";s:8:\"DateTime\";s:12:\"defaultValue\";N;s:4:\"type\";s:8:\"DateTime\";}}s:6:\"setPid\";a:1:{s:3:\"pid\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:12:\"integer|NULL\";}}s:12:\"_setProperty\";a:2:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:13:\"propertyValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:12:\"_getProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:12:\"_hasProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:19:\"_memorizeCleanState\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:27:\"_memorizePropertyCleanState\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:17:\"_getCleanProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:8:\"_isDirty\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:15:\"isPropertyDirty\";a:2:{s:13:\"previousValue\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}s:12:\"currentValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:9:\"_setClone\";a:1:{s:5:\"clone\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"boolean\";}}}s:44:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\LayoutViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:45:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\SectionViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:56:\"TYPO3\\CMS\\Beuser\\ViewHelpers\\SpriteManagerIconViewHelper\";a:1:{s:6:\"render\";a:2:{s:8:\"iconName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:7:\"options\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";a:0:{}s:4:\"type\";s:5:\"array\";}}}s:47:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\TranslateViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:45:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\CommentViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:40:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\IfViewHelper\";a:1:{s:6:\"render\";a:1:{s:9:\"condition\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"boolean\";}}}s:46:\"TYPO3\\CMS\\Beuser\\ViewHelpers\\SectionViewHelper\";a:1:{s:6:\"render\";a:2:{s:5:\"title\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:11:\"collapsible\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}}}s:41:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ForViewHelper\";a:1:{s:6:\"render\";a:5:{s:4:\"each\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"array\";}s:2:\"as\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:3:\"key\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}s:7:\"reverse\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:9:\"iteration\";a:8:{s:8:\"position\";i:4;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}}s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Link\\ActionViewHelper\";a:1:{s:6:\"render\";a:17:{s:6:\"action\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:9:\"arguments\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:1;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:0;s:5:\"class\";N;s:12:\"defaultValue\";a:0:{}s:4:\"type\";s:5:\"array\";}s:10:\"controller\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:13:\"extensionName\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:10:\"pluginName\";a:8:{s:8:\"position\";i:4;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:7:\"pageUid\";a:8:{s:8:\"position\";i:5;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:7:\"integer\";}s:8:\"pageType\";a:8:{s:8:\"position\";i:6;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";i:0;s:4:\"type\";s:7:\"integer\";}s:7:\"noCache\";a:8:{s:8:\"position\";i:7;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:11:\"noCacheHash\";a:8:{s:8:\"position\";i:8;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:7:\"section\";a:8:{s:8:\"position\";i:9;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}s:6:\"format\";a:8:{s:8:\"position\";i:10;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}s:25:\"linkAccessRestrictedPages\";a:8:{s:8:\"position\";i:11;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:16:\"additionalParams\";a:8:{s:8:\"position\";i:12;s:11:\"byReference\";b:0;s:5:\"array\";b:1;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:0;s:5:\"class\";N;s:12:\"defaultValue\";a:0:{}s:4:\"type\";s:5:\"array\";}s:8:\"absolute\";a:8:{s:8:\"position\";i:13;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:14:\"addQueryString\";a:8:{s:8:\"position\";i:14;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:36:\"argumentsToBeExcludedFromQueryString\";a:8:{s:8:\"position\";i:15;s:11:\"byReference\";b:0;s:5:\"array\";b:1;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:0;s:5:\"class\";N;s:12:\"defaultValue\";a:0:{}s:4:\"type\";s:5:\"array\";}s:20:\"addQueryStringMethod\";a:8:{s:8:\"position\";i:16;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}}s:58:\"TYPO3\\CMS\\Beuser\\ViewHelpers\\SpriteIconForRecordViewHelper\";a:1:{s:6:\"render\";a:2:{s:5:\"table\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:6:\"object\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"object\";}}}s:42:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\FormViewHelper\";a:1:{s:6:\"render\";a:20:{s:6:\"action\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:9:\"arguments\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:1;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:0;s:5:\"class\";N;s:12:\"defaultValue\";a:0:{}s:4:\"type\";s:5:\"array\";}s:10:\"controller\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:13:\"extensionName\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:10:\"pluginName\";a:8:{s:8:\"position\";i:4;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:7:\"pageUid\";a:8:{s:8:\"position\";i:5;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:7:\"integer\";}s:6:\"object\";a:8:{s:8:\"position\";i:6;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:5:\"mixed\";}s:8:\"pageType\";a:8:{s:8:\"position\";i:7;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";i:0;s:4:\"type\";s:7:\"integer\";}s:7:\"noCache\";a:8:{s:8:\"position\";i:8;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:11:\"noCacheHash\";a:8:{s:8:\"position\";i:9;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:7:\"section\";a:8:{s:8:\"position\";i:10;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}s:6:\"format\";a:8:{s:8:\"position\";i:11;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}s:16:\"additionalParams\";a:8:{s:8:\"position\";i:12;s:11:\"byReference\";b:0;s:5:\"array\";b:1;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:0;s:5:\"class\";N;s:12:\"defaultValue\";a:0:{}s:4:\"type\";s:5:\"array\";}s:8:\"absolute\";a:8:{s:8:\"position\";i:13;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:14:\"addQueryString\";a:8:{s:8:\"position\";i:14;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:36:\"argumentsToBeExcludedFromQueryString\";a:8:{s:8:\"position\";i:15;s:11:\"byReference\";b:0;s:5:\"array\";b:1;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:0;s:5:\"class\";N;s:12:\"defaultValue\";a:0:{}s:4:\"type\";s:5:\"array\";}s:15:\"fieldNamePrefix\";a:8:{s:8:\"position\";i:16;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:9:\"actionUri\";a:8:{s:8:\"position\";i:17;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:10:\"objectName\";a:8:{s:8:\"position\";i:18;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:20:\"hiddenFieldClassName\";a:8:{s:8:\"position\";i:19;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}}s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Form\\SubmitViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:44:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\RenderViewHelper\";a:1:{s:6:\"render\";a:4:{s:7:\"section\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:7:\"partial\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:9:\"arguments\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";a:0:{}s:4:\"type\";s:5:\"array\";}s:8:\"optional\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}}}s:43:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\CountViewHelper\";a:1:{s:6:\"render\";a:1:{s:7:\"subject\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:5:\"array\";}}}s:42:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ThenViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:56:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\Widget\\PaginateViewHelper\";a:1:{s:6:\"render\";a:3:{s:7:\"objects\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:0;s:5:\"class\";s:50:\"TYPO3\\CMS\\Extbase\\Persistence\\QueryResultInterface\";s:4:\"type\";s:50:\"TYPO3\\CMS\\Extbase\\Persistence\\QueryResultInterface\";}s:2:\"as\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:13:\"configuration\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:1;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:0;s:5:\"class\";N;s:12:\"defaultValue\";a:4:{s:12:\"itemsPerPage\";i:10;s:11:\"insertAbove\";b:0;s:11:\"insertBelow\";b:1;s:12:\"recordsLabel\";s:0:\"\";}s:4:\"type\";s:5:\"array\";}}}s:42:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ElseViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:50:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Uri\\ResourceViewHelper\";a:1:{s:6:\"render\";a:3:{s:4:\"path\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:13:\"extensionName\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:8:\"absolute\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}}}s:50:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\ContainerViewHelper\";a:1:{s:6:\"render\";a:17:{s:9:\"pageTitle\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}s:15:\"enableJumpToUrl\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:1;s:4:\"type\";s:7:\"boolean\";}s:15:\"enableClickMenu\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:1;s:4:\"type\";s:7:\"boolean\";}s:13:\"loadPrototype\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:1;s:4:\"type\";s:7:\"boolean\";}s:17:\"loadScriptaculous\";a:8:{s:8:\"position\";i:4;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:19:\"scriptaculousModule\";a:8:{s:8:\"position\";i:5;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}s:9:\"loadExtJs\";a:8:{s:8:\"position\";i:6;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:14:\"loadExtJsTheme\";a:8:{s:8:\"position\";i:7;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:1;s:4:\"type\";s:7:\"boolean\";}s:12:\"extJsAdapter\";a:8:{s:8:\"position\";i:8;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}s:16:\"enableExtJsDebug\";a:8:{s:8:\"position\";i:9;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:10:\"addCssFile\";a:8:{s:8:\"position\";i:10;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:9:\"addJsFile\";a:8:{s:8:\"position\";i:11;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:10:\"loadJQuery\";a:8:{s:8:\"position\";i:12;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:15:\"includeCssFiles\";a:8:{s:8:\"position\";i:13;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:5:\"array\";}s:14:\"includeJsFiles\";a:8:{s:8:\"position\";i:14;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:5:\"array\";}s:17:\"addJsInlineLabels\";a:8:{s:8:\"position\";i:15;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:5:\"array\";}s:10:\"includeCsh\";a:8:{s:8:\"position\";i:16;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:1;s:4:\"type\";s:7:\"boolean\";}}}s:52:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\Buttons\\CshViewHelper\";a:1:{s:6:\"render\";a:4:{s:5:\"table\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:5:\"field\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}s:8:\"iconOnly\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:15:\"styleAttributes\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}}}s:57:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\Menus\\ActionMenuViewHelper\";a:1:{s:6:\"render\";a:1:{s:17:\"defaultController\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}}s:61:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\Menus\\ActionMenuItemViewHelper\";a:1:{s:6:\"render\";a:4:{s:5:\"label\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:10:\"controller\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:6:\"action\";a:7:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:9:\"arguments\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:1;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:0;s:5:\"class\";N;s:12:\"defaultValue\";a:0:{}s:4:\"type\";s:5:\"array\";}}}s:57:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\Buttons\\ShortcutViewHelper\";a:1:{s:6:\"render\";a:2:{s:7:\"getVars\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:1;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:0;s:5:\"class\";N;s:12:\"defaultValue\";a:0:{}s:4:\"type\";s:5:\"array\";}s:7:\"setVars\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:1;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:0;s:5:\"class\";N;s:12:\"defaultValue\";a:0:{}s:4:\"type\";s:5:\"array\";}}}s:51:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\FlashMessagesViewHelper\";a:1:{s:6:\"render\";a:1:{s:10:\"renderMode\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:2:\"ul\";s:4:\"type\";s:6:\"string\";}}}s:52:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Form\\TextfieldViewHelper\";a:1:{s:6:\"render\";a:2:{s:8:\"required\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:7:\"boolean\";}s:4:\"type\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:4:\"text\";s:4:\"type\";s:6:\"string\";}}}s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Form\\SelectViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:51:\"TYPO3\\CMS\\Beuser\\ViewHelpers\\IssueCommandViewHelper\";a:1:{s:6:\"render\";a:2:{s:10:\"parameters\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:11:\"redirectUrl\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}}}s:49:\"TYPO3\\CMS\\Beuser\\ViewHelpers\\RemoveUserViewHelper\";a:1:{s:6:\"render\";a:1:{s:11:\"backendUser\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:0;s:5:\"class\";s:41:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser\";s:4:\"type\";s:41:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser\";}}}s:49:\"TYPO3\\CMS\\Beuser\\ViewHelpers\\SwitchUserViewHelper\";a:1:{s:6:\"render\";a:2:{s:11:\"backendUser\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:0;s:5:\"class\";s:41:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser\";s:4:\"type\";s:41:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser\";}s:7:\"emulate\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}}}s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\DateViewHelper\";a:1:{s:6:\"render\";a:2:{s:4:\"date\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:5:\"mixed\";}s:6:\"format\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";s:0:\"\";s:4:\"type\";s:6:\"string\";}}}s:61:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\HtmlspecialcharsViewHelper\";a:1:{s:6:\"render\";a:4:{s:5:\"value\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:10:\"keepQuotes\";a:8:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:0;s:4:\"type\";s:7:\"boolean\";}s:8:\"encoding\";a:8:{s:8:\"position\";i:2;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}s:12:\"doubleEncode\";a:8:{s:8:\"position\";i:3;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";b:1;s:4:\"type\";s:7:\"boolean\";}}}}s:18:\"propertyTagsValues\";a:3:{s:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\";a:10:{s:8:\"userName\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:8:\"userType\";a:1:{s:3:\"var\";a:1:{i:0;s:7:\"integer\";}}s:6:\"status\";a:1:{s:3:\"var\";a:1:{i:0;s:7:\"integer\";}}s:6:\"logins\";a:1:{s:3:\"var\";a:1:{i:0;s:7:\"integer\";}}s:16:\"backendUserGroup\";a:1:{s:3:\"var\";a:1:{i:0;s:47:\"\\TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup\";}}s:3:\"uid\";a:1:{s:3:\"var\";a:1:{i:0;s:87:\"int The uid of the record. The uid is only unique in the context of the database table.\";}}s:13:\"_localizedUid\";a:1:{s:3:\"var\";a:1:{i:0;s:142:\"int The uid of the localized record. In TYPO3 v4.x the property \"uid\" holds the uid of the record in default language (the translationOrigin).\";}}s:12:\"_languageUid\";a:1:{s:3:\"var\";a:1:{i:0;s:122:\"int The uid of the language of the object. In TYPO3 v4.x this is the uid of the language record in the table sys_language.\";}}s:13:\"_versionedUid\";a:1:{s:3:\"var\";a:1:{i:0;s:36:\"int The uid of the versioned record.\";}}s:3:\"pid\";a:1:{s:3:\"var\";a:1:{i:0;s:46:\"int The id of the page the record is \"stored\".\";}}}s:46:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup\";a:7:{s:5:\"title\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:9:\"subGroups\";a:2:{s:3:\"var\";a:1:{i:0;s:93:\"\\TYPO3\\CMS\\Extbase\\Persistence\\ObjectStorage<\\TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup>\";}s:4:\"lazy\";a:0:{}}s:3:\"uid\";a:1:{s:3:\"var\";a:1:{i:0;s:87:\"int The uid of the record. The uid is only unique in the context of the database table.\";}}s:13:\"_localizedUid\";a:1:{s:3:\"var\";a:1:{i:0;s:142:\"int The uid of the localized record. In TYPO3 v4.x the property \"uid\" holds the uid of the record in default language (the translationOrigin).\";}}s:12:\"_languageUid\";a:1:{s:3:\"var\";a:1:{i:0;s:122:\"int The uid of the language of the object. In TYPO3 v4.x this is the uid of the language record in the table sys_language.\";}}s:13:\"_versionedUid\";a:1:{s:3:\"var\";a:1:{i:0;s:36:\"int The uid of the versioned record.\";}}s:3:\"pid\";a:1:{s:3:\"var\";a:1:{i:0;s:46:\"int The id of the page the record is \"stored\".\";}}}s:41:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser\";a:18:{s:16:\"allowedLanguages\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:13:\"dbMountPoints\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:15:\"fileMountPoints\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:17:\"backendUserGroups\";a:1:{s:3:\"var\";a:1:{i:0;s:93:\"\\TYPO3\\CMS\\Extbase\\Persistence\\ObjectStorage<\\TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup>\";}}s:8:\"userName\";a:2:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}s:8:\"validate\";a:1:{i:0;s:8:\"notEmpty\";}}s:15:\"isAdministrator\";a:1:{s:3:\"var\";a:1:{i:0;s:7:\"boolean\";}}s:10:\"isDisabled\";a:1:{s:3:\"var\";a:1:{i:0;s:7:\"boolean\";}}s:16:\"startDateAndTime\";a:1:{s:3:\"var\";a:1:{i:0;s:14:\"\\DateTime|NULL\";}}s:14:\"endDateAndTime\";a:1:{s:3:\"var\";a:1:{i:0;s:14:\"\\DateTime|NULL\";}}s:5:\"email\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:8:\"realName\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:20:\"lastLoginDateAndTime\";a:1:{s:3:\"var\";a:1:{i:0;s:14:\"\\DateTime|NULL\";}}s:16:\"ipLockIsDisabled\";a:1:{s:3:\"var\";a:1:{i:0;s:7:\"boolean\";}}s:3:\"uid\";a:1:{s:3:\"var\";a:1:{i:0;s:87:\"int The uid of the record. The uid is only unique in the context of the database table.\";}}s:13:\"_localizedUid\";a:1:{s:3:\"var\";a:1:{i:0;s:142:\"int The uid of the localized record. In TYPO3 v4.x the property \"uid\" holds the uid of the record in default language (the translationOrigin).\";}}s:12:\"_languageUid\";a:1:{s:3:\"var\";a:1:{i:0;s:122:\"int The uid of the language of the object. In TYPO3 v4.x this is the uid of the language record in the table sys_language.\";}}s:13:\"_versionedUid\";a:1:{s:3:\"var\";a:1:{i:0;s:36:\"int The uid of the versioned record.\";}}s:3:\"pid\";a:1:{s:3:\"var\";a:1:{i:0;s:46:\"int The id of the page the record is \"stored\".\";}}}}s:13:\"taggedClasses\";a:0:{}s:13:\"classSchemata\";a:3:{s:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\";O:40:\"TYPO3\\CMS\\Extbase\\Reflection\\ClassSchema\":7:{s:12:\"\0*\0className\";s:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\";s:12:\"\0*\0modelType\";i:1;s:16:\"\0*\0aggregateRoot\";b:0;s:19:\"\0*\0uuidPropertyName\";N;s:13:\"\0*\0properties\";a:10:{s:8:\"userName\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:8:\"userType\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:6:\"status\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:6:\"logins\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:16:\"backendUserGroup\";a:4:{s:4:\"type\";s:46:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:3:\"uid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"_localizedUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:12:\"_languageUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"_versionedUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:3:\"pid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}}s:21:\"\0*\0identityProperties\";a:0:{}s:22:\"\0*\0typeHandlingService\";O:45:\"TYPO3\\CMS\\Extbase\\Service\\TypeHandlingService\":0:{}}s:41:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser\";O:40:\"TYPO3\\CMS\\Extbase\\Reflection\\ClassSchema\":7:{s:12:\"\0*\0className\";s:41:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser\";s:12:\"\0*\0modelType\";i:1;s:16:\"\0*\0aggregateRoot\";b:1;s:19:\"\0*\0uuidPropertyName\";N;s:13:\"\0*\0properties\";a:18:{s:16:\"allowedLanguages\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"dbMountPoints\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:15:\"fileMountPoints\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:17:\"backendUserGroups\";a:4:{s:4:\"type\";s:43:\"TYPO3\\CMS\\Extbase\\Persistence\\ObjectStorage\";s:11:\"elementType\";s:46:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup\";s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:8:\"userName\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:15:\"isAdministrator\";a:4:{s:4:\"type\";s:7:\"boolean\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:10:\"isDisabled\";a:4:{s:4:\"type\";s:7:\"boolean\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:16:\"startDateAndTime\";a:4:{s:4:\"type\";s:8:\"DateTime\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:14:\"endDateAndTime\";a:4:{s:4:\"type\";s:8:\"DateTime\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:5:\"email\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:8:\"realName\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:20:\"lastLoginDateAndTime\";a:4:{s:4:\"type\";s:8:\"DateTime\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:16:\"ipLockIsDisabled\";a:4:{s:4:\"type\";s:7:\"boolean\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:3:\"uid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"_localizedUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:12:\"_languageUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"_versionedUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:3:\"pid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}}s:21:\"\0*\0identityProperties\";a:0:{}s:22:\"\0*\0typeHandlingService\";r:2494;}s:46:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup\";O:40:\"TYPO3\\CMS\\Extbase\\Reflection\\ClassSchema\":7:{s:12:\"\0*\0className\";s:46:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup\";s:12:\"\0*\0modelType\";i:1;s:16:\"\0*\0aggregateRoot\";b:1;s:19:\"\0*\0uuidPropertyName\";N;s:13:\"\0*\0properties\";a:7:{s:5:\"title\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:9:\"subGroups\";a:4:{s:4:\"type\";s:43:\"TYPO3\\CMS\\Extbase\\Persistence\\ObjectStorage\";s:11:\"elementType\";s:46:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup\";s:4:\"lazy\";b:1;s:7:\"cascade\";N;}s:3:\"uid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"_localizedUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:12:\"_languageUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"_versionedUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:3:\"pid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}}s:21:\"\0*\0identityProperties\";a:0:{}s:22:\"\0*\0typeHandlingService\";r:2494;}}}');
/*!40000 ALTER TABLE `cf_extbase_reflection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection_tags`
--

DROP TABLE IF EXISTS `cf_extbase_reflection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection_tags`
--

LOCK TABLES `cf_extbase_reflection_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` DISABLE KEYS */;
INSERT INTO `cf_extbase_typo3dbbackend_queries` VALUES (1,'4bd4c396c6607c32f27645e32f572076',2145909600,'a:9:{s:8:\"keywords\";a:0:{}s:6:\"tables\";a:1:{s:9:\"be_groups\";s:9:\"be_groups\";}s:6:\"unions\";a:0:{}s:6:\"fields\";a:1:{s:9:\"be_groups\";s:11:\"be_groups.*\";}s:5:\"where\";a:0:{}s:21:\"additionalWhereClause\";a:0:{}s:9:\"orderings\";a:1:{i:0;s:19:\"be_groups.title ASC\";}s:5:\"limit\";N;s:6:\"offset\";N;}'),(2,'38b8d757c9faca382aa07de0b71ecfd8',2145909600,'a:9:{s:8:\"keywords\";a:0:{}s:6:\"tables\";a:1:{s:8:\"be_users\";s:8:\"be_users\";}s:6:\"unions\";a:0:{}s:6:\"fields\";a:1:{s:8:\"be_users\";s:10:\"be_users.*\";}s:5:\"where\";a:1:{i:0;s:27:\"be_users.deleted = :deleted\";}s:21:\"additionalWhereClause\";a:0:{}s:9:\"orderings\";a:1:{i:0;s:21:\"be_users.username ASC\";}s:5:\"limit\";N;s:6:\"offset\";N;}');
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries_tags`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries_tags`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_tablecolumns`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_tablecolumns`
--

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_tablecolumns_tags`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_tablecolumns_tags`
--

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `subgroup` tinytext NOT NULL,
  `TSconfig` text NOT NULL,
  `felogin_redirectPid` tinytext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_session_data`
--

DROP TABLE IF EXISTS `fe_session_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_session_data` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `content` mediumblob,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`),
  KEY `tstamp` (`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_session_data`
--

LOCK TABLES `fe_session_data` WRITE;
/*!40000 ALTER TABLE `fe_session_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_session_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(32) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` blob,
  `ses_permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usergroup` tinytext,
  `disable` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uc` blob,
  `title` varchar(40) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(40) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `image` tinytext,
  `TSconfig` text,
  `fe_cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext,
  `felogin_forgotHash` varchar(80) DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`),
  KEY `username` (`username`),
  KEY `is_online` (`is_online`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_user` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_group` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `storage_pid` int(11) NOT NULL DEFAULT '0',
  `is_siteroot` tinyint(4) NOT NULL DEFAULT '0',
  `php_tree_stop` tinyint(4) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `url_scheme` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) NOT NULL DEFAULT '',
  `media` text,
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `no_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text,
  `module` varchar(10) NOT NULL DEFAULT '',
  `extendToSubpages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `nav_hide` tinyint(4) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` tinyint(4) NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `l18n_cfg` tinyint(4) NOT NULL DEFAULT '0',
  `fe_login_mode` tinyint(4) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`deleted`,`hidden`,`is_siteroot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_language_overlay`
--

DROP TABLE IF EXISTS `pages_language_overlay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_language_overlay` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `media` text,
  `keywords` text,
  `description` text,
  `abstract` text,
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `url` varchar(255) NOT NULL DEFAULT '',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_language_overlay`
--

LOCK TABLES `pages_language_overlay` WRITE;
/*!40000 ALTER TABLE `pages_language_overlay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_language_overlay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) NOT NULL DEFAULT '',
  `url` text,
  `description` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `title` tinytext NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) NOT NULL DEFAULT '',
  `fieldname` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablenames` (`uid_foreign`,`tablenames`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(32) NOT NULL DEFAULT 'static',
  `table_name` tinytext,
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain`
--

DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(80) NOT NULL DEFAULT '',
  `redirectTo` varchar(255) NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(4) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(10) NOT NULL DEFAULT '0',
  `forced` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `getSysDomain` (`redirectTo`,`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` tinyint(4) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier` text,
  `identifier_hash` varchar(40) NOT NULL DEFAULT '',
  `folder_hash` varchar(40) NOT NULL DEFAULT '',
  `extension` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `name` tinytext,
  `sha1` tinytext,
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`(40))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `alternative` text,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) NOT NULL DEFAULT '',
  `name` tinytext,
  `configuration` text,
  `configurationsha1` varchar(40) NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) NOT NULL DEFAULT '',
  `task_type` varchar(200) NOT NULL DEFAULT '',
  `checksum` varchar(255) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`,`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(199))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) NOT NULL DEFAULT '',
  `title` tinytext,
  `description` text,
  `alternative` tinytext,
  `link` varchar(1024) NOT NULL DEFAULT '',
  `downloadname` tinytext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `driver` tinytext,
  `configuration` text,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_browsable` tinyint(4) NOT NULL DEFAULT '0',
  `is_public` tinyint(4) NOT NULL DEFAULT '0',
  `is_writable` tinyint(4) NOT NULL DEFAULT '0',
  `is_online` tinyint(4) NOT NULL DEFAULT '1',
  `processingfolder` tinytext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `deleted_hidden` (`deleted`,`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `path` varchar(120) NOT NULL DEFAULT '',
  `base` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_log_uid` int(11) NOT NULL DEFAULT '0',
  `history_data` mediumtext,
  `fieldlist` text,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `history_files` mediumtext,
  `snapshot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `recordident_1` (`tablename`,`recuid`),
  KEY `recordident_2` (`tablename`,`tstamp`),
  KEY `sys_log_uid` (`sys_log_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `flag` varchar(20) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `feuserid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `recuid` int(11) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `details` text NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `details_nr` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IP` varchar(39) NOT NULL DEFAULT '',
  `log_data` text,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(20) NOT NULL DEFAULT '',
  `request_id` varchar(13) NOT NULL DEFAULT '',
  `time_micro` float NOT NULL DEFAULT '0',
  `component` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message` text,
  `data` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`,`uid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1430828509,255,1,'192.168.1.202','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"192.168.1.202\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(2,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1430829854,255,1,'192.168.1.202','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"192.168.1.202\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(3,0,1,1,2,'be_users',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1430830001,1,10,'192.168.1.202','a:4:{i:0;s:13:\"_cli_lowlevel\";i:1;s:10:\"be_users:2\";i:2;s:12:\"[root-level]\";i:3;s:1:\"0\";}',0,0,'NEW5548bba752d731.01','',0,'',0,NULL,NULL);
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text,
  `personal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(40) NOT NULL DEFAULT '',
  `flexpointer` varchar(255) NOT NULL DEFAULT '',
  `softref_key` varchar(30) NOT NULL DEFAULT '',
  `softref_id` varchar(40) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`,`recuid`),
  KEY `lookup_uid` (`ref_table`,`ref_uid`),
  KEY `lookup_string` (`ref_string`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) NOT NULL DEFAULT '',
  `entry_key` varchar(128) NOT NULL DEFAULT '',
  `entry_value` blob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'core','formSessionToken:1','s:64:\"62c6a73f803c536e68e202eda4d2e5577f93aff9730b1f66d96abb00168109f9\";');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `sitetitle` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `root` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `clear` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text,
  `constants` text,
  `config` text,
  `nextLevel` varchar(5) NOT NULL DEFAULT '',
  `description` text,
  `basedOn` tinytext,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `header_position` varchar(6) NOT NULL DEFAULT '',
  `bodytext` mediumtext,
  `image` text,
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageorient` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imagecaption` text,
  `imagecols` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imageborder` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `media` text,
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `cols` int(11) unsigned NOT NULL DEFAULT '0',
  `records` text,
  `pages` tinytext,
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `colPos` int(11) unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `header_link` varchar(1024) NOT NULL DEFAULT '',
  `imagecaption_position` varchar(6) NOT NULL DEFAULT '',
  `image_link` text,
  `image_zoom` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_noRows` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_effects` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_compression` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `altText` text,
  `titleText` text,
  `longdescURL` text,
  `header_layout` varchar(30) NOT NULL DEFAULT '0',
  `menu_type` varchar(30) NOT NULL DEFAULT '0',
  `list_type` varchar(255) NOT NULL DEFAULT '0',
  `table_border` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellspacing` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellpadding` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_bgColor` int(11) unsigned NOT NULL DEFAULT '0',
  `select_key` varchar(80) NOT NULL DEFAULT '',
  `sectionIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `linkToTop` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file_collections` text,
  `filelink_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` tinytext NOT NULL,
  `target` varchar(30) NOT NULL DEFAULT '',
  `section_frame` int(11) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `multimedia` tinytext,
  `image_frames` int(11) unsigned NOT NULL DEFAULT '0',
  `recursive` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rte_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext,
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `selected_categories` text,
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) NOT NULL DEFAULT '',
  `repository` int(11) unsigned NOT NULL DEFAULT '1',
  `version` varchar(10) NOT NULL DEFAULT '',
  `alldownloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `state` int(4) NOT NULL DEFAULT '0',
  `review_state` int(4) NOT NULL DEFAULT '0',
  `category` int(4) NOT NULL DEFAULT '0',
  `last_updated` int(11) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext,
  `author_name` varchar(100) NOT NULL DEFAULT '',
  `author_email` varchar(100) NOT NULL DEFAULT '',
  `ownerusername` varchar(50) NOT NULL DEFAULT '',
  `md5hash` varchar(35) NOT NULL DEFAULT '',
  `update_comment` mediumtext,
  `authorcompany` varchar(100) NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(3) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`),
  KEY `index_currentversions` (`current_version`,`review_state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `wsdl_url` varchar(100) NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) NOT NULL DEFAULT '',
  `last_update` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','http://typo3.org/wsdl/tx_ter_wsdl.php','http://repositories.typo3.org/mirrors.xml.gz',1346191200,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `public` tinyint(3) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rsaauth_keys`
--

DROP TABLE IF EXISTS `tx_rsaauth_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rsaauth_keys` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `key_value` text,
  PRIMARY KEY (`uid`),
  KEY `crdate` (`crdate`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rsaauth_keys`
--

LOCK TABLES `tx_rsaauth_keys` WRITE;
/*!40000 ALTER TABLE `tx_rsaauth_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rsaauth_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rtehtmlarea_acronym`
--

DROP TABLE IF EXISTS `tx_rtehtmlarea_acronym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rtehtmlarea_acronym` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `term` varchar(255) NOT NULL DEFAULT '',
  `acronym` varchar(255) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rtehtmlarea_acronym`
--

LOCK TABLES `tx_rtehtmlarea_acronym` WRITE;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-05 14:46:48
