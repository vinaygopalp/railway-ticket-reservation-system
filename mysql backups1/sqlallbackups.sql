-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: first_page
-- ------------------------------------------------------
-- Server version	5.5.62

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CustID` int(7) NOT NULL DEFAULT '0',
  `CustName` varchar(30) DEFAULT NULL,
  `CustAdd` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `CustPhone` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CustID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `Doctor_id` char(3) NOT NULL DEFAULT '',
  `Doctor_Name` varchar(30) DEFAULT NULL,
  `Hospital_id` char(3) DEFAULT NULL,
  `Joing_date` date DEFAULT NULL,
  `Speciality` varchar(15) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Experience` int(2) DEFAULT NULL,
  PRIMARY KEY (`Doctor_id`),
  KEY `Hospital_id` (`Hospital_id`),
  CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`Hospital_id`) REFERENCES `hospital` (`Hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES ('04','XVZ','20','2005-01-05','DENTIST',5000000,7),('05','RVZ','72','2006-01-05','DENTIST',700000,9);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital` (
  `Hospital_id` char(2) NOT NULL DEFAULT '',
  `Hospital_Name` varchar(30) DEFAULT NULL,
  `Bed_count` int(3) DEFAULT NULL,
  PRIMARY KEY (`Hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES ('2','saka',301),('20','sakra',300),('72','SANJEEVANI',1);
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `railway_database`
--

DROP TABLE IF EXISTS `railway_database`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `railway_database` (
  `PASSENGER_NAME` varchar(30) DEFAULT NULL,
  `PASSENGER_AGE` int(2) DEFAULT NULL,
  `PASSENGER_DATE_OF_BIRTH` date DEFAULT NULL,
  `GENDER` varchar(30) DEFAULT NULL,
  `TRAIN_NAME` varchar(30) DEFAULT NULL,
  `ORIGIN` varchar(30) DEFAULT NULL,
  `DESTINATION` varchar(30) DEFAULT NULL,
  `DATE_OF_TRAVEL` date DEFAULT NULL,
  `CLASS` varchar(30) DEFAULT NULL,
  `PHONE_NUMBER` int(11) DEFAULT NULL,
  `COST` varchar(20) DEFAULT NULL,
  `SEAT_NUMBER` varchar(20) DEFAULT NULL,
  `COACH_NUMBER` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `railway_database`
--

LOCK TABLES `railway_database` WRITE;
/*!40000 ALTER TABLE `railway_database` DISABLE KEYS */;
INSERT INTO `railway_database` VALUES ('milind',34,'1995-01-17','MALE','chennai express','Chennai','Raipur','2021-01-15','SLEEPER CLASS',535435353,'RS6000','1','S1'),('FHGHDF',54,'2000-01-01','MALE','CHENNAI EXPRESS','Chennai','Raipur','2000-01-01','SLEEPER CLASS',4564644,'RS6000','1','S1'),('prateek',17,'2004-07-11','MALE','chennai express','Chennai','Raipur','2021-01-15','AC CLASS',56435644,'RS7000','1','A1'),('prateek',17,'2000-01-01','MALE','chennai express','Chennai','Raipur','2020-01-01','SLEEPER CLASS',235254234,'RS6000','1','S1'),('GVHCGH',56,'2000-01-01','MALE','CHENNAI EXPRESS','Chennai','Raipur','2000-01-01','SLEEPER CLASS',6757576,'RS6000','2','S2'),('fsdfs',23,'2000-01-01','MALE','chennai express','Chennai','Raipur','2021-01-14','SLEEPER CLASS',234234232,'RS6000','1','S1'),('ertert',33,'2000-01-01','MALE','chennai express','Chennai','Raipur','2000-01-01','SLEEPER CLASS',234234234,'RS6000','3','S3'),('vbhfg',23,'2000-01-01','MALE','chennai express','Chennai','Raipur','2000-01-01','SLEEPER CLASS',234523453,'RS6000','4','S4');
/*!40000 ALTER TABLE `railway_database` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-06 14:38:01
