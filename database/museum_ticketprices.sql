-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: museum
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `ticketprices`
--

DROP TABLE IF EXISTS `ticketprices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticketprices` (
  `museum_id` int NOT NULL,
  `type` varchar(10) NOT NULL,
  `adult_price` varchar(262) NOT NULL,
  `children_price` varchar(255) DEFAULT NULL,
  `photography_fee` varchar(255) DEFAULT NULL,
  `student_fee` varchar(255) DEFAULT 'Free',
  PRIMARY KEY (`museum_id`,`type`),
  CONSTRAINT `ticketprices_ibfk_1` FOREIGN KEY (`museum_id`) REFERENCES `museumdetails` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketprices`
--

LOCK TABLES `ticketprices` WRITE;
/*!40000 ALTER TABLE `ticketprices` DISABLE KEYS */;
INSERT INTO `ticketprices` VALUES (1,'Foreigner','500','Free','Prohibited','Free'),(1,'Indian','20','Free','Prohibited','Free'),(2,'Foreigner','Free','Free','Free','Free'),(2,'Indian','Free','Free','Free','Free'),(3,'Foreigner','20','Free','Free','Free'),(3,'Indian','20','Free','Free','Free'),(4,'Foreigner','20','5','Free','Free'),(4,'Indian','20','5','Free','Free'),(5,'Foreigner','500','20','50','Free'),(5,'Indian','50','20','50','Free'),(6,'Foreigner','100','50','Free','Free'),(6,'Indian','100','50','Free','Free'),(7,'Foreigner','Free','Free','Free','Free'),(7,'Indian','Free','Free','Free','Free'),(8,'Foreigner','500','Free','200','Free'),(8,'Indian','50','Free','200','Free'),(9,'Foreigner','250','Free','Free','Free'),(9,'Indian','10','Free','Free','Free'),(10,'Foreigner','700','200','200','35'),(10,'Indian','150','35','200','35'),(11,'Foreigner','500','500','50,100','Free'),(11,'Indian','75','20','50,100','Free'),(12,'Foreigner','650','Free','50','Free'),(12,'Indian','20','Free','50','Free'),(13,'Foreigner','250','100','200','100'),(13,'Indian','250','100','200','100'),(14,'Foreigner','55','Free','Free','Free'),(14,'Indian','55','Free','Free','Free'),(15,'Foreigner','100','Free','Free','Free'),(15,'Indian','10','Free','Free','Free'),(16,'Foreigner','500','300','Free','200'),(16,'Indian','300','150','Free','200'),(17,'Foreigner','250','70','Free','50'),(17,'Indian','120','60','Free','50'),(18,'Foreigner','95','35','Free','35'),(18,'Indian','95','35','Free','35'),(19,'Foreigner','70','20','Free','20'),(19,'Indian','70','20','Free','20'),(20,'Foreigner','70','20','Free','20'),(20,'Indian','70','20','Free','20'),(21,'Foreigner','150','100','Free','100'),(21,'Indian','150','100','Free','100'),(22,'Foreigner','50','20','Free','20'),(22,'Indian','50','20','Free','20'),(23,'Foreigner','50','20','Free','20'),(23,'Indian','50','20','Free','20'),(24,'Foreigner','30','20','Free','20'),(24,'Indian','30','20','Free','20'),(25,'Foreigner','50','20','Free','20'),(25,'Indian','50','20','Free','20'),(26,'Foreigner','100','50','50','10'),(26,'Indian','40','20','20','10'),(27,'Foreigner','N/A','N/A','N/A','20'),(27,'Indian','Science Centre Only: Individual: ?40,Organized School Groups: ?20,Special Schools: ?5 Entry + Planetarium: Individual: ?95,Organized School Groups: ?40,Special Schools: ?15 Entry + 3D Science Show:Individual: ?75,Organized School Groups: ?35,Special Schools: ?10',NULL,NULL,'20'),(28,'Foreigner','Free','Free','Free','Free'),(28,'Indian','Free','Free','Free','Free'),(29,'Foreigner','Free','Free','Free','Free'),(29,'Indian','Free','Free','Free','Free'),(30,'Foreigner','50','30','Free','20'),(30,'Indian','50','30','Free','20'),(31,'Foreigner','?300 (Day), ?100 (Night)','?150 (Day), ?100 (Night)','50','Free'),(31,'Indian','?40 (Day), ?100 (Night)','?20 (Day), ?100 (Night)','50','Free'),(32,'Foreigner','Free','Free','Free','Free'),(32,'Indian','Free','Free','Free','Free'),(33,'Foreigner','Free','Free','Free','Free'),(33,'Indian','Free','Free','Free','Free'),(34,'Foreigner','Free','Free','Free','Free'),(34,'Indian','Free','Free','Free','Free'),(35,'Foreigner','250','125','200','5'),(35,'Indian','15','10','200','5'),(36,'Foreigner','100','Free','Free','Free'),(36,'Indian','5','Free','Free','Free'),(37,'Foreigner','300','150','200','20'),(37,'Indian','50','20','50','20'),(38,'Foreigner','650','350','500','10'),(38,'Indian','20','10','20','10'),(39,'Foreigner','100','50','100','5'),(39,'Indian','15','5','20','5'),(40,'Foreigner','50','25','50','5'),(40,'Indian','10','5','20','5'),(41,'Foreigner','10','25','50','5'),(41,'Indian','10','5','20','5'),(42,'Foreigner','100','50','100','10'),(42,'Indian','20','10','20','10'),(43,'Foreigner','50','25','50','5'),(43,'Indian','10','5','20','5'),(44,'Foreigner','200','100','150','20'),(44,'Indian','50','20','50','20'),(45,'Foreigner','100','50','100','10'),(45,'Indian','20','10','20','10'),(46,'Foreigner','50','25','50','5'),(46,'Indian','10','5','20','5'),(47,'Foreigner','100','50','100','10'),(47,'Indian','20','10','20','10'),(48,'Foreigner','100','50','50','20'),(48,'Indian','50','20','10','20'),(49,'Foreigner','100','50','50','20'),(49,'Indian','50','20','25','20'),(50,'Foreigner','Free','Free','Free','Free'),(50,'Indian','Free','Free','Free','Free'),(51,'Foreigner','100','50','50','15'),(51,'Indian','30','15','25','15'),(52,'Foreigner','100','50','50','10'),(52,'Indian','20','10','25','10'),(53,'Foreigner','Free','Free','Free','Free'),(53,'Indian','Free','Free','Free','Free'),(54,'Foreigner','1100','Free','200','20'),(54,'Indian','50','Free','200','20'),(55,'Foreigner','50','Free','Free','25'),(55,'Indian','50','Free','Free','25'),(56,'Foreigner','1200','10','25','10'),(56,'Indian','70','10','25','10'),(57,'Foreigner','500','250','200','30'),(57,'Indian','50','25','200','30'),(58,'Foreigner','200','Free','Free','50'),(58,'Indian','50','Free','Free','50'),(59,'Foreigner','200','50','50','25'),(59,'Indian','50','10','25','25'),(60,'Foreigner','100','50','50','10'),(60,'Indian','20','10','10','10'),(61,'Foreigner','100','50','50','10'),(61,'Indian','20','10','10','10'),(62,'Foreigner','50','25','50','10'),(62,'Indian','20','10','25','10'),(63,'Foreigner','Free','Free','Free','Free'),(63,'Indian','Free','Free','Free','Free'),(64,'Foreigner','50','25','50','10'),(64,'Indian','20','10','25','10'),(65,'Foreigner','250','125','200','150'),(65,'Indian','5','2','20','3'),(66,'Foreigner','205','100','150','100'),(66,'Indian','100','50','50','10'),(67,'Foreigner','200','100','150','100'),(67,'Indian','10','5','30','5'),(68,'Foreigner','200','100','200','150'),(68,'Indian','50','30','50','10'),(69,'Foreigner','150','75','100','75'),(69,'Indian','3','1','20','2'),(70,'Foreigner','150','75','100','75'),(70,'Indian','3','1','20','2'),(71,'Foreigner','150','75','100','75'),(71,'Indian','5','2','20','3'),(72,'Foreigner','150','75','100','75'),(72,'Indian','5','2','20','3');
/*!40000 ALTER TABLE `ticketprices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-24 19:58:07
