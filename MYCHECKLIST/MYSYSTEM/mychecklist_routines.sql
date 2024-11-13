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
-- Temporary view structure for view `join_firstyear`
--

DROP TABLE IF EXISTS `join_firstyear`;
/*!50001 DROP VIEW IF EXISTS `join_firstyear`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `join_firstyear` AS SELECT 
 1 AS `student_Number`,
 1 AS `course_Code`,
 1 AS `course_Title`,
 1 AS `credits_unit`,
 1 AS `contact_hours_lecture`,
 1 AS `grade`,
 1 AS `instructor_first_Name`,
 1 AS `instructor_last_Name`,
 1 AS `semester`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `join_thirdyear`
--

DROP TABLE IF EXISTS `join_thirdyear`;
/*!50001 DROP VIEW IF EXISTS `join_thirdyear`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `join_thirdyear` AS SELECT 
 1 AS `student_Number`,
 1 AS `course_Code`,
 1 AS `course_Title`,
 1 AS `credits_unit`,
 1 AS `contact_hours_lecture`,
 1 AS `grade`,
 1 AS `instructor_first_Name`,
 1 AS `instructor_last_Name`,
 1 AS `semester`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `join_fourthyear`
--

DROP TABLE IF EXISTS `join_fourthyear`;
/*!50001 DROP VIEW IF EXISTS `join_fourthyear`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `join_fourthyear` AS SELECT 
 1 AS `student_Number`,
 1 AS `course_Code`,
 1 AS `course_Title`,
 1 AS `credits_unit`,
 1 AS `contact_hours_lecture`,
 1 AS `grade`,
 1 AS `instructor_first_Name`,
 1 AS `instructor_last_Name`,
 1 AS `semester`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `join_secondyear`
--

DROP TABLE IF EXISTS `join_secondyear`;
/*!50001 DROP VIEW IF EXISTS `join_secondyear`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `join_secondyear` AS SELECT 
 1 AS `student_Number`,
 1 AS `course_Code`,
 1 AS `course_Title`,
 1 AS `credits_unit`,
 1 AS `contact_hours_lecture`,
 1 AS `grade`,
 1 AS `instructor_first_Name`,
 1 AS `instructor_last_Name`,
 1 AS `semester`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `join_firstyear`
--

/*!50001 DROP VIEW IF EXISTS `join_firstyear`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `join_firstyear` AS select `s`.`student_Number` AS `student_Number`,`c`.`course_Code` AS `course_Code`,`c`.`course_Title` AS `course_Title`,`c`.`credits_unit` AS `credits_unit`,`c`.`contact_hours_lecture` AS `contact_hours_lecture`,`g`.`grade` AS `grade`,`ins`.`instructor_first_name` AS `instructor_first_Name`,`ins`.`instructor_last_name` AS `instructor_last_Name`,`firstyear`.`semester` AS `semester` from ((((`firstyear` join `student` `s` on((`s`.`student_Number` = `firstyear`.`student_Number`))) join `course` `c` on((`c`.`course_Code` = `firstyear`.`course_Code`))) left join `grade` `g` on((`g`.`grade_Id` = `firstyear`.`grade_Id`))) left join `instructor` `ins` on((`ins`.`instructor_Id` = `firstyear`.`instructor_Id`))) where (`s`.`student_Number` = '202211849') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `join_thirdyear`
--

/*!50001 DROP VIEW IF EXISTS `join_thirdyear`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `join_thirdyear` AS select `s`.`student_Number` AS `student_Number`,`c`.`course_Code` AS `course_Code`,`c`.`course_Title` AS `course_Title`,`c`.`credits_unit` AS `credits_unit`,`c`.`contact_hours_lecture` AS `contact_hours_lecture`,`g`.`grade` AS `grade`,`ins`.`instructor_first_name` AS `instructor_first_Name`,`ins`.`instructor_last_name` AS `instructor_last_Name`,`thirdyear`.`semester` AS `semester` from ((((`thirdyear` join `student` `s` on((`s`.`student_Number` = `thirdyear`.`student_Number`))) join `course` `c` on((`c`.`course_Code` = `thirdyear`.`course_Code`))) left join `grade` `g` on((`g`.`grade_Id` = `thirdyear`.`grade_Id`))) left join `instructor` `ins` on((`ins`.`instructor_Id` = `thirdyear`.`instructor_Id`))) where (`s`.`student_Number` = '202211849') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `join_fourthyear`
--

/*!50001 DROP VIEW IF EXISTS `join_fourthyear`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `join_fourthyear` AS select `s`.`student_Number` AS `student_Number`,`c`.`course_Code` AS `course_Code`,`c`.`course_Title` AS `course_Title`,`c`.`credits_unit` AS `credits_unit`,`c`.`contact_hours_lecture` AS `contact_hours_lecture`,`g`.`grade` AS `grade`,`ins`.`instructor_first_name` AS `instructor_first_Name`,`ins`.`instructor_last_name` AS `instructor_last_Name`,`fourthyear`.`semester` AS `semester` from ((((`fourthyear` join `student` `s` on((`s`.`student_Number` = `fourthyear`.`student_Number`))) join `course` `c` on((`c`.`course_Code` = `fourthyear`.`course_Code`))) left join `grade` `g` on((`g`.`grade_Id` = `fourthyear`.`grade_Id`))) left join `instructor` `ins` on((`ins`.`instructor_Id` = `fourthyear`.`instructor_Id`))) where (`s`.`student_Number` = '202211849') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `join_secondyear`
--

/*!50001 DROP VIEW IF EXISTS `join_secondyear`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `join_secondyear` AS select `s`.`student_Number` AS `student_Number`,`c`.`course_Code` AS `course_Code`,`c`.`course_Title` AS `course_Title`,`c`.`credits_unit` AS `credits_unit`,`c`.`contact_hours_lecture` AS `contact_hours_lecture`,`g`.`grade` AS `grade`,`ins`.`instructor_first_name` AS `instructor_first_Name`,`ins`.`instructor_last_name` AS `instructor_last_Name`,`secondyear`.`semester` AS `semester` from ((((`secondyear` join `student` `s` on((`s`.`student_Number` = `secondyear`.`student_Number`))) join `course` `c` on((`c`.`course_Code` = `secondyear`.`course_Code`))) left join `grade` `g` on((`g`.`grade_Id` = `secondyear`.`grade_Id`))) left join `instructor` `ins` on((`ins`.`instructor_Id` = `secondyear`.`instructor_Id`))) where (`s`.`student_Number` = '202211849') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 23:44:48
