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
-- Table structure for table `secondyear`
--

DROP TABLE IF EXISTS `secondyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secondyear` (
  `student_Number` varchar(40) DEFAULT NULL,
  `course_Code` varchar(30) DEFAULT NULL,
  `semester` varchar(30) DEFAULT NULL,
  `grade_Id` int DEFAULT NULL,
  `instructor_Id` int DEFAULT NULL,
  KEY `student_Number` (`student_Number`),
  KEY `course_Code` (`course_Code`),
  KEY `instructor_Id` (`instructor_Id`),
  KEY `grade_Id` (`grade_Id`),
  CONSTRAINT `secondyear_ibfk_1` FOREIGN KEY (`student_Number`) REFERENCES `student` (`student_Number`),
  CONSTRAINT `secondyear_ibfk_2` FOREIGN KEY (`course_Code`) REFERENCES `course` (`course_Code`),
  CONSTRAINT `secondyear_ibfk_3` FOREIGN KEY (`instructor_Id`) REFERENCES `instructor` (`instructor_Id`),
  CONSTRAINT `secondyear_ibfk_4` FOREIGN KEY (`grade_Id`) REFERENCES `grade` (`grade_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secondyear`
--

LOCK TABLES `secondyear` WRITE;
/*!40000 ALTER TABLE `secondyear` DISABLE KEYS */;
INSERT INTO `secondyear` VALUES ('202211849','GNED 04','firstsem',4,20),('202211849','MATH 1','firstsem',5,17),('202211849','COSC 55','firstsem',4,11),('202211849','COSC 60','firstsem',3,19),('202211849','DCIT 50','firstsem',5,6),('202211849','DCIT 24','firstsem',4,18),('202211849','INSY 50','firstsem',5,21),('202211849','FITT 3','firstsem',4,7),('202211849','GNED 08','secondsem',NULL,NULL),('202211849','GNED 14','secondsem',NULL,NULL),('202211849','MATH 2','secondsem',NULL,NULL),('202211849','COSC 65','secondsem',NULL,NULL),('202211849','COSC 70','secondsem',NULL,NULL),('202211849','DCIT 25','secondsem',NULL,NULL),('202211849','DCIT 55','secondsem',NULL,NULL),('202211849','FITT 4','secondsem',NULL,NULL);
/*!40000 ALTER TABLE `secondyear` ENABLE KEYS */;
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
