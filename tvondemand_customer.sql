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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address_id` smallint unsigned NOT NULL,
  `active` tinyint(1) NOT NULL,
  `create_date` datetime NOT NULL,
  `rental_id` int DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `fk_customer_address` (`address_id`),
  KEY `fk_costumer_rental` (`rental_id`),
  CONSTRAINT `fk_costumer_rental` FOREIGN KEY (`rental_id`) REFERENCES `rental` (`rental_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_customer_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=597 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (3,'LINDA','WILLIAMS','LINDA.WILLIAMS@sakilacustomer.org',7,1,'2006-02-14 22:04:36',NULL),(16,'SANDRA','MARTIN','SANDRA.MARTIN@sakilacustomer.org',20,0,'2006-02-14 22:04:36',NULL),(33,'ANNA','HILL','ANNA.HILL@sakilacustomer.org',37,1,'2006-02-14 22:04:36',NULL),(35,'VIRGINIA','GREEN','VIRGINIA.GREEN@sakilacustomer.org',39,1,'2006-02-14 22:04:36',NULL),(52,'JULIE','SANCHEZ','JULIE.SANCHEZ@sakilacustomer.org',56,1,'2006-02-14 22:04:36',NULL),(85,'ANNE','POWELL','ANNE.POWELL@sakilacustomer.org',89,1,'2006-02-14 22:04:36',NULL),(104,'RITA','GRAHAM','RITA.GRAHAM@sakilacustomer.org',108,1,'2006-02-14 22:04:36',NULL),(114,'GRACE','ELLIS','GRACE.ELLIS@sakilacustomer.org',118,1,'2006-02-14 22:04:36',NULL),(142,'APRIL','BURNS','APRIL.BURNS@sakilacustomer.org',146,1,'2006-02-14 22:04:36',NULL),(162,'LAUREN','HUDSON','LAUREN.HUDSON@sakilacustomer.org',166,1,'2006-02-14 22:04:36',NULL),(195,'VANESSA','SIMS','VANESSA.SIMS@sakilacustomer.org',199,1,'2006-02-14 22:04:36',NULL),(196,'ALMA','AUSTIN','ALMA.AUSTIN@sakilacustomer.org',200,1,'2006-02-14 22:04:36',NULL),(201,'VICKI','FIELDS','VICKI.FIELDS@sakilacustomer.org',205,1,'2006-02-14 22:04:36',NULL),(221,'BESSIE','MORRISON','BESSIE.MORRISON@sakilacustomer.org',225,1,'2006-02-14 22:04:36',NULL),(227,'COLLEEN','BURTON','COLLEEN.BURTON@sakilacustomer.org',231,1,'2006-02-14 22:04:36',NULL),(251,'VICKIE','BREWER','VICKIE.BREWER@sakilacustomer.org',255,1,'2006-02-14 22:04:36',NULL),(252,'MATTIE','HOFFMAN','MATTIE.HOFFMAN@sakilacustomer.org',256,1,'2006-02-14 22:04:36',NULL),(293,'MAE','FLETCHER','MAE.FLETCHER@sakilacustomer.org',298,1,'2006-02-14 22:04:37',NULL),(309,'CHRISTOPHER','GRECO','CHRISTOPHER.GRECO@sakilacustomer.org',314,1,'2006-02-14 22:04:37',NULL),(394,'CHRIS','BROTHERS','CHRIS.BROTHERS@sakilacustomer.org',399,1,'2006-02-14 22:04:37',NULL),(402,'LUIS','YANEZ','LUIS.YANEZ@sakilacustomer.org',407,1,'2006-02-14 22:04:37',NULL),(439,'ALEXANDER','FENNELL','ALEXANDER.FENNELL@sakilacustomer.org',444,1,'2006-02-14 22:04:37',NULL),(448,'MIGUEL','BETANCOURT','MIGUEL.BETANCOURT@sakilacustomer.org',453,1,'2006-02-14 22:04:37',NULL),(469,'WESLEY','BULL','WESLEY.BULL@sakilacustomer.org',474,1,'2006-02-14 22:04:37',NULL),(477,'DAN','PAINE','DAN.PAINE@sakilacustomer.org',482,1,'2006-02-14 22:04:37',NULL),(497,'GILBERT','SLEDGE','GILBERT.SLEDGE@sakilacustomer.org',502,1,'2006-02-14 22:04:37',NULL),(499,'MARC','OUTLAW','MARC.OUTLAW@sakilacustomer.org',504,1,'2006-02-14 22:04:37',NULL),(512,'CECIL','VINES','CECIL.VINES@sakilacustomer.org',517,1,'2006-02-14 22:04:37',NULL),(525,'ADRIAN','CLARY','ADRIAN.CLARY@sakilacustomer.org',531,1,'2006-02-14 22:04:37',NULL),(541,'DARREN','WINDHAM','DARREN.WINDHAM@sakilacustomer.org',547,1,'2006-02-14 22:04:37',NULL),(549,'NELSON','CHRISTENSON','NELSON.CHRISTENSON@sakilacustomer.org',555,1,'2006-02-14 22:04:37',NULL),(556,'ARMANDO','GRUBER','ARMANDO.GRUBER@sakilacustomer.org',562,1,'2006-02-14 22:04:37',NULL),(583,'MARSHALL','THORN','MARSHALL.THORN@sakilacustomer.org',589,1,'2006-02-14 22:04:37',NULL),(596,'ENRIQUE','FORSYTHE','ENRIQUE.FORSYTHE@sakilacustomer.org',602,1,'2006-02-14 22:04:37',NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-12 21:32:18
