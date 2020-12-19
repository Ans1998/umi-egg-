/*
 Navicat Premium Data Transfer

 Source Server         : win10(phpstudy)
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : umi_middleground

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 19/12/2020 15:40:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for umi_menu
-- ----------------------------
DROP TABLE IF EXISTS `umi_menu`;
CREATE TABLE `umi_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `father_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父菜单ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单状态',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单路径',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `created_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of umi_menu
-- ----------------------------
INSERT INTO `umi_menu` VALUES (1, '0', '测试列表', 'SmileOutlined', '1', '/test', '/pages/test/index', '2020-12-10 17:03:22.750', '2020-12-18 17:16:52.043');
INSERT INTO `umi_menu` VALUES (2, '0', '菜单管理', 'MenuOutlined', '1', '/menu', NULL, '2020-12-10 17:04:42.488', '2020-12-18 17:16:52.043');
INSERT INTO `umi_menu` VALUES (3, '2', '菜单列表', 'AlignLeftOutlined', '1', '/menu/list', '/pages/menu/index', '2020-12-10 17:05:09.516', '2020-12-18 17:16:52.043');
INSERT INTO `umi_menu` VALUES (4, '0', '权限管理', 'UserOutlined', '1', '/auth', NULL, '2020-12-10 17:07:34.147', '2020-12-18 17:16:52.043');
INSERT INTO `umi_menu` VALUES (5, '4', '管理员列表', 'TeamOutlined', '1', '/auth/adminUser/list', '/pages/authority/adminUser/index', '2020-12-10 17:08:35.136', '2020-12-18 17:16:52.043');
INSERT INTO `umi_menu` VALUES (6, '4', '角色列表', 'UserSwitchOutlined', '1', '/auth/adminRole/list', '/pages/authority/adminRole/index', '2020-12-10 17:08:57.449', '2020-12-18 17:16:52.043');

-- ----------------------------
-- Table structure for umi_role
-- ----------------------------
DROP TABLE IF EXISTS `umi_role`;
CREATE TABLE `umi_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色状态',
  `created_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of umi_role
-- ----------------------------
INSERT INTO `umi_role` VALUES (2, '测试角色-1', '测试角色-1', '1', '2020-12-11 11:42:48.148', '2020-12-18 11:38:51.316');
INSERT INTO `umi_role` VALUES (3, '测试角色', '就是一个测试的角色', '1', '2020-12-17 17:34:42.920', '2020-12-18 11:53:59.876');

-- ----------------------------
-- Table structure for umi_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `umi_role_menu`;
CREATE TABLE `umi_role_menu`  (
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色ID',
  `menu_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单ID',
  `created_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of umi_role_menu
-- ----------------------------
INSERT INTO `umi_role_menu` VALUES ('3', '5', '2020-12-18 15:10:43.999', '2020-12-18 15:10:43.999');
INSERT INTO `umi_role_menu` VALUES ('3', '4', '2020-12-18 15:10:43.999', '2020-12-18 15:10:43.999');
INSERT INTO `umi_role_menu` VALUES ('2', '5', '2020-12-18 17:19:23.913', '2020-12-18 17:19:23.913');
INSERT INTO `umi_role_menu` VALUES ('2', '4', '2020-12-18 17:19:23.913', '2020-12-18 17:19:23.913');
INSERT INTO `umi_role_menu` VALUES ('2', '6', '2020-12-18 17:19:23.913', '2020-12-18 17:19:23.913');
INSERT INTO `umi_role_menu` VALUES ('3', '1', '2020-12-18 15:10:43.999', '2020-12-18 15:10:43.999');
INSERT INTO `umi_role_menu` VALUES ('3', '6', '2020-12-18 15:10:43.999', '2020-12-18 15:10:43.999');

-- ----------------------------
-- Table structure for umi_user
-- ----------------------------
DROP TABLE IF EXISTS `umi_user`;
CREATE TABLE `umi_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `alias_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户真名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户状态',
  `created_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of umi_user
-- ----------------------------
INSERT INTO `umi_user` VALUES (1, NULL, 'admin', '系统总管理员', '00ba7ceab606427071d5d755ea99e976', '1', '', '');
INSERT INTO `umi_user` VALUES (3, '2', 'test', '测试用户', '00ba7ceab606427071d5d755ea99e976', '1', '2020-12-11 16:07:43.835', '2020-12-11 16:09:48.098');
INSERT INTO `umi_user` VALUES (5, '3', 'an', '测试An', '21232f297a57a5a743894a0e4a801fc3', '1', '2020-12-18 11:27:17.771', '2020-12-18 11:39:26.184');

SET FOREIGN_KEY_CHECKS = 1;
