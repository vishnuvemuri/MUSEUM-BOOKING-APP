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
-- Table structure for table `ticket_price`
--

DROP TABLE IF EXISTS `ticket_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_price` (
  `Id` int NOT NULL,
  `museum_Id` int DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `adult_price` varchar(262) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Children_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `photography_fee` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Student_Fee` varchar(255) DEFAULT 'free',
  PRIMARY KEY (`Id`),
  KEY `fk_museum` (`museum_Id`),
  CONSTRAINT `fk_museum` FOREIGN KEY (`museum_Id`) REFERENCES `museums` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_price`
--

LOCK TABLES `ticket_price` WRITE;
/*!40000 ALTER TABLE `ticket_price` DISABLE KEYS */;
INSERT INTO `ticket_price` VALUES (1,1,'Indian','20','free','prohibited','free'),(2,1,'Foreigner','500','free','prohibited','free'),(5,3,'Indian','free','free','free','free'),(6,3,'Foreigner','free','free','free','free'),(7,4,'Indian','20','free','free','free'),(8,4,'Foreigner','20','free','free','free'),(9,5,'Indian','20','5','free','free'),(10,5,'Foreigner','20','5','free','free'),(11,6,'Indian','50','20','50','free'),(12,6,'Foreigner','500','20','50','free'),(13,7,'Indian','100','50','free','free'),(14,7,'Foreigner','100','50','free','free'),(15,8,'Indian','free','free','free','free'),(16,8,'Foreigner','free','free','free','free'),(17,9,'Indian','50','free','200','free'),(18,9,'Foreigner','500','free','200','free'),(19,10,'Indian','10','free','free','free'),(20,10,'Foreigner','250','free','free','free'),(21,11,'Indian','150','35','200','35'),(22,11,'Foreigner','700','200','200','35'),(23,12,'Indian','75','20','50100','free'),(24,12,'Foreigner','500','500','50100','free'),(25,13,'Indian','20','free','50','free'),(26,13,'Foreigner','650','free','50','free'),(27,14,'Indian','250','100','200','100'),(28,14,'Foreigner','250','100','200','100'),(29,15,'Indian','55','free','free','free'),(30,15,'Foreigner','55','free','free','free'),(31,16,'Indian','10','free','free','free'),(32,16,'Foreigner','100','free','free','free'),(33,17,'Indian','300','150','free','200'),(34,17,'Foreigner','500','300','free','200'),(35,18,'Indian','120','60','free','50'),(36,18,'Foreigner','250','70','free','50'),(37,19,'Indian','95','35','free','35'),(38,19,'Foreigner','95','35','free','35'),(39,20,'Indian','70','20','free','20'),(40,20,'Foreigner','70','20','free','20'),(41,21,'Indian','70','20','free','20'),(42,21,'Foreigner','70','20','free','20'),(43,22,'Indian','150','100','free','100'),(44,22,'Foreigner','150','100','free','100'),(45,23,'Indian','50','20','free','20'),(46,23,'Foreigner','50','20','free','20'),(47,24,'Indian','50','20','free','20'),(48,24,'Foreigner','50','20','free','20'),(49,25,'Indian','30','20','free','20'),(50,25,'Foreigner','30','20','free','20'),(51,26,'Indian','50','20','free','20'),(52,26,'Foreigner','50','20','free','20'),(53,27,'Indian','40','20','20','10'),(54,27,'Foreigner','100','50','50','10'),(55,28,'Indian','Science Centre Only: Individual: ₹40,Organized School Groups: ₹20,Special Schools: ₹5 Entry + Planetarium: Individual: ₹95,Organized School Groups: ₹40,Special Schools: ₹15 Entry + 3D Science Show:Individual: ₹75,Organized School Groups: ₹35,Special Schools: ₹10','₹5','free','20'),(56,28,'Foreigner','Science Centre Only: Individual: ₹40,Organized School Groups: ₹20,Special Schools: ₹5 Entry + Planetarium: Individual: ₹95,Organized School Groups: ₹40,Special Schools: ₹15 Entry + 3D Science Show:Individual: ₹75,Organized School Groups: ₹35,Special Schools: ₹11','₹5','free','20'),(57,29,'Indian','free','free','free','free'),(58,29,'Foreigner','free','free','free','free'),(59,30,'Indian','free','free','free','free'),(60,30,'Foreigner','free','free','free','free'),(61,31,'Indian','50','30','free','20'),(62,31,'Foreigner','50','30','free','20'),(63,32,'Indian','20,10','free','free','free'),(64,32,'Foreigner','200','free','free','free'),(65,33,'Indian','free','free','free','free'),(66,33,'Foreigner','300','150','50','free'),(67,34,'Indian','free','free','free','free'),(68,34,'Foreigner','free','free','free','free'),(69,35,'Indian','free','free','free','75'),(70,35,'Foreigner','400','200','200','75'),(71,36,'Indian','free','free','free','free'),(72,36,'Foreigner','free','free','free','free'),(73,37,'Indian','free','free','free','free'),(74,37,'Foreigner','free','free','free','free'),(75,38,'Indian','15','10','200','5'),(76,38,'Foreigner','250','125','200','5'),(77,39,'Indian','5','free','free','free'),(78,39,'Foreigner','100','free','free','free'),(79,40,'Indian','50','20','50','20'),(80,40,'Foreigner','300','150','200','20'),(81,41,'Indian','20','10','20','10'),(82,41,'Foreigner','650','350','500','10'),(85,43,'Indian','10','5','20','5'),(86,43,'Foreigner','50','25','50','5'),(87,44,'Indian','10','5','20','5'),(88,44,'Foreigner','25','10','50','5'),(89,45,'Indian','50','20','50','10'),(90,45,'Foreigner','200','100','150','10'),(91,46,'Indian','20','10','20','5'),(92,46,'Foreigner','100','50','100','5'),(93,47,'Indian','10','5','20','20'),(94,47,'Foreigner','50','25','50','20'),(95,48,'Indian','50','20','50','10'),(96,48,'Foreigner','200','100','150','10'),(97,49,'Indian','20','10','20','5'),(98,49,'Foreigner','100','50','100','5'),(99,50,'Indian','10','5','20','10'),(100,50,'Foreigner','50','25','50','10'),(101,51,'Indian','20','10','20','free'),(102,51,'Foreigner','100','50','100','free'),(103,52,'Indian','50','20','100','free'),(105,52,'Foreigner','200','100','500','free'),(106,53,'Indian','30','10','50','free'),(107,53,'Foreigner','50','20','100','free'),(108,54,'Indian','40','20','100','free'),(109,54,'Foreigner','150','75','300','free'),(110,55,'Indian','40','20','50','free'),(111,55,'Foreigner','300','150','200','free'),(112,56,'Indian','30','10','100','free'),(113,56,'Foreigner','200','100','300','free'),(114,57,'Indian','free','free','50','free'),(115,57,'Foreigner','free','free','100','free'),(116,58,'Indian','50','20','100','free'),(117,58,'Foreigner','150','50','200','free'),(118,59,'Indian','50','20','100','free'),(119,60,'Foreigner','200','100','200','free'),(120,61,'Indian','free','free','50','free'),(121,62,'Foreigner','free','free','100','free');
/*!40000 ALTER TABLE `ticket_price` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-24 19:58:09
