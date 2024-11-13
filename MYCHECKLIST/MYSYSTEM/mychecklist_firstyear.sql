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
-- Table structure for table `firstyear`
--

DROP TABLE IF EXISTS `firstyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `firstyear` (
  `student_Number` varchar(40) DEFAULT NULL,
  `course_Code` varchar(30) DEFAULT NULL,
  `semester` varchar(30) DEFAULT NULL,
  `grade_Id` int DEFAULT NULL,
  `instructor_Id` int DEFAULT NULL,
  KEY `student_Number` (`student_Number`),
  KEY `course_Code` (`course_Code`),
  KEY `instructor_Id` (`instructor_Id`),
  KEY `grade_Id` (`grade_Id`),
  CONSTRAINT `firstyear_ibfk_1` FOREIGN KEY (`student_Number`) REFERENCES `student` (`student_Number`),
  CONSTRAINT `firstyear_ibfk_2` FOREIGN KEY (`course_Code`) REFERENCES `course` (`course_Code`),
  CONSTRAINT `firstyear_ibfk_3` FOREIGN KEY (`instructor_Id`) REFERENCES `instructor` (`instructor_Id`),
  CONSTRAINT `firstyear_ibfk_4` FOREIGN KEY (`grade_Id`) REFERENCES `grade` (`grade_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firstyear`
--

LOCK TABLES `firstyear` WRITE;
/*!40000 ALTER TABLE `firstyear` DISABLE KEYS */;
INSERT INTO `firstyear` VALUES ('202211849','GNED 02','firstsem',5,1),('202211849','GNED 05','firstsem',7,2),('202211849','GNED 11','firstsem',1,3),('202211849','COSC 50','firstsem',6,4),('202211849','DCIT 21','firstsem',1,5),('202211849','DCIT 22','firstsem',5,6),('202211849','FITT 1','firstsem',2,7),('202211849','NSTP 1','firstsem',2,8),('202211849','CVSU 101','firstsem',12,9),('202211849','GNED 01','secondsem',5,10),('202211849','GNED 03','secondsem',7,11),('202211849','GNED 06','secondsem',2,12),('202211849','GNED 12','secondsem',1,3),('202211849','DCIT 23','secondsem',3,13),('202211849','ITEC 50','secondsem',5,14),('202211849','FITT 2','secondsem',1,15),('202211849','NSTP 2','secondsem',3,16);
/*!40000 ALTER TABLE `firstyear` ENABLE KEYS */;
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
