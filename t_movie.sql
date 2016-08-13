/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50153
Source Host           : localhost:3306
Source Database       : movie

Target Server Type    : MYSQL
Target Server Version : 50153
File Encoding         : 65001

Date: 2016-02-29 23:30:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_movie`
-- ----------------------------
DROP TABLE IF EXISTS `t_movie`;
CREATE TABLE `t_movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL COMMENT '片名',
  `lang` varchar(50) DEFAULT NULL COMMENT '时长',
  `manuscript` varchar(255) DEFAULT NULL COMMENT '稿件',
  `translate` varchar(50) DEFAULT NULL COMMENT '翻译',
  `collate2` varchar(50) DEFAULT NULL COMMENT '校对',
  `time` varchar(255) DEFAULT NULL COMMENT '时间轴',
  `newtime` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_movie
-- ----------------------------
INSERT INTO `t_movie` VALUES ('1', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('2', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('3', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('4', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('5', '卧虎长龙', '230m', '无', '我', '我父母', '222', '2016-02-29 23:29:32');
INSERT INTO `t_movie` VALUES ('6', '卧虎长龙', '230m', '无', '我', '我父母', '222', '2016-02-29 23:29:32');
INSERT INTO `t_movie` VALUES ('7', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('8', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('9', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('10', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('11', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('12', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('13', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('14', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('15', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');

INSERT INTO `t_movie` VALUES ('16', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('17', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('18', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('19', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('20', '卧虎长龙', '230m', '无', '我', '我父母', '222', '2016-02-29 23:29:32');
INSERT INTO `t_movie` VALUES ('21', '卧虎长龙', '230m', '无', '我', '我父母', '222', '2016-02-29 23:29:32');
INSERT INTO `t_movie` VALUES ('22', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('23', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('24', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('25', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('26', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('27', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('28', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('29', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
INSERT INTO `t_movie` VALUES ('30', '回家', '150m', '无', '初次出手', '伍佰', 'sss', '2016-02-29 21:37:14');
