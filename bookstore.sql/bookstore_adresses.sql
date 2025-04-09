-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `adresses`
--

DROP TABLE IF EXISTS `adresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adresses` (
  `adress_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `adress_text` text,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`adress_id`),
  KEY `customer_id` (`customer_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `adresses_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `adresses_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `adress_status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- insert values into the table
INSERT INTO `adresses` (`adress_id`, `customer_id`, `country_id`, `adress_text`, `status_id`) VALUES
(1, 1, 1, '123 Main St, Springfield, USA', 1),
(2, 2, 2, '456 Elm St, Springfield, USA', 2),
(3, 3, 3, '789 Oak St, Springfield, USA', 3),
(4, 4, 4, '101 Pine St, Springfield, USA', 4),
(5, 5, 5, '202 Maple St, Springfield, USA', 5);
(6, 6, 6, '303 Birch St, Springfield, USA', 6),
(7, 7, 7, '404 Cedar St, Springfield, USA', 7),
(8, 8, 8, '505 Walnut St, Springfield, USA', 8),
(9, 9, 9, '606 Chestnut St, Springfield, USA', 9),
(10, 10, 10, '707 Spruce St, Springfield, USA', 10);




/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresses`
--

LOCK TABLES `adresses` WRITE;
/*!40000 ALTER TABLE `adresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `adresses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-09 18:58:02
