/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2020-01-04 22:19:32
*/

CREATE SCHEMA `blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;

use blog;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
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

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', '1', 'Hello Bolg', '机关、团体、企业、事业等单位应当落实消防安全主体责任，定期开展____，及时消除火灾隐患。', '2', null, null, null, '4');
INSERT INTO `blog` VALUES ('2', '1', '毒液', '我国面积最大的淡水湖鄱阳湖位于____省。', '15', null, null, null, '4');
INSERT INTO `blog` VALUES ('3', '1', '超人', '2018年11月，中共中央印发了《中国共产党支部工作条例（试行）》。它是我们党历史上第一部关于党支部工作的基础主干法规,是新时代党支部建设的基本遵循。那么，第一次将支部明确为党的基本组织的是____。（出题单位：中共上海市虹口区委党校 推荐单位：上海学习平台）', '2', null, null, null, '1');
INSERT INTO `blog` VALUES ('4', '1', '钢铁侠', '遇森林火灾发生时，应迅速拨打森林火警电话____报警。', '1', null, null, null, '1');
INSERT INTO `blog` VALUES ('5', '1', 'One piece', '遇森林火灾发生时，应迅速拨打森林火警电话____报警。', '1', null, null, null, '4');
INSERT INTO `blog` VALUES ('6', '1', '凯多', '请以一段话描述Daniel老师。', '1', null, null, null, '1');
INSERT INTO `blog` VALUES ('7', '1', '超级玛丽', '2018年11月，中共中央印发了《中国共产党支部工作条例（试行）》。它是我们党历史上第一部关于党支部工作的基础主干法规,是新时代党支部建设的基本遵循。那么，第一次将支部明确为党的基本组织的是____。（出题单位：中共上海市虹口区委党校 推荐单位：上海学习平台）', '1', null, null, null, '1');
INSERT INTO `blog` VALUES ('8', '1', 'Wander Woman', '李白有诗“吾爱孟夫子，风流天下闻”，“孟夫子”指的是____。', '1', null, null, null, '3');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'technology');
INSERT INTO `category` VALUES ('3', 'Histroy');
INSERT INTO `category` VALUES ('4', 'Beautiful');

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `b_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`b_id`,`u_id`),
  KEY `collection_refer_to_user_idx` (`u_id`),
  CONSTRAINT `collection_refer_to_blog` FOREIGN KEY (`b_id`) REFERENCES `blog` (`b_id`),
  CONSTRAINT `collection_refer_to_user` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of collection
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `u_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `c_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `c_time` datetime DEFAULT NULL,
  `c_thumbs_up` int(11) DEFAULT '0',
  KEY `comment_refer_to_user_idx` (`u_id`),
  KEY `comment_refer_to_blog_idx` (`b_id`),
  CONSTRAINT `comment_refer_to_blog` FOREIGN KEY (`b_id`) REFERENCES `blog` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_refer_to_user` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', 'hello world', null, '0');
INSERT INTO `comment` VALUES ('1', '1', 'hello world', null, '0');
INSERT INTO `comment` VALUES ('1', '2', 'askjdhqwiu ibqwjnd qwidiu qdi nkjndj ashdiha sdih ojqwdj naskd absd asd asda sda', '2020-01-03 17:47:49', '0');
INSERT INTO `comment` VALUES ('1', '1', 'asdasdasd', '2020-01-03 18:27:21', '0');
INSERT INTO `comment` VALUES ('1', '1', 'kjhqwkjehkjahskjhdkjsahdkjawhkjdhwakjhdsm,ndm,asn,dnasdasdsa', '2020-01-03 18:35:35', '0');
INSERT INTO `comment` VALUES ('1', '2', 'it is beautiful', '2020-01-04 15:12:56', '0');
INSERT INTO `comment` VALUES ('1', '2', '阿斯顿', '2020-01-04 15:16:12', '0');
INSERT INTO `comment` VALUES ('1', '1', '你好', '2020-01-04 15:21:33', '0');
INSERT INTO `comment` VALUES ('1', '1', 'asdasd', '2020-01-04 21:47:56', '0');
INSERT INTO `comment` VALUES ('1', '2', 'hello', '2020-01-04 21:53:44', '0');
INSERT INTO `comment` VALUES ('1', '2', 'asdsa', '2020-01-04 21:54:25', '0');
INSERT INTO `comment` VALUES ('1', '2', 'hello world\n', '2020-01-04 21:56:44', '0');
INSERT INTO `comment` VALUES ('1', '3', 'Hello world\n', '2020-01-04 22:04:04', '0');
INSERT INTO `comment` VALUES ('1', '3', '少聪', '2020-01-04 22:05:11', '0');
INSERT INTO `comment` VALUES ('1', '3', '你好', '2020-01-04 22:06:28', '0');
INSERT INTO `comment` VALUES ('1', '3', '您好哦', '2020-01-04 22:06:37', '0');

-- ----------------------------
-- Table structure for praise
-- ----------------------------
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `b_id` int(11) DEFAULT '0',
  `c_id` int(11) DEFAULT '0',
  `p_time` datetime DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `praise_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of praise
