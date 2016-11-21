-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: truytim_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.13-MariaDB

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
-- Table structure for table `bf_activities`
--

DROP TABLE IF EXISTS `bf_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_activities` (
  `activity_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `activity` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `deleted` tinyint(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_activities`
--

LOCK TABLES `bf_activities` WRITE;
/*!40000 ALTER TABLE `bf_activities` DISABLE KEYS */;
INSERT INTO `bf_activities` VALUES (1,1,'logged in from: ::1','users','2016-07-20 16:27:48',0),(2,1,'Created Module: customers : ::1','modulebuilder','2016-07-20 16:36:41',0),(3,1,'Created record with ID: 1 : ::1','customers','2016-07-20 16:37:14',0),(4,1,'Created Module: nickname : ::1','modulebuilder','2016-07-20 16:41:36',0),(5,1,'Created record with ID: 1 : ::1','nickname','2016-07-20 16:41:56',0),(6,1,'App settings saved from: ::1','core','2016-07-20 16:49:25',0),(7,1,'App settings saved from: ::1','core','2016-07-20 16:49:30',0),(8,1,'Created Module: address : ::1','modulebuilder','2016-07-20 17:03:05',0),(9,1,'logged in from: ::1','users','2016-07-20 17:19:08',0),(10,1,'App settings saved from: ::1','ui','2016-07-20 17:20:35',0),(11,1,'logged in from: ::1','users','2016-07-20 17:29:00',0),(12,1,'Created Module: document : ::1','modulebuilder','2016-07-20 17:38:50',0),(13,1,'Created Module: document image : ::1','modulebuilder','2016-07-20 17:40:42',0),(14,1,'Created Module: customer image : ::1','modulebuilder','2016-07-20 17:45:40',0),(15,1,'logged in from: ::1','users','2016-07-20 17:56:04',0),(16,1,'logged in from: ::1','users','2016-07-22 12:50:43',0),(17,1,'logged in from: ::1','users','2016-07-27 18:17:49',0),(18,1,'Created Module: chu : ::1','modulebuilder','2016-07-27 18:35:32',0),(19,1,'Created Module: lichsu chu : ::1','modulebuilder','2016-07-27 18:42:24',0),(20,1,'Created Module: khach : ::1','modulebuilder','2016-07-27 18:42:50',0),(21,1,'Created Module: ten khach : ::1','modulebuilder','2016-07-27 18:44:47',0),(22,1,'Created Module: giayto khach : ::1','modulebuilder','2016-07-27 18:47:28',0),(23,1,'Created Module: giayto : ::1','modulebuilder','2016-07-27 18:48:19',0),(24,1,'Created Module: diachi khach : ::1','modulebuilder','2016-07-27 18:49:31',0),(25,1,'Created Module: phone khach : ::1','modulebuilder','2016-07-27 18:51:09',0),(26,1,'Created Module: image khach : ::1','modulebuilder','2016-07-27 18:58:00',0),(27,1,'Created Module: ghichu khach : ::1','modulebuilder','2016-07-27 18:58:53',0),(28,1,'Created Module: chu khach : ::1','modulebuilder','2016-07-27 18:59:55',0),(29,1,'Created Module: lichsu khach : ::1','modulebuilder','2016-07-27 19:01:37',0),(30,1,'Created Module: khach session : ::1','modulebuilder','2016-07-27 19:16:43',0),(31,1,'logged in from: ::1','users','2016-08-01 05:36:00',0),(32,1,'Migrate Type: address_ Uninstalled Version: 0 from: ::1','migrations','2016-08-01 05:36:15',0),(33,1,'Migration module: address Version: 0 from: ::1','migrations','2016-08-01 05:36:15',0),(34,1,'Migrate Type: khach_ Uninstalled Version: 0 from: ::1','migrations','2016-08-01 05:36:27',0),(35,1,'Migration module: khach Version: 0 from: ::1','migrations','2016-08-01 05:36:27',0),(36,1,'Migrate Type: giayto_ Uninstalled Version: 0 from: ::1','migrations','2016-08-01 05:36:31',0),(37,1,'Migration module: giayto Version: 0 from: ::1','migrations','2016-08-01 05:36:31',0),(38,1,'Migrate Type: khach_session_ Uninstalled Version: 0 from: ::1','migrations','2016-08-01 13:34:47',0),(39,1,'Migration module: khach_session Version: 0 from: ::1','migrations','2016-08-01 13:34:47',0),(40,1,'Created Module: chu session : ::1','modulebuilder','2016-08-01 13:36:39',0),(41,1,'Created Module: card code : ::1','modulebuilder','2016-08-03 12:03:17',0),(42,1,'Deleted Module: card_code : ::1','builder','2016-08-03 12:33:57',0),(43,1,'Created Module: card code : ::1','modulebuilder','2016-08-03 12:35:45',0),(44,1,'logged in from: ::1','users','2016-08-05 15:41:04',0),(45,1,'Created Module: khach : ::1','modulebuilder','2016-08-05 17:17:50',0);
/*!40000 ALTER TABLE `bf_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_card_code`
--

DROP TABLE IF EXISTS `bf_card_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_card_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) DEFAULT NULL,
  `chu_id` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `active_by` bigint(20) DEFAULT NULL,
  `expired` datetime DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) DEFAULT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL,
  `card_type` varchar(50) DEFAULT NULL,
  `serial` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_card_code`
--

LOCK TABLES `bf_card_code` WRITE;
/*!40000 ALTER TABLE `bf_card_code` DISABLE KEYS */;
INSERT INTO `bf_card_code` VALUES (1,'abc',1,'active',2,'2016-11-05 10:29:04',0,NULL,'0000-00-00 00:00:00',0,'2016-08-07 11:29:04',NULL,NULL,NULL),(5,'1258745896588547',1,NULL,NULL,'0000-00-00 00:00:00',0,NULL,'2016-08-05 11:29:35',NULL,'0000-00-00 00:00:00',NULL,'mobile','123456789'),(6,'abcde',2,NULL,NULL,'0000-00-00 00:00:00',0,NULL,'2016-08-09 18:45:01',NULL,'0000-00-00 00:00:00',NULL,'viettel','12121312131'),(7,'',2,NULL,NULL,'0000-00-00 00:00:00',0,NULL,'2016-08-09 18:53:40',NULL,'0000-00-00 00:00:00',NULL,'',''),(8,'',2,NULL,NULL,'0000-00-00 00:00:00',0,NULL,'2016-08-09 18:53:41',NULL,'0000-00-00 00:00:00',NULL,'','');
/*!40000 ALTER TABLE `bf_card_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_chu`
--

DROP TABLE IF EXISTS `bf_chu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_chu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `role` tinyint(4) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_chu`
--

LOCK TABLES `bf_chu` WRITE;
/*!40000 ALTER TABLE `bf_chu` DISABLE KEYS */;
INSERT INTO `bf_chu` VALUES (1,'abc@gmail.com','abc','123456','123456789',0,'active',0,NULL,'0000-00-00 00:00:00',0,'2016-08-02 06:51:08',NULL),(2,'admin@gmail.com','','4214124','225621452',1,'active',0,NULL,'0000-00-00 00:00:00',0,'2016-08-09 19:12:41',NULL);
/*!40000 ALTER TABLE `bf_chu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_chu_khach`
--

DROP TABLE IF EXISTS `bf_chu_khach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_chu_khach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `khach_id` bigint(20) DEFAULT NULL,
  `chu_id` bigint(20) DEFAULT NULL,
  `trangthai` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_chu_khach`
--

LOCK TABLES `bf_chu_khach` WRITE;
/*!40000 ALTER TABLE `bf_chu_khach` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_chu_khach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_chu_session`
--

DROP TABLE IF EXISTS `bf_chu_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_chu_session` (
  `chu_session` varchar(20) NOT NULL DEFAULT '',
  `chu_id` bigint(20) DEFAULT NULL,
  `ip_address` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expired` datetime DEFAULT NULL,
  PRIMARY KEY (`chu_session`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_chu_session`
--

LOCK TABLES `bf_chu_session` WRITE;
/*!40000 ALTER TABLE `bf_chu_session` DISABLE KEYS */;
INSERT INTO `bf_chu_session` VALUES ('11',1,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2017-01-01 00:00:00'),('22',2,NULL,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2017-01-01 00:00:00');
/*!40000 ALTER TABLE `bf_chu_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_ci3_sessions`
--

DROP TABLE IF EXISTS `bf_ci3_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_ci3_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_ci3_sessions`
--

LOCK TABLES `bf_ci3_sessions` WRITE;
/*!40000 ALTER TABLE `bf_ci3_sessions` DISABLE KEYS */;
INSERT INTO `bf_ci3_sessions` VALUES ('01f084069f7c7653a0a82d299c28b6e4461f737f','::1',1470122822,'__ci_last_regenerate|i:1470122524;requested_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";previous_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";'),('038fff829f647ee1dad4dee77f67d38e8f8e042f','::1',1470404605,'__ci_last_regenerate|i:1470404459;requested_page|s:57:\"http://localhost/truytim/public/api/v1/get_card_code_list\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";previous_page|s:57:\"http://localhost/truytim/public/api/v1/get_card_code_list\";'),('0451d58754c10f236459af2b85990f63d5773bc6','::1',1470410270,'__ci_last_regenerate|i:1470410251;requested_page|s:69:\"http://localhost/truytim/public/admin/developer/builder/create_module\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";previous_page|s:69:\"http://localhost/truytim/public/admin/developer/builder/create_module\";'),('05d15153f1e4fffe4fe9070fc9b319511e6d2704','::1',1470841015,'__ci_last_regenerate|i:1470840823;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('078e21212715704603c6d0b53f8106e6f56f9cad','::1',1470849912,'__ci_last_regenerate|i:1470849667;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('07c03bcf3f416caf652ea1911d7f857908c58211','::1',1470761621,'__ci_last_regenerate|i:1470761446;requested_page|s:55:\"http://localhost/truytim/public/api/v1/submit_card_code\";previous_page|s:55:\"http://localhost/truytim/public/api/v1/submit_card_code\";'),('0bfa134f62ab0fe50d9238a47f41d6fa923c7fe4','::1',1470847671,'__ci_last_regenerate|i:1470847404;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('1460ddc0de730bc11cdceb976bba4f3fb9813cd8','::1',1470848248,'__ci_last_regenerate|i:1470848152;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('193d51a72292b338cbcfab8151f9deba2679801d','::1',1470414630,'__ci_last_regenerate|i:1470414605;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('197757e7c66e30ca177039154a85f0c46a833bcc','::1',1469638032,'__ci_last_regenerate|i:1469637743;requested_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/4\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";previous_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/4\";'),('1ffc7cdc2bb7adffabcc3fea862c2896d1d600b4','::1',1469030331,'__ci_last_regenerate|i:1469030124;requested_page|s:69:\"http://localhost/truytim/public/index.php/admin/settings/roles/edit/2\";previous_page|s:69:\"http://localhost/truytim/public/index.php/admin/settings/roles/edit/2\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";'),('2015fafe3dc3501d9e1bfcac12978ae8697e67d4','::1',1469025093,'__ci_last_regenerate|i:1469024862;user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;requested_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/2\";previous_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/2\";language|s:7:\"english\";'),('2595a7bb7965e1d0ba1a875a9d723d1a416f763f','::1',1470060468,'__ci_last_regenerate|i:1470060326;requested_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";previous_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";'),('2b9ea171bd4008e1b7cd2c89a9d4082fdde1daed','::1',1470761299,'__ci_last_regenerate|i:1470761101;requested_page|s:55:\"http://localhost/truytim/public/api/v1/submit_card_code\";previous_page|s:55:\"http://localhost/truytim/public/api/v1/submit_card_code\";'),('2ba8c5e6b2e5b0c3f39fdbace81cfbc5c66663a8','::1',1470561814,'__ci_last_regenerate|i:1470561648;requested_page|s:55:\"http://localhost/truytim/public/api/v1/redeem_card_code\";previous_page|s:55:\"http://localhost/truytim/public/api/v1/redeem_card_code\";'),('2bf7166544963715c56063ccefb72fc6eaac1130','::1',1469026721,'__ci_last_regenerate|i:1469026591;user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;requested_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/5\";previous_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/5\";language|s:7:\"english\";'),('2d4b4590758985fe1ab63403ec75cab576b1da63','::1',1469636274,'__ci_last_regenerate|i:1469636267;requested_page|s:79:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";previous_page|s:79:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module\";'),('2d524f31125312498cf4c556e42f111315e7693f','::1',1470113468,'__ci_last_regenerate|i:1470113195;requested_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;previous_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";language|s:7:\"english\";'),('2ed70e37f440ab02ac615cc1bf79b5ab32fbfa77','::1',1470841289,'__ci_last_regenerate|i:1470841289;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('2ef598eb45ee541beb36658ad6436271da12061b','::1',1470409352,'__ci_last_regenerate|i:1470409282;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('3142bd45309819ac5929cd9795e20fe89c5c20af','::1',1469638897,'__ci_last_regenerate|i:1469638896;requested_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/4\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";previous_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/4\";'),('32d494d046ed6801e124283559253431685f833b','::1',1470760792,'__ci_last_regenerate|i:1470760661;requested_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";previous_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";'),('35510956df8631b9aaed4c1703c0da9e162eee0c','::1',1470847346,'__ci_last_regenerate|i:1470847077;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('39c00c2d0be118c74e7a2771973fc9fcb82d8a0b','::1',1470761788,'__ci_last_regenerate|i:1470761788;requested_page|s:55:\"http://localhost/truytim/public/api/v1/submit_card_code\";previous_page|s:55:\"http://localhost/truytim/public/api/v1/submit_card_code\";'),('3da28360e8bc22200e146679cbe637efddbf5292','::1',1470405157,'__ci_last_regenerate|i:1470405157;requested_page|s:57:\"http://localhost/truytim/public/api/v1/get_card_code_list\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";previous_page|s:57:\"http://localhost/truytim/public/api/v1/get_card_code_list\";'),('4003a8fae9e8a02529ee1354b20c07c783cf978f','::1',1470849650,'__ci_last_regenerate|i:1470849366;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('447b68e6f19960427e2004567a287f636225a384','::1',1470760275,'__ci_last_regenerate|i:1470760028;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('4509627f7a53f8ac2d49a7803604ee441ee20794','::1',1470409204,'__ci_last_regenerate|i:1470408941;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('45c06355be3144ee5028d98b85f49022e1a8d20f','::1',1470404665,'__ci_last_regenerate|i:1470404629;requested_page|s:57:\"http://localhost/truytim/public/api/v1/get_card_code_list\";previous_page|s:57:\"http://localhost/truytim/public/api/v1/get_card_code_list\";'),('4746300de1b81539794a402fb411684083c774a0','::1',1470846341,'__ci_last_regenerate|i:1470846115;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('47849374ad03e2b778a23f20410dfc07d467fcac','::1',1470051013,'__ci_last_regenerate|i:1470050943;requested_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";previous_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";'),('4dea054f3a57ec283802c3013328a251eec5eebc','::1',1470415883,'__ci_last_regenerate|i:1470415875;requested_page|s:57:\"http://localhost/truytim/public/admin/content/image_khach\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";previous_page|s:57:\"http://localhost/truytim/public/admin/content/image_khach\";'),('4f7b7c24332976f0de7956fd1b027626920476c5','::1',1470550300,'__ci_last_regenerate|i:1470550016;requested_page|s:49:\"http://localhost/truytim/public/api/v1/search_chu\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;previous_page|s:49:\"http://localhost/truytim/public/api/v1/search_chu\";language|s:7:\"english\";'),('50ee2002db9b9e6d8c70a590f279414ff9387940','::1',1469638880,'__ci_last_regenerate|i:1469638589;requested_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/4\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";previous_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/4\";'),('57681ac27372fb34932948153b65faba771366d3','::1',1470050498,'__ci_last_regenerate|i:1470050254;requested_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";previous_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";'),('57f478d817d74906a85adb06c450997884e720e4','::1',1470850546,'__ci_last_regenerate|i:1470850412;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('5ca7c946eaaac030df5701b251258687dff18347','::1',1469184644,'__ci_last_regenerate|i:1469184639;requested_page|s:55:\"http://localhost/truytim/public/index.php/admin/content\";previous_page|s:55:\"http://localhost/truytim/public/index.php/admin/content\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";'),('624fe3d9ab6668f3dd5bcf76746d7418be681274','::1',1470220545,'__ci_last_regenerate|i:1470220415;requested_page|s:71:\"http://localhost/truytim/public/admin/developer/builder/create_module/5\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;previous_page|s:71:\"http://localhost/truytim/public/admin/developer/builder/create_module/5\";language|s:7:\"english\";'),('6519280759cd21f74b62a898bc937a263a5e3f0b','::1',1470762761,'__ci_last_regenerate|i:1470762717;requested_page|s:49:\"http://localhost/truytim/public/api/v1/update_chu\";previous_page|s:49:\"http://localhost/truytim/public/api/v1/update_chu\";'),('6736d6069033e53751a507d705f59471e4b1a2f7','::1',1470845988,'__ci_last_regenerate|i:1470845756;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('67feec6d8c22269f7093d4c51aa01b7e1cbf9080','::1',1470846624,'__ci_last_regenerate|i:1470846579;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('694eca0366fe7bb6795e2a38c4290d494eefea37','::1',1470406414,'__ci_last_regenerate|i:1470406278;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('6a25a0afaadcd92d07299dc2e92cb8ad081d15bb','::1',1470410377,'__ci_last_regenerate|i:1470410146;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('71134d9779fb7946229657a7fbbce55c2a9c4e9e','::1',1470843873,'__ci_last_regenerate|i:1470843584;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('74cdcecbecede39f23128342ea56231a8217dfdb','::1',1470840510,'__ci_last_regenerate|i:1470840220;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('7b5f3ab8f7723227152707318c810d2ab6a2f5cd','::1',1470411884,'__ci_last_regenerate|i:1470411872;requested_page|s:57:\"http://localhost/truytim/public/admin/content/image_khach\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";previous_page|s:57:\"http://localhost/truytim/public/admin/content/image_khach\";'),('7f8fc2852193a675025f4aeedddf4beaef000735','::1',1469637714,'__ci_last_regenerate|i:1469637415;requested_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/3\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";previous_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/3\";'),('8033f0ddd27a83525ca798592348749e6777033b','::1',1469028035,'__ci_last_regenerate|i:1469027741;requested_page|s:59:\"http://localhost/truytim/public/index.php/admin/settings/ui\";previous_page|s:59:\"http://localhost/truytim/public/index.php/admin/settings/ui\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";message|s:0:\"\";__ci_vars|a:1:{s:7:\"message\";s:3:\"new\";}'),('85f43d05ff445c1b024c9355a770046dbf0aec89','::1',1469029301,'__ci_last_regenerate|i:1469029128;requested_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/3\";previous_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/3\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";'),('86416992fdf2b9db6e9f109c8054d82c32917883','::1',1469028616,'__ci_last_regenerate|i:1469028521;requested_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/4\";previous_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/4\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";'),('8a95e9e0a493d02e64796d7b67d4a13ced10af93','::1',1470411065,'__ci_last_regenerate|i:1470410800;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('8b1418f3cb25d26129ffd15d1b6ef44a27f66c4f','::1',1470218597,'__ci_last_regenerate|i:1470218465;requested_page|s:71:\"http://localhost/truytim/public/admin/developer/builder/create_module/4\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;previous_page|s:71:\"http://localhost/truytim/public/admin/developer/builder/create_module/4\";language|s:7:\"english\";'),('91fd762f1d01e2408220c5313ac9e5cf21ebe7bb','::1',1470049016,'__ci_last_regenerate|i:1470049016;requested_page|s:70:\"http://localhost/truytim/public/index.php/api/v1/get_daily_puzzle_data\";previous_page|s:70:\"http://localhost/truytim/public/index.php/api/v1/get_daily_puzzle_data\";'),('9373775a63f97cfe38d895285087e45a524435df','::1',1470051973,'__ci_last_regenerate|i:1470051710;requested_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";previous_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";'),('948d81ef8ea6bd61cd6672ceb06599562f7e451d','::1',1470050899,'__ci_last_regenerate|i:1470050620;requested_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";previous_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";'),('94b00b2a35a357786eb053b06824dc43d0567a5c','::1',1470051399,'__ci_last_regenerate|i:1470051267;requested_page|s:71:\"http://localhost/truytim/public/admin/developer/builder/create_module/2\";previous_page|s:71:\"http://localhost/truytim/public/admin/developer/builder/create_module/2\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";'),('984bd09c72c8eefb54b2df5c79d61640ed31addd','::1',1470850357,'__ci_last_regenerate|i:1470850062;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('98fdb615b0f5ebd742364853c7958a0c7d526e12','::1',1470022827,'__ci_last_regenerate|i:1470022552;requested_page|s:68:\"http://localhost/truytim/public/index.php/admin/content/diachi_khach\";previous_page|s:68:\"http://localhost/truytim/public/index.php/admin/content/diachi_khach\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";'),('9a80b6a070cb4a3045bc75b18a915c80ca95482c','::1',1470754770,'__ci_last_regenerate|i:1470754532;requested_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";previous_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";'),('9b01eeededdce02e49ebc2470e4c519224c7fb60','::1',1470840814,'__ci_last_regenerate|i:1470840521;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('9c910982aee01270c0c6bf95eebffa4958eca2ed','::1',1469025762,'__ci_last_regenerate|i:1469025570;user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;requested_page|s:65:\"http://localhost/truytim/public/index.php/admin/settings/settings\";previous_page|s:65:\"http://localhost/truytim/public/index.php/admin/settings/settings\";language|s:7:\"english\";message|s:0:\"\";__ci_vars|a:1:{s:7:\"message\";s:3:\"old\";}'),('9d8380f715fb38b3e1bb062617390466f8035d99','::1',1469028051,'__ci_last_regenerate|i:1469028043;requested_page|s:71:\"http://localhost/truytim/public/index.php/admin/content/customers/index\";previous_page|s:71:\"http://localhost/truytim/public/index.php/admin/content/customers/index\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";'),('a0aa4d53d4f9460b631f6febf7bcd40a939dca53','::1',1470844122,'__ci_last_regenerate|i:1470843944;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('a0c5d9f771474f69a94b2816f26530c53dc7609c','::1',1470391619,'__ci_last_regenerate|i:1470391618;requested_page|s:45:\"http://localhost/truytim/public/admin/content\";previous_page|s:45:\"http://localhost/truytim/public/admin/content\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";'),('a3bfa77208106f6ae1065b4dd363c5ff94c60c23','::1',1469030528,'__ci_last_regenerate|i:1469030526;requested_page|s:69:\"http://localhost/truytim/public/index.php/admin/settings/roles/edit/4\";previous_page|s:69:\"http://localhost/truytim/public/index.php/admin/settings/roles/edit/4\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";'),('a47ecedcbf37ec0a3ff4c617d5dc018ec17d6743','::1',1470406171,'__ci_last_regenerate|i:1470405964;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('a70303b7bf368c83f17b746a718ae64dd418b2b9','::1',1470306849,'__ci_last_regenerate|i:1470306764;requested_page|s:57:\"http://localhost/truytim/public/api/v1/get_card_code_list\";previous_page|s:57:\"http://localhost/truytim/public/api/v1/get_card_code_list\";'),('a76d145fcfb38db0126cd99cda83e36583da91ca','::1',1470562144,'__ci_last_regenerate|i:1470561963;requested_page|s:55:\"http://localhost/truytim/public/api/v1/redeem_card_code\";previous_page|s:55:\"http://localhost/truytim/public/api/v1/redeem_card_code\";'),('a83784db6b3f8fbdddfc213787e709c46fb8bc5f','::1',1470219194,'__ci_last_regenerate|i:1470219189;requested_page|s:55:\"http://localhost/truytim/public/admin/content/card_code\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;previous_page|s:55:\"http://localhost/truytim/public/admin/content/card_code\";language|s:7:\"english\";'),('ada821e7edf98e510d031021b5c739a291a694df','::1',1469025435,'__ci_last_regenerate|i:1469025255;user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;requested_page|s:65:\"http://localhost/truytim/public/index.php/admin/content/customers\";previous_page|s:65:\"http://localhost/truytim/public/index.php/admin/content/customers\";language|s:7:\"english\";message|s:0:\"\";__ci_vars|a:1:{s:7:\"message\";s:3:\"new\";}'),('b05e6fd788fc60868c90b6b0725a8a0837be7653','::1',1470406673,'__ci_last_regenerate|i:1470406657;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('b23e543abbb559b15ac85b8dcd7c19935a0aa534','::1',1470052179,'__ci_last_regenerate|i:1470052058;requested_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";previous_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";'),('b4b5d39d84cddbf4be03dd5613442625755eb015','::1',1469026177,'__ci_last_regenerate|i:1469025878;user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;requested_page|s:74:\"http://localhost/truytim/public/index.php/admin/content/customers/index/15\";previous_page|s:74:\"http://localhost/truytim/public/index.php/admin/content/customers/index/15\";language|s:7:\"english\";'),('b96967bb7bee269099c011e4d9183a20ca1be6eb','::1',1469638269,'__ci_last_regenerate|i:1469638047;requested_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/3\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";previous_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/3\";'),('ba19b3d05c5856907fa11bb81269ad6a19b04935','::1',1470414462,'__ci_last_regenerate|i:1470414169;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('bac0400eee5aa1c251b230e4b8760331358e5cbd','::1',1469026996,'__ci_last_regenerate|i:1469026984;user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;requested_page|s:63:\"http://localhost/truytim/public/index.php/admin/content/address\";previous_page|s:63:\"http://localhost/truytim/public/index.php/admin/content/address\";language|s:7:\"english\";'),('bf521efd539306ba75bb929f9e53f24dedb56e8b','::1',1470847785,'__ci_last_regenerate|i:1470847730;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('c28bcaf7ee7718489a0dd9abe206af55c6b082a2','::1',1470416620,'__ci_last_regenerate|i:1470416545;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('c4218a5c2bceafa7a858d33f221f942242afd689','::1',1470549266,'__ci_last_regenerate|i:1470549122;requested_page|s:45:\"http://localhost/truytim/public/admin/content\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;previous_page|s:45:\"http://localhost/truytim/public/admin/content\";language|s:7:\"english\";'),('cb1711eb293c93f7a84dd4ee771bac8124de8339','::1',1470123065,'__ci_last_regenerate|i:1470122950;requested_page|s:54:\"http://localhost/truytim/public/api/v1/deactivate_user\";previous_page|s:54:\"http://localhost/truytim/public/api/v1/deactivate_user\";'),('cf7f85677f8df0f80613719b97629e8a47d8c67b','::1',1470550638,'__ci_last_regenerate|i:1470550353;requested_page|s:49:\"http://localhost/truytim/public/api/v1/search_chu\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;previous_page|s:49:\"http://localhost/truytim/public/api/v1/search_chu\";language|s:7:\"english\";'),('d027b5dbc0e6a788300b50d92bbcebb01b9b0a9e','::1',1470389377,'__ci_last_regenerate|i:1470389126;requested_page|s:55:\"http://localhost/truytim/public/api/v1/submit_card_code\";previous_page|s:55:\"http://localhost/truytim/public/api/v1/submit_card_code\";'),('d17a5e79e56f8b9999090a06f94ade45848255be','::1',1470559531,'__ci_last_regenerate|i:1470559354;requested_page|s:55:\"http://localhost/truytim/public/api/v1/redeem_card_code\";previous_page|s:55:\"http://localhost/truytim/public/api/v1/redeem_card_code\";'),('d6f923a4faee43e30651440b8095141ddc1d8731','::1',1470112990,'__ci_last_regenerate|i:1470112872;requested_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;previous_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";language|s:7:\"english\";'),('dabde3a0da4ec8c00a7456b5663661db85b61e5a','::1',1470049374,'__ci_last_regenerate|i:1470049374;requested_page|s:60:\"http://localhost/truytim/public/api/v1/get_daily_puzzle_data\";previous_page|s:60:\"http://localhost/truytim/public/api/v1/get_daily_puzzle_data\";'),('dc2f556c070e5aa28f8845115c3f142a2a50317f','::1',1470057617,'__ci_last_regenerate|i:1470057593;requested_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";previous_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";'),('dd3bf472e9cb2a02e685feeba738aba734d7d653','::1',1469637333,'__ci_last_regenerate|i:1469637112;requested_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/6\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";previous_page|s:81:\"http://localhost/truytim/public/index.php/admin/developer/builder/create_module/6\";'),('de5aa93d86c2eec02c601484f865f5c900fe7ddb','::1',1470219943,'__ci_last_regenerate|i:1470219850;requested_page|s:57:\"http://localhost/truytim/public/api/v1/get_card_code_list\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;previous_page|s:57:\"http://localhost/truytim/public/api/v1/get_card_code_list\";language|s:7:\"english\";'),('e81c88ac36b518d3cc1aefe10cea6192c39d5990','::1',1469026179,'__ci_last_regenerate|i:1469026179;user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;requested_page|s:71:\"http://localhost/truytim/public/index.php/admin/content/customers/index\";previous_page|s:71:\"http://localhost/truytim/public/index.php/admin/content/customers/index\";language|s:7:\"english\";'),('e8f230aee2321d1626738ab1c06a25c6d6b7c6b3','::1',1469639807,'__ci_last_regenerate|i:1469639703;requested_page|s:55:\"http://localhost/truytim/public/index.php/admin/content\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";previous_page|s:55:\"http://localhost/truytim/public/index.php/admin/content\";'),('ec1797112b8241eb4da2b4479f488329c570af63','::1',1470111302,'__ci_last_regenerate|i:1470111182;requested_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;previous_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";language|s:7:\"english\";'),('ed61f98084381e244ca85334111c7c6ec70e3709','::1',1469029775,'__ci_last_regenerate|i:1469029539;requested_page|s:65:\"http://localhost/truytim/public/index.php/admin/content/customers\";previous_page|s:65:\"http://localhost/truytim/public/index.php/admin/content/customers\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";'),('ef5aee868e0536d9f2a2a8c8032103a54c4a3ffc','::1',1469031505,'__ci_last_regenerate|i:1469031232;requested_page|s:72:\"http://localhost/truytim/public/index.php/admin/content/customers/edit/1\";previous_page|s:72:\"http://localhost/truytim/public/index.php/admin/content/customers/edit/1\";user_id|s:1:\"1\";auth_custom|s:5:\"admin\";user_token|s:40:\"9ed24a9e10d9b6acc00135e0ab30931b1a6781d8\";identity|s:19:\"admin@mybonfire.com\";role_id|s:1:\"1\";logged_in|b:1;language|s:7:\"english\";'),('f72b862d00d6fcd46164ac96e3c9c2150b47d20a','::1',1470844459,'__ci_last_regenerate|i:1470844337;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('f8a2a91a0b7287b933219b3d83a9358bec5000a1','::1',1470411783,'__ci_last_regenerate|i:1470411783;requested_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";previous_page|s:48:\"http://localhost/truytim/public/api/v1/add_khach\";'),('fe9027e51e6e116c6e7e0ef800c31b0ba60f7405','::1',1470302960,'__ci_last_regenerate|i:1470302960;requested_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";previous_page|s:52:\"http://localhost/truytim/public/api/v1/activate_user\";');
/*!40000 ALTER TABLE `bf_ci3_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_countries`
--

DROP TABLE IF EXISTS `bf_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_countries` (
  `iso` char(2) NOT NULL DEFAULT 'US',
  `name` varchar(80) NOT NULL,
  `printable_name` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`iso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_countries`
--

LOCK TABLES `bf_countries` WRITE;
/*!40000 ALTER TABLE `bf_countries` DISABLE KEYS */;
INSERT INTO `bf_countries` VALUES ('AD','ANDORRA','Andorra','AND',20),('AE','UNITED ARAB EMIRATES','United Arab Emirates','ARE',784),('AF','AFGHANISTAN','Afghanistan','AFG',4),('AG','ANTIGUA AND BARBUDA','Antigua and Barbuda','ATG',28),('AI','ANGUILLA','Anguilla','AIA',660),('AL','ALBANIA','Albania','ALB',8),('AM','ARMENIA','Armenia','ARM',51),('AN','NETHERLANDS ANTILLES','Netherlands Antilles','ANT',530),('AO','ANGOLA','Angola','AGO',24),('AQ','ANTARCTICA','Antarctica',NULL,NULL),('AR','ARGENTINA','Argentina','ARG',32),('AS','AMERICAN SAMOA','American Samoa','ASM',16),('AT','AUSTRIA','Austria','AUT',40),('AU','AUSTRALIA','Australia','AUS',36),('AW','ARUBA','Aruba','ABW',533),('AZ','AZERBAIJAN','Azerbaijan','AZE',31),('BA','BOSNIA AND HERZEGOVINA','Bosnia and Herzegovina','BIH',70),('BB','BARBADOS','Barbados','BRB',52),('BD','BANGLADESH','Bangladesh','BGD',50),('BE','BELGIUM','Belgium','BEL',56),('BF','BURKINA FASO','Burkina Faso','BFA',854),('BG','BULGARIA','Bulgaria','BGR',100),('BH','BAHRAIN','Bahrain','BHR',48),('BI','BURUNDI','Burundi','BDI',108),('BJ','BENIN','Benin','BEN',204),('BM','BERMUDA','Bermuda','BMU',60),('BN','BRUNEI DARUSSALAM','Brunei Darussalam','BRN',96),('BO','BOLIVIA','Bolivia','BOL',68),('BR','BRAZIL','Brazil','BRA',76),('BS','BAHAMAS','Bahamas','BHS',44),('BT','BHUTAN','Bhutan','BTN',64),('BV','BOUVET ISLAND','Bouvet Island',NULL,NULL),('BW','BOTSWANA','Botswana','BWA',72),('BY','BELARUS','Belarus','BLR',112),('BZ','BELIZE','Belize','BLZ',84),('CA','CANADA','Canada','CAN',124),('CC','COCOS (KEELING) ISLANDS','Cocos (Keeling) Islands',NULL,NULL),('CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE','Congo, the Democratic Republic of the','COD',180),('CF','CENTRAL AFRICAN REPUBLIC','Central African Republic','CAF',140),('CG','CONGO','Congo','COG',178),('CH','SWITZERLAND','Switzerland','CHE',756),('CI','COTE D\'IVOIRE','Cote D\'Ivoire','CIV',384),('CK','COOK ISLANDS','Cook Islands','COK',184),('CL','CHILE','Chile','CHL',152),('CM','CAMEROON','Cameroon','CMR',120),('CN','CHINA','China','CHN',156),('CO','COLOMBIA','Colombia','COL',170),('CR','COSTA RICA','Costa Rica','CRI',188),('CS','SERBIA AND MONTENEGRO','Serbia and Montenegro',NULL,NULL),('CU','CUBA','Cuba','CUB',192),('CV','CAPE VERDE','Cape Verde','CPV',132),('CX','CHRISTMAS ISLAND','Christmas Island',NULL,NULL),('CY','CYPRUS','Cyprus','CYP',196),('CZ','CZECH REPUBLIC','Czech Republic','CZE',203),('DE','GERMANY','Germany','DEU',276),('DJ','DJIBOUTI','Djibouti','DJI',262),('DK','DENMARK','Denmark','DNK',208),('DM','DOMINICA','Dominica','DMA',212),('DO','DOMINICAN REPUBLIC','Dominican Republic','DOM',214),('DZ','ALGERIA','Algeria','DZA',12),('EC','ECUADOR','Ecuador','ECU',218),('EE','ESTONIA','Estonia','EST',233),('EG','EGYPT','Egypt','EGY',818),('EH','WESTERN SAHARA','Western Sahara','ESH',732),('ER','ERITREA','Eritrea','ERI',232),('ES','SPAIN','Spain','ESP',724),('ET','ETHIOPIA','Ethiopia','ETH',231),('FI','FINLAND','Finland','FIN',246),('FJ','FIJI','Fiji','FJI',242),('FK','FALKLAND ISLANDS (MALVINAS)','Falkland Islands (Malvinas)','FLK',238),('FM','MICRONESIA, FEDERATED STATES OF','Micronesia, Federated States of','FSM',583),('FO','FAROE ISLANDS','Faroe Islands','FRO',234),('FR','FRANCE','France','FRA',250),('GA','GABON','Gabon','GAB',266),('GB','UNITED KINGDOM','United Kingdom','GBR',826),('GD','GRENADA','Grenada','GRD',308),('GE','GEORGIA','Georgia','GEO',268),('GF','FRENCH GUIANA','French Guiana','GUF',254),('GH','GHANA','Ghana','GHA',288),('GI','GIBRALTAR','Gibraltar','GIB',292),('GL','GREENLAND','Greenland','GRL',304),('GM','GAMBIA','Gambia','GMB',270),('GN','GUINEA','Guinea','GIN',324),('GP','GUADELOUPE','Guadeloupe','GLP',312),('GQ','EQUATORIAL GUINEA','Equatorial Guinea','GNQ',226),('GR','GREECE','Greece','GRC',300),('GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','South Georgia and the South Sandwich Islands',NULL,NULL),('GT','GUATEMALA','Guatemala','GTM',320),('GU','GUAM','Guam','GUM',316),('GW','GUINEA-BISSAU','Guinea-Bissau','GNB',624),('GY','GUYANA','Guyana','GUY',328),('HK','HONG KONG','Hong Kong','HKG',344),('HM','HEARD ISLAND AND MCDONALD ISLANDS','Heard Island and Mcdonald Islands',NULL,NULL),('HN','HONDURAS','Honduras','HND',340),('HR','CROATIA','Croatia','HRV',191),('HT','HAITI','Haiti','HTI',332),('HU','HUNGARY','Hungary','HUN',348),('ID','INDONESIA','Indonesia','IDN',360),('IE','IRELAND','Ireland','IRL',372),('IL','ISRAEL','Israel','ISR',376),('IN','INDIA','India','IND',356),('IO','BRITISH INDIAN OCEAN TERRITORY','British Indian Ocean Territory',NULL,NULL),('IQ','IRAQ','Iraq','IRQ',368),('IR','IRAN, ISLAMIC REPUBLIC OF','Iran, Islamic Republic of','IRN',364),('IS','ICELAND','Iceland','ISL',352),('IT','ITALY','Italy','ITA',380),('JM','JAMAICA','Jamaica','JAM',388),('JO','JORDAN','Jordan','JOR',400),('JP','JAPAN','Japan','JPN',392),('KE','KENYA','Kenya','KEN',404),('KG','KYRGYZSTAN','Kyrgyzstan','KGZ',417),('KH','CAMBODIA','Cambodia','KHM',116),('KI','KIRIBATI','Kiribati','KIR',296),('KM','COMOROS','Comoros','COM',174),('KN','SAINT KITTS AND NEVIS','Saint Kitts and Nevis','KNA',659),('KP','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','Korea, Democratic People\'s Republic of','PRK',408),('KR','KOREA, REPUBLIC OF','Korea, Republic of','KOR',410),('KW','KUWAIT','Kuwait','KWT',414),('KY','CAYMAN ISLANDS','Cayman Islands','CYM',136),('KZ','KAZAKHSTAN','Kazakhstan','KAZ',398),('LA','LAO PEOPLE\'S DEMOCRATIC REPUBLIC','Lao People\'s Democratic Republic','LAO',418),('LB','LEBANON','Lebanon','LBN',422),('LC','SAINT LUCIA','Saint Lucia','LCA',662),('LI','LIECHTENSTEIN','Liechtenstein','LIE',438),('LK','SRI LANKA','Sri Lanka','LKA',144),('LR','LIBERIA','Liberia','LBR',430),('LS','LESOTHO','Lesotho','LSO',426),('LT','LITHUANIA','Lithuania','LTU',440),('LU','LUXEMBOURG','Luxembourg','LUX',442),('LV','LATVIA','Latvia','LVA',428),('LY','LIBYAN ARAB JAMAHIRIYA','Libyan Arab Jamahiriya','LBY',434),('MA','MOROCCO','Morocco','MAR',504),('MC','MONACO','Monaco','MCO',492),('MD','MOLDOVA, REPUBLIC OF','Moldova, Republic of','MDA',498),('MG','MADAGASCAR','Madagascar','MDG',450),('MH','MARSHALL ISLANDS','Marshall Islands','MHL',584),('MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','Macedonia, the Former Yugoslav Republic of','MKD',807),('ML','MALI','Mali','MLI',466),('MM','MYANMAR','Myanmar','MMR',104),('MN','MONGOLIA','Mongolia','MNG',496),('MO','MACAO','Macao','MAC',446),('MP','NORTHERN MARIANA ISLANDS','Northern Mariana Islands','MNP',580),('MQ','MARTINIQUE','Martinique','MTQ',474),('MR','MAURITANIA','Mauritania','MRT',478),('MS','MONTSERRAT','Montserrat','MSR',500),('MT','MALTA','Malta','MLT',470),('MU','MAURITIUS','Mauritius','MUS',480),('MV','MALDIVES','Maldives','MDV',462),('MW','MALAWI','Malawi','MWI',454),('MX','MEXICO','Mexico','MEX',484),('MY','MALAYSIA','Malaysia','MYS',458),('MZ','MOZAMBIQUE','Mozambique','MOZ',508),('NA','NAMIBIA','Namibia','NAM',516),('NC','NEW CALEDONIA','New Caledonia','NCL',540),('NE','NIGER','Niger','NER',562),('NF','NORFOLK ISLAND','Norfolk Island','NFK',574),('NG','NIGERIA','Nigeria','NGA',566),('NI','NICARAGUA','Nicaragua','NIC',558),('NL','NETHERLANDS','Netherlands','NLD',528),('NO','NORWAY','Norway','NOR',578),('NP','NEPAL','Nepal','NPL',524),('NR','NAURU','Nauru','NRU',520),('NU','NIUE','Niue','NIU',570),('NZ','NEW ZEALAND','New Zealand','NZL',554),('OM','OMAN','Oman','OMN',512),('PA','PANAMA','Panama','PAN',591),('PE','PERU','Peru','PER',604),('PF','FRENCH POLYNESIA','French Polynesia','PYF',258),('PG','PAPUA NEW GUINEA','Papua New Guinea','PNG',598),('PH','PHILIPPINES','Philippines','PHL',608),('PK','PAKISTAN','Pakistan','PAK',586),('PL','POLAND','Poland','POL',616),('PM','SAINT PIERRE AND MIQUELON','Saint Pierre and Miquelon','SPM',666),('PN','PITCAIRN','Pitcairn','PCN',612),('PR','PUERTO RICO','Puerto Rico','PRI',630),('PS','PALESTINIAN TERRITORY, OCCUPIED','Palestinian Territory, Occupied',NULL,NULL),('PT','PORTUGAL','Portugal','PRT',620),('PW','PALAU','Palau','PLW',585),('PY','PARAGUAY','Paraguay','PRY',600),('QA','QATAR','Qatar','QAT',634),('RE','REUNION','Reunion','REU',638),('RO','ROMANIA','Romania','ROM',642),('RU','RUSSIAN FEDERATION','Russian Federation','RUS',643),('RW','RWANDA','Rwanda','RWA',646),('SA','SAUDI ARABIA','Saudi Arabia','SAU',682),('SB','SOLOMON ISLANDS','Solomon Islands','SLB',90),('SC','SEYCHELLES','Seychelles','SYC',690),('SD','SUDAN','Sudan','SDN',736),('SE','SWEDEN','Sweden','SWE',752),('SG','SINGAPORE','Singapore','SGP',702),('SH','SAINT HELENA','Saint Helena','SHN',654),('SI','SLOVENIA','Slovenia','SVN',705),('SJ','SVALBARD AND JAN MAYEN','Svalbard and Jan Mayen','SJM',744),('SK','SLOVAKIA','Slovakia','SVK',703),('SL','SIERRA LEONE','Sierra Leone','SLE',694),('SM','SAN MARINO','San Marino','SMR',674),('SN','SENEGAL','Senegal','SEN',686),('SO','SOMALIA','Somalia','SOM',706),('SR','SURINAME','Suriname','SUR',740),('ST','SAO TOME AND PRINCIPE','Sao Tome and Principe','STP',678),('SV','EL SALVADOR','El Salvador','SLV',222),('SY','SYRIAN ARAB REPUBLIC','Syrian Arab Republic','SYR',760),('SZ','SWAZILAND','Swaziland','SWZ',748),('TC','TURKS AND CAICOS ISLANDS','Turks and Caicos Islands','TCA',796),('TD','CHAD','Chad','TCD',148),('TF','FRENCH SOUTHERN TERRITORIES','French Southern Territories',NULL,NULL),('TG','TOGO','Togo','TGO',768),('TH','THAILAND','Thailand','THA',764),('TJ','TAJIKISTAN','Tajikistan','TJK',762),('TK','TOKELAU','Tokelau','TKL',772),('TL','TIMOR-LESTE','Timor-Leste',NULL,NULL),('TM','TURKMENISTAN','Turkmenistan','TKM',795),('TN','TUNISIA','Tunisia','TUN',788),('TO','TONGA','Tonga','TON',776),('TR','TURKEY','Turkey','TUR',792),('TT','TRINIDAD AND TOBAGO','Trinidad and Tobago','TTO',780),('TV','TUVALU','Tuvalu','TUV',798),('TW','TAIWAN, PROVINCE OF CHINA','Taiwan, Province of China','TWN',158),('TZ','TANZANIA, UNITED REPUBLIC OF','Tanzania, United Republic of','TZA',834),('UA','UKRAINE','Ukraine','UKR',804),('UG','UGANDA','Uganda','UGA',800),('UM','UNITED STATES MINOR OUTLYING ISLANDS','United States Minor Outlying Islands',NULL,NULL),('US','UNITED STATES','United States','USA',840),('UY','URUGUAY','Uruguay','URY',858),('UZ','UZBEKISTAN','Uzbekistan','UZB',860),('VA','HOLY SEE (VATICAN CITY STATE)','Holy See (Vatican City State)','VAT',336),('VC','SAINT VINCENT AND THE GRENADINES','Saint Vincent and the Grenadines','VCT',670),('VE','VENEZUELA','Venezuela','VEN',862),('VG','VIRGIN ISLANDS, BRITISH','Virgin Islands, British','VGB',92),('VI','VIRGIN ISLANDS, U.S.','Virgin Islands, U.s.','VIR',850),('VN','VIET NAM','Viet Nam','VNM',704),('VU','VANUATU','Vanuatu','VUT',548),('WF','WALLIS AND FUTUNA','Wallis and Futuna','WLF',876),('WS','SAMOA','Samoa','WSM',882),('YE','YEMEN','Yemen','YEM',887),('YT','MAYOTTE','Mayotte',NULL,NULL),('ZA','SOUTH AFRICA','South Africa','ZAF',710),('ZM','ZAMBIA','Zambia','ZMB',894),('ZW','ZIMBABWE','Zimbabwe','ZWE',716);
/*!40000 ALTER TABLE `bf_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_diachi_khach`
--

DROP TABLE IF EXISTS `bf_diachi_khach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_diachi_khach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `khach_id` bigint(20) DEFAULT NULL,
  `chu_id` bigint(20) DEFAULT NULL,
  `diachi` text,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) DEFAULT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_diachi_khach`
--

LOCK TABLES `bf_diachi_khach` WRITE;
/*!40000 ALTER TABLE `bf_diachi_khach` DISABLE KEYS */;
INSERT INTO `bf_diachi_khach` VALUES (1,17,2,'ngoc',0,NULL,'2016-08-05 18:30:30',NULL,'0000-00-00 00:00:00',NULL),(2,17,2,'tuan',0,NULL,'2016-08-05 18:30:30',NULL,'0000-00-00 00:00:00',NULL),(3,18,2,'ngoc',0,NULL,'2016-08-05 19:02:25',NULL,'0000-00-00 00:00:00',NULL),(4,18,2,'tuan',0,NULL,'2016-08-05 19:02:25',NULL,'0000-00-00 00:00:00',NULL),(5,19,2,'ngoc',0,NULL,'2016-08-05 19:03:12',NULL,'0000-00-00 00:00:00',NULL),(6,19,2,'tuan',0,NULL,'2016-08-05 19:03:12',NULL,'0000-00-00 00:00:00',NULL),(7,20,2,'ngoc',0,NULL,'2016-08-05 19:03:40',NULL,'0000-00-00 00:00:00',NULL),(8,20,2,'tuan',0,NULL,'2016-08-05 19:03:40',NULL,'0000-00-00 00:00:00',NULL),(9,21,2,'1223',0,NULL,'2016-08-09 18:31:15',NULL,'0000-00-00 00:00:00',NULL),(10,21,2,'34124',0,NULL,'2016-08-09 18:31:15',NULL,'0000-00-00 00:00:00',NULL),(11,23,2,'n',0,NULL,'2016-08-10 16:46:19',NULL,'0000-00-00 00:00:00',NULL),(12,23,2,'i',0,NULL,'2016-08-10 16:46:20',NULL,'0000-00-00 00:00:00',NULL),(13,24,2,'ngoc',0,NULL,'2016-08-10 16:49:23',NULL,'0000-00-00 00:00:00',NULL),(14,24,2,'bich',0,NULL,'2016-08-10 16:49:23',NULL,'0000-00-00 00:00:00',NULL),(15,25,2,'ngoc',0,NULL,'2016-08-10 16:50:27',NULL,'0000-00-00 00:00:00',NULL),(16,25,2,'bich',0,NULL,'2016-08-10 16:50:27',NULL,'0000-00-00 00:00:00',NULL),(17,26,2,'ngoc',0,NULL,'2016-08-10 16:50:45',NULL,'0000-00-00 00:00:00',NULL),(18,26,2,'bich',0,NULL,'2016-08-10 16:50:45',NULL,'0000-00-00 00:00:00',NULL),(19,27,2,'ngoc',0,NULL,'2016-08-10 18:37:57',NULL,'0000-00-00 00:00:00',NULL),(20,27,2,'bich',0,NULL,'2016-08-10 18:37:57',NULL,'0000-00-00 00:00:00',NULL),(21,28,2,'ngoc',0,NULL,'2016-08-10 18:38:30',NULL,'0000-00-00 00:00:00',NULL),(22,28,2,'bich',0,NULL,'2016-08-10 18:38:30',NULL,'0000-00-00 00:00:00',NULL),(23,29,2,'ngoc',0,NULL,'2016-08-10 18:42:07',NULL,'0000-00-00 00:00:00',NULL),(24,29,2,'bich',0,NULL,'2016-08-10 18:42:07',NULL,'0000-00-00 00:00:00',NULL),(25,30,2,'ngoc',0,NULL,'2016-08-10 18:42:26',NULL,'0000-00-00 00:00:00',NULL),(26,30,2,'bich',0,NULL,'2016-08-10 18:42:26',NULL,'0000-00-00 00:00:00',NULL),(27,31,2,'ngoc',0,NULL,'2016-08-10 18:43:25',NULL,'0000-00-00 00:00:00',NULL),(28,31,2,'bich',0,NULL,'2016-08-10 18:43:25',NULL,'0000-00-00 00:00:00',NULL),(29,32,2,'ngoc',0,NULL,'2016-08-10 18:43:55',NULL,'0000-00-00 00:00:00',NULL),(30,32,2,'bich',0,NULL,'2016-08-10 18:43:55',NULL,'0000-00-00 00:00:00',NULL),(31,33,2,'ngoc',0,NULL,'2016-08-10 18:45:59',NULL,'0000-00-00 00:00:00',NULL),(32,33,2,'bich',0,NULL,'2016-08-10 18:45:59',NULL,'0000-00-00 00:00:00',NULL),(33,34,2,'ngoc',0,NULL,'2016-08-10 18:46:48',NULL,'0000-00-00 00:00:00',NULL),(34,34,2,'bich',0,NULL,'2016-08-10 18:46:48',NULL,'0000-00-00 00:00:00',NULL),(35,35,2,'ngoc',0,NULL,'2016-08-10 18:47:20',NULL,'0000-00-00 00:00:00',NULL),(36,35,2,'bich',0,NULL,'2016-08-10 18:47:20',NULL,'0000-00-00 00:00:00',NULL),(37,36,2,'ngoc',0,NULL,'2016-08-10 18:47:51',NULL,'0000-00-00 00:00:00',NULL),(38,36,2,'bich',0,NULL,'2016-08-10 18:47:51',NULL,'0000-00-00 00:00:00',NULL),(39,37,2,'ngoc',0,NULL,'2016-08-10 18:48:50',NULL,'0000-00-00 00:00:00',NULL),(40,37,2,'bich',0,NULL,'2016-08-10 18:48:50',NULL,'0000-00-00 00:00:00',NULL),(41,38,2,'ngoc',0,NULL,'2016-08-10 18:49:35',NULL,'0000-00-00 00:00:00',NULL),(42,38,2,'bich',0,NULL,'2016-08-10 18:49:35',NULL,'0000-00-00 00:00:00',NULL),(43,39,2,'ngoc',0,NULL,'2016-08-10 18:49:45',NULL,'0000-00-00 00:00:00',NULL),(44,39,2,'bich',0,NULL,'2016-08-10 18:49:45',NULL,'0000-00-00 00:00:00',NULL),(45,40,2,'ngoc',0,NULL,'2016-08-10 18:55:53',NULL,'0000-00-00 00:00:00',NULL),(46,40,2,'bich',0,NULL,'2016-08-10 18:55:53',NULL,'0000-00-00 00:00:00',NULL),(47,41,2,'ngoc',0,NULL,'2016-08-10 18:56:19',NULL,'0000-00-00 00:00:00',NULL),(48,41,2,'bich',0,NULL,'2016-08-10 18:56:19',NULL,'0000-00-00 00:00:00',NULL),(49,42,2,'ngoc',0,NULL,'2016-08-10 18:57:16',NULL,'0000-00-00 00:00:00',NULL),(50,42,2,'bich',0,NULL,'2016-08-10 18:57:16',NULL,'0000-00-00 00:00:00',NULL),(51,43,2,'ngoc',0,NULL,'2016-08-10 18:57:28',NULL,'0000-00-00 00:00:00',NULL),(52,43,2,'bich',0,NULL,'2016-08-10 18:57:28',NULL,'0000-00-00 00:00:00',NULL),(53,49,2,'1223',0,NULL,'2016-08-10 19:21:07',NULL,'0000-00-00 00:00:00',NULL),(54,49,2,'34124',0,NULL,'2016-08-10 19:21:07',NULL,'0000-00-00 00:00:00',NULL),(55,54,2,'1223',0,NULL,'2016-08-10 19:27:42',NULL,'0000-00-00 00:00:00',NULL),(56,54,2,'34124',0,NULL,'2016-08-10 19:27:42',NULL,'0000-00-00 00:00:00',NULL),(57,60,2,'aasdf asdfasdf asdf',0,NULL,'2016-08-10 19:32:37',NULL,'0000-00-00 00:00:00',NULL),(58,60,2,'asdfasdfasdf',0,NULL,'2016-08-10 19:32:37',NULL,'0000-00-00 00:00:00',NULL),(59,61,2,'aasdf asdfasdf asdf',0,NULL,'2016-08-10 19:33:32',NULL,'0000-00-00 00:00:00',NULL),(60,61,2,'asdfasdfasdf',0,NULL,'2016-08-10 19:33:32',NULL,'0000-00-00 00:00:00',NULL),(61,62,2,'aasdf asdfasdf asdf',0,NULL,'2016-08-10 19:34:36',NULL,'0000-00-00 00:00:00',NULL),(62,62,2,'asdfasdfasdf',0,NULL,'2016-08-10 19:34:37',NULL,'0000-00-00 00:00:00',NULL),(63,63,2,'aasdf asdfasdf asdf',0,NULL,'2016-08-10 19:35:14',NULL,'0000-00-00 00:00:00',NULL),(64,63,2,'asdfasdfasdf',0,NULL,'2016-08-10 19:35:14',NULL,'0000-00-00 00:00:00',NULL),(65,64,2,'aasdf asdfasdf asdf',0,NULL,'2016-08-10 19:35:24',NULL,'0000-00-00 00:00:00',NULL),(66,64,2,'asdfasdfasdf',0,NULL,'2016-08-10 19:35:24',NULL,'0000-00-00 00:00:00',NULL),(67,65,2,'aasdf asdfasdf asdf',0,NULL,'2016-08-10 19:35:45',NULL,'0000-00-00 00:00:00',NULL),(68,65,2,'asdfasdfasdf',0,NULL,'2016-08-10 19:35:45',NULL,'0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `bf_diachi_khach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_email_queue`
--

DROP TABLE IF EXISTS `bf_email_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_email_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_email` varchar(254) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `alt_message` text,
  `max_attempts` int(11) NOT NULL DEFAULT '3',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `success` tinyint(1) NOT NULL DEFAULT '0',
  `date_published` datetime DEFAULT NULL,
  `last_attempt` datetime DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `csv_attachment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_email_queue`
--

LOCK TABLES `bf_email_queue` WRITE;
/*!40000 ALTER TABLE `bf_email_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_email_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_ghichu_khach`
--

DROP TABLE IF EXISTS `bf_ghichu_khach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_ghichu_khach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `khach_id` bigint(20) DEFAULT NULL,
  `chu_id` bigint(20) DEFAULT NULL,
  `ghichu` text,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) DEFAULT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_ghichu_khach`
--

LOCK TABLES `bf_ghichu_khach` WRITE;
/*!40000 ALTER TABLE `bf_ghichu_khach` DISABLE KEYS */;
INSERT INTO `bf_ghichu_khach` VALUES (1,19,2,'ngoc',0,NULL,'2016-08-05 19:03:12',NULL,'0000-00-00 00:00:00',NULL),(2,19,2,'tuan',0,NULL,'2016-08-05 19:03:12',NULL,'0000-00-00 00:00:00',NULL),(3,20,2,'ngoc',0,NULL,'2016-08-05 19:03:40',NULL,'0000-00-00 00:00:00',NULL),(4,20,2,'tuan',0,NULL,'2016-08-05 19:03:40',NULL,'0000-00-00 00:00:00',NULL),(5,21,2,NULL,0,NULL,'2016-08-09 18:31:15',NULL,'0000-00-00 00:00:00',NULL),(6,21,2,NULL,0,NULL,'2016-08-09 18:31:15',NULL,'0000-00-00 00:00:00',NULL),(7,49,2,NULL,0,NULL,'2016-08-10 19:21:07',NULL,'0000-00-00 00:00:00',NULL),(8,49,2,NULL,0,NULL,'2016-08-10 19:21:07',NULL,'0000-00-00 00:00:00',NULL),(9,54,2,NULL,0,NULL,'2016-08-10 19:27:42',NULL,'0000-00-00 00:00:00',NULL),(10,54,2,NULL,0,NULL,'2016-08-10 19:27:42',NULL,'0000-00-00 00:00:00',NULL),(11,63,2,'1223',0,NULL,'2016-08-10 19:35:14',NULL,'0000-00-00 00:00:00',NULL),(12,63,2,'34124',0,NULL,'2016-08-10 19:35:14',NULL,'0000-00-00 00:00:00',NULL),(13,64,2,'1223',0,NULL,'2016-08-10 19:35:24',NULL,'0000-00-00 00:00:00',NULL),(14,64,2,'34124',0,NULL,'2016-08-10 19:35:24',NULL,'0000-00-00 00:00:00',NULL),(15,65,2,'1223',0,NULL,'2016-08-10 19:35:45',NULL,'0000-00-00 00:00:00',NULL),(16,65,2,'34124',0,NULL,'2016-08-10 19:35:45',NULL,'0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `bf_ghichu_khach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_giayto`
--

DROP TABLE IF EXISTS `bf_giayto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_giayto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loai` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_giayto`
--

LOCK TABLES `bf_giayto` WRITE;
/*!40000 ALTER TABLE `bf_giayto` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_giayto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_giayto_image`
--

DROP TABLE IF EXISTS `bf_giayto_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_giayto_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `giayto_id` bigint(20) DEFAULT NULL,
  `path` varchar(500) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_giayto_image`
--

LOCK TABLES `bf_giayto_image` WRITE;
/*!40000 ALTER TABLE `bf_giayto_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_giayto_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_giayto_khach`
--

DROP TABLE IF EXISTS `bf_giayto_khach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_giayto_khach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `khach_id` bigint(20) NOT NULL,
  `giayto_id` bigint(20) DEFAULT NULL,
  `maso` varchar(255) DEFAULT NULL,
  `chu_id` bigint(20) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) DEFAULT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_giayto_khach`
--

LOCK TABLES `bf_giayto_khach` WRITE;
/*!40000 ALTER TABLE `bf_giayto_khach` DISABLE KEYS */;
INSERT INTO `bf_giayto_khach` VALUES (1,15,1,'ngoc',2,0,NULL,'2016-08-05 18:27:42',NULL,'0000-00-00 00:00:00',NULL),(2,15,2,'tuan',2,0,NULL,'2016-08-05 18:27:42',NULL,'0000-00-00 00:00:00',NULL),(3,16,1,'ngoc',2,0,NULL,'2016-08-05 18:30:05',NULL,'0000-00-00 00:00:00',NULL),(4,16,2,'tuan',2,0,NULL,'2016-08-05 18:30:05',NULL,'0000-00-00 00:00:00',NULL),(5,17,1,'ngoc',2,0,NULL,'2016-08-05 18:30:30',NULL,'0000-00-00 00:00:00',NULL),(6,17,2,'tuan',2,0,NULL,'2016-08-05 18:30:30',NULL,'0000-00-00 00:00:00',NULL),(7,18,1,'ngoc',2,0,NULL,'2016-08-05 19:02:25',NULL,'0000-00-00 00:00:00',NULL),(8,18,2,'tuan',2,0,NULL,'2016-08-05 19:02:25',NULL,'0000-00-00 00:00:00',NULL),(9,19,1,'ngoc',2,0,NULL,'2016-08-05 19:03:12',NULL,'0000-00-00 00:00:00',NULL),(10,19,2,'tuan',2,0,NULL,'2016-08-05 19:03:12',NULL,'0000-00-00 00:00:00',NULL),(11,20,1,'ngoc',2,0,NULL,'2016-08-05 19:03:40',NULL,'0000-00-00 00:00:00',NULL),(12,20,2,'tuan',2,0,NULL,'2016-08-05 19:03:40',NULL,'0000-00-00 00:00:00',NULL),(13,21,1,'asdfasdgasfd',2,0,NULL,'2016-08-09 18:31:15',NULL,'0000-00-00 00:00:00',NULL),(14,21,2,'asdfasdgasfd',2,0,NULL,'2016-08-09 18:31:15',NULL,'0000-00-00 00:00:00',NULL),(15,23,1,'1324613465',2,0,NULL,'2016-08-10 16:46:19',NULL,'0000-00-00 00:00:00',NULL),(16,23,3,'465348',2,0,NULL,'2016-08-10 16:46:19',NULL,'0000-00-00 00:00:00',NULL),(17,24,1,'1324613465',2,0,NULL,'2016-08-10 16:49:23',NULL,'0000-00-00 00:00:00',NULL),(18,24,3,'465348',2,0,NULL,'2016-08-10 16:49:23',NULL,'0000-00-00 00:00:00',NULL),(19,25,1,'1324613465',2,0,NULL,'2016-08-10 16:50:27',NULL,'0000-00-00 00:00:00',NULL),(20,25,3,'465348',2,0,NULL,'2016-08-10 16:50:27',NULL,'0000-00-00 00:00:00',NULL),(21,26,1,'1324613465',2,0,NULL,'2016-08-10 16:50:45',NULL,'0000-00-00 00:00:00',NULL),(22,26,3,'465348',2,0,NULL,'2016-08-10 16:50:45',NULL,'0000-00-00 00:00:00',NULL),(23,27,1,'1324613465',2,0,NULL,'2016-08-10 18:37:57',NULL,'0000-00-00 00:00:00',NULL),(24,27,3,'465348',2,0,NULL,'2016-08-10 18:37:57',NULL,'0000-00-00 00:00:00',NULL),(25,28,1,'1324613465',2,0,NULL,'2016-08-10 18:38:29',NULL,'0000-00-00 00:00:00',NULL),(26,28,3,'465348',2,0,NULL,'2016-08-10 18:38:29',NULL,'0000-00-00 00:00:00',NULL),(27,29,1,'1324613465',2,0,NULL,'2016-08-10 18:42:07',NULL,'0000-00-00 00:00:00',NULL),(28,29,3,'465348',2,0,NULL,'2016-08-10 18:42:07',NULL,'0000-00-00 00:00:00',NULL),(29,30,1,'1324613465',2,0,NULL,'2016-08-10 18:42:25',NULL,'0000-00-00 00:00:00',NULL),(30,30,3,'465348',2,0,NULL,'2016-08-10 18:42:25',NULL,'0000-00-00 00:00:00',NULL),(31,31,1,'1324613465',2,0,NULL,'2016-08-10 18:43:25',NULL,'0000-00-00 00:00:00',NULL),(32,31,3,'465348',2,0,NULL,'2016-08-10 18:43:25',NULL,'0000-00-00 00:00:00',NULL),(33,32,1,'1324613465',2,0,NULL,'2016-08-10 18:43:55',NULL,'0000-00-00 00:00:00',NULL),(34,32,3,'465348',2,0,NULL,'2016-08-10 18:43:55',NULL,'0000-00-00 00:00:00',NULL),(35,33,1,'1324613465',2,0,NULL,'2016-08-10 18:45:59',NULL,'0000-00-00 00:00:00',NULL),(36,33,3,'465348',2,0,NULL,'2016-08-10 18:45:59',NULL,'0000-00-00 00:00:00',NULL),(37,34,1,'1324613465',2,0,NULL,'2016-08-10 18:46:48',NULL,'0000-00-00 00:00:00',NULL),(38,34,3,'465348',2,0,NULL,'2016-08-10 18:46:48',NULL,'0000-00-00 00:00:00',NULL),(39,35,1,'1324613465',2,0,NULL,'2016-08-10 18:47:19',NULL,'0000-00-00 00:00:00',NULL),(40,35,3,'465348',2,0,NULL,'2016-08-10 18:47:19',NULL,'0000-00-00 00:00:00',NULL),(41,36,1,'1324613465',2,0,NULL,'2016-08-10 18:47:51',NULL,'0000-00-00 00:00:00',NULL),(42,36,3,'465348',2,0,NULL,'2016-08-10 18:47:51',NULL,'0000-00-00 00:00:00',NULL),(43,37,1,'1324613465',2,0,NULL,'2016-08-10 18:48:50',NULL,'0000-00-00 00:00:00',NULL),(44,37,3,'465348',2,0,NULL,'2016-08-10 18:48:50',NULL,'0000-00-00 00:00:00',NULL),(45,38,1,'1324613465',2,0,NULL,'2016-08-10 18:49:35',NULL,'0000-00-00 00:00:00',NULL),(46,38,3,'465348',2,0,NULL,'2016-08-10 18:49:35',NULL,'0000-00-00 00:00:00',NULL),(47,39,1,'1324613465',2,0,NULL,'2016-08-10 18:49:45',NULL,'0000-00-00 00:00:00',NULL),(48,39,3,'465348',2,0,NULL,'2016-08-10 18:49:45',NULL,'0000-00-00 00:00:00',NULL),(49,40,1,'1324613465',2,0,NULL,'2016-08-10 18:55:53',NULL,'0000-00-00 00:00:00',NULL),(50,40,3,'465348',2,0,NULL,'2016-08-10 18:55:53',NULL,'0000-00-00 00:00:00',NULL),(51,41,1,'1324613465',2,0,NULL,'2016-08-10 18:56:19',NULL,'0000-00-00 00:00:00',NULL),(52,41,3,'465348',2,0,NULL,'2016-08-10 18:56:19',NULL,'0000-00-00 00:00:00',NULL),(53,42,1,'1324613465',2,0,NULL,'2016-08-10 18:57:16',NULL,'0000-00-00 00:00:00',NULL),(54,42,3,'465348',2,0,NULL,'2016-08-10 18:57:16',NULL,'0000-00-00 00:00:00',NULL),(55,43,1,'1324613465',2,0,NULL,'2016-08-10 18:57:28',NULL,'0000-00-00 00:00:00',NULL),(56,43,3,'465348',2,0,NULL,'2016-08-10 18:57:28',NULL,'0000-00-00 00:00:00',NULL),(57,48,1,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:20:50',NULL,'0000-00-00 00:00:00',NULL),(58,48,2,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:20:50',NULL,'0000-00-00 00:00:00',NULL),(59,49,1,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:21:07',NULL,'0000-00-00 00:00:00',NULL),(60,49,2,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:21:07',NULL,'0000-00-00 00:00:00',NULL),(61,54,1,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:27:42',NULL,'0000-00-00 00:00:00',NULL),(62,54,2,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:27:42',NULL,'0000-00-00 00:00:00',NULL),(63,58,1,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:31:33',NULL,'0000-00-00 00:00:00',NULL),(64,58,2,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:31:33',NULL,'0000-00-00 00:00:00',NULL),(65,59,1,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:31:48',NULL,'0000-00-00 00:00:00',NULL),(66,59,2,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:31:48',NULL,'0000-00-00 00:00:00',NULL),(67,60,1,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:32:37',NULL,'0000-00-00 00:00:00',NULL),(68,60,2,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:32:37',NULL,'0000-00-00 00:00:00',NULL),(69,61,1,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:33:32',NULL,'0000-00-00 00:00:00',NULL),(70,61,2,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:33:32',NULL,'0000-00-00 00:00:00',NULL),(71,62,1,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:34:36',NULL,'0000-00-00 00:00:00',NULL),(72,62,2,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:34:36',NULL,'0000-00-00 00:00:00',NULL),(73,63,1,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:35:14',NULL,'0000-00-00 00:00:00',NULL),(74,63,2,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:35:14',NULL,'0000-00-00 00:00:00',NULL),(75,64,1,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:35:24',NULL,'0000-00-00 00:00:00',NULL),(76,64,2,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:35:24',NULL,'0000-00-00 00:00:00',NULL),(77,65,1,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:35:45',NULL,'0000-00-00 00:00:00',NULL),(78,65,2,'asdfasdgasfd',2,0,NULL,'2016-08-10 19:35:45',NULL,'0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `bf_giayto_khach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_image_khach`
--

DROP TABLE IF EXISTS `bf_image_khach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_image_khach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `khach_id` bigint(20) DEFAULT NULL,
  `chu_id` bigint(20) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `profile` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) DEFAULT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_image_khach`
--

LOCK TABLES `bf_image_khach` WRITE;
/*!40000 ALTER TABLE `bf_image_khach` DISABLE KEYS */;
INSERT INTO `bf_image_khach` VALUES (1,42,2,'../userdata/2/fa7f94368d2495535cf3160010a8ba22.gif',1,0,NULL,'2016-08-10 18:57:16',NULL,'0000-00-00 00:00:00',NULL),(2,42,2,'../userdata/2/4fd3f46ad9449b81548065e316fad808.gif',0,0,NULL,'2016-08-10 18:57:16',NULL,'0000-00-00 00:00:00',NULL),(3,43,2,'../userdata/2/6e9bdb089a8ddc1cd3981daa3724f97a.gif',1,0,NULL,'2016-08-10 18:57:28',NULL,'0000-00-00 00:00:00',NULL),(4,43,2,'../userdata/2/c77574b6a4d9028bfe202f414db5f3ce.gif',0,0,NULL,'2016-08-10 18:57:28',NULL,'0000-00-00 00:00:00',NULL),(5,65,2,'../userdata/2/f9de672b5f638ffc64956297c4375edb.jpg',1,0,NULL,'2016-08-10 19:35:45',NULL,'0000-00-00 00:00:00',NULL),(6,65,2,'../userdata/2/b9c7d82600d78e940c84aaa23189a68f.jpg',0,0,NULL,'2016-08-10 19:35:46',NULL,'0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `bf_image_khach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_khach`
--

DROP TABLE IF EXISTS `bf_khach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_khach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) DEFAULT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_khach`
--

LOCK TABLES `bf_khach` WRITE;
/*!40000 ALTER TABLE `bf_khach` DISABLE KEYS */;
INSERT INTO `bf_khach` VALUES (1,0,NULL,'2016-08-05 17:18:46',NULL,'0000-00-00 00:00:00',NULL),(2,0,NULL,'2016-08-05 17:19:28',NULL,'0000-00-00 00:00:00',NULL),(3,0,NULL,'2016-08-05 17:19:37',NULL,'0000-00-00 00:00:00',NULL),(4,0,NULL,'2016-08-05 17:27:31',NULL,'0000-00-00 00:00:00',NULL),(5,0,NULL,'2016-08-05 17:29:14',NULL,'0000-00-00 00:00:00',NULL),(6,0,NULL,'2016-08-05 17:29:39',NULL,'0000-00-00 00:00:00',NULL),(7,0,NULL,'2016-08-05 17:30:14',NULL,'0000-00-00 00:00:00',NULL),(8,0,NULL,'2016-08-05 17:31:05',NULL,'0000-00-00 00:00:00',NULL),(9,0,NULL,'2016-08-05 17:43:03',NULL,'0000-00-00 00:00:00',NULL),(10,0,NULL,'2016-08-05 18:22:49',NULL,'0000-00-00 00:00:00',NULL),(11,0,NULL,'2016-08-05 18:23:25',NULL,'0000-00-00 00:00:00',NULL),(12,0,NULL,'2016-08-05 18:23:47',NULL,'0000-00-00 00:00:00',NULL),(13,0,NULL,'2016-08-05 18:24:00',NULL,'0000-00-00 00:00:00',NULL),(14,0,NULL,'2016-08-05 18:27:25',NULL,'0000-00-00 00:00:00',NULL),(15,0,NULL,'2016-08-05 18:27:42',NULL,'0000-00-00 00:00:00',NULL),(16,0,NULL,'2016-08-05 18:30:05',NULL,'0000-00-00 00:00:00',NULL),(17,0,NULL,'2016-08-05 18:30:29',NULL,'0000-00-00 00:00:00',NULL),(18,0,NULL,'2016-08-05 19:02:25',NULL,'0000-00-00 00:00:00',NULL),(19,0,NULL,'2016-08-05 19:03:12',NULL,'0000-00-00 00:00:00',NULL),(20,0,NULL,'2016-08-05 19:03:40',NULL,'0000-00-00 00:00:00',NULL),(21,0,NULL,'2016-08-09 18:31:15',NULL,'0000-00-00 00:00:00',NULL),(22,0,NULL,'2016-08-10 16:45:16',NULL,'0000-00-00 00:00:00',NULL),(23,0,NULL,'2016-08-10 16:46:19',NULL,'0000-00-00 00:00:00',NULL),(24,0,NULL,'2016-08-10 16:49:23',NULL,'0000-00-00 00:00:00',NULL),(25,0,NULL,'2016-08-10 16:50:27',NULL,'0000-00-00 00:00:00',NULL),(26,0,NULL,'2016-08-10 16:50:45',NULL,'0000-00-00 00:00:00',NULL),(27,0,NULL,'2016-08-10 18:37:57',NULL,'0000-00-00 00:00:00',NULL),(28,0,NULL,'2016-08-10 18:38:29',NULL,'0000-00-00 00:00:00',NULL),(29,0,NULL,'2016-08-10 18:42:06',NULL,'0000-00-00 00:00:00',NULL),(30,0,NULL,'2016-08-10 18:42:25',NULL,'0000-00-00 00:00:00',NULL),(31,0,NULL,'2016-08-10 18:43:24',NULL,'0000-00-00 00:00:00',NULL),(32,0,NULL,'2016-08-10 18:43:55',NULL,'0000-00-00 00:00:00',NULL),(33,0,NULL,'2016-08-10 18:45:59',NULL,'0000-00-00 00:00:00',NULL),(34,0,NULL,'2016-08-10 18:46:48',NULL,'0000-00-00 00:00:00',NULL),(35,0,NULL,'2016-08-10 18:47:19',NULL,'0000-00-00 00:00:00',NULL),(36,0,NULL,'2016-08-10 18:47:51',NULL,'0000-00-00 00:00:00',NULL),(37,0,NULL,'2016-08-10 18:48:50',NULL,'0000-00-00 00:00:00',NULL),(38,0,NULL,'2016-08-10 18:49:35',NULL,'0000-00-00 00:00:00',NULL),(39,0,NULL,'2016-08-10 18:49:45',NULL,'0000-00-00 00:00:00',NULL),(40,0,NULL,'2016-08-10 18:55:52',NULL,'0000-00-00 00:00:00',NULL),(41,0,NULL,'2016-08-10 18:56:19',NULL,'0000-00-00 00:00:00',NULL),(42,0,NULL,'2016-08-10 18:57:16',NULL,'0000-00-00 00:00:00',NULL),(43,0,NULL,'2016-08-10 18:57:28',NULL,'0000-00-00 00:00:00',NULL),(44,0,NULL,'2016-08-10 19:16:06',NULL,'0000-00-00 00:00:00',NULL),(45,0,NULL,'2016-08-10 19:19:59',NULL,'0000-00-00 00:00:00',NULL),(46,0,NULL,'2016-08-10 19:20:31',NULL,'0000-00-00 00:00:00',NULL),(47,0,NULL,'2016-08-10 19:20:39',NULL,'0000-00-00 00:00:00',NULL),(48,0,NULL,'2016-08-10 19:20:50',NULL,'0000-00-00 00:00:00',NULL),(49,0,NULL,'2016-08-10 19:21:07',NULL,'0000-00-00 00:00:00',NULL),(50,0,NULL,'2016-08-10 19:21:30',NULL,'0000-00-00 00:00:00',NULL),(51,0,NULL,'2016-08-10 19:22:00',NULL,'0000-00-00 00:00:00',NULL),(52,0,NULL,'2016-08-10 19:22:11',NULL,'0000-00-00 00:00:00',NULL),(53,0,NULL,'2016-08-10 19:25:12',NULL,'0000-00-00 00:00:00',NULL),(54,0,NULL,'2016-08-10 19:27:42',NULL,'0000-00-00 00:00:00',NULL),(55,0,NULL,'2016-08-10 19:27:54',NULL,'0000-00-00 00:00:00',NULL),(56,0,NULL,'2016-08-10 19:28:26',NULL,'0000-00-00 00:00:00',NULL),(57,0,NULL,'2016-08-10 19:29:08',NULL,'0000-00-00 00:00:00',NULL),(58,0,NULL,'2016-08-10 19:31:33',NULL,'0000-00-00 00:00:00',NULL),(59,0,NULL,'2016-08-10 19:31:48',NULL,'0000-00-00 00:00:00',NULL),(60,0,NULL,'2016-08-10 19:32:37',NULL,'0000-00-00 00:00:00',NULL),(61,0,NULL,'2016-08-10 19:33:32',NULL,'0000-00-00 00:00:00',NULL),(62,0,NULL,'2016-08-10 19:34:36',NULL,'0000-00-00 00:00:00',NULL),(63,0,NULL,'2016-08-10 19:35:14',NULL,'0000-00-00 00:00:00',NULL),(64,0,NULL,'2016-08-10 19:35:24',NULL,'0000-00-00 00:00:00',NULL),(65,0,NULL,'2016-08-10 19:35:45',NULL,'0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `bf_khach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_khach_session`
--

DROP TABLE IF EXISTS `bf_khach_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_khach_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(255) NOT NULL,
  `khach_id` bigint(20) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `expired` bigint(20) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_khach_session`
--

LOCK TABLES `bf_khach_session` WRITE;
/*!40000 ALTER TABLE `bf_khach_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_khach_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_lichsu_chu`
--

DROP TABLE IF EXISTS `bf_lichsu_chu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_lichsu_chu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chu_id` bigint(20) NOT NULL,
  `ngaykichhoat` datetime DEFAULT '0000-00-00 00:00:00',
  `ngayhethan` datetime DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_lichsu_chu`
--

LOCK TABLES `bf_lichsu_chu` WRITE;
/*!40000 ALTER TABLE `bf_lichsu_chu` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_lichsu_chu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_lichsu_khach`
--

DROP TABLE IF EXISTS `bf_lichsu_khach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_lichsu_khach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `khach_id` bigint(20) DEFAULT NULL,
  `chu_id` bigint(20) DEFAULT NULL,
  `lydo` varchar(255) DEFAULT NULL,
  `noidung` text,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_lichsu_khach`
--

LOCK TABLES `bf_lichsu_khach` WRITE;
/*!40000 ALTER TABLE `bf_lichsu_khach` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_lichsu_khach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_login_attempts`
--

DROP TABLE IF EXISTS `bf_login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_login_attempts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_login_attempts`
--

LOCK TABLES `bf_login_attempts` WRITE;
/*!40000 ALTER TABLE `bf_login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_permissions`
--

DROP TABLE IF EXISTS `bf_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_permissions` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` enum('active','inactive','deleted') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=418 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_permissions`
--

LOCK TABLES `bf_permissions` WRITE;
/*!40000 ALTER TABLE `bf_permissions` DISABLE KEYS */;
INSERT INTO `bf_permissions` VALUES (2,'Site.Content.View','Allow users to view the Content Context','active'),(3,'Site.Reports.View','Allow users to view the Reports Context','active'),(4,'Site.Settings.View','Allow users to view the Settings Context','active'),(5,'Site.Developer.View','Allow users to view the Developer Context','active'),(6,'Bonfire.Roles.Manage','Allow users to manage the user Roles','active'),(7,'Bonfire.Users.Manage','Allow users to manage the site Users','active'),(8,'Bonfire.Users.View','Allow users access to the User Settings','active'),(9,'Bonfire.Users.Add','Allow users to add new Users','active'),(10,'Bonfire.Database.Manage','Allow users to manage the Database settings','active'),(11,'Bonfire.Emailer.Manage','Allow users to manage the Emailer settings','active'),(12,'Bonfire.Logs.View','Allow users access to the Log details','active'),(13,'Bonfire.Logs.Manage','Allow users to manage the Log files','active'),(14,'Bonfire.Emailer.View','Allow users access to the Emailer settings','active'),(15,'Site.Signin.Offline','Allow users to login to the site when the site is offline','active'),(16,'Bonfire.Permissions.View','Allow access to view the Permissions menu unders Settings Context','active'),(17,'Bonfire.Permissions.Manage','Allow access to manage the Permissions in the system','active'),(18,'Bonfire.Modules.Add','Allow creation of modules with the builder.','active'),(19,'Bonfire.Modules.Delete','Allow deletion of modules.','active'),(20,'Permissions.Administrator.Manage','To manage the access control permissions for the Administrator role.','active'),(21,'Permissions.Editor.Manage','To manage the access control permissions for the Editor role.','active'),(23,'Permissions.User.Manage','To manage the access control permissions for the User role.','active'),(24,'Permissions.Developer.Manage','To manage the access control permissions for the Developer role.','active'),(26,'Activities.Own.View','To view the users own activity logs','active'),(27,'Activities.Own.Delete','To delete the users own activity logs','active'),(28,'Activities.User.View','To view the user activity logs','active'),(29,'Activities.User.Delete','To delete the user activity logs, except own','active'),(30,'Activities.Module.View','To view the module activity logs','active'),(31,'Activities.Module.Delete','To delete the module activity logs','active'),(32,'Activities.Date.View','To view the users own activity logs','active'),(33,'Activities.Date.Delete','To delete the dated activity logs','active'),(34,'Bonfire.UI.Manage','Manage the Bonfire UI settings','active'),(35,'Bonfire.Settings.View','To view the site settings page.','active'),(36,'Bonfire.Settings.Manage','To manage the site settings.','active'),(37,'Bonfire.Activities.View','To view the Activities menu.','active'),(38,'Bonfire.Database.View','To view the Database menu.','active'),(39,'Bonfire.Migrations.View','To view the Migrations menu.','active'),(40,'Bonfire.Builder.View','To view the Modulebuilder menu.','active'),(41,'Bonfire.Roles.View','To view the Roles menu.','active'),(42,'Bonfire.Sysinfo.View','To view the System Information page.','active'),(43,'Bonfire.Translate.Manage','To manage the Language Translation.','active'),(44,'Bonfire.Translate.View','To view the Language Translate menu.','active'),(45,'Bonfire.UI.View','To view the UI/Keyboard Shortcut menu.','active'),(48,'Bonfire.Profiler.View','To view the Console Profiler Bar.','active'),(49,'Bonfire.Roles.Add','To add New Roles','active'),(50,'Customers.Content.View','View Customers Content','active'),(51,'Customers.Content.Create','Create Customers Content','active'),(52,'Customers.Content.Edit','Edit Customers Content','active'),(53,'Customers.Content.Delete','Delete Customers Content','active'),(54,'Customers.Reports.View','View Customers Reports','active'),(55,'Customers.Reports.Create','Create Customers Reports','active'),(56,'Customers.Reports.Edit','Edit Customers Reports','active'),(57,'Customers.Reports.Delete','Delete Customers Reports','active'),(58,'Customers.Settings.View','View Customers Settings','active'),(59,'Customers.Settings.Create','Create Customers Settings','active'),(60,'Customers.Settings.Edit','Edit Customers Settings','active'),(61,'Customers.Settings.Delete','Delete Customers Settings','active'),(62,'Customers.Developer.View','View Customers Developer','active'),(63,'Customers.Developer.Create','Create Customers Developer','active'),(64,'Customers.Developer.Edit','Edit Customers Developer','active'),(65,'Customers.Developer.Delete','Delete Customers Developer','active'),(66,'Nickname.Content.View','View Nickname Content','active'),(67,'Nickname.Content.Create','Create Nickname Content','active'),(68,'Nickname.Content.Edit','Edit Nickname Content','active'),(69,'Nickname.Content.Delete','Delete Nickname Content','active'),(70,'Nickname.Reports.View','View Nickname Reports','active'),(71,'Nickname.Reports.Create','Create Nickname Reports','active'),(72,'Nickname.Reports.Edit','Edit Nickname Reports','active'),(73,'Nickname.Reports.Delete','Delete Nickname Reports','active'),(74,'Nickname.Settings.View','View Nickname Settings','active'),(75,'Nickname.Settings.Create','Create Nickname Settings','active'),(76,'Nickname.Settings.Edit','Edit Nickname Settings','active'),(77,'Nickname.Settings.Delete','Delete Nickname Settings','active'),(78,'Nickname.Developer.View','View Nickname Developer','active'),(79,'Nickname.Developer.Create','Create Nickname Developer','active'),(80,'Nickname.Developer.Edit','Edit Nickname Developer','active'),(81,'Nickname.Developer.Delete','Delete Nickname Developer','active'),(98,'Document.Content.View','View Document Content','active'),(99,'Document.Content.Create','Create Document Content','active'),(100,'Document.Content.Edit','Edit Document Content','active'),(101,'Document.Content.Delete','Delete Document Content','active'),(102,'Document.Reports.View','View Document Reports','active'),(103,'Document.Reports.Create','Create Document Reports','active'),(104,'Document.Reports.Edit','Edit Document Reports','active'),(105,'Document.Reports.Delete','Delete Document Reports','active'),(106,'Document.Settings.View','View Document Settings','active'),(107,'Document.Settings.Create','Create Document Settings','active'),(108,'Document.Settings.Edit','Edit Document Settings','active'),(109,'Document.Settings.Delete','Delete Document Settings','active'),(110,'Document.Developer.View','View Document Developer','active'),(111,'Document.Developer.Create','Create Document Developer','active'),(112,'Document.Developer.Edit','Edit Document Developer','active'),(113,'Document.Developer.Delete','Delete Document Developer','active'),(114,'Document_image.Content.View','View Document_image Content','active'),(115,'Document_image.Content.Create','Create Document_image Content','active'),(116,'Document_image.Content.Edit','Edit Document_image Content','active'),(117,'Document_image.Content.Delete','Delete Document_image Content','active'),(118,'Document_image.Reports.View','View Document_image Reports','active'),(119,'Document_image.Reports.Create','Create Document_image Reports','active'),(120,'Document_image.Reports.Edit','Edit Document_image Reports','active'),(121,'Document_image.Reports.Delete','Delete Document_image Reports','active'),(122,'Document_image.Settings.View','View Document_image Settings','active'),(123,'Document_image.Settings.Create','Create Document_image Settings','active'),(124,'Document_image.Settings.Edit','Edit Document_image Settings','active'),(125,'Document_image.Settings.Delete','Delete Document_image Settings','active'),(126,'Document_image.Developer.View','View Document_image Developer','active'),(127,'Document_image.Developer.Create','Create Document_image Developer','active'),(128,'Document_image.Developer.Edit','Edit Document_image Developer','active'),(129,'Document_image.Developer.Delete','Delete Document_image Developer','active'),(130,'Customer_image.Content.View','View Customer_image Content','active'),(131,'Customer_image.Content.Create','Create Customer_image Content','active'),(132,'Customer_image.Content.Edit','Edit Customer_image Content','active'),(133,'Customer_image.Content.Delete','Delete Customer_image Content','active'),(134,'Customer_image.Reports.View','View Customer_image Reports','active'),(135,'Customer_image.Reports.Create','Create Customer_image Reports','active'),(136,'Customer_image.Reports.Edit','Edit Customer_image Reports','active'),(137,'Customer_image.Reports.Delete','Delete Customer_image Reports','active'),(138,'Customer_image.Settings.View','View Customer_image Settings','active'),(139,'Customer_image.Settings.Create','Create Customer_image Settings','active'),(140,'Customer_image.Settings.Edit','Edit Customer_image Settings','active'),(141,'Customer_image.Settings.Delete','Delete Customer_image Settings','active'),(142,'Customer_image.Developer.View','View Customer_image Developer','active'),(143,'Customer_image.Developer.Create','Create Customer_image Developer','active'),(144,'Customer_image.Developer.Edit','Edit Customer_image Developer','active'),(145,'Customer_image.Developer.Delete','Delete Customer_image Developer','active'),(146,'Chu.Content.View','View Chu Content','active'),(147,'Chu.Content.Create','Create Chu Content','active'),(148,'Chu.Content.Edit','Edit Chu Content','active'),(149,'Chu.Content.Delete','Delete Chu Content','active'),(150,'Chu.Reports.View','View Chu Reports','active'),(151,'Chu.Reports.Create','Create Chu Reports','active'),(152,'Chu.Reports.Edit','Edit Chu Reports','active'),(153,'Chu.Reports.Delete','Delete Chu Reports','active'),(154,'Chu.Settings.View','View Chu Settings','active'),(155,'Chu.Settings.Create','Create Chu Settings','active'),(156,'Chu.Settings.Edit','Edit Chu Settings','active'),(157,'Chu.Settings.Delete','Delete Chu Settings','active'),(158,'Chu.Developer.View','View Chu Developer','active'),(159,'Chu.Developer.Create','Create Chu Developer','active'),(160,'Chu.Developer.Edit','Edit Chu Developer','active'),(161,'Chu.Developer.Delete','Delete Chu Developer','active'),(162,'Lichsu_chu.Content.View','View Lichsu_chu Content','active'),(163,'Lichsu_chu.Content.Create','Create Lichsu_chu Content','active'),(164,'Lichsu_chu.Content.Edit','Edit Lichsu_chu Content','active'),(165,'Lichsu_chu.Content.Delete','Delete Lichsu_chu Content','active'),(166,'Lichsu_chu.Reports.View','View Lichsu_chu Reports','active'),(167,'Lichsu_chu.Reports.Create','Create Lichsu_chu Reports','active'),(168,'Lichsu_chu.Reports.Edit','Edit Lichsu_chu Reports','active'),(169,'Lichsu_chu.Reports.Delete','Delete Lichsu_chu Reports','active'),(170,'Lichsu_chu.Settings.View','View Lichsu_chu Settings','active'),(171,'Lichsu_chu.Settings.Create','Create Lichsu_chu Settings','active'),(172,'Lichsu_chu.Settings.Edit','Edit Lichsu_chu Settings','active'),(173,'Lichsu_chu.Settings.Delete','Delete Lichsu_chu Settings','active'),(174,'Lichsu_chu.Developer.View','View Lichsu_chu Developer','active'),(175,'Lichsu_chu.Developer.Create','Create Lichsu_chu Developer','active'),(176,'Lichsu_chu.Developer.Edit','Edit Lichsu_chu Developer','active'),(177,'Lichsu_chu.Developer.Delete','Delete Lichsu_chu Developer','active'),(194,'Ten_khach.Content.View','View Ten_khach Content','active'),(195,'Ten_khach.Content.Create','Create Ten_khach Content','active'),(196,'Ten_khach.Content.Edit','Edit Ten_khach Content','active'),(197,'Ten_khach.Content.Delete','Delete Ten_khach Content','active'),(198,'Ten_khach.Reports.View','View Ten_khach Reports','active'),(199,'Ten_khach.Reports.Create','Create Ten_khach Reports','active'),(200,'Ten_khach.Reports.Edit','Edit Ten_khach Reports','active'),(201,'Ten_khach.Reports.Delete','Delete Ten_khach Reports','active'),(202,'Ten_khach.Settings.View','View Ten_khach Settings','active'),(203,'Ten_khach.Settings.Create','Create Ten_khach Settings','active'),(204,'Ten_khach.Settings.Edit','Edit Ten_khach Settings','active'),(205,'Ten_khach.Settings.Delete','Delete Ten_khach Settings','active'),(206,'Ten_khach.Developer.View','View Ten_khach Developer','active'),(207,'Ten_khach.Developer.Create','Create Ten_khach Developer','active'),(208,'Ten_khach.Developer.Edit','Edit Ten_khach Developer','active'),(209,'Ten_khach.Developer.Delete','Delete Ten_khach Developer','active'),(210,'Giayto_khach.Content.View','View Giayto_khach Content','active'),(211,'Giayto_khach.Content.Create','Create Giayto_khach Content','active'),(212,'Giayto_khach.Content.Edit','Edit Giayto_khach Content','active'),(213,'Giayto_khach.Content.Delete','Delete Giayto_khach Content','active'),(214,'Giayto_khach.Reports.View','View Giayto_khach Reports','active'),(215,'Giayto_khach.Reports.Create','Create Giayto_khach Reports','active'),(216,'Giayto_khach.Reports.Edit','Edit Giayto_khach Reports','active'),(217,'Giayto_khach.Reports.Delete','Delete Giayto_khach Reports','active'),(218,'Giayto_khach.Settings.View','View Giayto_khach Settings','active'),(219,'Giayto_khach.Settings.Create','Create Giayto_khach Settings','active'),(220,'Giayto_khach.Settings.Edit','Edit Giayto_khach Settings','active'),(221,'Giayto_khach.Settings.Delete','Delete Giayto_khach Settings','active'),(222,'Giayto_khach.Developer.View','View Giayto_khach Developer','active'),(223,'Giayto_khach.Developer.Create','Create Giayto_khach Developer','active'),(224,'Giayto_khach.Developer.Edit','Edit Giayto_khach Developer','active'),(225,'Giayto_khach.Developer.Delete','Delete Giayto_khach Developer','active'),(242,'Diachi_khach.Content.View','View Diachi_khach Content','active'),(243,'Diachi_khach.Content.Create','Create Diachi_khach Content','active'),(244,'Diachi_khach.Content.Edit','Edit Diachi_khach Content','active'),(245,'Diachi_khach.Content.Delete','Delete Diachi_khach Content','active'),(246,'Diachi_khach.Reports.View','View Diachi_khach Reports','active'),(247,'Diachi_khach.Reports.Create','Create Diachi_khach Reports','active'),(248,'Diachi_khach.Reports.Edit','Edit Diachi_khach Reports','active'),(249,'Diachi_khach.Reports.Delete','Delete Diachi_khach Reports','active'),(250,'Diachi_khach.Settings.View','View Diachi_khach Settings','active'),(251,'Diachi_khach.Settings.Create','Create Diachi_khach Settings','active'),(252,'Diachi_khach.Settings.Edit','Edit Diachi_khach Settings','active'),(253,'Diachi_khach.Settings.Delete','Delete Diachi_khach Settings','active'),(254,'Diachi_khach.Developer.View','View Diachi_khach Developer','active'),(255,'Diachi_khach.Developer.Create','Create Diachi_khach Developer','active'),(256,'Diachi_khach.Developer.Edit','Edit Diachi_khach Developer','active'),(257,'Diachi_khach.Developer.Delete','Delete Diachi_khach Developer','active'),(258,'Phone_khach.Content.View','View Phone_khach Content','active'),(259,'Phone_khach.Content.Create','Create Phone_khach Content','active'),(260,'Phone_khach.Content.Edit','Edit Phone_khach Content','active'),(261,'Phone_khach.Content.Delete','Delete Phone_khach Content','active'),(262,'Phone_khach.Reports.View','View Phone_khach Reports','active'),(263,'Phone_khach.Reports.Create','Create Phone_khach Reports','active'),(264,'Phone_khach.Reports.Edit','Edit Phone_khach Reports','active'),(265,'Phone_khach.Reports.Delete','Delete Phone_khach Reports','active'),(266,'Phone_khach.Settings.View','View Phone_khach Settings','active'),(267,'Phone_khach.Settings.Create','Create Phone_khach Settings','active'),(268,'Phone_khach.Settings.Edit','Edit Phone_khach Settings','active'),(269,'Phone_khach.Settings.Delete','Delete Phone_khach Settings','active'),(270,'Phone_khach.Developer.View','View Phone_khach Developer','active'),(271,'Phone_khach.Developer.Create','Create Phone_khach Developer','active'),(272,'Phone_khach.Developer.Edit','Edit Phone_khach Developer','active'),(273,'Phone_khach.Developer.Delete','Delete Phone_khach Developer','active'),(274,'Image_khach.Content.View','View Image_khach Content','active'),(275,'Image_khach.Content.Create','Create Image_khach Content','active'),(276,'Image_khach.Content.Edit','Edit Image_khach Content','active'),(277,'Image_khach.Content.Delete','Delete Image_khach Content','active'),(278,'Image_khach.Reports.View','View Image_khach Reports','active'),(279,'Image_khach.Reports.Create','Create Image_khach Reports','active'),(280,'Image_khach.Reports.Edit','Edit Image_khach Reports','active'),(281,'Image_khach.Reports.Delete','Delete Image_khach Reports','active'),(282,'Image_khach.Settings.View','View Image_khach Settings','active'),(283,'Image_khach.Settings.Create','Create Image_khach Settings','active'),(284,'Image_khach.Settings.Edit','Edit Image_khach Settings','active'),(285,'Image_khach.Settings.Delete','Delete Image_khach Settings','active'),(286,'Image_khach.Developer.View','View Image_khach Developer','active'),(287,'Image_khach.Developer.Create','Create Image_khach Developer','active'),(288,'Image_khach.Developer.Edit','Edit Image_khach Developer','active'),(289,'Image_khach.Developer.Delete','Delete Image_khach Developer','active'),(290,'Ghichu_khach.Content.View','View Ghichu_khach Content','active'),(291,'Ghichu_khach.Content.Create','Create Ghichu_khach Content','active'),(292,'Ghichu_khach.Content.Edit','Edit Ghichu_khach Content','active'),(293,'Ghichu_khach.Content.Delete','Delete Ghichu_khach Content','active'),(294,'Ghichu_khach.Reports.View','View Ghichu_khach Reports','active'),(295,'Ghichu_khach.Reports.Create','Create Ghichu_khach Reports','active'),(296,'Ghichu_khach.Reports.Edit','Edit Ghichu_khach Reports','active'),(297,'Ghichu_khach.Reports.Delete','Delete Ghichu_khach Reports','active'),(298,'Ghichu_khach.Settings.View','View Ghichu_khach Settings','active'),(299,'Ghichu_khach.Settings.Create','Create Ghichu_khach Settings','active'),(300,'Ghichu_khach.Settings.Edit','Edit Ghichu_khach Settings','active'),(301,'Ghichu_khach.Settings.Delete','Delete Ghichu_khach Settings','active'),(302,'Ghichu_khach.Developer.View','View Ghichu_khach Developer','active'),(303,'Ghichu_khach.Developer.Create','Create Ghichu_khach Developer','active'),(304,'Ghichu_khach.Developer.Edit','Edit Ghichu_khach Developer','active'),(305,'Ghichu_khach.Developer.Delete','Delete Ghichu_khach Developer','active'),(306,'Chu_khach.Content.View','View Chu_khach Content','active'),(307,'Chu_khach.Content.Create','Create Chu_khach Content','active'),(308,'Chu_khach.Content.Edit','Edit Chu_khach Content','active'),(309,'Chu_khach.Content.Delete','Delete Chu_khach Content','active'),(310,'Chu_khach.Reports.View','View Chu_khach Reports','active'),(311,'Chu_khach.Reports.Create','Create Chu_khach Reports','active'),(312,'Chu_khach.Reports.Edit','Edit Chu_khach Reports','active'),(313,'Chu_khach.Reports.Delete','Delete Chu_khach Reports','active'),(314,'Chu_khach.Settings.View','View Chu_khach Settings','active'),(315,'Chu_khach.Settings.Create','Create Chu_khach Settings','active'),(316,'Chu_khach.Settings.Edit','Edit Chu_khach Settings','active'),(317,'Chu_khach.Settings.Delete','Delete Chu_khach Settings','active'),(318,'Chu_khach.Developer.View','View Chu_khach Developer','active'),(319,'Chu_khach.Developer.Create','Create Chu_khach Developer','active'),(320,'Chu_khach.Developer.Edit','Edit Chu_khach Developer','active'),(321,'Chu_khach.Developer.Delete','Delete Chu_khach Developer','active'),(322,'Lichsu_khach.Content.View','View Lichsu_khach Content','active'),(323,'Lichsu_khach.Content.Create','Create Lichsu_khach Content','active'),(324,'Lichsu_khach.Content.Edit','Edit Lichsu_khach Content','active'),(325,'Lichsu_khach.Content.Delete','Delete Lichsu_khach Content','active'),(326,'Lichsu_khach.Reports.View','View Lichsu_khach Reports','active'),(327,'Lichsu_khach.Reports.Create','Create Lichsu_khach Reports','active'),(328,'Lichsu_khach.Reports.Edit','Edit Lichsu_khach Reports','active'),(329,'Lichsu_khach.Reports.Delete','Delete Lichsu_khach Reports','active'),(330,'Lichsu_khach.Settings.View','View Lichsu_khach Settings','active'),(331,'Lichsu_khach.Settings.Create','Create Lichsu_khach Settings','active'),(332,'Lichsu_khach.Settings.Edit','Edit Lichsu_khach Settings','active'),(333,'Lichsu_khach.Settings.Delete','Delete Lichsu_khach Settings','active'),(334,'Lichsu_khach.Developer.View','View Lichsu_khach Developer','active'),(335,'Lichsu_khach.Developer.Create','Create Lichsu_khach Developer','active'),(336,'Lichsu_khach.Developer.Edit','Edit Lichsu_khach Developer','active'),(337,'Lichsu_khach.Developer.Delete','Delete Lichsu_khach Developer','active'),(354,'Chu_session.Content.View','View Chu_session Content','active'),(355,'Chu_session.Content.Create','Create Chu_session Content','active'),(356,'Chu_session.Content.Edit','Edit Chu_session Content','active'),(357,'Chu_session.Content.Delete','Delete Chu_session Content','active'),(358,'Chu_session.Reports.View','View Chu_session Reports','active'),(359,'Chu_session.Reports.Create','Create Chu_session Reports','active'),(360,'Chu_session.Reports.Edit','Edit Chu_session Reports','active'),(361,'Chu_session.Reports.Delete','Delete Chu_session Reports','active'),(362,'Chu_session.Settings.View','View Chu_session Settings','active'),(363,'Chu_session.Settings.Create','Create Chu_session Settings','active'),(364,'Chu_session.Settings.Edit','Edit Chu_session Settings','active'),(365,'Chu_session.Settings.Delete','Delete Chu_session Settings','active'),(366,'Chu_session.Developer.View','View Chu_session Developer','active'),(367,'Chu_session.Developer.Create','Create Chu_session Developer','active'),(368,'Chu_session.Developer.Edit','Edit Chu_session Developer','active'),(369,'Chu_session.Developer.Delete','Delete Chu_session Developer','active'),(386,'Card_code.Content.View','View Card_code Content','active'),(387,'Card_code.Content.Create','Create Card_code Content','active'),(388,'Card_code.Content.Edit','Edit Card_code Content','active'),(389,'Card_code.Content.Delete','Delete Card_code Content','active'),(390,'Card_code.Reports.View','View Card_code Reports','active'),(391,'Card_code.Reports.Create','Create Card_code Reports','active'),(392,'Card_code.Reports.Edit','Edit Card_code Reports','active'),(393,'Card_code.Reports.Delete','Delete Card_code Reports','active'),(394,'Card_code.Settings.View','View Card_code Settings','active'),(395,'Card_code.Settings.Create','Create Card_code Settings','active'),(396,'Card_code.Settings.Edit','Edit Card_code Settings','active'),(397,'Card_code.Settings.Delete','Delete Card_code Settings','active'),(398,'Card_code.Developer.View','View Card_code Developer','active'),(399,'Card_code.Developer.Create','Create Card_code Developer','active'),(400,'Card_code.Developer.Edit','Edit Card_code Developer','active'),(401,'Card_code.Developer.Delete','Delete Card_code Developer','active'),(402,'Khach.Content.View','View Khach Content','active'),(403,'Khach.Content.Create','Create Khach Content','active'),(404,'Khach.Content.Edit','Edit Khach Content','active'),(405,'Khach.Content.Delete','Delete Khach Content','active'),(406,'Khach.Reports.View','View Khach Reports','active'),(407,'Khach.Reports.Create','Create Khach Reports','active'),(408,'Khach.Reports.Edit','Edit Khach Reports','active'),(409,'Khach.Reports.Delete','Delete Khach Reports','active'),(410,'Khach.Settings.View','View Khach Settings','active'),(411,'Khach.Settings.Create','Create Khach Settings','active'),(412,'Khach.Settings.Edit','Edit Khach Settings','active'),(413,'Khach.Settings.Delete','Delete Khach Settings','active'),(414,'Khach.Developer.View','View Khach Developer','active'),(415,'Khach.Developer.Create','Create Khach Developer','active'),(416,'Khach.Developer.Edit','Edit Khach Developer','active'),(417,'Khach.Developer.Delete','Delete Khach Developer','active');
/*!40000 ALTER TABLE `bf_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_phone_khach`
--

DROP TABLE IF EXISTS `bf_phone_khach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_phone_khach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `khach_id` bigint(20) DEFAULT NULL,
  `chu_id` bigint(20) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) DEFAULT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_phone_khach`
--

LOCK TABLES `bf_phone_khach` WRITE;
/*!40000 ALTER TABLE `bf_phone_khach` DISABLE KEYS */;
INSERT INTO `bf_phone_khach` VALUES (1,20,2,'13',0,NULL,'2016-08-05 19:03:40',NULL,'0000-00-00 00:00:00',NULL),(2,20,2,'13132',0,NULL,'2016-08-05 19:03:40',NULL,'0000-00-00 00:00:00',NULL),(3,21,2,NULL,0,NULL,'2016-08-09 18:31:15',NULL,'0000-00-00 00:00:00',NULL),(4,21,2,NULL,0,NULL,'2016-08-09 18:31:15',NULL,'0000-00-00 00:00:00',NULL),(5,64,2,'1223',0,NULL,'2016-08-10 19:35:24',NULL,'0000-00-00 00:00:00',NULL),(6,64,2,'34124',0,NULL,'2016-08-10 19:35:24',NULL,'0000-00-00 00:00:00',NULL),(7,65,2,'1223',0,NULL,'2016-08-10 19:35:45',NULL,'0000-00-00 00:00:00',NULL),(8,65,2,'34124',0,NULL,'2016-08-10 19:35:45',NULL,'0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `bf_phone_khach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_role_permissions`
--

DROP TABLE IF EXISTS `bf_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_role_permissions`
--

LOCK TABLES `bf_role_permissions` WRITE;
/*!40000 ALTER TABLE `bf_role_permissions` DISABLE KEYS */;
INSERT INTO `bf_role_permissions` VALUES (1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,23),(1,24),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60),(1,61),(1,62),(1,63),(1,64),(1,65),(1,66),(1,67),(1,68),(1,69),(1,70),(1,71),(1,72),(1,73),(1,74),(1,75),(1,76),(1,77),(1,78),(1,79),(1,80),(1,81),(1,98),(1,99),(1,100),(1,101),(1,102),(1,103),(1,104),(1,105),(1,106),(1,107),(1,108),(1,109),(1,110),(1,111),(1,112),(1,113),(1,114),(1,115),(1,116),(1,117),(1,118),(1,119),(1,120),(1,121),(1,122),(1,123),(1,124),(1,125),(1,126),(1,127),(1,128),(1,129),(1,130),(1,131),(1,132),(1,133),(1,134),(1,135),(1,136),(1,137),(1,138),(1,139),(1,140),(1,141),(1,142),(1,143),(1,144),(1,145),(1,146),(1,147),(1,148),(1,149),(1,150),(1,151),(1,152),(1,153),(1,154),(1,155),(1,156),(1,157),(1,158),(1,159),(1,160),(1,161),(1,162),(1,163),(1,164),(1,165),(1,166),(1,167),(1,168),(1,169),(1,170),(1,171),(1,172),(1,173),(1,174),(1,175),(1,176),(1,177),(1,194),(1,195),(1,196),(1,197),(1,198),(1,199),(1,200),(1,201),(1,202),(1,203),(1,204),(1,205),(1,206),(1,207),(1,208),(1,209),(1,210),(1,211),(1,212),(1,213),(1,214),(1,215),(1,216),(1,217),(1,218),(1,219),(1,220),(1,221),(1,222),(1,223),(1,224),(1,225),(1,242),(1,243),(1,244),(1,245),(1,246),(1,247),(1,248),(1,249),(1,250),(1,251),(1,252),(1,253),(1,254),(1,255),(1,256),(1,257),(1,258),(1,259),(1,260),(1,261),(1,262),(1,263),(1,264),(1,265),(1,266),(1,267),(1,268),(1,269),(1,270),(1,271),(1,272),(1,273),(1,274),(1,275),(1,276),(1,277),(1,278),(1,279),(1,280),(1,281),(1,282),(1,283),(1,284),(1,285),(1,286),(1,287),(1,288),(1,289),(1,290),(1,291),(1,292),(1,293),(1,294),(1,295),(1,296),(1,297),(1,298),(1,299),(1,300),(1,301),(1,302),(1,303),(1,304),(1,305),(1,306),(1,307),(1,308),(1,309),(1,310),(1,311),(1,312),(1,313),(1,314),(1,315),(1,316),(1,317),(1,318),(1,319),(1,320),(1,321),(1,322),(1,323),(1,324),(1,325),(1,326),(1,327),(1,328),(1,329),(1,330),(1,331),(1,332),(1,333),(1,334),(1,335),(1,336),(1,337),(1,354),(1,355),(1,356),(1,357),(1,358),(1,359),(1,360),(1,361),(1,362),(1,363),(1,364),(1,365),(1,366),(1,367),(1,368),(1,369),(1,386),(1,387),(1,388),(1,389),(1,390),(1,391),(1,392),(1,393),(1,394),(1,395),(1,396),(1,397),(1,398),(1,399),(1,400),(1,401),(1,402),(1,403),(1,404),(1,405),(1,406),(1,407),(1,408),(1,409),(1,410),(1,411),(1,412),(1,413),(1,414),(1,415),(1,416),(1,417),(2,2),(2,3),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(6,9),(6,10),(6,11),(6,12),(6,13),(6,48);
/*!40000 ALTER TABLE `bf_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_roles`
--

DROP TABLE IF EXISTS `bf_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(60) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1',
  `login_destination` varchar(255) NOT NULL DEFAULT '/',
  `default_context` varchar(255) DEFAULT 'content',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_roles`
--

LOCK TABLES `bf_roles` WRITE;
/*!40000 ALTER TABLE `bf_roles` DISABLE KEYS */;
INSERT INTO `bf_roles` VALUES (1,'Administrator','Has full control over every aspect of the site.',0,0,'','content',0),(2,'Editor','Can handle day-to-day management, but does not have full power.',0,1,'','content',0),(4,'User','This is the default user with access to login.',1,0,'','content',0),(6,'Developer','Developers typically are the only ones that can access the developer tools. Otherwise identical to Administrators, at least until the site is handed off.',0,1,'','content',0);
/*!40000 ALTER TABLE `bf_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_schema_version`
--

DROP TABLE IF EXISTS `bf_schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_schema_version` (
  `type` varchar(40) NOT NULL,
  `version` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_schema_version`
--

LOCK TABLES `bf_schema_version` WRITE;
/*!40000 ALTER TABLE `bf_schema_version` DISABLE KEYS */;
INSERT INTO `bf_schema_version` VALUES ('card_code_',2),('chu_',2),('chu_khach_',2),('chu_session_',2),('core',43),('customers_',2),('customer_image_',2),('diachi_khach_',2),('document_',2),('document_image_',2),('ghichu_khach_',2),('giayto_khach_',2),('image_khach_',2),('khach_',2),('lichsu_chu_',2),('lichsu_khach_',2),('nickname_',2),('phone_khach_',2),('ten_khach_',2);
/*!40000 ALTER TABLE `bf_schema_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_sessions`
--

DROP TABLE IF EXISTS `bf_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_sessions`
--

LOCK TABLES `bf_sessions` WRITE;
/*!40000 ALTER TABLE `bf_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_settings`
--

DROP TABLE IF EXISTS `bf_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_settings` (
  `name` varchar(30) NOT NULL,
  `module` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_settings`
--

LOCK TABLES `bf_settings` WRITE;
/*!40000 ALTER TABLE `bf_settings` DISABLE KEYS */;
INSERT INTO `bf_settings` VALUES ('auth.allow_name_change','core','1'),('auth.allow_register','core','1'),('auth.allow_remember','core','1'),('auth.do_login_redirect','core','1'),('auth.login_type','core','email'),('auth.name_change_frequency','core','1'),('auth.name_change_limit','core','1'),('auth.password_force_mixed_case','core','0'),('auth.password_force_numbers','core','0'),('auth.password_force_symbols','core','0'),('auth.password_min_length','core','8'),('auth.password_show_labels','core','0'),('auth.remember_length','core','1209600'),('auth.user_activation_method','core','0'),('auth.use_extended_profile','core','0'),('auth.use_usernames','core','1'),('ext.country','core','US'),('ext.state','core',''),('ext.street_name','core',''),('ext.type','core','small'),('form_save','core.ui','ctrl+s/⌘+s'),('goto_content','core.ui','alt+c'),('mailpath','email','/usr/sbin/sendmail'),('mailtype','email','text'),('password_iterations','users','8'),('protocol','email','mail'),('select_all','core.ui','ctrl+a'),('sender_email','email',''),('site.languages','core','a:3:{i:0;s:7:\"english\";i:1;s:7:\"persian\";i:2;s:10:\"portuguese\";}'),('site.list_limit','core','5'),('site.offline_reason','core',''),('site.show_front_profiler','core','1'),('site.show_profiler','core','1'),('site.status','core','1'),('site.system_email','core','admin@mybonfire.com'),('site.title','core','My Bonfire'),('smtp_host','email',''),('smtp_pass','email',''),('smtp_port','email',''),('smtp_timeout','email',''),('smtp_user','email',''),('updates.bleeding_edge','core','1'),('updates.do_check','core','1');
/*!40000 ALTER TABLE `bf_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_states`
--

DROP TABLE IF EXISTS `bf_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  `abbrev` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_states`
--

LOCK TABLES `bf_states` WRITE;
/*!40000 ALTER TABLE `bf_states` DISABLE KEYS */;
INSERT INTO `bf_states` VALUES (1,'Alaska','AK'),(2,'Alabama','AL'),(3,'American Samoa','AS'),(4,'Arizona','AZ'),(5,'Arkansas','AR'),(6,'California','CA'),(7,'Colorado','CO'),(8,'Connecticut','CT'),(9,'Delaware','DE'),(10,'District of Columbia','DC'),(11,'Florida','FL'),(12,'Georgia','GA'),(13,'Guam','GU'),(14,'Hawaii','HI'),(15,'Idaho','ID'),(16,'Illinois','IL'),(17,'Indiana','IN'),(18,'Iowa','IA'),(19,'Kansas','KS'),(20,'Kentucky','KY'),(21,'Louisiana','LA'),(22,'Maine','ME'),(23,'Marshall Islands','MH'),(24,'Maryland','MD'),(25,'Massachusetts','MA'),(26,'Michigan','MI'),(27,'Minnesota','MN'),(28,'Mississippi','MS'),(29,'Missouri','MO'),(30,'Montana','MT'),(31,'Nebraska','NE'),(32,'Nevada','NV'),(33,'New Hampshire','NH'),(34,'New Jersey','NJ'),(35,'New Mexico','NM'),(36,'New York','NY'),(37,'North Carolina','NC'),(38,'North Dakota','ND'),(39,'Northern Mariana Islands','MP'),(40,'Ohio','OH'),(41,'Oklahoma','OK'),(42,'Oregon','OR'),(43,'Palau','PW'),(44,'Pennsylvania','PA'),(45,'Puerto Rico','PR'),(46,'Rhode Island','RI'),(47,'South Carolina','SC'),(48,'South Dakota','SD'),(49,'Tennessee','TN'),(50,'Texas','TX'),(51,'Utah','UT'),(52,'Vermont','VT'),(53,'Virgin Islands','VI'),(54,'Virginia','VA'),(55,'Washington','WA'),(56,'West Virginia','WV'),(57,'Wisconsin','WI'),(58,'Wyoming','WY'),(59,'Armed Forces Africa','AE'),(60,'Armed Forces Canada','AE'),(61,'Armed Forces Europe','AE'),(62,'Armed Forces Middle East','AE'),(63,'Armed Forces Pacific','AP');
/*!40000 ALTER TABLE `bf_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_ten_khach`
--

DROP TABLE IF EXISTS `bf_ten_khach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_ten_khach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `khach_id` bigint(20) NOT NULL,
  `chu_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) DEFAULT NULL,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_ten_khach`
--

LOCK TABLES `bf_ten_khach` WRITE;
/*!40000 ALTER TABLE `bf_ten_khach` DISABLE KEYS */;
INSERT INTO `bf_ten_khach` VALUES (1,9,2,'ngoc',0,NULL,'2016-08-05 17:43:03',NULL,'0000-00-00 00:00:00',NULL),(2,9,2,'tuan',0,NULL,'2016-08-05 17:43:03',NULL,'0000-00-00 00:00:00',NULL),(3,10,2,'ngoc',0,NULL,'2016-08-05 18:22:49',NULL,'0000-00-00 00:00:00',NULL),(4,10,2,'tuan',0,NULL,'2016-08-05 18:22:49',NULL,'0000-00-00 00:00:00',NULL),(5,11,2,'ngoc',0,NULL,'2016-08-05 18:23:25',NULL,'0000-00-00 00:00:00',NULL),(6,11,2,'tuan',0,NULL,'2016-08-05 18:23:25',NULL,'0000-00-00 00:00:00',NULL),(7,12,2,'ngoc',0,NULL,'2016-08-05 18:23:47',NULL,'0000-00-00 00:00:00',NULL),(8,12,2,'tuan',0,NULL,'2016-08-05 18:23:47',NULL,'0000-00-00 00:00:00',NULL),(9,13,2,'ngoc',0,NULL,'2016-08-05 18:24:00',NULL,'0000-00-00 00:00:00',NULL),(10,13,2,'tuan',0,NULL,'2016-08-05 18:24:00',NULL,'0000-00-00 00:00:00',NULL),(11,14,2,'ngoc',0,NULL,'2016-08-05 18:27:25',NULL,'0000-00-00 00:00:00',NULL),(12,14,2,'tuan',0,NULL,'2016-08-05 18:27:25',NULL,'0000-00-00 00:00:00',NULL),(13,15,2,'ngoc',0,NULL,'2016-08-05 18:27:42',NULL,'0000-00-00 00:00:00',NULL),(14,15,2,'tuan',0,NULL,'2016-08-05 18:27:42',NULL,'0000-00-00 00:00:00',NULL),(15,16,2,'ngoc',0,NULL,'2016-08-05 18:30:05',NULL,'0000-00-00 00:00:00',NULL),(16,16,2,'tuan',0,NULL,'2016-08-05 18:30:05',NULL,'0000-00-00 00:00:00',NULL),(17,17,2,'ngoc',0,NULL,'2016-08-05 18:30:30',NULL,'0000-00-00 00:00:00',NULL),(18,17,2,'tuan',0,NULL,'2016-08-05 18:30:30',NULL,'0000-00-00 00:00:00',NULL),(19,18,2,'ngoc',0,NULL,'2016-08-05 19:02:25',NULL,'0000-00-00 00:00:00',NULL),(20,18,2,'tuan',0,NULL,'2016-08-05 19:02:25',NULL,'0000-00-00 00:00:00',NULL),(21,19,2,'ngoc',0,NULL,'2016-08-05 19:03:12',NULL,'0000-00-00 00:00:00',NULL),(22,19,2,'tuan',0,NULL,'2016-08-05 19:03:12',NULL,'0000-00-00 00:00:00',NULL),(23,20,2,'ngoc',0,NULL,'2016-08-05 19:03:40',NULL,'0000-00-00 00:00:00',NULL),(24,20,2,'tuan',0,NULL,'2016-08-05 19:03:40',NULL,'0000-00-00 00:00:00',NULL),(25,21,2,'1223',0,NULL,'2016-08-09 18:31:15',NULL,'0000-00-00 00:00:00',NULL),(26,21,2,'34124',0,NULL,'2016-08-09 18:31:15',NULL,'0000-00-00 00:00:00',NULL),(27,23,2,'n',0,NULL,'2016-08-10 16:46:19',NULL,'0000-00-00 00:00:00',NULL),(28,23,2,'i',0,NULL,'2016-08-10 16:46:19',NULL,'0000-00-00 00:00:00',NULL),(29,24,2,'ngoc',0,NULL,'2016-08-10 16:49:23',NULL,'0000-00-00 00:00:00',NULL),(30,24,2,'bich',0,NULL,'2016-08-10 16:49:23',NULL,'0000-00-00 00:00:00',NULL),(31,25,2,'ngoc',0,NULL,'2016-08-10 16:50:27',NULL,'0000-00-00 00:00:00',NULL),(32,25,2,'bich',0,NULL,'2016-08-10 16:50:27',NULL,'0000-00-00 00:00:00',NULL),(33,26,2,'ngoc',0,NULL,'2016-08-10 16:50:45',NULL,'0000-00-00 00:00:00',NULL),(34,26,2,'bich',0,NULL,'2016-08-10 16:50:45',NULL,'0000-00-00 00:00:00',NULL),(35,27,2,'ngoc',0,NULL,'2016-08-10 18:37:57',NULL,'0000-00-00 00:00:00',NULL),(36,27,2,'bich',0,NULL,'2016-08-10 18:37:57',NULL,'0000-00-00 00:00:00',NULL),(37,28,2,'ngoc',0,NULL,'2016-08-10 18:38:29',NULL,'0000-00-00 00:00:00',NULL),(38,28,2,'bich',0,NULL,'2016-08-10 18:38:29',NULL,'0000-00-00 00:00:00',NULL),(39,29,2,'ngoc',0,NULL,'2016-08-10 18:42:06',NULL,'0000-00-00 00:00:00',NULL),(40,29,2,'bich',0,NULL,'2016-08-10 18:42:07',NULL,'0000-00-00 00:00:00',NULL),(41,30,2,'ngoc',0,NULL,'2016-08-10 18:42:25',NULL,'0000-00-00 00:00:00',NULL),(42,30,2,'bich',0,NULL,'2016-08-10 18:42:25',NULL,'0000-00-00 00:00:00',NULL),(43,31,2,'ngoc',0,NULL,'2016-08-10 18:43:24',NULL,'0000-00-00 00:00:00',NULL),(44,31,2,'bich',0,NULL,'2016-08-10 18:43:24',NULL,'0000-00-00 00:00:00',NULL),(45,32,2,'ngoc',0,NULL,'2016-08-10 18:43:55',NULL,'0000-00-00 00:00:00',NULL),(46,32,2,'bich',0,NULL,'2016-08-10 18:43:55',NULL,'0000-00-00 00:00:00',NULL),(47,33,2,'ngoc',0,NULL,'2016-08-10 18:45:59',NULL,'0000-00-00 00:00:00',NULL),(48,33,2,'bich',0,NULL,'2016-08-10 18:45:59',NULL,'0000-00-00 00:00:00',NULL),(49,34,2,'ngoc',0,NULL,'2016-08-10 18:46:48',NULL,'0000-00-00 00:00:00',NULL),(50,34,2,'bich',0,NULL,'2016-08-10 18:46:48',NULL,'0000-00-00 00:00:00',NULL),(51,35,2,'ngoc',0,NULL,'2016-08-10 18:47:19',NULL,'0000-00-00 00:00:00',NULL),(52,35,2,'bich',0,NULL,'2016-08-10 18:47:19',NULL,'0000-00-00 00:00:00',NULL),(53,36,2,'ngoc',0,NULL,'2016-08-10 18:47:51',NULL,'0000-00-00 00:00:00',NULL),(54,36,2,'bich',0,NULL,'2016-08-10 18:47:51',NULL,'0000-00-00 00:00:00',NULL),(55,37,2,'ngoc',0,NULL,'2016-08-10 18:48:50',NULL,'0000-00-00 00:00:00',NULL),(56,37,2,'bich',0,NULL,'2016-08-10 18:48:50',NULL,'0000-00-00 00:00:00',NULL),(57,38,2,'ngoc',0,NULL,'2016-08-10 18:49:35',NULL,'0000-00-00 00:00:00',NULL),(58,38,2,'bich',0,NULL,'2016-08-10 18:49:35',NULL,'0000-00-00 00:00:00',NULL),(59,39,2,'ngoc',0,NULL,'2016-08-10 18:49:45',NULL,'0000-00-00 00:00:00',NULL),(60,39,2,'bich',0,NULL,'2016-08-10 18:49:45',NULL,'0000-00-00 00:00:00',NULL),(61,40,2,'ngoc',0,NULL,'2016-08-10 18:55:52',NULL,'0000-00-00 00:00:00',NULL),(62,40,2,'bich',0,NULL,'2016-08-10 18:55:53',NULL,'0000-00-00 00:00:00',NULL),(63,41,2,'ngoc',0,NULL,'2016-08-10 18:56:19',NULL,'0000-00-00 00:00:00',NULL),(64,41,2,'bich',0,NULL,'2016-08-10 18:56:19',NULL,'0000-00-00 00:00:00',NULL),(65,42,2,'ngoc',0,NULL,'2016-08-10 18:57:16',NULL,'0000-00-00 00:00:00',NULL),(66,42,2,'bich',0,NULL,'2016-08-10 18:57:16',NULL,'0000-00-00 00:00:00',NULL),(67,43,2,'ngoc',0,NULL,'2016-08-10 18:57:28',NULL,'0000-00-00 00:00:00',NULL),(68,43,2,'bich',0,NULL,'2016-08-10 18:57:28',NULL,'0000-00-00 00:00:00',NULL),(69,48,2,'ngoc',0,NULL,'2016-08-10 19:20:50',NULL,'0000-00-00 00:00:00',NULL),(70,48,2,'tung',0,NULL,'2016-08-10 19:20:50',NULL,'0000-00-00 00:00:00',NULL),(71,49,2,'ngoc',0,NULL,'2016-08-10 19:21:07',NULL,'0000-00-00 00:00:00',NULL),(72,49,2,'tung',0,NULL,'2016-08-10 19:21:07',NULL,'0000-00-00 00:00:00',NULL),(73,54,2,'ngoc',0,NULL,'2016-08-10 19:27:42',NULL,'0000-00-00 00:00:00',NULL),(74,54,2,'tung',0,NULL,'2016-08-10 19:27:42',NULL,'0000-00-00 00:00:00',NULL),(75,58,2,'ngoc',0,NULL,'2016-08-10 19:31:33',NULL,'0000-00-00 00:00:00',NULL),(76,58,2,'tung',0,NULL,'2016-08-10 19:31:33',NULL,'0000-00-00 00:00:00',NULL),(77,59,2,'ngoc',0,NULL,'2016-08-10 19:31:48',NULL,'0000-00-00 00:00:00',NULL),(78,59,2,'tung',0,NULL,'2016-08-10 19:31:48',NULL,'0000-00-00 00:00:00',NULL),(79,60,2,'ngoc',0,NULL,'2016-08-10 19:32:37',NULL,'0000-00-00 00:00:00',NULL),(80,60,2,'tung',0,NULL,'2016-08-10 19:32:37',NULL,'0000-00-00 00:00:00',NULL),(81,61,2,'ngoc',0,NULL,'2016-08-10 19:33:32',NULL,'0000-00-00 00:00:00',NULL),(82,61,2,'tung',0,NULL,'2016-08-10 19:33:32',NULL,'0000-00-00 00:00:00',NULL),(83,62,2,'ngoc',0,NULL,'2016-08-10 19:34:36',NULL,'0000-00-00 00:00:00',NULL),(84,62,2,'tung',0,NULL,'2016-08-10 19:34:36',NULL,'0000-00-00 00:00:00',NULL),(85,63,2,'ngoc',0,NULL,'2016-08-10 19:35:14',NULL,'0000-00-00 00:00:00',NULL),(86,63,2,'tung',0,NULL,'2016-08-10 19:35:14',NULL,'0000-00-00 00:00:00',NULL),(87,64,2,'ngoc',0,NULL,'2016-08-10 19:35:24',NULL,'0000-00-00 00:00:00',NULL),(88,64,2,'tung',0,NULL,'2016-08-10 19:35:24',NULL,'0000-00-00 00:00:00',NULL),(89,65,2,'ngoc',0,NULL,'2016-08-10 19:35:45',NULL,'0000-00-00 00:00:00',NULL),(90,65,2,'tung',0,NULL,'2016-08-10 19:35:45',NULL,'0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `bf_ten_khach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_user_cookies`
--

DROP TABLE IF EXISTS `bf_user_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_user_cookies` (
  `user_id` bigint(20) unsigned NOT NULL,
  `token` varchar(128) NOT NULL,
  `created_on` datetime NOT NULL,
  KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_user_cookies`
--

LOCK TABLES `bf_user_cookies` WRITE;
/*!40000 ALTER TABLE `bf_user_cookies` DISABLE KEYS */;
INSERT INTO `bf_user_cookies` VALUES (1,'LCw0VoGZYneZtbfh9P5K6QKT14mvG0J2D9ENpVUIR6GJHQShplaAWyabnBnSj3FsMWB8cyPvTV458idaUIcjfxHuoNxCFY1gMmu38CqE1rLkiJAZol2lRTHXcwkhY7yz','2016-07-22 12:50:42'),(1,'6CpLUq8wltD2idP1NmSDb2EoQ8eVfVB9QN7IyvLI70gJoCTYMW2r1FVReZqyzzgKcjnalvpdZbzG7uPU5XrBshTM3AhKPts4X5Y9WWfjHAIFcaiH0Z4q56gbkMJctSGD','2016-07-27 18:17:49'),(1,'6j32UV8qcXLCblPZUz9CUIjdwcV401KYA2hgEODuvo6tRJx4nh7TMQ7nNxXrHrpSYQv5SBwVf78JdKcbYfEW9OdKq0AoO6IkFF5PIsJFuL9ialgelpqvyijGMb4si3um','2016-08-05 12:06:58'),(1,'gUjtlZvXic6QrhmSEyJiwcquzkh7SBMDlHuhCnW1D2Yg3RLpBcxG4xLOafsK3k2EQv8Ul0f7aFOLW48wdo5mrkJ5zSMbodEfPsoY5GujGeFeRpZHVt9O39q00B6Itgbz','2016-08-07 07:52:03');
/*!40000 ALTER TABLE `bf_user_cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_user_meta`
--

DROP TABLE IF EXISTS `bf_user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_user_meta` (
  `meta_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) NOT NULL DEFAULT '',
  `meta_value` text,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_user_meta`
--

LOCK TABLES `bf_user_meta` WRITE;
/*!40000 ALTER TABLE `bf_user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_users`
--

DROP TABLE IF EXISTS `bf_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '4',
  `email` varchar(254) NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password_hash` char(60) DEFAULT NULL,
  `reset_hash` varchar(40) DEFAULT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(45) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `reset_by` int(10) DEFAULT NULL,
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_message` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT '',
  `display_name_changed` date DEFAULT NULL,
  `timezone` varchar(40) NOT NULL DEFAULT 'UM6',
  `language` varchar(20) NOT NULL DEFAULT 'english',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activate_hash` varchar(40) NOT NULL DEFAULT '',
  `force_password_reset` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_users`
--

LOCK TABLES `bf_users` WRITE;
/*!40000 ALTER TABLE `bf_users` DISABLE KEYS */;
INSERT INTO `bf_users` VALUES (1,1,'admin@mybonfire.com','admin','$2a$08$B2cFCNeAWEnCiP3llb8SE.pgY1BywtlPHeQca9GUMEX8.XhEYtkXG',NULL,'2016-08-05 15:41:04','::1','2016-07-20 16:27:18',0,NULL,0,NULL,'admin',NULL,'UM6','english',1,'',0);
/*!40000 ALTER TABLE `bf_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-12 17:26:15
