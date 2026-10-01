-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: tvondemand
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `film_category`
--

DROP TABLE IF EXISTS `film_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_category` (
  `film_id` smallint unsigned NOT NULL,
  `category_id` tinyint unsigned NOT NULL,
  PRIMARY KEY (`film_id`,`category_id`),
  KEY `fk_film_category_category` (`category_id`),
  CONSTRAINT `fk_film_category_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_film_category_film` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_category`
--

LOCK TABLES `film_category` WRITE;
/*!40000 ALTER TABLE `film_category` DISABLE KEYS */;
INSERT INTO `film_category` VALUES (19,1),(29,1),(56,1),(67,1),(105,1),(292,1),(329,1),(732,1),(964,1),(23,2),(193,2),(314,2),(692,2),(703,2),(859,2),(865,2),(901,2),(191,3),(873,3),(60,4),(249,4),(341,4),(480,4),(554,4),(633,4),(895,4),(970,4),(202,5),(522,5),(555,5),(858,5),(939,5),(1,6),(164,6),(336,6),(393,6),(441,6),(571,6),(616,6),(926,6),(966,6),(79,7),(172,7),(173,7),(179,7),(204,7),(218,7),(225,7),(366,7),(379,7),(514,7),(539,7),(618,7),(758,7),(771,7),(31,8),(145,8),(550,8),(112,9),(170,9),(770,9),(900,9),(929,9),(957,9),(971,9),(200,10),(236,10),(438,10),(30,11),(506,11),(665,11),(255,12),(398,12),(477,12),(540,12),(721,12),(936,12),(25,13),(251,13),(289,13),(481,13),(730,13),(806,13),(846,13),(974,13),(140,14),(165,14),(203,14),(369,14),(637,14),(714,14),(798,14),(924,14),(930,14),(967,14),(42,15),(263,15),(361,15),(383,15),(453,15),(503,15),(517,15),(519,15),(691,15),(782,15),(841,15),(902,15),(286,16),(288,16),(434,16),(518,16),(811,16),(826,16),(903,16),(914,16);
/*!40000 ALTER TABLE `film_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-12 21:32:19
