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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `b_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `b_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `b_thumbs_up` int(11) DEFAULT '0',
  `b_audio` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `b_video` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `b_photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `b_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`b_id`),
  KEY `refer_to_user_idx` (`u_id`),
  KEY `blog_refer_category_idx` (`b_category_id`),
  CONSTRAINT `blog_refer_category` FOREIGN KEY (`b_category_id`) REFERENCES `category` (`c_id`),
  CONSTRAINT `refer_to_user` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,1,'Hello Bolg','机关、团体、企业、事业等单位应当落实消防安全主体责任，定期开展____，及时消除火灾隐患。',2,NULL,NULL,NULL,4),(2,1,'毒液','我国面积最大的淡水湖鄱阳湖位于____省。',15,NULL,NULL,NULL,4),(3,1,'超人','2018年11月，中共中央印发了《中国共产党支部工作条例（试行）》。它是我们党历史上第一部关于党支部工作的基础主干法规,是新时代党支部建设的基本遵循。那么，第一次将支部明确为党的基本组织的是____。（出题单位：中共上海市虹口区委党校 推荐单位：上海学习平台）',2,NULL,NULL,NULL,1),(4,1,'钢铁侠','遇森林火灾发生时，应迅速拨打森林火警电话____报警。',1,NULL,NULL,NULL,1),(5,1,'One piece','遇森林火灾发生时，应迅速拨打森林火警电话____报警。',1,NULL,NULL,NULL,4),(6,1,'凯多','请以一段话描述Daniel老师。',1,NULL,NULL,NULL,1),(7,1,'超级玛丽','2018年11月，中共中央印发了《中国共产党支部工作条例（试行）》。它是我们党历史上第一部关于党支部工作的基础主干法规,是新时代党支部建设的基本遵循。那么，第一次将支部明确为党的基本组织的是____。（出题单位：中共上海市虹口区委党校 推荐单位：上海学习平台）',1,NULL,NULL,NULL,1),(8,1,'Wander Woman','李白有诗“吾爱孟夫子，风流天下闻”，“孟夫子”指的是____。',1,NULL,NULL,NULL,3);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-03 18:37:40
