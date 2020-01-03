CREATE DATABASE  IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `blog`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Temporary view structure for view `show_blog_with_like_comment`
--

DROP TABLE IF EXISTS `show_blog_with_like_comment`;
/*!50001 DROP VIEW IF EXISTS `show_blog_with_like_comment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `show_blog_with_like_comment` AS SELECT 
 1 AS `u_id`,
 1 AS `u_name`,
 1 AS `b_id`,
 1 AS `b_name`,
 1 AS `b_content`,
 1 AS `b_audio`,
 1 AS `b_video`,
 1 AS `b_photo`,
 1 AS `b_category_id`,
 1 AS `portrait`,
 1 AS `like_number`,
 1 AS `comment_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `show_blog_like`
--

DROP TABLE IF EXISTS `show_blog_like`;
/*!50001 DROP VIEW IF EXISTS `show_blog_like`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `show_blog_like` AS SELECT 
 1 AS `u_id`,
 1 AS `u_name`,
 1 AS `b_id`,
 1 AS `b_name`,
 1 AS `b_content`,
 1 AS `b_audio`,
 1 AS `b_video`,
 1 AS `b_photo`,
 1 AS `b_category_id`,
 1 AS `portrait`,
 1 AS `like_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `show_blog_with_like_comment`
--

/*!50001 DROP VIEW IF EXISTS `show_blog_with_like_comment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `show_blog_with_like_comment` AS select `show_blog_like`.`u_id` AS `u_id`,`show_blog_like`.`u_name` AS `u_name`,`show_blog_like`.`b_id` AS `b_id`,`show_blog_like`.`b_name` AS `b_name`,`show_blog_like`.`b_content` AS `b_content`,`show_blog_like`.`b_audio` AS `b_audio`,`show_blog_like`.`b_video` AS `b_video`,`show_blog_like`.`b_photo` AS `b_photo`,`show_blog_like`.`b_category_id` AS `b_category_id`,`show_blog_like`.`portrait` AS `portrait`,`show_blog_like`.`like_number` AS `like_number`,`dd`.`comment_number` AS `comment_number` from (`show_blog_like` left join (select `comment`.`b_id` AS `b_id`,count(0) AS `comment_number` from `comment` group by `comment`.`b_id`) `dd` on((`show_blog_like`.`b_id` = `dd`.`b_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `show_blog_like`
--

/*!50001 DROP VIEW IF EXISTS `show_blog_like`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `show_blog_like` AS select `temp`.`u_id` AS `u_id`,`temp`.`u_name` AS `u_name`,`temp`.`b_id` AS `b_id`,`temp`.`b_name` AS `b_name`,`temp`.`b_content` AS `b_content`,`temp`.`b_audio` AS `b_audio`,`temp`.`b_video` AS `b_video`,`temp`.`b_photo` AS `b_photo`,`temp`.`b_category_id` AS `b_category_id`,`temp`.`portrait` AS `portrait`,`pp`.`like_number` AS `like_number` from ((select `user`.`u_id` AS `u_id`,`user`.`u_name` AS `u_name`,`blog`.`b_id` AS `b_id`,`blog`.`b_name` AS `b_name`,`blog`.`b_content` AS `b_content`,`blog`.`b_audio` AS `b_audio`,`blog`.`b_video` AS `b_video`,`blog`.`b_photo` AS `b_photo`,`blog`.`b_category_id` AS `b_category_id`,`user`.`portrait` AS `portrait` from (`user` left join `blog` on((`user`.`u_id` = `blog`.`u_id`)))) `temp` left join (select `p`.`b_id` AS `b_id`,count(0) AS `like_number` from `praise` `p` group by `p`.`b_id` having (`p`.`b_id` <> 0)) `pp` on((`temp`.`b_id` = `pp`.`b_id`))) */;
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

-- Dump completed on 2020-01-03 18:37:41
