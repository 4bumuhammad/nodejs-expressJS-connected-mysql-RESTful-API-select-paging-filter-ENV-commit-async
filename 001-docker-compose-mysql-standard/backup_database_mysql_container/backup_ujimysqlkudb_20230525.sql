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
INSERT INTO `angka` VALUES (1,1000,3),(2,777888999,1000000),(3,2100000000,4200000000),(4,2140000000,4290000000),(5,2147000000,4294000000),(6,2147100000,4294900000),(7,2147100001,4294900001),(8,2147100000,4294900000),(18,2147100001,4294900001),(35,2147100001,4294900001),(40,2147100001,4294900001);
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
INSERT INTO `angkabesar` VALUES (1,2147500000,8000000,6),(4,2147500001,8000001,35),(6,2147500001,8000001,40);
/*!40000 ALTER TABLE `angkabesar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlain`
--

DROP TABLE IF EXISTS `userlain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlain` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(60) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlain`
--

LOCK TABLES `userlain` WRITE;
/*!40000 ALTER TABLE `userlain` DISABLE KEYS */;
INSERT INTO `userlain` VALUES (1,'John Doe','Jalan Raya 123'),(2,'Jane Smith','Jalan Mawar 456'),(3,'David Johnson','Jalan Kenanga 789'),(4,'Sarah Williams','Jalan Melati 321'),(5,'Michael Brown','Jalan Anggrek 654'),(6,'Michelle Lee','Jalan Dahlia 987'),(7,'Robert Wilson','Jalan Cempaka 234'),(8,'Emily Taylor','Jalan Angsana 567'),(9,'Daniel Anderson','Jalan Sakura 890'),(10,'Olivia Martinez','Jalan Flamboyan 432'),(11,'William Sanjaya','Jalan Nangka 776'),(12,'William James Moriarty','Jl. TB Simatupang No.99'),(13,'James Rodriguez','Jalan Mawar 543'),(14,'Emma Hernandez','Jalan Melati 876'),(15,'Benjamin Moore','Jalan Kenanga 210'),(16,'Ava Lopez','Jalan Raya 543'),(17,'Alexander Clark','Jalan Anggrek 876'),(18,'Mia Lewis','Jalan Dahlia 109'),(19,'Henry Young','Jalan Cempaka 432'),(20,'Charlotte Hall','Jalan Angsana 765'),(21,'Joseph King','Jalan Sakura 098'),(22,'Madison Scott','Jalan Flamboyan 321'),(23,'Samuel Green','Jalan Kamboja 654'),(24,'Chloe Hill','Jalan Tulip 987'),(25,'David Ward','Jalan Mawar 234'),(26,'Ella Turner','Jalan Melati 567'),(27,'Jackson Phillips','Jalan Kenanga 890'),(28,'Amelia Bennett','Jalan Raya 123'),(29,'Matthew Reed','Jalan Anggrek 456'),(30,'Abigail Murphy','Jalan Dahlia 789'),(31,'Daniel Butler','Jalan Cempaka 321'),(32,'Sofia Nguyen','Jalan Angsana 654'),(33,'Andrew Foster','Jalan Sakura 987'),(34,'Charlotte Simmons','Jalan Flamboyan 234'),(35,'David Gray','Jalan Kamboja 567'),(36,'Avery Howard','Jalan Tulip 890'),(37,'Evelyn Cox','Jalan Mawar 109'),(38,'James Diaz','Jalan Melati 432'),(39,'Ella Perez','Jalan Kenanga 765'),(40,'Lucas Coleman','Jalan Raya 098'),(41,'Scarlett Barnes','Jalan Anggrek 321'),(42,'Victoria Barnes','Jalan Dahlia 654'),(43,'Liam Nelson','Jalan Cempaka 987'),(44,'Harper Bell','Jalan Angsana 234'),(45,'Logan Ward','Jalan Sakura 567'),(46,'Grace Sanders','Jalan Flamboyan 890'),(47,'Lucas Davis','Jalan Kamboja 123'),(48,'Nora Rivera','Jalan Tulip 456'),(49,'Henry Evans','Jalan Mawar 789'),(50,'Lily Reed','Jalan Melati 321'),(51,'Wyatt Mitchell','Jalan Kenanga 654'),(52,'Zoe Torres','Jalan Raya 987'),(53,'Joseph Edwards','Jalan Anggrek 234'),(54,'Aubrey Adams','Jalan Dahlia 567'),(55,'Carter Rodriguez','Jalan Cempaka 890'),(56,'Penelope Collins','Jalan Angsana'),(57,'Maxwell Jenkins','Jalan Sakura 123'),(58,'Luna Hughes','Jalan Flamboyan 456'),(59,'Henry Cooper','Jalan Kamboja 789'),(60,'Mila Turner','Jalan Tulip 321'),(61,'Sebastian Murphy','Jalan Mawar 654'),(62,'Hazel Morgan','Jalan Melati 987'),(63,'Leo Foster','Jalan Kenanga 234'),(64,'Stella Ross','Jalan Raya 567'),(65,'Gabriel Richardson','Jalan Anggrek 890'),(66,'Ellie Powell','Jalan Dahlia 123'),(67,'David Simmons','Jalan Cempaka 456'),(68,'Aria Henderson','Jalan Angsana 789'),(69,'Owen Stewart','Jalan Sakura 321'),(70,'Ariana Hayes','Jalan Flamboyan 654'),(71,'Samuel Bennett','Jalan Kamboja 987'),(72,'Eleanor Cooper','Jalan Tulip 234'),(73,'Isaac Reed','Jalan Mawar 567'),(74,'Clara Ross','Jalan Melati 890'),(75,'Elijah Rivera','Jalan Kenanga 123'),(76,'Lillian Collins','Jalan Raya 456'),(77,'Xavier Diaz','Jalan Anggrek 789'),(78,'Skylar Adams','Jalan Dahlia 321'),(79,'Lucy Wilson','Jalan Cempaka 654'),(80,'Nathan Ward','Jalan Angsana 987'),(81,'Ruby Carter','Jalan Sakura 234'),(82,'Mason Sanders','Jalan Flamboyan 567'),(83,'Sadie Griffin','Jalan Kamboja 890'),(84,'Jackson Gonzalez','Jalan Tulip 123'),(85,'Gabriella Price','Jalan Mawar 456'),(86,'Christopher Campbell','Jalan Melati 789'),(87,'Zoey Brooks','Jalan Kenanga 321'),(88,'Lincoln Powell','Jalan Raya 654'),(89,'Maya Stewart','Jalan Anggrek 987'),(90,'Eliana Cook','Jalan Dahlia 234'),(91,'Caleb Cox','Jalan Cempaka 567'),(92,'Aaliyah Nelson','Jalan Angsana 890'),(93,'Jonathan Phillips','Jalan Sakura 123'),(94,'Addison Hughes','Jalan Flamboyan 456'),(95,'Aaron Bell','Jalan Kamboja 789'),(96,'Paisley Hill','Jalan Tulip 321'),(97,'Gavin Simmons','Jalan Mawar 654'),(98,'Audrey Patterson','Jalan Melati 987'),(99,'Austin Rivera','Jalan Kenanga 234'),(100,'Brooklyn Richardson','Jalan Raya 567'),(101,'Leo Butler','Jalan Anggrek 890'),(102,'Natalie Nguyen','Jalan Dahlia 123'),(103,'Julian Morris','Jalan Cempaka 456'),(104,'Aria Sanders','Jalan Angsana 789'),(105,'Greyson Davis','Jalan Sakura 321'),(106,'Bella Bennett','Jalan Flamboyan 654'),(107,'Evan Adams','Jalan Kamboja 987'),(108,'Scarlett Cooper','Jalan Tulip 234'),(109,'Nicholas Richardson','Jalan Mawar 567'),(110,'Hannah Morgan','Jalan Melati 890'),(111,'Riley Foster','Jalan Kenanga 123'),(112,'Leah Ross','Jalan Raya 456'),(113,'Nolan Evans','Jalan Anggrek 789'),(114,'Nolan Evans','Jalan Anggrek 789'),(115,'Avery Barnes','Jalan Dahlia 321'),(116,'Eli Simmons','Jalan Cempaka 654'),(117,'Scarlett Hughes','Jalan Angsana 987'),(118,'Adam Turner','Jalan Sakura 234'),(119,'Aurora Murphy','Jalan Flamboyan 567'),(120,'Lucas Cox','Jalan Kamboja 890'),(121,'Eleanor Collins','Jalan Tulip 123'),(122,'Isaiah Diaz','Jalan Mawar 456'),(123,'Skylar Powell','Jalan Melati 789'),(124,'Zoe Richardson','Jalan Kenanga 321'),(125,'David Bell','Jalan Raya 654'),(126,'Stella Nelson','Jalan Anggrek 987'),(127,'Nathan Carter','Jalan Dahlia 234'),(128,'Lily Foster','Jalan Cempaka 567'),(129,'Oliver Gonzalez','Jalan Angsana 890'),(130,'Aria Price','Jalan Sakura 123'),(131,'Elijah Cook','Jalan Flamboyan 456'),(132,'Chloe Cox','Jalan Kamboja 789'),(133,'Jacob Brooks','Jalan Tulip 321'),(134,'Amelia Butler','Jalan Mawar 654'),(135,'Daniel Ross','Jalan Melati 987'),(136,'Sophia Stewart','Jalan Kenanga 234'),(137,'Mason Richardson','Jalan Raya 567'),(138,'Emily Phillips','Jalan Anggrek 890'),(139,'James Patterson','Jalan Dahlia 123'),(140,'Harper Davis','Jalan Cempaka 456'),(141,'Liam Adams','Jalan Angsana 789'),(142,'Emma Nguyen','Jalan Sakura 321'),(143,'Aiden Morgan','Jalan Flamboyan 654'),(144,'Mia Bell','Jalan Kamboja 987'),(145,'Benjamin Griffin','Jalan Tulip 234'),(146,'Avery Lewis','Jalan Mawar 567'),(147,'Charlotte Green','Jalan Melati 890'),(148,'Lucas Adams','Jalan Kenanga 123'),(149,'Grace Richardson','Jalan Raya 456'),(150,'Noah Hughes','Jalan Anggrek 789'),(151,'Isabella Powell','Jalan Dahlia 321'),(152,'Michael Simmons','Jalan Cempaka 654'),(153,'Aria Hill','Jalan Angsana 987'),(154,'Oliver Butler','Jalan Sakura 234'),(155,'Evelyn Barnes','Jalan Flamboyan 567'),(156,'Henry Phillips','Jalan Kamboja 890'),(157,'Sophia Cox','Jalan Tulip 123'),(158,'Logan Ross','Jalan Mawar 456'),(159,'Mila Foster','Jalan Melati 789'),(160,'Jacob Gonzalez','Jalan Kenanga 321'),(161,'Harper Stewart','Jalan Raya 654'),(162,'Aiden Richardson','Jalan Anggrek 987'),(163,'Ella Bell','Jalan Dahlia 234'),(164,'Carter Cook','Jalan Cempaka 567'),(165,'Mia Nelson','Jalan Angsana 890'),(166,'Alexander Patterson','Jalan Sakura 123'),(167,'Luna Davis','Jalan Flamboyan 456'),(168,'Daniel Brooks','Jalan Kamboja 789'),(169,'Chloe Hill','Jalan Tulip 321'),(170,'Samuel Simmons','Jalan Mawar 654'),(171,'Scarlett Green','Jalan Melati 890'),(172,'Elijah Adams','Jalan Kenanga 123'),(173,'Ava Richardson','Jalan Raya 456'),(174,'Liam Hughes','Jalan Anggrek 789'),(175,'Mila Powell','Jalan Dahlia 321'),(176,'Lucas Cox','Jalan Cempaka 654'),(177,'Evelyn Stewart','Jalan Angsana 987'),(178,'Oliver Butler','Jalan Sakura 234'),(179,'Isabella Barnes','Jalan Flamboyan 567'),(180,'Henry Phillips','Jalan Kamboja 890'),(181,'Sophia Cox','Jalan Tulip 123'),(182,'Logan Ross','Jalan Mawar 456'),(183,'Mila Foster','Jalan Melati 789'),(184,'Jacob Gonzalez','Jalan Kenanga 321'),(185,'Harper Stewart','Jalan Raya 654'),(186,'Aiden Richardson','Jalan Anggrek 987'),(187,'Ella Bell','Jalan Dahlia 234'),(188,'Carter Cook','Jalan Cempaka 567'),(189,'Mia Nelson','Jalan Angsana 890'),(190,'Alexander Patterson','Jalan Sakura 123'),(191,'Luna Davis','Jalan Flamboyan 456'),(192,'Daniel Brooks','Jalan Kamboja 789'),(193,'Chloe Hill','Jalan Tulip 321'),(194,'Samuel Simmons','Jalan Mawar 654'),(195,'Scarlett Green','Jalan Melati 890');
/*!40000 ALTER TABLE `userlain` ENABLE KEYS */;
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

