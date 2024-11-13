-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: mychecklist
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `fourthyear`
--

DROP TABLE IF EXISTS `fourthyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fourthyear` (
  `student_Number` varchar(40) DEFAULT NULL,
  `course_Code` varchar(30) DEFAULT NULL,
  `semester` varchar(30) DEFAULT NULL,
  `grade_Id` int DEFAULT NULL,
  `instructor_Id` int DEFAULT NULL,
  KEY `student_Number` (`student_Number`),
  KEY `course_Code` (`course_Code`),
  KEY `instructor_Id` (`instructor_Id`),
  KEY `grade_Id` (`grade_Id`),
  CONSTRAINT `fourthyear_ibfk_1` FOREIGN KEY (`student_Number`) REFERENCES `student` (`student_Number`),
  CONSTRAINT `fourthyear_ibfk_2` FOREIGN KEY (`course_Code`) REFERENCES `course` (`course_Code`),
  CONSTRAINT `fourthyear_ibfk_3` FOREIGN KEY (`instructor_Id`) REFERENCES `instructor` (`instructor_Id`),
  CONSTRAINT `fourthyear_ibfk_4` FOREIGN KEY (`grade_Id`) REFERENCES `grade` (`grade_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fourthyear`
--

LOCK TABLES `fourthyear` WRITE;
/*!40000 ALTER TABLE `fourthyear` DISABLE KEYS */;
INSERT INTO `fourthyear` VALUES ('202211849','ITEC 80','firstsem',NULL,NULL),('202211849','COSC 100','firstsem',NULL,NULL),('202211849','COSC 105','firstsem',NULL,NULL),('202211849','COSC 111','firstsem',NULL,NULL),('202211849','COSC 200A','firstsem',NULL,NULL),('202211849','GNED 07','secondsem',NULL,NULL),('202211849','GNED 10','secondsem',NULL,NULL),('202211849','COSC 110','secondsem',NULL,NULL),('202211849','COSC 200B','secondsem',NULL,NULL);
/*!40000 ALTER TABLE `fourthyear` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 23:44:47
