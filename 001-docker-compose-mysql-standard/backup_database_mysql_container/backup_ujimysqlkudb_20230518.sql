-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (arm64)
--
-- Host: 127.0.0.1    Database: ujimysqlkudb
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
-- Table structure for table `angka`
--

DROP TABLE IF EXISTS `angka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `angka` (
  `autoincr` int unsigned NOT NULL AUTO_INCREMENT,
  `intbiasa` int DEFAULT NULL,
  `intpositive` int unsigned DEFAULT NULL,
  PRIMARY KEY (`autoincr`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `angka`
--

LOCK TABLES `angka` WRITE;
/*!40000 ALTER TABLE `angka` DISABLE KEYS */;
INSERT INTO `angka` VALUES (1,1000,3),(2,777888999,1000000),(3,2100000000,4200000000),(4,2140000000,4290000000),(5,2147000000,4294000000),(6,2147100000,4294900000),(7,2147100001,4294900001),(8,2147100000,4294900000),(18,2147100001,4294900001),(35,2147100001,4294900001),(38,2147100001,4294900001),(40,2147100001,4294900001);
/*!40000 ALTER TABLE `angka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `angkabesar`
--

DROP TABLE IF EXISTS `angkabesar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `angkabesar` (
  `bigintincr` bigint NOT NULL AUTO_INCREMENT,
  `bigintbiasa` bigint DEFAULT NULL,
  `mediumintbiasa` mediumint DEFAULT NULL,
  `angka_autoincr` int DEFAULT NULL,
  PRIMARY KEY (`bigintincr`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `angkabesar`
--

LOCK TABLES `angkabesar` WRITE;
/*!40000 ALTER TABLE `angkabesar` DISABLE KEYS */;
INSERT INTO `angkabesar` VALUES (1,2147500000,8000000,6),(4,2147500001,8000001,35),(5,2147500001,8000001,38),(6,2147500001,8000001,40);
/*!40000 ALTER TABLE `angkabesar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'andara','jaksel'),(2,'sukiman','bekasi'),(3,'makaela','bekasi'),(4,'abdurrahman','tangerang');
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

-- Dump completed on 2023-05-18 22:15:43
