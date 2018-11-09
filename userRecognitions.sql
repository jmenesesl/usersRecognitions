-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: userRecognitions
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2018-11-07 15:01:42','2018-11-07 15:01:42');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emotions`
--

DROP TABLE IF EXISTS `emotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emotions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `src` text,
  `size` text,
  `permalink` varchar(8) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emotions`
--

LOCK TABLES `emotions` WRITE;
/*!40000 ALTER TABLE `emotions` DISABLE KEYS */;
INSERT INTO `emotions` VALUES (1,'Cassatt','medhurst.name','295760','94769127','2018-11-08 23:00:00','2018-10-02 22:00:00'),(2,'Joan Miro','jerdedibbert.com','405204','cbb54202','2018-10-16 22:00:00','2018-09-29 22:00:00'),(3,'Caravaggio','bogisichdaniel.co','831980','6c058872','2018-11-01 23:00:00','2018-10-05 22:00:00'),(4,'Michelangelo','rathwisoky.io','846810','4114057b','2018-10-25 22:00:00','2018-10-02 22:00:00'),(5,'Caravaggio','kuhic.org','266285','e9099bce','2018-11-06 23:00:00','2018-10-01 22:00:00'),(6,'Cassatt','howehilpert.com','661395','9e996841','2018-10-13 22:00:00','2018-09-16 22:00:00'),(7,'Winslow Homer','durganmohr.info','560589','4200db24','2018-10-24 22:00:00','2018-09-18 22:00:00'),(8,'Donatello','bartelldamore.info','202519','b7c369bb','2018-10-14 22:00:00','2018-09-21 22:00:00'),(9,'Ansel Adams','pricestrosin.info','214109','d2a50c96','2018-10-17 22:00:00','2018-09-27 22:00:00'),(10,'Donatello','zulauf.io','973765','5393716a','2018-10-25 22:00:00','2018-10-03 22:00:00'),(11,'Raphael','hamill.com','251073','5b73caeb','2018-10-19 22:00:00','2018-10-08 22:00:00'),(12,'Seurat','wilderman.info','583541','7131479e','2018-10-28 23:00:00','2018-10-03 22:00:00'),(13,'Kahlo','spinka.org','896647','32208587','2018-10-25 22:00:00','2018-10-04 22:00:00'),(14,'Pollock','willmcclure.com','227974','d2816ea1','2018-11-01 23:00:00','2018-10-09 22:00:00'),(15,'Renoir','collins.name','584842','a7ca8997','2018-10-31 23:00:00','2018-09-22 22:00:00'),(16,'Escher','ohara.co','228606','5236c775','2018-10-24 22:00:00','2018-09-27 22:00:00'),(17,'Monet','glover.name','317588','9418a5a1','2018-10-27 22:00:00','2018-09-19 22:00:00'),(18,'Winslow Homer','pagac.name','971522','00a5a18e','2018-10-19 22:00:00','2018-09-22 22:00:00'),(19,'Bernini','ferry.io','255020','9d974760','2018-10-16 22:00:00','2018-09-23 22:00:00'),(20,'Pollock','greenfelder.info','218979','e5cb3053','2018-10-28 23:00:00','2018-09-21 22:00:00'),(21,'Dali','cain.com','323173','25a6d1a1','2018-10-23 22:00:00','2018-10-01 22:00:00'),(22,'Renoir','crist.co','884607','ead8dd10','2018-10-12 22:00:00','2018-09-29 22:00:00'),(23,'Durer','stehr.info','457373','2a7ce475','2018-10-27 22:00:00','2018-09-15 22:00:00'),(24,'Gauguin','jacobsonheaney.name','478780','36cde7e5','2018-10-13 22:00:00','2018-09-21 22:00:00'),(25,'Gauguin','feeney.biz','955622','304a216e','2018-10-15 22:00:00','2018-09-26 22:00:00'),(26,'Vincent','rogahnhansen.net','255785','ed6620be','2018-10-15 22:00:00','2018-09-27 22:00:00'),(27,'Botticelli','bosco.name','336329','2bdc79c4','2018-10-09 22:00:00','2018-10-09 22:00:00'),(28,'Winslow Homer','emard.net','476965','3bd8b8dd','2018-10-25 22:00:00','2018-09-26 22:00:00'),(29,'Seurat','donnelly.info','387227','8e695b11','2018-11-01 23:00:00','2018-10-05 22:00:00'),(30,'Warhol','hellergleichner.com','786828','d92522b6','2018-11-03 23:00:00','2018-09-13 22:00:00');
/*!40000 ALTER TABLE `emotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recognitions`
--

DROP TABLE IF EXISTS `recognitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recognitions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `emotion_id` bigint(20) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rails_a4edcb3f60` (`emotion_id`),
  KEY `fk_rails_6d94b3d628` (`user_id`),
  CONSTRAINT `fk_rails_6d94b3d628` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_a4edcb3f60` FOREIGN KEY (`emotion_id`) REFERENCES `emotions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recognitions`
--

LOCK TABLES `recognitions` WRITE;
/*!40000 ALTER TABLE `recognitions` DISABLE KEYS */;
INSERT INTO `recognitions` VALUES (1,'06c9b7',3,2,'iPhone 7 / 7 Plus','2018-10-20 22:00:00','2018-08-15 22:00:00'),(2,'e480e5',4,3,'iPhone SE','2018-10-11 22:00:00','2018-08-15 22:00:00'),(3,'8d8d53',3,4,'iPhone 8 / 8 Plus','2018-10-10 22:00:00','2018-08-14 22:00:00'),(4,'9aaa18',2,3,'iPhone 4','2018-11-05 23:00:00','2018-08-18 22:00:00'),(5,'c2582d',9,1,'iPhone 4','2018-10-23 22:00:00','2018-08-11 22:00:00'),(6,'6c05e8',4,5,'iPhone 8 / 8 Plus','2018-10-11 22:00:00','2018-08-18 22:00:00'),(7,'ba4d70',2,2,'iPhone 3G','2018-11-01 23:00:00','2018-08-13 22:00:00'),(8,'4ce34a',6,3,'iPhone 4S','2018-10-16 22:00:00','2018-08-17 22:00:00'),(9,'9a6359',3,5,'iPhone 4S','2018-10-17 22:00:00','2018-08-12 22:00:00'),(10,'44e7b0',4,5,'iPhone','2018-11-02 23:00:00','2018-08-18 22:00:00'),(11,'2bbaa0',6,5,'iPhone 6S / 6S Plus','2018-11-02 23:00:00','2018-08-19 22:00:00'),(12,'a9746c',5,4,'iPhone 6S / 6S Plus','2018-10-26 22:00:00','2018-08-20 22:00:00'),(13,'1077db',2,3,'iPhone 4','2018-10-09 22:00:00','2018-08-11 22:00:00'),(14,'59e46a',6,4,'iPhone 5C','2018-10-15 22:00:00','2018-08-10 22:00:00'),(15,'52cb7e',7,4,'iPhone 4','2018-10-11 22:00:00','2018-08-12 22:00:00'),(16,'eac634',4,5,'iPhone SE','2018-11-04 23:00:00','2018-08-16 22:00:00'),(17,'6e8d37',1,1,'iPhone 5C','2018-10-29 23:00:00','2018-08-14 22:00:00'),(18,'37224e',8,5,'iPhone X','2018-10-27 22:00:00','2018-08-11 22:00:00'),(19,'130da3',9,1,'iPhone','2018-10-14 22:00:00','2018-08-20 22:00:00'),(20,'a54382',7,4,'iPhone 6S / 6S Plus','2018-10-21 22:00:00','2018-08-14 22:00:00'),(21,'26661e',7,3,'iPhone SE','2018-10-10 22:00:00','2018-08-20 22:00:00'),(22,'837011',5,3,'iPhone 3GS','2018-10-16 22:00:00','2018-08-12 22:00:00'),(23,'b283ee',1,2,'iPhone 5S','2018-11-05 23:00:00','2018-08-14 22:00:00'),(24,'719743',8,2,'iPhone 5C','2018-10-11 22:00:00','2018-08-15 22:00:00'),(25,'50654e',7,5,'iPhone','2018-10-31 23:00:00','2018-08-20 22:00:00'),(26,'27602e',3,3,'iPhone 5S','2018-10-22 22:00:00','2018-08-17 22:00:00'),(27,'09853e',7,4,'iPhone 5C','2018-10-16 22:00:00','2018-08-18 22:00:00'),(28,'8ebd68',1,4,'iPhone X','2018-10-28 23:00:00','2018-08-17 22:00:00'),(29,'72b182',9,1,'iPhone 6 / 6 Plus','2018-10-31 23:00:00','2018-08-11 22:00:00'),(30,'2395a6',7,2,'iPhone 6S / 6S Plus','2018-11-07 23:00:00','2018-08-11 22:00:00'),(31,'89e584',4,13,'iPhone SE','2018-10-21 22:00:00','2018-08-14 22:00:00'),(32,'ce1ee2',7,11,'iPhone 3G','2018-10-29 23:00:00','2018-08-20 22:00:00'),(33,'d1096a',4,5,'iPhone 6S / 6S Plus','2018-10-19 22:00:00','2018-08-11 22:00:00'),(34,'c8002b',14,8,'iPhone SE','2018-11-05 23:00:00','2018-08-19 22:00:00'),(35,'7e9457',1,12,'iPhone 5C','2018-10-18 22:00:00','2018-08-17 22:00:00'),(36,'6de05a',2,13,'iPhone 8 / 8 Plus','2018-10-30 23:00:00','2018-08-12 22:00:00'),(37,'b0e95a',7,12,'iPhone 3G','2018-11-05 23:00:00','2018-08-12 22:00:00'),(38,'6ea526',8,2,'iPhone 6 / 6 Plus','2018-10-25 22:00:00','2018-08-12 22:00:00'),(39,'bb369a',1,13,'iPhone 6 / 6 Plus','2018-10-26 22:00:00','2018-08-18 22:00:00'),(40,'5080e4',11,10,'iPhone 6 / 6 Plus','2018-11-01 23:00:00','2018-08-18 22:00:00');
/*!40000 ALTER TABLE `recognitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20181107145822'),('20181107145832'),('20181107145841');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` text,
  `country` text,
  `phone` text,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Pepe C. Cola','efrainhomenick@bartellmccullough.biz','NGA','813-561-1730 x2166','2018-08-10 22:00:00'),(2,'Kitty Katz','abbeychristiansen@bosco.co','NGA','(162) 418-9418 x7929','2018-08-19 22:00:00'),(3,'Sarah Bellum','kelleefriesen@langworthsmith.co','CCK','1-768-007-9397 x1372','2018-08-19 22:00:00'),(4,'Chip Munk','humbertobeier@pagac.org','NIC','1-689-187-3575 x54276','2018-08-15 22:00:00'),(5,'Olive Hoyl','eusebia@douglachuster.info','TCD','(449) 072-1234 x78887','2018-08-13 22:00:00'),(6,'Rhea Pollster','edwardaltenwerth@mannabernathy.info','ATF','110.603.4978','2018-08-17 22:00:00'),(7,'Earl E. Byrd','maymebarrows@koelpin.name','BEL','(321) 840-3738','2018-08-12 22:00:00'),(8,'Emile Eaton','karey@kundedickinson.info','NOR','(682) 873-5695','2018-08-12 22:00:00'),(9,'Harry Pitts','nancy@kuphal.info','THA','612.197.0449 x40816','2018-08-18 22:00:00'),(10,'Ariel Hassle','avery@wilderman.info','BEN','765.710.3262 x33041','2018-08-15 22:00:00'),(11,'Cara Van','freda@walter.co','BWA','305-995-6564 x18258','2018-08-11 22:00:00'),(12,'Zoe Mudgett Hertz','jenae@altenwerth.io','ARE','817.362.2115 x06726','2018-08-13 22:00:00'),(13,'Ben Lyon','waylon@nicolasokon.info','SGS','(936) 621-6877 x497','2018-08-11 22:00:00'),(14,'Rusty Nails','rosalia@king.com','ATG','1-171-024-5776 x7717','2018-08-14 22:00:00'),(15,'Lou Zar','maynard@purdy.info','IND','1-410-573-6954','2018-08-13 22:00:00'),(16,'Mel Practiss','grantwalter@keebler.co','KGZ','498-537-4321 x48478','2018-08-10 22:00:00'),(17,'Anita Bath','verlenerempel@hoppe.net','PAN','501-735-9016 x542','2018-08-18 22:00:00'),(18,'Buck Ng','samellaschmeler@hyatt.com','MCO','(826) 578-0787 x397','2018-08-17 22:00:00'),(19,'Joy Kil','martinabode@trantow.co','ALA','835.049.1238 x16103','2018-08-19 22:00:00'),(20,'Doug Love Fitzhugh','traceeshields@steuber.info','IOT','543.649.9807 x453','2018-08-17 22:00:00'),(21,'Ann B. Dextrous','donovan@crist.io','EST','(105) 578-2877','2018-08-16 22:00:00'),(22,'I. Ron Stomach','dina@thiel.name','SDN','1-484-570-9796 x097','2018-08-20 22:00:00'),(23,'Terry Bull','domingo@crona.info','TKL','(987) 892-4514','2018-08-16 22:00:00'),(24,'Frank N. Sense','long@kozeygoodwin.com','BVT','1-623-422-3015 x814','2018-08-17 22:00:00'),(25,'Barry Cade','efrainmonahan@willms.com','LTU','(824) 336-1387','2018-08-16 22:00:00'),(26,'Sal Ami','ali@vontowne.biz','BDI','(894) 380-9695','2018-08-17 22:00:00'),(27,'Samson Night','budlebsack@friesen.org','ARM','719.633.9364 x47369','2018-08-16 22:00:00'),(28,'Art Exhibit','augustine@turcotte.info','FRA','1-791-753-9926 x5562','2018-08-17 22:00:00'),(29,'Sid Down','hayden@moorebarrows.co','ALA','1-235-603-0336 x336','2018-08-16 22:00:00'),(30,'Justin Thyme','livia@rohan.com','SOM','707-170-3901','2018-08-17 22:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-09 15:31:11
