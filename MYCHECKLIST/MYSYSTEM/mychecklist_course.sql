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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_Code` varchar(30) NOT NULL,
  `course_Title` varchar(100) DEFAULT NULL,
  `credits_unit` int DEFAULT NULL,
  `contact_hours_lecture` int DEFAULT NULL,
  `contact_hours_laboratory` int DEFAULT NULL,
  `pre_requisite` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`course_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('COSC 100','Automata Theory and Formal Language',3,3,0,'COSC 90'),('COSC 101','CS Selective 1 (Computer Graphics and Visual Computing)',3,2,3,'DCIT 23'),('COSC 105','Intelligent System',3,2,3,'MATH 4,COSC 55,DCIT 50'),('COSC 106','CS Elective (Introduction to Game Development)',3,2,3,'MATH 3,COSC 101'),('COSC 110','Numerical and Symbolic Computation',3,1,3,'COSC 60'),('COSC 111','SC Elective 3 (Internet of Things)',3,2,3,'COSC 60'),('COSC 199','Practicum (240 hours)',3,0,0,NULL),('COSC 200A','Undergraduate Thesis I',3,1,0,'4TH YR STANDING'),('COSC 200B','Undergraduate Thesis II',3,9,3,'COSC 200A'),('COSC 50','Discrete Structures I',3,3,0,NULL),('COSC 55','Discrete Structures II',3,3,0,'COSC 50'),('COSC 60','Digital Logic Design',3,2,3,'COSC 50 & DCIT 23'),('COSC 65','Architecture and Organization',3,2,3,'COSC 60'),('COSC 70','Software Engineering I',3,3,0,'DCIT 50 &- 24'),('COSC 75','Software Engineering II',3,2,3,'COSC 70'),('COSC 80','Operating Systems',3,2,3,'DCIT 25'),('COSC 85','Networks and Communication',3,2,3,'ITEC 50'),('COSC 90','Design and Analysis',3,3,0,'DCIT 25'),('COSC 95','Programming Languages',3,3,0,'DCIT 25'),('CvSU 101','Institutional Orientation',1,1,0,NULL),('DCIT 21','Introduction to Computing',3,2,6,NULL),('DCIT 22','Computer Programming I',3,1,3,NULL),('DCIT 23','Computer Programming II',3,1,6,'DCIT 22'),('DCIT 24','Information Management',3,2,3,'DCIT 23'),('DCIT 25','Data Stuctures and Algorithms',3,2,3,'DCIT 23'),('DCIT 26','Application Dev\'t and Emerging Technologies',3,2,3,'ITEC 50'),('DCIT 50','Object Oriented Programming',3,2,3,'DCIT 23'),('DCIT 55','Advanced Database Management System',3,2,3,'DCIT 24'),('DCIT 60','Methods of Research',3,3,0,'3RD YR STANDING'),('DCIT 65','Social and Professional Issues',3,3,0,NULL),('FITT 1','Movement Enhancement',2,3,0,NULL),('FITT 2','Fitness Exercises',2,2,0,'FITT 1'),('FITT 3','Physical Activity towards Health and Fitness 1',2,2,0,'NSTP 1'),('FITT 4','Physical Activities towards Health and Fitness 2',2,2,0,'FITT 1'),('GNED 01','Art Appreciation',3,3,0,NULL),('GNED 02','ETHICS',3,3,0,NULL),('GNED 03','Mathematics in the Modern World',3,3,0,NULL),('GNED 04','Mga babasahin Hinggil sa Kasaysayan ng Pilipinas',3,3,0,NULL),('GNED 05','Purposive Communication',3,3,0,NULL),('GNED 06','Science, Technology and Science',3,3,0,NULL),('GNED 07','The Contemporary World',3,3,0,NULL),('GNED 08','Understanding the self',3,3,0,NULL),('GNED 09','Life and Works of Rizal',3,3,0,'GNED 04'),('GNED 10','Gender and Society',3,3,0,NULL),('GNED 11','Kontesktwalisadong Komunikasyon sa Filipino',3,3,0,NULL),('GNED 12','Dalumat Ng/Sa Filipino',3,3,0,'GNED 11'),('GNED 14','Panitikang Panlipunan',3,3,0,NULL),('INSY 50','Fundamentals of Information System',3,3,0,'DCIT 21'),('ITEC 50','Web Systems and Technologies',3,2,3,'DCIT 21'),('ITEC 80','Human Computer Interaction',1,3,0,'ITEC 85'),('ITEC 85','Information Assurance and Security',3,3,0,'DCIT 24'),('MATH 1','Analytic Geometry',3,3,0,'GNED 03'),('MATH 2','Calculus',3,3,0,'MATH 1'),('MATH 3','Linear Algebra',3,3,0,'MATH 2'),('MATH 4','Experimental Statistics',3,2,3,'MATH 2'),('NSTP 1','National Service Training Program 1',3,2,0,NULL),('NSTP 2','National Service Training Program 2',3,3,0,'NSTP 1');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
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
