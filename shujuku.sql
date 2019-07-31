/*
Navicat MySQL Data Transfer

Source Server         : lcoalhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-05-23 14:28:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for archives
-- ----------------------------
DROP TABLE IF EXISTS `archives`;
CREATE TABLE `archives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `archiveName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of archives
-- ----------------------------
INSERT INTO `archives` VALUES ('1', '2019年04月');
INSERT INTO `archives` VALUES ('2', '2019年05月');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleId` bigint(20) NOT NULL,
  `author` varchar(255) NOT NULL,
  `originalAuthor` varchar(255) NOT NULL,
  `articleTitle` varchar(255) NOT NULL,
  `articleContent` longtext NOT NULL,
  `articleTags` varchar(255) NOT NULL,
  `articleType` varchar(255) NOT NULL,
  `articleCategories` varchar(255) NOT NULL,
  `publishDate` varchar(255) NOT NULL,
  `updateDate` varchar(255) NOT NULL,
  `articleUrl` varchar(255) NOT NULL,
  `articleTabloid` text NOT NULL,
  `likes` int(11) NOT NULL,
  `lastArticleId` bigint(20) DEFAULT NULL,
  `nextArticleId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
DROP TABLE IF EXISTS `article_likes_record`;
CREATE TABLE `article_likes_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleId` bigint(20) NOT NULL,
  `likerId` int(11) NOT NULL,
  `likeDate` varchar(255) NOT NULL,
  `isRead` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_likes_record
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '我的故事');
INSERT INTO `categories` VALUES ('2', 'SpringBoot');

-- ----------------------------
-- Table structure for comment_likes_record
-- ----------------------------
DROP TABLE IF EXISTS `comment_likes_record`;
CREATE TABLE `comment_likes_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleId` bigint(20) NOT NULL,
  `pId` int(11) NOT NULL,
  `likerId` int(11) NOT NULL,
  `likeDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment_likes_record
-- ----------------------------

-- ----------------------------
-- Table structure for comment_record
-- ----------------------------
DROP TABLE IF EXISTS `comment_record`;
CREATE TABLE `comment_record` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `pId` bigint(20) NOT NULL,
  `articleId` bigint(20) NOT NULL,
  `answererId` int(11) NOT NULL,
  `respondentId` int(11) NOT NULL,
  `commentDate` varchar(255) NOT NULL,
  `likes` int(255) NOT NULL,
  `commentContent` text NOT NULL,
  `isRead` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment_record
-- ----------------------------
-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedbackContent` text NOT NULL,
  `contactInfo` varchar(255) DEFAULT NULL,
  `personId` int(11) NOT NULL,
  `feedbackDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for friendlink
-- ----------------------------
DROP TABLE IF EXISTS `friendlink`;
CREATE TABLE `friendlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blogger` varchar(40) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friendlink
-- ----------------------------
-- ----------------------------
-- Table structure for leave_message_likes_record
-- ----------------------------
DROP TABLE IF EXISTS `leave_message_likes_record`;
CREATE TABLE `leave_message_likes_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageName` varchar(255) NOT NULL,
  `pId` int(11) NOT NULL,
  `likerId` int(11) NOT NULL,
  `likeDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leave_message_likes_record
-- ----------------------------

-- ----------------------------
-- Table structure for leave_message_record
-- ----------------------------
DROP TABLE IF EXISTS `leave_message_record`;
CREATE TABLE `leave_message_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageName` varchar(255) NOT NULL,
  `pId` int(255) NOT NULL,
  `answererId` int(11) NOT NULL,
  `respondentId` int(11) NOT NULL,
  `leaveMessageDate` varchar(255) NOT NULL,
  `likes` int(11) NOT NULL,
  `leaveMessageContent` text NOT NULL,
  `isRead` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leave_message_record
-- ----------------------------
INSERT INTO `leave_message_record` VALUES ('14', 'categories', '0', '1', '1', '2019-05-27 13:53', '0', '分类留言测试', '0');
INSERT INTO `leave_message_record` VALUES ('15', 'archives', '0', '1', '1', '2019-05-27 13:53', '0', '归档留言', '0');
INSERT INTO `leave_message_record` VALUES ('16', 'tags', '0', '1', '1', '2019-05-27 13:53', '0', '标签留言', '0');

-- ----------------------------
-- Table structure for privateword
-- ----------------------------
DROP TABLE IF EXISTS `privateword`;
CREATE TABLE `privateword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privateWord` varchar(255) NOT NULL,
  `publisherId` varchar(255) NOT NULL,
  `replierId` varchar(255) DEFAULT NULL,
  `replyContent` varchar(255) DEFAULT NULL,
  `publisherDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privateword
-- ----------------------------
INSERT INTO `privateword` VALUES ('8', '悄悄话测试', '1', '0', null, '2019-05-29 14:13:32');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ROLE_USER');
INSERT INTO `role` VALUES ('2', 'ROLE_ADMIN');
INSERT INTO `role` VALUES ('3', 'ROLE_SUPERADMIN');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagName` varchar(255) NOT NULL,
  `tagSize` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', '随笔感悟', '15');
INSERT INTO `tags` VALUES ('4', 'SpringBoot', '17');
INSERT INTO `tags` VALUES ('5', '个人博客', '18');
INSERT INTO `tags` VALUES ('18', '原创', '20');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` char(255) NOT NULL,
  `trueName` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `personalBrief` varchar(255) DEFAULT NULL,
  `avatarImgUrl` text NOT NULL,
  `recentlyLanded` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '18851827515', 'jeven', 'a3caed36f0fe5a01e5f144db8927235e', 'male', '冉杰文', '1998-06-06', '1322926851@qq.com', '', 'https://vediodemo.oss-cn-hangzhou.aliyuncs.com/myblog/static/me.jpg?x-oss-process=style/rule1', '2019-05-23 14:24:39');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `User_id` int(11) NOT NULL,
  `Role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1');
INSERT INTO `user_role` VALUES ('1', '3');

-- ----------------------------
-- Table structure for visitor
-- ----------------------------
DROP TABLE IF EXISTS `visitor`;
CREATE TABLE `visitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visitorNum` bigint(20) NOT NULL,
  `pageName` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visitor
-- ----------------------------
INSERT INTO `visitor` VALUES ('1', '10', 'totalVisitor');
INSERT INTO `visitor` VALUES ('2', '10', 'visitorVolume');
INSERT INTO `visitor` VALUES ('', '3', '1559246644');
