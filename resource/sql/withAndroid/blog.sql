/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2020-06-12 09:15:24
*/

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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('2', '1', '毒液', '我国面积最大的淡水湖鄱阳湖位于____省。', '19', null, null, null, '4');
INSERT INTO `blog` VALUES ('3', '1', '超人', '2018年11月，中共中央印发了《中国共产党支部工作条例（试行）》。它是我们党历史上第一部关于党支部工作的基础主干法规,是新时代党支部建设的基本遵循。那么，第一次将支部明确为党的基本组织的是____。（出题单位：中共上海市虹口区委党校 推荐单位：上海学习平台）', '5', null, null, null, '1');
INSERT INTO `blog` VALUES ('4', '1', '钢铁侠', '遇森林火灾发生时，应迅速拨打森林火警电话____报警。', '4', null, null, null, '1');
INSERT INTO `blog` VALUES ('7', '1', '超级玛丽', '2018年11月，中共中央印发了《中国共产党支部工作条例（试行）》。它是我们党历史上第一部关于党支部工作的基础主干法规,是新时代党支部建设的基本遵循。那么，第一次将支部明确为党的基本组织的是____。（出题单位：中共上海市虹口区委党校 推荐单位：上海学习平台）', '3', null, null, null, '1');
INSERT INTO `blog` VALUES ('15', '9', '舒克舒克', '舒克开飞机', '1', null, null, null, '7');
INSERT INTO `blog` VALUES ('64', '6', 'android', 'this is picture come from emulator!!!', '0', null, null, '1591502780583.jpg', '1');
INSERT INTO `blog` VALUES ('65', '7', 'android', '', '0', null, null, '1591510259007.jpg', '1');
INSERT INTO `blog` VALUES ('66', '7', 'android', '海贼王哦', '0', null, null, '1591510296395.jpg', '1');
INSERT INTO `blog` VALUES ('67', '7', 'android', '学院路', '0', null, null, '1591510346851.jpg', '1');
INSERT INTO `blog` VALUES ('68', '7', 'android', '武夷山', '0', null, null, '1591510496767.jpg', '1');
INSERT INTO `blog` VALUES ('69', '7', 'android', '武夷山', '0', null, null, '1591510497530.jpg', '1');
INSERT INTO `blog` VALUES ('70', '7', 'android', '哈哈哈哈哈', '0', null, null, '1591510516073.jpg', '1');
INSERT INTO `blog` VALUES ('72', '7', 'android', '考研备考哦', '0', null, null, '1591510559979.jpg', '1');
INSERT INTO `blog` VALUES ('73', '7', 'android', '光轨欧', '0', null, null, '1591510591829.jpg', '1');
INSERT INTO `blog` VALUES ('75', '7', 'android', '太好吃了！', '0', null, null, '1591510862139.jpg', '1');
INSERT INTO `blog` VALUES ('76', '1', 'android', 'dog', '0', null, null, '1591780771379.jpg', '1');
INSERT INTO `blog` VALUES ('77', '17', 'android', '你好', '0', null, null, '1591782989600.jpg', '1');
INSERT INTO `blog` VALUES ('78', '17', 'android', '路飞', '0', null, null, '1591783043706.jpg', '1');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'technology');
INSERT INTO `category` VALUES ('3', 'Histroy');
INSERT INTO `category` VALUES ('4', 'Beautiful');
INSERT INTO `category` VALUES ('7', 'Cartoon');
INSERT INTO `category` VALUES ('8', 'Romantic');
INSERT INTO `category` VALUES ('9', 'Story');
INSERT INTO `category` VALUES ('10', 'LOL');

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
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `c_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `c_time` datetime DEFAULT NULL,
  `c_thumbs_up` int(11) DEFAULT '0',
  PRIMARY KEY (`c_id`),
  KEY `comment_refer_to_user_idx` (`u_id`),
  KEY `comment_refer_to_blog_idx` (`b_id`),
  CONSTRAINT `comment_refer_to_blog` FOREIGN KEY (`b_id`) REFERENCES `blog` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_refer_to_user` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('28', '1', '2', 'Hello ,can i meke you as my friend', '2020-01-07 16:06:42', '0');
