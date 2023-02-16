/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80028
Source Host           : localhost:3306
Source Database       : shopdb

Target Server Type    : MYSQL
Target Server Version : 80028
File Encoding         : 65001

Date: 2023-02-15 20:20:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `t_message_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES ('1', '1', '买书籍多少\r\n可以包邮？', '我想买 2 本书，请问多少钱包邮送到\r\n家？\r', '2014-11-12 00:00:00');
INSERT INTO `t_message` VALUES ('2', '1', '冰箱有三门\r\n的吗？', '请问格力的冰箱有三门的没？有大容\r\n量的没？\r', '2014-12-01 00:00:00');
INSERT INTO `t_message` VALUES ('3', '1', '冰箱最大容\r\n量是多大？', '冰箱最大容量是多大？什么品牌的？\r\n包运送到家吗？\r', '2014-12-01 00:00:00');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int NOT NULL,
  `name` varchar(25) NOT NULL,
  `trueName` varchar(25) NOT NULL,
  `cardId` varchar(18) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(25) NOT NULL,
  `qqId` varchar(25) DEFAULT NULL,
  `pwd` varchar(25) NOT NULL DEFAULT '123456',
  `regTime` datetime NOT NULL,
  `question` varchar(60) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `state` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '1x', '张丽', '220103198203152514', '1x0315@163.com', '13609764565', '21231980', '123456', '2007-11-29 00:00:00', '您的生日', '不告诉你\r', '1');
