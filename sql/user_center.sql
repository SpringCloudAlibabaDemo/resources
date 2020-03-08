/*
 Navicat Premium Data Transfer

 Source Server         : PAX
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : user_center

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 08/03/2020 15:45:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bonus_event_log
-- ----------------------------
DROP TABLE IF EXISTS `bonus_event_log`;
CREATE TABLE `bonus_event_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT 'user.id',
  `value` int(11) NULL DEFAULT NULL COMMENT '积分操作值',
  `event` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发生的事件',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_bonus_event_log_user1_idx`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分变更记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bonus_event_log
-- ----------------------------
INSERT INTO `bonus_event_log` VALUES (1, 4, 50, 'CONTRIBUTE', '2020-03-08 12:00:56', '投稿加积分..');
INSERT INTO `bonus_event_log` VALUES (2, 4, 50, 'CONTRIBUTE', '2020-03-08 12:00:56', '投稿加积分..');
INSERT INTO `bonus_event_log` VALUES (3, 4, 50, 'CONTRIBUTE', '2020-03-08 14:04:07', '投稿加积分..');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `wx_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '微信id',
  `wx_nickname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '微信昵称',
  `roles` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '角色',
  `avatar_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '头像地址',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  `bonus` int(11) NOT NULL DEFAULT 300 COMMENT '积分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分享' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'yanghao', '浅时光', 'admin', '1', '2020-01-18 17:12:33', '2020-01-18 17:12:33', 100);
INSERT INTO `user` VALUES (2, 'hanjie', '阿萨德', 'admin', '1', '2020-01-18 17:12:33', '2020-01-18 17:12:33', 100);
INSERT INTO `user` VALUES (3, 'songhaoyu', '讽德诵功', 'admin', '1', '2020-01-18 17:12:33', '2020-01-18 17:12:33', 100);
INSERT INTO `user` VALUES (4, 'luxu', '文芳认为', 'admin', '1', '2020-01-18 17:12:33', '2020-01-18 17:12:33', 200);
INSERT INTO `user` VALUES (5, 'lufei', '花港饭店', 'admin', '1', '2020-01-18 17:12:33', '2020-01-18 17:12:33', 100);
INSERT INTO `user` VALUES (6, 'lixiaowei', '阿斯蒂芬', 'admin', '1', '2020-01-18 17:12:33', '2020-01-18 17:12:33', 100);
INSERT INTO `user` VALUES (7, 'jiangzihao', '大锅饭', 'admin', '1', '2020-01-18 17:12:33', '2020-01-18 17:12:33', 100);
INSERT INTO `user` VALUES (8, 'qijie', '罗克佳华', 'admin', '1', '2020-01-18 17:12:33', '2020-01-18 17:12:33', 100);

SET FOREIGN_KEY_CHECKS = 1;
