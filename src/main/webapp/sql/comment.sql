/*
 Navicat Premium Data Transfer

 Source Server         : MySQL_test
 Source Server Type    : MySQL
 Source Server Version : 50610
 Source Host           : localhost:3306
 Source Schema         : ybbb

 Target Server Type    : MySQL
 Target Server Version : 50610
 File Encoding         : 65001

 Date: 05/07/2020 17:10:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `time` datetime(0) DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `movieId` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `praise` int(11) DEFAULT 0,
  `bad` int(11) DEFAULT 0,
  `response` int(11) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 1, 5, '2020-06-24 16:47:32', 1, 'testA', 'LAJDJGLASJDGI', 666, 777, 888);
INSERT INTO `comment` VALUES (2, 2, 4, '2020-06-24 16:47:32', 2, 'testB', 'ldslsdjgiasdtjlkg', 111, 222, 333);
INSERT INTO `comment` VALUES (5, 1, NULL, '2020-07-04 00:19:58', 8, '1', '1', NULL, NULL, NULL);
INSERT INTO `comment` VALUES (6, 1, NULL, '2020-07-04 00:20:23', 8, '2', '2', NULL, NULL, NULL);
INSERT INTO `comment` VALUES (11, 1, NULL, '2020-07-04 00:56:08', 8, '我是主播', '主播永远滴神', 0, 0, 0);
INSERT INTO `comment` VALUES (12, 1, NULL, '2020-07-04 01:07:15', 2, '谢颢铭永远滴神', '谢颢铭yyds', 0, 0, 0);
INSERT INTO `comment` VALUES (13, 2, NULL, '2020-07-04 01:14:45', 5, '我是谢颢铭', '谢颢铭是真的顶', 0, 0, 0);
INSERT INTO `comment` VALUES (14, 1, NULL, '2020-07-04 18:01:32', 5, '粉宝！！', '粉宝是真的帅！！！！', 0, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
