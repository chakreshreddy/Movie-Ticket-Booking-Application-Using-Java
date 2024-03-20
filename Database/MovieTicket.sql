CREATE DATABASE  IF NOT EXISTS `ticketbooking` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ticketbooking`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: ticketbooking
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `t_book`
--

DROP TABLE IF EXISTS `t_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_book` (
  `ID` bigint(20) NOT NULL,
  `userName` varchar(225) DEFAULT NULL,
  `movieId` bigint(20) DEFAULT NULL,
  `movieName` varchar(225) DEFAULT NULL,
  `bookDate` date DEFAULT NULL,
  `showTime` varchar(225) DEFAULT NULL,
  `noOfPerson` bigint(20) DEFAULT NULL,
  `FinalAmount` bigint(20) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mobileNo` varchar(225) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_t_book` (`movieId`),
  CONSTRAINT `FK_t_book` FOREIGN KEY (`movieId`) REFERENCES `t_movie` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_book`
--

LOCK TABLES `t_book` WRITE;
/*!40000 ALTER TABLE `t_book` DISABLE KEYS */;
INSERT INTO `t_book` VALUES (1,'Quamar Dejesus',1,'Bharat','2018-10-10','12:00 PM To 3:00 PM',5,500,'Customer@gmail.com','Customer@gmail.com','2019-05-29 06:57:41','2019-05-29 06:57:41',NULL,NULL),(3,'Wendy Mccall',1,'Bharat','2018-10-10','9:00 AM To 12:00 PM',5,500,'Non@gmail.com','Non@gmail.com','2019-05-29 16:52:38','2019-05-29 16:52:38',NULL,NULL),(4,'Vladimir Valencia',1,'Bharat','2018-10-10','9:00 AM To 12:00 PM',2,200,'Asd@gmail.com','Asd@gmail.com','2019-05-29 17:08:04','2019-05-29 17:08:04',NULL,NULL),(5,'Shivaj',1,'Bharat','2018-10-10','12:00 PM To 3:00 PM',6,600,'root','root','2019-05-30 16:23:19','2019-05-30 16:23:19','6525365245','nyqaf@mailinator.net'),(6,'Demo',1,'Bharat','2018-10-10','12:00 PM To 3:00 PM',6,600,'root','root','2019-05-31 16:14:16','2019-05-31 16:14:16','9565256545','Demo@123');
/*!40000 ALTER TABLE `t_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_movie`
--

DROP TABLE IF EXISTS `t_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_movie` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `certificate` varchar(225) DEFAULT NULL,
  `type` varchar(225) DEFAULT NULL,
  `language` varchar(225) DEFAULT NULL,
  `duration` varchar(225) DEFAULT NULL,
  `director` varchar(225) DEFAULT NULL,
  `cast` varchar(225) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `image` varchar(225) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_movie`
--

LOCK TABLES `t_movie` WRITE;
/*!40000 ALTER TABLE `t_movie` DISABLE KEYS */;
INSERT INTO `t_movie` VALUES (1,'Bharat','U/A','DRAMA','Hindi','150 Minute','Ali Abbas Zafar','Salman Khan,\r\nKatrina Kaif,\r\nTabu,\r\nDisha Patani,\r\nSunil Grover,\r\nJackie Shroff','Bharat is based on the South Korean melodrama Ode to My Father (2014), which traces the history of South Korea parallel to a man\'s life, spanning from the 1950s to the 2010s.[3][4] During the Partition of India in 1947','Admin@gmail.com','Admin@gmail.com','2019-05-28 22:35:47','2019-05-28 23:09:21','MV5BYzRjMTY1MzktZGRmNi00YjM0LWJkOTUtMmI0Z.jpg',100);
/*!40000 ALTER TABLE `t_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES (1,'Admin','Administration',NULL,NULL,'2019-05-28 19:30:28','2019-05-28 19:30:31'),(2,'Customer','Customer',NULL,NULL,'2019-05-28 19:30:45','2019-05-28 19:30:47');
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `ID` bigint(20) NOT NULL,
  `firstName` varchar(225) DEFAULT NULL,
  `lastName` varchar(225) DEFAULT NULL,
  `login` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'Alekh','Jain','Admin@gmail.com','Admin@123','8325456522',1,'root','root','2019-05-28 19:30:09','2019-05-28 19:29:44'),(2,'Quamar','Dejesus','Customer@gmail.com','Cus@123','9565412535',2,'root','root','2019-05-29 01:06:06','2019-05-29 01:06:06'),(3,'Yoshi','Rowland','Quasenim@gmail.com','Pa$$w0rd!','9565856544',2,'root','root','2019-05-29 06:46:38','2019-05-29 06:46:38'),(4,'Wendy','Mccall','Non@gmail.com','Demo@123','7858968596',2,'root','root','2019-05-29 16:51:59','2019-05-29 16:51:59'),(5,'Vladimir','Valencia','Asd@gmail.com','Asd@123','7858968596',2,'root','root','2019-05-29 17:07:16','2019-05-29 17:07:16'),(6,'bhupi','patidar','bhupi@gmail.com','Bhupi@123','9993146134',2,'root','root','2019-07-02 05:17:08','2019-07-02 05:17:35');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-05 10:43:23
