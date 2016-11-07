-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: emrApp
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

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
-- Table structure for table `cd4testData`
--

DROP TABLE IF EXISTS `cd4testData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd4testData` (
  `patientId` int(8) DEFAULT NULL,
  `cd4testnum` int(8) DEFAULT NULL,
  `cd4testnotes` varchar(100) DEFAULT NULL,
  `cd4testdate` date DEFAULT NULL,
  KEY `patientId` (`patientId`),
  CONSTRAINT `cd4testData_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patientData` (`patientId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `loadtestData`
--

DROP TABLE IF EXISTS `loadtestData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loadtestData` (
  `patientId` int(8) DEFAULT NULL,
  `loadtestnum` int(8) DEFAULT NULL,
  `loadtestnotes` varchar(100) DEFAULT NULL,
  `loadtestdate` date DEFAULT NULL,
  KEY `patientId` (`patientId`),
  CONSTRAINT `loadtestData_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patientData` (`patientId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patientData`
--

DROP TABLE IF EXISTS `patientData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientData` (
  `patientId` int(8) NOT NULL AUTO_INCREMENT,
  `pFname` varchar(16) NOT NULL,
  `pLname` varchar(16) NOT NULL,
  `pDOB` date NOT NULL,
  `regDate` date DEFAULT NULL,
  PRIMARY KEY (`patientId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `providerData`
--

DROP TABLE IF EXISTS `providerData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providerData` (
  `proId` int(8) NOT NULL AUTO_INCREMENT,
  `proUsername` varchar(16) NOT NULL,
  `proFname` varchar(16) NOT NULL,
  `proLname` varchar(16) NOT NULL,
  `proEmail` varchar(16) NOT NULL,
  `proPassword` varchar(16) NOT NULL,
  PRIMARY KEY (`proId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `surveyData`
--

DROP TABLE IF EXISTS `surveyData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyData` (
  `surveyId` int(8) NOT NULL AUTO_INCREMENT,
  `patientId` int(8) DEFAULT NULL,
  `question1` varchar(32) DEFAULT NULL,
  `question2` varchar(32) DEFAULT NULL,
  `question3` varchar(32) DEFAULT NULL,
  `question4` varchar(32) DEFAULT NULL,
  `dateTaken` date DEFAULT NULL,
  PRIMARY KEY (`surveyId`),
  KEY `patientId` (`patientId`),
  CONSTRAINT `surveyData_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patientData` (`patientId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-07 10:05:26