INSERT INTO `comment` VALUES ('29', '1', '4', '你好', '2020-01-09 09:09:54', '0');
INSERT INTO `comment` VALUES ('30', '1', '4', '哇啊哈哈', '2020-01-09 09:10:15', '0');
INSERT INTO `comment` VALUES ('31', '1', '2', 'Hello ', '2020-01-09 09:46:47', '0');
INSERT INTO `comment` VALUES ('32', '1', '2', 'jerry', '2020-01-09 09:48:15', '0');
INSERT INTO `comment` VALUES ('33', '1', '2', '你好', '2020-01-09 09:50:31', '0');
INSERT INTO `comment` VALUES ('34', '1', '2', 'Hello', '2020-01-09 09:50:59', '0');
INSERT INTO `comment` VALUES ('35', '1', '3', 'Hello', '2020-01-09 09:52:43', '0');
INSERT INTO `comment` VALUES ('36', '1', '2', 'Hey', '2020-01-09 10:05:58', '0');
INSERT INTO `comment` VALUES ('37', '1', '2', 'Hello', '2020-01-09 10:08:11', '0');
INSERT INTO `comment` VALUES ('38', '9', '15', '开坦克把', '2020-01-09 13:36:36', '0');
INSERT INTO `comment` VALUES ('39', '9', '15', '舒克好帅', '2020-01-09 13:38:04', '0');
INSERT INTO `comment` VALUES ('40', '9', '15', 'yess', '2020-01-09 13:49:01', '0');
INSERT INTO `comment` VALUES ('41', '9', '15', '舒克舒克', '2020-01-09 14:03:59', '0');
INSERT INTO `comment` VALUES ('42', '9', '15', '舒克舒克', '2020-01-09 14:04:01', '0');
INSERT INTO `comment` VALUES ('43', '9', '15', '舒克舒克', '2020-01-09 14:04:05', '0');
INSERT INTO `comment` VALUES ('44', '9', '15', '舒克舒克', '2020-01-09 14:04:33', '0');
INSERT INTO `comment` VALUES ('45', '9', '15', '貝塔', '2020-01-09 14:07:14', '0');
INSERT INTO `comment` VALUES ('46', '9', '15', '貝達', '2020-01-09 14:09:19', '0');
INSERT INTO `comment` VALUES ('47', '9', '15', '貝達', '2020-01-09 14:09:43', '0');
INSERT INTO `comment` VALUES ('48', '9', '15', '誤會誤會誤會', '2020-01-09 14:10:46', '0');
INSERT INTO `comment` VALUES ('49', '9', '15', 'lalal 撒阿斯頓', '2020-01-09 14:12:22', '0');
INSERT INTO `comment` VALUES ('50', '1', '3', '你好', '2020-01-09 14:15:08', '0');
INSERT INTO `comment` VALUES ('51', '1', '3', '你好', '2020-01-09 14:15:19', '0');
INSERT INTO `comment` VALUES ('52', '5', '4', 'hello', '2020-01-09 14:18:59', '0');
INSERT INTO `comment` VALUES ('53', '5', '4', '误会误会误会', '2020-01-09 14:19:14', '0');
INSERT INTO `comment` VALUES ('54', '5', '4', '哇哈哈哈哈', '2020-01-09 14:20:49', '0');
INSERT INTO `comment` VALUES ('55', '5', '4', '啦啦啦啦', '2020-01-09 14:25:04', '0');
INSERT INTO `comment` VALUES ('56', '5', '4', '黑', '2020-01-09 14:28:17', '0');
INSERT INTO `comment` VALUES ('57', '5', '4', '问候问候和武汉', '2020-01-09 14:31:50', '0');
INSERT INTO `comment` VALUES ('58', '5', '4', 'final', '2020-01-09 14:35:34', '0');
INSERT INTO `comment` VALUES ('59', '5', '2', 'SJJJJ', '2020-01-09 14:41:31', '0');
INSERT INTO `comment` VALUES ('60', '5', '2', '巧克力', '2020-01-09 14:43:08', '0');
INSERT INTO `comment` VALUES ('64', '10', '2', '你好', '2020-01-10 10:52:22', '0');
INSERT INTO `comment` VALUES ('66', '1', '2', 'Helo world', '2020-05-11 11:30:49', '0');
INSERT INTO `comment` VALUES ('67', '1', '2', '你好', '2020-05-11 16:37:13', '0');
INSERT INTO `comment` VALUES ('68', '1', '7', 'Hello world', '2020-05-11 16:39:54', '0');
INSERT INTO `comment` VALUES ('69', '1', '7', 'Hello world', '2020-05-11 16:40:55', '0');

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `product_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `order_id` int(11) NOT NULL,
  `good_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `good_price` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `good_figure` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `good_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  CONSTRAINT `to_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of good
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `state` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `to_user` (`user_id`),
  CONSTRAINT `to_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`u_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('2', 'Daniel', 'sell');

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of praise
-- ----------------------------
INSERT INTO `praise` VALUES ('4', '1', '2', null, '2020-01-03 16:18:28');
INSERT INTO `praise` VALUES ('14', '5', '2', null, '2020-01-07 15:25:15');
INSERT INTO `praise` VALUES ('15', '1', '4', null, '2020-01-07 16:30:50');
INSERT INTO `praise` VALUES ('16', '1', '7', null, '2020-01-08 15:08:36');
INSERT INTO `praise` VALUES ('17', '1', '3', null, '2020-01-08 15:08:39');
INSERT INTO `praise` VALUES ('18', '9', '2', null, '2020-01-09 13:30:36');
INSERT INTO `praise` VALUES ('19', '9', '4', null, '2020-01-09 13:30:40');
INSERT INTO `praise` VALUES ('20', '9', '7', null, '2020-01-09 13:30:44');
INSERT INTO `praise` VALUES ('21', '9', '16', null, '2020-01-09 13:36:22');
INSERT INTO `praise` VALUES ('22', '9', '15', null, '2020-01-09 13:36:23');
INSERT INTO `praise` VALUES ('23', '5', '3', null, '2020-01-09 14:46:34');
INSERT INTO `praise` VALUES ('24', '8', '17', null, '2020-01-09 17:07:52');
INSERT INTO `praise` VALUES ('25', '1', '18', null, '2020-01-09 22:09:31');
INSERT INTO `praise` VALUES ('26', '5', '19', null, '2020-01-10 09:39:41');
INSERT INTO `praise` VALUES ('27', '10', '2', null, '2020-01-10 10:48:09');
INSERT INTO `praise` VALUES ('28', '11', '2', null, '2020-01-10 11:00:36');
INSERT INTO `praise` VALUES ('29', '11', '3', null, '2020-01-10 11:00:38');
INSERT INTO `praise` VALUES ('30', '1', '22', null, '2020-04-13 19:53:59');
INSERT INTO `praise` VALUES ('31', '1', '25', null, '2020-05-11 16:01:18');

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
INSERT INTO `relationship` VALUES ('1', '1');
INSERT INTO `relationship` VALUES ('5', '1');
INSERT INTO `relationship` VALUES ('6', '1');
INSERT INTO `relationship` VALUES ('9', '1');
INSERT INTO `relationship` VALUES ('10', '1');
INSERT INTO `relationship` VALUES ('11', '5');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，回复的主键',
  `c_id` int(11) NOT NULL COMMENT '对哪个评论的回复',
  `u_id` int(11) NOT NULL COMMENT '回复者的id',
  `r_content` varchar(255) COLLATE utf8_bin NOT NULL,
  `r_time` datetime DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('1', '1', '1', 'Hello', '2020-01-16 08:41:18');
