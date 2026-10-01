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
-- Table structure for table `film_actor`
--

DROP TABLE IF EXISTS `film_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_actor` (
  `actor_id` smallint unsigned NOT NULL,
  `film_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`actor_id`,`film_id`),
  KEY `fk_film_actor_film` (`film_id`),
  CONSTRAINT `fk_film_actor_actor` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_film_actor_film` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_actor`
--

LOCK TABLES `film_actor` WRITE;
/*!40000 ALTER TABLE `film_actor` DISABLE KEYS */;
INSERT INTO `film_actor` VALUES (1,1),(10,1),(5,19),(1,23),(4,23),(1,25),(4,25),(7,25),(6,29),(9,30),(2,31),(3,42),(4,56),(6,60),(7,67),(4,79),(2,105),(6,112),(1,140),(2,145),(6,164),(6,165),(7,170),(5,172),(7,173),(8,179),(9,191),(10,191),(6,193),(9,200),(5,202),(5,203),(9,204),(7,218),(7,225),(10,236),(2,249),(10,251),(8,255),(8,263),(5,286),(5,288),(3,289),(7,292),(2,314),(3,329),(3,336),(3,341),(1,361),(10,366),(2,369),(5,369),(4,379),(5,383),(3,393),(4,398),(9,434),(1,438),(3,441),(3,453),(10,477),(3,480),(10,480),(2,481),(5,503),(6,503),(1,506),(9,514),(6,517),(2,518),(6,519),(10,522),(3,539),(2,540),(2,550),(7,554),(8,554),(2,555),(5,571),(4,616),(3,618),(7,618),(7,633),(7,637),(5,665),(4,691),(7,691),(6,692),(10,703),(4,714),(4,721),(5,730),(5,732),(7,758),(7,770),(8,771),(10,782),(4,798),(7,806),(2,811),(5,811),(9,811),(6,826),(5,841),(7,846),(4,858),(8,859),(5,865),(9,865),(9,873),(8,895),(7,900),(7,901),(6,902),(9,903),(10,914),(4,924),(9,926),(10,929),(10,930),(8,936),(1,939),(7,957),(9,964),(10,964),(3,966),(10,966),(3,967),(1,970),(3,971),(9,974);
/*!40000 ALTER TABLE `film_actor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-12 21:32:14