--
-- Table structure for table `usersbanyak`
--

DROP TABLE IF EXISTS `usersbanyak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usersbanyak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersbanyak`
--

LOCK TABLES `usersbanyak` WRITE;
/*!40000 ALTER TABLE `usersbanyak` DISABLE KEYS */;
INSERT INTO `usersbanyak` VALUES (1,'John Doe','Jalan Raya 123'),(2,'Jane Smith','Jalan Mawar 456'),(3,'David Johnson','Jalan Kenanga 789'),(4,'Sarah Williams','Jalan Melati 321'),(5,'Michael Brown','Jalan Anggrek 654'),(6,'Michelle Lee','Jalan Dahlia 987'),(7,'Robert Wilson','Jalan Cempaka 234'),(8,'Emily Taylor','Jalan Angsana 567'),(9,'Daniel Anderson','Jalan Sakura 890'),(10,'Olivia Martinez','Jalan Flamboyan 432'),(11,'William Sanjaya','Jalan Nangka Lande 876'),(12,'William James Moriarty','Jl. TB Simatupang No.99'),(13,'James Rodriguez','Jalan Mawar 543'),(14,'Emma Hernandez','Jalan Melati 876'),(15,'Benjamin Moore','Jalan Kenanga 210'),(16,'Ava Lopez','Jalan Raya 543'),(17,'Alexander Clark','Jalan Anggrek 876'),(18,'Mia Lewis','Jalan Dahlia 109'),(19,'Henry Young','Jalan Cempaka 432'),(20,'Charlotte Hall','Jalan Angsana 765'),(21,'Joseph King','Jalan Sakura 098'),(22,'Madison Scott','Jalan Flamboyan 321'),(23,'Samuel Green','Jalan Kamboja 654'),(24,'Chloe Hill','Jalan Tulip 987'),(25,'David Ward','Jalan Mawar 234'),(26,'Ella Turner','Jalan Melati 567'),(27,'Jackson Phillips','Jalan Kenanga 890'),(28,'Amelia Bennett','Jalan Raya 123'),(29,'Matthew Reed','Jalan Anggrek 456'),(30,'Abigail Murphy','Jalan Dahlia 789'),(31,'Daniel Butler','Jalan Cempaka 321'),(32,'Sofia Nguyen','Jalan Angsana 654'),(33,'Andrew Foster','Jalan Sakura 987'),(34,'Charlotte Simmons','Jalan Flamboyan 234'),(35,'David Gray','Jalan Kamboja 567'),(36,'Avery Howard','Jalan Tulip 890'),(37,'Evelyn Cox','Jalan Mawar 109'),(38,'James Diaz','Jalan Melati 432'),(39,'Ella Perez','Jalan Kenanga 765'),(40,'Lucas Coleman','Jalan Raya 098'),(41,'Scarlett Barnes','Jalan Anggrek 321'),(42,'Victoria Barnes','Jalan Dahlia 654'),(43,'Liam Nelson','Jalan Cempaka 987'),(44,'Harper Bell','Jalan Angsana 234'),(45,'Logan Ward','Jalan Sakura 567'),(46,'Grace Sanders','Jalan Flamboyan 890'),(47,'Lucas Davis','Jalan Kamboja 123'),(48,'Nora Rivera','Jalan Tulip 456'),(49,'Henry Evans','Jalan Mawar 789'),(50,'Lily Reed','Jalan Melati 321'),(51,'Wyatt Mitchell','Jalan Kenanga 654'),(52,'Zoe Torres','Jalan Raya 987'),(53,'Joseph Edwards','Jalan Anggrek 234'),(54,'Aubrey Adams','Jalan Dahlia 567'),(55,'Carter Rodriguez','Jalan Cempaka 890'),(56,'Penelope Collins','Jalan Angsana'),(57,'Maxwell Jenkins','Jalan Sakura 123'),(58,'Luna Hughes','Jalan Flamboyan 456'),(59,'Henry Cooper','Jalan Kamboja 789'),(60,'Mila Turner','Jalan Tulip 321'),(61,'Sebastian Murphy','Jalan Mawar 654'),(62,'Hazel Morgan','Jalan Melati 987'),(63,'Leo Foster','Jalan Kenanga 234'),(64,'Stella Ross','Jalan Raya 567'),(65,'Gabriel Richardson','Jalan Anggrek 890'),(66,'Ellie Powell','Jalan Dahlia 123'),(67,'David Simmons','Jalan Cempaka 456'),(68,'Aria Henderson','Jalan Angsana 789'),(69,'Owen Stewart','Jalan Sakura 321'),(70,'Ariana Hayes','Jalan Flamboyan 654'),(71,'Samuel Bennett','Jalan Kamboja 987'),(72,'Eleanor Cooper','Jalan Tulip 234'),(73,'Isaac Reed','Jalan Mawar 567'),(74,'Clara Ross','Jalan Melati 890'),(75,'Elijah Rivera','Jalan Kenanga 123'),(76,'Lillian Collins','Jalan Raya 456'),(77,'Xavier Diaz','Jalan Anggrek 789'),(78,'Skylar Adams','Jalan Dahlia 321'),(79,'Lucy Wilson','Jalan Cempaka 654'),(80,'Nathan Ward','Jalan Angsana 987'),(81,'Ruby Carter','Jalan Sakura 234'),(82,'Mason Sanders','Jalan Flamboyan 567'),(83,'Sadie Griffin','Jalan Kamboja 890'),(84,'Jackson Gonzalez','Jalan Tulip 123'),(85,'Gabriella Price','Jalan Mawar 456'),(86,'Christopher Campbell','Jalan Melati 789'),(87,'Zoey Brooks','Jalan Kenanga 321'),(88,'Lincoln Powell','Jalan Raya 654'),(89,'Maya Stewart','Jalan Anggrek 987'),(90,'Eliana Cook','Jalan Dahlia 234'),(91,'Caleb Cox','Jalan Cempaka 567'),(92,'Aaliyah Nelson','Jalan Angsana 890'),(93,'Jonathan Phillips','Jalan Sakura 123'),(94,'Addison Hughes','Jalan Flamboyan 456'),(95,'Aaron Bell','Jalan Kamboja 789'),(96,'Paisley Hill','Jalan Tulip 321'),(97,'Gavin Simmons','Jalan Mawar 654'),(98,'Audrey Patterson','Jalan Melati 987'),(99,'Austin Rivera','Jalan Kenanga 234'),(100,'Brooklyn Richardson','Jalan Raya 567'),(101,'Leo Butler','Jalan Anggrek 890'),(102,'Natalie Nguyen','Jalan Dahlia 123'),(103,'Julian Morris','Jalan Cempaka 456'),(104,'Aria Sanders','Jalan Angsana 789'),(105,'Greyson Davis','Jalan Sakura 321'),(106,'Bella Bennett','Jalan Flamboyan 654'),(107,'Evan Adams','Jalan Kamboja 987'),(108,'Scarlett Cooper','Jalan Tulip 234'),(109,'Nicholas Richardson','Jalan Mawar 567'),(110,'Hannah Morgan','Jalan Melati 890'),(111,'Riley Foster','Jalan Kenanga 123'),(112,'Leah Ross','Jalan Raya 456'),(113,'Nolan Evans','Jalan Anggrek 789'),(114,'Nolan Evans','Jalan Anggrek 789'),(115,'Avery Barnes','Jalan Dahlia 321'),(116,'Eli Simmons','Jalan Cempaka 654'),(117,'Scarlett Hughes','Jalan Angsana 987'),(118,'Adam Turner','Jalan Sakura 234'),(119,'Aurora Murphy','Jalan Flamboyan 567'),(120,'Lucas Cox','Jalan Kamboja 890'),(121,'Eleanor Collins','Jalan Tulip 123'),(122,'Isaiah Diaz','Jalan Mawar 456'),(123,'Skylar Powell','Jalan Melati 789'),(124,'Zoe Richardson','Jalan Kenanga 321'),(125,'David Bell','Jalan Raya 654'),(126,'Stella Nelson','Jalan Anggrek 987'),(127,'Nathan Carter','Jalan Dahlia 234'),(128,'Lily Foster','Jalan Cempaka 567'),(129,'Oliver Gonzalez','Jalan Angsana 890'),(130,'Aria Price','Jalan Sakura 123'),(131,'Elijah Cook','Jalan Flamboyan 456'),(132,'Chloe Cox','Jalan Kamboja 789'),(133,'Jacob Brooks','Jalan Tulip 321'),(134,'Amelia Butler','Jalan Mawar 654'),(135,'Daniel Ross','Jalan Melati 987'),(136,'Sophia Stewart','Jalan Kenanga 234'),(137,'Mason Richardson','Jalan Raya 567'),(138,'Emily Phillips','Jalan Anggrek 890'),(139,'James Patterson','Jalan Dahlia 123'),(140,'Harper Davis','Jalan Cempaka 456'),(141,'Liam Adams','Jalan Angsana 789'),(142,'Emma Nguyen','Jalan Sakura 321'),(143,'Aiden Morgan','Jalan Flamboyan 654'),(144,'Mia Bell','Jalan Kamboja 987'),(145,'Benjamin Griffin','Jalan Tulip 234'),(146,'Avery Lewis','Jalan Mawar 567'),(147,'Charlotte Green','Jalan Melati 890'),(148,'Lucas Adams','Jalan Kenanga 123'),(149,'Grace Richardson','Jalan Raya 456'),(150,'Noah Hughes','Jalan Anggrek 789'),(151,'Isabella Powell','Jalan Dahlia 321'),(152,'Michael Simmons','Jalan Cempaka 654'),(153,'Aria Hill','Jalan Angsana 987'),(154,'Oliver Butler','Jalan Sakura 234'),(155,'Evelyn Barnes','Jalan Flamboyan 567'),(156,'Henry Phillips','Jalan Kamboja 890'),(157,'Sophia Cox','Jalan Tulip 123'),(158,'Logan Ross','Jalan Mawar 456'),(159,'Mila Foster','Jalan Melati 789'),(160,'Jacob Gonzalez','Jalan Kenanga 321'),(161,'Harper Stewart','Jalan Raya 654'),(162,'Aiden Richardson','Jalan Anggrek 987'),(163,'Ella Bell','Jalan Dahlia 234'),(164,'Carter Cook','Jalan Cempaka 567'),(165,'Mia Nelson','Jalan Angsana 890'),(166,'Alexander Patterson','Jalan Sakura 123'),(167,'Luna Davis','Jalan Flamboyan 456'),(168,'Daniel Brooks','Jalan Kamboja 789'),(169,'Chloe Hill','Jalan Tulip 321'),(170,'Samuel Simmons','Jalan Mawar 654'),(171,'Scarlett Green','Jalan Melati 890'),(172,'Elijah Adams','Jalan Kenanga 123'),(173,'Ava Richardson','Jalan Raya 456'),(174,'Liam Hughes','Jalan Anggrek 789'),(175,'Mila Powell','Jalan Dahlia 321'),(176,'Lucas Cox','Jalan Cempaka 654'),(177,'Evelyn Stewart','Jalan Angsana 987'),(178,'Oliver Butler','Jalan Sakura 234'),(179,'Isabella Barnes','Jalan Flamboyan 567'),(180,'Henry Phillips','Jalan Kamboja 890'),(181,'Sophia Cox','Jalan Tulip 123'),(182,'Logan Ross','Jalan Mawar 456'),(183,'Mila Foster','Jalan Melati 789'),(184,'Jacob Gonzalez','Jalan Kenanga 321'),(185,'Harper Stewart','Jalan Raya 654'),(186,'Aiden Richardson','Jalan Anggrek 987'),(187,'Ella Bell','Jalan Dahlia 234'),(188,'Carter Cook','Jalan Cempaka 567'),(189,'Mia Nelson','Jalan Angsana 890'),(190,'Alexander Patterson','Jalan Sakura 123'),(191,'Luna Davis','Jalan Flamboyan 456'),(192,'Daniel Brooks','Jalan Kamboja 789'),(193,'Chloe Hill','Jalan Tulip 321'),(194,'Samuel Simmons','Jalan Mawar 654'),(195,'Scarlett Green','Jalan Melati 890');
/*!40000 ALTER TABLE `usersbanyak` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-25 11:56:55