-- ----------------------------
INSERT INTO `praise` VALUES ('1', '1', '1', '0', null);
INSERT INTO `praise` VALUES ('2', '1', '1', '0', null);
INSERT INTO `praise` VALUES ('3', '1', '1', '0', null);
INSERT INTO `praise` VALUES ('4', '1', '2', null, '2020-01-03 16:18:28');
INSERT INTO `praise` VALUES ('5', '1', '3', null, '2020-01-03 16:18:31');
INSERT INTO `praise` VALUES ('6', '1', '5', null, '2020-01-03 16:18:36');
INSERT INTO `praise` VALUES ('7', '1', '6', null, '2020-01-03 16:18:39');
INSERT INTO `praise` VALUES ('8', '1', '7', null, '2020-01-03 16:18:43');
INSERT INTO `praise` VALUES ('9', '1', '8', null, '2020-01-03 16:18:45');

-- ----------------------------
-- Table structure for relationship
-- ----------------------------
DROP TABLE IF EXISTS `relationship`;
CREATE TABLE `relationship` (
  `l_u_id` int(11) NOT NULL,
  `r_u_id` int(11) NOT NULL,
  PRIMARY KEY (`l_u_id`,`r_u_id`),
  KEY `relationship_refer_to_user2_idx` (`r_u_id`),
  CONSTRAINT `relationship_refer_to_user1` FOREIGN KEY (`l_u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `relationship_refer_to_user2` FOREIGN KEY (`r_u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of relationship
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `u_pwd` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `u_sex` int(11) DEFAULT NULL,
  `u_age` int(11) DEFAULT NULL,
  `u_email` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `u_type` int(11) DEFAULT NULL,
  `u_question` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `u_answer` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `u_telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `portrait` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_name_UNIQUE` (`u_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Daniel', 'sc18750910084', null, null, '1', '1', 'who am i ?', 'Daniel', '18750910084', null);
INSERT INTO `user` VALUES ('2', 'aa', '12345678a', null, null, '1', '0', '22', '11', '13020908110', null);

-- ----------------------------
-- View structure for show_blog_like
-- ----------------------------
DROP VIEW IF EXISTS `show_blog_like`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `show_blog_like` AS select `temp`.`u_id` AS `u_id`,`temp`.`u_name` AS `u_name`,`temp`.`b_id` AS `b_id`,`temp`.`b_name` AS `b_name`,`temp`.`b_content` AS `b_content`,`temp`.`b_audio` AS `b_audio`,`temp`.`b_video` AS `b_video`,`temp`.`b_photo` AS `b_photo`,`temp`.`b_category_id` AS `b_category_id`,`temp`.`portrait` AS `portrait`,`pp`.`like_number` AS `like_number` from ((select `user`.`u_id` AS `u_id`,`user`.`u_name` AS `u_name`,`blog`.`b_id` AS `b_id`,`blog`.`b_name` AS `b_name`,`blog`.`b_content` AS `b_content`,`blog`.`b_audio` AS `b_audio`,`blog`.`b_video` AS `b_video`,`blog`.`b_photo` AS `b_photo`,`blog`.`b_category_id` AS `b_category_id`,`user`.`portrait` AS `portrait` from (`user` left join `blog` on((`user`.`u_id` = `blog`.`u_id`)))) `temp` left join (select `p`.`b_id` AS `b_id`,count(0) AS `like_number` from `praise` `p` group by `p`.`b_id` having (`p`.`b_id` <> 0)) `pp` on((`temp`.`b_id` = `pp`.`b_id`))) ;

-- ----------------------------
-- View structure for show_blog_with_like_comment
-- ----------------------------
DROP VIEW IF EXISTS `show_blog_with_like_comment`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `show_blog_with_like_comment` AS select `show_blog_like`.`u_id` AS `u_id`,`show_blog_like`.`u_name` AS `u_name`,`show_blog_like`.`b_id` AS `b_id`,`show_blog_like`.`b_name` AS `b_name`,`show_blog_like`.`b_content` AS `b_content`,`show_blog_like`.`b_audio` AS `b_audio`,`show_blog_like`.`b_video` AS `b_video`,`show_blog_like`.`b_photo` AS `b_photo`,`show_blog_like`.`b_category_id` AS `b_category_id`,`show_blog_like`.`portrait` AS `portrait`,`show_blog_like`.`like_number` AS `like_number`,`dd`.`comment_number` AS `comment_number` from (`show_blog_like` left join (select `comment`.`b_id` AS `b_id`,count(0) AS `comment_number` from `comment` group by `comment`.`b_id`) `dd` on((`show_blog_like`.`b_id` = `dd`.`b_id`))) ;