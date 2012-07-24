-- MySQL dump 10.13  Distrib 5.1.61, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: ninetofive
-- ------------------------------------------------------
-- Server version	5.1.61-0ubuntu0.10.04.1

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
-- Table structure for table `admins`
--

use ninetofive_development;

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin@9to5mil.com','$2a$10$tMVNcJ8NZycCJ.SeVObPaOkDOe95ueO6RHW6yY33XTfJeRCmRnI4G',NULL,NULL,'2012-07-23 11:51:15',25,'2012-07-23 11:51:15','2012-07-23 10:49:59','112.198.82.78','27.108.43.221','2012-06-27 13:39:25','2012-07-23 11:51:15');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affiliates`
--

DROP TABLE IF EXISTS `affiliates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affiliates`
--

LOCK TABLES `affiliates` WRITE;
/*!40000 ALTER TABLE `affiliates` DISABLE KEYS */;
INSERT INTO `affiliates` VALUES (1,'Affiliate1','2pu03tc8xnvw','2012-06-27 13:39:27','2012-06-27 13:39:27'),(2,'Affiliate2','zzg0qpydhg1r','2012-06-27 13:39:27','2012-06-27 13:39:27'),(3,'Affiliate3','4sb463m3j9eu','2012-06-27 13:39:27','2012-06-27 13:39:27'),(4,'Affiliate4','ruhdm03suaed','2012-06-27 13:39:27','2012-06-27 13:39:27'),(5,'Affiliate5','iu84p2213xaf','2012-06-27 13:39:27','2012-06-27 13:39:27'),(6,'Affiliate6','6x39t8nxwbe5','2012-06-27 13:39:27','2012-06-27 13:39:27'),(7,'Affiliate7','ikupgsrpmeoc','2012-06-27 13:39:27','2012-06-27 13:39:27'),(8,'Affiliate8','kk2mdhqve8vg','2012-06-27 13:39:27','2012-06-27 13:39:27'),(9,'Affiliate9','7d088fk7h4tp','2012-06-27 13:39:27','2012-06-27 13:39:27'),(10,'Affiliate10','qkvsis9l5v5s','2012-06-27 13:39:27','2012-06-27 13:39:27');
/*!40000 ALTER TABLE `affiliates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trigger_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES (1,'SMXJul2012_Signup_list','jktkkuzbppib','2012-07-23 10:37:19','2012-07-23 10:37:19',1);
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Books','2012-07-23 19:52:46','2012-07-23 19:52:46'),(2,'Merchandise','2012-07-23 19:52:46','2012-07-23 19:52:46'),(3,'Seminars','2012-07-23 19:52:46','2012-07-23 19:52:46');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lists`
--

DROP TABLE IF EXISTS `lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `subscriber_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status_code` int(11) DEFAULT '0',
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `affiliate_id` int(11) DEFAULT NULL,
  `is_fb` tinyint(1) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `step_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_lists_on_affiliate_id` (`affiliate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lists`
--

LOCK TABLES `lists` WRITE;
/*!40000 ALTER TABLE `lists` DISABLE KEYS */;
INSERT INTO `lists` VALUES (1,1,1,'2012-06-27 14:28:27','2012-06-27 14:29:31',2,'r7rkcr987u7e',NULL,NULL,NULL,NULL),(2,1,2,'2012-06-28 02:43:19','2012-06-28 02:43:19',0,'adpatpzrfxo0',NULL,NULL,NULL,NULL),(3,1,3,'2012-06-28 04:14:36','2012-06-28 04:19:45',2,'zmcyo2jzijhw',NULL,NULL,NULL,NULL),(4,1,4,'2012-07-03 03:07:59','2012-07-03 03:08:50',2,'oim07a6h506v',NULL,NULL,NULL,NULL),(5,1,5,'2012-07-04 07:55:15','2012-07-04 07:55:36',2,'orbv4cvfg22f',1,NULL,NULL,NULL),(6,1,6,'2012-07-04 08:20:24','2012-07-04 08:31:17',2,'y1v6wf5sy5a6',1,NULL,NULL,NULL),(7,1,7,'2012-07-04 09:49:56','2012-07-04 09:59:18',2,'ftqbtm1yyr9s',1,NULL,NULL,NULL),(8,1,8,'2012-07-04 14:21:07','2012-07-04 14:23:27',2,'txnwzzbwgrp',1,NULL,NULL,NULL),(9,1,9,'2012-07-04 22:12:58','2012-07-04 22:12:58',0,'kgi8nykomfsx',1,NULL,NULL,NULL),(10,1,10,'2012-07-05 03:45:30','2012-07-05 03:46:23',2,'bl18oy96nu9x',1,NULL,NULL,NULL),(11,1,11,'2012-07-05 12:00:46','2012-07-05 12:01:04',2,'33mphou207bf',NULL,1,NULL,NULL),(12,1,12,'2012-07-05 13:17:34','2012-07-05 13:18:25',2,'jh3xz5j76mj0',NULL,1,NULL,NULL),(13,1,13,'2012-07-06 11:31:01','2012-07-06 12:08:25',2,'gbpkfzthcp9q',NULL,1,NULL,NULL),(14,1,14,'2012-07-06 11:32:49','2012-07-06 11:33:09',2,'ctsjc6rlwh7w',NULL,1,NULL,NULL),(15,1,15,'2012-07-06 11:58:26','2012-07-11 08:51:14',2,'qrnod19d7knt',NULL,1,NULL,NULL),(16,1,16,'2012-07-06 12:10:29','2012-07-06 12:10:59',2,'8t1i6rnuexeb',NULL,1,NULL,NULL),(17,1,17,'2012-07-06 12:37:59','2012-07-06 12:49:11',2,'1beq8hy2899m',NULL,1,NULL,NULL),(18,1,18,'2012-07-06 13:21:02','2012-07-06 13:35:48',2,'3yeu3z0lzqwo',NULL,1,NULL,NULL),(19,1,19,'2012-07-06 14:02:55','2012-07-06 14:04:50',2,'5av076dgd70z',NULL,1,NULL,NULL),(20,1,20,'2012-07-06 14:47:46','2012-07-06 15:05:06',2,'wgo12ahsd3id',NULL,1,NULL,NULL),(21,1,21,'2012-07-06 16:27:01','2012-07-06 16:28:43',2,'g455fod9sk7h',NULL,1,NULL,NULL),(22,1,22,'2012-07-07 06:19:12','2012-07-07 06:19:12',0,'atuzg7cjdz86',NULL,NULL,NULL,NULL),(23,1,23,'2012-07-07 06:22:04','2012-07-07 06:23:24',2,'cf354el7yht6',NULL,1,NULL,NULL),(24,1,24,'2012-07-07 06:23:48','2012-07-07 06:23:48',0,'yqv7yhcmi4cl',NULL,1,NULL,NULL),(25,1,25,'2012-07-07 11:17:26','2012-07-07 11:17:26',0,'tl2bbgqiq08o',NULL,NULL,NULL,NULL),(26,1,26,'2012-07-07 13:16:02','2012-07-07 13:16:02',0,'tsy70xwoqjzr',NULL,1,NULL,NULL),(27,1,27,'2012-07-07 13:50:35','2012-07-07 14:09:05',2,'8nzxrlcv6lpj',1,NULL,NULL,NULL),(28,1,28,'2012-07-07 14:11:51','2012-07-07 14:18:46',2,'b31duzg21uv5',NULL,1,NULL,NULL),(29,1,29,'2012-07-08 04:00:49','2012-07-08 04:02:26',2,'8h8mgkq6i5x4',NULL,NULL,NULL,NULL),(30,1,30,'2012-07-08 12:07:23','2012-07-08 12:08:03',2,'k1ve1uedb1n1',NULL,1,NULL,NULL),(31,1,31,'2012-07-09 06:12:15','2012-07-09 06:12:42',2,'9u80xqvz9d33',NULL,NULL,NULL,NULL),(32,1,32,'2012-07-10 07:12:09','2012-07-10 07:16:57',2,'hfqv158216jt',3,NULL,NULL,NULL),(33,1,33,'2012-07-10 07:20:49','2012-07-10 09:20:15',2,'6mp5yfb4jn62',3,NULL,NULL,NULL),(34,1,34,'2012-07-10 07:20:54','2012-07-10 07:21:20',2,'zxej0x9nxe97',3,NULL,NULL,NULL),(35,1,35,'2012-07-10 07:25:50','2012-07-10 07:25:50',0,'6v6ctu78d5pp',3,NULL,NULL,NULL),(36,1,36,'2012-07-10 07:30:59','2012-07-10 07:41:52',2,'3tli6k70halu',3,NULL,NULL,NULL),(37,1,37,'2012-07-10 07:33:14','2012-07-10 07:42:33',2,'4pzg9ndi9epa',3,NULL,NULL,NULL),(38,1,38,'2012-07-10 07:36:23','2012-07-10 07:37:08',2,'8dj2f6ehebqx',3,NULL,NULL,NULL),(39,1,39,'2012-07-10 07:39:29','2012-07-10 07:39:29',0,'9ghroykj5als',3,NULL,NULL,NULL),(40,1,40,'2012-07-10 07:39:53','2012-07-10 08:57:23',2,'gbsy59ja8bid',3,NULL,NULL,NULL),(41,1,41,'2012-07-10 07:44:55','2012-07-10 07:47:01',2,'bk684okrz3o5',3,NULL,NULL,NULL),(42,1,42,'2012-07-10 08:01:56','2012-07-10 08:02:35',2,'a7whpj4wy4vo',3,NULL,NULL,NULL),(43,1,43,'2012-07-10 08:04:44','2012-07-10 08:14:18',2,'8cs14hv3n78',3,NULL,NULL,NULL),(44,1,44,'2012-07-10 08:11:28','2012-07-10 08:31:11',2,'ior67h3nna1d',3,NULL,NULL,NULL),(45,1,45,'2012-07-10 10:04:16','2012-07-10 10:05:54',2,'ga457a29khit',3,NULL,NULL,NULL),(46,1,46,'2012-07-10 10:59:59','2012-07-10 11:00:26',2,'pv49xjbn2lvr',3,NULL,NULL,NULL),(47,1,47,'2012-07-10 11:05:44','2012-07-10 11:06:16',2,'jwclssfgz006',3,NULL,NULL,NULL),(48,1,48,'2012-07-10 11:35:59','2012-07-10 11:39:29',2,'eembmcm7ly4j',3,NULL,NULL,NULL),(49,1,49,'2012-07-10 12:14:44','2012-07-10 12:31:57',2,'we29be0phjfl',3,NULL,NULL,NULL),(50,1,50,'2012-07-10 12:27:46','2012-07-10 12:49:20',2,'y0x9vnq0sbuc',3,NULL,NULL,NULL),(51,1,51,'2012-07-10 14:27:01','2012-07-10 14:31:36',2,'oqohdbr5fyy9',3,NULL,NULL,NULL),(52,1,52,'2012-07-10 14:48:10','2012-07-10 14:51:33',2,'q5jzf60avj1t',NULL,1,NULL,NULL),(53,1,53,'2012-07-10 15:52:59','2012-07-10 18:43:06',2,'k4b42n372kur',3,NULL,NULL,NULL),(54,1,54,'2012-07-10 23:28:23','2012-07-10 23:32:29',2,'d61p4ykotp34',3,NULL,NULL,NULL),(55,1,55,'2012-07-10 23:30:18','2012-07-10 23:37:45',2,'sox8vwsry35k',NULL,NULL,NULL,NULL),(56,1,56,'2012-07-11 00:36:03','2012-07-11 00:36:03',0,'vmwbu5ff45we',4,NULL,NULL,NULL),(57,1,57,'2012-07-11 01:59:51','2012-07-11 02:01:17',2,'nhssgqikvr32',3,NULL,NULL,NULL),(58,1,58,'2012-07-11 04:31:30','2012-07-11 04:50:17',2,'s6e0o0qp86ht',3,NULL,NULL,NULL),(59,1,59,'2012-07-11 04:32:38','2012-07-11 04:41:55',2,'rqd9s47e7dgq',3,NULL,NULL,NULL),(60,1,60,'2012-07-11 07:53:12','2012-07-11 08:04:49',2,'arc5vymj1n8m',3,NULL,NULL,NULL),(61,1,61,'2012-07-11 14:51:44','2012-07-11 14:53:13',2,'a5v34rzk1x3k',3,NULL,NULL,NULL),(62,1,62,'2012-07-11 19:33:07','2012-07-11 19:36:15',2,'87fjmtoh7hsz',NULL,NULL,NULL,NULL),(63,1,63,'2012-07-12 07:12:44','2012-07-12 07:12:44',0,'ifzo13ys6ful',6,NULL,NULL,NULL),(64,1,64,'2012-07-12 10:37:45','2012-07-12 10:41:07',2,'i64zxwkid84m',NULL,NULL,NULL,NULL),(65,1,65,'2012-07-13 01:48:57','2012-07-13 01:49:36',2,'p99xo3lgf5qi',3,NULL,NULL,NULL),(66,1,66,'2012-07-13 06:48:00','2012-07-13 06:48:00',0,'11kst0p80naa',NULL,NULL,NULL,NULL),(67,1,67,'2012-07-13 10:31:54','2012-07-13 10:31:54',0,'9xjwp2ag5vjy',NULL,NULL,NULL,NULL),(68,1,68,'2012-07-13 12:46:29','2012-07-15 15:38:50',2,'64gamny1ip8p',NULL,1,NULL,NULL),(69,1,69,'2012-07-13 23:09:09','2012-07-13 23:27:06',2,'3xvob7hi3q0i',NULL,1,NULL,NULL),(70,1,70,'2012-07-14 02:20:05','2012-07-14 02:20:36',2,'shav3jehqge8',3,NULL,NULL,NULL),(71,1,71,'2012-07-14 08:10:12','2012-07-14 08:14:14',2,'6xghxn1irmys',NULL,1,NULL,NULL),(72,1,72,'2012-07-14 23:07:23','2012-07-14 23:11:17',2,'xjiecfvo2hew',NULL,NULL,NULL,NULL),(73,1,73,'2012-07-14 23:11:34','2012-07-14 23:27:52',2,'76637uzn3j3g',NULL,NULL,NULL,NULL),(74,1,74,'2012-07-14 23:11:59','2012-07-14 23:11:59',0,'smi5vwbkrzfu',NULL,NULL,NULL,NULL),(75,1,75,'2012-07-14 23:20:55','2012-07-14 23:22:43',2,'tq62fk38vmgi',NULL,NULL,NULL,NULL),(76,1,76,'2012-07-14 23:32:00','2012-07-14 23:33:29',2,'3o985jqdaftt',NULL,NULL,NULL,NULL),(77,1,77,'2012-07-15 02:00:05','2012-07-15 02:00:52',2,'xeu1ug5fsch8',NULL,NULL,NULL,NULL),(78,1,78,'2012-07-15 02:08:51','2012-07-15 02:08:51',0,'ucbzkqq78785',NULL,NULL,NULL,NULL),(79,1,79,'2012-07-15 02:18:13','2012-07-15 02:19:43',2,'zh1i1oz4ufys',NULL,NULL,NULL,NULL),(80,1,80,'2012-07-15 02:35:41','2012-07-15 03:00:56',2,'n417q9ogjfwh',NULL,NULL,NULL,NULL),(81,1,81,'2012-07-15 08:50:34','2012-07-15 08:54:27',2,'rpjc5mwkjjp5',NULL,NULL,NULL,NULL),(82,1,82,'2012-07-15 14:30:01','2012-07-15 14:35:50',2,'5xjre2p3yh20',NULL,1,NULL,NULL),(83,NULL,NULL,'2012-07-16 01:16:38','2012-07-16 01:16:38',0,'i6h9ur9w0e3q',NULL,1,1,NULL),(84,NULL,NULL,'2012-07-16 01:16:46','2012-07-16 01:16:46',0,'z74kk8i4ntft',NULL,1,1,NULL),(85,NULL,NULL,'2012-07-16 03:27:29','2012-07-16 03:27:29',0,'16q22oit0gme',NULL,NULL,1,NULL),(86,NULL,NULL,'2012-07-16 05:07:08','2012-07-16 05:07:08',0,'rhnycvq564em',NULL,NULL,1,NULL),(87,NULL,NULL,'2012-07-16 13:44:36','2012-07-16 13:44:36',0,'2ngnt3h0075r',3,NULL,1,NULL),(88,NULL,NULL,'2012-07-17 02:02:20','2012-07-17 02:02:20',0,'uhjpbjuvre4v',NULL,NULL,1,NULL),(89,NULL,NULL,'2012-07-17 04:41:08','2012-07-17 04:41:08',0,'cn49u5sk2qfv',NULL,NULL,1,NULL),(90,NULL,NULL,'2012-07-18 09:29:06','2012-07-18 09:29:06',0,'1m0qhg9x5jxr',NULL,1,1,NULL),(91,NULL,NULL,'2012-07-18 09:29:22','2012-07-18 09:29:22',0,'48id3enwbkmc',NULL,NULL,1,NULL),(92,NULL,NULL,'2012-07-18 09:29:59','2012-07-18 09:29:59',0,'yqkovf65txs3',NULL,NULL,1,NULL),(93,NULL,NULL,'2012-07-18 09:45:11','2012-07-18 09:45:11',0,'l2ba9vusn6ri',NULL,NULL,1,NULL),(94,NULL,NULL,'2012-07-18 22:36:24','2012-07-18 22:36:24',0,'z0rmv2vhcnzs',NULL,1,1,NULL),(95,NULL,NULL,'2012-07-19 04:01:55','2012-07-19 04:01:55',0,'aus54mnqyx4p',NULL,1,1,NULL),(96,NULL,NULL,'2012-07-19 04:04:38','2012-07-19 04:04:38',0,'pykdf6gim13l',NULL,NULL,1,NULL),(97,NULL,NULL,'2012-07-19 04:11:18','2012-07-19 04:11:18',0,'ry3st11mvimj',NULL,NULL,1,NULL),(98,NULL,NULL,'2012-07-19 15:17:06','2012-07-19 15:17:06',0,'z4asqf3fpu0t',NULL,NULL,1,NULL),(99,NULL,NULL,'2012-07-20 08:47:52','2012-07-20 08:47:52',0,'m9mzj4n8udro',NULL,NULL,1,NULL),(100,NULL,NULL,'2012-07-20 08:51:52','2012-07-20 08:51:52',0,'o00onnuyu7mm',NULL,NULL,1,NULL),(101,NULL,NULL,'2012-07-20 10:18:45','2012-07-20 10:18:45',0,'xl12sqw8orjs',NULL,NULL,1,NULL),(102,NULL,NULL,'2012-07-20 17:04:02','2012-07-20 17:04:02',0,'nafxymwoe9uh',NULL,NULL,1,NULL),(103,NULL,NULL,'2012-07-21 02:22:58','2012-07-21 02:22:58',0,'8vpnhz9wwrv',NULL,NULL,1,NULL),(104,NULL,NULL,'2012-07-21 03:49:07','2012-07-21 03:49:07',0,'rodwoqh9f6wb',NULL,NULL,1,NULL),(105,NULL,NULL,'2012-07-21 11:59:41','2012-07-21 11:59:41',0,'aor4jt8xjsml',NULL,NULL,1,NULL),(106,NULL,NULL,'2012-07-22 00:18:26','2012-07-22 00:18:26',0,'w6hhulgmuli4',NULL,NULL,1,NULL),(107,NULL,NULL,'2012-07-22 00:19:47','2012-07-22 00:19:47',0,'wkcdm5xdmdkg',NULL,NULL,1,NULL),(108,NULL,NULL,'2012-07-22 00:20:53','2012-07-22 00:20:53',0,'rrwizrl3mjdv',NULL,NULL,1,NULL),(109,NULL,NULL,'2012-07-22 00:21:25','2012-07-22 00:21:25',0,'do56ismw9lxc',NULL,NULL,1,NULL),(110,NULL,NULL,'2012-07-22 00:22:26','2012-07-22 00:22:26',0,'7a9g2e6tatok',NULL,NULL,1,NULL),(111,NULL,NULL,'2012-07-22 03:29:19','2012-07-22 03:29:19',0,'b2zuspvbh2ey',NULL,NULL,1,NULL),(112,NULL,NULL,'2012-07-22 03:30:05','2012-07-22 03:30:05',0,'gffafn300113',NULL,NULL,1,NULL),(113,NULL,NULL,'2012-07-22 03:32:40','2012-07-22 03:32:40',0,'gg2wotbikpzb',NULL,NULL,1,NULL),(114,NULL,NULL,'2012-07-22 03:34:56','2012-07-22 03:34:56',0,'uzexprumvk3i',NULL,NULL,1,NULL),(115,NULL,NULL,'2012-07-22 03:35:40','2012-07-22 03:35:40',0,'qb7ywxuxv6hq',NULL,NULL,1,NULL),(116,NULL,NULL,'2012-07-22 03:36:24','2012-07-22 03:36:24',0,'c2s044086ge8',NULL,NULL,1,NULL),(117,NULL,NULL,'2012-07-22 04:16:08','2012-07-22 04:16:08',0,'fg13jt8xo2xc',NULL,NULL,1,NULL),(118,NULL,NULL,'2012-07-22 05:39:43','2012-07-22 05:39:43',0,'4em57vj9vchw',NULL,NULL,1,NULL),(119,NULL,NULL,'2012-07-22 10:29:25','2012-07-22 10:29:25',0,'ox3djdo8gphx',NULL,NULL,1,NULL),(120,NULL,NULL,'2012-07-22 13:52:55','2012-07-22 13:52:55',0,'aqpztjz2gcbr',NULL,NULL,1,NULL),(121,NULL,NULL,'2012-07-23 03:05:53','2012-07-23 03:05:53',0,'y6en0vtar202',NULL,NULL,1,NULL),(122,NULL,NULL,'2012-07-23 10:44:47','2012-07-23 10:44:47',0,'x7f4jwk2vdbl',NULL,NULL,1,NULL),(123,NULL,NULL,'2012-07-23 12:54:51','2012-07-23 12:54:51',0,'oh18cwnjdgz5',NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `status_code` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `link_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `page_type` int(11) DEFAULT '0',
  `step_id` int(11) DEFAULT NULL,
  `sidebar` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'','<p><br></p>',NULL,1,'c5fo2sf11y3l','2012-06-27 13:39:25','2012-07-03 05:10:20',1,NULL,NULL),(2,'SMXJul2012_Signup_list',NULL,NULL,NULL,'hn5f900efke8','2012-07-23 10:37:20','2012-07-23 10:37:20',0,1,NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'The 9 to 5 Millionaire Book','2012-06-27 13:39:25','2012-07-23 19:53:49','the-9-to-5-millionaire-book',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referrals`
--

DROP TABLE IF EXISTS `referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referrals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referrals`
--

LOCK TABLES `referrals` WRITE;
/*!40000 ALTER TABLE `referrals` DISABLE KEYS */;
INSERT INTO `referrals` VALUES (1,'iu84p2213xaf','http://9to5mil.com/?a=iu84p2213xaf','2012-06-27 15:15:24','2012-06-27 15:15:24'),(2,'iu84p2213xaf','http://9to5mil.com/?a=iu84p2213xaf&utm_source=MadMimi&utm_medium=email&utm_content=Hi&utm_campaign=The+9+to+5+Millionaire+Book+-+Affiliate+5&utm_term=Click+here+to+subscribe','2012-06-27 15:41:06','2012-06-27 15:41:06'),(3,'iu84p2213xaf','http://9to5mil.com/?a=iu84p2213xaf','2012-06-27 15:43:09','2012-06-27 15:43:09'),(4,'2pu03tc8xnvw','http://9to5mil.com/?a=2pu03tc8xnvw&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+1+salvi&utm_term=Just+click+here+to+Sign+Up','2012-06-28 03:33:08','2012-06-28 03:33:08'),(5,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-06-28 13:37:55','2012-06-28 13:37:55'),(6,'zzg0qpydhg1r','http://9to5mil.com/?a=zzg0qpydhg1r&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+2+Learning+Curve&utm_term=Just+click+here+to+Sign+Up','2012-06-29 09:14:17','2012-06-29 09:14:17'),(7,'ikupgsrpmeoc','http://9to5mil.com/?a=ikupgsrpmeoc&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+7+fb+&utm_term=Click+here+to+subscribe','2012-06-29 13:56:31','2012-06-29 13:56:31'),(8,'2pu03tc8xnvw','http://9to5mil.com/?a=2pu03tc8xnvw&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free!&utm_campaign=The+9+to+5+Millionaire+Book+-+1+salvi&utm_term=Click+here+to+subscribe','2012-07-02 15:05:39','2012-07-02 15:05:39'),(9,'2pu03tc8xnvw','http://9to5mil.com/?a=2pu03tc8xnvw&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free!&utm_campaign=The+9+to+5+Millionaire+Book+-+1+salvi&utm_term=Just+click+here+to+Sign+Up','2012-07-02 15:05:39','2012-07-02 15:05:39'),(10,'2pu03tc8xnvw','http://9to5mil.com/?a=2pu03tc8xnvw','2012-07-03 02:56:39','2012-07-03 02:56:39'),(11,'2pu03tc8xnvw','http://9to5mil.com/?a=2pu03tc8xnvw','2012-07-04 07:54:10','2012-07-04 07:54:10'),(12,'2pu03tc8xnvw','http://9to5mil.com/?a=2pu03tc8xnvw','2012-07-04 08:19:42','2012-07-04 08:19:42'),(13,'2pu03tc8xnvw','http://9to5mil.com/?a=2pu03tc8xnvw','2012-07-04 09:24:00','2012-07-04 09:24:00'),(14,'2pu03tc8xnvw','http://9to5mil.com/?a=2pu03tc8xnvw','2012-07-04 09:24:03','2012-07-04 09:24:03'),(15,'2pu03tc8xnvw','http://9to5mil.com/?a=2pu03tc8xnvw','2012-07-04 09:49:26','2012-07-04 09:49:26'),(16,'2pu03tc8xnvw','http://9to5mil.com/?a=2pu03tc8xnvw','2012-07-04 10:40:19','2012-07-04 10:40:19'),(17,'2pu03tc8xnvw','http://9to5mil.com/?a=2pu03tc8xnvw','2012-07-04 14:19:29','2012-07-04 14:19:29'),(18,'qkvsis9l5v5s','http://9to5mil.com/?a=qkvsis9l5v5s','2012-07-04 16:23:19','2012-07-04 16:23:19'),(19,'2pu03tc8xnvw','http://9to5mil.com/?a=2pu03tc8xnvw','2012-07-04 21:51:23','2012-07-04 21:51:23'),(20,'2pu03tc8xnvw','http://9to5mil.com/?a=2pu03tc8xnvw','2012-07-04 21:55:25','2012-07-04 21:55:25'),(21,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-05 03:13:53','2012-07-05 03:13:53'),(22,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-05 03:15:15','2012-07-05 03:15:15'),(23,'2pu03tc8xnvw','http://9to5mil.com/?a=2pu03tc8xnvw','2012-07-05 03:44:56','2012-07-05 03:44:56'),(24,'qkvsis9l5v5s','http://9to5mil.com/?a=qkvsis9l5v5s','2012-07-05 08:51:03','2012-07-05 08:51:03'),(25,'2pu03tc8xnvw','http://9to5mil.com/?a=2pu03tc8xnvw','2012-07-07 13:48:49','2012-07-07 13:48:49'),(26,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 07:09:24','2012-07-10 07:09:24'),(27,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 07:11:00','2012-07-10 07:11:00'),(28,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 07:14:32','2012-07-10 07:14:32'),(29,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free!&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 07:18:09','2012-07-10 07:18:09'),(30,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 07:18:10','2012-07-10 07:18:10'),(31,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 07:20:10','2012-07-10 07:20:10'),(32,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 07:20:16','2012-07-10 07:20:16'),(33,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 07:24:28','2012-07-10 07:24:28'),(34,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 07:30:07','2012-07-10 07:30:07'),(35,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 07:35:36','2012-07-10 07:35:36'),(36,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 07:39:14','2012-07-10 07:39:14'),(37,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 07:43:34','2012-07-10 07:43:34'),(38,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 07:54:28','2012-07-10 07:54:28'),(39,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 08:01:21','2012-07-10 08:01:21'),(40,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 08:08:02','2012-07-10 08:08:02'),(41,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 10:00:08','2012-07-10 10:00:08'),(42,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 10:26:46','2012-07-10 10:26:46'),(43,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 10:59:20','2012-07-10 10:59:20'),(44,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 11:05:18','2012-07-10 11:05:18'),(45,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 11:35:25','2012-07-10 11:35:25'),(46,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 11:38:00','2012-07-10 11:38:00'),(47,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 11:41:38','2012-07-10 11:41:38'),(48,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 12:13:34','2012-07-10 12:13:34'),(49,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 12:20:29','2012-07-10 12:20:29'),(50,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 12:22:31','2012-07-10 12:22:31'),(51,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 12:32:17','2012-07-10 12:32:17'),(52,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 12:47:00','2012-07-10 12:47:00'),(53,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 14:26:23','2012-07-10 14:26:23'),(54,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 15:50:42','2012-07-10 15:50:42'),(55,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-10 23:25:12','2012-07-10 23:25:12'),(56,'ruhdm03suaed','http://9to5mil.com/?a=ruhdm03suaed&utm_source=MadMimi&utm_medium=email&utm_content=Discover+how+to+retire+young%2C+happy+and+financially+free%21++&utm_campaign=The+9+to+5+Millionaire+Book+-+4+Cagape&utm_term=Just+click+here+to+Sign+Up','2012-07-11 00:35:21','2012-07-11 00:35:21'),(57,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-11 01:58:39','2012-07-11 01:58:39'),(58,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-11 04:29:37','2012-07-11 04:29:37'),(59,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-11 04:32:07','2012-07-11 04:32:07'),(60,'2pu03tc8xnvw','http://9to5mil.com/?a=2pu03tc8xnvw','2012-07-11 06:35:08','2012-07-11 06:35:08'),(61,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-11 07:49:55','2012-07-11 07:49:55'),(62,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-11 14:44:33','2012-07-11 14:44:33'),(63,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-11 14:51:05','2012-07-11 14:51:05'),(64,'6x39t8nxwbe5','http://9to5mil.com/?a=6x39t8nxwbe5&utm_source=MadMimi&utm_medium=email&utm_content=Learn+how+to+retire+young%2C+happy+and+financially+free+%3A%29&utm_campaign=The+9+to+5+Millionaire+Book+-+6+Siquijor&utm_term=Just+click+here+to+Sign+Up','2012-07-12 07:10:53','2012-07-12 07:10:53'),(65,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-12 07:58:33','2012-07-12 07:58:33'),(66,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-12 13:01:54','2012-07-12 13:01:54'),(67,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-13 01:47:33','2012-07-13 01:47:33'),(68,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-13 16:36:50','2012-07-13 16:36:50'),(69,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-14 02:19:18','2012-07-14 02:19:18'),(70,'4sb463m3j9eu','http://9to5mil.com/?a=4sb463m3j9eu&utm_source=MadMimi&utm_medium=email&utm_content=How+to+retire+young%2C+happy+and+financially+free%21&utm_campaign=The+9+to+5+Millionaire+Book+-+3+CSM+Publishing&utm_term=Just+click+here+to+Sign+Up','2012-07-16 13:41:05','2012-07-16 13:41:05');
/*!40000 ALTER TABLE `referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120610162517'),('20120610162617'),('20120610162837'),('20120611164422'),('20120611171305'),('20120613095817'),('20120614052737'),('20120614094823'),('20120614114507'),('20120614114950'),('20120618105142'),('20120621072214'),('20120621074050'),('20120621085741'),('20120622123947'),('20120622125753'),('20120624100047'),('20120624142752'),('20120624145711'),('20120628085054'),('20120703024400'),('20120703030807'),('20120705090827'),('20120706142543'),('20120707143627'),('20120709115900'),('20120709120758'),('20120709130954'),('20120709171815'),('20120712115851'),('20120715151703'),('20120715194733'),('20120721135612'),('20120723111951'),('20120723112046');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_pages`
--

DROP TABLE IF EXISTS `static_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region1` text COLLATE utf8_unicode_ci,
  `region2` text COLLATE utf8_unicode_ci,
  `region3` text COLLATE utf8_unicode_ci,
  `region4` text COLLATE utf8_unicode_ci,
  `region5` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_static_pages_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_pages`
--

LOCK TABLES `static_pages` WRITE;
/*!40000 ALTER TABLE `static_pages` DISABLE KEYS */;
INSERT INTO `static_pages` VALUES (1,'2012-07-03 03:05:38','2012-07-03 03:05:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'2012-07-07 16:45:00','2012-07-23 11:28:17','News','<div style=\"text-align: center;\"><img src=\"http://gallery.mailchimp.com/685455c9c8fb12fa84cf5f51c/images/mswe_2012_co_presentors_logos.jpg\" alt=\"\"></div><div style=\"text-align: center;\"><img src=\"http://gallery.mailchimp.com/685455c9c8fb12fa84cf5f51c/images/mswe_manila2012_header3.jpg\" alt=\"\"></div><div style=\"text-align: center;\"><br></div><div style=\"background-color: black; color: white; padding: 10px;\"><h1>Charge up your investments at Money Summit &amp; Wealth Expo!</h1><div><br></div>Most Filipinos place their hard-earned money in time deposits. That\'s fine for short-term placements. But you won\'t be able to retire or achieve financial freedom on 3%-4% a year interest rates. You have to beat inflation! Where should you invest for the long run? Stocks, pooled funds, and real estate. And if you\'re the more adventurous and aggressive type, you can trade currencies, stocks, and properties.<br><br><div style=\"text-align: left;\">Looking for more investment options other than the typical time deposits? Attend Money Summit &amp; Wealth Expo, the country’s only conference and expo on investing and trading. Learn from 12 experts who will share their investment strategies and choose from various investment alternatives such as stocks, funds, forex, and real estate.</div></div><h2><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><img src=\"http://gallery.mailchimp.com/685455c9c8fb12fa84cf5f51c/images/IMG_0220.JPG\" alt=\"\"></div>                                                                                                                                                                                                	                                                                    </h2><h2></h2><h2><br></h2><h2>THE MOST RESPECTED EXPERTS</h2>Where do you find top financial executives and foremost money experts share investing strategies? Only at Money Summit &amp; Wealth Expo! Confirmed speakers include:<div><br><ul><li><strong>Rex Mendoza, Philam Life CEO</strong>&nbsp;(The Investor Mindset)</li><li><strong>Jose Teodoro Limcaoco, BPI Family Savings Bank CEO</strong>&nbsp;(Investing in the Property Market)</li><li><strong>Conrado Bate, COL Financial CEO</strong>&nbsp;(Mind Over Money: A Practical Guide to Stock Investing)</li><li><strong>Omar Cruz, BPI-Philam CEO&nbsp;</strong>(Maximize Your Returns With VULs)</li><li><strong>Mario Miranda, BPI Asset Management VP</strong>&nbsp;(Eat, Sleep, Work, Invest)</li><li><strong>Lindsay Orr, Jones Lang LaSalle Leechiu COO</strong>&nbsp;(Commercial Real Estate Market Overview)</li><li><strong>Noli Alleje, The Property Forum Founder</strong>&nbsp;(Flipping Properties for Profit)</li><li><strong>Mark So, Forex Club Asia Founder</strong>&nbsp;(How To Make 400% Returns on Interest Alone)</li><li><strong>Leila Hernandez, The 9 to 5 Millionaire Author&nbsp;</strong>(The 9 to 5 Millionaire Weekend Property Investor)</li><li>and more!</li></ul><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><img src=\"http://gallery.mailchimp.com/685455c9c8fb12fa84cf5f51c/images/mswe_2012_sponsors_logos.1.jpg\" alt=\"\"></div><h2><br></h2><h2>THE BIGGEST PLAYERS</h2>Discover a world of investment opportunities from the best financial institutions and real estate developers. Confirmed sponsors and exhibitors include:<br><br><strong>Co-Presentors</strong><br><ul><li>BPI</li><li>Philam Life</li><li>COL Financial</li></ul><strong><div><strong><br></strong></div>Gold Sponsors</strong><br><ul><li>Avida Land</li><li>FXCM</li></ul><strong><div><strong><br></strong></div>Bronze Sponsors</strong><br><ul><li>Aboitiz Land</li><li>Eastwood Property Holdings</li><li>Sun Finance</li></ul><strong><div><strong><br></strong></div>Booth Sponsors</strong><br><ul><li>Alveo Land</li><li>Bluecross Insurance</li><li>BPI-Philam</li><li>Megaworld</li><li>Robinsons Land</li><li>Philam Asset Management</li><li>Philequity</li><li>Veterans Bank</li><li>and more!</li></ul><strong><div><strong><br></strong></div>Media Partners</strong><br><ul><li>BusinessWorld</li><li>MoneySense</li><li>Entrepreneur.com.ph</li><li>EYP.ph</li><li>FinanceManila.net</li><li>Inquirer.net</li><li>PinoyExchange.com</li><li>StockMarketPilipinas.com</li><li>Sulit.com.ph</li></ul><strong><div><strong><br></strong></div>Industry Partners</strong><br><ul><li>PSE Academy</li><li>RFP Philippines</li></ul><h2><br></h2><h2>YOUR INVESTMENT</h2><strong><div><strong><br></strong></div>Money Summit Manila (Individual Package)</strong><br><ul><li>Early Bird (June 1-30, 2012): P3,997 (or P3,497 if you pay within 3 days)</li><li>Pre-Registered (July 1-13, 2012): P4,497 (or P3,997 if you pay within 3 days)</li><li>Regular/Walk-in (July 14-20, 2012): P5,497</li></ul>[Note: registration fee includes access to the 2-day conference for 1 pax, 10 free passes to the 2-day expo, meals for 2 days for 1 pax, workbooks for 1 pax, and access to all speakers\' videos and PowerPoint presentations]<br><br><strong>Money Summit Manila (Buy 1-Take 1 Package)</strong><br><ul><li>Early Bird (June 1-30, 2012): P6,497 (or P5,997 if you pay within 3 days)</li><li>Pre-Registered (July 1-13, 2012): P7,497 (or P6,997 if you pay within 3 days)</li><li>Regular/Walk-in (July 14-20, 2012): P8,497</li></ul>[Note: registration fee includes access to the 2-day conference for 2 pax, 10 free passes to the 2-day expo, meals for 2 days for 2 pax, workbooks for 2 pax, and access to all speakers\' videos and PowerPoint presentations]<br><br><strong>Don\'t miss the biggest event on investing. Discover a world of investment opportunities at Money Summit &amp; Wealth Expo.&nbsp;<a href=\"http://iluvlearning.com/event-registration/?ee=34\" target=\"_blank\">Register today!</a></strong></div>','<div><img src=\"http://gallery.mailchimp.com/685455c9c8fb12fa84cf5f51c/images/money_summit_logo_small.1.png\" alt=\"\"></div> <h2> About Money Summit &amp; Wealth Expo</h2> Money Summit &amp; Wealth Expo is the only conference and expo in the Philippines on investing and trading. Its aim is to educate and empower self-directed individual investors through access to investment experts. It\'s also a marketplace of financial instruments and real estate projects.<br> <br> Now on its fourth run, Money Summit &amp; Wealth Expo has attracted over a thousand investors, traders, and entrepreneurs from across the Philippines.<br> <br> <em> \"There is a wealth of learning that can be obtained from Money Summit.\"</em> - Melissa Deveza-Guinto<br> <br> <strong>How will you benefit?</strong><br> <br> 1. You will learn from money experts and investment gurus who will teach their strategies on how to<br><ul><li>pick the right stocks<br></li><li>trade foreign currencies<br></li><li>earn from condo rentals<br></li><li>buy and sell properties<br></li><li>invest in pooled funds<br></li><li>flip properties<br></li><li>and more!<br></li></ul> <br> 2. You can visit the expo featuring 30 exhibitors offering&nbsp; various investment opportunities from<br><ul><li>banks<br></li><li>investment companies<br></li><li>insurance firms<br></li><li>stock and forex brokers<br></li><li>real estate developers<br></li><li>and more!<br></li></ul> <br> 3. You can also listen to any of the Investing 101 talks and product presentations at the expo area.<br> <br> <em>\"High value for my money and time. The knowledge after and meeting people are priceless.\"</em> - Claire Tangonan<br> <br> <strong>Top 7 reasons why you should attend:</strong><br><ol><li>It is the only conference for investors and traders like you.<br></li><li>Your specific needs are met, whether you are a novice, intermediate or sophisticated investor.<br></li><li>You learn only from the best money and property experts in the industry.<br></li><li>You discover the widest array of investment products and services.<br></li><li>You meet like-minded investors, traders, executives, professionals, and entrepreneurs.<br></li><li>You get the best value for your money.<br></li><li>It will drive you to action that will help you build your wealth.<br></li></ol> <br> <em>\"This is one of the best conferences I have ever attended where I learned a lot!\"</em> - Marieta Cruz<br> <br> To know more about Money Summit &amp; Wealth Expo, <a href=\"http://conference.money-summit.com/wp-content/uploads/2012/04/money-summit-logo-small.png\" target=\"_blank\">visit our website.&nbsp;</a><br>','','','','news'),(3,'2012-07-07 16:45:00','2012-07-23 11:28:18','Contact','<!-- Do not change code! --><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td><iframe src=\"http://www.foxyform.com/form.php?id=280223&amp;sec_hash=8f4e43b2f1c\" frameborder=\"0\" height=\"490\" width=\"400\"></iframe></td></tr><tr><td align=\"center\"><a style=\"font:8px Arial;color:#5C5C5C;\" href=\"http://www.foxyform.com\">foxyform.com</a></td></tr></tbody></table><!-- Do not change code! -->','<h1>For inquiries:</h1><h3 align=\"center\"><font color=\"#000000\"><a href=\"mailto:inquiry@9to5mil.com\">inquiry@9to5mil.com</a></font><br></h3>','&nbsp;','&nbsp;','&nbsp;','contact'),(4,'2012-07-07 16:45:00','2012-07-23 11:28:18','Homepage','<iframe width=\"640\" height=\"360\" frameborder=\"0\" allowfullscreen=\"\" src=\"http://www.youtube.com/embed/uP4nRTTfXqo?autoplay=1&amp;controls=0&amp;rel=0&amp;showinfo=0\"></iframe>','<span>I\'m Leila Hernandez,</span>\nand I was holding a full time 9 to 5 job, having had key positions in various multinational companies here and abroad, when I decided\n<em>I didn\'t want to grow old working and retire poor.</em>\nSo I was a 9 to 5 Millionaire for several years, then one day, I made it.\n<em>I became financially free, no more need for a 9 to 5 job.</em>',NULL,NULL,NULL,'homepage'),(5,'2012-07-23 11:21:51','2012-07-23 11:44:09','Books','<br>','','','','','books'),(7,'2012-07-23 11:21:51','2012-07-23 11:28:18','Merchandise',NULL,NULL,NULL,NULL,NULL,'merchandise'),(9,'2012-07-23 11:21:51','2012-07-23 11:28:18','Seminars',NULL,NULL,NULL,NULL,NULL,'seminars');
/*!40000 ALTER TABLE `static_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `steps`
--

DROP TABLE IF EXISTS `steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `next_id` int(11) DEFAULT NULL,
  `is_first` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `steps`
--

LOCK TABLES `steps` WRITE;
/*!40000 ALTER TABLE `steps` DISABLE KEYS */;
INSERT INTO `steps` VALUES (1,'SMXJul2012_Signup_list',NULL,NULL,'2012-07-23 10:37:19','2012-07-23 10:37:19',1);
/*!40000 ALTER TABLE `steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` VALUES (1,'JP Dorado','doradojohnphilip@yahoo.com','2012-06-27 14:28:27','2012-06-27 14:28:27','jp-dorado'),(2,'leila','leila_hernandez2004@yahoo.com.sg','2012-06-28 02:43:19','2012-06-28 02:43:19','leila'),(3,'Rystraum','rystraum@gmail.com','2012-06-28 04:14:36','2012-06-28 04:14:36','rystraum'),(5,'Leonard Castañeda','castanedas.biz@gmail.com','2012-07-04 07:55:15','2012-07-04 07:55:15','leonard-castaneda'),(6,'arlyn alanano','aopangs@yahoo.com','2012-07-04 08:20:24','2012-07-04 08:20:24','arlyn-alanano'),(7,'Nancy','nancyteng_gaw@yahoo.com','2012-07-04 09:49:56','2012-07-04 09:49:56','nancy'),(8,'Ray Mark','makivitaplus@gmail.com','2012-07-04 14:21:06','2012-07-04 14:21:06','ray-mark'),(9,'anton diaz','anton@diaz.ph','2012-07-04 22:12:58','2012-07-04 22:12:58','anton-diaz'),(10,'Juliet L. Sacay','ligan.juliet@gmail.com','2012-07-05 03:45:30','2012-07-05 03:45:30','juliet-l-sacay'),(11,'Rystraum','rystraum@loudcloud.ph','2012-07-05 12:00:46','2012-07-05 12:00:46','rystraum--2'),(12,'9to5millionaire','9to5millionaire@gmail.com','2012-07-05 13:17:34','2012-07-05 13:17:34','9to5millionaire'),(13,'Marly Barrameda','marlybbb@gmail.com','2012-07-06 11:31:01','2012-07-06 11:31:01','marly-barrameda'),(14,'Carlo Acetre','carlo.acetre@yahoo.com','2012-07-06 11:32:49','2012-07-06 11:32:49','carlo-acetre'),(15,'Evangeline Tanate','Vanjin07@aol.com','2012-07-06 11:58:26','2012-07-06 11:58:26','evangeline-tanate'),(16,'Sabrina ann chan','Sabrina_no2@yahoo.com','2012-07-06 12:10:29','2012-07-06 12:10:29','sabrina-ann-chan'),(17,'jessica bautista','jcb1009@yahoo.com','2012-07-06 12:37:59','2012-07-06 12:37:59','jessica-bautista'),(18,'Matthew Jameson Chua','mattwcie@yahoo.com','2012-07-06 13:21:02','2012-07-06 13:21:02','matthew-jameson-chua'),(19,'rocell tumbaga','rocell_tumbaga@yahoo.com','2012-07-06 14:02:55','2012-07-06 14:02:55','rocell-tumbaga'),(20,'harold soriaga','hsoriaga@gmail.com','2012-07-06 14:47:46','2012-07-06 14:47:46','harold-soriaga'),(21,'Marj Duterte','marjorie.travels@gmail.com','2012-07-06 16:27:01','2012-07-06 16:27:01','marj-duterte'),(22,'carl dy','dy.carl@ayalaland.com.ph','2012-07-07 06:19:12','2012-07-07 06:19:12','carl-dy'),(23,'Karen','karenfugaban@ymail.com','2012-07-07 06:22:04','2012-07-07 06:22:04','karen'),(24,'avs elfa','avryl_elfa@yahoo.com','2012-07-07 06:23:48','2012-07-07 06:23:48','avs-elfa'),(25,'Ron Jason Manuel','ronjasonmanuel@gmail.com','2012-07-07 11:17:26','2012-07-07 11:17:26','ron-jason-manuel'),(26,'amor','amoravendano@gmail.com','2012-07-07 13:16:02','2012-07-07 13:16:02','amor'),(27,'Joycee Yu','joycee_yu@yahoo.com.ph','2012-07-07 13:50:35','2012-07-07 13:50:35','joycee-yu'),(28,'butz','butz_tabo2000@yahoo.com','2012-07-07 14:11:51','2012-07-07 14:11:51','butz'),(29,'Khoa','kwabee@gmail.com','2012-07-08 04:00:48','2012-07-08 04:00:48','khoa'),(30,'jennifer ranches','jenranches@gmail.com','2012-07-08 12:07:23','2012-07-08 12:07:23','jennifer-ranches'),(31,'Marinel','nelmanjeron@gmail.com','2012-07-09 06:12:14','2012-07-09 06:12:14','marinel'),(32,'Doreen Balsote','doreen.balsote@yahoo.com','2012-07-10 07:12:09','2012-07-10 07:12:09','doreen-balsote'),(33,'Desiree Redondo','dredondo@airspeed.com.ph','2012-07-10 07:20:49','2012-07-10 07:20:49','desiree-redondo'),(34,'joyce patnon','joyce.patnon@gmail.com','2012-07-10 07:20:54','2012-07-10 07:20:54','joyce-patnon'),(35,'Felix Alfelor','falfelor@yahoo.com','2012-07-10 07:25:50','2012-07-10 07:25:50','felix-alfelor'),(36,'nerissa resngit tinawin','sojourner_1501@yahoo.com','2012-07-10 07:30:59','2012-07-10 07:30:59','nerissa-resngit-tinawin'),(37,'Hydee Casumbal Cabrera','hydee_casumbal@airliftasiainc.com','2012-07-10 07:33:14','2012-07-10 07:33:14','hydee-casumbal-cabrera'),(38,'milagros r. banzon','milagros_banzon@yahoo.com','2012-07-10 07:36:23','2012-07-10 07:36:23','milagros-r-banzon'),(39,'Ana Margarita P. Zapanta','think.annette@gmail.com','2012-07-10 07:39:29','2012-07-10 07:39:29','ana-margarita-p-zapanta'),(40,'Florlynn Bassi','lenbassi@yahoo.com','2012-07-10 07:39:53','2012-07-10 07:39:53','florlynn-bassi'),(41,'Sahlee Chavez','sbb324@yahoo.com','2012-07-10 07:44:55','2012-07-10 07:44:55','sahlee-chavez'),(42,'Patricia Gonzales','patricia.gonzales@gmail.com','2012-07-10 08:01:56','2012-07-10 08:01:56','patricia-gonzales'),(43,'Loda Nacional','lmnacional@yahoo.com','2012-07-10 08:04:44','2012-07-10 08:04:44','loda-nacional'),(44,'May Ann Palad','mayannpalad@yahoo.com','2012-07-10 08:11:28','2012-07-10 08:11:28','may-ann-palad'),(45,'Alice Foronda','aliceforonda@yahoo.com','2012-07-10 10:04:16','2012-07-10 10:04:16','alice-foronda'),(46,'Susan Young','sccan70@yahoo.com','2012-07-10 10:59:59','2012-07-10 10:59:59','susan-young'),(47,'Christian B. Manaloto','among2004@yahoo.com','2012-07-10 11:05:44','2012-07-10 11:05:44','christian-b-manaloto'),(48,'Susana M. Bulaclac','sbulaclac@yahoo.com','2012-07-10 11:35:59','2012-07-10 11:35:59','susana-m-bulaclac'),(49,'Erlinda U. Valete','lindauvalete@yahoo.com','2012-07-10 12:14:44','2012-07-10 12:14:44','erlinda-u-valete'),(50,'Rhoda Peñarroyo','rhodapenarroyo@yahoo.com','2012-07-10 12:27:46','2012-07-10 12:27:46','rhoda-penarroyo'),(51,'Paul Penarroyo','paulpenarroyo@yahoo.com','2012-07-10 14:27:01','2012-07-10 14:27:01','paul-penarroyo'),(52,'gerry siquijor','gsiquijor@gmail.com','2012-07-10 14:48:10','2012-07-10 14:48:10','gerry-siquijor'),(53,'Edwin C.Conanan','econanan@yahoo.com','2012-07-10 15:52:59','2012-07-10 15:52:59','edwin-c-conanan'),(54,'Ariane May Celeste','aryhanie_quatro@yahoo.com','2012-07-10 23:28:23','2012-07-10 23:28:23','ariane-may-celeste'),(55,'Ariane May Celeste','arianemay.celeste@gatepacific.com','2012-07-10 23:30:18','2012-07-10 23:30:18','ariane-may-celeste--2'),(56,'Ronald Cagape','ronald.cagape@gmail.com','2012-07-11 00:36:03','2012-07-11 00:36:03','ronald-cagape'),(57,'Jenny Rose Arzaga','angel_7912002@yahoo.com.sg','2012-07-11 01:59:51','2012-07-11 01:59:51','jenny-rose-arzaga'),(58,'Romeo D. Mangalino','rgmangalino@yahoo.com','2012-07-11 04:31:30','2012-07-11 04:31:30','romeo-d-mangalino'),(59,'Toni Rose B. Cadaviz','tonirose_cadaviz@yahoo.com','2012-07-11 04:32:38','2012-07-11 04:32:38','toni-rose-b-cadaviz'),(60,'nerissa de guzman','nerie_de_guzman@yahoo.com','2012-07-11 07:53:12','2012-07-11 07:53:12','nerissa-de-guzman'),(61,'emma','anzel_simple29@yahoo.com','2012-07-11 14:51:44','2012-07-11 14:51:44','emma'),(62,'Robert','i24hrs@gmail.com','2012-07-11 19:33:07','2012-07-11 19:33:07','robert'),(63,'ezra','ezraangelica.montemayor@ge.com','2012-07-12 07:12:44','2012-07-12 07:12:44','ezra'),(64,'Rowena','weng221@gmail.com','2012-07-12 10:37:45','2012-07-12 10:37:45','rowena'),(65,'Rosemarie Buhion','rose@fjcm.org','2012-07-13 01:48:57','2012-07-13 01:48:57','rosemarie-buhion'),(66,'angelfiel estenzo','estenzo.angelfiel@gmail.com','2012-07-13 06:48:00','2012-07-13 06:48:00','angelfiel-estenzo'),(67,'gringo cho montallana','go_montallana@yahoo.com','2012-07-13 10:31:54','2012-07-13 10:31:54','gringo-cho-montallana'),(68,'Glorinda Fe Alvizo','glorindafe@yahoo.com','2012-07-13 12:46:29','2012-07-13 12:46:29','glorinda-fe-alvizo'),(69,'charie nievera','cha.nievera@yahoo.com','2012-07-13 23:09:09','2012-07-13 23:09:09','charie-nievera'),(70,'marilyn bitong','lynn_bitong@yahoo.com','2012-07-14 02:20:05','2012-07-14 02:20:05','marilyn-bitong'),(71,'joe','jojotomines@yahoo.com','2012-07-14 08:10:12','2012-07-14 08:10:12','joe'),(72,'Angelie Luna','angelieluna@gmail.com','2012-07-14 23:07:23','2012-07-14 23:07:23','angelie-luna'),(73,'Paul Valbuena','paulvalbuena@gmail.com','2012-07-14 23:11:34','2012-07-14 23:11:34','paul-valbuena'),(74,'Wilson M. Casugo','wmcasugo@yahoo.com','2012-07-14 23:11:59','2012-07-14 23:11:59','wilson-m-casugo'),(75,'laarni joy allanic','laarnijoyallanic@yahoo.com','2012-07-14 23:20:55','2012-07-14 23:20:55','laarni-joy-allanic'),(76,'phea','phearamos@gmail.com','2012-07-14 23:32:00','2012-07-14 23:32:00','phea'),(77,'Jo Lechoncito','mjlechoncito@gmail.com','2012-07-15 02:00:05','2012-07-15 02:00:05','jo-lechoncito'),(78,'art cepeda','artcepeda@rocketmail.com','2012-07-15 02:08:51','2012-07-15 02:08:51','art-cepeda'),(79,'Darlene ','darlene_deleon@yahoo.com','2012-07-15 02:18:13','2012-07-15 02:18:13','darlene'),(80,'red oafallas','oafallasred@yahoo.com','2012-07-15 02:35:41','2012-07-15 02:35:41','red-oafallas'),(81,'Garry A','gary501@yahoo.com.au','2012-07-15 08:50:34','2012-07-15 08:50:34','garry-a'),(82,'MA CRISTINA SOLON','dotsholes@gmail.com','2012-07-15 14:30:00','2012-07-15 14:30:00','ma-cristina-solon'),(83,'julienne nido','wahinejulz@yahoo.com','2012-07-16 01:16:38','2012-07-16 01:16:38','julienne-nido'),(84,'julienne nido','wahinejulz@yahoo.co','2012-07-16 01:16:46','2012-07-16 01:16:46','julienne-nido--2'),(85,'marites de la torre','botcomia@yahoo.com','2012-07-16 03:27:29','2012-07-16 03:27:29','marites-de-la-torre'),(86,'Faith Tonio','Faith_Tonio-CST@abs-cbn.com','2012-07-16 05:07:08','2012-07-16 05:07:08','faith-tonio'),(87,'Mary Magdalene G. Delen','mmdelen_cute_16@yahoo.com','2012-07-16 13:44:36','2012-07-16 13:44:36','mary-magdalene-g-delen'),(88,'Cristy Lobo','cristylobo@yahoo.com','2012-07-17 02:02:20','2012-07-17 02:02:20','cristy-lobo'),(89,'Linzar John Mejorada','silent_minnish@yahoo.com','2012-07-17 04:41:08','2012-07-17 04:41:08','linzar-john-mejorada'),(90,'Loida Z. Lalongisip','loida_zl@yahoo.com','2012-07-18 09:29:06','2012-07-18 09:29:06','loida-z-lalongisip'),(91,'gilda manucay','gildamanucay@yahoo.com','2012-07-18 22:36:24','2012-07-18 22:36:24','gilda-manucay'),(92,'Nueva','nuevaviola@yahoo.com','2012-07-19 04:01:55','2012-07-19 04:01:55','nueva'),(93,'Nueva','nuevaviola@gmail.com','2012-07-19 04:11:18','2012-07-19 04:11:18','nueva--2'),(94,'Ma. Romina M. Go','marou_go@yahoo.com','2012-07-19 15:17:06','2012-07-19 15:17:06','ma-romina-m-go'),(95,'Deo Marte','dm0629@gmail.com','2012-07-20 08:47:52','2012-07-20 08:47:52','deo-marte'),(96,'alistaire','alistaire@myway.com','2012-07-20 10:18:45','2012-07-20 10:18:45','alistaire'),(97,'Laurent','luranski@gmail.com','2012-07-20 17:04:02','2012-07-20 17:04:02','laurent'),(98,'Jamil Buergo','jamil.buergo@gmail.com','2012-07-21 02:22:58','2012-07-21 02:22:58','jamil-buergo'),(99,'Paul Gabion','paulgabion@gmail.com','2012-07-21 11:59:41','2012-07-21 11:59:41','paul-gabion'),(100,'Gloria','g_worldtranscription@yahoo.com.ph','2012-07-22 00:18:26','2012-07-22 00:18:26','gloria'),(101,'Gloria Guido','gergiana@yahoo.com','2012-07-22 03:35:40','2012-07-22 03:35:40','gloria-guido'),(102,'joy bernardo','joyvbernardo@globelines.com.ph','2012-07-22 04:16:08','2012-07-22 04:16:08','joy-bernardo'),(103,'joy bernardo','joyvbernardo@gmail.com','2012-07-22 05:39:43','2012-07-22 05:39:43','joy-bernardo--2'),(104,'Erwin Rommel Pasquin','erwin_rommel_pasquin@yahoo.com.ph','2012-07-22 13:52:55','2012-07-22 13:52:55','erwin-rommel-pasquin'),(105,'Gloria Dalida','fuschia22@gmail.com','2012-07-23 03:05:53','2012-07-23 03:05:53','gloria-dalida'),(106,'Apollo Medina','amedinsf@gmail.com','2012-07-23 10:44:47','2012-07-23 10:44:47','apollo-medina'),(107,'Anna Liza Garcia','garcia_annaliza@yahoo.com','2012-07-23 12:54:51','2012-07-23 12:54:51','anna-liza-garcia');
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-07-24  4:02:39