INSERT INTO `reply` VALUES ('9', '1', '1', 'Hello world', '2020-01-07 09:32:55');
INSERT INTO `reply` VALUES ('10', '1', '1', '你好牛', '2020-01-07 09:34:36');
INSERT INTO `reply` VALUES ('11', '1', '1', '', '2020-01-07 09:47:53');
INSERT INTO `reply` VALUES ('12', '1', '1', '', '2020-01-07 09:47:56');
INSERT INTO `reply` VALUES ('13', '1', '1', 'asdasd', '2020-01-07 09:48:57');
INSERT INTO `reply` VALUES ('14', '9', '1', 'hello world', '2020-01-07 09:56:12');
INSERT INTO `reply` VALUES ('15', '9', '1', 'jerry', '2020-01-07 09:58:25');
INSERT INTO `reply` VALUES ('16', '9', '1', 'hello', '2020-01-07 10:04:36');
INSERT INTO `reply` VALUES ('17', '2', '1', '你好帅', '2020-01-07 10:04:52');
INSERT INTO `reply` VALUES ('18', '9', '1', '没错，就是牛逼', '2020-01-07 11:41:15');
INSERT INTO `reply` VALUES ('21', '20', '1', 'nihao ', '2020-01-07 13:01:47');
INSERT INTO `reply` VALUES ('22', '21', '1', 'good', '2020-01-07 13:02:16');
INSERT INTO `reply` VALUES ('23', '21', '1', '爱恨', '2020-01-07 13:02:28');
INSERT INTO `reply` VALUES ('24', '4', '1', '', '2020-01-07 13:07:09');
INSERT INTO `reply` VALUES ('25', '5', '1', 'you are so cool', '2020-01-07 13:09:20');
INSERT INTO `reply` VALUES ('26', '8', '1', '你好', '2020-01-07 13:10:09');
INSERT INTO `reply` VALUES ('27', '8', '1', 'hello', '2020-01-07 13:10:43');
INSERT INTO `reply` VALUES ('28', '5', '1', '你好哦', '2020-01-07 13:12:13');
INSERT INTO `reply` VALUES ('29', '5', '1', '你好哦', '2020-01-07 13:12:18');
INSERT INTO `reply` VALUES ('30', '5', '1', '', '2020-01-07 13:13:01');
INSERT INTO `reply` VALUES ('31', '5', '1', 'hello', '2020-01-07 13:13:06');
INSERT INTO `reply` VALUES ('32', '5', '1', 'hello jerry', '2020-01-07 13:13:29');
INSERT INTO `reply` VALUES ('33', '5', '1', 'Daniel', '2020-01-07 13:14:30');
INSERT INTO `reply` VALUES ('34', '9', '1', '我和海外华文问候问候和问候问候', '2020-01-07 13:14:51');
INSERT INTO `reply` VALUES ('35', '18', '1', '牛逼', '2020-01-07 13:15:01');
INSERT INTO `reply` VALUES ('36', '18', '1', '', '2020-01-07 13:28:31');
INSERT INTO `reply` VALUES ('37', '11', '1', 'hello', '2020-01-07 13:30:56');
INSERT INTO `reply` VALUES ('38', '28', '1', 'of course', '2020-01-07 16:28:34');
INSERT INTO `reply` VALUES ('39', '29', '5', '你号', '2020-01-09 09:10:08');
INSERT INTO `reply` VALUES ('40', '36', '1', 'Hey', '2020-01-09 10:08:04');
INSERT INTO `reply` VALUES ('41', '37', '5', 'asd', '2020-01-09 11:09:50');
INSERT INTO `reply` VALUES ('42', '38', '9', '开火箭', '2020-01-09 13:37:06');
INSERT INTO `reply` VALUES ('43', '38', '9', '开什么', '2020-01-09 13:37:17');
INSERT INTO `reply` VALUES ('44', '40', '9', 'not', '2020-01-09 14:03:48');
INSERT INTO `reply` VALUES ('45', '40', '9', 'lalala', '2020-01-09 14:03:51');
INSERT INTO `reply` VALUES ('46', '35', '5', 'Hello', '2020-01-09 14:15:04');
INSERT INTO `reply` VALUES ('47', '52', '5', '你好', '2020-01-09 14:20:44');
INSERT INTO `reply` VALUES ('48', '53', '5', '', '2020-01-09 14:22:35');
INSERT INTO `reply` VALUES ('49', '53', '5', '', '2020-01-09 14:22:38');
INSERT INTO `reply` VALUES ('50', '54', '5', '', '2020-01-09 14:25:13');
INSERT INTO `reply` VALUES ('51', '54', '5', '', '2020-01-09 14:27:33');
INSERT INTO `reply` VALUES ('52', '56', '5', '', '2020-01-09 14:30:49');
INSERT INTO `reply` VALUES ('53', '28', '5', '', '2020-01-09 14:41:10');
INSERT INTO `reply` VALUES ('54', '31', '5', '', '2020-01-09 14:41:21');
INSERT INTO `reply` VALUES ('55', '32', '5', 'asAS', '2020-01-09 14:41:26');
INSERT INTO `reply` VALUES ('56', '59', '5', 'hello', '2020-01-09 14:42:40');
INSERT INTO `reply` VALUES ('57', '61', '1', '你好', '2020-01-09 22:36:33');
INSERT INTO `reply` VALUES ('58', '33', '5', 'hhh', '2020-01-10 09:40:22');
INSERT INTO `reply` VALUES ('59', '37', '10', '你好', '2020-01-10 10:52:30');
INSERT INTO `reply` VALUES ('60', '63', '11', 'me too', '2020-01-10 11:02:12');
INSERT INTO `reply` VALUES ('61', '28', '1', 'hello', '2020-04-13 20:02:51');
INSERT INTO `reply` VALUES ('62', '28', '1', '你好', '2020-04-13 20:03:11');
INSERT INTO `reply` VALUES ('63', '64', '1', '你也是', '2020-04-13 20:03:25');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Daniel', '123', '0', '12', '1', '1', 'who am i ?', 'Daniel', '18750910084', null);
INSERT INTO `user` VALUES ('5', 'Dany', '123', null, null, '1', '0', 'asd', '123', '18750910084', null);
INSERT INTO `user` VALUES ('6', 'Jerry', '123', null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('7', 'Isabella', '123', null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('8', '强强强强', 'qqqq1111', null, null, '1', '0', '111', '111', '15953098092', null);
INSERT INTO `user` VALUES ('9', 'huiqiong', 'a123456789', null, null, '0', '0', 'Who am i ?', 'huiqiong', '13063028603', null);
INSERT INTO `user` VALUES ('10', 'Tom', '123', '1', '1', '123798@163.com', '0', 'Who am i ?', 'Tom', '13063029012', null);
INSERT INTO `user` VALUES ('11', 'Timy', 'a123456', '0', '12', '18750910084@123.com', '0', 'Who am i?', 'Timy', '13063028622', null);
INSERT INTO `user` VALUES ('12', 'fine', '123', '0', '11', '111', '0', '123', '123', '111', null);
INSERT INTO `user` VALUES ('13', 'bendan', '123', '0', '11', null, '0', 'who am i', '笨蛋', null, null);
INSERT INTO `user` VALUES ('14', 'congcong', '1234', '0', '11', null, '0', 'who am i', 'congcong', null, null);
INSERT INTO `user` VALUES ('15', '游客', '123', '0', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('16', 'hhh', '123', '0', '11', null, '0', 'who am i?', 'hhh', null, null);
INSERT INTO `user` VALUES ('17', 'oro', '1234', '0', '11', null, '0', 'who am i?', 'oro', null, null);

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
