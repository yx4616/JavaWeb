/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80028
Source Host           : localhost:3306
Source Database       : constructiondb

Target Server Type    : MYSQL
Target Server Version : 80028
File Encoding         : 65001

Date: 2023-02-15 15:30:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_enterprise_info
-- ----------------------------
DROP TABLE IF EXISTS `t_enterprise_info`;
CREATE TABLE `t_enterprise_info` (
  `Ent_id` char(12) NOT NULL COMMENT '主键',
  `Ent_name` varchar(32) NOT NULL,
  `Begin_date` datetime DEFAULT NULL COMMENT '日期型',
  `Addr` varchar(64) DEFAULT NULL,
  `Reg_capital` decimal(12,4) DEFAULT NULL COMMENT '数值型单位万元',
  PRIMARY KEY (`Ent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_enterprise_info
-- ----------------------------
INSERT INTO `t_enterprise_info` VALUES ('123', '123', '2022-12-01 00:00:00', 'aa', '123.0000');
INSERT INTO `t_enterprise_info` VALUES ('200200078', '长沙城建有限公司', '2002-01-01 00:00:00', '长沙市天心区', '1000.0000');
INSERT INTO `t_enterprise_info` VALUES ('200400005', '天信建筑企业有限公司', '2004-01-01 00:00:00', '长沙市芙蓉区', '1500.0000');
INSERT INTO `t_enterprise_info` VALUES ('333', '333', '2022-12-01 00:00:00', '123', '123.0000');
INSERT INTO `t_enterprise_info` VALUES ('555', '555', '2022-12-01 00:00:00', null, '11.0000');

-- ----------------------------
-- Table structure for t_project
-- ----------------------------
DROP TABLE IF EXISTS `t_project`;
CREATE TABLE `t_project` (
  `project_id` varchar(32) NOT NULL,
  `project_name` varchar(64) NOT NULL,
  `deputy_name` varchar(16) DEFAULT NULL,
  `telephone` varchar(16) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_project
-- ----------------------------
INSERT INTO `t_project` VALUES ('2019-01', '住宅小区一期工程', '张三', '2626266', '长沙市天心区');
INSERT INTO `t_project` VALUES ('2019-02', '教学大楼', '王平', '8374777', '长沙市芙蓉区');
