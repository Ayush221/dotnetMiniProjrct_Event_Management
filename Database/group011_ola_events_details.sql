-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 192.168.100.26    Database: group011_ola
-- ------------------------------------------------------
-- Server version	5.7.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `events_details`
--

DROP TABLE IF EXISTS `events_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_details` (
  `event_detail_id` int(11) NOT NULL,
  `Event_name` varchar(100) NOT NULL,
  `host` varchar(45) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `fees` int(11) NOT NULL,
  `publish_date` date NOT NULL,
  `last_reg_date` date NOT NULL,
  `logo` varchar(60) NOT NULL,
  UNIQUE KEY `event_detail_id_UNIQUE` (`event_detail_id`),
  KEY `event_id_idx` (`event_detail_id`),
  CONSTRAINT `event_detail_id` FOREIGN KEY (`event_detail_id`) REFERENCES `events` (`event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_details`
--

LOCK TABLES `events_details` WRITE;
/*!40000 ALTER TABLE `events_details` DISABLE KEYS */;
INSERT INTO `events_details` VALUES (7001,'Python','Praveen Sir','Auditorium','2019-12-20','2019-12-21','2019-12-20 17:00:00','2019-12-20 21:00:00',150,'2019-12-15','2019-12-19','~/Images/python.png'),(7002,'Outing','Harshita  Madam','Goa','2019-12-20','2019-12-20','2019-12-20 17:00:00','2019-12-20 17:00:00',10000,'2019-12-15','2019-12-19','~/Images/goa.png');
/*!40000 ALTER TABLE `events_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-21 22:44:54
