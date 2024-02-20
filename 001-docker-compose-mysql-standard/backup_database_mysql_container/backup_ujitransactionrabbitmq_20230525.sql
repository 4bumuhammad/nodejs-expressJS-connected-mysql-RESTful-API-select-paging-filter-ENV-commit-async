-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (arm64)
--
-- Host: 127.0.0.1    Database: ujitransactionrabbitmq
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblorder_created`
--

DROP TABLE IF EXISTS `tblorder_created`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblorder_created` (
  `trx` int NOT NULL AUTO_INCREMENT,
  `product_id` varchar(10) DEFAULT NULL,
  `order_qty` int DEFAULT NULL,
  `created` timestamp NULL DEFAULT (convert_tz(now(),_utf8mb4'+00:00',_utf8mb4'+07:00')),
  PRIMARY KEY (`trx`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorder_created`
--

LOCK TABLES `tblorder_created` WRITE;
/*!40000 ALTER TABLE `tblorder_created` DISABLE KEYS */;
INSERT INTO `tblorder_created` VALUES (1,'123456',2,'2023-05-24 07:45:06'),(2,'123456',2,'2023-05-24 14:54:17'),(3,NULL,NULL,'2023-05-24 17:44:12'),(4,'12345',2,'2023-05-24 17:46:14'),(5,'12345',2,'2023-05-24 17:51:03'),(6,'12345',2,'2023-05-24 17:51:08'),(7,'12345',12,'2023-05-24 17:51:50'),(8,'12345',12,'2023-05-24 17:52:03'),(9,'12345',12,'2023-05-24 19:52:00'),(10,'12345',12,'2023-05-24 19:56:27'),(11,'12345',12,'2023-05-24 19:56:31'),(12,'12345',12,'2023-05-24 19:59:11'),(13,'12345',12,'2023-05-24 20:00:05'),(14,'12345',12,'2023-05-24 20:03:24'),(15,'12345',12,'2023-05-24 20:03:41'),(16,'12345',12,'2023-05-24 20:04:22'),(17,'12345',2,'2023-05-24 20:54:58'),(18,'12345',2,'2023-05-24 20:56:38');
/*!40000 ALTER TABLE `tblorder_created` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorder_rejected`
--

DROP TABLE IF EXISTS `tblorder_rejected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblorder_rejected` (
  `trx` int NOT NULL AUTO_INCREMENT,
  `product_id` varchar(10) DEFAULT NULL,
  `rejected_reason` varchar(120) DEFAULT NULL,
  `created` timestamp NULL DEFAULT (convert_tz(now(),_utf8mb4'+00:00',_utf8mb4'+07:00')),
  PRIMARY KEY (`trx`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorder_rejected`
--

LOCK TABLES `tblorder_rejected` WRITE;
/*!40000 ALTER TABLE `tblorder_rejected` DISABLE KEYS */;
INSERT INTO `tblorder_rejected` VALUES (1,'12345','Out of stock','2023-05-24 20:54:58'),(2,'12345','Out of stock','2023-05-24 20:56:09'),(3,'12345','Out of stock','2023-05-24 20:56:22');
/*!40000 ALTER TABLE `tblorder_rejected` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-25 14:05:07
