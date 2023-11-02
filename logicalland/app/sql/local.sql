-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) unsigned NOT NULL DEFAULT '10',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (334,'action_scheduler/migration_hook','complete','2023-09-21 07:21:20','2023-09-21 07:21:20',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1695280880;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1695280880;}',1,1,'2023-09-21 07:21:36','2023-09-21 07:21:36',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (335,'wp_mail_smtp_summary_report_email','pending','2023-09-25 14:00:00','2023-09-25 14:00:00',10,'[null]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1695650400;s:18:\"\0*\0first_timestamp\";i:1695650400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1695650400;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (336,'wp_mail_smtp_admin_notifications_update','complete','2023-09-21 07:23:04','2023-09-21 07:23:04',10,'[1]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1695280984;s:18:\"\0*\0first_timestamp\";i:1695280984;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1695280984;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-09-21 07:23:53','2023-09-21 07:23:53',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (337,'wpforms_process_forms_locator_scan','complete','2023-09-21 07:23:03','2023-09-21 07:23:03',10,'{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1695280983;s:18:\"\0*\0first_timestamp\";i:1695280983;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1695280983;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,1,'2023-09-21 07:23:53','2023-09-21 07:23:53',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (343,'wp_mail_smtp_send_usage_data','pending','2023-09-26 13:09:28','2023-09-26 13:09:28',10,'[null]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1695733768;s:18:\"\0*\0first_timestamp\";i:1695733768;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1695733768;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (345,'wp_mail_smtp_admin_notifications_update','complete','2023-09-22 07:23:53','2023-09-22 07:23:53',10,'[1]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1695367433;s:18:\"\0*\0first_timestamp\";i:1695280984;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1695367433;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-09-22 07:23:53','2023-09-22 07:23:53',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (354,'wpforms_admin_notifications_update','complete','2023-09-21 07:24:49','2023-09-21 07:24:49',10,'{\"tasks_meta_id\":2}','O:28:\"ActionScheduler_NullSchedule\":0:{}',3,1,'2023-09-21 07:24:49','2023-09-21 07:24:49',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (360,'action_scheduler/migration_hook','complete','2023-09-21 07:44:57','2023-09-21 07:44:57',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1695282297;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1695282297;}',1,1,'2023-09-21 07:45:04','2023-09-21 07:45:04',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (372,'action_scheduler/migration_hook','complete','2023-09-22 06:02:39','2023-09-22 06:02:39',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1695362559;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1695362559;}',1,1,'2023-09-22 06:02:42','2023-09-22 06:02:42',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (373,'wpforms_process_forms_locator_scan','complete','2023-09-22 06:02:42','2023-09-22 06:02:42',10,'{\"tasks_meta_id\":4}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1695362562;s:18:\"\0*\0first_timestamp\";i:1695362562;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1695362562;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,1,'2023-09-22 06:02:42','2023-09-22 06:02:42',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (376,'wpforms_admin_notifications_update','complete','2023-09-22 06:02:43','2023-09-22 06:02:43',10,'{\"tasks_meta_id\":5}','O:28:\"ActionScheduler_NullSchedule\":0:{}',3,1,'2023-09-22 06:02:47','2023-09-22 06:02:47',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (377,'action_scheduler/migration_hook','complete','2023-09-22 07:09:22','2023-09-22 07:09:22',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1695366562;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1695366562;}',1,1,'2023-09-22 07:09:39','2023-09-22 07:09:39',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (378,'wp_mail_smtp_admin_notifications_update','failed','2023-09-23 07:23:53','2023-09-23 07:23:53',10,'[1]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1695453833;s:18:\"\0*\0first_timestamp\";i:1695280984;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1695453833;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2023-09-23 13:42:34','2023-09-23 13:42:34',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (381,'action_scheduler/migration_hook','complete','2023-09-22 08:03:31','2023-09-22 08:03:31',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1695369811;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1695369811;}',1,1,'2023-09-23 13:42:34','2023-09-23 13:42:34',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (382,'aioseo_admin_notifications_update','complete','2023-09-23 13:42:33','2023-09-23 13:42:33',10,'[]','O:28:\"ActionScheduler_NullSchedule\":0:{}',4,1,'2023-09-23 13:42:35','2023-09-23 13:42:35',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (383,'wp_mail_smtp_admin_notifications_update','pending','2023-09-24 13:42:34','2023-09-24 13:42:34',10,'[1]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1695562954;s:18:\"\0*\0first_timestamp\";i:1695280984;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1695562954;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (384,'aioseo_cache_prune','pending','2023-09-24 13:42:34','2023-09-24 13:42:34',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1695562954;s:18:\"\0*\0first_timestamp\";i:1695280998;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1695562954;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',4,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (385,'action_scheduler/migration_hook','pending','2023-09-23 13:43:34','2023-09-23 13:43:34',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1695476614;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1695476614;}',1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (386,'aioseo_cache_prune','pending','2023-09-24 13:42:34','2023-09-24 13:42:34',10,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1695562954;s:18:\"\0*\0first_timestamp\";i:1695280998;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1695562954;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',4,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (387,'aioseo_image_sitemap_scan','pending','2023-09-23 13:42:44','2023-09-23 13:42:44',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1695476564;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1695476564;}',4,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration');
INSERT INTO `wp_actionscheduler_groups` VALUES (2,'wp_mail_smtp');
INSERT INTO `wp_actionscheduler_groups` VALUES (3,'wpforms');
INSERT INTO `wp_actionscheduler_groups` VALUES (4,'aioseo');
INSERT INTO `wp_actionscheduler_groups` VALUES (5,'aioseo');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (1,334,'action created','2023-09-21 07:20:20','2023-09-21 07:20:20');
INSERT INTO `wp_actionscheduler_logs` VALUES (2,334,'action started via WP Cron','2023-09-21 07:21:36','2023-09-21 07:21:36');
INSERT INTO `wp_actionscheduler_logs` VALUES (3,334,'action complete via WP Cron','2023-09-21 07:21:36','2023-09-21 07:21:36');
INSERT INTO `wp_actionscheduler_logs` VALUES (4,335,'action created','2023-09-21 07:21:36','2023-09-21 07:21:36');
INSERT INTO `wp_actionscheduler_logs` VALUES (5,336,'action created','2023-09-21 07:22:04','2023-09-21 07:22:04');
INSERT INTO `wp_actionscheduler_logs` VALUES (6,337,'action created','2023-09-21 07:23:03','2023-09-21 07:23:03');
INSERT INTO `wp_actionscheduler_logs` VALUES (12,343,'action created','2023-09-21 07:23:53','2023-09-21 07:23:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (13,337,'action started via WP Cron','2023-09-21 07:23:53','2023-09-21 07:23:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (14,337,'action complete via WP Cron','2023-09-21 07:23:53','2023-09-21 07:23:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (16,336,'action started via WP Cron','2023-09-21 07:23:53','2023-09-21 07:23:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (17,336,'action complete via WP Cron','2023-09-21 07:23:53','2023-09-21 07:23:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (18,345,'action created','2023-09-21 07:23:53','2023-09-21 07:23:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (35,354,'action created','2023-09-21 07:24:49','2023-09-21 07:24:49');
INSERT INTO `wp_actionscheduler_logs` VALUES (44,354,'action started via WP Cron','2023-09-21 07:24:49','2023-09-21 07:24:49');
INSERT INTO `wp_actionscheduler_logs` VALUES (45,354,'action complete via WP Cron','2023-09-21 07:24:49','2023-09-21 07:24:49');
INSERT INTO `wp_actionscheduler_logs` VALUES (64,360,'action created','2023-09-21 07:43:57','2023-09-21 07:43:57');
INSERT INTO `wp_actionscheduler_logs` VALUES (68,360,'action started via Async Request','2023-09-21 07:45:04','2023-09-21 07:45:04');
INSERT INTO `wp_actionscheduler_logs` VALUES (69,360,'action complete via Async Request','2023-09-21 07:45:04','2023-09-21 07:45:04');
INSERT INTO `wp_actionscheduler_logs` VALUES (100,372,'action created','2023-09-22 06:01:39','2023-09-22 06:01:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (103,372,'action started via WP Cron','2023-09-22 06:02:42','2023-09-22 06:02:42');
INSERT INTO `wp_actionscheduler_logs` VALUES (104,372,'action complete via WP Cron','2023-09-22 06:02:42','2023-09-22 06:02:42');
INSERT INTO `wp_actionscheduler_logs` VALUES (105,373,'action created','2023-09-22 06:02:42','2023-09-22 06:02:42');
INSERT INTO `wp_actionscheduler_logs` VALUES (107,373,'action started via Async Request','2023-09-22 06:02:42','2023-09-22 06:02:42');
INSERT INTO `wp_actionscheduler_logs` VALUES (108,373,'action complete via Async Request','2023-09-22 06:02:42','2023-09-22 06:02:42');
INSERT INTO `wp_actionscheduler_logs` VALUES (110,376,'action created','2023-09-22 06:02:43','2023-09-22 06:02:43');
INSERT INTO `wp_actionscheduler_logs` VALUES (111,376,'action started via Async Request','2023-09-22 06:02:47','2023-09-22 06:02:47');
INSERT INTO `wp_actionscheduler_logs` VALUES (112,376,'action complete via Async Request','2023-09-22 06:02:47','2023-09-22 06:02:47');
INSERT INTO `wp_actionscheduler_logs` VALUES (113,377,'action created','2023-09-22 07:08:22','2023-09-22 07:08:22');
INSERT INTO `wp_actionscheduler_logs` VALUES (114,377,'action started via WP Cron','2023-09-22 07:09:39','2023-09-22 07:09:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (115,377,'action complete via WP Cron','2023-09-22 07:09:39','2023-09-22 07:09:39');
INSERT INTO `wp_actionscheduler_logs` VALUES (116,345,'action started via WP Cron','2023-09-22 07:23:53','2023-09-22 07:23:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (117,345,'action complete via WP Cron','2023-09-22 07:23:53','2023-09-22 07:23:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (118,378,'action created','2023-09-22 07:23:53','2023-09-22 07:23:53');
INSERT INTO `wp_actionscheduler_logs` VALUES (127,381,'action created','2023-09-22 08:02:31','2023-09-22 08:02:31');
INSERT INTO `wp_actionscheduler_logs` VALUES (128,382,'action created','2023-09-23 13:42:33','2023-09-23 13:42:33');
INSERT INTO `wp_actionscheduler_logs` VALUES (129,381,'action started via Async Request','2023-09-23 13:42:34','2023-09-23 13:42:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (130,381,'action complete via Async Request','2023-09-23 13:42:34','2023-09-23 13:42:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (131,378,'action started via Async Request','2023-09-23 13:42:34','2023-09-23 13:42:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (132,378,'action failed via Async Request: Scheduled action for wp_mail_smtp_admin_notifications_update will not be executed as no callbacks are registered.','2023-09-23 13:42:34','2023-09-23 13:42:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (133,383,'action created','2023-09-23 13:42:34','2023-09-23 13:42:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (136,384,'action created','2023-09-23 13:42:34','2023-09-23 13:42:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (138,385,'action created','2023-09-23 13:42:34','2023-09-23 13:42:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (140,386,'action created','2023-09-23 13:42:34','2023-09-23 13:42:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (141,382,'action started via Async Request','2023-09-23 13:42:34','2023-09-23 13:42:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (142,387,'action created','2023-09-23 13:42:34','2023-09-23 13:42:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (143,382,'action complete via Async Request','2023-09-23 13:42:35','2023-09-23 13:42:35');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_aioseo_cache`
--

DROP TABLE IF EXISTS `wp_aioseo_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_aioseo_cache` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(80) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `expiration` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ndx_aioseo_cache_key` (`key`),
  KEY `ndx_aioseo_cache_expiration` (`expiration`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_aioseo_cache`
--

LOCK TABLES `wp_aioseo_cache` WRITE;
/*!40000 ALTER TABLE `wp_aioseo_cache` DISABLE KEYS */;
INSERT INTO `wp_aioseo_cache` VALUES (1,'admin_notifications_update','i:1695562953;','2023-09-24 13:42:33','2023-09-23 13:42:33','2023-09-23 13:42:33');
INSERT INTO `wp_aioseo_cache` VALUES (2,'addons','a:8:{i:0;O:8:\"stdClass\":15:{s:3:\"sku\";s:16:\"aioseo-redirects\";s:4:\"name\";s:19:\"Redirection Manager\";s:7:\"version\";s:6:\"1.2.13\";s:5:\"image\";N;s:4:\"icon\";s:480:\"PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9ImFpb3Nlby1yZWRpcmVjdCI+PHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMC41OSA5LjE3TDUuNDEgNEw0IDUuNDFMOS4xNyAxMC41OEwxMC41OSA5LjE3Wk0xNC41IDRMMTYuNTQgNi4wNEw0IDE4LjU5TDUuNDEgMjBMMTcuOTYgNy40NkwyMCA5LjVWNEgxNC41Wk0xMy40MiAxNC44MkwxNC44MyAxMy40MUwxNy45NiAxNi41NEwyMCAxNC41VjIwSDE0LjVMMTYuNTUgMTcuOTVMMTMuNDIgMTQuODJaIiBmaWxsPSJjdXJyZW50Q29sb3IiIC8+PC9zdmc+\";s:6:\"levels\";a:4:{i:0;s:8:\"business\";i:1;s:6:\"agency\";i:2;s:3:\"pro\";i:3;s:5:\"elite\";}s:13:\"currentLevels\";a:2:{i:0;s:3:\"pro\";i:1;s:5:\"elite\";}s:15:\"requiresUpgrade\";b:1;s:11:\"description\";s:101:\"<p>Our Redirection Manager allows you to create and manage redirects for 404s or modified posts.</p>\n\";s:18:\"descriptionVersion\";i:0;s:11:\"downloadUrl\";s:0:\"\";s:10:\"productUrl\";s:48:\"https://aioseo.com/features/redirection-manager/\";s:12:\"learnMoreUrl\";s:48:\"https://aioseo.com/features/redirection-manager/\";s:9:\"manageUrl\";s:30:\"https://route#aioseo-redirects\";s:8:\"features\";a:1:{i:0;O:8:\"stdClass\":2:{s:13:\"license_level\";s:5:\"elite\";s:7:\"feature\";s:19:\"404-parent-redirect\";}}}i:1;O:8:\"stdClass\":15:{s:3:\"sku\";s:21:\"aioseo-link-assistant\";s:4:\"name\";s:14:\"Link Assistant\";s:7:\"version\";s:6:\"1.0.16\";s:5:\"image\";N;s:4:\"icon\";s:516:\"PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMSAxNUg3QzUuMzUgMTUgNCAxMy42NSA0IDEyQzQgMTAuMzUgNS4zNSA5IDcgOUgxMVY3SDdDNC4yNCA3IDIgOS4yNCAyIDEyQzIgMTQuNzYgNC4yNCAxNyA3IDE3SDExVjE1Wk0xNyA3SDEzVjlIMTdDMTguNjUgOSAyMCAxMC4zNSAyMCAxMkMyMCAxMy42NSAxOC42NSAxNSAxNyAxNUgxM1YxN0gxN0MxOS43NiAxNyAyMiAxNC43NiAyMiAxMkMyMiA5LjI0IDE5Ljc2IDcgMTcgN1pNMTYgMTFIOFYxM0gxNlYxMVoiIGZpbGw9ImN1cnJlbnRDb2xvciIvPjwvc3ZnPgo=\";s:6:\"levels\";a:3:{i:0;s:6:\"agency\";i:1;s:3:\"pro\";i:2;s:5:\"elite\";}s:13:\"currentLevels\";a:2:{i:0;s:3:\"pro\";i:1;s:5:\"elite\";}s:15:\"requiresUpgrade\";b:1;s:11:\"description\";s:283:\"<p>Super-charge your SEO with Link Assistant! Get relevant suggestions for adding internal links to older content as well as finding any orphaned posts that have no internal links. Use our reporting feature to see all link suggestions or add them directly from any page or post.</p>\n\";s:18:\"descriptionVersion\";i:0;s:11:\"downloadUrl\";s:0:\"\";s:10:\"productUrl\";s:39:\"https://aioseo.com/docs/link-assistant/\";s:12:\"learnMoreUrl\";s:39:\"https://aioseo.com/docs/link-assistant/\";s:9:\"manageUrl\";s:35:\"https://route#aioseo-link-assistant\";s:8:\"features\";a:0:{}}i:2;O:8:\"stdClass\":15:{s:3:\"sku\";s:20:\"aioseo-video-sitemap\";s:4:\"name\";s:13:\"Video Sitemap\";s:7:\"version\";s:6:\"1.1.13\";s:5:\"image\";N;s:4:\"icon\";s:16:\"svg-sitemaps-pro\";s:6:\"levels\";a:5:{i:0;s:10:\"individual\";i:1;s:8:\"business\";i:2;s:6:\"agency\";i:3;s:3:\"pro\";i:4;s:5:\"elite\";}s:13:\"currentLevels\";a:2:{i:0;s:3:\"pro\";i:1;s:5:\"elite\";}s:15:\"requiresUpgrade\";b:1;s:11:\"description\";s:243:\"<p>The Video Sitemap works in much the same way as the XML Sitemap module, it generates an XML Sitemap specifically for video content on your site. Search engines use this information to display rich snippet information in search results.</p>\n\";s:18:\"descriptionVersion\";i:0;s:11:\"downloadUrl\";s:0:\"\";s:10:\"productUrl\";s:54:\"https://aioseo.com/docs/how-to-create-a-video-sitemap/\";s:12:\"learnMoreUrl\";s:54:\"https://aioseo.com/docs/how-to-create-a-video-sitemap/\";s:9:\"manageUrl\";s:43:\"https://route#aioseo-sitemaps:video-sitemap\";s:8:\"features\";a:0:{}}i:3;O:8:\"stdClass\":15:{s:3:\"sku\";s:21:\"aioseo-local-business\";s:4:\"name\";s:18:\"Local Business SEO\";s:7:\"version\";s:6:\"1.2.18\";s:5:\"image\";N;s:4:\"icon\";s:18:\"svg-local-business\";s:6:\"levels\";a:5:{i:0;s:8:\"business\";i:1;s:6:\"agency\";i:2;s:4:\"plus\";i:3;s:3:\"pro\";i:4;s:5:\"elite\";}s:13:\"currentLevels\";a:3:{i:0;s:4:\"plus\";i:1;s:3:\"pro\";i:2;s:5:\"elite\";}s:15:\"requiresUpgrade\";b:1;s:11:\"description\";s:253:\"<p>Local Business schema markup enables you to tell Google about your business, including your business name, address and phone number, opening hours and price range. This information may be displayed as a Knowledge Graph card or business carousel.</p>\n\";s:18:\"descriptionVersion\";i:0;s:11:\"downloadUrl\";s:0:\"\";s:10:\"productUrl\";s:43:\"https://aioseo.com/docs/local-business-seo/\";s:12:\"learnMoreUrl\";s:43:\"https://aioseo.com/docs/local-business-seo/\";s:9:\"manageUrl\";s:40:\"https://route#aioseo-local-seo:locations\";s:8:\"features\";a:0:{}}i:4;O:8:\"stdClass\":15:{s:3:\"sku\";s:19:\"aioseo-news-sitemap\";s:4:\"name\";s:12:\"News Sitemap\";s:7:\"version\";s:6:\"1.0.15\";s:5:\"image\";N;s:4:\"icon\";s:16:\"svg-sitemaps-pro\";s:6:\"levels\";a:4:{i:0;s:8:\"business\";i:1;s:6:\"agency\";i:2;s:3:\"pro\";i:3;s:5:\"elite\";}s:13:\"currentLevels\";a:2:{i:0;s:3:\"pro\";i:1;s:5:\"elite\";}s:15:\"requiresUpgrade\";b:1;s:11:\"description\";s:284:\"<p>Our Google News Sitemap lets you control which content you submit to Google News and only contains articles that were published in the last 48 hours. In order to submit a News Sitemap to Google, you must have added your site to Google’s Publisher Center and had it approved.</p>\n\";s:18:\"descriptionVersion\";i:0;s:11:\"downloadUrl\";s:0:\"\";s:10:\"productUrl\";s:60:\"https://aioseo.com/docs/how-to-create-a-google-news-sitemap/\";s:12:\"learnMoreUrl\";s:60:\"https://aioseo.com/docs/how-to-create-a-google-news-sitemap/\";s:9:\"manageUrl\";s:42:\"https://route#aioseo-sitemaps:news-sitemap\";s:8:\"features\";a:0:{}}i:5;O:8:\"stdClass\":15:{s:3:\"sku\";s:16:\"aioseo-index-now\";s:4:\"name\";s:8:\"IndexNow\";s:7:\"version\";s:6:\"1.0.11\";s:5:\"image\";N;s:4:\"icon\";s:16:\"svg-sitemaps-pro\";s:6:\"levels\";a:6:{i:0;s:8:\"business\";i:1;s:6:\"agency\";i:2;s:5:\"basic\";i:3;s:4:\"plus\";i:4;s:3:\"pro\";i:5;s:5:\"elite\";}s:13:\"currentLevels\";a:4:{i:0;s:5:\"basic\";i:1;s:4:\"plus\";i:2;s:3:\"pro\";i:3;s:5:\"elite\";}s:15:\"requiresUpgrade\";b:1;s:11:\"description\";s:193:\"<p>Add IndexNow support to instantly notify search engines when your content has changed. This helps the search engines to prioritize the changes on your website and helps you rank faster.</p>\n\";s:18:\"descriptionVersion\";i:0;s:11:\"downloadUrl\";s:0:\"\";s:10:\"productUrl\";s:28:\"https://aioseo.com/index-now\";s:12:\"learnMoreUrl\";s:28:\"https://aioseo.com/index-now\";s:9:\"manageUrl\";s:45:\"https://route#aioseo-settings:webmaster-tools\";s:8:\"features\";a:0:{}}i:6;O:8:\"stdClass\":15:{s:3:\"sku\";s:15:\"aioseo-rest-api\";s:4:\"name\";s:8:\"REST API\";s:7:\"version\";s:5:\"1.0.6\";s:5:\"image\";N;s:4:\"icon\";s:280:\"PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCIgY2xhc3M9ImFpb3Nlby1jb2RlIj48cGF0aCBkPSJNOS40IDE2LjZMNC44IDEybDQuNi00LjZMOCA2bC02IDYgNiA2IDEuNC0xLjR6bTUuMiAwbDQuNi00LjYtNC42LTQuNkwxNiA2bDYgNi02IDYtMS40LTEuNHoiIGZpbGw9ImN1cnJlbnRDb2xvciIvPjwvc3ZnPg==\";s:6:\"levels\";a:3:{i:0;s:4:\"plus\";i:1;s:3:\"pro\";i:2;s:5:\"elite\";}s:13:\"currentLevels\";a:3:{i:0;s:4:\"plus\";i:1;s:3:\"pro\";i:2;s:5:\"elite\";}s:15:\"requiresUpgrade\";b:1;s:11:\"description\";s:137:\"<p>Manage your post and term SEO meta via the WordPress REST API. This addon also works seamlessly with headless WordPress installs.</p>\n\";s:18:\"descriptionVersion\";i:0;s:11:\"downloadUrl\";s:0:\"\";s:10:\"productUrl\";s:36:\"https://aioseo.com/feature/rest-api/\";s:12:\"learnMoreUrl\";s:36:\"https://aioseo.com/feature/rest-api/\";s:9:\"manageUrl\";s:0:\"\";s:8:\"features\";a:0:{}}i:7;O:8:\"stdClass\":15:{s:3:\"sku\";s:16:\"aioseo-image-seo\";s:4:\"name\";s:9:\"Image SEO\";s:7:\"version\";s:6:\"1.1.10\";s:5:\"image\";N;s:4:\"icon\";s:13:\"svg-image-seo\";s:6:\"levels\";a:5:{i:0;s:8:\"business\";i:1;s:6:\"agency\";i:2;s:4:\"plus\";i:3;s:3:\"pro\";i:4;s:5:\"elite\";}s:13:\"currentLevels\";a:3:{i:0;s:4:\"plus\";i:1;s:3:\"pro\";i:2;s:5:\"elite\";}s:15:\"requiresUpgrade\";b:1;s:11:\"description\";s:148:\"<p>Globally control the Title attribute and Alt text for images in your content. These attributes are essential for both accessibility and SEO.</p>\n\";s:18:\"descriptionVersion\";i:0;s:11:\"downloadUrl\";s:0:\"\";s:10:\"productUrl\";s:71:\"https://aioseo.com/docs/using-the-image-seo-features-in-all-in-one-seo/\";s:12:\"learnMoreUrl\";s:71:\"https://aioseo.com/docs/using-the-image-seo-features-in-all-in-one-seo/\";s:9:\"manageUrl\";s:44:\"https://route#aioseo-search-appearance:media\";s:8:\"features\";a:0:{}}}','2023-09-24 13:42:35','2023-09-23 13:42:35','2023-09-23 13:42:35');
INSERT INTO `wp_aioseo_cache` VALUES (3,'wp_notices','a:0:{}','2023-09-24 13:42:35','2023-09-23 13:42:35','2023-09-23 13:42:35');
/*!40000 ALTER TABLE `wp_aioseo_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_aioseo_notifications`
--

DROP TABLE IF EXISTS `wp_aioseo_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_aioseo_notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(13) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `addon` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `level` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `notification_id` bigint(20) unsigned DEFAULT NULL,
  `notification_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `button1_label` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `button1_action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `button2_label` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `button2_action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `dismissed` tinyint(1) NOT NULL DEFAULT '0',
  `new` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ndx_aioseo_notifications_slug` (`slug`),
  KEY `ndx_aioseo_notifications_dates` (`start`,`end`),
  KEY `ndx_aioseo_notifications_type` (`type`),
  KEY `ndx_aioseo_notifications_dismissed` (`dismissed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_aioseo_notifications`
--

LOCK TABLES `wp_aioseo_notifications` WRITE;
/*!40000 ALTER TABLE `wp_aioseo_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_aioseo_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_aioseo_posts`
--

DROP TABLE IF EXISTS `wp_aioseo_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_aioseo_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `keywords` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `keyphrases` longtext COLLATE utf8mb4_unicode_520_ci,
  `page_analysis` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_term` longtext COLLATE utf8mb4_unicode_520_ci,
  `canonical_url` text COLLATE utf8mb4_unicode_520_ci,
  `og_title` text COLLATE utf8mb4_unicode_520_ci,
  `og_description` text COLLATE utf8mb4_unicode_520_ci,
  `og_object_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT 'default',
  `og_image_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT 'default',
  `og_image_url` text COLLATE utf8mb4_unicode_520_ci,
  `og_image_width` int(11) DEFAULT NULL,
  `og_image_height` int(11) DEFAULT NULL,
  `og_image_custom_url` text COLLATE utf8mb4_unicode_520_ci,
  `og_image_custom_fields` text COLLATE utf8mb4_unicode_520_ci,
  `og_video` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `og_custom_url` text COLLATE utf8mb4_unicode_520_ci,
  `og_article_section` text COLLATE utf8mb4_unicode_520_ci,
  `og_article_tags` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_use_og` tinyint(1) DEFAULT '0',
  `twitter_card` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT 'default',
  `twitter_image_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT 'default',
  `twitter_image_url` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_custom_url` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_custom_fields` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` text COLLATE utf8mb4_unicode_520_ci,
  `seo_score` int(11) NOT NULL DEFAULT '0',
  `schema` longtext COLLATE utf8mb4_unicode_520_ci,
  `schema_type` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT 'default',
  `schema_type_options` longtext COLLATE utf8mb4_unicode_520_ci,
  `pillar_content` tinyint(1) DEFAULT NULL,
  `robots_default` tinyint(1) NOT NULL DEFAULT '1',
  `robots_noindex` tinyint(1) NOT NULL DEFAULT '0',
  `robots_noarchive` tinyint(1) NOT NULL DEFAULT '0',
  `robots_nosnippet` tinyint(1) NOT NULL DEFAULT '0',
  `robots_nofollow` tinyint(1) NOT NULL DEFAULT '0',
  `robots_noimageindex` tinyint(1) NOT NULL DEFAULT '0',
  `robots_noodp` tinyint(1) NOT NULL DEFAULT '0',
  `robots_notranslate` tinyint(1) NOT NULL DEFAULT '0',
  `robots_max_snippet` int(11) DEFAULT NULL,
  `robots_max_videopreview` int(11) DEFAULT NULL,
  `robots_max_imagepreview` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT 'large',
  `images` longtext COLLATE utf8mb4_unicode_520_ci,
  `image_scan_date` datetime DEFAULT NULL,
  `priority` float DEFAULT NULL,
  `frequency` tinytext COLLATE utf8mb4_unicode_520_ci,
  `videos` longtext COLLATE utf8mb4_unicode_520_ci,
  `video_thumbnail` text COLLATE utf8mb4_unicode_520_ci,
  `video_scan_date` datetime DEFAULT NULL,
  `local_seo` longtext COLLATE utf8mb4_unicode_520_ci,
  `limit_modified_date` tinyint(1) NOT NULL DEFAULT '0',
  `options` longtext COLLATE utf8mb4_unicode_520_ci,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ndx_aioseo_posts_post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_aioseo_posts`
--

LOCK TABLES `wp_aioseo_posts` WRITE;
/*!40000 ALTER TABLE `wp_aioseo_posts` DISABLE KEYS */;
INSERT INTO `wp_aioseo_posts` VALUES (1,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large','[{\"image:loc\":\"http:\\/\\/localhost:10003\\/wp-content\\/uploads\\/2023\\/09\\/logo_60.png\"}]','2023-09-21 07:25:57',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:25:57','2023-09-21 07:25:57');
INSERT INTO `wp_aioseo_posts` VALUES (2,54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large','[{\"image:loc\":\"http:\\/\\/localhost:10003\\/wp-content\\/uploads\\/2023\\/09\\/logo_60-1.png\"}]','2023-09-21 07:25:57',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:25:57','2023-09-21 07:25:57');
INSERT INTO `wp_aioseo_posts` VALUES (3,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:25:57',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:25:57','2023-09-21 07:25:57');
INSERT INTO `wp_aioseo_posts` VALUES (4,61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large','[{\"image:loc\":\"http:\\/\\/localhost:10003\\/wp-content\\/uploads\\/2023\\/09\\/logicalAnd.png\"}]','2023-09-21 07:25:57',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:25:57','2023-09-21 07:25:57');
INSERT INTO `wp_aioseo_posts` VALUES (5,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'website','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:25:57',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:25:57','2023-09-21 07:25:57');
INSERT INTO `wp_aioseo_posts` VALUES (6,135,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:25:57',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:25:57','2023-09-21 07:25:57');
INSERT INTO `wp_aioseo_posts` VALUES (7,136,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:25:57',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:25:57','2023-09-21 07:25:57');
INSERT INTO `wp_aioseo_posts` VALUES (8,137,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:25:57',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:25:57','2023-09-21 07:25:57');
INSERT INTO `wp_aioseo_posts` VALUES (9,138,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:25:57',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:25:57','2023-09-21 07:25:57');
INSERT INTO `wp_aioseo_posts` VALUES (10,139,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:25:57',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:25:57','2023-09-21 07:25:57');
INSERT INTO `wp_aioseo_posts` VALUES (11,140,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:26:50',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:26:50','2023-09-21 07:26:50');
INSERT INTO `wp_aioseo_posts` VALUES (12,141,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:26:50',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:26:50','2023-09-21 07:26:50');
INSERT INTO `wp_aioseo_posts` VALUES (13,142,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:26:50',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:26:50','2023-09-21 07:26:50');
INSERT INTO `wp_aioseo_posts` VALUES (14,143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:26:50',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:26:50','2023-09-21 07:26:50');
INSERT INTO `wp_aioseo_posts` VALUES (15,144,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:26:50',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:26:50','2023-09-21 07:26:50');
INSERT INTO `wp_aioseo_posts` VALUES (16,145,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:26:50',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:26:50','2023-09-21 07:26:50');
INSERT INTO `wp_aioseo_posts` VALUES (17,146,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:26:50',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:26:50','2023-09-21 07:26:50');
INSERT INTO `wp_aioseo_posts` VALUES (18,147,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:26:50',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:26:50','2023-09-21 07:26:50');
INSERT INTO `wp_aioseo_posts` VALUES (19,148,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:26:50',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:26:50','2023-09-21 07:26:50');
INSERT INTO `wp_aioseo_posts` VALUES (20,149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:26:50',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:26:50','2023-09-21 07:26:50');
INSERT INTO `wp_aioseo_posts` VALUES (21,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:28:00',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:28:00','2023-09-21 07:28:00');
INSERT INTO `wp_aioseo_posts` VALUES (22,209,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:28:00',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:28:00','2023-09-21 07:28:00');
INSERT INTO `wp_aioseo_posts` VALUES (23,230,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:28:00',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:28:00','2023-09-21 07:28:00');
INSERT INTO `wp_aioseo_posts` VALUES (24,239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:28:00',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:28:00','2023-09-21 07:28:00');
INSERT INTO `wp_aioseo_posts` VALUES (25,281,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:28:00',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:28:00','2023-09-21 07:28:00');
INSERT INTO `wp_aioseo_posts` VALUES (26,284,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:28:00',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:28:00','2023-09-21 07:28:00');
INSERT INTO `wp_aioseo_posts` VALUES (27,286,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:28:00',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:28:00','2023-09-21 07:28:00');
INSERT INTO `wp_aioseo_posts` VALUES (28,304,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:28:00',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:28:00','2023-09-21 07:28:00');
INSERT INTO `wp_aioseo_posts` VALUES (29,331,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:28:00',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:28:00','2023-09-21 07:28:00');
INSERT INTO `wp_aioseo_posts` VALUES (30,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'default','default',NULL,NULL,NULL,NULL,NULL,0,'{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}','default',NULL,0,1,0,0,0,0,0,0,0,NULL,NULL,'large',NULL,'2023-09-21 07:28:00',NULL,NULL,NULL,NULL,NULL,NULL,0,'{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}','2023-09-21 07:28:00','2023-09-21 07:28:00');
/*!40000 ALTER TABLE `wp_aioseo_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2023-09-11 04:54:47','2023-09-11 04:54:47','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_form_submissions`
--

DROP TABLE IF EXISTS `wp_form_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_form_submissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `submission_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_form_submissions`
--

LOCK TABLES `wp_form_submissions` WRITE;
/*!40000 ALTER TABLE `wp_form_submissions` DISABLE KEYS */;
INSERT INTO `wp_form_submissions` VALUES (1,'Sanjay Rawal','Sanjayrawal8585@gmail.com','Sanjayrawal8585@gmail.com','szxsdz','2023-09-21 05:03:21');
INSERT INTO `wp_form_submissions` VALUES (2,'sds','Sanjayrawal8585@gmail.com','dsdsd','dsdsd','2023-09-21 05:03:31');
INSERT INTO `wp_form_submissions` VALUES (3,'sds','Sanjayrawal8585@gmail.com','dsdsd','dsdsd','2023-09-21 05:03:59');
INSERT INTO `wp_form_submissions` VALUES (4,'sds','Sanjayrawal8585@gmail.com','dsdsd','dsdsd','2023-09-21 05:05:41');
INSERT INTO `wp_form_submissions` VALUES (5,'sds','Sanjayrawal8585@gmail.com','dsdsd','dsdsd','2023-09-21 05:06:00');
INSERT INTO `wp_form_submissions` VALUES (6,'sds','Sanjayrawal8585@gmail.com','dsdsd','dsdsd','2023-09-21 05:08:23');
INSERT INTO `wp_form_submissions` VALUES (7,'ラワル','Sanjayrawal411@gmail.com','サンジャや','テストため','2023-09-21 05:13:50');
INSERT INTO `wp_form_submissions` VALUES (10,'s','Sanjayrawal8585@gmail.com','sadsa','daa','2023-09-21 06:13:51');
INSERT INTO `wp_form_submissions` VALUES (11,'dsdsa','Sanjayrawal411@gmail.co','sadsa','dadsdasd','2023-09-21 06:19:14');
INSERT INTO `wp_form_submissions` VALUES (12,'bgh n','Sanjayrawal8585@gmail.com','b n','bnm','2023-09-21 12:35:10');
INSERT INTO `wp_form_submissions` VALUES (13,'dwsa','Sanjayrawal411@gmail.com','esd','sadsa','2023-09-23 14:00:37');
INSERT INTO `wp_form_submissions` VALUES (14,'sanjay','Sanjayrawal411@gmail.com','ew','ewd','2023-09-23 14:18:52');
/*!40000 ALTER TABLE `wp_form_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_fsmpt_email_logs`
--

DROP TABLE IF EXISTS `wp_fsmpt_email_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_fsmpt_email_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned DEFAULT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_520_ci,
  `headers` longtext COLLATE utf8mb4_unicode_520_ci,
  `attachments` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT 'pending',
  `response` text COLLATE utf8mb4_unicode_520_ci,
  `extra` text COLLATE utf8mb4_unicode_520_ci,
  `retries` int(10) unsigned DEFAULT '0',
  `resent_count` int(10) unsigned DEFAULT '0',
  `source` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_fsmpt_email_logs`
--

LOCK TABLES `wp_fsmpt_email_logs` WRITE;
/*!40000 ALTER TABLE `wp_fsmpt_email_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_fsmpt_email_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1051 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10003','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10003','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','logicalland','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','sanjayrawal8585@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','http://localhost:10000/','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','Sanjayrawal8585@gmail.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','sanjay123','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','1025','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:48:\"cf7-email-add-on/contact-form-7-email-add-on.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:5:{i:0;s:84:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-content/themes/my-theme/page.php\";i:2;s:85:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-content/themes/my-theme/index.php\";i:3;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-content/themes/my-theme/functions.php\";i:4;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-content/themes/my-theme/single.php\";i:5;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-content/themes/my-theme/sidebar.php\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','my-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','my-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','55853','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','0','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:1:{s:48:\"cf7-email-add-on/contact-form-7-email-add-on.php\";s:26:\"cf7_email_add_on_uninstall\";}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','2','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','2','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1709960087','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','disabled','no');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','55853','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:68:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:17:\"aioseo_manage_seo\";b:1;s:20:\"aioseo_page_analysis\";b:1;s:28:\"aioseo_page_general_settings\";b:1;s:29:\"aioseo_page_advanced_settings\";b:1;s:27:\"aioseo_page_schema_settings\";b:1;s:27:\"aioseo_page_social_settings\";b:1;s:21:\"mailjet_plugin_access\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:39:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:20:\"aioseo_page_analysis\";b:1;s:28:\"aioseo_page_general_settings\";b:1;s:29:\"aioseo_page_advanced_settings\";b:1;s:27:\"aioseo_page_schema_settings\";b:1;s:27:\"aioseo_page_social_settings\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:15:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"aioseo_page_analysis\";b:1;s:28:\"aioseo_page_general_settings\";b:1;s:29:\"aioseo_page_advanced_settings\";b:1;s:27:\"aioseo_page_schema_settings\";b:1;s:27:\"aioseo_page_social_settings\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:10:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:20:\"aioseo_page_analysis\";b:1;s:28:\"aioseo_page_general_settings\";b:1;s:29:\"aioseo_page_advanced_settings\";b:1;s:27:\"aioseo_page_schema_settings\";b:1;s:27:\"aioseo_page_social_settings\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:7:{i:1696474487;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1696481687;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1696481873;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1696481874;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1696832063;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1696913687;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'_transient_wp_core_block_css_files','a:496:{i:0;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/archives/editor-rtl.css\";i:1;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/archives/editor-rtl.min.css\";i:2;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/archives/editor.css\";i:3;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/archives/editor.min.css\";i:4;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/archives/style-rtl.css\";i:5;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/archives/style-rtl.min.css\";i:6;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/archives/style.css\";i:7;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/archives/style.min.css\";i:8;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/audio/editor-rtl.css\";i:9;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/audio/editor-rtl.min.css\";i:10;s:84:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/audio/editor.css\";i:11;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/audio/editor.min.css\";i:12;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/audio/style-rtl.css\";i:13;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/audio/style-rtl.min.css\";i:14;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/audio/style.css\";i:15;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/audio/style.min.css\";i:16;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/audio/theme-rtl.css\";i:17;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/audio/theme-rtl.min.css\";i:18;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/audio/theme.css\";i:19;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/audio/theme.min.css\";i:20;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/avatar/editor-rtl.css\";i:21;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/avatar/editor-rtl.min.css\";i:22;s:85:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/avatar/editor.css\";i:23;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/avatar/editor.min.css\";i:24;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/avatar/style-rtl.css\";i:25;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/avatar/style-rtl.min.css\";i:26;s:84:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/avatar/style.css\";i:27;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/avatar/style.min.css\";i:28;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/block/editor-rtl.css\";i:29;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/block/editor-rtl.min.css\";i:30;s:84:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/block/editor.css\";i:31;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/block/editor.min.css\";i:32;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/button/editor-rtl.css\";i:33;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/button/editor-rtl.min.css\";i:34;s:85:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/button/editor.css\";i:35;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/button/editor.min.css\";i:36;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/button/style-rtl.css\";i:37;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/button/style-rtl.min.css\";i:38;s:84:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/button/style.css\";i:39;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/button/style.min.css\";i:40;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/buttons/editor-rtl.css\";i:41;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/buttons/editor-rtl.min.css\";i:42;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/buttons/editor.css\";i:43;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/buttons/editor.min.css\";i:44;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/buttons/style-rtl.css\";i:45;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/buttons/style-rtl.min.css\";i:46;s:85:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/buttons/style.css\";i:47;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/buttons/style.min.css\";i:48;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/calendar/style-rtl.css\";i:49;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/calendar/style-rtl.min.css\";i:50;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/calendar/style.css\";i:51;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/calendar/style.min.css\";i:52;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/categories/editor-rtl.css\";i:53;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/categories/editor-rtl.min.css\";i:54;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/categories/editor.css\";i:55;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/categories/editor.min.css\";i:56;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/categories/style-rtl.css\";i:57;s:96:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/categories/style-rtl.min.css\";i:58;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/categories/style.css\";i:59;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/categories/style.min.css\";i:60;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/code/editor-rtl.css\";i:61;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/code/editor-rtl.min.css\";i:62;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/code/editor.css\";i:63;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/code/editor.min.css\";i:64;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/code/style-rtl.css\";i:65;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/code/style-rtl.min.css\";i:66;s:82:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/code/style.css\";i:67;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/code/style.min.css\";i:68;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/code/theme-rtl.css\";i:69;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/code/theme-rtl.min.css\";i:70;s:82:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/code/theme.css\";i:71;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/code/theme.min.css\";i:72;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/columns/editor-rtl.css\";i:73;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/columns/editor-rtl.min.css\";i:74;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/columns/editor.css\";i:75;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/columns/editor.min.css\";i:76;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/columns/style-rtl.css\";i:77;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/columns/style-rtl.min.css\";i:78;s:85:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/columns/style.css\";i:79;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/columns/style.min.css\";i:80;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comment-content/style-rtl.css\";i:81;s:101:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comment-content/style-rtl.min.css\";i:82;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comment-content/style.css\";i:83;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comment-content/style.min.css\";i:84;s:98:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comment-template/style-rtl.css\";i:85;s:102:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comment-template/style-rtl.min.css\";i:86;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comment-template/style.css\";i:87;s:98:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comment-template/style.min.css\";i:88;s:110:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments-pagination-numbers/editor-rtl.css\";i:89;s:114:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments-pagination-numbers/editor-rtl.min.css\";i:90;s:106:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments-pagination-numbers/editor.css\";i:91;s:110:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments-pagination-numbers/editor.min.css\";i:92;s:102:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments-pagination/editor-rtl.css\";i:93;s:106:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments-pagination/editor-rtl.min.css\";i:94;s:98:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments-pagination/editor.css\";i:95;s:102:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments-pagination/editor.min.css\";i:96;s:101:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments-pagination/style-rtl.css\";i:97;s:105:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments-pagination/style-rtl.min.css\";i:98;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments-pagination/style.css\";i:99;s:101:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments-pagination/style.min.css\";i:100;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments-title/editor-rtl.css\";i:101;s:101:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments-title/editor-rtl.min.css\";i:102;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments-title/editor.css\";i:103;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments-title/editor.min.css\";i:104;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments/editor-rtl.css\";i:105;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments/editor-rtl.min.css\";i:106;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments/editor.css\";i:107;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments/editor.min.css\";i:108;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments/style-rtl.css\";i:109;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments/style-rtl.min.css\";i:110;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments/style.css\";i:111;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/comments/style.min.css\";i:112;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/cover/editor-rtl.css\";i:113;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/cover/editor-rtl.min.css\";i:114;s:84:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/cover/editor.css\";i:115;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/cover/editor.min.css\";i:116;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/cover/style-rtl.css\";i:117;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/cover/style-rtl.min.css\";i:118;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/cover/style.css\";i:119;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/cover/style.min.css\";i:120;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/details/editor-rtl.css\";i:121;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/details/editor-rtl.min.css\";i:122;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/details/editor.css\";i:123;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/details/editor.min.css\";i:124;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/details/style-rtl.css\";i:125;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/details/style-rtl.min.css\";i:126;s:85:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/details/style.css\";i:127;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/details/style.min.css\";i:128;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/embed/editor-rtl.css\";i:129;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/embed/editor-rtl.min.css\";i:130;s:84:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/embed/editor.css\";i:131;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/embed/editor.min.css\";i:132;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/embed/style-rtl.css\";i:133;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/embed/style-rtl.min.css\";i:134;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/embed/style.css\";i:135;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/embed/style.min.css\";i:136;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/embed/theme-rtl.css\";i:137;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/embed/theme-rtl.min.css\";i:138;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/embed/theme.css\";i:139;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/embed/theme.min.css\";i:140;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/file/editor-rtl.css\";i:141;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/file/editor-rtl.min.css\";i:142;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/file/editor.css\";i:143;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/file/editor.min.css\";i:144;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/file/style-rtl.css\";i:145;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/file/style-rtl.min.css\";i:146;s:82:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/file/style.css\";i:147;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/file/style.min.css\";i:148;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/footnotes/style-rtl.css\";i:149;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/footnotes/style-rtl.min.css\";i:150;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/footnotes/style.css\";i:151;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/footnotes/style.min.css\";i:152;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/freeform/editor-rtl.css\";i:153;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/freeform/editor-rtl.min.css\";i:154;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/freeform/editor.css\";i:155;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/freeform/editor.min.css\";i:156;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/gallery/editor-rtl.css\";i:157;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/gallery/editor-rtl.min.css\";i:158;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/gallery/editor.css\";i:159;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/gallery/editor.min.css\";i:160;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/gallery/style-rtl.css\";i:161;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/gallery/style-rtl.min.css\";i:162;s:85:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/gallery/style.css\";i:163;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/gallery/style.min.css\";i:164;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/gallery/theme-rtl.css\";i:165;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/gallery/theme-rtl.min.css\";i:166;s:85:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/gallery/theme.css\";i:167;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/gallery/theme.min.css\";i:168;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/group/editor-rtl.css\";i:169;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/group/editor-rtl.min.css\";i:170;s:84:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/group/editor.css\";i:171;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/group/editor.min.css\";i:172;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/group/style-rtl.css\";i:173;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/group/style-rtl.min.css\";i:174;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/group/style.css\";i:175;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/group/style.min.css\";i:176;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/group/theme-rtl.css\";i:177;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/group/theme-rtl.min.css\";i:178;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/group/theme.css\";i:179;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/group/theme.min.css\";i:180;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/heading/style-rtl.css\";i:181;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/heading/style-rtl.min.css\";i:182;s:85:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/heading/style.css\";i:183;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/heading/style.min.css\";i:184;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/html/editor-rtl.css\";i:185;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/html/editor-rtl.min.css\";i:186;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/html/editor.css\";i:187;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/html/editor.min.css\";i:188;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/image/editor-rtl.css\";i:189;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/image/editor-rtl.min.css\";i:190;s:84:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/image/editor.css\";i:191;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/image/editor.min.css\";i:192;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/image/style-rtl.css\";i:193;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/image/style-rtl.min.css\";i:194;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/image/style.css\";i:195;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/image/style.min.css\";i:196;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/image/theme-rtl.css\";i:197;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/image/theme-rtl.min.css\";i:198;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/image/theme.css\";i:199;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/image/theme.min.css\";i:200;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/latest-comments/style-rtl.css\";i:201;s:101:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/latest-comments/style-rtl.min.css\";i:202;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/latest-comments/style.css\";i:203;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/latest-comments/style.min.css\";i:204;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/latest-posts/editor-rtl.css\";i:205;s:99:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/latest-posts/editor-rtl.min.css\";i:206;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/latest-posts/editor.css\";i:207;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/latest-posts/editor.min.css\";i:208;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/latest-posts/style-rtl.css\";i:209;s:98:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/latest-posts/style-rtl.min.css\";i:210;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/latest-posts/style.css\";i:211;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/latest-posts/style.min.css\";i:212;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/list/style-rtl.css\";i:213;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/list/style-rtl.min.css\";i:214;s:82:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/list/style.css\";i:215;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/list/style.min.css\";i:216;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/media-text/editor-rtl.css\";i:217;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/media-text/editor-rtl.min.css\";i:218;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/media-text/editor.css\";i:219;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/media-text/editor.min.css\";i:220;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/media-text/style-rtl.css\";i:221;s:96:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/media-text/style-rtl.min.css\";i:222;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/media-text/style.css\";i:223;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/media-text/style.min.css\";i:224;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/more/editor-rtl.css\";i:225;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/more/editor-rtl.min.css\";i:226;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/more/editor.css\";i:227;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/more/editor.min.css\";i:228;s:98:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation-link/editor-rtl.css\";i:229;s:102:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation-link/editor-rtl.min.css\";i:230;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation-link/editor.css\";i:231;s:98:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation-link/editor.min.css\";i:232;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation-link/style-rtl.css\";i:233;s:101:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation-link/style-rtl.min.css\";i:234;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation-link/style.css\";i:235;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation-link/style.min.css\";i:236;s:101:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation-submenu/editor-rtl.css\";i:237;s:105:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation-submenu/editor-rtl.min.css\";i:238;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation-submenu/editor.css\";i:239;s:101:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation-submenu/editor.min.css\";i:240;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation/editor-rtl.css\";i:241;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation/editor-rtl.min.css\";i:242;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation/editor.css\";i:243;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation/editor.min.css\";i:244;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation/style-rtl.css\";i:245;s:96:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation/style-rtl.min.css\";i:246;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation/style.css\";i:247;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/navigation/style.min.css\";i:248;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/nextpage/editor-rtl.css\";i:249;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/nextpage/editor-rtl.min.css\";i:250;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/nextpage/editor.css\";i:251;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/nextpage/editor.min.css\";i:252;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/page-list/editor-rtl.css\";i:253;s:96:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/page-list/editor-rtl.min.css\";i:254;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/page-list/editor.css\";i:255;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/page-list/editor.min.css\";i:256;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/page-list/style-rtl.css\";i:257;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/page-list/style-rtl.min.css\";i:258;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/page-list/style.css\";i:259;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/page-list/style.min.css\";i:260;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/paragraph/editor-rtl.css\";i:261;s:96:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/paragraph/editor-rtl.min.css\";i:262;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/paragraph/editor.css\";i:263;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/paragraph/editor.min.css\";i:264;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/paragraph/style-rtl.css\";i:265;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/paragraph/style-rtl.min.css\";i:266;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/paragraph/style.css\";i:267;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/paragraph/style.min.css\";i:268;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-author/style-rtl.css\";i:269;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-author/style-rtl.min.css\";i:270;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-author/style.css\";i:271;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-author/style.min.css\";i:272;s:101:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-comments-form/editor-rtl.css\";i:273;s:105:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-comments-form/editor-rtl.min.css\";i:274;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-comments-form/editor.css\";i:275;s:101:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-comments-form/editor.min.css\";i:276;s:100:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-comments-form/style-rtl.css\";i:277;s:104:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-comments-form/style-rtl.min.css\";i:278;s:96:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-comments-form/style.css\";i:279;s:100:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-comments-form/style.min.css\";i:280;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-date/style-rtl.css\";i:281;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-date/style-rtl.min.css\";i:282;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-date/style.css\";i:283;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-date/style.min.css\";i:284;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-excerpt/editor-rtl.css\";i:285;s:99:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-excerpt/editor-rtl.min.css\";i:286;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-excerpt/editor.css\";i:287;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-excerpt/editor.min.css\";i:288;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-excerpt/style-rtl.css\";i:289;s:98:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-excerpt/style-rtl.min.css\";i:290;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-excerpt/style.css\";i:291;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-excerpt/style.min.css\";i:292;s:102:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-featured-image/editor-rtl.css\";i:293;s:106:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-featured-image/editor-rtl.min.css\";i:294;s:98:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-featured-image/editor.css\";i:295;s:102:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-featured-image/editor.min.css\";i:296;s:101:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-featured-image/style-rtl.css\";i:297;s:105:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-featured-image/style-rtl.min.css\";i:298;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-featured-image/style.css\";i:299;s:101:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-featured-image/style.min.css\";i:300;s:102:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-navigation-link/style-rtl.css\";i:301;s:106:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-navigation-link/style-rtl.min.css\";i:302;s:98:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-navigation-link/style.css\";i:303;s:102:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-navigation-link/style.min.css\";i:304;s:96:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-template/editor-rtl.css\";i:305;s:100:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-template/editor-rtl.min.css\";i:306;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-template/editor.css\";i:307;s:96:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-template/editor.min.css\";i:308;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-template/style-rtl.css\";i:309;s:99:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-template/style-rtl.min.css\";i:310;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-template/style.css\";i:311;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-template/style.min.css\";i:312;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-terms/style-rtl.css\";i:313;s:96:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-terms/style-rtl.min.css\";i:314;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-terms/style.css\";i:315;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-terms/style.min.css\";i:316;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-title/style-rtl.css\";i:317;s:96:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-title/style-rtl.min.css\";i:318;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-title/style.css\";i:319;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/post-title/style.min.css\";i:320;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/preformatted/style-rtl.css\";i:321;s:98:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/preformatted/style-rtl.min.css\";i:322;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/preformatted/style.css\";i:323;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/preformatted/style.min.css\";i:324;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/pullquote/editor-rtl.css\";i:325;s:96:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/pullquote/editor-rtl.min.css\";i:326;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/pullquote/editor.css\";i:327;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/pullquote/editor.min.css\";i:328;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/pullquote/style-rtl.css\";i:329;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/pullquote/style-rtl.min.css\";i:330;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/pullquote/style.css\";i:331;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/pullquote/style.min.css\";i:332;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/pullquote/theme-rtl.css\";i:333;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/pullquote/theme-rtl.min.css\";i:334;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/pullquote/theme.css\";i:335;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/pullquote/theme.min.css\";i:336;s:107:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query-pagination-numbers/editor-rtl.css\";i:337;s:111:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query-pagination-numbers/editor-rtl.min.css\";i:338;s:103:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query-pagination-numbers/editor.css\";i:339;s:107:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query-pagination-numbers/editor.min.css\";i:340;s:99:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query-pagination/editor-rtl.css\";i:341;s:103:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query-pagination/editor-rtl.min.css\";i:342;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query-pagination/editor.css\";i:343;s:99:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query-pagination/editor.min.css\";i:344;s:98:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query-pagination/style-rtl.css\";i:345;s:102:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query-pagination/style-rtl.min.css\";i:346;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query-pagination/style.css\";i:347;s:98:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query-pagination/style.min.css\";i:348;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query-title/style-rtl.css\";i:349;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query-title/style-rtl.min.css\";i:350;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query-title/style.css\";i:351;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query-title/style.min.css\";i:352;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query/editor-rtl.css\";i:353;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query/editor-rtl.min.css\";i:354;s:84:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query/editor.css\";i:355;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/query/editor.min.css\";i:356;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/quote/style-rtl.css\";i:357;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/quote/style-rtl.min.css\";i:358;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/quote/style.css\";i:359;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/quote/style.min.css\";i:360;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/quote/theme-rtl.css\";i:361;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/quote/theme-rtl.min.css\";i:362;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/quote/theme.css\";i:363;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/quote/theme.min.css\";i:364;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/read-more/style-rtl.css\";i:365;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/read-more/style-rtl.min.css\";i:366;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/read-more/style.css\";i:367;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/read-more/style.min.css\";i:368;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/rss/editor-rtl.css\";i:369;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/rss/editor-rtl.min.css\";i:370;s:82:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/rss/editor.css\";i:371;s:86:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/rss/editor.min.css\";i:372;s:85:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/rss/style-rtl.css\";i:373;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/rss/style-rtl.min.css\";i:374;s:81:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/rss/style.css\";i:375;s:85:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/rss/style.min.css\";i:376;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/search/editor-rtl.css\";i:377;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/search/editor-rtl.min.css\";i:378;s:85:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/search/editor.css\";i:379;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/search/editor.min.css\";i:380;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/search/style-rtl.css\";i:381;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/search/style-rtl.min.css\";i:382;s:84:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/search/style.css\";i:383;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/search/style.min.css\";i:384;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/search/theme-rtl.css\";i:385;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/search/theme-rtl.min.css\";i:386;s:84:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/search/theme.css\";i:387;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/search/theme.min.css\";i:388;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/separator/editor-rtl.css\";i:389;s:96:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/separator/editor-rtl.min.css\";i:390;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/separator/editor.css\";i:391;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/separator/editor.min.css\";i:392;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/separator/style-rtl.css\";i:393;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/separator/style-rtl.min.css\";i:394;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/separator/style.css\";i:395;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/separator/style.min.css\";i:396;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/separator/theme-rtl.css\";i:397;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/separator/theme-rtl.min.css\";i:398;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/separator/theme.css\";i:399;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/separator/theme.min.css\";i:400;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/shortcode/editor-rtl.css\";i:401;s:96:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/shortcode/editor-rtl.min.css\";i:402;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/shortcode/editor.css\";i:403;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/shortcode/editor.min.css\";i:404;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-logo/editor-rtl.css\";i:405;s:96:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-logo/editor-rtl.min.css\";i:406;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-logo/editor.css\";i:407;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-logo/editor.min.css\";i:408;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-logo/style-rtl.css\";i:409;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-logo/style-rtl.min.css\";i:410;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-logo/style.css\";i:411;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-logo/style.min.css\";i:412;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-tagline/editor-rtl.css\";i:413;s:99:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-tagline/editor-rtl.min.css\";i:414;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-tagline/editor.css\";i:415;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-tagline/editor.min.css\";i:416;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-title/editor-rtl.css\";i:417;s:97:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-title/editor-rtl.min.css\";i:418;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-title/editor.css\";i:419;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-title/editor.min.css\";i:420;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-title/style-rtl.css\";i:421;s:96:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-title/style-rtl.min.css\";i:422;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-title/style.css\";i:423;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/site-title/style.min.css\";i:424;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/social-link/editor-rtl.css\";i:425;s:98:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/social-link/editor-rtl.min.css\";i:426;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/social-link/editor.css\";i:427;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/social-link/editor.min.css\";i:428;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/social-links/editor-rtl.css\";i:429;s:99:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/social-links/editor-rtl.min.css\";i:430;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/social-links/editor.css\";i:431;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/social-links/editor.min.css\";i:432;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/social-links/style-rtl.css\";i:433;s:98:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/social-links/style-rtl.min.css\";i:434;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/social-links/style.css\";i:435;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/social-links/style.min.css\";i:436;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/spacer/editor-rtl.css\";i:437;s:93:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/spacer/editor-rtl.min.css\";i:438;s:85:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/spacer/editor.css\";i:439;s:89:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/spacer/editor.min.css\";i:440;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/spacer/style-rtl.css\";i:441;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/spacer/style-rtl.min.css\";i:442;s:84:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/spacer/style.css\";i:443;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/spacer/style.min.css\";i:444;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/table/editor-rtl.css\";i:445;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/table/editor-rtl.min.css\";i:446;s:84:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/table/editor.css\";i:447;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/table/editor.min.css\";i:448;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/table/style-rtl.css\";i:449;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/table/style-rtl.min.css\";i:450;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/table/style.css\";i:451;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/table/style.min.css\";i:452;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/table/theme-rtl.css\";i:453;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/table/theme-rtl.min.css\";i:454;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/table/theme.css\";i:455;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/table/theme.min.css\";i:456;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/tag-cloud/style-rtl.css\";i:457;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/tag-cloud/style-rtl.min.css\";i:458;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/tag-cloud/style.css\";i:459;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/tag-cloud/style.min.css\";i:460;s:96:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/template-part/editor-rtl.css\";i:461;s:100:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/template-part/editor-rtl.min.css\";i:462;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/template-part/editor.css\";i:463;s:96:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/template-part/editor.min.css\";i:464;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/template-part/theme-rtl.css\";i:465;s:99:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/template-part/theme-rtl.min.css\";i:466;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/template-part/theme.css\";i:467;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/template-part/theme.min.css\";i:468;s:98:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/term-description/style-rtl.css\";i:469;s:102:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/term-description/style-rtl.min.css\";i:470;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/term-description/style.css\";i:471;s:98:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/term-description/style.min.css\";i:472;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/text-columns/editor-rtl.css\";i:473;s:99:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/text-columns/editor-rtl.min.css\";i:474;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/text-columns/editor.css\";i:475;s:95:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/text-columns/editor.min.css\";i:476;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/text-columns/style-rtl.css\";i:477;s:98:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/text-columns/style-rtl.min.css\";i:478;s:90:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/text-columns/style.css\";i:479;s:94:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/text-columns/style.min.css\";i:480;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/verse/style-rtl.css\";i:481;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/verse/style-rtl.min.css\";i:482;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/verse/style.css\";i:483;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/verse/style.min.css\";i:484;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/video/editor-rtl.css\";i:485;s:92:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/video/editor-rtl.min.css\";i:486;s:84:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/video/editor.css\";i:487;s:88:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/video/editor.min.css\";i:488;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/video/style-rtl.css\";i:489;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/video/style-rtl.min.css\";i:490;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/video/style.css\";i:491;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/video/style.min.css\";i:492;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/video/theme-rtl.css\";i:493;s:91:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/video/theme-rtl.min.css\";i:494;s:83:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/video/theme.css\";i:495;s:87:\"/Users/sanjay/Local Sites/logicalland/app/public/wp-includes/blocks/video/theme.min.css\";}','yes');
INSERT INTO `wp_options` VALUES (121,'nonce_key','iC A.;}H-eepF3QPm`0M )s:GLxv>#eLZHBTg[%XhAwu9&S}?~34Mrtpg<}b~fGl','no');
INSERT INTO `wp_options` VALUES (122,'nonce_salt','3[lL_u]z/9YC[1OIT*Z$dS9`3$S:*.H[R<dNv5$KWI3HMcv~&t4C%~`H1vMi55u7','no');
INSERT INTO `wp_options` VALUES (125,'theme_mods_twentytwentythree','a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1694502979;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (126,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (127,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (140,'can_compress_scripts','0','yes');
INSERT INTO `wp_options` VALUES (153,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (158,'current_theme','','yes');
INSERT INTO `wp_options` VALUES (159,'theme_mods_twentytwentyone','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1694417881;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (160,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (172,'recently_activated','a:6:{s:36:\"mailjet-for-wordpress/wp-mailjet.php\";i:1695568765;s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";i:1695476559;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:1695369761;s:24:\"wpforms-lite/wpforms.php\";i:1695369751;s:26:\"post-smtp/postman-smtp.php\";i:1695366502;s:27:\"fluent-smtp/fluent-smtp.php\";i:1695280680;}','yes');
INSERT INTO `wp_options` VALUES (181,'theme_mods_my-custom-theme','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1694502908;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (184,'theme_switched_via_customizer','','yes');
INSERT INTO `wp_options` VALUES (185,'customize_stashed_theme_mods','a:0:{}','no');
INSERT INTO `wp_options` VALUES (220,'theme_mods_logicaland','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1694582044;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (227,'theme_mods_demotemplate','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1694503130;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (232,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (244,'_transient_health-check-site-status-result','{\"good\":17,\"recommended\":3,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (252,'theme_mods_ロジカランド','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1694502969;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (259,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.1\";s:7:\"version\";s:5:\"6.3.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1696470869;s:15:\"version_checked\";s:5:\"6.3.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (274,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1696470869;s:7:\"checked\";a:6:{s:12:\"demotemplate\";s:5:\"1.0.0\";s:10:\"logicaland\";s:0:\"\";s:8:\"my-theme\";s:3:\"1.0\";s:15:\"twentytwentyone\";s:3:\"1.9\";s:17:\"twentytwentythree\";s:3:\"1.2\";s:15:\"twentytwentytwo\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (310,'theme_mods_my-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (321,'recovery_mode_email_last_sent','1694583104','yes');
INSERT INTO `wp_options` VALUES (389,'access_page_id','123','yes');
INSERT INTO `wp_options` VALUES (544,'action_scheduler_hybrid_store_demarkation','333','yes');
INSERT INTO `wp_options` VALUES (545,'schema-ActionScheduler_StoreSchema','7.0.1695280820','yes');
INSERT INTO `wp_options` VALUES (546,'schema-ActionScheduler_LoggerSchema','3.0.1695280820','yes');
INSERT INTO `wp_options` VALUES (547,'wp_mail_smtp_initial_version','3.9.0','no');
INSERT INTO `wp_options` VALUES (548,'wp_mail_smtp_version','3.9.0','no');
INSERT INTO `wp_options` VALUES (549,'wp_mail_smtp','a:16:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:25:\"sanjayrawal8585@gmail.com\";s:9:\"from_name\";s:10:\"logicaland\";s:6:\"mailer\";s:8:\"sendgrid\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:1;}s:4:\"smtp\";a:7:{s:7:\"autotls\";s:3:\"yes\";s:4:\"auth\";s:3:\"yes\";s:4:\"host\";s:0:\"\";s:4:\"port\";s:3:\"587\";s:10:\"encryption\";s:3:\"tls\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";}s:7:\"general\";a:2:{s:29:\"summary_report_email_disabled\";b:0;s:22:\"usage-tracking-enabled\";b:1;}s:9:\"sendlayer\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"smtpcom\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"channel\";s:0:\"\";}s:10:\"sendinblue\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"sendgrid\";a:2:{s:7:\"api_key\";s:69:\"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\";s:6:\"domain\";s:23:\"http://localhost:10003/\";}s:9:\"sparkpost\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"postmark\";a:2:{s:16:\"server_api_token\";s:0:\"\";s:14:\"message_stream\";s:0:\"\";}s:9:\"amazonses\";a:3:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:6:\"region\";s:9:\"us-east-1\";}s:5:\"gmail\";a:4:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:12:\"access_token\";a:0:{}s:13:\"refresh_token\";s:0:\"\";}s:7:\"outlook\";a:5:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:12:\"access_token\";a:0:{}s:13:\"refresh_token\";s:0:\"\";s:12:\"user_details\";a:1:{s:5:\"email\";s:0:\"\";}}s:4:\"zoho\";a:6:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:6:\"domain\";s:3:\"com\";s:12:\"access_token\";a:0:{}s:13:\"refresh_token\";s:0:\"\";s:12:\"user_details\";a:1:{s:5:\"email\";s:0:\"\";}}s:4:\"logs\";a:5:{s:7:\"enabled\";b:0;s:17:\"log_email_content\";b:0;s:16:\"save_attachments\";b:0;s:19:\"open_email_tracking\";b:0;s:19:\"click_link_tracking\";b:0;}s:11:\"alert_email\";a:2:{s:7:\"enabled\";b:0;s:11:\"connections\";a:0:{}}}','no');
INSERT INTO `wp_options` VALUES (550,'wp_mail_smtp_activated_time','1695280820','no');
INSERT INTO `wp_options` VALUES (551,'wp_mail_smtp_activated','a:1:{s:4:\"lite\";i:1695280820;}','yes');
INSERT INTO `wp_options` VALUES (556,'action_scheduler_lock_async-request-runner','1695476613','yes');
INSERT INTO `wp_options` VALUES (560,'wp_mail_smtp_migration_version','5','yes');
INSERT INTO `wp_options` VALUES (561,'wp_mail_smtp_debug_events_db_version','1','yes');
INSERT INTO `wp_options` VALUES (562,'wp_mail_smtp_activation_prevent_redirect','1','yes');
INSERT INTO `wp_options` VALUES (563,'wp_mail_smtp_setup_wizard_stats','a:3:{s:13:\"launched_time\";i:1695280822;s:14:\"completed_time\";i:1695281378;s:14:\"was_successful\";b:0;}','no');
INSERT INTO `wp_options` VALUES (568,'wpforms_activation_redirect','1','yes');
INSERT INTO `wp_options` VALUES (569,'wpforms_version','1.8.3.1','yes');
INSERT INTO `wp_options` VALUES (570,'wpforms_version_lite','1.8.3.1','yes');
INSERT INTO `wp_options` VALUES (571,'wpforms_activated','a:1:{s:4:\"lite\";i:1695280983;}','yes');
INSERT INTO `wp_options` VALUES (576,'wpforms_versions_lite','a:9:{s:5:\"1.5.9\";i:0;s:7:\"1.6.7.2\";i:0;s:5:\"1.6.8\";i:0;s:5:\"1.7.5\";i:0;s:7:\"1.7.5.1\";i:0;s:5:\"1.7.7\";i:0;s:5:\"1.8.2\";i:0;s:5:\"1.8.3\";i:0;s:7:\"1.8.3.1\";i:1695280983;}','yes');
INSERT INTO `wp_options` VALUES (577,'widget_wpforms-widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (578,'wpforms_settings','a:3:{s:13:\"modern-markup\";s:1:\"1\";s:20:\"modern-markup-is-set\";b:1;s:26:\"modern-markup-hide-setting\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (579,'wpforms_admin_notices','a:1:{s:14:\"review_request\";a:2:{s:4:\"time\";i:1695280983;s:9:\"dismissed\";b:0;}}','yes');
INSERT INTO `wp_options` VALUES (581,'aioseo_activation_redirect','1','yes');
INSERT INTO `wp_options` VALUES (582,'aioseo_options_internal','{\"internal\":{\"validLicenseKey\":null,\"lastActiveVersion\":\"4.4.6\",\"migratedVersion\":\"0.0\",\"siteAnalysis\":{\"connectToken\":null,\"score\":0,\"results\":null,\"competitors\":[]},\"headlineAnalysis\":{\"headlines\":[]},\"wizard\":null,\"category\":null,\"categoryOther\":null,\"deprecatedOptions\":[],\"searchStatistics\":{\"profile\":[],\"trustToken\":null,\"rolling\":\"last28Days\"}},\"integrations\":{\"semrush\":{\"accessToken\":null,\"tokenType\":null,\"expires\":null,\"refreshToken\":null}},\"database\":{\"installedTables\":\"{\\\"wp_aioseo_posts\\\":[\\\"id\\\",\\\"post_id\\\",\\\"title\\\",\\\"description\\\",\\\"keywords\\\",\\\"keyphrases\\\",\\\"page_analysis\\\",\\\"primary_term\\\",\\\"canonical_url\\\",\\\"og_title\\\",\\\"og_description\\\",\\\"og_object_type\\\",\\\"og_image_type\\\",\\\"og_image_url\\\",\\\"og_image_width\\\",\\\"og_image_height\\\",\\\"og_image_custom_url\\\",\\\"og_image_custom_fields\\\",\\\"og_video\\\",\\\"og_custom_url\\\",\\\"og_article_section\\\",\\\"og_article_tags\\\",\\\"twitter_use_og\\\",\\\"twitter_card\\\",\\\"twitter_image_type\\\",\\\"twitter_image_url\\\",\\\"twitter_image_custom_url\\\",\\\"twitter_image_custom_fields\\\",\\\"twitter_title\\\",\\\"twitter_description\\\",\\\"seo_score\\\",\\\"schema\\\",\\\"schema_type\\\",\\\"schema_type_options\\\",\\\"pillar_content\\\",\\\"robots_default\\\",\\\"robots_noindex\\\",\\\"robots_noarchive\\\",\\\"robots_nosnippet\\\",\\\"robots_nofollow\\\",\\\"robots_noimageindex\\\",\\\"robots_noodp\\\",\\\"robots_notranslate\\\",\\\"robots_max_snippet\\\",\\\"robots_max_videopreview\\\",\\\"robots_max_imagepreview\\\",\\\"images\\\",\\\"image_scan_date\\\",\\\"priority\\\",\\\"frequency\\\",\\\"videos\\\",\\\"video_thumbnail\\\",\\\"video_scan_date\\\",\\\"local_seo\\\",\\\"limit_modified_date\\\",\\\"options\\\",\\\"created\\\",\\\"updated\\\"],\\\"wp_actionscheduler_actions\\\":[],\\\"wp_actionscheduler_logs\\\":[],\\\"wp_actionscheduler_groups\\\":[],\\\"wp_actionscheduler_claims\\\":[],\\\"wp_aioseo_notifications\\\":[]}\"}}','yes');
INSERT INTO `wp_options` VALUES (583,'aioseo_options_internal_lite','{\"internal\":{\"activated\":1695476553,\"firstActivated\":1695280989,\"installed\":0,\"connect\":{\"key\":null,\"time\":0,\"network\":false,\"token\":null}}}','yes');
INSERT INTO `wp_options` VALUES (584,'aioseo_dynamic_settings_backup','{}','yes');
INSERT INTO `wp_options` VALUES (587,'wp_mail_smtp_connect_token','5b63ff57e2fe103c4e28c897d961252bc529e03b8829300fa186471e118a61cb3395f2548ecf4ae81061e2e2bfa95b825f65d3447576d387ac464a10e3c85ecc','yes');
INSERT INTO `wp_options` VALUES (588,'wp_mail_smtp_connect','ncmog5srrn2nem2pi6m5aa','yes');
INSERT INTO `wp_options` VALUES (589,'wpforms_process_forms_locator_status','completed','yes');
INSERT INTO `wp_options` VALUES (590,'wp_mail_smtp_notifications','a:4:{s:6:\"update\";i:1695367433;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (591,'aioseo_options_dynamic_localized','a:4:{s:42:\"searchAppearance_taxonomies_category_title\";s:41:\"#taxonomy_title #separator_sa #site_title\";s:52:\"searchAppearance_taxonomies_category_metaDescription\";s:21:\"#taxonomy_description\";s:42:\"searchAppearance_taxonomies_post_tag_title\";s:41:\"#taxonomy_title #separator_sa #site_title\";s:52:\"searchAppearance_taxonomies_post_tag_metaDescription\";s:21:\"#taxonomy_description\";}','yes');
INSERT INTO `wp_options` VALUES (594,'aioseo_options','{\"internal\":[],\"webmasterTools\":{\"google\":null,\"bing\":null,\"yandex\":null,\"baidu\":null,\"pinterest\":null,\"microsoftClarityProjectId\":null,\"norton\":null,\"miscellaneousVerification\":null},\"breadcrumbs\":{\"enable\":true,\"separator\":\"&raquo;\",\"homepageLink\":true,\"homepageLabel\":\"Home\",\"breadcrumbPrefix\":\"\",\"archiveFormat\":\"Archives for #breadcrumb_archive_post_type_name\",\"searchResultFormat\":\"Search Results for \'#breadcrumb_search_string\'\",\"errorFormat404\":\"404 - Page Not Found\",\"showCurrentItem\":true,\"linkCurrentItem\":false,\"categoryFullHierarchy\":false,\"showBlogHome\":false},\"rssContent\":{\"before\":null,\"after\":\"&lt;p&gt;The post #post_link first appeared on #site_link.&lt;\\/p&gt;\"},\"advanced\":{\"truSeo\":true,\"headlineAnalyzer\":true,\"seoAnalysis\":true,\"dashboardWidgets\":[\"seoSetup\",\"seoOverview\",\"seoNews\"],\"announcements\":true,\"postTypes\":{\"all\":true,\"included\":[\"post\",\"page\",\"product\"]},\"taxonomies\":{\"all\":true,\"included\":[\"category\",\"post_tag\",\"product_cat\",\"product_tag\"]},\"uninstall\":false},\"sitemap\":{\"general\":{\"enable\":true,\"filename\":\"sitemap\",\"indexes\":true,\"linksPerIndex\":1000,\"postTypes\":{\"all\":true,\"included\":[\"post\",\"page\",\"attachment\",\"product\"]},\"taxonomies\":{\"all\":true,\"included\":[\"category\",\"post_tag\",\"product_cat\",\"product_tag\"]},\"author\":false,\"date\":false,\"additionalPages\":{\"enable\":false,\"pages\":[]},\"advancedSettings\":{\"enable\":false,\"excludeImages\":false,\"excludePosts\":[],\"excludeTerms\":[],\"priority\":{\"homePage\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"postTypes\":{\"grouped\":true,\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"taxonomies\":{\"grouped\":true,\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"archive\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"author\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"}}}},\"rss\":{\"enable\":true,\"linksPerIndex\":50,\"postTypes\":{\"all\":true,\"included\":[\"post\",\"page\",\"product\"]}},\"html\":{\"enable\":true,\"pageUrl\":\"\",\"postTypes\":{\"all\":true,\"included\":[\"post\",\"page\",\"product\"]},\"taxonomies\":{\"all\":true,\"included\":[\"category\",\"post_tag\",\"product_cat\",\"product_tag\"]},\"sortOrder\":\"publish_date\",\"sortDirection\":\"asc\",\"publicationDate\":true,\"compactArchives\":false,\"advancedSettings\":{\"enable\":false,\"nofollowLinks\":false,\"excludePosts\":[],\"excludeTerms\":[]}}},\"social\":{\"profiles\":{\"sameUsername\":{\"enable\":false,\"username\":null,\"included\":[\"facebookPageUrl\",\"twitterUrl\",\"pinterestUrl\",\"instagramUrl\",\"youtubeUrl\",\"linkedinUrl\"]},\"urls\":{\"facebookPageUrl\":null,\"twitterUrl\":null,\"instagramUrl\":null,\"pinterestUrl\":null,\"youtubeUrl\":null,\"linkedinUrl\":null,\"tumblrUrl\":null,\"yelpPageUrl\":null,\"soundCloudUrl\":null,\"wikipediaUrl\":null,\"myspaceUrl\":null,\"googlePlacesUrl\":null},\"additionalUrls\":null},\"facebook\":{\"general\":{\"enable\":true,\"defaultImageSourcePosts\":\"default\",\"customFieldImagePosts\":null,\"defaultImagePosts\":\"\",\"defaultImagePostsWidth\":\"\",\"defaultImagePostsHeight\":\"\",\"showAuthor\":true,\"siteName\":\"#site_title #separator_sa #tagline\"},\"homePage\":{\"image\":\"\",\"title\":\"\",\"description\":\"\",\"imageWidth\":\"\",\"imageHeight\":\"\",\"objectType\":\"website\"},\"advanced\":{\"enable\":false,\"adminId\":\"\",\"appId\":\"\",\"authorUrl\":\"\",\"generateArticleTags\":false,\"useKeywordsInTags\":true,\"useCategoriesInTags\":true,\"usePostTagsInTags\":true}},\"twitter\":{\"general\":{\"enable\":true,\"useOgData\":false,\"defaultCardType\":\"summary_large_image\",\"defaultImageSourcePosts\":\"default\",\"customFieldImagePosts\":null,\"defaultImagePosts\":\"\",\"showAuthor\":true,\"additionalData\":false},\"homePage\":{\"image\":\"\",\"title\":\"\",\"description\":\"\",\"cardType\":\"summary\"}}},\"searchAppearance\":{\"global\":{\"separator\":\"&#45;\",\"siteTitle\":\"#site_title #separator_sa #tagline\",\"metaDescription\":\"#tagline\",\"keywords\":null,\"schema\":{\"websiteName\":\"logicalland\",\"websiteAlternateName\":null,\"siteRepresents\":\"organization\",\"person\":null,\"organizationName\":\"logicalland\",\"organizationLogo\":\"\",\"personName\":null,\"personLogo\":null,\"phone\":null,\"contactType\":null,\"contactTypeManual\":null}},\"advanced\":{\"globalRobotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noindexPaginated\":true,\"nofollowPaginated\":true,\"noindexFeed\":true,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"sitelinks\":true,\"noIndexEmptyCat\":true,\"removeStopWords\":false,\"noPaginationForCanonical\":true,\"useKeywords\":false,\"keywordsLooking\":true,\"useCategoriesForMetaKeywords\":false,\"useTagsForMetaKeywords\":false,\"dynamicallyGenerateKeywords\":false,\"pagedFormat\":\"- Page #page_number\",\"runShortcodes\":false,\"crawlCleanup\":{\"enable\":false,\"feeds\":{\"global\":true,\"globalComments\":false,\"staticBlogPage\":true,\"authors\":true,\"postComments\":false,\"search\":false,\"attachments\":false,\"archives\":{\"all\":false,\"included\":[]},\"taxonomies\":{\"all\":false,\"included\":[\"category\"]},\"atom\":false,\"rdf\":false,\"paginated\":false},\"removeUnrecognizedQueryArgs\":true,\"allowedQueryArgs\":\"\\/^utm_*\\/\"}},\"archives\":{\"author\":{\"show\":true,\"title\":\"#author_name #separator_sa #site_title\",\"metaDescription\":\"#author_bio\",\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"keywords\":null}},\"date\":{\"show\":true,\"title\":\"#archive_date #separator_sa #site_title\",\"metaDescription\":\"\",\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"keywords\":null}},\"search\":{\"show\":false,\"title\":\"#search_term #separator_sa #site_title\",\"metaDescription\":\"\",\"advanced\":{\"robotsMeta\":{\"default\":false,\"noindex\":true,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"keywords\":null}}}},\"searchStatistics\":{\"postTypes\":{\"all\":true,\"included\":[\"post\",\"page\"]}},\"tools\":{\"robots\":{\"enable\":false,\"rules\":[],\"robotsDetected\":true},\"importExport\":{\"backup\":{\"lastTime\":null,\"data\":null}}},\"deprecated\":{\"webmasterTools\":{\"googleAnalytics\":{\"id\":null,\"advanced\":false,\"trackingDomain\":null,\"multipleDomains\":false,\"additionalDomains\":null,\"anonymizeIp\":false,\"displayAdvertiserTracking\":false,\"excludeUsers\":[],\"trackOutboundLinks\":false,\"enhancedLinkAttribution\":false,\"enhancedEcommerce\":false}},\"searchAppearance\":{\"global\":{\"descriptionFormat\":null,\"schema\":{\"enableSchemaMarkup\":true}},\"advanced\":{\"autogenerateDescriptions\":true,\"runShortcodesInDescription\":true,\"useContentForAutogeneratedDescriptions\":false,\"excludePosts\":[],\"excludeTerms\":[]}},\"sitemap\":{\"general\":{\"advancedSettings\":{\"dynamic\":true}}},\"tools\":{\"blocker\":{\"blockBots\":null,\"blockReferer\":null,\"track\":null,\"custom\":{\"enable\":null,\"bots\":\"Abonti\\naggregator\\nAhrefsBot\\nasterias\\nBDCbot\\nBLEXBot\\nBuiltBotTough\\nBullseye\\nBunnySlippers\\nca-crawler\\nCCBot\\nCegbfeieh\\nCheeseBot\\nCherryPicker\\nCopyRightCheck\\ncosmos\\nCrescent\\ndiscobot\\nDittoSpyder\\nDotBot\\nDownload Ninja\\nEasouSpider\\nEmailCollector\\nEmailSiphon\\nEmailWolf\\nEroCrawler\\nExtractorPro\\nFasterfox\\nFeedBooster\\nFoobot\\nGenieo\\ngrub-client\\nHarvest\\nhloader\\nhttplib\\nHTTrack\\nhumanlinks\\nieautodiscovery\\nInfoNaviRobot\\nIstellaBot\\nJava\\/1.\\nJennyBot\\nk2spider\\nKenjin Spider\\nKeyword Density\\/0.9\\nlarbin\\nLexiBot\\nlibWeb\\nlibwww\\nLinkextractorPro\\nlinko\\nLinkScan\\/8.1a Unix\\nLinkWalker\\nLNSpiderguy\\nlwp-trivial\\nmagpie\\nMata Hari\\nMaxPointCrawler\\nMegaIndex\\nMicrosoft URL Control\\nMIIxpc\\nMippin\\nMissigua Locator\\nMister PiX\\nMJ12bot\\nmoget\\nMSIECrawler\\nNetAnts\\nNICErsPRO\\nNiki-Bot\\nNPBot\\nNutch\\nOffline Explorer\\nOpenfind\\npanscient.com\\nPHP\\/5.{\\nProPowerBot\\/2.14\\nProWebWalker\\nPython-urllib\\nQueryN Metasearch\\nRepoMonkey\\nSISTRIX\\nsitecheck.Internetseer.com\\nSiteSnagger\\nSnapPreviewBot\\nSogou\\nSpankBot\\nspanner\\nspbot\\nSpinn3r\\nsuzuran\\nSzukacz\\/1.4\\nTeleport\\nTelesoft\\nThe Intraformant\\nTheNomad\\nTightTwatBot\\nTitan\\ntoCrawl\\/UrlDispatcher\\nTrue_Robot\\nturingos\\nTurnitinBot\\nUbiCrawler\\nUnisterBot\\nURLy Warning\\nVCI\\nWBSearchBot\\nWeb Downloader\\/6.9\\nWeb Image Collector\\nWebAuto\\nWebBandit\\nWebCopier\\nWebEnhancer\\nWebmasterWorldForumBot\\nWebReaper\\nWebSauger\\nWebsite Quester\\nWebster Pro\\nWebStripper\\nWebZip\\nWotbox\\nwsr-agent\\nWWW-Collector-E\\nXenu\\nZao\\nZeus\\nZyBORG\\ncoccoc\\nIncutio\\nlmspider\\nmemoryBot\\nserf\\nUnknown\\nuptime files\",\"referer\":\"semalt.com\\nkambasoft.com\\nsavetubevideo.com\\nbuttons-for-website.com\\nsharebutton.net\\nsoundfrost.org\\nsrecorder.com\\nsoftomix.com\\nsoftomix.net\\nmyprintscreen.com\\njoinandplay.me\\nfbfreegifts.com\\nopenmediasoft.com\\nzazagames.org\\nextener.org\\nopenfrost.com\\nopenfrost.net\\ngooglsucks.com\\nbest-seo-offer.com\\nbuttons-for-your-website.com\\nwww.Get-Free-Traffic-Now.com\\nbest-seo-solution.com\\nbuy-cheap-online.info\\nsite3.free-share-buttons.com\\nwebmaster-traffic.com\"}}}}}','yes');
INSERT INTO `wp_options` VALUES (595,'aioseo_options_lite','{\"advanced\":{\"usageTracking\":false}}','yes');
INSERT INTO `wp_options` VALUES (596,'aioseo_options_dynamic','{\"sitemap\":{\"priority\":{\"postTypes\":{\"post\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"page\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"attachment\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"}},\"taxonomies\":[]}},\"social\":{\"facebook\":{\"general\":{\"postTypes\":{\"post\":{\"objectType\":\"article\"},\"page\":{\"objectType\":\"article\"},\"attachment\":{\"objectType\":\"article\"}}}}},\"searchAppearance\":{\"postTypes\":{\"post\":{\"show\":true,\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"bulkEditing\":\"enabled\"},\"title\":\"#post_title #separator_sa #site_title\",\"metaDescription\":\"#post_excerpt\",\"schemaType\":\"Article\",\"webPageType\":\"WebPage\",\"articleType\":\"BlogPosting\",\"customFields\":null},\"page\":{\"show\":true,\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"bulkEditing\":\"enabled\"},\"title\":\"#post_title #separator_sa #site_title\",\"metaDescription\":\"#post_content\",\"schemaType\":\"WebPage\",\"webPageType\":\"WebPage\",\"articleType\":\"BlogPosting\",\"customFields\":null},\"attachment\":{\"show\":true,\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"bulkEditing\":\"enabled\"},\"title\":\"#post_title #separator_sa #site_title\",\"metaDescription\":\"#attachment_caption\",\"schemaType\":\"ItemPage\",\"webPageType\":\"ItemPage\",\"articleType\":\"BlogPosting\",\"customFields\":null,\"redirectAttachmentUrls\":\"attachment\"}},\"taxonomies\":{\"category\":{\"show\":true,\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true},\"title\":\"#taxonomy_title #separator_sa #site_title\",\"metaDescription\":\"#taxonomy_description\"},\"post_tag\":{\"show\":true,\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true},\"title\":\"#taxonomy_title #separator_sa #site_title\",\"metaDescription\":\"#taxonomy_description\"}},\"archives\":[]}}','yes');
INSERT INTO `wp_options` VALUES (600,'wp_mail_smtp_review_notice','a:2:{s:4:\"time\";i:1695281089;s:9:\"dismissed\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (609,'_wpforms_transient_timeout_addons.json','1695886010','no');
INSERT INTO `wp_options` VALUES (610,'_wpforms_transient_addons.json','1695281210','no');
INSERT INTO `wp_options` VALUES (612,'wpforms_challenge','a:13:{s:6:\"status\";s:0:\"\";s:4:\"step\";i:0;s:7:\"user_id\";i:1;s:7:\"form_id\";i:0;s:10:\"embed_page\";i:0;s:16:\"embed_page_title\";s:0:\"\";s:16:\"started_date_gmt\";s:0:\"\";s:17:\"finished_date_gmt\";s:0:\"\";s:13:\"seconds_spent\";i:0;s:12:\"seconds_left\";i:0;s:13:\"feedback_sent\";b:0;s:19:\"feedback_contact_me\";b:0;s:13:\"window_closed\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (613,'_transient_wpforms_htaccess_file','a:3:{s:4:\"size\";i:737;s:5:\"mtime\";i:1695281210;s:5:\"ctime\";i:1695281210;}','yes');
INSERT INTO `wp_options` VALUES (617,'wp_mail_smtp_debug','a:5:{i:0;i:6;i:1;i:7;i:2;i:8;i:3;i:9;i:4;i:10;}','no');
INSERT INTO `wp_options` VALUES (618,'wp_mail_smtp_lite_sent_email_counter','9','yes');
INSERT INTO `wp_options` VALUES (619,'wp_mail_smtp_lite_weekly_sent_email_counter','a:1:{i:38;i:9;}','yes');
INSERT INTO `wp_options` VALUES (640,'fs_active_plugins','O:8:\"stdClass\":0:{}','yes');
INSERT INTO `wp_options` VALUES (641,'fs_debug_mode','','yes');
INSERT INTO `wp_options` VALUES (642,'fs_accounts','a:15:{s:21:\"id_slug_type_path_map\";a:1:{i:10461;a:3:{s:4:\"slug\";s:9:\"post-smtp\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:26:\"post-smtp/postman-smtp.php\";}}s:11:\"plugin_data\";a:1:{s:9:\"post-smtp\";a:23:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:26:\"post-smtp/postman-smtp.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1695282286;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:6:\"2.5.10\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"2.6.0\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:15:\"localhost:10003\";s:9:\"server_ip\";s:9:\"127.0.0.1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1695282291;s:7:\"version\";s:5:\"2.6.0\";}s:15:\"prev_is_premium\";b:0;s:30:\"is_diagnostic_tracking_allowed\";b:1;s:30:\"is_extensions_tracking_allowed\";b:1;s:14:\"has_trial_plan\";b:0;s:19:\"keepalive_timestamp\";i:1695369743;s:20:\"activation_timestamp\";i:1695282291;s:14:\"sync_timestamp\";i:1695340679;s:22:\"install_sync_timestamp\";i:1695369743;s:15:\"is_whitelabeled\";b:0;}}s:13:\"file_slug_map\";a:1:{s:26:\"post-smtp/postman-smtp.php\";s:9:\"post-smtp\";}s:7:\"plugins\";a:1:{s:9:\"post-smtp\";O:9:\"FS_Plugin\":24:{s:2:\"id\";s:5:\"10461\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_28fcefa3d0ae86f8cdf6b7f71c0cc\";s:10:\"secret_key\";N;s:16:\"parent_plugin_id\";N;s:5:\"title\";s:9:\"Post SMTP\";s:4:\"slug\";s:9:\"post-smtp\";s:12:\"premium_slug\";s:17:\"post-smtp-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:26:\"post-smtp/postman-smtp.php\";s:7:\"version\";s:5:\"2.6.0\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";s:5:\"10910\";s:17:\"bundle_public_key\";s:32:\"pk_c5110ef04ba30cd57dd970a269a1a\";s:17:\"opt_in_moderation\";N;}}s:9:\"unique_id\";s:32:\"cbe8dbe5f6f0071328b5ea9efee4ab8f\";s:5:\"plans\";a:1:{s:9:\"post-smtp\";a:1:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:2:\"id\";s:8:\"MTc2Nzg=\";s:7:\"updated\";N;s:7:\"created\";s:28:\"MjAyMi0wNi0wMiAwNzoyNDowMg==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:9:\"plugin_id\";s:8:\"MTA0NjE=\";s:4:\"name\";s:8:\"ZnJlZQ==\";s:5:\"title\";s:8:\"RnJlZQ==\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";}}}s:14:\"active_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1695369743;s:3:\"md5\";s:32:\"f6eef23c6fac3942b97cea094364a669\";s:7:\"plugins\";a:3:{s:24:\"wpforms-lite/wpforms.php\";a:16:{s:4:\"Name\";s:12:\"WPForms Lite\";s:9:\"PluginURI\";s:19:\"https://wpforms.com\";s:7:\"Version\";s:7:\"1.8.3.1\";s:11:\"Description\";s:113:\"Beginner friendly WordPress contact form plugin. Use our Drag & Drop form builder to create your WordPress forms.\";s:6:\"Author\";s:7:\"WPForms\";s:9:\"AuthorURI\";s:19:\"https://wpforms.com\";s:10:\"TextDomain\";s:12:\"wpforms-lite\";s:10:\"DomainPath\";s:16:\"assets/languages\";s:7:\"Network\";b:0;s:10:\"RequiresWP\";s:3:\"5.2\";s:11:\"RequiresPHP\";s:3:\"5.6\";s:9:\"UpdateURI\";s:0:\"\";s:5:\"Title\";s:12:\"WPForms Lite\";s:10:\"AuthorName\";s:7:\"WPForms\";s:9:\"is_active\";b:1;s:4:\"slug\";s:12:\"wpforms-lite\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";a:16:{s:4:\"Name\";s:12:\"WP Mail SMTP\";s:9:\"PluginURI\";s:23:\"https://wpmailsmtp.com/\";s:7:\"Version\";s:5:\"3.9.0\";s:11:\"Description\";s:178:\"Reconfigures the <code>wp_mail()</code> function to use Gmail/Mailgun/SendGrid/SMTP instead of the default <code>mail()</code> and creates an options page to manage the settings.\";s:6:\"Author\";s:12:\"WP Mail SMTP\";s:9:\"AuthorURI\";s:23:\"https://wpmailsmtp.com/\";s:10:\"TextDomain\";s:12:\"wp-mail-smtp\";s:10:\"DomainPath\";s:17:\"/assets/languages\";s:7:\"Network\";b:0;s:10:\"RequiresWP\";s:3:\"5.2\";s:11:\"RequiresPHP\";s:3:\"7.2\";s:9:\"UpdateURI\";s:0:\"\";s:5:\"Title\";s:12:\"WP Mail SMTP\";s:10:\"AuthorName\";s:12:\"WP Mail SMTP\";s:9:\"is_active\";b:1;s:4:\"slug\";s:12:\"wp-mail-smtp\";}s:36:\"mailjet-for-wordpress/wp-mailjet.php\";a:5:{s:4:\"slug\";s:21:\"mailjet-for-wordpress\";s:7:\"version\";s:5:\"5.5.0\";s:5:\"title\";s:21:\"Mailjet for WordPress\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:11:\"all_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1695369743;s:3:\"md5\";s:32:\"23a1d23bdade971539a79bb86a0ca2b3\";s:7:\"plugins\";a:6:{s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";a:5:{s:4:\"slug\";s:19:\"all-in-one-seo-pack\";s:7:\"version\";s:5:\"4.4.6\";s:5:\"title\";s:14:\"All in One SEO\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:47:\"file-manager-advanced/file_manager_advanced.php\";a:5:{s:4:\"slug\";s:21:\"file-manager-advanced\";s:7:\"version\";s:5:\"5.1.2\";s:5:\"title\";s:21:\"File Manager Advanced\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:26:\"post-smtp/postman-smtp.php\";a:5:{s:4:\"slug\";s:9:\"post-smtp\";s:7:\"version\";s:5:\"2.6.0\";s:5:\"title\";s:9:\"Post SMTP\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:24:\"wpforms-lite/wpforms.php\";a:5:{s:4:\"slug\";s:12:\"wpforms-lite\";s:7:\"version\";s:7:\"1.8.3.1\";s:5:\"title\";s:12:\"WPForms Lite\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";a:5:{s:4:\"slug\";s:12:\"wp-mail-smtp\";s:7:\"version\";s:5:\"3.9.0\";s:5:\"title\";s:12:\"WP Mail SMTP\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:36:\"mailjet-for-wordpress/wp-mailjet.php\";a:5:{s:4:\"slug\";s:21:\"mailjet-for-wordpress\";s:7:\"version\";s:5:\"5.5.0\";s:5:\"title\";s:21:\"Mailjet for WordPress\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:10:\"all_themes\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1695369743;s:3:\"md5\";s:32:\"260d389935b4dd1884cb6c99eb9a545a\";s:6:\"themes\";a:6:{s:12:\"demotemplate\";a:5:{s:4:\"slug\";s:12:\"demotemplate\";s:7:\"version\";s:5:\"1.0.0\";s:5:\"title\";s:12:\"demotemplate\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:10:\"logicaland\";a:5:{s:4:\"slug\";s:10:\"logicaland\";s:7:\"version\";s:0:\"\";s:5:\"title\";s:0:\"\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:8:\"my-theme\";a:5:{s:4:\"slug\";s:8:\"my-theme\";s:7:\"version\";s:3:\"1.0\";s:5:\"title\";s:8:\"My Theme\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:15:\"twentytwentyone\";a:5:{s:4:\"slug\";s:15:\"twentytwentyone\";s:7:\"version\";s:3:\"1.9\";s:5:\"title\";s:17:\"Twenty Twenty-One\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:17:\"twentytwentythree\";a:5:{s:4:\"slug\";s:17:\"twentytwentythree\";s:7:\"version\";s:3:\"1.2\";s:5:\"title\";s:19:\"Twenty Twenty-Three\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:15:\"twentytwentytwo\";a:5:{s:4:\"slug\";s:15:\"twentytwentytwo\";s:7:\"version\";s:3:\"1.5\";s:5:\"title\";s:17:\"Twenty Twenty-Two\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:5:\"sites\";a:1:{s:9:\"post-smtp\";O:7:\"FS_Site\":25:{s:2:\"id\";s:8:\"13148501\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2023-09-21 07:44:51\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_a0f549744af73eddde845ec522bf1\";s:10:\"secret_key\";s:32:\"sk_bj;k(N~S1xB}H4KC9e!HbE!d<X.WO\";s:7:\"site_id\";s:9:\"191798617\";s:9:\"plugin_id\";s:5:\"10461\";s:7:\"user_id\";s:7:\"7467373\";s:5:\"title\";s:11:\"logicalland\";s:3:\"url\";s:22:\"http://localhost:10003\";s:7:\"version\";s:5:\"2.6.0\";s:8:\"language\";s:5:\"en-US\";s:16:\"platform_version\";s:5:\"6.3.1\";s:11:\"sdk_version\";s:6:\"2.5.10\";s:28:\"programming_language_version\";s:5:\"8.1.9\";s:7:\"plan_id\";s:5:\"17678\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:10:\"is_premium\";b:0;s:15:\"is_disconnected\";b:0;s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;s:7:\"is_beta\";b:0;}}s:5:\"users\";a:1:{i:7467373;O:7:\"FS_User\":12:{s:2:\"id\";s:7:\"7467373\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2023-09-21 07:44:51\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_0482b62b6a532139e0422fa6d28a8\";s:10:\"secret_key\";s:32:\"sk_M6{E1YdjX)!)1lrI~VRx:7$2)_V9K\";s:5:\"email\";s:25:\"sanjayrawal8585@gmail.com\";s:5:\"first\";s:5:\"Admin\";s:4:\"last\";s:0:\"\";s:11:\"is_verified\";b:0;s:11:\"customer_id\";N;s:5:\"gross\";N;}}s:6:\"addons\";a:1:{i:10461;a:8:{i:0;O:9:\"FS_Plugin\":24:{s:2:\"id\";s:5:\"10462\";s:7:\"updated\";s:19:\"2023-09-21 07:15:45\";s:7:\"created\";s:19:\"2022-06-02 07:32:42\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_da92a587a7f58757bab54cdcd8a07\";s:10:\"secret_key\";N;s:16:\"parent_plugin_id\";s:5:\"10461\";s:5:\"title\";s:15:\"Office365 Addon\";s:4:\"slug\";s:29:\"post-smtp-extension-office365\";s:12:\"premium_slug\";s:37:\"post-smtp-extension-office365-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:0;s:22:\"premium_releases_count\";i:6;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:2:\"id\";s:4:\"2894\";s:7:\"updated\";s:19:\"2022-06-30 10:42:56\";s:7:\"created\";s:19:\"2022-06-29 12:53:19\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:9:\"plugin_id\";s:5:\"10462\";s:11:\"description\";s:293:\"<p>\nOffice 365 Pro extension gives you the power to connect Post SMTP with your Outlook and Microsoft 365 accounts to improve email deliverability for your WordPress site. The extension comes equipped with advanced features like email logs, OAuth 2.0 protocol, fallback mailing, and more.\n</p>\";s:17:\"short_description\";s:134:\"Office 365 Pro extension allows you to connect Post SMTP with your Outlook and Microsoft 365 accounts to improve email deliverability.\";s:10:\"banner_url\";s:68:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/10462/banner.png\";s:15:\"card_banner_url\";s:73:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/10462/card_banner.png\";s:15:\"selling_point_0\";s:86:\"Office365 API Integration - Easily integrate your favorite SMTP Mailer with Post SMTP.\";s:15:\"selling_point_1\";s:83:\"Safe & Secure - No need to add your username or password in the WordPress database.\";s:15:\"selling_point_2\";s:115:\"Easy Setup - Post SMTP’s easy-to-use interface and simple user experience are perfect for any WordPress beginner.\";s:11:\"screenshots\";N;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:17:\"opt_in_moderation\";N;}i:1;O:9:\"FS_Plugin\":24:{s:2:\"id\";s:5:\"10497\";s:7:\"updated\";s:19:\"2023-09-10 15:59:45\";s:7:\"created\";s:19:\"2022-06-14 09:32:08\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_008e8b052de96e4199d081a32af7f\";s:10:\"secret_key\";N;s:16:\"parent_plugin_id\";s:5:\"10461\";s:5:\"title\";s:16:\"Amazon SES Addon\";s:4:\"slug\";s:30:\"post-smtp-extension-amazon-ses\";s:12:\"premium_slug\";s:38:\"post-smtp-extension-amazon-ses-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:0;s:22:\"premium_releases_count\";i:3;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:2:\"id\";s:4:\"2892\";s:7:\"updated\";s:19:\"2022-07-19 13:05:19\";s:7:\"created\";s:19:\"2022-06-29 11:32:49\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:9:\"plugin_id\";s:5:\"10497\";s:11:\"description\";s:307:\"<p>\nAmazon SES Pro Extension combines Amazon’s mail service provider with PostSMTP’s powerful and easy-to-use SMTP mailing features. The extension comes equipped with advanced features like email logs, OAuth 2.0 protocol, fallback mailing, and more.\n</p>\n<p>\nIt requires PHP 7.1 or greater version.\n</p>\";s:17:\"short_description\";s:133:\"Amazon SES Pro Extension combines Amazon’s mail service provider with Post SMTP’s powerful and easy-to-use SMTP mailing features.\";s:10:\"banner_url\";s:68:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/10497/banner.png\";s:15:\"card_banner_url\";s:73:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/10497/card_banner.png\";s:15:\"selling_point_0\";s:87:\"Amazon SES API Integration - Easily integrate your favorite SMTP Mailer with Post SMTP.\";s:15:\"selling_point_1\";s:83:\"Safe & Secure - No need to add your username or password in the WordPress database.\";s:15:\"selling_point_2\";s:114:\"Easy Setup - PostSMTP’s easy-to-use interface and simple user experience are perfect for any WordPress beginner.\";s:11:\"screenshots\";N;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:17:\"opt_in_moderation\";N;}i:2;O:9:\"FS_Plugin\":24:{s:2:\"id\";s:5:\"10625\";s:7:\"updated\";s:19:\"2023-08-23 11:36:24\";s:7:\"created\";s:19:\"2022-07-05 09:00:33\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_f03ac99f5750e7b038a7173a5ff3e\";s:10:\"secret_key\";N;s:16:\"parent_plugin_id\";s:5:\"10461\";s:5:\"title\";s:20:\"Twilio Notifications\";s:4:\"slug\";s:39:\"twilio-notifications-postsmtp-extension\";s:12:\"premium_slug\";s:47:\"twilio-notifications-postsmtp-extension-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:0;s:22:\"premium_releases_count\";i:1;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:2:\"id\";s:4:\"2947\";s:7:\"updated\";s:19:\"2022-08-01 13:44:09\";s:7:\"created\";s:19:\"2022-07-21 13:42:22\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:9:\"plugin_id\";s:5:\"10625\";s:11:\"description\";s:136:\"<p>\nTwilio Pro Extension allows you to add your phone number so that you can receive SMS notifications and alerts when email fails.\n</p>\";s:17:\"short_description\";s:127:\"Twilio Pro Extension allows you to add your phone number so that you can receive SMS notifications and alerts when email fails.\";s:10:\"banner_url\";s:68:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/10625/banner.png\";s:15:\"card_banner_url\";s:73:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/10625/card_banner.png\";s:15:\"selling_point_0\";s:104:\"Failure Alerts - Failure alerts from Twilio that lets you know emails were not delivered to a recipient.\";s:15:\"selling_point_1\";s:103:\"SMS Notification - The administrator can add their phone number to receive SMS alerts on email failure.\";s:15:\"selling_point_2\";s:115:\"Easy Setup - Post SMTP’s easy-to-use interface and simple user experience are perfect for any WordPress beginner.\";s:11:\"screenshots\";N;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:17:\"opt_in_moderation\";N;}i:3;O:9:\"FS_Plugin\":24:{s:2:\"id\";s:5:\"10805\";s:7:\"updated\";s:19:\"2023-09-12 18:33:50\";s:7:\"created\";s:19:\"2022-08-03 10:32:44\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_de65d9aef41e289b409cad29c3d4d\";s:10:\"secret_key\";N;s:16:\"parent_plugin_id\";s:5:\"10461\";s:5:\"title\";s:12:\"Mail Control\";s:4:\"slug\";s:22:\"post-smtp-mail-control\";s:12:\"premium_slug\";s:30:\"post-smtp-mail-control-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:0;s:22:\"premium_releases_count\";i:2;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:2:\"id\";s:4:\"3025\";s:7:\"updated\";s:19:\"2023-05-02 10:08:21\";s:7:\"created\";s:19:\"2022-08-31 06:53:22\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:9:\"plugin_id\";s:5:\"10805\";s:11:\"description\";N;s:17:\"short_description\";N;s:10:\"banner_url\";s:68:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/10805/banner.png\";s:15:\"card_banner_url\";s:73:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/10805/card_banner.png\";s:15:\"selling_point_0\";N;s:15:\"selling_point_1\";N;s:15:\"selling_point_2\";N;s:11:\"screenshots\";N;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:17:\"opt_in_moderation\";N;}i:4;O:9:\"FS_Plugin\":24:{s:2:\"id\";s:5:\"11667\";s:7:\"updated\";s:19:\"2023-09-17 16:41:01\";s:7:\"created\";s:19:\"2022-12-22 12:09:33\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_96d03527bd86ed23904bba16e3d85\";s:10:\"secret_key\";N;s:16:\"parent_plugin_id\";s:5:\"10461\";s:5:\"title\";s:10:\"Zoho Addon\";s:4:\"slug\";s:4:\"zoho\";s:12:\"premium_slug\";s:12:\"zoho-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:0;s:22:\"premium_releases_count\";i:1;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:2:\"id\";s:4:\"3260\";s:7:\"updated\";s:19:\"2023-05-02 10:11:24\";s:7:\"created\";s:19:\"2022-12-22 12:13:05\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:9:\"plugin_id\";s:5:\"11667\";s:11:\"description\";N;s:17:\"short_description\";N;s:10:\"banner_url\";s:68:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/11667/banner.png\";s:15:\"card_banner_url\";s:73:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/11667/card_banner.png\";s:15:\"selling_point_0\";s:81:\"Zoho API Integration - Easily integrate your favorite SMTP Mailer with Post SMTP.\";s:15:\"selling_point_1\";s:83:\"Safe & Secure - No need to add your username or password in the WordPress database.\";s:15:\"selling_point_2\";s:115:\"Easy Setup - Post SMTP’s easy-to-use interface and simple user experience are perfect for any WordPress beginner.\";s:11:\"screenshots\";N;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:17:\"opt_in_moderation\";N;}i:5;O:9:\"FS_Plugin\":24:{s:2:\"id\";s:5:\"12391\";s:7:\"updated\";s:19:\"2023-09-20 22:34:08\";s:7:\"created\";s:19:\"2023-04-05 03:13:00\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_9ce9a2809284f26ff61f1519b4b19\";s:10:\"secret_key\";N;s:16:\"parent_plugin_id\";s:5:\"10461\";s:5:\"title\";s:25:\"Report and Tracking Addon\";s:4:\"slug\";s:25:\"report-and-tracking-addon\";s:12:\"premium_slug\";s:33:\"report-and-tracking-addon-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:0;s:22:\"premium_releases_count\";i:1;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:2:\"id\";s:4:\"3492\";s:7:\"updated\";s:19:\"2023-05-02 11:06:56\";s:7:\"created\";s:19:\"2023-05-02 10:10:34\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:9:\"plugin_id\";s:5:\"12391\";s:11:\"description\";s:441:\"With the Report and Tracking Pro Extension, you can receive in-depth reports and statistics on your website\'s email performance. You have the option to filter email statistics by day, week, or month, and track who has viewed your emails. Additionally, you can view your email\'s open rate. The addon even sends you email reports on a daily, weekly, or monthly basis, straight to your inbox, so you can stay informed on your email performance.\";s:17:\"short_description\";s:138:\"Receive in-depth reports and statistics of your website\'s email performance. and, get access to email\'s open rate and get more visibility.\";s:10:\"banner_url\";s:68:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/12391/banner.png\";s:15:\"card_banner_url\";s:73:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/12391/card_banner.png\";s:15:\"selling_point_0\";s:47:\"Get email delivery reports right in your inbox.\";s:15:\"selling_point_1\";s:73:\"Track the rate of opened emails to those that are still awaiting viewing.\";s:15:\"selling_point_2\";s:86:\"Access to email delivery graphical view, with options to filter for specific intervals\";s:11:\"screenshots\";O:8:\"stdClass\":4:{s:12:\"screenshot_0\";s:75:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/12391/screenshots/0.png\";s:12:\"screenshot_1\";s:75:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/12391/screenshots/1.png\";s:12:\"screenshot_2\";s:75:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/12391/screenshots/2.png\";s:12:\"screenshot_3\";s:75:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/12391/screenshots/3.png\";}}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:17:\"opt_in_moderation\";N;}i:6;O:9:\"FS_Plugin\":24:{s:2:\"id\";s:5:\"12992\";s:7:\"updated\";s:19:\"2023-09-20 22:34:24\";s:7:\"created\";s:19:\"2023-06-21 08:03:18\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_6029aeb6f646d50d272a109a114bb\";s:10:\"secret_key\";N;s:16:\"parent_plugin_id\";s:5:\"10461\";s:5:\"title\";s:31:\"Advance Email Delivery and Logs\";s:4:\"slug\";s:31:\"advance-email-delivery-and-logs\";s:12:\"premium_slug\";s:39:\"advance-email-delivery-and-logs-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:0;s:22:\"premium_releases_count\";i:3;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:2:\"id\";s:4:\"3599\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2023-06-27 07:16:35\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:9:\"plugin_id\";s:5:\"12992\";s:11:\"description\";N;s:17:\"short_description\";N;s:10:\"banner_url\";s:68:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/12992/banner.png\";s:15:\"card_banner_url\";s:73:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/12992/card_banner.png\";s:15:\"selling_point_0\";N;s:15:\"selling_point_1\";N;s:15:\"selling_point_2\";N;s:11:\"screenshots\";N;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:17:\"opt_in_moderation\";N;}i:7;O:9:\"FS_Plugin\":24:{s:2:\"id\";s:5:\"13141\";s:7:\"updated\";s:19:\"2023-08-25 09:30:45\";s:7:\"created\";s:19:\"2023-07-12 07:34:48\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_60d07f2229da6323270c237ab50cc\";s:10:\"secret_key\";N;s:16:\"parent_plugin_id\";s:5:\"10461\";s:5:\"title\";s:18:\"Attachment Support\";s:4:\"slug\";s:18:\"attachment-support\";s:12:\"premium_slug\";s:26:\"attachment-support-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:0;s:22:\"premium_releases_count\";i:2;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:2:\"id\";s:4:\"3639\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2023-07-18 11:17:30\";s:22:\"\0FS_Entity\0_is_updated\";b:0;s:9:\"plugin_id\";s:5:\"13141\";s:11:\"description\";N;s:17:\"short_description\";N;s:10:\"banner_url\";s:68:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/13141/banner.jpg\";s:15:\"card_banner_url\";s:73:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/13141/card_banner.jpg\";s:15:\"selling_point_0\";N;s:15:\"selling_point_1\";N;s:15:\"selling_point_2\";N;s:11:\"screenshots\";N;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:17:\"opt_in_moderation\";N;}}}s:23:\"user_id_license_ids_map\";a:1:{i:10461;a:1:{i:7467373;a:0:{}}}s:12:\"all_licenses\";a:1:{i:10461;a:0:{}}s:13:\"admin_notices\";a:1:{s:9:\"post-smtp\";a:0:{}}}','yes');
INSERT INTO `wp_options` VALUES (643,'postman_db_version','1.0.1','yes');
INSERT INTO `wp_options` VALUES (644,'postman_options','a:41:{s:8:\"enc_type\";s:0:\"\";s:8:\"hostname\";s:19:\"smtp.sendergrid.net\";s:12:\"sender_email\";s:25:\"sanjayrawal8585@gmail.com\";s:15:\"envelope_sender\";s:25:\"sanjayrawal8585@gmail.com\";s:14:\"transport_type\";s:12:\"sendgrid_api\";s:9:\"auth_type\";s:0:\"\";s:11:\"sender_name\";s:10:\"logicaland\";s:15:\"oauth_client_id\";s:0:\"\";s:19:\"oauth_client_secret\";s:0:\"\";s:19:\"basic_auth_username\";s:25:\"Sanjayrawal8585@gmail.com\";s:19:\"basic_auth_password\";s:12:\"c2FuamF5MTIz\";s:16:\"mandrill_api_key\";s:0:\"\";s:16:\"sendgrid_api_key\";s:92:\"U0cuSzU3aHZWakpSc09YeExrdXM0OW1vQS43OGxKRWV0ZG82SVR0MEhRZHZadXM4UG1YWVVDUmZZSElpTXBYMlBkbG53\";s:18:\"sendinblue_api_key\";s:0:\"\";s:16:\"postmark_api_key\";s:0:\"\";s:17:\"sparkpost_api_key\";s:0:\"\";s:15:\"mailgun_api_key\";s:0:\"\";s:20:\"elasticemail_api_key\";s:0:\"\";s:19:\"mailgun_domain_name\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:28:\"prevent_sender_name_override\";s:0:\"\";s:29:\"prevent_sender_email_override\";s:0:\"\";s:24:\"disable_email_validation\";s:0:\"\";s:9:\"forced_to\";s:0:\"\";s:9:\"forced_cc\";s:0:\"\";s:10:\"forced_bcc\";s:0:\"\";s:7:\"headers\";s:0:\"\";s:12:\"read_timeout\";i:60;s:18:\"connection_timeout\";i:10;s:9:\"log_level\";i:40000;s:16:\"mail_log_enabled\";s:4:\"true\";s:20:\"mail_log_max_entries\";i:250;s:8:\"run_mode\";s:10:\"production\";s:12:\"stealth_mode\";s:0:\"\";s:15:\"transcript_size\";i:128;s:7:\"tmp_dir\";s:4:\"/tmp\";s:13:\"pushover_user\";s:0:\"\";s:14:\"pushover_token\";s:0:\"\";s:11:\"slack_token\";s:0:\"\";s:23:\"notification_chrome_uid\";s:0:\"\";s:18:\"notification_email\";s:25:\"sanjayrawal8585@gmail.com\";}','yes');
INSERT INTO `wp_options` VALUES (645,'postman_state','a:4:{s:12:\"install_date\";i:1695282286;s:7:\"version\";s:5:\"2.6.0\";s:15:\"locking_enabled\";b:1;s:19:\"delivery_fail_total\";i:12;}','yes');
INSERT INTO `wp_options` VALUES (646,'fs_api_cache','a:0:{}','no');
INSERT INTO `wp_options` VALUES (649,'fs_gdpr','a:1:{s:2:\"u1\";a:1:{s:18:\"show_opt_in_notice\";b:0;}}','yes');
INSERT INTO `wp_options` VALUES (650,'_site_transient_timeout_fs_locked_1','2010642293','no');
INSERT INTO `wp_options` VALUES (651,'_site_transient_fs_locked_1','1','no');
INSERT INTO `wp_options` VALUES (744,'mailjet_apikey','da14e94f3732fcb350263b1f9bb3d2e5','yes');
INSERT INTO `wp_options` VALUES (745,'mailjet_apisecret','fd02e957a70b1e68837314b5d1542966','yes');
INSERT INTO `wp_options` VALUES (746,'mailjet_sync_list','','yes');
INSERT INTO `wp_options` VALUES (747,'mailjet_comment_authors_list','','yes');
INSERT INTO `wp_options` VALUES (748,'mailjet_activate_logger','','yes');
INSERT INTO `wp_options` VALUES (749,'settings_step','enable_sending_step','yes');
INSERT INTO `wp_options` VALUES (750,'api_credentials_ok','1','yes');
INSERT INTO `wp_options` VALUES (751,'activate_mailjet_sync','1','yes');
INSERT INTO `wp_options` VALUES (752,'activate_mailjet_initial_sync','1','yes');
INSERT INTO `wp_options` VALUES (753,'create_contact_list_btn','','yes');
INSERT INTO `wp_options` VALUES (754,'create_list_name','','yes');
INSERT INTO `wp_options` VALUES (755,'contacts_list_ok','1','yes');
INSERT INTO `wp_options` VALUES (756,'mailjet_from_email_extra','','yes');
INSERT INTO `wp_options` VALUES (757,'mailjet_from_email_extra_hidden','','yes');
INSERT INTO `wp_options` VALUES (758,'send_test_email_btn','Send','yes');
INSERT INTO `wp_options` VALUES (759,'activate_mailjet_comment_authors_sync','','yes');
INSERT INTO `wp_options` VALUES (760,'mailjet_plugin_version','5.2.17','yes');
INSERT INTO `wp_options` VALUES (761,'widget_wp_mailjet_form_builder_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (762,'mj_profile_name','Sanjay Rawal','yes');
INSERT INTO `wp_options` VALUES (763,'skip_mailjet_list','0','yes');
INSERT INTO `wp_options` VALUES (764,'mailjet_enabled','1','yes');
INSERT INTO `wp_options` VALUES (765,'mailjet_from_name','logicaland','yes');
INSERT INTO `wp_options` VALUES (766,'mailjet_from_email','','yes');
INSERT INTO `wp_options` VALUES (767,'mailjet_port','465','yes');
INSERT INTO `wp_options` VALUES (768,'mailjet_ssl','ssl','yes');
INSERT INTO `wp_options` VALUES (769,'mailjet_test_address','Sanjayrawal8585@gmail.com','yes');
INSERT INTO `wp_options` VALUES (873,'mailjet_woo_abandoned_cart_activate','0','yes');
INSERT INTO `wp_options` VALUES (936,'wpcf7','a:2:{s:7:\"version\";s:3:\"5.8\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1695476543;s:7:\"version\";s:3:\"5.8\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (959,'secret_key','=}%c?6|;iNkPX32!i0glTSc3~hn2rTXeRIy=i%p`A{JcO}KT`kBhAI#%Xj wSc3C','no');
INSERT INTO `wp_options` VALUES (1039,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1696470868;s:8:\"response\";a:2:{s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:33:\"w.org/plugins/all-in-one-seo-pack\";s:4:\"slug\";s:19:\"all-in-one-seo-pack\";s:6:\"plugin\";s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";s:11:\"new_version\";s:7:\"4.4.7.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/all-in-one-seo-pack/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/all-in-one-seo-pack.4.4.7.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:64:\"https://ps.w.org/all-in-one-seo-pack/assets/icon.svg?rev=2443290\";s:3:\"svg\";s:64:\"https://ps.w.org/all-in-one-seo-pack/assets/icon.svg?rev=2443290\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/all-in-one-seo-pack/assets/banner-1544x500.png?rev=2443290\";s:2:\"1x\";s:74:\"https://ps.w.org/all-in-one-seo-pack/assets/banner-772x250.png?rev=2443290\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"6.3.1\";s:12:\"requires_php\";s:3:\"7.0\";s:14:\"upgrade_notice\";s:57:\"<p>This update adds major improvements and bug fixes.</p>\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.8.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";s:6:\"tested\";s:5:\"6.3.1\";s:12:\"requires_php\";s:3:\"7.4\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:48:\"cf7-email-add-on/contact-form-7-email-add-on.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/cf7-email-add-on\";s:4:\"slug\";s:16:\"cf7-email-add-on\";s:6:\"plugin\";s:48:\"cf7-email-add-on/contact-form-7-email-add-on.php\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/cf7-email-add-on/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/cf7-email-add-on.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/cf7-email-add-on/assets/icon.svg?rev=1950687\";s:3:\"svg\";s:61:\"https://ps.w.org/cf7-email-add-on/assets/icon.svg?rev=1950687\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/cf7-email-add-on/assets/banner-1544x500.jpg?rev=1950687\";s:2:\"1x\";s:71:\"https://ps.w.org/cf7-email-add-on/assets/banner-772x250.jpg?rev=1950687\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/cf7-email-add-on/assets/banner-1544x500-rtl.jpg?rev=1950687\";s:2:\"1x\";s:75:\"https://ps.w.org/cf7-email-add-on/assets/banner-772x250-rtl.jpg?rev=1950687\";}s:8:\"requires\";s:3:\"4.6\";}s:47:\"file-manager-advanced/file_manager_advanced.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/file-manager-advanced\";s:4:\"slug\";s:21:\"file-manager-advanced\";s:6:\"plugin\";s:47:\"file-manager-advanced/file_manager_advanced.php\";s:11:\"new_version\";s:5:\"5.1.2\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/file-manager-advanced/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/file-manager-advanced.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/file-manager-advanced/assets/icon-128x128.png?rev=1947474\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/file-manager-advanced/assets/banner-772x250.png?rev=2839960\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:36:\"mailjet-for-wordpress/wp-mailjet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/mailjet-for-wordpress\";s:4:\"slug\";s:21:\"mailjet-for-wordpress\";s:6:\"plugin\";s:36:\"mailjet-for-wordpress/wp-mailjet.php\";s:11:\"new_version\";s:5:\"5.5.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/mailjet-for-wordpress/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/mailjet-for-wordpress.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/mailjet-for-wordpress/assets/icon-256x256.png?rev=2509612\";s:2:\"1x\";s:74:\"https://ps.w.org/mailjet-for-wordpress/assets/icon-128x128.png?rev=2509612\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/mailjet-for-wordpress/assets/banner-1544x500.jpg?rev=2737331\";s:2:\"1x\";s:76:\"https://ps.w.org/mailjet-for-wordpress/assets/banner-772x250.jpg?rev=2737331\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.4\";}}}','no');
INSERT INTO `wp_options` VALUES (1046,'_site_transient_timeout_theme_roots','1696472669','no');
INSERT INTO `wp_options` VALUES (1047,'_site_transient_theme_roots','a:7:{s:12:\"demotemplate\";s:7:\"/themes\";s:10:\"logicaland\";s:7:\"/themes\";s:8:\"my-theme\";s:7:\"/themes\";s:6:\"sanjay\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (1048,'_site_transient_timeout_php_check_18f908370f4cb169b20964c7203d6110','1697075670','no');
INSERT INTO `wp_options` VALUES (1049,'_site_transient_php_check_18f908370f4cb169b20964c7203d6110','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_post_smtp_logmeta`
--

DROP TABLE IF EXISTS `wp_post_smtp_logmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_post_smtp_logmeta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `log_id` bigint(20) NOT NULL,
  `meta_key` longtext COLLATE utf8mb4_unicode_520_ci,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_post_smtp_logmeta`
--

LOCK TABLES `wp_post_smtp_logmeta` WRITE;
/*!40000 ALTER TABLE `wp_post_smtp_logmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_post_smtp_logmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_post_smtp_logs`
--

DROP TABLE IF EXISTS `wp_post_smtp_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_post_smtp_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `solution` longtext COLLATE utf8mb4_unicode_520_ci,
  `success` longtext COLLATE utf8mb4_unicode_520_ci,
  `from_header` longtext COLLATE utf8mb4_unicode_520_ci,
  `to_header` longtext COLLATE utf8mb4_unicode_520_ci,
  `cc_header` longtext COLLATE utf8mb4_unicode_520_ci,
  `bcc_header` longtext COLLATE utf8mb4_unicode_520_ci,
  `reply_to_header` longtext COLLATE utf8mb4_unicode_520_ci,
  `transport_uri` longtext COLLATE utf8mb4_unicode_520_ci,
  `original_to` longtext COLLATE utf8mb4_unicode_520_ci,
  `original_subject` longtext COLLATE utf8mb4_unicode_520_ci,
  `original_message` longtext COLLATE utf8mb4_unicode_520_ci,
  `original_headers` longtext COLLATE utf8mb4_unicode_520_ci,
  `session_transcript` longtext COLLATE utf8mb4_unicode_520_ci,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_post_smtp_logs`
--

LOCK TABLES `wp_post_smtp_logs` WRITE;
/*!40000 ALTER TABLE `wp_post_smtp_logs` DISABLE KEYS */;
INSERT INTO `wp_post_smtp_logs` VALUES (1,'Not found, check status column for more info.','Code: 403, Message: Forbidden, Body: {\"errors\":[{\"message\":\"The from address does not match a verified Sender Identity. Mail cannot be sent until this error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/ to see the Sender Identity requirements\",\"field\":\"from\",\"help\":null}]}','logicaland <sanjayrawal8585@gmail.com>','Sanjayrawal8585@gmail.com','','','','https://api.sendgrid.com:443','Sanjayrawal8585@gmail.com','Postman SMTP Test (localhost)','Content-Type: text/plain; charset = \"UTF-8\"\r\nContent-Transfer-Encoding: 8bit\r\n\r\nHello!\r\n\r\nSent by Postman 2.6.0 - https://wordpress.org/plugins/post-smtp/\r\n\r\nContent-Type: text/html; charset=UTF-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<style type=\"text/css\" media=\"all\">\r\n.wporg-notification .im {\r\n	color: #888;\r\n} /* undo a GMail-inserted style */\r\n</style>\r\n</head>\r\n<body class=\"wporg-notification\">\r\n	<div style=\"background: #e8f6fe; font-family: &amp; quot; Helvetica Neue&amp;quot; , Helvetica ,Arial,sans-serif; font-size: 14px; color: #666; text-align: center; margin: 0; padding: 0\">\r\n		<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#e8f6fe\"	style=\"background: #e8f6fe; width: 100%;\">\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"padding: 0px; width: 100%;\"\">\r\n							<tbody>\r\n								<tr>\r\n									<td>\r\n										<div style=\"max-width: 600px; height: 400px; margin: 0 auto; overflow: hidden;background-image:url(\'https://ps.w.org/postman-smtp/assets/email/poofytoo.png\');background-repeat: no-repeat;\">\r\n											<div style=\"margin:50px 0 0 300px; width:300px; font-size:2em;\">Hello! - &#20320;&#22909; - Bonjour! - &#2344;&#2350;&#2360;&#2381;&#2340;&#2375; - ¡Hola! - Ol&#225; - &#1055;&#1088;&#1080;&#1074;&#1077;&#1090;! - &#20170;&#26085;&#12399;</div>\r\n											<div style=\"text-align:right;font-size: 1.4em; color:black;margin:150px 0 0 200px;\">Sent by Postman 2.6.0\r\n												<br/>\r\n											</div>\r\n										</div>\r\n									</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						<br><span style=\"font-size:0.9em;color:#94c0dc;\">Image source: <a style=\"color:#94c0dc\" href=\"http://poofytoo.com\">poofytoo.com</a> - Used with permission</span>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n</body>\r\n</html>','Content-Type: multipart/alternative;\r\nMIME-Version: 1.0\r\n','https://api.sendgrid.com:443\n\nCode: 403, Message: Forbidden, Body: {\"errors\":[{\"message\":\"The from address does not match a verified Sender Identity. Mail cannot be sent until this error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/ to see the Sender Identity requirements\",\"field\":\"from\",\"help\":null}]}\n\n--Raw message follows--\n\nArray\n(\n    [from] => Array\n        (\n            [email] => sanjayrawal8585@gmail.com\n            [name] => logicaland\n        )\n\n    [personalizations] => Array\n        (\n            [0] => Array\n                (\n                    [to] => Array\n                        (\n                            [0] => Array\n                                (\n                                    [email] => Sanjayrawal8585@gmail.com\n                                    [name] => \n                                )\n\n                        )\n\n                )\n\n        )\n\n    [subject] => Postman SMTP Test (localhost)\n    [content] => Array\n        (\n            [0] => Array\n                (\n                    [value] => <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r<html xmlns=\"http://www.w3.org/1999/xhtml\">\r<head>\r<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r<style type=\"text/css\" media=\"all\">\r.wporg-notification .im {\r	color: #888;\r} /* undo a GMail-inserted style */\r</style>\r</head>\r<body class=\"wporg-notification\">\r	<div style=\"background: #e8f6fe; font-family: &amp; quot; Helvetica Neue&amp;quot; , Helvetica ,Arial,sans-serif; font-size: 14px; color: #666; text-align: center; margin: 0; padding: 0\">\r		<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#e8f6fe\"	style=\"background: #e8f6fe; width: 100%;\">\r			<tbody>\r				<tr>\r					<td>\r						<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"padding: 0px; width: 100%;\"\">\r							<tbody>\r								<tr>\r									<td>\r										<div style=\"max-width: 600px; height: 400px; margin: 0 auto; overflow: hidden;background-image:url(\'https://ps.w.org/postman-smtp/assets/email/poofytoo.png\');background-repeat: no-repeat;\">\r											<div style=\"margin:50px 0 0 300px; width:300px; font-size:2em;\">Hello! - &#20320;&#22909; - Bonjour! - &#2344;&#2350;&#2360;&#2381;&#2340;&#2375; - ¡Hola! - Ol&#225; - &#1055;&#1088;&#1080;&#1074;&#1077;&#1090;! - &#20170;&#26085;&#12399;</div>\r											<div style=\"text-align:right;font-size: 1.4em; color:black;margin:150px 0 0 200px;\">Sent by Postman 2.6.0\r												<br/>\r											</div>\r										</div>\r									</td>\r								</tr>\r							</tbody>\r						</table>\r						<br><span style=\"font-size:0.9em;color:#94c0dc;\">Image source: <a style=\"color:#94c0dc\" href=\"http://poofytoo.com\">poofytoo.com</a> - Used with permission</span>\r					</td>\r				</tr>\r			</tbody>\r		</table>\r</body>\r</html>\n                    [type] => text/html\n                )\n\n        )\n\n)\n',1695282723);
INSERT INTO `wp_post_smtp_logs` VALUES (2,'Not found, check status column for more info.','Code: 403, Message: Forbidden, Body: {\"errors\":[{\"message\":\"The from address does not match a verified Sender Identity. Mail cannot be sent until this error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/ to see the Sender Identity requirements\",\"field\":\"from\",\"help\":null}]}','logicaland <sanjayrawal8585@gmail.com>','Sanjayrawal8585@gmail.com','','','','https://api.sendgrid.com:443','Sanjayrawal8585@gmail.com','Postman SMTP Test (localhost)','Content-Type: text/plain; charset = \"UTF-8\"\r\nContent-Transfer-Encoding: 8bit\r\n\r\nHello!\r\n\r\nSent by Postman 2.6.0 - https://wordpress.org/plugins/post-smtp/\r\n\r\nContent-Type: text/html; charset=UTF-8\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<style type=\"text/css\" media=\"all\">\r\n.wporg-notification .im {\r\n	color: #888;\r\n} /* undo a GMail-inserted style */\r\n</style>\r\n</head>\r\n<body class=\"wporg-notification\">\r\n	<div style=\"background: #e8f6fe; font-family: &amp; quot; Helvetica Neue&amp;quot; , Helvetica ,Arial,sans-serif; font-size: 14px; color: #666; text-align: center; margin: 0; padding: 0\">\r\n		<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#e8f6fe\"	style=\"background: #e8f6fe; width: 100%;\">\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"padding: 0px; width: 100%;\"\">\r\n							<tbody>\r\n								<tr>\r\n									<td>\r\n										<div style=\"max-width: 600px; height: 400px; margin: 0 auto; overflow: hidden;background-image:url(\'https://ps.w.org/postman-smtp/assets/email/poofytoo.png\');background-repeat: no-repeat;\">\r\n											<div style=\"margin:50px 0 0 300px; width:300px; font-size:2em;\">Hello! - &#20320;&#22909; - Bonjour! - &#2344;&#2350;&#2360;&#2381;&#2340;&#2375; - ¡Hola! - Ol&#225; - &#1055;&#1088;&#1080;&#1074;&#1077;&#1090;! - &#20170;&#26085;&#12399;</div>\r\n											<div style=\"text-align:right;font-size: 1.4em; color:black;margin:150px 0 0 200px;\">Sent by Postman 2.6.0\r\n												<br/>\r\n											</div>\r\n										</div>\r\n									</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						<br><span style=\"font-size:0.9em;color:#94c0dc;\">Image source: <a style=\"color:#94c0dc\" href=\"http://poofytoo.com\">poofytoo.com</a> - Used with permission</span>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n</body>\r\n</html>','Content-Type: multipart/alternative;\r\nMIME-Version: 1.0\r\n','https://api.sendgrid.com:443\n\nCode: 403, Message: Forbidden, Body: {\"errors\":[{\"message\":\"The from address does not match a verified Sender Identity. Mail cannot be sent until this error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/ to see the Sender Identity requirements\",\"field\":\"from\",\"help\":null}]}\n\n--Raw message follows--\n\nArray\n(\n    [from] => Array\n        (\n            [email] => sanjayrawal8585@gmail.com\n            [name] => logicaland\n        )\n\n    [personalizations] => Array\n        (\n            [0] => Array\n                (\n                    [to] => Array\n                        (\n                            [0] => Array\n                                (\n                                    [email] => Sanjayrawal8585@gmail.com\n                                    [name] => \n                                )\n\n                        )\n\n                )\n\n        )\n\n    [subject] => Postman SMTP Test (localhost)\n    [content] => Array\n        (\n            [0] => Array\n                (\n                    [value] => <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r<html xmlns=\"http://www.w3.org/1999/xhtml\">\r<head>\r<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r<style type=\"text/css\" media=\"all\">\r.wporg-notification .im {\r	color: #888;\r} /* undo a GMail-inserted style */\r</style>\r</head>\r<body class=\"wporg-notification\">\r	<div style=\"background: #e8f6fe; font-family: &amp; quot; Helvetica Neue&amp;quot; , Helvetica ,Arial,sans-serif; font-size: 14px; color: #666; text-align: center; margin: 0; padding: 0\">\r		<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#e8f6fe\"	style=\"background: #e8f6fe; width: 100%;\">\r			<tbody>\r				<tr>\r					<td>\r						<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"padding: 0px; width: 100%;\"\">\r							<tbody>\r								<tr>\r									<td>\r										<div style=\"max-width: 600px; height: 400px; margin: 0 auto; overflow: hidden;background-image:url(\'https://ps.w.org/postman-smtp/assets/email/poofytoo.png\');background-repeat: no-repeat;\">\r											<div style=\"margin:50px 0 0 300px; width:300px; font-size:2em;\">Hello! - &#20320;&#22909; - Bonjour! - &#2344;&#2350;&#2360;&#2381;&#2340;&#2375; - ¡Hola! - Ol&#225; - &#1055;&#1088;&#1080;&#1074;&#1077;&#1090;! - &#20170;&#26085;&#12399;</div>\r											<div style=\"text-align:right;font-size: 1.4em; color:black;margin:150px 0 0 200px;\">Sent by Postman 2.6.0\r												<br/>\r											</div>\r										</div>\r									</td>\r								</tr>\r							</tbody>\r						</table>\r						<br><span style=\"font-size:0.9em;color:#94c0dc;\">Image source: <a style=\"color:#94c0dc\" href=\"http://poofytoo.com\">poofytoo.com</a> - Used with permission</span>\r					</td>\r				</tr>\r			</tbody>\r		</table>\r</body>\r</html>\n                    [type] => text/html\n                )\n\n        )\n\n)\n',1695282775);
INSERT INTO `wp_post_smtp_logs` VALUES (4,'Not found, check status column for more info.','Invalid \"From\" e-mail address \"\"','kinsta <>','Sanjayrawal8585@gmail.com','','','','https://api.sendgrid.com:443','Sanjayrawal8585@gmail.com','Your test mail from Mailjet','Your Mailjet configuration is ok! <br /> Site URL: http://localhost:10003 <br /> Encryption: Off <br /> Port: 25','','https://api.sendgrid.com:443\n\n',1695349850);
INSERT INTO `wp_post_smtp_logs` VALUES (5,'Not found, check status column for more info.','Invalid \"From\" e-mail address \"\"','kinsta <>','Sanjayrawal8585@gmail.com','','','','https://api.sendgrid.com:443','Sanjayrawal8585@gmail.com','Your test mail from Mailjet','Your Mailjet configuration is ok! <br /> Site URL: http://localhost:10003 <br /> Encryption: On <br /> Port: 465','','https://api.sendgrid.com:443\n\n',1695349880);
INSERT INTO `wp_post_smtp_logs` VALUES (6,'Not found, check status column for more info.','Invalid \"From\" e-mail address \"\"','logicaland <>','Sanjayrawal8585@gmail.com','','','','https://api.sendgrid.com:443','Sanjayrawal8585@gmail.com','Your test mail from Mailjet','Your Mailjet configuration is ok! <br /> Site URL: http://localhost:10003 <br /> Encryption: On <br /> Port: 465','','https://api.sendgrid.com:443\n\n',1695349905);
INSERT INTO `wp_post_smtp_logs` VALUES (7,'Not found, check status column for more info.','Invalid \"From\" e-mail address \"\"','logicaland <>','nc -vz in-v3.mailjet.com 587','','','','https://api.sendgrid.com:443','nc -vz in-v3.mailjet.com 587','Your test mail from Mailjet','Your Mailjet configuration is ok! <br /> Site URL: http://localhost:10003 <br /> Encryption: On <br /> Port: 465','','https://api.sendgrid.com:443\n\n',1695350024);
INSERT INTO `wp_post_smtp_logs` VALUES (8,'Not found, check status column for more info.','Invalid \"From\" e-mail address \"\"','logicaland <>','Sanjayrawal8585@gmail.com','','','','https://api.sendgrid.com:443','Sanjayrawal8585@gmail.com','Your test mail from Mailjet','Your Mailjet configuration is ok! <br /> Site URL: http://localhost:10003 <br /> Encryption: On <br /> Port: 465','','https://api.sendgrid.com:443\n\n',1695350107);
INSERT INTO `wp_post_smtp_logs` VALUES (9,'Not found, check status column for more info.','Invalid \"From\" e-mail address \"\"','logicaland <>','Sanjayrawal8585@gmail.com','','','','https://api.sendgrid.com:443','Sanjayrawal8585@gmail.com','Your test mail from Mailjet','Your Mailjet configuration is ok! <br /> Site URL: http://localhost:10003 <br /> Encryption: On <br /> Port: 465','','https://api.sendgrid.com:443\n\n',1695350350);
INSERT INTO `wp_post_smtp_logs` VALUES (10,'Not found, check status column for more info.','Code: 403, Message: Forbidden, Body: {\"errors\":[{\"message\":\"The from address does not match a verified Sender Identity. Mail cannot be sent until this error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/ to see the Sender Identity requirements\",\"field\":\"from\",\"help\":null}]}','logicaland <sanjayrawal8585@gmail.com>','sanjayrawal8585@gmail.com','','','','https://api.sendgrid.com:443','sanjayrawal8585@gmail.com','[logicalland] Password Reset','Someone has requested a password reset for the following account:\r\n\r\nSite Name: logicalland\r\n\r\nUsername: logicaland\r\n\r\nIf this was a mistake, ignore this email and nothing will happen.\r\n\r\nTo reset your password, visit the following address:\r\n\r\nhttp://localhost:10003/wp-login.php?action=rp&key=0WVedWtngzyo4wt43VYJ&login=logicaland&wp_lang=en_US\r\n\r\nThis password reset request originated from the IP address 127.0.0.1.\r\n','','https://api.sendgrid.com:443\n\nCode: 403, Message: Forbidden, Body: {\"errors\":[{\"message\":\"The from address does not match a verified Sender Identity. Mail cannot be sent until this error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/ to see the Sender Identity requirements\",\"field\":\"from\",\"help\":null}]}\n\n--Raw message follows--\n\nArray\n(\n    [from] => Array\n        (\n            [email] => sanjayrawal8585@gmail.com\n            [name] => logicaland\n        )\n\n    [personalizations] => Array\n        (\n            [0] => Array\n                (\n                    [to] => Array\n                        (\n                            [0] => Array\n                                (\n                                    [email] => sanjayrawal8585@gmail.com\n                                    [name] => \n                                )\n\n                        )\n\n                )\n\n        )\n\n    [subject] => [logicalland] Password Reset\n    [content] => Array\n        (\n            [0] => Array\n                (\n                    [value] => Someone has requested a password reset for the following account:\r\n\r\nSite Name: logicalland\r\n\r\nUsername: logicaland\r\n\r\nIf this was a mistake, ignore this email and nothing will happen.\r\n\r\nTo reset your password, visit the following address:\r\n\r\nhttp://localhost:10003/wp-login.php?action=rp&key=0WVedWtngzyo4wt43VYJ&login=logicaland&wp_lang=en_US\r\n\r\nThis password reset request originated from the IP address 127.0.0.1.\r\n\n                    [type] => text/plain\n                )\n\n        )\n\n)\n',1695356892);
INSERT INTO `wp_post_smtp_logs` VALUES (11,'Not found, check status column for more info.','Code: 403, Message: Forbidden, Body: {\"errors\":[{\"message\":\"The from address does not match a verified Sender Identity. Mail cannot be sent until this error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/ to see the Sender Identity requirements\",\"field\":\"from\",\"help\":null}]}','logicaland <sanjayrawal8585@gmail.com>','sanjayrawal8585@gmail.com','','','','https://api.sendgrid.com:443','sanjayrawal8585@gmail.com','[logicalland] Password Reset','Someone has requested a password reset for the following account:\r\n\r\nSite Name: logicalland\r\n\r\nUsername: logicaland\r\n\r\nIf this was a mistake, ignore this email and nothing will happen.\r\n\r\nTo reset your password, visit the following address:\r\n\r\nhttp://localhost:10003/wp-login.php?action=rp&key=8h1imt7ddVKOwt5th0lt&login=logicaland&wp_lang=en_US\r\n\r\nThis password reset request originated from the IP address 127.0.0.1.\r\n','','https://api.sendgrid.com:443\n\nCode: 403, Message: Forbidden, Body: {\"errors\":[{\"message\":\"The from address does not match a verified Sender Identity. Mail cannot be sent until this error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/ to see the Sender Identity requirements\",\"field\":\"from\",\"help\":null}]}\n\n--Raw message follows--\n\nArray\n(\n    [from] => Array\n        (\n            [email] => sanjayrawal8585@gmail.com\n            [name] => logicaland\n        )\n\n    [personalizations] => Array\n        (\n            [0] => Array\n                (\n                    [to] => Array\n                        (\n                            [0] => Array\n                                (\n                                    [email] => sanjayrawal8585@gmail.com\n                                    [name] => \n                                )\n\n                        )\n\n                )\n\n        )\n\n    [subject] => [logicalland] Password Reset\n    [content] => Array\n        (\n            [0] => Array\n                (\n                    [value] => Someone has requested a password reset for the following account:\r\n\r\nSite Name: logicalland\r\n\r\nUsername: logicaland\r\n\r\nIf this was a mistake, ignore this email and nothing will happen.\r\n\r\nTo reset your password, visit the following address:\r\n\r\nhttp://localhost:10003/wp-login.php?action=rp&key=8h1imt7ddVKOwt5th0lt&login=logicaland&wp_lang=en_US\r\n\r\nThis password reset request originated from the IP address 127.0.0.1.\r\n\n                    [type] => text/plain\n                )\n\n        )\n\n)\n',1695356991);
INSERT INTO `wp_post_smtp_logs` VALUES (12,'Not found, check status column for more info.','Code: 403, Message: Forbidden, Body: {\"errors\":[{\"message\":\"The from address does not match a verified Sender Identity. Mail cannot be sent until this error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/ to see the Sender Identity requirements\",\"field\":\"from\",\"help\":null}]}','logicaland <sanjayrawal8585@gmail.com>','sanjayrawal8585@gmail.com','','','','https://api.sendgrid.com:443','sanjayrawal8585@gmail.com','[logicalland] Password Reset','Someone has requested a password reset for the following account:\r\n\r\nSite Name: logicalland\r\n\r\nUsername: logicaland\r\n\r\nIf this was a mistake, ignore this email and nothing will happen.\r\n\r\nTo reset your password, visit the following address:\r\n\r\nhttp://localhost:10003/wp-login.php?action=rp&key=1dcJ5UTZtr4tvdW31iKK&login=logicaland&wp_lang=en_US\r\n\r\nThis password reset request originated from the IP address 127.0.0.1.\r\n','','https://api.sendgrid.com:443\n\nCode: 403, Message: Forbidden, Body: {\"errors\":[{\"message\":\"The from address does not match a verified Sender Identity. Mail cannot be sent until this error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/ to see the Sender Identity requirements\",\"field\":\"from\",\"help\":null}]}\n\n--Raw message follows--\n\nArray\n(\n    [from] => Array\n        (\n            [email] => sanjayrawal8585@gmail.com\n            [name] => logicaland\n        )\n\n    [personalizations] => Array\n        (\n            [0] => Array\n                (\n                    [to] => Array\n                        (\n                            [0] => Array\n                                (\n                                    [email] => sanjayrawal8585@gmail.com\n                                    [name] => \n                                )\n\n                        )\n\n                )\n\n        )\n\n    [subject] => [logicalland] Password Reset\n    [content] => Array\n        (\n            [0] => Array\n                (\n                    [value] => Someone has requested a password reset for the following account:\r\n\r\nSite Name: logicalland\r\n\r\nUsername: logicaland\r\n\r\nIf this was a mistake, ignore this email and nothing will happen.\r\n\r\nTo reset your password, visit the following address:\r\n\r\nhttp://localhost:10003/wp-login.php?action=rp&key=1dcJ5UTZtr4tvdW31iKK&login=logicaland&wp_lang=en_US\r\n\r\nThis password reset request originated from the IP address 127.0.0.1.\r\n\n                    [type] => text/plain\n                )\n\n        )\n\n)\n',1695357003);
INSERT INTO `wp_post_smtp_logs` VALUES (13,'Not found, check status column for more info.','Code: 403, Message: Forbidden, Body: {\"errors\":[{\"message\":\"The from address does not match a verified Sender Identity. Mail cannot be sent until this error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/ to see the Sender Identity requirements\",\"field\":\"from\",\"help\":null}]}','logicaland <sanjayrawal8585@gmail.com>','sanjayrawal8585@gmail.com','','','','https://api.sendgrid.com:443','sanjayrawal8585@gmail.com','[logicalland] Password Reset','Someone has requested a password reset for the following account:\r\n\r\nSite Name: logicalland\r\n\r\nUsername: logicaland\r\n\r\nIf this was a mistake, ignore this email and nothing will happen.\r\n\r\nTo reset your password, visit the following address:\r\n\r\nhttp://localhost:10003/wp-login.php?action=rp&key=pK1O6fQY5C9u0VfPjENk&login=logicaland&wp_lang=en_US\r\n\r\nThis password reset request originated from the IP address 127.0.0.1.\r\n','','https://api.sendgrid.com:443\n\nCode: 403, Message: Forbidden, Body: {\"errors\":[{\"message\":\"The from address does not match a verified Sender Identity. Mail cannot be sent until this error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/ to see the Sender Identity requirements\",\"field\":\"from\",\"help\":null}]}\n\n--Raw message follows--\n\nArray\n(\n    [from] => Array\n        (\n            [email] => sanjayrawal8585@gmail.com\n            [name] => logicaland\n        )\n\n    [personalizations] => Array\n        (\n            [0] => Array\n                (\n                    [to] => Array\n                        (\n                            [0] => Array\n                                (\n                                    [email] => sanjayrawal8585@gmail.com\n                                    [name] => \n                                )\n\n                        )\n\n                )\n\n        )\n\n    [subject] => [logicalland] Password Reset\n    [content] => Array\n        (\n            [0] => Array\n                (\n                    [value] => Someone has requested a password reset for the following account:\r\n\r\nSite Name: logicalland\r\n\r\nUsername: logicaland\r\n\r\nIf this was a mistake, ignore this email and nothing will happen.\r\n\r\nTo reset your password, visit the following address:\r\n\r\nhttp://localhost:10003/wp-login.php?action=rp&key=pK1O6fQY5C9u0VfPjENk&login=logicaland&wp_lang=en_US\r\n\r\nThis password reset request originated from the IP address 127.0.0.1.\r\n\n                    [type] => text/plain\n                )\n\n        )\n\n)\n',1695357007);
INSERT INTO `wp_post_smtp_logs` VALUES (14,'Not found, check status column for more info.','Code: 403, Message: Forbidden, Body: {\"errors\":[{\"message\":\"The from address does not match a verified Sender Identity. Mail cannot be sent until this error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/ to see the Sender Identity requirements\",\"field\":\"from\",\"help\":null}]}','logicaland <sanjayrawal8585@gmail.com>','sanjayrawal8585@gmail.com','','','','https://api.sendgrid.com:443','sanjayrawal8585@gmail.com','[logicalland] Password Reset','Someone has requested a password reset for the following account:\r\n\r\nSite Name: logicalland\r\n\r\nUsername: logicaland\r\n\r\nIf this was a mistake, ignore this email and nothing will happen.\r\n\r\nTo reset your password, visit the following address:\r\n\r\nhttp://localhost:10003/wp-login.php?action=rp&key=XJ8BDGpRef3iXWAzsVS5&login=logicaland&wp_lang=en_US\r\n\r\nThis password reset request originated from the IP address 127.0.0.1.\r\n','','https://api.sendgrid.com:443\n\nCode: 403, Message: Forbidden, Body: {\"errors\":[{\"message\":\"The from address does not match a verified Sender Identity. Mail cannot be sent until this error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/ to see the Sender Identity requirements\",\"field\":\"from\",\"help\":null}]}\n\n--Raw message follows--\n\nArray\n(\n    [from] => Array\n        (\n            [email] => sanjayrawal8585@gmail.com\n            [name] => logicaland\n        )\n\n    [personalizations] => Array\n        (\n            [0] => Array\n                (\n                    [to] => Array\n                        (\n                            [0] => Array\n                                (\n                                    [email] => sanjayrawal8585@gmail.com\n                                    [name] => \n                                )\n\n                        )\n\n                )\n\n        )\n\n    [subject] => [logicalland] Password Reset\n    [content] => Array\n        (\n            [0] => Array\n                (\n                    [value] => Someone has requested a password reset for the following account:\r\n\r\nSite Name: logicalland\r\n\r\nUsername: logicaland\r\n\r\nIf this was a mistake, ignore this email and nothing will happen.\r\n\r\nTo reset your password, visit the following address:\r\n\r\nhttp://localhost:10003/wp-login.php?action=rp&key=XJ8BDGpRef3iXWAzsVS5&login=logicaland&wp_lang=en_US\r\n\r\nThis password reset request originated from the IP address 127.0.0.1.\r\n\n                    [type] => text/plain\n                )\n\n        )\n\n)\n',1695362837);
/*!40000 ALTER TABLE `wp_post_smtp_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1080 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (67,44,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (68,44,'_wp_trash_meta_time','1694418110');
INSERT INTO `wp_postmeta` VALUES (74,47,'_edit_lock','1694493686:1');
INSERT INTO `wp_postmeta` VALUES (75,48,'_edit_lock','1694493814:1');
INSERT INTO `wp_postmeta` VALUES (77,50,'_edit_lock','1694493978:1');
INSERT INTO `wp_postmeta` VALUES (82,53,'_wp_attached_file','2023/09/logo_60.png');
INSERT INTO `wp_postmeta` VALUES (83,53,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:346;s:6:\"height\";i:69;s:4:\"file\";s:19:\"2023/09/logo_60.png\";s:8:\"filesize\";i:13518;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"logo_60-300x60.png\";s:5:\"width\";i:300;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13328;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"logo_60-150x69.png\";s:5:\"width\";i:150;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4319;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (84,54,'_wp_attached_file','2023/09/logo_60-1.png');
INSERT INTO `wp_postmeta` VALUES (85,54,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:346;s:6:\"height\";i:69;s:4:\"file\";s:21:\"2023/09/logo_60-1.png\";s:8:\"filesize\";i:13518;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"logo_60-1-300x60.png\";s:5:\"width\";i:300;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13328;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"logo_60-1-150x69.png\";s:5:\"width\";i:150;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4319;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (91,60,'_wp_attached_file','2023/09/logicaland.zip');
INSERT INTO `wp_postmeta` VALUES (92,60,'_wp_attachment_metadata','a:1:{s:8:\"filesize\";i:43657;}');
INSERT INTO `wp_postmeta` VALUES (93,61,'_wp_attached_file','2023/09/logicalAnd.png');
INSERT INTO `wp_postmeta` VALUES (94,61,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:440;s:6:\"height\";i:300;s:4:\"file\";s:22:\"2023/09/logicalAnd.png\";s:8:\"filesize\";i:45369;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"logicalAnd-300x205.png\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17861;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"logicalAnd-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7220;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (95,151,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (96,151,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (97,151,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (98,151,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (99,151,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (100,151,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (101,151,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (102,151,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (103,151,'_menu_item_orphaned','1695106764');
INSERT INTO `wp_postmeta` VALUES (104,152,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (105,152,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (106,152,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (107,152,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (108,152,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (109,152,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (110,152,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (111,152,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (112,152,'_menu_item_orphaned','1695106764');
INSERT INTO `wp_postmeta` VALUES (113,153,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (114,153,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (115,153,'_menu_item_object_id','62');
INSERT INTO `wp_postmeta` VALUES (116,153,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (117,153,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (118,153,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (119,153,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (120,153,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (121,153,'_menu_item_orphaned','1695106764');
INSERT INTO `wp_postmeta` VALUES (122,154,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (123,154,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (124,154,'_menu_item_object_id','63');
INSERT INTO `wp_postmeta` VALUES (125,154,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (126,154,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (127,154,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (128,154,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (129,154,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (130,154,'_menu_item_orphaned','1695106764');
INSERT INTO `wp_postmeta` VALUES (131,155,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (132,155,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (133,155,'_menu_item_object_id','64');
INSERT INTO `wp_postmeta` VALUES (134,155,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (135,155,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (136,155,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (137,155,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (138,155,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (139,155,'_menu_item_orphaned','1695106764');
INSERT INTO `wp_postmeta` VALUES (140,156,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (141,156,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (142,156,'_menu_item_object_id','65');
INSERT INTO `wp_postmeta` VALUES (143,156,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (144,156,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (145,156,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (146,156,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (147,156,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (148,156,'_menu_item_orphaned','1695106764');
INSERT INTO `wp_postmeta` VALUES (149,157,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (150,157,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (151,157,'_menu_item_object_id','66');
INSERT INTO `wp_postmeta` VALUES (152,157,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (153,157,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (154,157,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (155,157,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (156,157,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (157,157,'_menu_item_orphaned','1695106764');
INSERT INTO `wp_postmeta` VALUES (158,158,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (159,158,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (160,158,'_menu_item_object_id','67');
INSERT INTO `wp_postmeta` VALUES (161,158,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (162,158,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (163,158,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (164,158,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (165,158,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (166,158,'_menu_item_orphaned','1695106764');
INSERT INTO `wp_postmeta` VALUES (167,159,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (168,159,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (169,159,'_menu_item_object_id','68');
INSERT INTO `wp_postmeta` VALUES (170,159,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (171,159,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (172,159,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (173,159,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (174,159,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (175,159,'_menu_item_orphaned','1695106764');
INSERT INTO `wp_postmeta` VALUES (176,160,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (177,160,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (178,160,'_menu_item_object_id','69');
INSERT INTO `wp_postmeta` VALUES (179,160,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (180,160,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (181,160,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (182,160,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (183,160,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (184,160,'_menu_item_orphaned','1695106764');
INSERT INTO `wp_postmeta` VALUES (185,161,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (186,161,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (187,161,'_menu_item_object_id','70');
INSERT INTO `wp_postmeta` VALUES (188,161,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (189,161,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (190,161,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (191,161,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (192,161,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (193,161,'_menu_item_orphaned','1695106764');
INSERT INTO `wp_postmeta` VALUES (194,162,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (195,162,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (196,162,'_menu_item_object_id','71');
INSERT INTO `wp_postmeta` VALUES (197,162,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (198,162,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (199,162,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (200,162,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (201,162,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (202,162,'_menu_item_orphaned','1695106764');
INSERT INTO `wp_postmeta` VALUES (203,163,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (204,163,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (205,163,'_menu_item_object_id','72');
INSERT INTO `wp_postmeta` VALUES (206,163,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (207,163,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (208,163,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (209,163,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (210,163,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (211,163,'_menu_item_orphaned','1695106764');
INSERT INTO `wp_postmeta` VALUES (212,164,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (213,164,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (214,164,'_menu_item_object_id','73');
INSERT INTO `wp_postmeta` VALUES (215,164,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (216,164,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (217,164,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (218,164,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (219,164,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (220,164,'_menu_item_orphaned','1695106764');
INSERT INTO `wp_postmeta` VALUES (221,165,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (222,165,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (223,165,'_menu_item_object_id','74');
INSERT INTO `wp_postmeta` VALUES (224,165,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (225,165,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (226,165,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (227,165,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (228,165,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (229,165,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (230,166,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (231,166,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (232,166,'_menu_item_object_id','75');
INSERT INTO `wp_postmeta` VALUES (233,166,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (234,166,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (235,166,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (236,166,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (237,166,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (238,166,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (239,167,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (240,167,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (241,167,'_menu_item_object_id','76');
INSERT INTO `wp_postmeta` VALUES (242,167,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (243,167,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (244,167,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (245,167,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (246,167,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (247,167,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (248,168,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (249,168,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (250,168,'_menu_item_object_id','77');
INSERT INTO `wp_postmeta` VALUES (251,168,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (252,168,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (253,168,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (254,168,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (255,168,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (256,168,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (257,169,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (258,169,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (259,169,'_menu_item_object_id','78');
INSERT INTO `wp_postmeta` VALUES (260,169,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (261,169,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (262,169,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (263,169,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (264,169,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (265,169,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (266,170,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (267,170,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (268,170,'_menu_item_object_id','79');
INSERT INTO `wp_postmeta` VALUES (269,170,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (270,170,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (271,170,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (272,170,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (273,170,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (274,170,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (275,171,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (276,171,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (277,171,'_menu_item_object_id','80');
INSERT INTO `wp_postmeta` VALUES (278,171,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (279,171,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (280,171,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (281,171,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (282,171,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (283,171,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (284,172,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (285,172,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (286,172,'_menu_item_object_id','81');
INSERT INTO `wp_postmeta` VALUES (287,172,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (288,172,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (289,172,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (290,172,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (291,172,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (292,172,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (293,173,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (294,173,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (295,173,'_menu_item_object_id','82');
INSERT INTO `wp_postmeta` VALUES (296,173,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (297,173,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (298,173,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (299,173,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (300,173,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (301,173,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (302,174,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (303,174,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (304,174,'_menu_item_object_id','83');
INSERT INTO `wp_postmeta` VALUES (305,174,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (306,174,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (307,174,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (308,174,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (309,174,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (310,174,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (311,175,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (312,175,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (313,175,'_menu_item_object_id','84');
INSERT INTO `wp_postmeta` VALUES (314,175,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (315,175,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (316,175,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (317,175,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (318,175,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (319,175,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (320,176,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (321,176,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (322,176,'_menu_item_object_id','85');
INSERT INTO `wp_postmeta` VALUES (323,176,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (324,176,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (325,176,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (326,176,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (327,176,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (328,176,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (329,177,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (330,177,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (331,177,'_menu_item_object_id','86');
INSERT INTO `wp_postmeta` VALUES (332,177,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (333,177,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (334,177,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (335,177,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (336,177,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (337,177,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (338,178,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (339,178,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (340,178,'_menu_item_object_id','87');
INSERT INTO `wp_postmeta` VALUES (341,178,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (342,178,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (343,178,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (344,178,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (345,178,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (346,178,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (347,179,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (348,179,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (349,179,'_menu_item_object_id','88');
INSERT INTO `wp_postmeta` VALUES (350,179,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (351,179,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (352,179,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (353,179,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (354,179,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (355,179,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (356,180,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (357,180,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (358,180,'_menu_item_object_id','89');
INSERT INTO `wp_postmeta` VALUES (359,180,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (360,180,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (361,180,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (362,180,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (363,180,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (364,180,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (365,181,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (366,181,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (367,181,'_menu_item_object_id','90');
INSERT INTO `wp_postmeta` VALUES (368,181,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (369,181,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (370,181,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (371,181,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (372,181,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (373,181,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (374,182,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (375,182,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (376,182,'_menu_item_object_id','91');
INSERT INTO `wp_postmeta` VALUES (377,182,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (378,182,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (379,182,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (380,182,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (381,182,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (382,182,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (383,183,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (384,183,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (385,183,'_menu_item_object_id','92');
INSERT INTO `wp_postmeta` VALUES (386,183,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (387,183,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (388,183,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (389,183,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (390,183,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (391,183,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (392,184,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (393,184,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (394,184,'_menu_item_object_id','93');
INSERT INTO `wp_postmeta` VALUES (395,184,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (396,184,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (397,184,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (398,184,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (399,184,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (400,184,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (401,185,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (402,185,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (403,185,'_menu_item_object_id','94');
INSERT INTO `wp_postmeta` VALUES (404,185,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (405,185,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (406,185,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (407,185,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (408,185,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (409,185,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (410,186,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (411,186,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (412,186,'_menu_item_object_id','95');
INSERT INTO `wp_postmeta` VALUES (413,186,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (414,186,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (415,186,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (416,186,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (417,186,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (418,186,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (419,187,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (420,187,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (421,187,'_menu_item_object_id','96');
INSERT INTO `wp_postmeta` VALUES (422,187,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (423,187,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (424,187,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (425,187,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (426,187,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (427,187,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (428,188,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (429,188,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (430,188,'_menu_item_object_id','97');
INSERT INTO `wp_postmeta` VALUES (431,188,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (432,188,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (433,188,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (434,188,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (435,188,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (436,188,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (437,189,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (438,189,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (439,189,'_menu_item_object_id','98');
INSERT INTO `wp_postmeta` VALUES (440,189,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (441,189,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (442,189,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (443,189,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (444,189,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (445,189,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (446,190,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (447,190,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (448,190,'_menu_item_object_id','99');
INSERT INTO `wp_postmeta` VALUES (449,190,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (450,190,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (451,190,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (452,190,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (453,190,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (454,190,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (455,191,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (456,191,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (457,191,'_menu_item_object_id','100');
INSERT INTO `wp_postmeta` VALUES (458,191,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (459,191,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (460,191,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (461,191,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (462,191,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (463,191,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (464,192,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (465,192,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (466,192,'_menu_item_object_id','101');
INSERT INTO `wp_postmeta` VALUES (467,192,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (468,192,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (469,192,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (470,192,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (471,192,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (472,192,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (473,193,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (474,193,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (475,193,'_menu_item_object_id','102');
INSERT INTO `wp_postmeta` VALUES (476,193,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (477,193,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (478,193,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (479,193,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (480,193,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (481,193,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (482,194,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (483,194,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (484,194,'_menu_item_object_id','103');
INSERT INTO `wp_postmeta` VALUES (485,194,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (486,194,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (487,194,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (488,194,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (489,194,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (490,194,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (491,195,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (492,195,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (493,195,'_menu_item_object_id','104');
INSERT INTO `wp_postmeta` VALUES (494,195,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (495,195,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (496,195,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (497,195,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (498,195,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (499,195,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (500,196,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (501,196,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (502,196,'_menu_item_object_id','105');
INSERT INTO `wp_postmeta` VALUES (503,196,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (504,196,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (505,196,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (506,196,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (507,196,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (508,196,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (509,197,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (510,197,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (511,197,'_menu_item_object_id','106');
INSERT INTO `wp_postmeta` VALUES (512,197,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (513,197,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (514,197,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (515,197,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (516,197,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (517,197,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (518,198,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (519,198,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (520,198,'_menu_item_object_id','107');
INSERT INTO `wp_postmeta` VALUES (521,198,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (522,198,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (523,198,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (524,198,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (525,198,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (526,198,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (527,199,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (528,199,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (529,199,'_menu_item_object_id','108');
INSERT INTO `wp_postmeta` VALUES (530,199,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (531,199,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (532,199,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (533,199,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (534,199,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (535,199,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (536,200,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (537,200,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (538,200,'_menu_item_object_id','109');
INSERT INTO `wp_postmeta` VALUES (539,200,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (540,200,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (541,200,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (542,200,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (543,200,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (544,200,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (545,201,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (546,201,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (547,201,'_menu_item_object_id','110');
INSERT INTO `wp_postmeta` VALUES (548,201,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (549,201,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (550,201,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (551,201,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (552,201,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (553,201,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (554,202,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (555,202,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (556,202,'_menu_item_object_id','111');
INSERT INTO `wp_postmeta` VALUES (557,202,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (558,202,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (559,202,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (560,202,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (561,202,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (562,202,'_menu_item_orphaned','1695106765');
INSERT INTO `wp_postmeta` VALUES (563,203,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (564,203,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (565,203,'_menu_item_object_id','150');
INSERT INTO `wp_postmeta` VALUES (566,203,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (567,203,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (568,203,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (569,203,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (570,203,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (571,203,'_menu_item_orphaned','1695106783');
INSERT INTO `wp_postmeta` VALUES (581,209,'_edit_lock','1695178225:1');
INSERT INTO `wp_postmeta` VALUES (582,209,'_wp_page_template','Access.php');
INSERT INTO `wp_postmeta` VALUES (583,80,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (584,80,'_wp_trash_meta_time','1695111049');
INSERT INTO `wp_postmeta` VALUES (585,80,'_wp_desired_post_slug','access-19');
INSERT INTO `wp_postmeta` VALUES (586,70,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (587,70,'_wp_trash_meta_time','1695111051');
INSERT INTO `wp_postmeta` VALUES (588,70,'_wp_desired_post_slug','access-9');
INSERT INTO `wp_postmeta` VALUES (589,71,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (590,71,'_wp_trash_meta_time','1695111052');
INSERT INTO `wp_postmeta` VALUES (591,71,'_wp_desired_post_slug','access-10');
INSERT INTO `wp_postmeta` VALUES (592,72,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (593,72,'_wp_trash_meta_time','1695111054');
INSERT INTO `wp_postmeta` VALUES (594,72,'_wp_desired_post_slug','access-11');
INSERT INTO `wp_postmeta` VALUES (595,84,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (596,84,'_wp_trash_meta_time','1695111071');
INSERT INTO `wp_postmeta` VALUES (597,84,'_wp_desired_post_slug','access-23');
INSERT INTO `wp_postmeta` VALUES (598,69,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (599,69,'_wp_trash_meta_time','1695111073');
INSERT INTO `wp_postmeta` VALUES (600,69,'_wp_desired_post_slug','access-8');
INSERT INTO `wp_postmeta` VALUES (601,74,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (602,74,'_wp_trash_meta_time','1695111074');
INSERT INTO `wp_postmeta` VALUES (603,74,'_wp_desired_post_slug','access-13');
INSERT INTO `wp_postmeta` VALUES (604,76,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (605,76,'_wp_trash_meta_time','1695111076');
INSERT INTO `wp_postmeta` VALUES (606,76,'_wp_desired_post_slug','access-15');
INSERT INTO `wp_postmeta` VALUES (607,78,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (608,78,'_wp_trash_meta_time','1695111078');
INSERT INTO `wp_postmeta` VALUES (609,78,'_wp_desired_post_slug','access-17');
INSERT INTO `wp_postmeta` VALUES (610,75,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (611,75,'_wp_trash_meta_time','1695111080');
INSERT INTO `wp_postmeta` VALUES (612,75,'_wp_desired_post_slug','access-14');
INSERT INTO `wp_postmeta` VALUES (613,79,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (614,79,'_wp_trash_meta_time','1695111082');
INSERT INTO `wp_postmeta` VALUES (615,79,'_wp_desired_post_slug','access-18');
INSERT INTO `wp_postmeta` VALUES (616,90,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (617,90,'_wp_trash_meta_time','1695111084');
INSERT INTO `wp_postmeta` VALUES (618,90,'_wp_desired_post_slug','access-29');
INSERT INTO `wp_postmeta` VALUES (619,81,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (620,81,'_wp_trash_meta_time','1695111086');
INSERT INTO `wp_postmeta` VALUES (621,81,'_wp_desired_post_slug','access-20');
INSERT INTO `wp_postmeta` VALUES (622,83,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (623,83,'_wp_trash_meta_time','1695111089');
INSERT INTO `wp_postmeta` VALUES (624,83,'_wp_desired_post_slug','access-22');
INSERT INTO `wp_postmeta` VALUES (625,85,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (626,85,'_wp_trash_meta_time','1695111092');
INSERT INTO `wp_postmeta` VALUES (627,85,'_wp_desired_post_slug','access-24');
INSERT INTO `wp_postmeta` VALUES (628,82,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (629,82,'_wp_trash_meta_time','1695111094');
INSERT INTO `wp_postmeta` VALUES (630,82,'_wp_desired_post_slug','access-21');
INSERT INTO `wp_postmeta` VALUES (631,86,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (632,86,'_wp_trash_meta_time','1695111095');
INSERT INTO `wp_postmeta` VALUES (633,86,'_wp_desired_post_slug','access-25');
INSERT INTO `wp_postmeta` VALUES (634,2,'_edit_lock','1695111006:1');
INSERT INTO `wp_postmeta` VALUES (635,62,'_edit_lock','1695111037:1');
INSERT INTO `wp_postmeta` VALUES (637,209,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (638,230,'_edit_lock','1695567580:1');
INSERT INTO `wp_postmeta` VALUES (639,230,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (640,230,'_wp_page_template','Access.php');
INSERT INTO `wp_postmeta` VALUES (641,97,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (642,97,'_wp_trash_meta_time','1695178389');
INSERT INTO `wp_postmeta` VALUES (643,97,'_wp_desired_post_slug','access-36');
INSERT INTO `wp_postmeta` VALUES (644,98,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (645,98,'_wp_trash_meta_time','1695178392');
INSERT INTO `wp_postmeta` VALUES (646,98,'_wp_desired_post_slug','access-37');
INSERT INTO `wp_postmeta` VALUES (647,99,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (648,99,'_wp_trash_meta_time','1695178394');
INSERT INTO `wp_postmeta` VALUES (649,99,'_wp_desired_post_slug','access-38');
INSERT INTO `wp_postmeta` VALUES (650,100,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (651,100,'_wp_trash_meta_time','1695178398');
INSERT INTO `wp_postmeta` VALUES (652,100,'_wp_desired_post_slug','access-39');
INSERT INTO `wp_postmeta` VALUES (653,101,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (654,101,'_wp_trash_meta_time','1695178402');
INSERT INTO `wp_postmeta` VALUES (655,101,'_wp_desired_post_slug','access-40');
INSERT INTO `wp_postmeta` VALUES (657,239,'_edit_lock','1695178319:1');
INSERT INTO `wp_postmeta` VALUES (658,239,'_wp_page_template','contact.php');
INSERT INTO `wp_postmeta` VALUES (659,102,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (660,102,'_wp_trash_meta_time','1695190673');
INSERT INTO `wp_postmeta` VALUES (661,102,'_wp_desired_post_slug','access-41');
INSERT INTO `wp_postmeta` VALUES (662,73,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (663,73,'_wp_trash_meta_time','1695190675');
INSERT INTO `wp_postmeta` VALUES (664,73,'_wp_desired_post_slug','access-12');
INSERT INTO `wp_postmeta` VALUES (665,68,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (666,68,'_wp_trash_meta_time','1695190678');
INSERT INTO `wp_postmeta` VALUES (667,68,'_wp_desired_post_slug','access-7');
INSERT INTO `wp_postmeta` VALUES (668,67,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (669,67,'_wp_trash_meta_time','1695190680');
INSERT INTO `wp_postmeta` VALUES (670,67,'_wp_desired_post_slug','access-6');
INSERT INTO `wp_postmeta` VALUES (671,66,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (672,66,'_wp_trash_meta_time','1695190682');
INSERT INTO `wp_postmeta` VALUES (673,66,'_wp_desired_post_slug','access-5');
INSERT INTO `wp_postmeta` VALUES (674,65,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (675,65,'_wp_trash_meta_time','1695190684');
INSERT INTO `wp_postmeta` VALUES (676,65,'_wp_desired_post_slug','access-4');
INSERT INTO `wp_postmeta` VALUES (677,64,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (678,64,'_wp_trash_meta_time','1695190686');
INSERT INTO `wp_postmeta` VALUES (679,64,'_wp_desired_post_slug','access-3');
INSERT INTO `wp_postmeta` VALUES (680,77,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (681,77,'_wp_trash_meta_time','1695190694');
INSERT INTO `wp_postmeta` VALUES (682,77,'_wp_desired_post_slug','access-16');
INSERT INTO `wp_postmeta` VALUES (683,88,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (684,88,'_wp_trash_meta_time','1695190699');
INSERT INTO `wp_postmeta` VALUES (685,88,'_wp_desired_post_slug','access-27');
INSERT INTO `wp_postmeta` VALUES (686,89,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (687,89,'_wp_trash_meta_time','1695190701');
INSERT INTO `wp_postmeta` VALUES (688,89,'_wp_desired_post_slug','access-28');
INSERT INTO `wp_postmeta` VALUES (689,91,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (690,91,'_wp_trash_meta_time','1695190702');
INSERT INTO `wp_postmeta` VALUES (691,91,'_wp_desired_post_slug','access-30');
INSERT INTO `wp_postmeta` VALUES (692,92,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (693,92,'_wp_trash_meta_time','1695190704');
INSERT INTO `wp_postmeta` VALUES (694,92,'_wp_desired_post_slug','access-31');
INSERT INTO `wp_postmeta` VALUES (695,93,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (696,93,'_wp_trash_meta_time','1695190705');
INSERT INTO `wp_postmeta` VALUES (697,93,'_wp_desired_post_slug','access-32');
INSERT INTO `wp_postmeta` VALUES (698,94,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (699,94,'_wp_trash_meta_time','1695190707');
INSERT INTO `wp_postmeta` VALUES (700,94,'_wp_desired_post_slug','access-33');
INSERT INTO `wp_postmeta` VALUES (701,95,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (702,95,'_wp_trash_meta_time','1695190709');
INSERT INTO `wp_postmeta` VALUES (703,95,'_wp_desired_post_slug','access-34');
INSERT INTO `wp_postmeta` VALUES (704,96,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (705,96,'_wp_trash_meta_time','1695190711');
INSERT INTO `wp_postmeta` VALUES (706,96,'_wp_desired_post_slug','access-35');
INSERT INTO `wp_postmeta` VALUES (707,103,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (708,103,'_wp_trash_meta_time','1695190714');
INSERT INTO `wp_postmeta` VALUES (709,103,'_wp_desired_post_slug','access-42');
INSERT INTO `wp_postmeta` VALUES (710,104,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (711,104,'_wp_trash_meta_time','1695190716');
INSERT INTO `wp_postmeta` VALUES (712,104,'_wp_desired_post_slug','access-43');
INSERT INTO `wp_postmeta` VALUES (713,105,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (714,105,'_wp_trash_meta_time','1695190719');
INSERT INTO `wp_postmeta` VALUES (715,105,'_wp_desired_post_slug','access-44');
INSERT INTO `wp_postmeta` VALUES (716,106,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (717,106,'_wp_trash_meta_time','1695190725');
INSERT INTO `wp_postmeta` VALUES (718,106,'_wp_desired_post_slug','access-45');
INSERT INTO `wp_postmeta` VALUES (719,107,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (720,107,'_wp_trash_meta_time','1695190727');
INSERT INTO `wp_postmeta` VALUES (721,107,'_wp_desired_post_slug','access-46');
INSERT INTO `wp_postmeta` VALUES (722,108,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (723,108,'_wp_trash_meta_time','1695190728');
INSERT INTO `wp_postmeta` VALUES (724,108,'_wp_desired_post_slug','access-47');
INSERT INTO `wp_postmeta` VALUES (725,109,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (726,109,'_wp_trash_meta_time','1695190730');
INSERT INTO `wp_postmeta` VALUES (727,109,'_wp_desired_post_slug','access-48');
INSERT INTO `wp_postmeta` VALUES (728,110,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (729,110,'_wp_trash_meta_time','1695190732');
INSERT INTO `wp_postmeta` VALUES (730,110,'_wp_desired_post_slug','access-49');
INSERT INTO `wp_postmeta` VALUES (731,111,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (732,111,'_wp_trash_meta_time','1695190733');
INSERT INTO `wp_postmeta` VALUES (733,111,'_wp_desired_post_slug','access-50');
INSERT INTO `wp_postmeta` VALUES (734,112,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (735,112,'_wp_trash_meta_time','1695190735');
INSERT INTO `wp_postmeta` VALUES (736,112,'_wp_desired_post_slug','access-51');
INSERT INTO `wp_postmeta` VALUES (737,113,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (738,113,'_wp_trash_meta_time','1695190736');
INSERT INTO `wp_postmeta` VALUES (739,113,'_wp_desired_post_slug','access-52');
INSERT INTO `wp_postmeta` VALUES (740,114,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (741,114,'_wp_trash_meta_time','1695190737');
INSERT INTO `wp_postmeta` VALUES (742,114,'_wp_desired_post_slug','access-53');
INSERT INTO `wp_postmeta` VALUES (743,115,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (744,115,'_wp_trash_meta_time','1695190739');
INSERT INTO `wp_postmeta` VALUES (745,115,'_wp_desired_post_slug','access-54');
INSERT INTO `wp_postmeta` VALUES (746,116,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (747,116,'_wp_trash_meta_time','1695190740');
INSERT INTO `wp_postmeta` VALUES (748,116,'_wp_desired_post_slug','access-55');
INSERT INTO `wp_postmeta` VALUES (749,117,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (750,117,'_wp_trash_meta_time','1695190741');
INSERT INTO `wp_postmeta` VALUES (751,117,'_wp_desired_post_slug','access-56');
INSERT INTO `wp_postmeta` VALUES (752,118,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (753,118,'_wp_trash_meta_time','1695190742');
INSERT INTO `wp_postmeta` VALUES (754,118,'_wp_desired_post_slug','access-57');
INSERT INTO `wp_postmeta` VALUES (755,119,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (756,119,'_wp_trash_meta_time','1695190747');
INSERT INTO `wp_postmeta` VALUES (757,119,'_wp_desired_post_slug','access-58');
INSERT INTO `wp_postmeta` VALUES (758,120,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (759,120,'_wp_trash_meta_time','1695190752');
INSERT INTO `wp_postmeta` VALUES (760,120,'_wp_desired_post_slug','access-59');
INSERT INTO `wp_postmeta` VALUES (761,121,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (762,121,'_wp_trash_meta_time','1695190754');
INSERT INTO `wp_postmeta` VALUES (763,121,'_wp_desired_post_slug','access-60');
INSERT INTO `wp_postmeta` VALUES (770,279,'_edit_lock','1695199157:1');
INSERT INTO `wp_postmeta` VALUES (771,279,'_wp_page_template','');
INSERT INTO `wp_postmeta` VALUES (772,281,'_edit_lock','1695199195:1');
INSERT INTO `wp_postmeta` VALUES (773,281,'_wp_page_template','Access.php');
INSERT INTO `wp_postmeta` VALUES (778,284,'_edit_lock','1695198398:1');
INSERT INTO `wp_postmeta` VALUES (779,286,'_edit_lock','1695200105:1');
INSERT INTO `wp_postmeta` VALUES (780,286,'_wp_page_template','Access.php');
INSERT INTO `wp_postmeta` VALUES (782,62,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (783,62,'_wp_trash_meta_time','1695198575');
INSERT INTO `wp_postmeta` VALUES (784,62,'_wp_desired_post_slug','access');
INSERT INTO `wp_postmeta` VALUES (785,63,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (786,63,'_wp_trash_meta_time','1695198577');
INSERT INTO `wp_postmeta` VALUES (787,63,'_wp_desired_post_slug','access-2');
INSERT INTO `wp_postmeta` VALUES (788,87,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (789,87,'_wp_trash_meta_time','1695198579');
INSERT INTO `wp_postmeta` VALUES (790,87,'_wp_desired_post_slug','access-26');
INSERT INTO `wp_postmeta` VALUES (800,126,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (801,126,'_wp_trash_meta_time','1695198585');
INSERT INTO `wp_postmeta` VALUES (802,126,'_wp_desired_post_slug','access-65');
INSERT INTO `wp_postmeta` VALUES (812,130,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (813,130,'_wp_trash_meta_time','1695198592');
INSERT INTO `wp_postmeta` VALUES (814,130,'_wp_desired_post_slug','access-69');
INSERT INTO `wp_postmeta` VALUES (815,131,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (816,131,'_wp_trash_meta_time','1695198593');
INSERT INTO `wp_postmeta` VALUES (817,131,'_wp_desired_post_slug','access-70');
INSERT INTO `wp_postmeta` VALUES (818,132,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (819,132,'_wp_trash_meta_time','1695198595');
INSERT INTO `wp_postmeta` VALUES (820,132,'_wp_desired_post_slug','access-71');
INSERT INTO `wp_postmeta` VALUES (827,304,'_edit_lock','1695199295:1');
INSERT INTO `wp_postmeta` VALUES (828,304,'_wp_page_template','Access.php');
INSERT INTO `wp_postmeta` VALUES (829,306,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (830,306,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (831,306,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (832,306,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (833,306,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (834,306,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (835,306,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (836,306,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (837,306,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (838,307,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (839,307,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (840,307,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (841,307,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (842,307,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (843,307,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (844,307,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (845,307,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (846,307,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (847,308,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (848,308,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (849,308,'_menu_item_object_id','135');
INSERT INTO `wp_postmeta` VALUES (850,308,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (851,308,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (852,308,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (853,308,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (854,308,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (855,308,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (856,309,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (857,309,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (858,309,'_menu_item_object_id','136');
INSERT INTO `wp_postmeta` VALUES (859,309,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (860,309,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (861,309,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (862,309,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (863,309,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (864,309,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (865,310,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (866,310,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (867,310,'_menu_item_object_id','137');
INSERT INTO `wp_postmeta` VALUES (868,310,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (869,310,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (870,310,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (871,310,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (872,310,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (873,310,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (874,311,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (875,311,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (876,311,'_menu_item_object_id','138');
INSERT INTO `wp_postmeta` VALUES (877,311,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (878,311,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (879,311,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (880,311,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (881,311,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (882,311,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (883,312,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (884,312,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (885,312,'_menu_item_object_id','139');
INSERT INTO `wp_postmeta` VALUES (886,312,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (887,312,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (888,312,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (889,312,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (890,312,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (891,312,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (892,313,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (893,313,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (894,313,'_menu_item_object_id','140');
INSERT INTO `wp_postmeta` VALUES (895,313,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (896,313,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (897,313,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (898,313,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (899,313,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (900,313,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (901,314,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (902,314,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (903,314,'_menu_item_object_id','141');
INSERT INTO `wp_postmeta` VALUES (904,314,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (905,314,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (906,314,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (907,314,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (908,314,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (909,314,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (910,315,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (911,315,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (912,315,'_menu_item_object_id','142');
INSERT INTO `wp_postmeta` VALUES (913,315,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (914,315,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (915,315,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (916,315,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (917,315,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (918,315,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (919,316,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (920,316,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (921,316,'_menu_item_object_id','143');
INSERT INTO `wp_postmeta` VALUES (922,316,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (923,316,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (924,316,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (925,316,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (926,316,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (927,316,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (928,317,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (929,317,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (930,317,'_menu_item_object_id','304');
INSERT INTO `wp_postmeta` VALUES (931,317,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (932,317,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (933,317,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (934,317,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (935,317,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (936,317,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (937,318,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (938,318,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (939,318,'_menu_item_object_id','144');
INSERT INTO `wp_postmeta` VALUES (940,318,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (941,318,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (942,318,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (943,318,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (944,318,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (945,318,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (946,319,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (947,319,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (948,319,'_menu_item_object_id','145');
INSERT INTO `wp_postmeta` VALUES (949,319,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (950,319,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (951,319,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (952,319,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (953,319,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (954,319,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (955,320,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (956,320,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (957,320,'_menu_item_object_id','146');
INSERT INTO `wp_postmeta` VALUES (958,320,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (959,320,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (960,320,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (961,320,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (962,320,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (963,320,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (964,321,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (965,321,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (966,321,'_menu_item_object_id','147');
INSERT INTO `wp_postmeta` VALUES (967,321,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (968,321,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (969,321,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (970,321,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (971,321,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (972,321,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (973,322,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (974,322,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (975,322,'_menu_item_object_id','148');
INSERT INTO `wp_postmeta` VALUES (976,322,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (977,322,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (978,322,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (979,322,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (980,322,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (981,322,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (982,323,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (983,323,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (984,323,'_menu_item_object_id','149');
INSERT INTO `wp_postmeta` VALUES (985,323,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (986,323,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (987,323,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (988,323,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (989,323,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (990,323,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (991,324,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (992,324,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (993,324,'_menu_item_object_id','150');
INSERT INTO `wp_postmeta` VALUES (994,324,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (995,324,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (996,324,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (997,324,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (998,324,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (999,324,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (1000,325,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1001,325,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (1002,325,'_menu_item_object_id','284');
INSERT INTO `wp_postmeta` VALUES (1003,325,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1004,325,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1005,325,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1006,325,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1007,325,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1008,325,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (1009,326,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1010,326,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (1011,326,'_menu_item_object_id','286');
INSERT INTO `wp_postmeta` VALUES (1012,326,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1013,326,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1014,326,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1015,326,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1016,326,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1017,326,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (1018,327,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1019,327,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (1020,327,'_menu_item_object_id','230');
INSERT INTO `wp_postmeta` VALUES (1021,327,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1022,327,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1023,327,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1024,327,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1025,327,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1026,327,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (1027,328,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1028,328,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (1029,328,'_menu_item_object_id','239');
INSERT INTO `wp_postmeta` VALUES (1030,328,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1031,328,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1032,328,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1033,328,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1034,328,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1035,328,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (1036,329,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1037,329,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (1038,329,'_menu_item_object_id','209');
INSERT INTO `wp_postmeta` VALUES (1039,329,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1040,329,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1041,329,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1042,329,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1043,329,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1044,329,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (1045,330,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1046,330,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (1047,330,'_menu_item_object_id','281');
INSERT INTO `wp_postmeta` VALUES (1048,330,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1049,330,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1050,330,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1051,330,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1052,330,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1053,330,'_menu_item_orphaned','1695199179');
INSERT INTO `wp_postmeta` VALUES (1054,331,'_edit_lock','1695199135:1');
INSERT INTO `wp_postmeta` VALUES (1055,331,'_wp_page_template','Access.php');
INSERT INTO `wp_postmeta` VALUES (1070,335,'_form','<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]');
INSERT INTO `wp_postmeta` VALUES (1071,335,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:43:\"[Sanjay-rawal] <rawallogicalland@gmail.com>\";s:9:\"recipient\";s:26:\"rawallogicalland@gmail.com\";s:4:\"body\";s:161:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (1072,335,'_mail_2','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:41:\"[_site_title] <sanjayrawal8585@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:4025:\"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n    <title>Contact Form 7 Email Add on</title>\n</head>\n<body style=\"margin: 0; padding: 0;\">\n    <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"background: #f2f2f2;\" background-color=\"#f2f2f2\">\n        <tbody>\n            <tr>\n                <td align=\"center\" style=\"padding: 30px 0 30px 0;\">\n                    <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"background: #ffffff; max-width: 600px; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; overflow: hidden; font-family: Verdana, Geneva, sans-serif;\" background-color=\"#ffffff\">\n                        <tbody>\n                            <tr>\n                                <td>\n                                    <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                                        <tr>\n                                            <td align=\"center\" height=\"520\" bgcolor=\"#8d89c9\" style=\"background-image: url(http://localhost:10003/wp-content/plugins/cf7-email-add-on/admin/assets/images/gradient-img2.png); background-color: #8d89c9; background-repeat: repeat-x; height: 520px;\">\n                                                <img src=\"http://localhost:10003/wp-content/plugins/cf7-email-add-on/admin/assets/images/thank-you-img.png\" alt=\"\" style=\"display: block;\">\n                                                <p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 35px; font-weight: 700; color: #ffffff; margin: 0 0 10px 0;\"> Thank you</p>\n                                                <p style=\"font-family: Verdana, Geneva, sans-serif; max-width: 90%; font-size: 18px; color: #ffffff; margin: 0 auto 26px;\">\n                                                    We have received your message and would like to thank you for writing to us. If your inquiry is urgent, please call us to talk to one of our staff members. Otherwise, we will reply by email as soon as possible.\n                                                </p>\n                                                <a href=\"mailto:[_site_admin_email]\" style=\"font-family: Verdana, Geneva, sans-serif; display: inline-block; width: 160px; height: 50px; font-size: 14px; color: #8a89cb; text-decoration: none; text-transform: uppercase; font-weight: 700; background: url() no-repeat; text-align: center;\">\n                                                    <img src=\"http://localhost:10003/wp-content/plugins/cf7-email-add-on/admin/assets/images/send-btn.png\" style=\"display: block;\" alt=\"Contact us\">\n                                                </a>\n                                            </td>\n                                        </tr>\n                                    </table>\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </td>\n            </tr>\n            <tr>\n                <td align=\"center\" style=\"padding: 0px 0 30px 0;\">\n                    <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"max-width: 600px; overflow: hidden; font-family: Verdana, Geneva, sans-serif;\">\n                        <tbody>\n                            <tr>\n                                <td style=\"text-align: center; font-size: 12px; color: #666666; text-transform: uppercase; font-family: Verdana, Geneva, sans-serif;\">\n                                    © 2023 <a href=\"[_url]\" target=\"_blank\" style=\"color: #666666; text-decoration: none;\">Powered by</a>. Contact Form 7 Email Addon.\n                                </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</body>\n</html>\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (1073,335,'_messages','a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}');
INSERT INTO `wp_postmeta` VALUES (1074,335,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (1075,335,'_locale','en_US');
INSERT INTO `wp_postmeta` VALUES (1076,335,'_hash','c58d80b17c476b6393e6b58f9cac49417d63d572');
INSERT INTO `wp_postmeta` VALUES (1079,335,'cf7ea_thank_you_template','gradient');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=338 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-09-11 04:54:47','2023-09-11 04:54:47','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2023-09-11 04:54:47','2023-09-11 04:54:47','',0,'http://localhost:10003/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2023-09-11 04:54:47','2023-09-11 04:54:47','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10003/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2023-09-11 04:54:47','2023-09-11 04:54:47','',0,'http://localhost:10003/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2023-09-11 04:54:47','2023-09-11 04:54:47','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10003.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2023-09-11 04:54:47','2023-09-11 04:54:47','',0,'http://localhost:10003/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2023-09-11 04:56:07','2023-09-11 04:56:07','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2023-09-11 04:56:07','2023-09-11 04:56:07','',0,'http://localhost:10003/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2023-09-11 05:01:21','2023-09-11 05:01:21','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentythree','','','2023-09-11 05:01:21','2023-09-11 05:01:21','',0,'http://localhost:10003/wp-global-styles-twentytwentythree/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2023-09-11 07:41:50','2023-09-11 07:41:50','{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"block-2\",\n                \"block-3\",\n                \"block-4\"\n            ],\n            \"sidebar-2\": [\n                \"block-5\",\n                \"block-6\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-09-11 07:41:50\"\n    }\n}','','','trash','closed','closed','','9d47d3c5-03d7-4c7d-bb49-2fc41a27dc9e','','','2023-09-11 07:41:50','2023-09-11 07:41:50','',0,'http://localhost:10003/9d47d3c5-03d7-4c7d-bb49-2fc41a27dc9e/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2023-09-12 04:41:26','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2023-09-12 04:41:26','2023-09-12 04:41:26','',0,'http://localhost:10003/?page_id=47',0,'page','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2023-09-12 04:43:34','0000-00-00 00:00:00','<!-- wp:paragraph -->\n<p>this is home page temp </p>\n<!-- /wp:paragraph -->','Home','','draft','closed','closed','','','','','2023-09-12 04:43:34','2023-09-12 04:43:34','',0,'http://localhost:10003/?page_id=48',0,'page','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2023-09-12 04:46:23','2023-09-12 04:46:23','<!-- wp:paragraph -->\n<p>this is home page template</p>\n<!-- /wp:paragraph -->','Home','','draft','closed','closed','','home','','','2023-09-20 08:34:52','2023-09-20 08:34:52','',0,'http://localhost:10003/?page_id=50',0,'page','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2023-09-12 04:46:23','2023-09-12 04:46:23','<!-- wp:paragraph -->\n<p>this is home page template</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','50-revision-v1','','','2023-09-12 04:46:23','2023-09-12 04:46:23','',50,'http://localhost:10003/?p=51',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2023-09-13 08:36:04','2023-09-13 08:36:04','','logo_60','','inherit','open','closed','','logo_60','','','2023-09-13 08:36:04','2023-09-13 08:36:04','',0,'http://localhost:10003/wp-content/uploads/2023/09/logo_60.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (54,1,'2023-09-13 08:36:28','2023-09-13 08:36:28','','logo_60','','inherit','open','closed','','logo_60-2','','','2023-09-13 08:36:28','2023-09-13 08:36:28','',0,'http://localhost:10003/wp-content/uploads/2023/09/logo_60-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (60,1,'2023-09-14 02:20:19','2023-09-14 02:20:19','','logicaland','','inherit','open','closed','','logicaland','','','2023-09-14 02:20:19','2023-09-14 02:20:19','',0,'http://localhost:10003/wp-content/uploads/2023/09/logicaland.zip',0,'attachment','application/zip',0);
INSERT INTO `wp_posts` VALUES (61,1,'2023-09-14 02:21:23','2023-09-14 02:21:23','','logicalAnd','','inherit','open','closed','','logicaland-2','','','2023-09-14 02:21:23','2023-09-14 02:21:23','',0,'http://localhost:10003/wp-content/uploads/2023/09/logicalAnd.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (62,0,'2023-09-19 00:40:51','2023-09-19 00:40:51','This is the access page content.','access','','trash','closed','closed','','access__trashed','','','2023-09-20 08:29:35','2023-09-20 08:29:35','',0,'http://localhost:10003/access/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (63,0,'2023-09-19 00:40:51','2023-09-19 00:40:51','This is the access page content.','access','','trash','closed','closed','','access-2__trashed','','','2023-09-20 08:29:37','2023-09-20 08:29:37','',0,'http://localhost:10003/access-2/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (64,0,'2023-09-19 00:40:52','2023-09-19 00:40:52','This is the access page content.','access','','trash','closed','closed','','access-3__trashed','','','2023-09-20 06:18:06','2023-09-20 06:18:06','',0,'http://localhost:10003/access-3/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (65,0,'2023-09-19 00:40:53','2023-09-19 00:40:53','This is the access page content.','access','','trash','closed','closed','','access-4__trashed','','','2023-09-20 06:18:04','2023-09-20 06:18:04','',0,'http://localhost:10003/access-4/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (66,0,'2023-09-19 00:40:56','2023-09-19 00:40:56','This is the access page content.','access','','trash','closed','closed','','access-5__trashed','','','2023-09-20 06:18:02','2023-09-20 06:18:02','',0,'http://localhost:10003/access-5/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (67,0,'2023-09-19 00:40:57','2023-09-19 00:40:57','This is the access page content.','access','','trash','closed','closed','','access-6__trashed','','','2023-09-20 06:18:00','2023-09-20 06:18:00','',0,'http://localhost:10003/access-6/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (68,0,'2023-09-19 00:40:59','2023-09-19 00:40:59','This is the access page content.','access','','trash','closed','closed','','access-7__trashed','','','2023-09-20 06:17:58','2023-09-20 06:17:58','',0,'http://localhost:10003/access-7/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (69,0,'2023-09-19 00:41:00','2023-09-19 00:41:00','This is the access page content.','access','','trash','closed','closed','','access-8__trashed','','','2023-09-19 08:11:13','2023-09-19 08:11:13','',0,'http://localhost:10003/access-8/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (70,0,'2023-09-19 00:41:01','2023-09-19 00:41:01','This is the access page content.','access','','trash','closed','closed','','access-9__trashed','','','2023-09-19 08:10:51','2023-09-19 08:10:51','',0,'http://localhost:10003/access-9/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (71,0,'2023-09-19 00:41:48','2023-09-19 00:41:48','This is the access page content.','access','','trash','closed','closed','','access-10__trashed','','','2023-09-19 08:10:52','2023-09-19 08:10:52','',0,'http://localhost:10003/access-10/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (72,0,'2023-09-19 00:41:48','2023-09-19 00:41:48','This is the access page content.','access','','trash','closed','closed','','access-11__trashed','','','2023-09-19 08:10:54','2023-09-19 08:10:54','',0,'http://localhost:10003/access-11/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (73,0,'2023-09-19 00:41:49','2023-09-19 00:41:49','This is the access page content.','access','','trash','closed','closed','','access-12__trashed','','','2023-09-20 06:17:55','2023-09-20 06:17:55','',0,'http://localhost:10003/access-12/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (74,0,'2023-09-19 00:41:49','2023-09-19 00:41:49','This is the access page content.','access','','trash','closed','closed','','access-13__trashed','','','2023-09-19 08:11:14','2023-09-19 08:11:14','',0,'http://localhost:10003/access-13/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (75,0,'2023-09-19 00:41:49','2023-09-19 00:41:49','This is the access page content.','access','','trash','closed','closed','','access-14__trashed','','','2023-09-19 08:11:20','2023-09-19 08:11:20','',0,'http://localhost:10003/access-14/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (76,0,'2023-09-19 00:41:49','2023-09-19 00:41:49','This is the access page content.','access','','trash','closed','closed','','access-15__trashed','','','2023-09-19 08:11:16','2023-09-19 08:11:16','',0,'http://localhost:10003/access-15/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (77,0,'2023-09-19 00:41:50','2023-09-19 00:41:50','This is the access page content.','access','','trash','closed','closed','','access-16__trashed','','','2023-09-20 06:18:14','2023-09-20 06:18:14','',0,'http://localhost:10003/access-16/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (78,0,'2023-09-19 00:41:50','2023-09-19 00:41:50','This is the access page content.','access','','trash','closed','closed','','access-17__trashed','','','2023-09-19 08:11:18','2023-09-19 08:11:18','',0,'http://localhost:10003/access-17/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (79,0,'2023-09-19 00:41:51','2023-09-19 00:41:51','This is the access page content.','access','','trash','closed','closed','','access-18__trashed','','','2023-09-19 08:11:22','2023-09-19 08:11:22','',0,'http://localhost:10003/access-18/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (80,0,'2023-09-19 00:41:51','2023-09-19 00:41:51','This is the access page content.','access','','trash','closed','closed','','access-19__trashed','','','2023-09-19 08:10:49','2023-09-19 08:10:49','',0,'http://localhost:10003/access-19/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (81,0,'2023-09-19 00:43:11','2023-09-19 00:43:11','This is the access page content.','access','','trash','closed','closed','','access-20__trashed','','','2023-09-19 08:11:26','2023-09-19 08:11:26','',0,'http://localhost:10003/access-20/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (82,0,'2023-09-19 00:43:11','2023-09-19 00:43:11','This is the access page content.','access','','trash','closed','closed','','access-21__trashed','','','2023-09-19 08:11:34','2023-09-19 08:11:34','',0,'http://localhost:10003/access-21/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (83,0,'2023-09-19 00:43:12','2023-09-19 00:43:12','This is the access page content.','access','','trash','closed','closed','','access-22__trashed','','','2023-09-19 08:11:29','2023-09-19 08:11:29','',0,'http://localhost:10003/access-22/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (84,0,'2023-09-19 00:43:13','2023-09-19 00:43:13','This is the access page content.','access','','trash','closed','closed','','access-23__trashed','','','2023-09-19 08:11:11','2023-09-19 08:11:11','',0,'http://localhost:10003/access-23/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (85,0,'2023-09-19 00:43:13','2023-09-19 00:43:13','This is the access page content.','access','','trash','closed','closed','','access-24__trashed','','','2023-09-19 08:11:32','2023-09-19 08:11:32','',0,'http://localhost:10003/access-24/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (86,0,'2023-09-19 00:45:24','2023-09-19 00:45:24','This is the access page content.','access','','trash','closed','closed','','access-25__trashed','','','2023-09-19 08:11:35','2023-09-19 08:11:35','',0,'http://localhost:10003/access-25/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (87,0,'2023-09-19 00:45:24','2023-09-19 00:45:24','This is the access page content.','access','','trash','closed','closed','','access-26__trashed','','','2023-09-20 08:29:39','2023-09-20 08:29:39','',0,'http://localhost:10003/access-26/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (88,0,'2023-09-19 00:45:25','2023-09-19 00:45:25','This is the access page content.','access','','trash','closed','closed','','access-27__trashed','','','2023-09-20 06:18:19','2023-09-20 06:18:19','',0,'http://localhost:10003/access-27/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (89,0,'2023-09-19 00:45:25','2023-09-19 00:45:25','This is the access page content.','access','','trash','closed','closed','','access-28__trashed','','','2023-09-20 06:18:21','2023-09-20 06:18:21','',0,'http://localhost:10003/access-28/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (90,0,'2023-09-19 00:45:26','2023-09-19 00:45:26','This is the access page content.','access','','trash','closed','closed','','access-29__trashed','','','2023-09-19 08:11:24','2023-09-19 08:11:24','',0,'http://localhost:10003/access-29/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (91,0,'2023-09-19 00:46:09','2023-09-19 00:46:09','This is the access page content.','access','','trash','closed','closed','','access-30__trashed','','','2023-09-20 06:18:22','2023-09-20 06:18:22','',0,'http://localhost:10003/access-30/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (92,0,'2023-09-19 00:46:10','2023-09-19 00:46:10','This is the access page content.','access','','trash','closed','closed','','access-31__trashed','','','2023-09-20 06:18:24','2023-09-20 06:18:24','',0,'http://localhost:10003/access-31/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (93,0,'2023-09-19 00:46:10','2023-09-19 00:46:10','This is the access page content.','access','','trash','closed','closed','','access-32__trashed','','','2023-09-20 06:18:25','2023-09-20 06:18:25','',0,'http://localhost:10003/access-32/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (94,0,'2023-09-19 00:46:12','2023-09-19 00:46:12','This is the access page content.','access','','trash','closed','closed','','access-33__trashed','','','2023-09-20 06:18:27','2023-09-20 06:18:27','',0,'http://localhost:10003/access-33/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (95,0,'2023-09-19 00:48:27','2023-09-19 00:48:27','This is the access page content.','access','','trash','closed','closed','','access-34__trashed','','','2023-09-20 06:18:29','2023-09-20 06:18:29','',0,'http://localhost:10003/access-34/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (96,0,'2023-09-19 00:48:27','2023-09-19 00:48:27','This is the access page content.','access','','trash','closed','closed','','access-35__trashed','','','2023-09-20 06:18:31','2023-09-20 06:18:31','',0,'http://localhost:10003/access-35/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (97,0,'2023-09-19 00:48:27','2023-09-19 00:48:27','This is the access page content.','access','','trash','closed','closed','','access-36__trashed','','','2023-09-20 02:53:09','2023-09-20 02:53:09','',0,'http://localhost:10003/access-36/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (98,0,'2023-09-19 00:48:27','2023-09-19 00:48:27','This is the access page content.','access','','trash','closed','closed','','access-37__trashed','','','2023-09-20 02:53:12','2023-09-20 02:53:12','',0,'http://localhost:10003/access-37/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (99,0,'2023-09-19 00:48:29','2023-09-19 00:48:29','This is the access page content.','access','','trash','closed','closed','','access-38__trashed','','','2023-09-20 02:53:14','2023-09-20 02:53:14','',0,'http://localhost:10003/access-38/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (100,0,'2023-09-19 00:48:29','2023-09-19 00:48:29','This is the access page content.','access','','trash','closed','closed','','access-39__trashed','','','2023-09-20 02:53:18','2023-09-20 02:53:18','',0,'http://localhost:10003/access-39/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (101,0,'2023-09-19 00:48:30','2023-09-19 00:48:30','This is the access page content.','access','','trash','closed','closed','','access-40__trashed','','','2023-09-20 02:53:22','2023-09-20 02:53:22','',0,'http://localhost:10003/access-40/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (102,0,'2023-09-19 00:48:30','2023-09-19 00:48:30','This is the access page content.','access','','trash','closed','closed','','access-41__trashed','','','2023-09-20 06:17:53','2023-09-20 06:17:53','',0,'http://localhost:10003/access-41/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (103,0,'2023-09-19 00:48:30','2023-09-19 00:48:30','This is the access page content.','access','','trash','closed','closed','','access-42__trashed','','','2023-09-20 06:18:34','2023-09-20 06:18:34','',0,'http://localhost:10003/access-42/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (104,0,'2023-09-19 00:48:30','2023-09-19 00:48:30','This is the access page content.','access','','trash','closed','closed','','access-43__trashed','','','2023-09-20 06:18:36','2023-09-20 06:18:36','',0,'http://localhost:10003/access-43/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (105,0,'2023-09-19 00:48:30','2023-09-19 00:48:30','This is the access page content.','access','','trash','closed','closed','','access-44__trashed','','','2023-09-20 06:18:39','2023-09-20 06:18:39','',0,'http://localhost:10003/access-44/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (106,0,'2023-09-19 00:48:31','2023-09-19 00:48:31','This is the access page content.','access','','trash','closed','closed','','access-45__trashed','','','2023-09-20 06:18:45','2023-09-20 06:18:45','',0,'http://localhost:10003/access-45/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (107,0,'2023-09-19 00:48:31','2023-09-19 00:48:31','This is the access page content.','access','','trash','closed','closed','','access-46__trashed','','','2023-09-20 06:18:47','2023-09-20 06:18:47','',0,'http://localhost:10003/access-46/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (108,0,'2023-09-19 00:48:37','2023-09-19 00:48:37','This is the access page content.','access','','trash','closed','closed','','access-47__trashed','','','2023-09-20 06:18:48','2023-09-20 06:18:48','',0,'http://localhost:10003/access-47/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (109,0,'2023-09-19 00:48:38','2023-09-19 00:48:38','This is the access page content.','access','','trash','closed','closed','','access-48__trashed','','','2023-09-20 06:18:50','2023-09-20 06:18:50','',0,'http://localhost:10003/access-48/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (110,0,'2023-09-19 00:48:38','2023-09-19 00:48:38','This is the access page content.','access','','trash','closed','closed','','access-49__trashed','','','2023-09-20 06:18:52','2023-09-20 06:18:52','',0,'http://localhost:10003/access-49/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (111,0,'2023-09-19 00:48:39','2023-09-19 00:48:39','This is the access page content.','access','','trash','closed','closed','','access-50__trashed','','','2023-09-20 06:18:53','2023-09-20 06:18:53','',0,'http://localhost:10003/access-50/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (112,0,'2023-09-19 00:48:39','2023-09-19 00:48:39','This is the access page content.','access','','trash','closed','closed','','access-51__trashed','','','2023-09-20 06:18:55','2023-09-20 06:18:55','',0,'http://localhost:10003/access-51/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (113,0,'2023-09-19 00:48:40','2023-09-19 00:48:40','This is the access page content.','access','','trash','closed','closed','','access-52__trashed','','','2023-09-20 06:18:56','2023-09-20 06:18:56','',0,'http://localhost:10003/access-52/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (114,0,'2023-09-19 00:48:41','2023-09-19 00:48:41','This is the access page content.','access','','trash','closed','closed','','access-53__trashed','','','2023-09-20 06:18:57','2023-09-20 06:18:57','',0,'http://localhost:10003/access-53/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (115,0,'2023-09-19 00:48:42','2023-09-19 00:48:42','This is the access page content.','access','','trash','closed','closed','','access-54__trashed','','','2023-09-20 06:18:59','2023-09-20 06:18:59','',0,'http://localhost:10003/access-54/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (116,0,'2023-09-19 00:48:42','2023-09-19 00:48:42','This is the access page content.','access','','trash','closed','closed','','access-55__trashed','','','2023-09-20 06:19:00','2023-09-20 06:19:00','',0,'http://localhost:10003/access-55/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (117,0,'2023-09-19 00:55:32','2023-09-19 00:55:32','This is the access page content.','access','','trash','closed','closed','','access-56__trashed','','','2023-09-20 06:19:01','2023-09-20 06:19:01','',0,'http://localhost:10003/access-56/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (118,0,'2023-09-19 00:55:32','2023-09-19 00:55:32','This is the access page content.','access','','trash','closed','closed','','access-57__trashed','','','2023-09-20 06:19:02','2023-09-20 06:19:02','',0,'http://localhost:10003/access-57/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (119,0,'2023-09-19 01:01:17','2023-09-19 01:01:17','This is the access page content.','access','','trash','closed','closed','','access-58__trashed','','','2023-09-20 06:19:07','2023-09-20 06:19:07','',0,'http://localhost:10003/access-58/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (120,0,'2023-09-19 01:01:17','2023-09-19 01:01:17','This is the access page content.','access','','trash','closed','closed','','access-59__trashed','','','2023-09-20 06:19:12','2023-09-20 06:19:12','',0,'http://localhost:10003/access-59/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (121,0,'2023-09-19 01:01:21','2023-09-19 01:01:21','This is the access page content.','access','','trash','closed','closed','','access-60__trashed','','','2023-09-20 06:19:14','2023-09-20 06:19:14','',0,'http://localhost:10003/access-60/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (122,0,'2023-09-19 01:01:22','2023-09-19 01:01:22','This is the access page content.','access','','draft','closed','closed','','access-61','','','2023-09-20 08:35:06','2023-09-20 08:35:06','',0,'http://localhost:10003/access-61/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (123,0,'2023-09-19 01:01:22','2023-09-19 01:01:22','This is the access page content.','access','','draft','closed','closed','','access-62','','','2023-09-20 08:35:05','2023-09-20 08:35:05','',0,'http://localhost:10003/access-62/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (124,0,'2023-09-19 01:01:22','2023-09-19 01:01:22','This is the access page content.','access','','draft','closed','closed','','access-63','','','2023-09-20 08:35:04','2023-09-20 08:35:04','',0,'http://localhost:10003/access-63/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (125,0,'2023-09-19 01:01:23','2023-09-19 01:01:23','This is the access page content.','access','','draft','closed','closed','','access-64','','','2023-09-20 08:35:03','2023-09-20 08:35:03','',0,'http://localhost:10003/access-64/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (126,0,'2023-09-19 01:01:23','2023-09-19 01:01:23','This is the access page content.','access','','trash','closed','closed','','access-65__trashed','','','2023-09-20 08:29:45','2023-09-20 08:29:45','',0,'http://localhost:10003/access-65/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (127,0,'2023-09-19 01:01:24','2023-09-19 01:01:24','This is the access page content.','access','','draft','closed','closed','','access-66','','','2023-09-20 08:35:00','2023-09-20 08:35:00','',0,'http://localhost:10003/access-66/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (128,0,'2023-09-19 01:01:24','2023-09-19 01:01:24','This is the access page content.','access','','draft','closed','closed','','access-67','','','2023-09-20 08:34:59','2023-09-20 08:34:59','',0,'http://localhost:10003/access-67/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (129,0,'2023-09-19 01:01:24','2023-09-19 01:01:24','This is the access page content.','access','','draft','closed','closed','','access-68','','','2023-09-20 08:34:57','2023-09-20 08:34:57','',0,'http://localhost:10003/access-68/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (130,0,'2023-09-19 01:01:24','2023-09-19 01:01:24','This is the access page content.','access','','trash','closed','closed','','access-69__trashed','','','2023-09-20 08:29:52','2023-09-20 08:29:52','',0,'http://localhost:10003/access-69/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (131,0,'2023-09-19 01:01:24','2023-09-19 01:01:24','This is the access page content.','access','','trash','closed','closed','','access-70__trashed','','','2023-09-20 08:29:53','2023-09-20 08:29:53','',0,'http://localhost:10003/access-70/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (132,0,'2023-09-19 01:01:25','2023-09-19 01:01:25','This is the access page content.','access','','trash','closed','closed','','access-71__trashed','','','2023-09-20 08:29:55','2023-09-20 08:29:55','',0,'http://localhost:10003/access-71/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (133,0,'2023-09-19 01:01:25','2023-09-19 01:01:25','This is the access page content.','access','','draft','closed','closed','','access-72','','','2023-09-20 08:35:10','2023-09-20 08:35:10','',0,'http://localhost:10003/access-72/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (134,0,'2023-09-19 01:01:25','2023-09-19 01:01:25','This is the access page content.','access','','draft','closed','closed','','access-73','','','2023-09-20 08:35:09','2023-09-20 08:35:09','',0,'http://localhost:10003/access-73/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (135,0,'2023-09-19 01:01:25','2023-09-19 01:01:25','This is the access page content.','access','','publish','closed','closed','','access-74','','','2023-09-19 01:01:25','2023-09-19 01:01:25','',0,'http://localhost:10003/access-74/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (136,0,'2023-09-19 01:01:26','2023-09-19 01:01:26','This is the access page content.','access','','publish','closed','closed','','access-75','','','2023-09-19 01:01:26','2023-09-19 01:01:26','',0,'http://localhost:10003/access-75/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (137,0,'2023-09-19 01:01:26','2023-09-19 01:01:26','This is the access page content.','access','','publish','closed','closed','','access-76','','','2023-09-19 01:01:26','2023-09-19 01:01:26','',0,'http://localhost:10003/access-76/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (138,0,'2023-09-19 01:01:51','2023-09-19 01:01:51','This is the access page content.','access','','publish','closed','closed','','access-77','','','2023-09-19 01:01:51','2023-09-19 01:01:51','',0,'http://localhost:10003/access-77/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (139,0,'2023-09-19 01:01:51','2023-09-19 01:01:51','This is the access page content.','access','','publish','closed','closed','','access-78','','','2023-09-19 01:01:51','2023-09-19 01:01:51','',0,'http://localhost:10003/access-78/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (140,0,'2023-09-19 01:01:52','2023-09-19 01:01:52','This is the access page content.','access','','publish','closed','closed','','access-79','','','2023-09-19 01:01:52','2023-09-19 01:01:52','',0,'http://localhost:10003/access-79/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (141,0,'2023-09-19 01:01:54','2023-09-19 01:01:54','This is the access page content.','access','','publish','closed','closed','','access-80','','','2023-09-19 01:01:54','2023-09-19 01:01:54','',0,'http://localhost:10003/access-80/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (142,0,'2023-09-19 01:02:33','2023-09-19 01:02:33','This is the access page content.','access','','publish','closed','closed','','access-81','','','2023-09-19 01:02:33','2023-09-19 01:02:33','',0,'http://localhost:10003/access-81/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (143,0,'2023-09-19 01:02:33','2023-09-19 01:02:33','This is the access page content.','access','','publish','closed','closed','','access-82','','','2023-09-19 01:02:33','2023-09-19 01:02:33','',0,'http://localhost:10003/access-82/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (144,0,'2023-09-19 01:02:34','2023-09-19 01:02:34','This is the access page content.','access','','publish','closed','closed','','access-83','','','2023-09-19 01:02:34','2023-09-19 01:02:34','',0,'http://localhost:10003/access-83/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (145,0,'2023-09-19 01:02:35','2023-09-19 01:02:35','This is the access page content.','access','','publish','closed','closed','','access-84','','','2023-09-19 01:02:35','2023-09-19 01:02:35','',0,'http://localhost:10003/access-84/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (146,0,'2023-09-19 01:02:36','2023-09-19 01:02:36','This is the access page content.','access','','publish','closed','closed','','access-85','','','2023-09-19 01:02:36','2023-09-19 01:02:36','',0,'http://localhost:10003/access-85/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (147,0,'2023-09-19 01:02:36','2023-09-19 01:02:36','This is the access page content.','access','','publish','closed','closed','','access-86','','','2023-09-19 01:02:36','2023-09-19 01:02:36','',0,'http://localhost:10003/access-86/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (148,0,'2023-09-19 01:02:36','2023-09-19 01:02:36','This is the access page content.','access','','publish','closed','closed','','access-87','','','2023-09-19 01:02:36','2023-09-19 01:02:36','',0,'http://localhost:10003/access-87/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (149,0,'2023-09-19 01:02:37','2023-09-19 01:02:37','This is the access page content.','access','','publish','closed','closed','','access-88','','','2023-09-19 01:02:37','2023-09-19 01:02:37','',0,'http://localhost:10003/access-88/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (150,0,'2023-09-19 01:02:38','2023-09-19 01:02:38','This is the access page content.','access','','publish','closed','closed','','access-89','','','2023-09-19 01:02:38','2023-09-19 01:02:38','',0,'http://localhost:10003/access-89/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (151,1,'2023-09-19 06:59:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:24','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=151',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (152,1,'2023-09-19 06:59:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:24','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=152',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (153,1,'2023-09-19 06:59:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:24','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=153',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (154,1,'2023-09-19 06:59:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:24','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=154',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (155,1,'2023-09-19 06:59:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:24','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=155',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (156,1,'2023-09-19 06:59:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:24','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=156',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (157,1,'2023-09-19 06:59:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:24','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=157',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (158,1,'2023-09-19 06:59:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:24','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=158',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (159,1,'2023-09-19 06:59:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:24','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=159',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (160,1,'2023-09-19 06:59:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:24','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=160',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (161,1,'2023-09-19 06:59:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:24','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=161',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (162,1,'2023-09-19 06:59:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:24','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=162',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (163,1,'2023-09-19 06:59:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:24','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=163',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (164,1,'2023-09-19 06:59:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:24','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=164',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (165,1,'2023-09-19 06:59:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:24','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=165',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (166,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=166',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (167,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=167',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (168,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=168',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (169,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=169',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (170,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=170',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (171,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=171',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (172,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=172',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (173,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=173',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (174,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=174',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (175,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=175',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (176,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=176',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (177,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=177',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (178,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=178',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (179,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=179',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (180,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=180',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (181,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=181',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (182,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=182',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (183,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=183',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (184,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=184',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (185,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=185',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (186,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=186',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (187,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=187',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (188,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=188',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (189,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=189',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (190,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=190',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (191,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=191',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (192,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=192',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (193,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=193',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (194,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=194',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (195,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=195',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (196,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=196',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (197,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=197',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (198,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=198',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (199,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=199',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (200,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=200',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (201,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=201',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (202,1,'2023-09-19 06:59:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:25','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=202',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (203,1,'2023-09-19 06:59:43','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-19 06:59:43','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=203',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (209,1,'2023-09-19 07:59:41','2023-09-19 07:59:41','','Access','','publish','closed','closed','','access','','','2023-09-19 08:28:45','2023-09-19 08:28:45','',62,'http://localhost:10003/?page_id=209',0,'page','',0);
INSERT INTO `wp_posts` VALUES (210,1,'2023-09-19 07:59:41','2023-09-19 07:59:41','','Access','','inherit','closed','closed','','209-revision-v1','','','2023-09-19 07:59:41','2023-09-19 07:59:41','',209,'http://localhost:10003/?p=210',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (211,1,'2023-09-19 08:10:49','2023-09-19 08:10:49','This is the access page content.','access','','inherit','closed','closed','','80-revision-v1','','','2023-09-19 08:10:49','2023-09-19 08:10:49','',80,'http://localhost:10003/?p=211',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (212,1,'2023-09-19 08:10:51','2023-09-19 08:10:51','This is the access page content.','access','','inherit','closed','closed','','70-revision-v1','','','2023-09-19 08:10:51','2023-09-19 08:10:51','',70,'http://localhost:10003/?p=212',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (213,1,'2023-09-19 08:10:52','2023-09-19 08:10:52','This is the access page content.','access','','inherit','closed','closed','','71-revision-v1','','','2023-09-19 08:10:52','2023-09-19 08:10:52','',71,'http://localhost:10003/?p=213',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (214,1,'2023-09-19 08:10:54','2023-09-19 08:10:54','This is the access page content.','access','','inherit','closed','closed','','72-revision-v1','','','2023-09-19 08:10:54','2023-09-19 08:10:54','',72,'http://localhost:10003/?p=214',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (215,1,'2023-09-19 08:11:11','2023-09-19 08:11:11','This is the access page content.','access','','inherit','closed','closed','','84-revision-v1','','','2023-09-19 08:11:11','2023-09-19 08:11:11','',84,'http://localhost:10003/?p=215',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (216,1,'2023-09-19 08:11:13','2023-09-19 08:11:13','This is the access page content.','access','','inherit','closed','closed','','69-revision-v1','','','2023-09-19 08:11:13','2023-09-19 08:11:13','',69,'http://localhost:10003/?p=216',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (217,1,'2023-09-19 08:11:14','2023-09-19 08:11:14','This is the access page content.','access','','inherit','closed','closed','','74-revision-v1','','','2023-09-19 08:11:14','2023-09-19 08:11:14','',74,'http://localhost:10003/?p=217',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (218,1,'2023-09-19 08:11:16','2023-09-19 08:11:16','This is the access page content.','access','','inherit','closed','closed','','76-revision-v1','','','2023-09-19 08:11:16','2023-09-19 08:11:16','',76,'http://localhost:10003/?p=218',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (219,1,'2023-09-19 08:11:18','2023-09-19 08:11:18','This is the access page content.','access','','inherit','closed','closed','','78-revision-v1','','','2023-09-19 08:11:18','2023-09-19 08:11:18','',78,'http://localhost:10003/?p=219',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (220,1,'2023-09-19 08:11:20','2023-09-19 08:11:20','This is the access page content.','access','','inherit','closed','closed','','75-revision-v1','','','2023-09-19 08:11:20','2023-09-19 08:11:20','',75,'http://localhost:10003/?p=220',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (221,1,'2023-09-19 08:11:22','2023-09-19 08:11:22','This is the access page content.','access','','inherit','closed','closed','','79-revision-v1','','','2023-09-19 08:11:22','2023-09-19 08:11:22','',79,'http://localhost:10003/?p=221',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (222,1,'2023-09-19 08:11:24','2023-09-19 08:11:24','This is the access page content.','access','','inherit','closed','closed','','90-revision-v1','','','2023-09-19 08:11:24','2023-09-19 08:11:24','',90,'http://localhost:10003/?p=222',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (223,1,'2023-09-19 08:11:26','2023-09-19 08:11:26','This is the access page content.','access','','inherit','closed','closed','','81-revision-v1','','','2023-09-19 08:11:26','2023-09-19 08:11:26','',81,'http://localhost:10003/?p=223',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (224,1,'2023-09-19 08:11:29','2023-09-19 08:11:29','This is the access page content.','access','','inherit','closed','closed','','83-revision-v1','','','2023-09-19 08:11:29','2023-09-19 08:11:29','',83,'http://localhost:10003/?p=224',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (225,1,'2023-09-19 08:11:32','2023-09-19 08:11:32','This is the access page content.','access','','inherit','closed','closed','','85-revision-v1','','','2023-09-19 08:11:32','2023-09-19 08:11:32','',85,'http://localhost:10003/?p=225',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (226,1,'2023-09-19 08:11:34','2023-09-19 08:11:34','This is the access page content.','access','','inherit','closed','closed','','82-revision-v1','','','2023-09-19 08:11:34','2023-09-19 08:11:34','',82,'http://localhost:10003/?p=226',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (227,1,'2023-09-19 08:11:35','2023-09-19 08:11:35','This is the access page content.','access','','inherit','closed','closed','','86-revision-v1','','','2023-09-19 08:11:35','2023-09-19 08:11:35','',86,'http://localhost:10003/?p=227',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (230,1,'2023-09-20 02:42:40','2023-09-20 02:42:40','<!-- wp:shortcode -->\n[contact-form-7 id=\"c58d80b\" title=\"logicaland\"]\n<!-- /wp:shortcode -->','contact','','publish','closed','closed','','contact','','','2023-09-24 14:49:08','2023-09-24 14:49:08','',0,'http://localhost:10003/?page_id=230',0,'page','',0);
INSERT INTO `wp_posts` VALUES (231,1,'2023-09-20 02:42:40','2023-09-20 02:42:40','','contact','','inherit','closed','closed','','230-revision-v1','','','2023-09-20 02:42:40','2023-09-20 02:42:40','',230,'http://localhost:10003/?p=231',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (233,1,'2023-09-20 02:53:09','2023-09-20 02:53:09','This is the access page content.','access','','inherit','closed','closed','','97-revision-v1','','','2023-09-20 02:53:09','2023-09-20 02:53:09','',97,'http://localhost:10003/?p=233',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (234,1,'2023-09-20 02:53:12','2023-09-20 02:53:12','This is the access page content.','access','','inherit','closed','closed','','98-revision-v1','','','2023-09-20 02:53:12','2023-09-20 02:53:12','',98,'http://localhost:10003/?p=234',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (235,1,'2023-09-20 02:53:14','2023-09-20 02:53:14','This is the access page content.','access','','inherit','closed','closed','','99-revision-v1','','','2023-09-20 02:53:14','2023-09-20 02:53:14','',99,'http://localhost:10003/?p=235',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (236,1,'2023-09-20 02:53:18','2023-09-20 02:53:18','This is the access page content.','access','','inherit','closed','closed','','100-revision-v1','','','2023-09-20 02:53:18','2023-09-20 02:53:18','',100,'http://localhost:10003/?p=236',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (237,1,'2023-09-20 02:53:22','2023-09-20 02:53:22','This is the access page content.','access','','inherit','closed','closed','','101-revision-v1','','','2023-09-20 02:53:22','2023-09-20 02:53:22','',101,'http://localhost:10003/?p=237',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (239,1,'2023-09-20 02:54:21','2023-09-20 02:54:21','','contact','','publish','closed','closed','','contact-2','','','2023-09-20 02:54:21','2023-09-20 02:54:21','',0,'http://localhost:10003/?page_id=239',0,'page','',0);
INSERT INTO `wp_posts` VALUES (240,1,'2023-09-20 02:54:21','2023-09-20 02:54:21','','contact','','inherit','closed','closed','','239-revision-v1','','','2023-09-20 02:54:21','2023-09-20 02:54:21','',239,'http://localhost:10003/?p=240',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (241,1,'2023-09-20 06:17:53','2023-09-20 06:17:53','This is the access page content.','access','','inherit','closed','closed','','102-revision-v1','','','2023-09-20 06:17:53','2023-09-20 06:17:53','',102,'http://localhost:10003/?p=241',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (242,1,'2023-09-20 06:17:55','2023-09-20 06:17:55','This is the access page content.','access','','inherit','closed','closed','','73-revision-v1','','','2023-09-20 06:17:55','2023-09-20 06:17:55','',73,'http://localhost:10003/?p=242',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (243,1,'2023-09-20 06:17:58','2023-09-20 06:17:58','This is the access page content.','access','','inherit','closed','closed','','68-revision-v1','','','2023-09-20 06:17:58','2023-09-20 06:17:58','',68,'http://localhost:10003/?p=243',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (244,1,'2023-09-20 06:18:00','2023-09-20 06:18:00','This is the access page content.','access','','inherit','closed','closed','','67-revision-v1','','','2023-09-20 06:18:00','2023-09-20 06:18:00','',67,'http://localhost:10003/?p=244',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (245,1,'2023-09-20 06:18:02','2023-09-20 06:18:02','This is the access page content.','access','','inherit','closed','closed','','66-revision-v1','','','2023-09-20 06:18:02','2023-09-20 06:18:02','',66,'http://localhost:10003/?p=245',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (246,1,'2023-09-20 06:18:04','2023-09-20 06:18:04','This is the access page content.','access','','inherit','closed','closed','','65-revision-v1','','','2023-09-20 06:18:04','2023-09-20 06:18:04','',65,'http://localhost:10003/?p=246',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (247,1,'2023-09-20 06:18:06','2023-09-20 06:18:06','This is the access page content.','access','','inherit','closed','closed','','64-revision-v1','','','2023-09-20 06:18:06','2023-09-20 06:18:06','',64,'http://localhost:10003/?p=247',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (248,1,'2023-09-20 06:18:14','2023-09-20 06:18:14','This is the access page content.','access','','inherit','closed','closed','','77-revision-v1','','','2023-09-20 06:18:14','2023-09-20 06:18:14','',77,'http://localhost:10003/?p=248',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (249,1,'2023-09-20 06:18:19','2023-09-20 06:18:19','This is the access page content.','access','','inherit','closed','closed','','88-revision-v1','','','2023-09-20 06:18:19','2023-09-20 06:18:19','',88,'http://localhost:10003/?p=249',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (250,1,'2023-09-20 06:18:21','2023-09-20 06:18:21','This is the access page content.','access','','inherit','closed','closed','','89-revision-v1','','','2023-09-20 06:18:21','2023-09-20 06:18:21','',89,'http://localhost:10003/?p=250',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (251,1,'2023-09-20 06:18:22','2023-09-20 06:18:22','This is the access page content.','access','','inherit','closed','closed','','91-revision-v1','','','2023-09-20 06:18:22','2023-09-20 06:18:22','',91,'http://localhost:10003/?p=251',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (252,1,'2023-09-20 06:18:24','2023-09-20 06:18:24','This is the access page content.','access','','inherit','closed','closed','','92-revision-v1','','','2023-09-20 06:18:24','2023-09-20 06:18:24','',92,'http://localhost:10003/?p=252',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (253,1,'2023-09-20 06:18:25','2023-09-20 06:18:25','This is the access page content.','access','','inherit','closed','closed','','93-revision-v1','','','2023-09-20 06:18:25','2023-09-20 06:18:25','',93,'http://localhost:10003/?p=253',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (254,1,'2023-09-20 06:18:27','2023-09-20 06:18:27','This is the access page content.','access','','inherit','closed','closed','','94-revision-v1','','','2023-09-20 06:18:27','2023-09-20 06:18:27','',94,'http://localhost:10003/?p=254',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (255,1,'2023-09-20 06:18:29','2023-09-20 06:18:29','This is the access page content.','access','','inherit','closed','closed','','95-revision-v1','','','2023-09-20 06:18:29','2023-09-20 06:18:29','',95,'http://localhost:10003/?p=255',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (256,1,'2023-09-20 06:18:31','2023-09-20 06:18:31','This is the access page content.','access','','inherit','closed','closed','','96-revision-v1','','','2023-09-20 06:18:31','2023-09-20 06:18:31','',96,'http://localhost:10003/?p=256',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (257,1,'2023-09-20 06:18:34','2023-09-20 06:18:34','This is the access page content.','access','','inherit','closed','closed','','103-revision-v1','','','2023-09-20 06:18:34','2023-09-20 06:18:34','',103,'http://localhost:10003/?p=257',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (258,1,'2023-09-20 06:18:36','2023-09-20 06:18:36','This is the access page content.','access','','inherit','closed','closed','','104-revision-v1','','','2023-09-20 06:18:36','2023-09-20 06:18:36','',104,'http://localhost:10003/?p=258',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (259,1,'2023-09-20 06:18:39','2023-09-20 06:18:39','This is the access page content.','access','','inherit','closed','closed','','105-revision-v1','','','2023-09-20 06:18:39','2023-09-20 06:18:39','',105,'http://localhost:10003/?p=259',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (260,1,'2023-09-20 06:18:45','2023-09-20 06:18:45','This is the access page content.','access','','inherit','closed','closed','','106-revision-v1','','','2023-09-20 06:18:45','2023-09-20 06:18:45','',106,'http://localhost:10003/?p=260',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (261,1,'2023-09-20 06:18:47','2023-09-20 06:18:47','This is the access page content.','access','','inherit','closed','closed','','107-revision-v1','','','2023-09-20 06:18:47','2023-09-20 06:18:47','',107,'http://localhost:10003/?p=261',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (262,1,'2023-09-20 06:18:48','2023-09-20 06:18:48','This is the access page content.','access','','inherit','closed','closed','','108-revision-v1','','','2023-09-20 06:18:48','2023-09-20 06:18:48','',108,'http://localhost:10003/?p=262',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (263,1,'2023-09-20 06:18:50','2023-09-20 06:18:50','This is the access page content.','access','','inherit','closed','closed','','109-revision-v1','','','2023-09-20 06:18:50','2023-09-20 06:18:50','',109,'http://localhost:10003/?p=263',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (264,1,'2023-09-20 06:18:52','2023-09-20 06:18:52','This is the access page content.','access','','inherit','closed','closed','','110-revision-v1','','','2023-09-20 06:18:52','2023-09-20 06:18:52','',110,'http://localhost:10003/?p=264',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (265,1,'2023-09-20 06:18:53','2023-09-20 06:18:53','This is the access page content.','access','','inherit','closed','closed','','111-revision-v1','','','2023-09-20 06:18:53','2023-09-20 06:18:53','',111,'http://localhost:10003/?p=265',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (266,1,'2023-09-20 06:18:55','2023-09-20 06:18:55','This is the access page content.','access','','inherit','closed','closed','','112-revision-v1','','','2023-09-20 06:18:55','2023-09-20 06:18:55','',112,'http://localhost:10003/?p=266',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (267,1,'2023-09-20 06:18:56','2023-09-20 06:18:56','This is the access page content.','access','','inherit','closed','closed','','113-revision-v1','','','2023-09-20 06:18:56','2023-09-20 06:18:56','',113,'http://localhost:10003/?p=267',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (268,1,'2023-09-20 06:18:57','2023-09-20 06:18:57','This is the access page content.','access','','inherit','closed','closed','','114-revision-v1','','','2023-09-20 06:18:57','2023-09-20 06:18:57','',114,'http://localhost:10003/?p=268',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (269,1,'2023-09-20 06:18:59','2023-09-20 06:18:59','This is the access page content.','access','','inherit','closed','closed','','115-revision-v1','','','2023-09-20 06:18:59','2023-09-20 06:18:59','',115,'http://localhost:10003/?p=269',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (270,1,'2023-09-20 06:19:00','2023-09-20 06:19:00','This is the access page content.','access','','inherit','closed','closed','','116-revision-v1','','','2023-09-20 06:19:00','2023-09-20 06:19:00','',116,'http://localhost:10003/?p=270',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (271,1,'2023-09-20 06:19:01','2023-09-20 06:19:01','This is the access page content.','access','','inherit','closed','closed','','117-revision-v1','','','2023-09-20 06:19:01','2023-09-20 06:19:01','',117,'http://localhost:10003/?p=271',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (272,1,'2023-09-20 06:19:02','2023-09-20 06:19:02','This is the access page content.','access','','inherit','closed','closed','','118-revision-v1','','','2023-09-20 06:19:02','2023-09-20 06:19:02','',118,'http://localhost:10003/?p=272',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (273,1,'2023-09-20 06:19:07','2023-09-20 06:19:07','This is the access page content.','access','','inherit','closed','closed','','119-revision-v1','','','2023-09-20 06:19:07','2023-09-20 06:19:07','',119,'http://localhost:10003/?p=273',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (274,1,'2023-09-20 06:19:12','2023-09-20 06:19:12','This is the access page content.','access','','inherit','closed','closed','','120-revision-v1','','','2023-09-20 06:19:12','2023-09-20 06:19:12','',120,'http://localhost:10003/?p=274',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (275,1,'2023-09-20 06:19:14','2023-09-20 06:19:14','This is the access page content.','access','','inherit','closed','closed','','121-revision-v1','','','2023-09-20 06:19:14','2023-09-20 06:19:14','',121,'http://localhost:10003/?p=275',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (276,1,'2023-09-20 06:19:37','2023-09-20 06:19:37','This is the access page content.','access','','inherit','closed','closed','','123-revision-v1','','','2023-09-20 06:19:37','2023-09-20 06:19:37','',123,'http://localhost:10003/?p=276',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (279,1,'2023-09-20 07:55:52','2023-09-20 07:55:52','','Blog','','draft','closed','closed','','blog','','','2023-09-20 08:34:55','2023-09-20 08:34:55','',0,'http://localhost:10003/?page_id=279',0,'page','',0);
INSERT INTO `wp_posts` VALUES (280,1,'2023-09-20 07:55:52','2023-09-20 07:55:52','','Blog','','inherit','closed','closed','','279-revision-v1','','','2023-09-20 07:55:52','2023-09-20 07:55:52','',279,'http://localhost:10003/?p=280',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (281,1,'2023-09-20 07:57:24','2023-09-20 07:57:24','','Blog','','publish','closed','closed','','blog','','','2023-09-20 07:57:24','2023-09-20 07:57:24','',279,'http://localhost:10003/?page_id=281',0,'page','',0);
INSERT INTO `wp_posts` VALUES (282,1,'2023-09-20 07:57:24','2023-09-20 07:57:24','','Blog','','inherit','closed','closed','','281-revision-v1','','','2023-09-20 07:57:24','2023-09-20 07:57:24','',281,'http://localhost:10003/?p=282',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (284,1,'2023-09-20 08:26:42','2023-09-20 08:26:42','','Blog','','publish','closed','closed','','blog','','','2023-09-20 08:26:42','2023-09-20 08:26:42','',0,'http://localhost:10003/?page_id=284',0,'page','',0);
INSERT INTO `wp_posts` VALUES (285,1,'2023-09-20 08:26:42','2023-09-20 08:26:42','','Blog','','inherit','closed','closed','','284-revision-v1','','','2023-09-20 08:26:42','2023-09-20 08:26:42','',284,'http://localhost:10003/?p=285',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (286,1,'2023-09-20 08:28:33','2023-09-20 08:28:33','','Blog','','publish','closed','closed','','blog-2','','','2023-09-20 08:28:49','2023-09-20 08:28:49','',284,'http://localhost:10003/?page_id=286',0,'page','',0);
INSERT INTO `wp_posts` VALUES (287,1,'2023-09-20 08:28:33','2023-09-20 08:28:33','','Blog','','inherit','closed','closed','','286-revision-v1','','','2023-09-20 08:28:33','2023-09-20 08:28:33','',286,'http://localhost:10003/?p=287',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (289,1,'2023-09-20 08:29:35','2023-09-20 08:29:35','This is the access page content.','access','','inherit','closed','closed','','62-revision-v1','','','2023-09-20 08:29:35','2023-09-20 08:29:35','',62,'http://localhost:10003/?p=289',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (290,1,'2023-09-20 08:29:37','2023-09-20 08:29:37','This is the access page content.','access','','inherit','closed','closed','','63-revision-v1','','','2023-09-20 08:29:37','2023-09-20 08:29:37','',63,'http://localhost:10003/?p=290',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (291,1,'2023-09-20 08:29:39','2023-09-20 08:29:39','This is the access page content.','access','','inherit','closed','closed','','87-revision-v1','','','2023-09-20 08:29:39','2023-09-20 08:29:39','',87,'http://localhost:10003/?p=291',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (292,1,'2023-09-20 08:29:40','2023-09-20 08:29:40','This is the access page content.','access','','inherit','closed','closed','','122-revision-v1','','','2023-09-20 08:29:40','2023-09-20 08:29:40','',122,'http://localhost:10003/?p=292',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (293,1,'2023-09-20 08:29:42','2023-09-20 08:29:42','This is the access page content.','access','','inherit','closed','closed','','124-revision-v1','','','2023-09-20 08:29:42','2023-09-20 08:29:42','',124,'http://localhost:10003/?p=293',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (294,1,'2023-09-20 08:29:44','2023-09-20 08:29:44','This is the access page content.','access','','inherit','closed','closed','','125-revision-v1','','','2023-09-20 08:29:44','2023-09-20 08:29:44','',125,'http://localhost:10003/?p=294',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (295,1,'2023-09-20 08:29:45','2023-09-20 08:29:45','This is the access page content.','access','','inherit','closed','closed','','126-revision-v1','','','2023-09-20 08:29:45','2023-09-20 08:29:45','',126,'http://localhost:10003/?p=295',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (296,1,'2023-09-20 08:29:47','2023-09-20 08:29:47','This is the access page content.','access','','inherit','closed','closed','','127-revision-v1','','','2023-09-20 08:29:47','2023-09-20 08:29:47','',127,'http://localhost:10003/?p=296',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (297,1,'2023-09-20 08:29:48','2023-09-20 08:29:48','This is the access page content.','access','','inherit','closed','closed','','128-revision-v1','','','2023-09-20 08:29:48','2023-09-20 08:29:48','',128,'http://localhost:10003/?p=297',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (298,1,'2023-09-20 08:29:50','2023-09-20 08:29:50','This is the access page content.','access','','inherit','closed','closed','','129-revision-v1','','','2023-09-20 08:29:50','2023-09-20 08:29:50','',129,'http://localhost:10003/?p=298',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (299,1,'2023-09-20 08:29:52','2023-09-20 08:29:52','This is the access page content.','access','','inherit','closed','closed','','130-revision-v1','','','2023-09-20 08:29:52','2023-09-20 08:29:52','',130,'http://localhost:10003/?p=299',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (300,1,'2023-09-20 08:29:53','2023-09-20 08:29:53','This is the access page content.','access','','inherit','closed','closed','','131-revision-v1','','','2023-09-20 08:29:53','2023-09-20 08:29:53','',131,'http://localhost:10003/?p=300',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (301,1,'2023-09-20 08:29:55','2023-09-20 08:29:55','This is the access page content.','access','','inherit','closed','closed','','132-revision-v1','','','2023-09-20 08:29:55','2023-09-20 08:29:55','',132,'http://localhost:10003/?p=301',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (302,1,'2023-09-20 08:29:57','2023-09-20 08:29:57','This is the access page content.','access','','inherit','closed','closed','','133-revision-v1','','','2023-09-20 08:29:57','2023-09-20 08:29:57','',133,'http://localhost:10003/?p=302',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (303,1,'2023-09-20 08:29:59','2023-09-20 08:29:59','This is the access page content.','access','','inherit','closed','closed','','134-revision-v1','','','2023-09-20 08:29:59','2023-09-20 08:29:59','',134,'http://localhost:10003/?p=303',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (304,1,'2023-09-20 08:36:48','2023-09-20 08:36:48','','Access','','publish','closed','closed','','access','','','2023-09-20 08:36:48','2023-09-20 08:36:48','',143,'http://localhost:10003/?page_id=304',0,'page','',0);
INSERT INTO `wp_posts` VALUES (305,1,'2023-09-20 08:36:48','2023-09-20 08:36:48','','Access','','inherit','closed','closed','','304-revision-v1','','','2023-09-20 08:36:48','2023-09-20 08:36:48','',304,'http://localhost:10003/?p=305',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (306,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=306',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (307,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=307',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (308,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=308',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (309,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=309',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (310,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=310',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (311,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=311',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (312,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=312',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (313,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=313',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (314,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=314',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (315,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=315',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (316,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=316',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (317,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',143,'http://localhost:10003/?p=317',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (318,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=318',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (319,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=319',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (320,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=320',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (321,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=321',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (322,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=322',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (323,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=323',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (324,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=324',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (325,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=325',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (326,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',284,'http://localhost:10003/?p=326',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (327,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=327',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (328,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=328',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (329,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',62,'http://localhost:10003/?p=329',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (330,1,'2023-09-20 08:39:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-09-20 08:39:39','0000-00-00 00:00:00','',279,'http://localhost:10003/?p=330',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (331,1,'2023-09-20 08:41:11','2023-09-20 08:41:11','','Blog','','publish','closed','closed','','blog-2','','','2023-09-20 08:41:11','2023-09-20 08:41:11','',0,'http://localhost:10003/?page_id=331',0,'page','',0);
INSERT INTO `wp_posts` VALUES (332,1,'2023-09-20 08:41:11','2023-09-20 08:41:11','','Blog','','inherit','closed','closed','','331-revision-v1','','','2023-09-20 08:41:11','2023-09-20 08:41:11','',331,'http://localhost:10003/?p=332',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (335,1,'2023-09-23 14:00:05','2023-09-23 14:00:05','<label> Your name\r\n    [text* your-name autocomplete:name] </label>\r\n\r\n<label> Your email\r\n    [email* your-email autocomplete:email] </label>\r\n\r\n<label> Subject\r\n    [text* your-subject] </label>\r\n\r\n<label> Your message (optional)\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Submit\"]\n1\n[your-subject]\n[Sanjay-rawal] <rawallogicalland@gmail.com>\nrawallogicalland@gmail.com\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <sanjayrawal8585@gmail.com>\n[your-email]\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    <title>Contact Form 7 Email Add on</title>\r\n</head>\r\n<body style=\"margin: 0; padding: 0;\">\r\n    <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"background: #f2f2f2;\" background-color=\"#f2f2f2\">\r\n        <tbody>\r\n            <tr>\r\n                <td align=\"center\" style=\"padding: 30px 0 30px 0;\">\r\n                    <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"background: #ffffff; max-width: 600px; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; overflow: hidden; font-family: Verdana, Geneva, sans-serif;\" background-color=\"#ffffff\">\r\n                        <tbody>\r\n                            <tr>\r\n                                <td>\r\n                                    <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                        <tr>\r\n                                            <td align=\"center\" height=\"520\" bgcolor=\"#8d89c9\" style=\"background-image: url(http://localhost:10003/wp-content/plugins/cf7-email-add-on/admin/assets/images/gradient-img2.png); background-color: #8d89c9; background-repeat: repeat-x; height: 520px;\">\r\n                                                <img src=\"http://localhost:10003/wp-content/plugins/cf7-email-add-on/admin/assets/images/thank-you-img.png\" alt=\"\" style=\"display: block;\">\r\n                                                <p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 35px; font-weight: 700; color: #ffffff; margin: 0 0 10px 0;\"> Thank you</p>\r\n                                                <p style=\"font-family: Verdana, Geneva, sans-serif; max-width: 90%; font-size: 18px; color: #ffffff; margin: 0 auto 26px;\">\r\n                                                    We have received your message and would like to thank you for writing to us. If your inquiry is urgent, please call us to talk to one of our staff members. Otherwise, we will reply by email as soon as possible.\r\n                                                </p>\r\n                                                <a href=\"mailto:[_site_admin_email]\" style=\"font-family: Verdana, Geneva, sans-serif; display: inline-block; width: 160px; height: 50px; font-size: 14px; color: #8a89cb; text-decoration: none; text-transform: uppercase; font-weight: 700; background: url() no-repeat; text-align: center;\">\r\n                                                    <img src=\"http://localhost:10003/wp-content/plugins/cf7-email-add-on/admin/assets/images/send-btn.png\" style=\"display: block;\" alt=\"Contact us\">\r\n                                                </a>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n                        </tbody>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td align=\"center\" style=\"padding: 0px 0 30px 0;\">\r\n                    <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"max-width: 600px; overflow: hidden; font-family: Verdana, Geneva, sans-serif;\">\r\n                        <tbody>\r\n                            <tr>\r\n                                <td style=\"text-align: center; font-size: 12px; color: #666666; text-transform: uppercase; font-family: Verdana, Geneva, sans-serif;\">\r\n                                    © 2023 <a href=\"[_url]\" target=\"_blank\" style=\"color: #666666; text-decoration: none;\" rel=\"noopener\">Powered by</a>. Contact Form 7 Email Addon.\r\n                                </td>\r\n                            </tr>\r\n                        </tbody>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n        </tbody>\r\n    </table>\r\n</body>\r\n</html>\nReply-To: [_site_admin_email]\n\n1\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.','logicaland','','publish','closed','closed','','logicaland','','','2023-09-24 15:40:38','2023-09-24 15:40:38','',0,'http://localhost:10003/?post_type=wpcf7_contact_form&#038;p=335',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (336,1,'2023-09-24 14:49:08','2023-09-24 14:49:08','<!-- wp:shortcode -->\n[contact-form-7 id=\"c58d80b\" title=\"logicaland\"]\n<!-- /wp:shortcode -->','contact','','inherit','closed','closed','','230-revision-v1','','','2023-09-24 14:49:08','2023-09-24 14:49:08','',230,'http://localhost:10003/?p=336',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'twentytwentythree','twentytwentythree',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','logicaland');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"64f5f5023dc08d9ecd44854d9a25ae0d634878166ecc212feecb4a0d2687f06b\";a:4:{s:10:\"expiration\";i:1695779197;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36\";s:5:\"login\";i:1694569597;}s:64:\"5dea2fe0c3d1deb44e2078ab4037c71a65b803a97f282a4ebccae062dd9b5144\";a:4:{s:10:\"expiration\";i:1695739613;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36\";s:5:\"login\";i:1695566813;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','337');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_persisted_preferences','a:3:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:16:\"discussion-panel\";i:2;s:15:\"page-attributes\";}}s:9:\"_modified\";s:24:\"2023-09-20T08:28:14.587Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings','uploader=1');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings-time','1694594183');
INSERT INTO `wp_usermeta` VALUES (22,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:11:\"css-classes\";i:3;s:3:\"xfn\";i:4;s:11:\"description\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'logicaland','$P$ByjHio.SaEMZbavgRy/mrW0eKkcH8B.','logicaland','sanjayrawal8585@gmail.com','http://localhost:10003/','2023-09-11 04:54:47','1695566639:$P$BQO2Fh3xhYot8HJE/yzEgW5K5jq0R81',0,'logicaland');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_payment_meta`
--

DROP TABLE IF EXISTS `wp_wpforms_payment_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforms_payment_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `payment_id` (`payment_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `meta_value` (`meta_value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_payment_meta`
--

LOCK TABLES `wp_wpforms_payment_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_payment_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforms_payment_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_payments`
--

DROP TABLE IF EXISTS `wp_wpforms_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforms_payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subtotal_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `discount_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `total_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `currency` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `entry_id` bigint(20) NOT NULL DEFAULT '0',
  `gateway` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `mode` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `transaction_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `customer_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subscription_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subscription_status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `date_created_gmt` datetime NOT NULL,
  `date_updated_gmt` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`(8)),
  KEY `total_amount` (`total_amount`),
  KEY `type` (`type`(8)),
  KEY `transaction_id` (`transaction_id`(32)),
  KEY `customer_id` (`customer_id`(32)),
  KEY `subscription_id` (`subscription_id`(32)),
  KEY `subscription_status` (`subscription_status`(8)),
  KEY `title` (`title`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_payments`
--

LOCK TABLES `wp_wpforms_payments` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforms_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_tasks_meta`
--

DROP TABLE IF EXISTS `wp_wpforms_tasks_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_tasks_meta`
--

LOCK TABLES `wp_wpforms_tasks_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` DISABLE KEYS */;
INSERT INTO `wp_wpforms_tasks_meta` VALUES (1,'wpforms_process_forms_locator_scan','W10=','2023-09-21 07:23:03');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (3,'wpforms_admin_addons_cache_update','W10=','2023-09-21 07:26:50');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (4,'wpforms_process_forms_locator_scan','W10=','2023-09-22 06:02:42');
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpmailsmtp_debug_events`
--

DROP TABLE IF EXISTS `wp_wpmailsmtp_debug_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpmailsmtp_debug_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_520_ci,
  `initiator` text COLLATE utf8mb4_unicode_520_ci,
  `event_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpmailsmtp_debug_events`
--

LOCK TABLES `wp_wpmailsmtp_debug_events` WRITE;
/*!40000 ALTER TABLE `wp_wpmailsmtp_debug_events` DISABLE KEYS */;
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (1,'Mailer: SendGrid\r\nThe provided authorization grant is invalid, expired, or revoked','{\"file\":\"\\/Users\\/sanjay\\/Local Sites\\/logicalland\\/app\\/public\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/SetupWizard.php\",\"line\":1210}',0,'2023-09-20 22:29:38');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (2,'Mailer: SendGrid\r\nThe provided authorization grant is invalid, expired, or revoked','{\"file\":\"\\/Users\\/sanjay\\/Local Sites\\/logicalland\\/app\\/public\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":347}',0,'2023-09-20 22:32:20');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (3,'Mailer: SendGrid\r\nfrom: The from address does not match a verified Sender Identity. Mail cannot be sent until this error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/ to see the Sender Identity requirements','{\"file\":\"\\/Users\\/sanjay\\/Local Sites\\/logicalland\\/app\\/public\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":347}',0,'2023-09-20 22:35:35');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (4,'Mailer: SendGrid\r\nfrom: The from address does not match a verified Sender Identity. Mail cannot be sent until this error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/ to see the Sender Identity requirements','{\"file\":\"\\/Users\\/sanjay\\/Local Sites\\/logicalland\\/app\\/public\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":347}',0,'2023-09-20 22:36:25');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (5,'Mailer: SendGrid\r\nfrom: The from address does not match a verified Sender Identity. Mail cannot be sent until this error is resolved. Visit https://sendgrid.com/docs/for-developers/sending-email/sender-identity/ to see the Sender Identity requirements','{\"file\":\"\\/Users\\/sanjay\\/Local Sites\\/logicalland\\/app\\/public\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":347}',0,'2023-09-20 22:36:48');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (6,'Mailer: SendGrid\r\nThe provided authorization grant is invalid, expired, or revoked','{\"file\":\"\\/Users\\/sanjay\\/Local Sites\\/logicalland\\/app\\/public\\/wp-content\\/plugins\\/mailjet-for-wordpress\\/src\\/includes\\/MailjetMail.php\",\"line\":80}',0,'2023-09-21 22:10:17');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (7,'Mailer: SendGrid\r\nThe provided authorization grant is invalid, expired, or revoked','{\"file\":\"\\/Users\\/sanjay\\/Local Sites\\/logicalland\\/app\\/public\\/wp-content\\/plugins\\/mailjet-for-wordpress\\/src\\/includes\\/MailjetMail.php\",\"line\":80}',0,'2023-09-21 22:43:10');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (8,'Mailer: SendGrid\r\nThe provided authorization grant is invalid, expired, or revoked','{\"file\":\"\\/Users\\/sanjay\\/Local Sites\\/logicalland\\/app\\/public\\/wp-content\\/plugins\\/mailjet-for-wordpress\\/src\\/includes\\/MailjetMail.php\",\"line\":80}',0,'2023-09-21 22:43:11');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (9,'Mailer: SendGrid\r\nThe provided authorization grant is invalid, expired, or revoked','{\"file\":\"\\/Users\\/sanjay\\/Local Sites\\/logicalland\\/app\\/public\\/wp-includes\\/user.php\",\"line\":3269}',0,'2023-09-21 22:45:08');
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES (10,'Mailer: SendGrid\r\nThe provided authorization grant is invalid, expired, or revoked','{\"file\":\"\\/Users\\/sanjay\\/Local Sites\\/logicalland\\/app\\/public\\/wp-includes\\/user.php\",\"line\":3269}',0,'2023-09-21 22:45:13');
/*!40000 ALTER TABLE `wp_wpmailsmtp_debug_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpmailsmtp_tasks_meta`
--

DROP TABLE IF EXISTS `wp_wpmailsmtp_tasks_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpmailsmtp_tasks_meta`
--

LOCK TABLES `wp_wpmailsmtp_tasks_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpmailsmtp_tasks_meta` DISABLE KEYS */;
INSERT INTO `wp_wpmailsmtp_tasks_meta` VALUES (1,'wp_mail_smtp_admin_notifications_update','W10=','2023-09-21 07:22:04');
/*!40000 ALTER TABLE `wp_wpmailsmtp_tasks_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-05 15:56:46
