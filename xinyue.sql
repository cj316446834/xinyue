/*
Navicat MySQL Data Transfer

Source Server         : localhost_33060
Source Server Version : 50727
Source Host           : 127.0.0.1:33060
Source Database       : xinyue

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2020-10-27 00:00:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '首页', 'fa-bar-chart', '/', null, null, '2020-10-18 15:01:55');
INSERT INTO `admin_menu` VALUES ('2', '0', '3', '系统管理', 'fa-tasks', null, null, null, '2020-10-18 15:42:24');
INSERT INTO `admin_menu` VALUES ('3', '2', '4', '管理员', 'fa-users', 'auth/users', null, null, '2020-10-18 15:42:24');
INSERT INTO `admin_menu` VALUES ('4', '2', '5', '角色', 'fa-user', 'auth/roles', null, null, '2020-10-18 15:42:24');
INSERT INTO `admin_menu` VALUES ('5', '2', '6', '权限', 'fa-ban', 'auth/permissions', null, null, '2020-10-18 15:42:24');
INSERT INTO `admin_menu` VALUES ('6', '2', '7', '菜单', 'fa-bars', 'auth/menu', null, null, '2020-10-18 15:42:24');
INSERT INTO `admin_menu` VALUES ('7', '2', '8', '操作日志', 'fa-history', 'auth/logs', null, null, '2020-10-18 15:42:24');
INSERT INTO `admin_menu` VALUES ('9', '0', '2', '用户管理', 'fa-users', '/users', null, '2020-10-18 15:50:44', '2020-10-18 15:50:53');
INSERT INTO `admin_menu` VALUES ('10', '0', '9', '文章管理', 'fa-500px', null, null, '2020-10-23 06:12:13', '2020-10-23 06:12:35');
INSERT INTO `admin_menu` VALUES ('11', '10', '10', '栏目管理', 'fa-bars', '/categories', null, '2020-10-23 06:13:38', '2020-10-26 13:55:20');
INSERT INTO `admin_menu` VALUES ('12', '10', '11', '文章列表', 'fa-chain', '/articles', null, '2020-10-23 06:14:25', '2020-10-26 13:55:20');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=602 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '192.168.10.1', '[]', '2020-10-18 14:57:47', '2020-10-18 14:57:47');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 14:58:52', '2020-10-18 14:58:52');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/menu/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 14:59:18', '2020-10-18 14:59:18');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:01:28', '2020-10-18 15:01:28');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/menu/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:01:41', '2020-10-18 15:01:41');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/menu/1', 'PUT', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"9yRf3FrTIXIEtQ0ZFMbJcaoXhE4KVxvA1i8abDyK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/auth\\/menu\"}', '2020-10-18 15:01:54', '2020-10-18 15:01:54');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-18 15:01:55', '2020-10-18 15:01:55');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-18 15:03:31', '2020-10-18 15:03:31');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-18 15:09:42', '2020-10-18 15:09:42');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/menu/2/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:11:34', '2020-10-18 15:11:34');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/menu/2', 'PUT', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"9yRf3FrTIXIEtQ0ZFMbJcaoXhE4KVxvA1i8abDyK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/auth\\/menu\"}', '2020-10-18 15:11:46', '2020-10-18 15:11:46');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-18 15:11:47', '2020-10-18 15:11:47');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/menu/3/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:11:54', '2020-10-18 15:11:54');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/menu/3', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"9yRf3FrTIXIEtQ0ZFMbJcaoXhE4KVxvA1i8abDyK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/auth\\/menu\"}', '2020-10-18 15:12:02', '2020-10-18 15:12:02');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-18 15:12:03', '2020-10-18 15:12:03');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/menu/4/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:12:08', '2020-10-18 15:12:08');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/menu/4', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"9yRf3FrTIXIEtQ0ZFMbJcaoXhE4KVxvA1i8abDyK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/auth\\/menu\"}', '2020-10-18 15:12:30', '2020-10-18 15:12:30');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-18 15:12:31', '2020-10-18 15:12:31');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/menu/5/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:12:41', '2020-10-18 15:12:41');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/menu/5', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"9yRf3FrTIXIEtQ0ZFMbJcaoXhE4KVxvA1i8abDyK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/auth\\/menu\"}', '2020-10-18 15:12:48', '2020-10-18 15:12:48');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-18 15:12:48', '2020-10-18 15:12:48');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/menu/6/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:12:52', '2020-10-18 15:12:52');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/menu/6', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"9yRf3FrTIXIEtQ0ZFMbJcaoXhE4KVxvA1i8abDyK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/auth\\/menu\"}', '2020-10-18 15:12:58', '2020-10-18 15:12:58');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-18 15:12:59', '2020-10-18 15:12:59');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:13:06', '2020-10-18 15:13:06');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/menu/7', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"9yRf3FrTIXIEtQ0ZFMbJcaoXhE4KVxvA1i8abDyK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/auth\\/menu\"}', '2020-10-18 15:13:16', '2020-10-18 15:13:16');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-18 15:13:16', '2020-10-18 15:13:16');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-18 15:41:09', '2020-10-18 15:41:09');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:41:16', '2020-10-18 15:41:16');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"\\/user\",\"roles\":[null],\"permission\":null,\"_token\":\"9yRf3FrTIXIEtQ0ZFMbJcaoXhE4KVxvA1i8abDyK\"}', '2020-10-18 15:42:05', '2020-10-18 15:42:05');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-18 15:42:05', '2020-10-18 15:42:05');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"_token\":\"9yRf3FrTIXIEtQ0ZFMbJcaoXhE4KVxvA1i8abDyK\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-10-18 15:42:24', '2020-10-18 15:42:24');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:42:25', '2020-10-18 15:42:25');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-18 15:42:35', '2020-10-18 15:42:35');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/menu/8', 'DELETE', '192.168.10.1', '{\"_method\":\"delete\",\"_token\":\"9yRf3FrTIXIEtQ0ZFMbJcaoXhE4KVxvA1i8abDyK\"}', '2020-10-18 15:43:07', '2020-10-18 15:43:07');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:43:08', '2020-10-18 15:43:08');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-18 15:43:15', '2020-10-18 15:43:15');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:43:28', '2020-10-18 15:43:28');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu/6/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:43:33', '2020-10-18 15:43:33');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:43:41', '2020-10-18 15:43:41');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:43:52', '2020-10-18 15:43:52');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:44:03', '2020-10-18 15:44:03');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:44:38', '2020-10-18 15:44:38');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:44:51', '2020-10-18 15:44:51');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:45:41', '2020-10-18 15:45:41');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:47:37', '2020-10-18 15:47:37');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/users/1', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:47:49', '2020-10-18 15:47:49');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/users/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:47:57', '2020-10-18 15:47:57');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/users/1', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:48:17', '2020-10-18 15:48:17');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:49:19', '2020-10-18 15:49:19');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:49:32', '2020-10-18 15:49:32');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"9yRf3FrTIXIEtQ0ZFMbJcaoXhE4KVxvA1i8abDyK\"}', '2020-10-18 15:50:44', '2020-10-18 15:50:44');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-18 15:50:44', '2020-10-18 15:50:44');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"_token\":\"9yRf3FrTIXIEtQ0ZFMbJcaoXhE4KVxvA1i8abDyK\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-10-18 15:50:53', '2020-10-18 15:50:53');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:50:54', '2020-10-18 15:50:54');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:51:05', '2020-10-18 15:51:05');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/users', 'GET', '192.168.10.1', '[]', '2020-10-18 15:51:10', '2020-10-18 15:51:10');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:51:17', '2020-10-18 15:51:17');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:51:19', '2020-10-18 15:51:19');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/users', 'GET', '192.168.10.1', '[]', '2020-10-18 15:52:21', '2020-10-18 15:52:21');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/users', 'GET', '192.168.10.1', '[]', '2020-10-18 15:52:38', '2020-10-18 15:52:38');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:53:08', '2020-10-18 15:53:08');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/permissions', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:56:48', '2020-10-18 15:56:48');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/permissions/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:56:50', '2020-10-18 15:56:50');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/auth/permissions', 'POST', '192.168.10.1', '{\"slug\":\"users\",\"name\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/users*\",\"_token\":\"9yRf3FrTIXIEtQ0ZFMbJcaoXhE4KVxvA1i8abDyK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/auth\\/permissions\"}', '2020-10-18 15:57:22', '2020-10-18 15:57:22');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/auth/permissions', 'GET', '192.168.10.1', '[]', '2020-10-18 15:57:22', '2020-10-18 15:57:22');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/auth/roles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:57:55', '2020-10-18 15:57:55');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/roles/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 15:57:58', '2020-10-18 15:57:58');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/roles', 'POST', '192.168.10.1', '{\"slug\":\"operation\",\"name\":\"\\u8fd0\\u8425\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",null],\"_token\":\"9yRf3FrTIXIEtQ0ZFMbJcaoXhE4KVxvA1i8abDyK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/auth\\/roles\"}', '2020-10-18 15:58:44', '2020-10-18 15:58:44');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/auth/roles', 'GET', '192.168.10.1', '[]', '2020-10-18 15:58:45', '2020-10-18 15:58:45');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin', 'GET', '192.168.10.1', '[]', '2020-10-19 15:05:18', '2020-10-19 15:05:18');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-19 15:05:29', '2020-10-19 15:05:29');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/users', 'GET', '192.168.10.1', '[]', '2020-10-19 15:07:19', '2020-10-19 15:07:19');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/users', 'GET', '192.168.10.1', '[]', '2020-10-19 15:07:37', '2020-10-19 15:07:37');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin', 'GET', '192.168.10.1', '[]', '2020-10-23 06:10:33', '2020-10-23 06:10:33');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-23 06:10:43', '2020-10-23 06:10:43');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-23 06:10:46', '2020-10-23 06:10:46');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-500px\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"zIdq5TqNtUeD206PV2I4SiHmdRUNXlD4MMaWlgVS\"}', '2020-10-23 06:12:12', '2020-10-23 06:12:12');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-23 06:12:13', '2020-10-23 06:12:13');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"_token\":\"zIdq5TqNtUeD206PV2I4SiHmdRUNXlD4MMaWlgVS\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":10}]\"}', '2020-10-23 06:12:35', '2020-10-23 06:12:35');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-23 06:12:36', '2020-10-23 06:12:36');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"10\",\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"zIdq5TqNtUeD206PV2I4SiHmdRUNXlD4MMaWlgVS\"}', '2020-10-23 06:13:37', '2020-10-23 06:13:37');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-23 06:13:38', '2020-10-23 06:13:38');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"10\",\"title\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"icon\":\"fa-chain\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"zIdq5TqNtUeD206PV2I4SiHmdRUNXlD4MMaWlgVS\"}', '2020-10-23 06:14:25', '2020-10-23 06:14:25');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-23 06:14:25', '2020-10-23 06:14:25');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-23 06:14:30', '2020-10-23 06:14:30');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-23 06:53:09', '2020-10-23 06:53:09');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-23 06:54:15', '2020-10-23 06:54:15');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/auth/menu/11/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-23 06:55:00', '2020-10-23 06:55:00');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/auth/menu/11', 'PUT', '192.168.10.1', '{\"parent_id\":\"10\",\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7b\",\"icon\":\"fa-bars\",\"uri\":\"\\/categories\",\"roles\":[null],\"permission\":null,\"_token\":\"zIdq5TqNtUeD206PV2I4SiHmdRUNXlD4MMaWlgVS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/auth\\/menu\"}', '2020-10-23 06:55:09', '2020-10-23 06:55:09');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-23 06:55:10', '2020-10-23 06:55:10');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-23 06:56:55', '2020-10-23 06:56:55');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-23 07:12:58', '2020-10-23 07:12:58');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-23 07:13:02', '2020-10-23 07:13:02');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"name\":\"\\u6574\\u5f62\\u7f8e\\u5bb9\",\"description\":null,\"sortrank\":null,\"_token\":\"zIdq5TqNtUeD206PV2I4SiHmdRUNXlD4MMaWlgVS\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-23 07:20:32', '2020-10-23 07:20:32');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/categories/create', 'GET', '192.168.10.1', '[]', '2020-10-23 07:20:33', '2020-10-23 07:20:33');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"name\":\"\\u6574\\u5f62\\u7f8e\\u5bb9\",\"description\":null,\"sortrank\":\"1\",\"_token\":\"zIdq5TqNtUeD206PV2I4SiHmdRUNXlD4MMaWlgVS\"}', '2020-10-23 07:26:13', '2020-10-23 07:26:13');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-23 07:26:13', '2020-10-23 07:26:13');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/categories/1', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-23 07:26:26', '2020-10-23 07:26:26');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-23 07:26:32', '2020-10-23 07:26:32');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin', 'GET', '192.168.10.1', '[]', '2020-10-25 03:21:53', '2020-10-25 03:21:53');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 03:22:03', '2020-10-25 03:22:03');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 03:22:07', '2020-10-25 03:22:07');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"name\":\"ces\",\"description\":\"safsd\",\"sortrank\":\"-5\",\"_token\":\"7FaRZ316wS8FMQT4qQtPQpeiYGpKn1XiSkFP9JZG\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 03:22:19', '2020-10-25 03:22:19');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 03:22:20', '2020-10-25 03:22:20');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/_handle_action_', 'POST', '192.168.10.1', '{\"_key\":\"2\",\"_model\":\"App_Models_Category\",\"_token\":\"7FaRZ316wS8FMQT4qQtPQpeiYGpKn1XiSkFP9JZG\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-10-25 03:22:39', '2020-10-25 03:22:39');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 03:22:39', '2020-10-25 03:22:39');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 03:24:57', '2020-10-25 03:24:57');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 03:25:00', '2020-10-25 03:25:00');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 03:25:12', '2020-10-25 03:25:12');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 05:44:35', '2020-10-25 05:44:35');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 05:44:38', '2020-10-25 05:44:38');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 05:55:05', '2020-10-25 05:55:05');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 05:55:06', '2020-10-25 05:55:06');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 05:57:19', '2020-10-25 05:57:19');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 05:57:36', '2020-10-25 05:57:36');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"name\":\"\\u54c1\\u724c\\u6545\\u4e8b\",\"reid\":\"1\",\"description\":null,\"sortrank\":null,\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 05:57:58', '2020-10-25 05:57:58');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/categories/create', 'GET', '192.168.10.1', '[]', '2020-10-25 05:57:59', '2020-10-25 05:57:59');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"name\":\"\\u54c1\\u724c\\u6545\\u4e8b\",\"reid\":\"1\",\"description\":null,\"sortrank\":\"0\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\"}', '2020-10-25 05:58:10', '2020-10-25 05:58:10');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 05:58:10', '2020-10-25 05:58:10');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/categories/9', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 05:58:20', '2020-10-25 05:58:20');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 05:58:39', '2020-10-25 05:58:39');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 06:01:06', '2020-10-25 06:01:06');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 06:03:49', '2020-10-25 06:03:49');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 06:04:14', '2020-10-25 06:04:14');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 06:04:31', '2020-10-25 06:04:31');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 06:09:27', '2020-10-25 06:09:27');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 06:10:00', '2020-10-25 06:10:00');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 06:15:33', '2020-10-25 06:15:33');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 06:16:13', '2020-10-25 06:16:13');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 06:16:20', '2020-10-25 06:16:20');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 06:18:47', '2020-10-25 06:18:47');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 06:21:14', '2020-10-25 06:21:14');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:03:09', '2020-10-25 07:03:09');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:10:09', '2020-10-25 07:10:09');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:11:11', '2020-10-25 07:11:11');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:12:43', '2020-10-25 07:12:43');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/categories/create', 'GET', '192.168.10.1', '[]', '2020-10-25 07:19:09', '2020-10-25 07:19:09');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/categories/create', 'GET', '192.168.10.1', '[]', '2020-10-25 07:19:49', '2020-10-25 07:19:49');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/categories/create', 'GET', '192.168.10.1', '[]', '2020-10-25 07:19:51', '2020-10-25 07:19:51');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/categories/create', 'GET', '192.168.10.1', '[]', '2020-10-25 07:27:16', '2020-10-25 07:27:16');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:27:27', '2020-10-25 07:27:27');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:27:33', '2020-10-25 07:27:33');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:27:35', '2020-10-25 07:27:35');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:32:14', '2020-10-25 07:32:14');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:32:29', '2020-10-25 07:32:29');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:37:45', '2020-10-25 07:37:45');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:37:50', '2020-10-25 07:37:50');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:37:52', '2020-10-25 07:37:52');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"123\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\\/\"}', '2020-10-25 07:38:02', '2020-10-25 07:38:02');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/categories/create', 'GET', '192.168.10.1', '[]', '2020-10-25 07:38:03', '2020-10-25 07:38:03');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:38:43', '2020-10-25 07:38:43');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"0\",\"name\":\"1222\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\"}', '2020-10-25 07:38:48', '2020-10-25 07:38:48');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:38:49', '2020-10-25 07:38:49');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:39:10', '2020-10-25 07:39:10');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:39:17', '2020-10-25 07:39:17');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/categories/10/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:39:27', '2020-10-25 07:39:27');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:39:35', '2020-10-25 07:39:35');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:39:54', '2020-10-25 07:39:54');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:39:57', '2020-10-25 07:39:57');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"0\",\"name\":\"\\u6574\\u5f62\\u7f8e\\u5bb9\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:40:06', '2020-10-25 07:40:06');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:40:07', '2020-10-25 07:40:07');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:40:29', '2020-10-25 07:40:29');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"0\",\"name\":\"\\u76ae\\u80a4\\u7f8e\\u5bb9\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:40:44', '2020-10-25 07:40:44');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:40:44', '2020-10-25 07:40:44');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:40:47', '2020-10-25 07:40:47');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"0\",\"name\":\"\\u6ce8\\u5c04\\u7f8e\\u5bb9\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:40:54', '2020-10-25 07:40:54');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:40:54', '2020-10-25 07:40:54');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:40:57', '2020-10-25 07:40:57');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"0\",\"name\":\"\\u79c1\\u5bc6\\u6574\\u5f62\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:41:04', '2020-10-25 07:41:04');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:41:04', '2020-10-25 07:41:04');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:41:06', '2020-10-25 07:41:06');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"0\",\"name\":\"\\u54c1\\u724c\\u4e2d\\u5fc3\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:41:11', '2020-10-25 07:41:11');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:41:11', '2020-10-25 07:41:11');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:41:18', '2020-10-25 07:41:18');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"15\",\"name\":\"\\u54c1\\u724c\\u6545\\u4e8b\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:41:38', '2020-10-25 07:41:38');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:41:38', '2020-10-25 07:41:38');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:41:43', '2020-10-25 07:41:43');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"15\",\"name\":\"\\u8363\\u8a89\\u8d44\\u8d28\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:41:48', '2020-10-25 07:41:48');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:41:48', '2020-10-25 07:41:48');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:42:09', '2020-10-25 07:42:09');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"15\",\"name\":\"\\u6743\\u5a01\\u4e13\\u5bb6\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:42:18', '2020-10-25 07:42:18');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:42:18', '2020-10-25 07:42:18');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:42:31', '2020-10-25 07:42:31');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"15\",\"name\":\"\\u5c16\\u7aef\\u8bbe\\u5907\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:42:35', '2020-10-25 07:42:35');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:42:35', '2020-10-25 07:42:35');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:42:38', '2020-10-25 07:42:38');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"15\",\"name\":\"\\u9662\\u957f\\u5bc4\\u8bed\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:42:45', '2020-10-25 07:42:45');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:42:45', '2020-10-25 07:42:45');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:42:47', '2020-10-25 07:42:47');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"15\",\"name\":\"\\u4e94\\u661f\\u73af\\u5883\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:42:55', '2020-10-25 07:42:55');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:42:55', '2020-10-25 07:42:55');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:43:00', '2020-10-25 07:43:00');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"15\",\"name\":\"\\u8054\\u7cfb\\u6211\\u4eec\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:43:04', '2020-10-25 07:43:04');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:43:04', '2020-10-25 07:43:04');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:43:09', '2020-10-25 07:43:09');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"15\",\"name\":\"\\u6765\\u9662\\u8def\\u7ebf\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:43:13', '2020-10-25 07:43:13');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:43:13', '2020-10-25 07:43:13');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:43:16', '2020-10-25 07:43:16');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"11\",\"name\":\"\\u773c\\u90e8\\u6574\\u5f62\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:43:39', '2020-10-25 07:43:39');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:43:39', '2020-10-25 07:43:39');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:43:46', '2020-10-25 07:43:46');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"24\",\"name\":\"\\u773c\\u76ae\\u677e\\u5f1b\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:43:53', '2020-10-25 07:43:53');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:43:53', '2020-10-25 07:43:53');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:43:58', '2020-10-25 07:43:58');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"11\",\"name\":\"\\u9f3b\\u90e8\\u6574\\u5f62\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:44:08', '2020-10-25 07:44:08');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:44:08', '2020-10-25 07:44:08');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:44:14', '2020-10-25 07:44:14');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"11\",\"name\":\"\\u9762\\u90e8\\u6574\\u5f62\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:44:19', '2020-10-25 07:44:19');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:44:19', '2020-10-25 07:44:19');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:44:23', '2020-10-25 07:44:23');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"11\",\"name\":\"\\u5438\\u8102\\u51cf\\u80a5\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:44:26', '2020-10-25 07:44:26');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:44:26', '2020-10-25 07:44:26');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:44:32', '2020-10-25 07:44:32');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"11\",\"name\":\"\\u80f8\\u90e8\\u6574\\u5f62\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:44:36', '2020-10-25 07:44:36');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:44:36', '2020-10-25 07:44:36');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:44:42', '2020-10-25 07:44:42');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"11\",\"name\":\"\\u7709\\u90e8\\u7f8e\\u5bb9\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:44:45', '2020-10-25 07:44:45');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:44:45', '2020-10-25 07:44:45');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:54:16', '2020-10-25 07:54:16');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"24\",\"name\":\"\\u5f00\\u5916\\u773c\\u89d2\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:54:22', '2020-10-25 07:54:22');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:54:22', '2020-10-25 07:54:22');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:54:26', '2020-10-25 07:54:26');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"24\",\"name\":\"\\u5f00\\u5185\\u773c\\u89d2\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:54:29', '2020-10-25 07:54:29');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:54:30', '2020-10-25 07:54:30');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:54:33', '2020-10-25 07:54:33');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"24\",\"name\":\"\\u53cc\\u773c\\u76ae\\u624b\\u672f\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:54:39', '2020-10-25 07:54:39');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:54:39', '2020-10-25 07:54:39');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:54:43', '2020-10-25 07:54:43');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"24\",\"name\":\"\\u795b\\u773c\\u888b\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:54:47', '2020-10-25 07:54:47');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:54:47', '2020-10-25 07:54:47');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:54:50', '2020-10-25 07:54:50');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"24\",\"name\":\"\\u5c0f\\u773c\\u5f00\\u5927\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:54:54', '2020-10-25 07:54:54');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:54:55', '2020-10-25 07:54:55');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:55:02', '2020-10-25 07:55:02');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"26\",\"name\":\"\\u9f3b\\u7ffc\\u7578\\u5f62\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:55:16', '2020-10-25 07:55:16');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:55:17', '2020-10-25 07:55:17');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:55:20', '2020-10-25 07:55:20');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"26\",\"name\":\"\\u7acb\\u4f53\\u9686\\u9f3b\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:55:27', '2020-10-25 07:55:27');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:55:27', '2020-10-25 07:55:27');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:55:31', '2020-10-25 07:55:31');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"26\",\"name\":\"\\u9f3b\\u7ffc\\u518d\\u9020\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:55:41', '2020-10-25 07:55:41');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:55:41', '2020-10-25 07:55:41');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:55:44', '2020-10-25 07:55:44');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"26\",\"name\":\"\\u9f3b\\u5934\\u518d\\u9020\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:55:50', '2020-10-25 07:55:50');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:55:50', '2020-10-25 07:55:50');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:55:54', '2020-10-25 07:55:54');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"26\",\"name\":\"\\u6b6a\\u9f3b\\u6574\\u5f62\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:55:59', '2020-10-25 07:55:59');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:55:59', '2020-10-25 07:55:59');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:56:04', '2020-10-25 07:56:04');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"26\",\"name\":\"\\u9e70\\u94a9\\u9f3b\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:56:09', '2020-10-25 07:56:09');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:56:09', '2020-10-25 07:56:09');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:56:12', '2020-10-25 07:56:12');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"26\",\"name\":\"\\u9f3b\\u7ffc\\u80a5\\u5927\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:56:18', '2020-10-25 07:56:18');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:56:18', '2020-10-25 07:56:18');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:56:21', '2020-10-25 07:56:21');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"26\",\"name\":\"\\u9f3b\\u5c16\\u6574\\u5f62\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:56:26', '2020-10-25 07:56:26');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:56:26', '2020-10-25 07:56:26');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:56:29', '2020-10-25 07:56:29');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"26\",\"name\":\"\\u9a7c\\u5cf0\\u9f3b\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:56:36', '2020-10-25 07:56:36');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:56:36', '2020-10-25 07:56:36');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:56:40', '2020-10-25 07:56:40');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"26\",\"name\":\"\\u9f3b\\u518d\\u9020\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:56:45', '2020-10-25 07:56:45');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:56:45', '2020-10-25 07:56:45');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:56:57', '2020-10-25 07:56:57');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"27\",\"name\":\"\\u57ab\\u4e0b\\u5df4\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:57:09', '2020-10-25 07:57:09');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:57:09', '2020-10-25 07:57:09');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:57:12', '2020-10-25 07:57:12');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"27\",\"name\":\"\\u9152\\u7a9d\\u518d\\u9020\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:57:19', '2020-10-25 07:57:19');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:57:19', '2020-10-25 07:57:19');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:57:21', '2020-10-25 07:57:21');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"27\",\"name\":\"\\u4e30\\u592a\\u9633\\u7a74\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:57:27', '2020-10-25 07:57:27');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:57:27', '2020-10-25 07:57:27');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:57:30', '2020-10-25 07:57:30');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"27\",\"name\":\"\\u4e30\\u9762\\u988a\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:57:36', '2020-10-25 07:57:36');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:57:36', '2020-10-25 07:57:36');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:57:40', '2020-10-25 07:57:40');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"27\",\"name\":\"\\u9762\\u90e8\\u63d0\\u5347\\u9664\\u76b1\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:57:46', '2020-10-25 07:57:46');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:57:46', '2020-10-25 07:57:46');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:57:56', '2020-10-25 07:57:56');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"28\",\"name\":\"\\u5927\\u817f\\u5438\\u8102\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:58:07', '2020-10-25 07:58:07');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:58:07', '2020-10-25 07:58:07');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:58:11', '2020-10-25 07:58:11');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"28\",\"name\":\"\\u81c0\\u90e8\\u5438\\u8102\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:58:20', '2020-10-25 07:58:20');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:58:20', '2020-10-25 07:58:20');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:58:22', '2020-10-25 07:58:22');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"28\",\"name\":\"\\u80cc\\u90e8\\u5438\\u8102\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:58:32', '2020-10-25 07:58:32');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:58:32', '2020-10-25 07:58:32');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:58:36', '2020-10-25 07:58:36');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"28\",\"name\":\"\\u4e0a\\u81c2\\u5438\\u8102\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:58:44', '2020-10-25 07:58:44');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:58:45', '2020-10-25 07:58:45');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:58:48', '2020-10-25 07:58:48');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"28\",\"name\":\"\\u8170\\u8179\\u5438\\u8102\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:58:57', '2020-10-25 07:58:57');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:58:58', '2020-10-25 07:58:58');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:59:02', '2020-10-25 07:59:02');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"28\",\"name\":\"\\u5c0f\\u817f\\u5438\\u8102\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:59:09', '2020-10-25 07:59:09');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:59:09', '2020-10-25 07:59:09');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:59:13', '2020-10-25 07:59:13');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"28\",\"name\":\"\\u9762\\u90e8\\u5438\\u8102\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:59:20', '2020-10-25 07:59:20');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:59:21', '2020-10-25 07:59:21');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:59:25', '2020-10-25 07:59:25');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"29\",\"name\":\"\\u5047\\u4f53\\u9686\\u80f8\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:59:34', '2020-10-25 07:59:34');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:59:34', '2020-10-25 07:59:34');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:59:37', '2020-10-25 07:59:37');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"29\",\"name\":\"\\u4e73\\u623f\\u4e0b\\u5782\\u77eb\\u6b63\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:59:45', '2020-10-25 07:59:45');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:59:45', '2020-10-25 07:59:45');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:59:48', '2020-10-25 07:59:48');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"29\",\"name\":\"\\u4e73\\u5934\\u5185\\u9677\\u77eb\\u6b63\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 07:59:56', '2020-10-25 07:59:56');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 07:59:56', '2020-10-25 07:59:56');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 07:59:59', '2020-10-25 07:59:59');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"29\",\"name\":\"\\u4e73\\u623f\\u518d\\u9020\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:00:08', '2020-10-25 08:00:08');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:00:08', '2020-10-25 08:00:08');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:00:11', '2020-10-25 08:00:11');
INSERT INTO `admin_operation_log` VALUES ('314', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"29\",\"name\":\"\\u4e73\\u6655\\u7f29\\u5c0f\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:00:17', '2020-10-25 08:00:17');
INSERT INTO `admin_operation_log` VALUES ('315', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:00:17', '2020-10-25 08:00:17');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:00:21', '2020-10-25 08:00:21');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"29\",\"name\":\"\\u5de8\\u4e73\\u7f29\\u5c0f\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:00:27', '2020-10-25 08:00:27');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:00:27', '2020-10-25 08:00:27');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:00:31', '2020-10-25 08:00:31');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"29\",\"name\":\"\\u4e73\\u5934\\u7f29\\u5c0f\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:00:38', '2020-10-25 08:00:38');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:00:38', '2020-10-25 08:00:38');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:00:42', '2020-10-25 08:00:42');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"29\",\"name\":\"\\u4e73\\u6655\\u518d\\u9020\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:00:53', '2020-10-25 08:00:53');
INSERT INTO `admin_operation_log` VALUES ('324', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:00:53', '2020-10-25 08:00:53');
INSERT INTO `admin_operation_log` VALUES ('325', '1', 'admin/categories/create', 'GET', '192.168.10.1', '[]', '2020-10-25 08:00:58', '2020-10-25 08:00:58');
INSERT INTO `admin_operation_log` VALUES ('326', '1', 'admin/categories/create', 'GET', '192.168.10.1', '[]', '2020-10-25 08:01:01', '2020-10-25 08:01:01');
INSERT INTO `admin_operation_log` VALUES ('327', '1', 'admin/categories/create', 'GET', '192.168.10.1', '[]', '2020-10-25 08:01:17', '2020-10-25 08:01:17');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin/categories/create', 'GET', '192.168.10.1', '[]', '2020-10-25 08:01:34', '2020-10-25 08:01:34');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin/categories/create', 'GET', '192.168.10.1', '[]', '2020-10-25 08:02:05', '2020-10-25 08:02:05');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin', 'GET', '192.168.10.1', '[]', '2020-10-25 08:05:07', '2020-10-25 08:05:07');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:05:13', '2020-10-25 08:05:13');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:05:25', '2020-10-25 08:05:25');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin/auth/menu/11/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:05:30', '2020-10-25 08:05:30');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin/auth/menu/11', 'PUT', '192.168.10.1', '{\"parent_id\":\"10\",\"title\":\"\\u7ba1\\u7406\\u5206\\u7c7b\",\"icon\":\"fa-bars\",\"uri\":\"\\/categories\",\"roles\":[null],\"permission\":null,\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/auth\\/menu\"}', '2020-10-25 08:05:39', '2020-10-25 08:05:39');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-25 08:05:39', '2020-10-25 08:05:39');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:05:56', '2020-10-25 08:05:56');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:06:00', '2020-10-25 08:06:00');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"29\",\"name\":\"\\u526f\\u4e73\\u795b\\u9664\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:06:19', '2020-10-25 08:06:19');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:06:19', '2020-10-25 08:06:19');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:06:28', '2020-10-25 08:06:28');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"29\",\"name\":\"\\u81ea\\u4f53\\u8102\\u80aa\\u9686\\u80f8\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:06:45', '2020-10-25 08:06:45');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:06:45', '2020-10-25 08:06:45');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:06:51', '2020-10-25 08:06:51');
INSERT INTO `admin_operation_log` VALUES ('344', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"29\",\"name\":\"\\u5965\\u7f8e\\u5b9a\\u53d6\\u51fa\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:07:01', '2020-10-25 08:07:01');
INSERT INTO `admin_operation_log` VALUES ('345', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:07:01', '2020-10-25 08:07:01');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:07:13', '2020-10-25 08:07:13');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"30\",\"name\":\"\\u63d0\\u7709\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:07:21', '2020-10-25 08:07:21');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:07:21', '2020-10-25 08:07:21');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:07:26', '2020-10-25 08:07:26');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"30\",\"name\":\"\\u51f9\\u9677\\u7709\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:07:34', '2020-10-25 08:07:34');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:07:34', '2020-10-25 08:07:34');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:07:38', '2020-10-25 08:07:38');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"30\",\"name\":\"\\u9686\\u7709\\u5f13\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:07:44', '2020-10-25 08:07:44');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:07:44', '2020-10-25 08:07:44');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:07:47', '2020-10-25 08:07:47');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"30\",\"name\":\"\\u7709\\u518d\\u9020\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:07:53', '2020-10-25 08:07:53');
INSERT INTO `admin_operation_log` VALUES ('357', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:07:53', '2020-10-25 08:07:53');
INSERT INTO `admin_operation_log` VALUES ('358', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:07:57', '2020-10-25 08:07:57');
INSERT INTO `admin_operation_log` VALUES ('359', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"30\",\"name\":\"\\u7f3a\\u7709\\u4fee\\u590d\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:08:03', '2020-10-25 08:08:03');
INSERT INTO `admin_operation_log` VALUES ('360', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:08:04', '2020-10-25 08:08:04');
INSERT INTO `admin_operation_log` VALUES ('361', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:08:11', '2020-10-25 08:08:11');
INSERT INTO `admin_operation_log` VALUES ('362', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"12\",\"name\":\"\\u7f8e\\u767d\\u5ae9\\u80a4\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:08:22', '2020-10-25 08:08:22');
INSERT INTO `admin_operation_log` VALUES ('363', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:08:22', '2020-10-25 08:08:22');
INSERT INTO `admin_operation_log` VALUES ('364', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:08:27', '2020-10-25 08:08:27');
INSERT INTO `admin_operation_log` VALUES ('365', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"12\",\"name\":\"\\u51b0\\u70b9\\u8131\\u6bdb\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:08:35', '2020-10-25 08:08:35');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:08:35', '2020-10-25 08:08:35');
INSERT INTO `admin_operation_log` VALUES ('367', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:08:39', '2020-10-25 08:08:39');
INSERT INTO `admin_operation_log` VALUES ('368', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"12\",\"name\":\"\\u795b\\u6591\\u795b\\u75d8\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:08:47', '2020-10-25 08:08:47');
INSERT INTO `admin_operation_log` VALUES ('369', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:08:47', '2020-10-25 08:08:47');
INSERT INTO `admin_operation_log` VALUES ('370', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:08:52', '2020-10-25 08:08:52');
INSERT INTO `admin_operation_log` VALUES ('371', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"12\",\"name\":\"\\u7d27\\u80a4\\u9664\\u76b1\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:08:59', '2020-10-25 08:08:59');
INSERT INTO `admin_operation_log` VALUES ('372', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:08:59', '2020-10-25 08:08:59');
INSERT INTO `admin_operation_log` VALUES ('373', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:09:07', '2020-10-25 08:09:07');
INSERT INTO `admin_operation_log` VALUES ('374', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"74\",\"name\":\"\\u98de\\u987f360\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:09:19', '2020-10-25 08:09:19');
INSERT INTO `admin_operation_log` VALUES ('375', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:09:19', '2020-10-25 08:09:19');
INSERT INTO `admin_operation_log` VALUES ('376', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:09:24', '2020-10-25 08:09:24');
INSERT INTO `admin_operation_log` VALUES ('377', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"74\",\"name\":\"\\u53bb\\u7ea2\\u8840\\u4e1d\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:09:33', '2020-10-25 08:09:33');
INSERT INTO `admin_operation_log` VALUES ('378', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:09:33', '2020-10-25 08:09:33');
INSERT INTO `admin_operation_log` VALUES ('379', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:09:36', '2020-10-25 08:09:36');
INSERT INTO `admin_operation_log` VALUES ('380', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"74\",\"name\":\"\\u53bb\\u9ed1\\u5934\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:09:44', '2020-10-25 08:09:44');
INSERT INTO `admin_operation_log` VALUES ('381', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:09:44', '2020-10-25 08:09:44');
INSERT INTO `admin_operation_log` VALUES ('382', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:09:50', '2020-10-25 08:09:50');
INSERT INTO `admin_operation_log` VALUES ('383', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"74\",\"name\":\"\\u7f29\\u5c0f\\u6bdb\\u5b54\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:09:59', '2020-10-25 08:09:59');
INSERT INTO `admin_operation_log` VALUES ('384', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:09:59', '2020-10-25 08:09:59');
INSERT INTO `admin_operation_log` VALUES ('385', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:10:02', '2020-10-25 08:10:02');
INSERT INTO `admin_operation_log` VALUES ('386', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"74\",\"name\":\"\\u53bb\\u6697\\u9ec4\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:10:11', '2020-10-25 08:10:11');
INSERT INTO `admin_operation_log` VALUES ('387', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:10:11', '2020-10-25 08:10:11');
INSERT INTO `admin_operation_log` VALUES ('388', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:10:16', '2020-10-25 08:10:16');
INSERT INTO `admin_operation_log` VALUES ('389', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"75\",\"name\":\"\\u6fc0\\u5149\\u8131\\u6bdb\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:10:27', '2020-10-25 08:10:27');
INSERT INTO `admin_operation_log` VALUES ('390', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:10:27', '2020-10-25 08:10:27');
INSERT INTO `admin_operation_log` VALUES ('391', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:10:31', '2020-10-25 08:10:31');
INSERT INTO `admin_operation_log` VALUES ('392', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"75\",\"name\":\"\\u814b\\u4e0b\\u8131\\u6bdb\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:10:51', '2020-10-25 08:10:51');
INSERT INTO `admin_operation_log` VALUES ('393', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:10:51', '2020-10-25 08:10:51');
INSERT INTO `admin_operation_log` VALUES ('394', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:10:56', '2020-10-25 08:10:56');
INSERT INTO `admin_operation_log` VALUES ('395', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"75\",\"name\":\"\\u56db\\u80a2\\u8131\\u6bdb\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:11:02', '2020-10-25 08:11:02');
INSERT INTO `admin_operation_log` VALUES ('396', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:11:03', '2020-10-25 08:11:03');
INSERT INTO `admin_operation_log` VALUES ('397', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:11:06', '2020-10-25 08:11:06');
INSERT INTO `admin_operation_log` VALUES ('398', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"75\",\"name\":\"\\u6bd4\\u57fa\\u5c3c\\u8131\\u6bdb\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:11:13', '2020-10-25 08:11:13');
INSERT INTO `admin_operation_log` VALUES ('399', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:11:13', '2020-10-25 08:11:13');
INSERT INTO `admin_operation_log` VALUES ('400', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:11:17', '2020-10-25 08:11:17');
INSERT INTO `admin_operation_log` VALUES ('401', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"75\",\"name\":\"\\u5176\\u4ed6\\u8131\\u6bdb\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:11:25', '2020-10-25 08:11:25');
INSERT INTO `admin_operation_log` VALUES ('402', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:11:25', '2020-10-25 08:11:25');
INSERT INTO `admin_operation_log` VALUES ('403', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:11:30', '2020-10-25 08:11:30');
INSERT INTO `admin_operation_log` VALUES ('404', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"76\",\"name\":\"\\u795b\\u6591\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:11:40', '2020-10-25 08:11:40');
INSERT INTO `admin_operation_log` VALUES ('405', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:11:40', '2020-10-25 08:11:40');
INSERT INTO `admin_operation_log` VALUES ('406', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:11:44', '2020-10-25 08:11:44');
INSERT INTO `admin_operation_log` VALUES ('407', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"76\",\"name\":\"\\u795b\\u75d8\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:11:50', '2020-10-25 08:11:50');
INSERT INTO `admin_operation_log` VALUES ('408', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:11:50', '2020-10-25 08:11:50');
INSERT INTO `admin_operation_log` VALUES ('409', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:12:00', '2020-10-25 08:12:00');
INSERT INTO `admin_operation_log` VALUES ('410', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"76\",\"name\":\"\\u795b\\u592a\\u7530\\u75e3\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:12:43', '2020-10-25 08:12:43');
INSERT INTO `admin_operation_log` VALUES ('411', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:12:43', '2020-10-25 08:12:43');
INSERT INTO `admin_operation_log` VALUES ('412', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:12:45', '2020-10-25 08:12:45');
INSERT INTO `admin_operation_log` VALUES ('413', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"76\",\"name\":\"\\u795b\\u6c57\\u6591\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:12:54', '2020-10-25 08:12:54');
INSERT INTO `admin_operation_log` VALUES ('414', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:12:54', '2020-10-25 08:12:54');
INSERT INTO `admin_operation_log` VALUES ('415', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:12:58', '2020-10-25 08:12:58');
INSERT INTO `admin_operation_log` VALUES ('416', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"76\",\"name\":\"\\u795b\\u7eb9\\u8eab\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:13:04', '2020-10-25 08:13:04');
INSERT INTO `admin_operation_log` VALUES ('417', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:13:05', '2020-10-25 08:13:05');
INSERT INTO `admin_operation_log` VALUES ('418', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:13:09', '2020-10-25 08:13:09');
INSERT INTO `admin_operation_log` VALUES ('419', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"77\",\"name\":\"\\u5c04\\u9891\\u9664\\u76b1\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:13:18', '2020-10-25 08:13:18');
INSERT INTO `admin_operation_log` VALUES ('420', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:13:18', '2020-10-25 08:13:18');
INSERT INTO `admin_operation_log` VALUES ('421', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:13:22', '2020-10-25 08:13:22');
INSERT INTO `admin_operation_log` VALUES ('422', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"77\",\"name\":\"\\u7535\\u6ce2\\u62c9\\u76ae\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:13:31', '2020-10-25 08:13:31');
INSERT INTO `admin_operation_log` VALUES ('423', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:13:31', '2020-10-25 08:13:31');
INSERT INTO `admin_operation_log` VALUES ('424', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:13:33', '2020-10-25 08:13:33');
INSERT INTO `admin_operation_log` VALUES ('425', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"77\",\"name\":\"\\u9762\\u90e8\\u9664\\u76b1\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:13:40', '2020-10-25 08:13:40');
INSERT INTO `admin_operation_log` VALUES ('426', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:13:40', '2020-10-25 08:13:40');
INSERT INTO `admin_operation_log` VALUES ('427', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:13:45', '2020-10-25 08:13:45');
INSERT INTO `admin_operation_log` VALUES ('428', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"77\",\"name\":\"\\u9762\\u90e8\\u5e74\\u8f7b\\u5316\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:13:56', '2020-10-25 08:13:56');
INSERT INTO `admin_operation_log` VALUES ('429', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:13:56', '2020-10-25 08:13:56');
INSERT INTO `admin_operation_log` VALUES ('430', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:13:57', '2020-10-25 08:13:57');
INSERT INTO `admin_operation_log` VALUES ('431', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"77\",\"name\":\"\\u5176\\u4ed6\\u9664\\u76b1\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:14:09', '2020-10-25 08:14:09');
INSERT INTO `admin_operation_log` VALUES ('432', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:14:09', '2020-10-25 08:14:09');
INSERT INTO `admin_operation_log` VALUES ('433', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:14:24', '2020-10-25 08:14:24');
INSERT INTO `admin_operation_log` VALUES ('434', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"14\",\"name\":\"\\u9634\\u9053\\u7d27\\u7f29\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:14:38', '2020-10-25 08:14:38');
INSERT INTO `admin_operation_log` VALUES ('435', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:14:38', '2020-10-25 08:14:38');
INSERT INTO `admin_operation_log` VALUES ('436', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:14:40', '2020-10-25 08:14:40');
INSERT INTO `admin_operation_log` VALUES ('437', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"14\",\"name\":\"\\u5904\\u5973\\u819c\\u4fee\\u590d\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:14:50', '2020-10-25 08:14:50');
INSERT INTO `admin_operation_log` VALUES ('438', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:14:50', '2020-10-25 08:14:50');
INSERT INTO `admin_operation_log` VALUES ('439', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:14:52', '2020-10-25 08:14:52');
INSERT INTO `admin_operation_log` VALUES ('440', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"14\",\"name\":\"\\u5916\\u9634\\u6574\\u5f62\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:15:00', '2020-10-25 08:15:00');
INSERT INTO `admin_operation_log` VALUES ('441', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:15:00', '2020-10-25 08:15:00');
INSERT INTO `admin_operation_log` VALUES ('442', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:15:03', '2020-10-25 08:15:03');
INSERT INTO `admin_operation_log` VALUES ('443', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"14\",\"name\":\"\\u9634\\u8482\\u80a5\\u5927\\u6574\\u5f62\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:15:15', '2020-10-25 08:15:15');
INSERT INTO `admin_operation_log` VALUES ('444', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:15:15', '2020-10-25 08:15:15');
INSERT INTO `admin_operation_log` VALUES ('445', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:15:20', '2020-10-25 08:15:20');
INSERT INTO `admin_operation_log` VALUES ('446', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"14\",\"name\":\"\\u9634\\u9053\\u518d\\u9020\\u672f\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:15:30', '2020-10-25 08:15:30');
INSERT INTO `admin_operation_log` VALUES ('447', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:15:30', '2020-10-25 08:15:30');
INSERT INTO `admin_operation_log` VALUES ('448', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:15:32', '2020-10-25 08:15:32');
INSERT INTO `admin_operation_log` VALUES ('449', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"14\",\"name\":\"\\u5305\\u76ae\\u5305\\u830e\\u672f\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:15:39', '2020-10-25 08:15:39');
INSERT INTO `admin_operation_log` VALUES ('450', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:15:39', '2020-10-25 08:15:39');
INSERT INTO `admin_operation_log` VALUES ('451', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:15:41', '2020-10-25 08:15:41');
INSERT INTO `admin_operation_log` VALUES ('452', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"14\",\"name\":\"\\u65e0\\u75d5\\u795b\\u814b\\u81ed\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:15:49', '2020-10-25 08:15:49');
INSERT INTO `admin_operation_log` VALUES ('453', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:15:49', '2020-10-25 08:15:49');
INSERT INTO `admin_operation_log` VALUES ('454', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:16:10', '2020-10-25 08:16:10');
INSERT INTO `admin_operation_log` VALUES ('455', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"13\",\"name\":\"\\u6ce8\\u5c04\\u9664\\u76b1\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:16:29', '2020-10-25 08:16:29');
INSERT INTO `admin_operation_log` VALUES ('456', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:16:30', '2020-10-25 08:16:30');
INSERT INTO `admin_operation_log` VALUES ('457', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:16:31', '2020-10-25 08:16:31');
INSERT INTO `admin_operation_log` VALUES ('458', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"13\",\"name\":\"\\u6ce8\\u5c04\\u5851\\u5f62\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:16:41', '2020-10-25 08:16:41');
INSERT INTO `admin_operation_log` VALUES ('459', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:16:41', '2020-10-25 08:16:41');
INSERT INTO `admin_operation_log` VALUES ('460', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:16:49', '2020-10-25 08:16:49');
INSERT INTO `admin_operation_log` VALUES ('461', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"13\",\"name\":\"\\u6ce8\\u5c04\\u51cf\\u80a5\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:16:56', '2020-10-25 08:16:56');
INSERT INTO `admin_operation_log` VALUES ('462', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:16:56', '2020-10-25 08:16:56');
INSERT INTO `admin_operation_log` VALUES ('463', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:17:09', '2020-10-25 08:17:09');
INSERT INTO `admin_operation_log` VALUES ('464', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"105\",\"name\":\"\\u62ac\\u5934\\u7eb9\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:17:22', '2020-10-25 08:17:22');
INSERT INTO `admin_operation_log` VALUES ('465', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:17:23', '2020-10-25 08:17:23');
INSERT INTO `admin_operation_log` VALUES ('466', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:17:24', '2020-10-25 08:17:24');
INSERT INTO `admin_operation_log` VALUES ('467', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"105\",\"name\":\"\\u7709\\u95f4\\u7eb9\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:17:41', '2020-10-25 08:17:41');
INSERT INTO `admin_operation_log` VALUES ('468', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:17:41', '2020-10-25 08:17:41');
INSERT INTO `admin_operation_log` VALUES ('469', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:17:43', '2020-10-25 08:17:43');
INSERT INTO `admin_operation_log` VALUES ('470', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"105\",\"name\":\"\\u9c7c\\u5c3e\\u7eb9\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:18:02', '2020-10-25 08:18:02');
INSERT INTO `admin_operation_log` VALUES ('471', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:18:02', '2020-10-25 08:18:02');
INSERT INTO `admin_operation_log` VALUES ('472', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:18:04', '2020-10-25 08:18:04');
INSERT INTO `admin_operation_log` VALUES ('473', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"105\",\"name\":\"\\u6cd5\\u4ee4\\u7eb9\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:18:20', '2020-10-25 08:18:20');
INSERT INTO `admin_operation_log` VALUES ('474', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:18:20', '2020-10-25 08:18:20');
INSERT INTO `admin_operation_log` VALUES ('475', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:18:22', '2020-10-25 08:18:22');
INSERT INTO `admin_operation_log` VALUES ('476', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"105\",\"name\":\"\\u53e3\\u5468\\u7eb9\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:18:31', '2020-10-25 08:18:31');
INSERT INTO `admin_operation_log` VALUES ('477', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:18:31', '2020-10-25 08:18:31');
INSERT INTO `admin_operation_log` VALUES ('478', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:18:34', '2020-10-25 08:18:34');
INSERT INTO `admin_operation_log` VALUES ('479', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"105\",\"name\":\"\\u9888\\u90e8\\u6a2a\\u7eb9\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:18:41', '2020-10-25 08:18:41');
INSERT INTO `admin_operation_log` VALUES ('480', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:18:41', '2020-10-25 08:18:41');
INSERT INTO `admin_operation_log` VALUES ('481', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:18:48', '2020-10-25 08:18:48');
INSERT INTO `admin_operation_log` VALUES ('482', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"106\",\"name\":\"\\u4e30\\u989d\\u5934\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:18:57', '2020-10-25 08:18:57');
INSERT INTO `admin_operation_log` VALUES ('483', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:18:57', '2020-10-25 08:18:57');
INSERT INTO `admin_operation_log` VALUES ('484', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:19:00', '2020-10-25 08:19:00');
INSERT INTO `admin_operation_log` VALUES ('485', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"106\",\"name\":\"\\u586b\\u6cea\\u6c9f\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:19:06', '2020-10-25 08:19:06');
INSERT INTO `admin_operation_log` VALUES ('486', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:19:07', '2020-10-25 08:19:07');
INSERT INTO `admin_operation_log` VALUES ('487', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:19:09', '2020-10-25 08:19:09');
INSERT INTO `admin_operation_log` VALUES ('488', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"106\",\"name\":\"\\u4e30\\u9762\\u988a\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:19:18', '2020-10-25 08:19:18');
INSERT INTO `admin_operation_log` VALUES ('489', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:19:18', '2020-10-25 08:19:18');
INSERT INTO `admin_operation_log` VALUES ('490', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:19:21', '2020-10-25 08:19:21');
INSERT INTO `admin_operation_log` VALUES ('491', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"106\",\"name\":\"\\u4e30\\u9f3b\\u5507\\u6c9f\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:19:27', '2020-10-25 08:19:27');
INSERT INTO `admin_operation_log` VALUES ('492', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:19:27', '2020-10-25 08:19:27');
INSERT INTO `admin_operation_log` VALUES ('493', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:19:31', '2020-10-25 08:19:31');
INSERT INTO `admin_operation_log` VALUES ('494', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"106\",\"name\":\"\\u6ce8\\u5c04\\u9686\\u9f3b\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:19:38', '2020-10-25 08:19:38');
INSERT INTO `admin_operation_log` VALUES ('495', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:19:38', '2020-10-25 08:19:38');
INSERT INTO `admin_operation_log` VALUES ('496', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:19:42', '2020-10-25 08:19:42');
INSERT INTO `admin_operation_log` VALUES ('497', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"106\",\"name\":\"\\u4e30\\u5507\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:19:54', '2020-10-25 08:19:54');
INSERT INTO `admin_operation_log` VALUES ('498', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:19:54', '2020-10-25 08:19:54');
INSERT INTO `admin_operation_log` VALUES ('499', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:19:57', '2020-10-25 08:19:57');
INSERT INTO `admin_operation_log` VALUES ('500', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"106\",\"name\":\"\\u6ce8\\u5c04\\u9686\\u4e0b\\u5df4\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:20:04', '2020-10-25 08:20:04');
INSERT INTO `admin_operation_log` VALUES ('501', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:20:04', '2020-10-25 08:20:04');
INSERT INTO `admin_operation_log` VALUES ('502', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:20:11', '2020-10-25 08:20:11');
INSERT INTO `admin_operation_log` VALUES ('503', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"106\",\"name\":\"\\u4e30\\u592a\\u9633\\u7a74\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:20:17', '2020-10-25 08:20:17');
INSERT INTO `admin_operation_log` VALUES ('504', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:20:17', '2020-10-25 08:20:17');
INSERT INTO `admin_operation_log` VALUES ('505', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:20:22', '2020-10-25 08:20:22');
INSERT INTO `admin_operation_log` VALUES ('506', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"107\",\"name\":\"\\u7626\\u8138\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:20:32', '2020-10-25 08:20:32');
INSERT INTO `admin_operation_log` VALUES ('507', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:20:32', '2020-10-25 08:20:32');
INSERT INTO `admin_operation_log` VALUES ('508', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:20:35', '2020-10-25 08:20:35');
INSERT INTO `admin_operation_log` VALUES ('509', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"107\",\"name\":\"\\u7626\\u5c0f\\u817f\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:20:41', '2020-10-25 08:20:41');
INSERT INTO `admin_operation_log` VALUES ('510', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:20:41', '2020-10-25 08:20:41');
INSERT INTO `admin_operation_log` VALUES ('511', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:20:45', '2020-10-25 08:20:45');
INSERT INTO `admin_operation_log` VALUES ('512', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"107\",\"name\":\"\\u6eb6\\u8102\\u9488\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:20:51', '2020-10-25 08:20:51');
INSERT INTO `admin_operation_log` VALUES ('513', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:20:51', '2020-10-25 08:20:51');
INSERT INTO `admin_operation_log` VALUES ('514', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:20:54', '2020-10-25 08:20:54');
INSERT INTO `admin_operation_log` VALUES ('515', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"107\",\"name\":\"\\u6ce8\\u5c04\\u7f8e\\u767d\",\"_token\":\"eStFlYClib4zhjEWw0xehHay63AjUymishTlByJK\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-25 08:21:01', '2020-10-25 08:21:01');
INSERT INTO `admin_operation_log` VALUES ('516', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-25 08:21:01', '2020-10-25 08:21:01');
INSERT INTO `admin_operation_log` VALUES ('517', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:22:29', '2020-10-25 08:22:29');
INSERT INTO `admin_operation_log` VALUES ('518', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:22:30', '2020-10-25 08:22:30');
INSERT INTO `admin_operation_log` VALUES ('519', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 08:22:32', '2020-10-25 08:22:32');
INSERT INTO `admin_operation_log` VALUES ('520', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 13:32:16', '2020-10-25 13:32:16');
INSERT INTO `admin_operation_log` VALUES ('521', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 13:32:22', '2020-10-25 13:32:22');
INSERT INTO `admin_operation_log` VALUES ('522', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 13:32:25', '2020-10-25 13:32:25');
INSERT INTO `admin_operation_log` VALUES ('523', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 13:32:32', '2020-10-25 13:32:32');
INSERT INTO `admin_operation_log` VALUES ('524', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 13:32:42', '2020-10-25 13:32:42');
INSERT INTO `admin_operation_log` VALUES ('525', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-25 13:33:09', '2020-10-25 13:33:09');
INSERT INTO `admin_operation_log` VALUES ('526', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 13:19:20', '2020-10-26 13:19:20');
INSERT INTO `admin_operation_log` VALUES ('527', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 13:19:23', '2020-10-26 13:19:23');
INSERT INTO `admin_operation_log` VALUES ('528', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 13:19:49', '2020-10-26 13:19:49');
INSERT INTO `admin_operation_log` VALUES ('529', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 13:19:56', '2020-10-26 13:19:56');
INSERT INTO `admin_operation_log` VALUES ('530', '1', 'admin/auth/menu/11/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 13:20:02', '2020-10-26 13:20:02');
INSERT INTO `admin_operation_log` VALUES ('531', '1', 'admin/auth/menu/11', 'PUT', '192.168.10.1', '{\"parent_id\":\"10\",\"title\":\"\\u680f\\u76ee\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/categories\",\"roles\":[null],\"permission\":null,\"_token\":\"lHAHSn8WsVHDYMOSqhnwJ3YbmWl8K4gSAk8qpWAM\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/auth\\/menu\"}', '2020-10-26 13:20:24', '2020-10-26 13:20:24');
INSERT INTO `admin_operation_log` VALUES ('532', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-26 13:20:25', '2020-10-26 13:20:25');
INSERT INTO `admin_operation_log` VALUES ('533', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-26 13:20:36', '2020-10-26 13:20:36');
INSERT INTO `admin_operation_log` VALUES ('534', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 13:24:22', '2020-10-26 13:24:22');
INSERT INTO `admin_operation_log` VALUES ('535', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 13:54:59', '2020-10-26 13:54:59');
INSERT INTO `admin_operation_log` VALUES ('536', '1', 'admin/auth/menu/12/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 13:55:05', '2020-10-26 13:55:05');
INSERT INTO `admin_operation_log` VALUES ('537', '1', 'admin/auth/menu/12', 'PUT', '192.168.10.1', '{\"parent_id\":\"10\",\"title\":\"\\u6587\\u7ae0\\u5217\\u8868\",\"icon\":\"fa-chain\",\"uri\":\"\\/articles\",\"roles\":[null],\"permission\":null,\"_token\":\"lHAHSn8WsVHDYMOSqhnwJ3YbmWl8K4gSAk8qpWAM\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/auth\\/menu\"}', '2020-10-26 13:55:16', '2020-10-26 13:55:16');
INSERT INTO `admin_operation_log` VALUES ('538', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2020-10-26 13:55:17', '2020-10-26 13:55:17');
INSERT INTO `admin_operation_log` VALUES ('539', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"_token\":\"lHAHSn8WsVHDYMOSqhnwJ3YbmWl8K4gSAk8qpWAM\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":11},{\\\"id\\\":12}]}]\"}', '2020-10-26 13:55:19', '2020-10-26 13:55:19');
INSERT INTO `admin_operation_log` VALUES ('540', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 13:55:20', '2020-10-26 13:55:20');
INSERT INTO `admin_operation_log` VALUES ('541', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 13:55:24', '2020-10-26 13:55:24');
INSERT INTO `admin_operation_log` VALUES ('542', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 13:55:27', '2020-10-26 13:55:27');
INSERT INTO `admin_operation_log` VALUES ('543', '1', 'admin', 'GET', '192.168.10.1', '[]', '2020-10-26 13:55:30', '2020-10-26 13:55:30');
INSERT INTO `admin_operation_log` VALUES ('544', '1', 'admin/articles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 13:55:37', '2020-10-26 13:55:37');
INSERT INTO `admin_operation_log` VALUES ('545', '1', 'admin/articles/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 13:55:41', '2020-10-26 13:55:41');
INSERT INTO `admin_operation_log` VALUES ('546', '1', 'admin/articles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 13:56:11', '2020-10-26 13:56:11');
INSERT INTO `admin_operation_log` VALUES ('547', '1', 'admin/articles', 'GET', '192.168.10.1', '{\"_columns_\":\"body,category_id,created_at,description,image,sortrank,title,updated_at\",\"_pjax\":\"#pjax-container\"}', '2020-10-26 13:56:25', '2020-10-26 13:56:25');
INSERT INTO `admin_operation_log` VALUES ('548', '1', 'admin/articles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 13:56:29', '2020-10-26 13:56:29');
INSERT INTO `admin_operation_log` VALUES ('549', '1', 'admin/articles/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 13:56:36', '2020-10-26 13:56:36');
INSERT INTO `admin_operation_log` VALUES ('550', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 14:06:18', '2020-10-26 14:06:18');
INSERT INTO `admin_operation_log` VALUES ('551', '1', 'admin/articles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 14:06:26', '2020-10-26 14:06:26');
INSERT INTO `admin_operation_log` VALUES ('552', '1', 'admin/articles', 'GET', '192.168.10.1', '[]', '2020-10-26 14:33:59', '2020-10-26 14:33:59');
INSERT INTO `admin_operation_log` VALUES ('553', '1', 'admin/articles/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 14:34:04', '2020-10-26 14:34:04');
INSERT INTO `admin_operation_log` VALUES ('554', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 14:34:35', '2020-10-26 14:34:35');
INSERT INTO `admin_operation_log` VALUES ('555', '1', 'admin/api/categories', 'GET', '192.168.10.1', '{\"q\":\"d\"}', '2020-10-26 14:34:45', '2020-10-26 14:34:45');
INSERT INTO `admin_operation_log` VALUES ('556', '1', 'admin/api/categories', 'GET', '192.168.10.1', '{\"q\":\"d\'d\'d\'d\"}', '2020-10-26 14:34:46', '2020-10-26 14:34:46');
INSERT INTO `admin_operation_log` VALUES ('557', '1', 'admin/api/categories', 'GET', '192.168.10.1', '{\"q\":\"dddd\"}', '2020-10-26 14:34:46', '2020-10-26 14:34:46');
INSERT INTO `admin_operation_log` VALUES ('558', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 14:42:32', '2020-10-26 14:42:32');
INSERT INTO `admin_operation_log` VALUES ('559', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 14:42:56', '2020-10-26 14:42:56');
INSERT INTO `admin_operation_log` VALUES ('560', '1', 'admin/api/categories', 'GET', '192.168.10.1', '{\"q\":\"z\"}', '2020-10-26 14:43:08', '2020-10-26 14:43:08');
INSERT INTO `admin_operation_log` VALUES ('561', '1', 'admin/api/categories', 'GET', '192.168.10.1', '{\"q\":\"\\u6574\\u5f62\"}', '2020-10-26 14:43:10', '2020-10-26 14:43:10');
INSERT INTO `admin_operation_log` VALUES ('562', '1', 'admin/api/categories', 'GET', '192.168.10.1', '{\"q\":\"\\u76ae\\u80a4\"}', '2020-10-26 14:43:17', '2020-10-26 14:43:17');
INSERT INTO `admin_operation_log` VALUES ('563', '1', 'admin/api/categories', 'GET', '192.168.10.1', '{\"q\":\"\\u76ae\"}', '2020-10-26 14:43:18', '2020-10-26 14:43:18');
INSERT INTO `admin_operation_log` VALUES ('564', '1', 'admin/api/categories', 'GET', '192.168.10.1', '{\"q\":\"shuang\'yan\"}', '2020-10-26 14:43:20', '2020-10-26 14:43:20');
INSERT INTO `admin_operation_log` VALUES ('565', '1', 'admin/api/categories', 'GET', '192.168.10.1', '{\"q\":\"shuang\'yan\'pi\"}', '2020-10-26 14:43:21', '2020-10-26 14:43:21');
INSERT INTO `admin_operation_log` VALUES ('566', '1', 'admin/api/categories', 'GET', '192.168.10.1', '{\"q\":\"\\u53cc\\u773c\\u76ae\"}', '2020-10-26 14:43:21', '2020-10-26 14:43:21');
INSERT INTO `admin_operation_log` VALUES ('567', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 14:52:53', '2020-10-26 14:52:53');
INSERT INTO `admin_operation_log` VALUES ('568', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 14:53:49', '2020-10-26 14:53:49');
INSERT INTO `admin_operation_log` VALUES ('569', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 14:54:29', '2020-10-26 14:54:29');
INSERT INTO `admin_operation_log` VALUES ('570', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 14:56:55', '2020-10-26 14:56:55');
INSERT INTO `admin_operation_log` VALUES ('571', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 14:57:15', '2020-10-26 14:57:15');
INSERT INTO `admin_operation_log` VALUES ('572', '1', 'admin/categories', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 15:04:21', '2020-10-26 15:04:21');
INSERT INTO `admin_operation_log` VALUES ('573', '1', 'admin/categories/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 15:04:29', '2020-10-26 15:04:29');
INSERT INTO `admin_operation_log` VALUES ('574', '1', 'admin/categories', 'POST', '192.168.10.1', '{\"reid\":\"0\",\"name\":\"\\u65b0\\u95fb\\u4e2d\\u5fc3\",\"_token\":\"lHAHSn8WsVHDYMOSqhnwJ3YbmWl8K4gSAk8qpWAM\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/categories\"}', '2020-10-26 15:04:45', '2020-10-26 15:04:45');
INSERT INTO `admin_operation_log` VALUES ('575', '1', 'admin/categories', 'GET', '192.168.10.1', '[]', '2020-10-26 15:04:45', '2020-10-26 15:04:45');
INSERT INTO `admin_operation_log` VALUES ('576', '1', 'admin/articles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 15:20:12', '2020-10-26 15:20:12');
INSERT INTO `admin_operation_log` VALUES ('577', '1', 'admin/articles/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 15:20:28', '2020-10-26 15:20:28');
INSERT INTO `admin_operation_log` VALUES ('578', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 15:22:05', '2020-10-26 15:22:05');
INSERT INTO `admin_operation_log` VALUES ('579', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 15:22:51', '2020-10-26 15:22:51');
INSERT INTO `admin_operation_log` VALUES ('580', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 15:23:45', '2020-10-26 15:23:45');
INSERT INTO `admin_operation_log` VALUES ('581', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 15:24:06', '2020-10-26 15:24:06');
INSERT INTO `admin_operation_log` VALUES ('582', '1', 'admin/articles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 15:24:57', '2020-10-26 15:24:57');
INSERT INTO `admin_operation_log` VALUES ('583', '1', 'admin/articles/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 15:34:15', '2020-10-26 15:34:15');
INSERT INTO `admin_operation_log` VALUES ('584', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 15:34:28', '2020-10-26 15:34:28');
INSERT INTO `admin_operation_log` VALUES ('585', '1', 'admin/articles', 'POST', '192.168.10.1', '{\"category_id\":\"114\",\"title\":\"\\u73bb\\u5c3f\\u9178\\u6ce8\\u5c04\\u4e30\\u989d\\u5934\\u7684\\u6ce8\\u610f\\u4e8b\\u9879\",\"description\":null,\"body\":\"<p>\\u7cbe\\u81f4\\u7626\\u5c0f\\u7684\\u5df4\\u638c\\u8138\\u80fd\\u591f\\u8ba9\\u5973\\u6027\\u66f4\\u663e\\u5a07\\u5a9a\\u4e4b\\u611f\\uff0c\\u770b\\u8d77\\u6765\\u66f4\\u52a0\\u8212\\u670d\\u7f8e\\u4e3d\\u3002\\u6240\\u4ee5\\uff0c\\u5f53\\u524d\\u5f88\\u591a\\u88ab\\u9762\\u90e8\\u80a5\\u5927\\u95ee\\u9898\\u6240\\u56f0\\u6270\\u7684\\u7231\\u7f8e\\u8005\\u5c31\\u7eb7\\u7eb7\\u9009\\u62e9\\u4e86\\u505a\\u6ce8\\u5c04\\u7626\\u8138\\u3002\\u90a3\\u4e48\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u4f1a\\u6709\\u526f\\u4f5c\\u7528\\u5417\\uff1f\\u4e0b\\u9762\\u8ba9\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u7684\\u4e13\\u5bb6\\u6765\\u7ed9\\u5927\\u5bb6\\u8bb2\\u89e3\\u4e00\\u4e0b\\u3002<\\/p><p>\\u636e\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u4e13\\u5bb6\\u4ecb\\u7ecd\\u8bf4\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u5c31\\u662f\\u7528\\u836f\\u7269(\\u8089\\u6bd2\\u7d20)\\u963b\\u65ad\\u795e\\u7ecf\\u4e0e\\u808c\\u8089\\u7684\\u795e\\u7ecf\\u51b2\\u52a8\\uff0c\\u9ebb\\u75f9\\u8fc7\\u4e8e\\u53d1\\u8fbe\\u7684\\u808c\\u8089\\u4f7f\\u4e4b\\u6536\\u7f29\\uff0c\\u5b83\\u662f\\u5229\\u7528\\u9ebb\\u75f9\\u808c\\u8089\\u6765\\u8fbe\\u5230\\u201c\\u5931\\u80fd\\u6027\\u7684\\u840e\\u7f29\\u201d\\u7684\\u76ee\\u7684\\uff0c\\u4f7f\\u7684\\u539f\\u672c\\u80a5\\u539a\\u589e\\u751f\\u7684\\u808c\\u8089\\u7f29\\u5c0f\\uff0c\\u4e5f\\u5c31\\u8fbe\\u5230\\u4e86\\u7626\\u8138\\u7684\\u529f\\u6548\\u3002\\u90a3\\u4e48\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u4f1a\\u6709\\u526f\\u4f5c\\u7528\\u5417\\uff1f\\u6ce8\\u5c04\\u7626\\u8138\\u5728\\u5b89\\u5168\\u5242\\u91cf\\u4e4b\\u5185\\u662f\\u4e0d\\u4f1a\\u51fa\\u73b0\\u4efb\\u4f55\\u526f\\u4f5c\\u7528\\u7684\\uff0c\\u4f46\\u662f\\u5982\\u679c\\u8fc7\\u91cf\\u6ce8\\u5c04\\u6216\\u6ce8\\u5c04\\u65b9\\u6cd5\\u6709\\u95ee\\u9898\\uff0c\\u6216\\u8005\\u4e0e\\u5176\\u4ed6\\u4e00\\u4e9b\\u6297\\u751f\\u7d20\\u540c\\u65f6\\u4f7f\\u7528\\uff0c\\u53ef\\u80fd\\u4f1a\\u4ea7\\u751f\\u4e00\\u4e9b\\u526f\\u4f5c\\u7528\\u3002\\u4e3b\\u8981\\u8868\\u73b0\\u6709\\uff1a\\u9762\\u90e8\\u5982\\u679c\\u6253\\u5f97\\u8fc7\\u91cf\\uff0c\\u53ef\\u80fd\\u9020\\u6210\\u541e\\u54bd\\u56f0\\u96be\\uff1b\\u9762\\u90e8\\u4f1a\\u53d8\\u5f97\\u50f5\\u786c\\uff0c\\u7b11\\u5bb9\\u4e0d\\u81ea\\u7136\\uff1b\\u6709\\u5c40\\u90e8\\u7684\\u80bf\\u80c0\\u4ee5\\u53ca\\u53d1\\u70ed\\u8868\\u73b0\\u3002\\u4e00\\u822c\\u8fd9\\u4e9b\\u4e34\\u5e8a\\u8868\\u73b0\\u4e3a\\u4e00\\u8fc7\\u6027\\u7684\\uff0c\\u5e76\\u5728\\u6570\\u5468\\u5185\\u81ea\\u884c\\u6d88\\u5931\\u3002\\u6c42\\u7f8e\\u8005\\u5927\\u53ef\\u4e0d\\u5fc5\\u62c5\\u5fc3\\uff0c\\u6ce8\\u5c04\\u524d\\u4e00\\u5b9a\\u8981\\u9009\\u62e9\\u6b63\\u89c4\\u4e13\\u4e1a\\u7684\\u6574\\u5f62\\u7f8e\\u5bb9\\u673a\\u6784\\uff0c\\u627e\\u4e13\\u4e1a\\u7684\\u533b\\u5e08\\u8fdb\\u884c\\u6ce8\\u5c04\\u7626\\u8138\\uff0c\\u786e\\u4fdd\\u5b89\\u5168\\u548c\\u6548\\u679c\\uff0c\\u907f\\u514d\\u4e00\\u4e9b\\u4e0d\\u9700\\u8981\\u7684\\u526f\\u4f5c\\u7528\\u3002<\\/p><p>\\u76f8\\u4fe1\\u7ecf\\u8fc7\\u4ee5\\u4e0a\\u7684\\u63cf\\u8ff0\\uff0c\\u60a8\\u5df2\\u7ecf\\u5f88\\u4e86\\u89e3\\u4e86\\u3002\\u6b66\\u6c49\\u6b23\\u60a6\\u63d0\\u9192\\u60a8\\uff1a\\u4e3a\\u4e86\\u60a8\\u7684\\u5b89\\u5168\\u548c\\u624b\\u672f\\u6548\\u679c\\uff0c\\u8bf7\\u52a1\\u5fc5\\u5230\\u4e13\\u4e1a\\u7684\\u5927\\u578b\\u7f8e\\u5bb9\\u6574\\u5f62\\u533b\\u9662\\u505a\\u624b\\u672f\\u3002\\u5982\\u679c\\u60a8\\u8fd8\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u3002\\u8bf7\\u54a8\\u8be2\\u6211\\u4eec\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u7684\\u5728\\u7ebf\\u4e13\\u5bb6\\uff0c\\u54a8\\u8be2\\u70ed\\u7ebf\\uff1a027-85559090\\uff0c\\u6211\\u4eec\\u7684\\u4e13\\u5bb6\\u5c06\\u4e3a\\u60a8\\u63d0\\u4f9b\\u6700\\u4e13\\u4e1a\\u7684\\u56de\\u7b54\\u3002<\\/p><p>\\u636e\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u4e13\\u5bb6\\u4ecb\\u7ecd\\u8bf4\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u5c31\\u662f\\u7528\\u836f\\u7269(\\u8089\\u6bd2\\u7d20)\\u963b\\u65ad\\u795e\\u7ecf\\u4e0e\\u808c\\u8089\\u7684\\u795e\\u7ecf\\u51b2\\u52a8\\uff0c\\u9ebb\\u75f9\\u8fc7\\u4e8e\\u53d1\\u8fbe\\u7684\\u808c\\u8089\\u4f7f\\u4e4b\\u6536\\u7f29\\uff0c\\u5b83\\u662f\\u5229\\u7528\\u9ebb\\u75f9\\u808c\\u8089\\u6765\\u8fbe\\u5230\\u201c\\u5931\\u80fd\\u6027\\u7684\\u840e\\u7f29\\u201d\\u7684\\u76ee\\u7684\\uff0c\\u4f7f\\u7684\\u539f\\u672c\\u80a5\\u539a\\u589e\\u751f\\u7684\\u808c\\u8089\\u7f29\\u5c0f\\uff0c\\u4e5f\\u5c31\\u8fbe\\u5230\\u4e86\\u7626\\u8138\\u7684\\u529f\\u6548\\u3002\\u90a3\\u4e48\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u4f1a\\u6709\\u526f\\u4f5c\\u7528\\u5417\\uff1f\\u6ce8\\u5c04\\u7626\\u8138\\u5728\\u5b89\\u5168\\u5242\\u91cf\\u4e4b\\u5185\\u662f\\u4e0d\\u4f1a\\u51fa\\u73b0\\u4efb\\u4f55\\u526f\\u4f5c\\u7528\\u7684\\uff0c\\u4f46\\u662f\\u5982\\u679c\\u8fc7\\u91cf\\u6ce8\\u5c04\\u6216\\u6ce8\\u5c04\\u65b9\\u6cd5\\u6709\\u95ee\\u9898\\uff0c\\u6216\\u8005\\u4e0e\\u5176\\u4ed6\\u4e00\\u4e9b\\u6297\\u751f\\u7d20\\u540c\\u65f6\\u4f7f\\u7528\\uff0c\\u53ef\\u80fd\\u4f1a\\u4ea7\\u751f\\u4e00\\u4e9b\\u526f\\u4f5c\\u7528\\u3002\\u4e3b\\u8981\\u8868\\u73b0\\u6709\\uff1a\\u9762\\u90e8\\u5982\\u679c\\u6253\\u5f97\\u8fc7\\u91cf\\uff0c\\u53ef\\u80fd\\u9020\\u6210\\u541e\\u54bd\\u56f0\\u96be\\uff1b\\u9762\\u90e8\\u4f1a\\u53d8\\u5f97\\u50f5\\u786c\\uff0c\\u7b11\\u5bb9\\u4e0d\\u81ea\\u7136\\uff1b\\u6709\\u5c40\\u90e8\\u7684\\u80bf\\u80c0\\u4ee5\\u53ca\\u53d1\\u70ed\\u8868\\u73b0\\u3002\\u4e00\\u822c\\u8fd9\\u4e9b\\u4e34\\u5e8a\\u8868\\u73b0\\u4e3a\\u4e00\\u8fc7\\u6027\\u7684\\uff0c\\u5e76\\u5728\\u6570\\u5468\\u5185\\u81ea\\u884c\\u6d88\\u5931\\u3002\\u6c42\\u7f8e\\u8005\\u5927\\u53ef\\u4e0d\\u5fc5\\u62c5\\u5fc3\\uff0c\\u6ce8\\u5c04\\u524d\\u4e00\\u5b9a\\u8981\\u9009\\u62e9\\u6b63\\u89c4\\u4e13\\u4e1a\\u7684\\u6574\\u5f62\\u7f8e\\u5bb9\\u673a\\u6784\\uff0c\\u627e\\u4e13\\u4e1a\\u7684\\u533b\\u5e08\\u8fdb\\u884c\\u6ce8\\u5c04\\u7626\\u8138\\uff0c\\u786e\\u4fdd\\u5b89\\u5168\\u548c\\u6548\\u679c\\uff0c\\u907f\\u514d\\u4e00\\u4e9b\\u4e0d\\u9700\\u8981\\u7684\\u526f\\u4f5c\\u7528\\u3002<\\/p>\",\"sortrank\":null,\"_token\":\"lHAHSn8WsVHDYMOSqhnwJ3YbmWl8K4gSAk8qpWAM\"}', '2020-10-26 15:36:23', '2020-10-26 15:36:23');
INSERT INTO `admin_operation_log` VALUES ('586', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 15:36:25', '2020-10-26 15:36:25');
INSERT INTO `admin_operation_log` VALUES ('587', '1', 'admin/articles', 'POST', '192.168.10.1', '{\"category_id\":\"114\",\"title\":\"\\u73bb\\u5c3f\\u9178\\u6ce8\\u5c04\\u4e30\\u989d\\u5934\\u7684\\u6ce8\\u610f\\u4e8b\\u9879\",\"description\":null,\"body\":\"<p>\\u7cbe\\u81f4\\u7626\\u5c0f\\u7684\\u5df4\\u638c\\u8138\\u80fd\\u591f\\u8ba9\\u5973\\u6027\\u66f4\\u663e\\u5a07\\u5a9a\\u4e4b\\u611f\\uff0c\\u770b\\u8d77\\u6765\\u66f4\\u52a0\\u8212\\u670d\\u7f8e\\u4e3d\\u3002\\u6240\\u4ee5\\uff0c\\u5f53\\u524d\\u5f88\\u591a\\u88ab\\u9762\\u90e8\\u80a5\\u5927\\u95ee\\u9898\\u6240\\u56f0\\u6270\\u7684\\u7231\\u7f8e\\u8005\\u5c31\\u7eb7\\u7eb7\\u9009\\u62e9\\u4e86\\u505a\\u6ce8\\u5c04\\u7626\\u8138\\u3002\\u90a3\\u4e48\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u4f1a\\u6709\\u526f\\u4f5c\\u7528\\u5417\\uff1f\\u4e0b\\u9762\\u8ba9\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u7684\\u4e13\\u5bb6\\u6765\\u7ed9\\u5927\\u5bb6\\u8bb2\\u89e3\\u4e00\\u4e0b\\u3002<\\/p><p>\\u636e\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u4e13\\u5bb6\\u4ecb\\u7ecd\\u8bf4\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u5c31\\u662f\\u7528\\u836f\\u7269(\\u8089\\u6bd2\\u7d20)\\u963b\\u65ad\\u795e\\u7ecf\\u4e0e\\u808c\\u8089\\u7684\\u795e\\u7ecf\\u51b2\\u52a8\\uff0c\\u9ebb\\u75f9\\u8fc7\\u4e8e\\u53d1\\u8fbe\\u7684\\u808c\\u8089\\u4f7f\\u4e4b\\u6536\\u7f29\\uff0c\\u5b83\\u662f\\u5229\\u7528\\u9ebb\\u75f9\\u808c\\u8089\\u6765\\u8fbe\\u5230\\u201c\\u5931\\u80fd\\u6027\\u7684\\u840e\\u7f29\\u201d\\u7684\\u76ee\\u7684\\uff0c\\u4f7f\\u7684\\u539f\\u672c\\u80a5\\u539a\\u589e\\u751f\\u7684\\u808c\\u8089\\u7f29\\u5c0f\\uff0c\\u4e5f\\u5c31\\u8fbe\\u5230\\u4e86\\u7626\\u8138\\u7684\\u529f\\u6548\\u3002\\u90a3\\u4e48\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u4f1a\\u6709\\u526f\\u4f5c\\u7528\\u5417\\uff1f\\u6ce8\\u5c04\\u7626\\u8138\\u5728\\u5b89\\u5168\\u5242\\u91cf\\u4e4b\\u5185\\u662f\\u4e0d\\u4f1a\\u51fa\\u73b0\\u4efb\\u4f55\\u526f\\u4f5c\\u7528\\u7684\\uff0c\\u4f46\\u662f\\u5982\\u679c\\u8fc7\\u91cf\\u6ce8\\u5c04\\u6216\\u6ce8\\u5c04\\u65b9\\u6cd5\\u6709\\u95ee\\u9898\\uff0c\\u6216\\u8005\\u4e0e\\u5176\\u4ed6\\u4e00\\u4e9b\\u6297\\u751f\\u7d20\\u540c\\u65f6\\u4f7f\\u7528\\uff0c\\u53ef\\u80fd\\u4f1a\\u4ea7\\u751f\\u4e00\\u4e9b\\u526f\\u4f5c\\u7528\\u3002\\u4e3b\\u8981\\u8868\\u73b0\\u6709\\uff1a\\u9762\\u90e8\\u5982\\u679c\\u6253\\u5f97\\u8fc7\\u91cf\\uff0c\\u53ef\\u80fd\\u9020\\u6210\\u541e\\u54bd\\u56f0\\u96be\\uff1b\\u9762\\u90e8\\u4f1a\\u53d8\\u5f97\\u50f5\\u786c\\uff0c\\u7b11\\u5bb9\\u4e0d\\u81ea\\u7136\\uff1b\\u6709\\u5c40\\u90e8\\u7684\\u80bf\\u80c0\\u4ee5\\u53ca\\u53d1\\u70ed\\u8868\\u73b0\\u3002\\u4e00\\u822c\\u8fd9\\u4e9b\\u4e34\\u5e8a\\u8868\\u73b0\\u4e3a\\u4e00\\u8fc7\\u6027\\u7684\\uff0c\\u5e76\\u5728\\u6570\\u5468\\u5185\\u81ea\\u884c\\u6d88\\u5931\\u3002\\u6c42\\u7f8e\\u8005\\u5927\\u53ef\\u4e0d\\u5fc5\\u62c5\\u5fc3\\uff0c\\u6ce8\\u5c04\\u524d\\u4e00\\u5b9a\\u8981\\u9009\\u62e9\\u6b63\\u89c4\\u4e13\\u4e1a\\u7684\\u6574\\u5f62\\u7f8e\\u5bb9\\u673a\\u6784\\uff0c\\u627e\\u4e13\\u4e1a\\u7684\\u533b\\u5e08\\u8fdb\\u884c\\u6ce8\\u5c04\\u7626\\u8138\\uff0c\\u786e\\u4fdd\\u5b89\\u5168\\u548c\\u6548\\u679c\\uff0c\\u907f\\u514d\\u4e00\\u4e9b\\u4e0d\\u9700\\u8981\\u7684\\u526f\\u4f5c\\u7528\\u3002<\\/p><p>\\u76f8\\u4fe1\\u7ecf\\u8fc7\\u4ee5\\u4e0a\\u7684\\u63cf\\u8ff0\\uff0c\\u60a8\\u5df2\\u7ecf\\u5f88\\u4e86\\u89e3\\u4e86\\u3002\\u6b66\\u6c49\\u6b23\\u60a6\\u63d0\\u9192\\u60a8\\uff1a\\u4e3a\\u4e86\\u60a8\\u7684\\u5b89\\u5168\\u548c\\u624b\\u672f\\u6548\\u679c\\uff0c\\u8bf7\\u52a1\\u5fc5\\u5230\\u4e13\\u4e1a\\u7684\\u5927\\u578b\\u7f8e\\u5bb9\\u6574\\u5f62\\u533b\\u9662\\u505a\\u624b\\u672f\\u3002\\u5982\\u679c\\u60a8\\u8fd8\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u3002\\u8bf7\\u54a8\\u8be2\\u6211\\u4eec\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u7684\\u5728\\u7ebf\\u4e13\\u5bb6\\uff0c\\u54a8\\u8be2\\u70ed\\u7ebf\\uff1a027-85559090\\uff0c\\u6211\\u4eec\\u7684\\u4e13\\u5bb6\\u5c06\\u4e3a\\u60a8\\u63d0\\u4f9b\\u6700\\u4e13\\u4e1a\\u7684\\u56de\\u7b54\\u3002<\\/p><p>\\u636e\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u4e13\\u5bb6\\u4ecb\\u7ecd\\u8bf4\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u5c31\\u662f\\u7528\\u836f\\u7269(\\u8089\\u6bd2\\u7d20)\\u963b\\u65ad\\u795e\\u7ecf\\u4e0e\\u808c\\u8089\\u7684\\u795e\\u7ecf\\u51b2\\u52a8\\uff0c\\u9ebb\\u75f9\\u8fc7\\u4e8e\\u53d1\\u8fbe\\u7684\\u808c\\u8089\\u4f7f\\u4e4b\\u6536\\u7f29\\uff0c\\u5b83\\u662f\\u5229\\u7528\\u9ebb\\u75f9\\u808c\\u8089\\u6765\\u8fbe\\u5230\\u201c\\u5931\\u80fd\\u6027\\u7684\\u840e\\u7f29\\u201d\\u7684\\u76ee\\u7684\\uff0c\\u4f7f\\u7684\\u539f\\u672c\\u80a5\\u539a\\u589e\\u751f\\u7684\\u808c\\u8089\\u7f29\\u5c0f\\uff0c\\u4e5f\\u5c31\\u8fbe\\u5230\\u4e86\\u7626\\u8138\\u7684\\u529f\\u6548\\u3002\\u90a3\\u4e48\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u4f1a\\u6709\\u526f\\u4f5c\\u7528\\u5417\\uff1f\\u6ce8\\u5c04\\u7626\\u8138\\u5728\\u5b89\\u5168\\u5242\\u91cf\\u4e4b\\u5185\\u662f\\u4e0d\\u4f1a\\u51fa\\u73b0\\u4efb\\u4f55\\u526f\\u4f5c\\u7528\\u7684\\uff0c\\u4f46\\u662f\\u5982\\u679c\\u8fc7\\u91cf\\u6ce8\\u5c04\\u6216\\u6ce8\\u5c04\\u65b9\\u6cd5\\u6709\\u95ee\\u9898\\uff0c\\u6216\\u8005\\u4e0e\\u5176\\u4ed6\\u4e00\\u4e9b\\u6297\\u751f\\u7d20\\u540c\\u65f6\\u4f7f\\u7528\\uff0c\\u53ef\\u80fd\\u4f1a\\u4ea7\\u751f\\u4e00\\u4e9b\\u526f\\u4f5c\\u7528\\u3002\\u4e3b\\u8981\\u8868\\u73b0\\u6709\\uff1a\\u9762\\u90e8\\u5982\\u679c\\u6253\\u5f97\\u8fc7\\u91cf\\uff0c\\u53ef\\u80fd\\u9020\\u6210\\u541e\\u54bd\\u56f0\\u96be\\uff1b\\u9762\\u90e8\\u4f1a\\u53d8\\u5f97\\u50f5\\u786c\\uff0c\\u7b11\\u5bb9\\u4e0d\\u81ea\\u7136\\uff1b\\u6709\\u5c40\\u90e8\\u7684\\u80bf\\u80c0\\u4ee5\\u53ca\\u53d1\\u70ed\\u8868\\u73b0\\u3002\\u4e00\\u822c\\u8fd9\\u4e9b\\u4e34\\u5e8a\\u8868\\u73b0\\u4e3a\\u4e00\\u8fc7\\u6027\\u7684\\uff0c\\u5e76\\u5728\\u6570\\u5468\\u5185\\u81ea\\u884c\\u6d88\\u5931\\u3002\\u6c42\\u7f8e\\u8005\\u5927\\u53ef\\u4e0d\\u5fc5\\u62c5\\u5fc3\\uff0c\\u6ce8\\u5c04\\u524d\\u4e00\\u5b9a\\u8981\\u9009\\u62e9\\u6b63\\u89c4\\u4e13\\u4e1a\\u7684\\u6574\\u5f62\\u7f8e\\u5bb9\\u673a\\u6784\\uff0c\\u627e\\u4e13\\u4e1a\\u7684\\u533b\\u5e08\\u8fdb\\u884c\\u6ce8\\u5c04\\u7626\\u8138\\uff0c\\u786e\\u4fdd\\u5b89\\u5168\\u548c\\u6548\\u679c\\uff0c\\u907f\\u514d\\u4e00\\u4e9b\\u4e0d\\u9700\\u8981\\u7684\\u526f\\u4f5c\\u7528\\u3002<\\/p>\",\"sortrank\":null,\"_token\":\"lHAHSn8WsVHDYMOSqhnwJ3YbmWl8K4gSAk8qpWAM\"}', '2020-10-26 15:41:52', '2020-10-26 15:41:52');
INSERT INTO `admin_operation_log` VALUES ('588', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 15:41:53', '2020-10-26 15:41:53');
INSERT INTO `admin_operation_log` VALUES ('589', '1', 'admin/articles', 'GET', '192.168.10.1', '[]', '2020-10-26 15:41:54', '2020-10-26 15:41:54');
INSERT INTO `admin_operation_log` VALUES ('590', '1', 'admin/articles', 'GET', '192.168.10.1', '[]', '2020-10-26 15:53:50', '2020-10-26 15:53:50');
INSERT INTO `admin_operation_log` VALUES ('591', '1', 'admin/articles/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 15:53:53', '2020-10-26 15:53:53');
INSERT INTO `admin_operation_log` VALUES ('592', '1', 'admin/articles', 'POST', '192.168.10.1', '{\"category_id\":\"114\",\"title\":\"\\u73bb\\u5c3f\\u9178\\u6ce8\\u5c04\\u4e30\\u989d\\u5934\\u7684\\u6ce8\\u610f\\u4e8b\\u9879\",\"description\":null,\"body\":\"<p>\\u7cbe\\u81f4\\u7626\\u5c0f\\u7684\\u5df4\\u638c\\u8138\\u80fd\\u591f\\u8ba9\\u5973\\u6027\\u66f4\\u663e\\u5a07\\u5a9a\\u4e4b\\u611f\\uff0c\\u770b\\u8d77\\u6765\\u66f4\\u52a0\\u8212\\u670d\\u7f8e\\u4e3d\\u3002\\u6240\\u4ee5\\uff0c\\u5f53\\u524d\\u5f88\\u591a\\u88ab\\u9762\\u90e8\\u80a5\\u5927\\u95ee\\u9898\\u6240\\u56f0\\u6270\\u7684\\u7231\\u7f8e\\u8005\\u5c31\\u7eb7\\u7eb7\\u9009\\u62e9\\u4e86\\u505a\\u6ce8\\u5c04\\u7626\\u8138\\u3002\\u90a3\\u4e48\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u4f1a\\u6709\\u526f\\u4f5c\\u7528\\u5417\\uff1f\\u4e0b\\u9762\\u8ba9\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u7684\\u4e13\\u5bb6\\u6765\\u7ed9\\u5927\\u5bb6\\u8bb2\\u89e3\\u4e00\\u4e0b\\u3002<\\/p><p>\\u636e\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u4e13\\u5bb6\\u4ecb\\u7ecd\\u8bf4\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u5c31\\u662f\\u7528\\u836f\\u7269(\\u8089\\u6bd2\\u7d20)\\u963b\\u65ad\\u795e\\u7ecf\\u4e0e\\u808c\\u8089\\u7684\\u795e\\u7ecf\\u51b2\\u52a8\\uff0c\\u9ebb\\u75f9\\u8fc7\\u4e8e\\u53d1\\u8fbe\\u7684\\u808c\\u8089\\u4f7f\\u4e4b\\u6536\\u7f29\\uff0c\\u5b83\\u662f\\u5229\\u7528\\u9ebb\\u75f9\\u808c\\u8089\\u6765\\u8fbe\\u5230\\u201c\\u5931\\u80fd\\u6027\\u7684\\u840e\\u7f29\\u201d\\u7684\\u76ee\\u7684\\uff0c\\u4f7f\\u7684\\u539f\\u672c\\u80a5\\u539a\\u589e\\u751f\\u7684\\u808c\\u8089\\u7f29\\u5c0f\\uff0c\\u4e5f\\u5c31\\u8fbe\\u5230\\u4e86\\u7626\\u8138\\u7684\\u529f\\u6548\\u3002\\u90a3\\u4e48\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u4f1a\\u6709\\u526f\\u4f5c\\u7528\\u5417\\uff1f\\u6ce8\\u5c04\\u7626\\u8138\\u5728\\u5b89\\u5168\\u5242\\u91cf\\u4e4b\\u5185\\u662f\\u4e0d\\u4f1a\\u51fa\\u73b0\\u4efb\\u4f55\\u526f\\u4f5c\\u7528\\u7684\\uff0c\\u4f46\\u662f\\u5982\\u679c\\u8fc7\\u91cf\\u6ce8\\u5c04\\u6216\\u6ce8\\u5c04\\u65b9\\u6cd5\\u6709\\u95ee\\u9898\\uff0c\\u6216\\u8005\\u4e0e\\u5176\\u4ed6\\u4e00\\u4e9b\\u6297\\u751f\\u7d20\\u540c\\u65f6\\u4f7f\\u7528\\uff0c\\u53ef\\u80fd\\u4f1a\\u4ea7\\u751f\\u4e00\\u4e9b\\u526f\\u4f5c\\u7528\\u3002\\u4e3b\\u8981\\u8868\\u73b0\\u6709\\uff1a\\u9762\\u90e8\\u5982\\u679c\\u6253\\u5f97\\u8fc7\\u91cf\\uff0c\\u53ef\\u80fd\\u9020\\u6210\\u541e\\u54bd\\u56f0\\u96be\\uff1b\\u9762\\u90e8\\u4f1a\\u53d8\\u5f97\\u50f5\\u786c\\uff0c\\u7b11\\u5bb9\\u4e0d\\u81ea\\u7136\\uff1b\\u6709\\u5c40\\u90e8\\u7684\\u80bf\\u80c0\\u4ee5\\u53ca\\u53d1\\u70ed\\u8868\\u73b0\\u3002\\u4e00\\u822c\\u8fd9\\u4e9b\\u4e34\\u5e8a\\u8868\\u73b0\\u4e3a\\u4e00\\u8fc7\\u6027\\u7684\\uff0c\\u5e76\\u5728\\u6570\\u5468\\u5185\\u81ea\\u884c\\u6d88\\u5931\\u3002\\u6c42\\u7f8e\\u8005\\u5927\\u53ef\\u4e0d\\u5fc5\\u62c5\\u5fc3\\uff0c\\u6ce8\\u5c04\\u524d\\u4e00\\u5b9a\\u8981\\u9009\\u62e9\\u6b63\\u89c4\\u4e13\\u4e1a\\u7684\\u6574\\u5f62\\u7f8e\\u5bb9\\u673a\\u6784\\uff0c\\u627e\\u4e13\\u4e1a\\u7684\\u533b\\u5e08\\u8fdb\\u884c\\u6ce8\\u5c04\\u7626\\u8138\\uff0c\\u786e\\u4fdd\\u5b89\\u5168\\u548c\\u6548\\u679c\\uff0c\\u907f\\u514d\\u4e00\\u4e9b\\u4e0d\\u9700\\u8981\\u7684\\u526f\\u4f5c\\u7528\\u3002<\\/p><p>\\u76f8\\u4fe1\\u7ecf\\u8fc7\\u4ee5\\u4e0a\\u7684\\u63cf\\u8ff0\\uff0c\\u60a8\\u5df2\\u7ecf\\u5f88\\u4e86\\u89e3\\u4e86\\u3002\\u6b66\\u6c49\\u6b23\\u60a6\\u63d0\\u9192\\u60a8\\uff1a\\u4e3a\\u4e86\\u60a8\\u7684\\u5b89\\u5168\\u548c\\u624b\\u672f\\u6548\\u679c\\uff0c\\u8bf7\\u52a1\\u5fc5\\u5230\\u4e13\\u4e1a\\u7684\\u5927\\u578b\\u7f8e\\u5bb9\\u6574\\u5f62\\u533b\\u9662\\u505a\\u624b\\u672f\\u3002\\u5982\\u679c\\u60a8\\u8fd8\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u3002\\u8bf7\\u54a8\\u8be2\\u6211\\u4eec\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u7684\\u5728\\u7ebf\\u4e13\\u5bb6\\uff0c\\u54a8\\u8be2\\u70ed\\u7ebf\\uff1a027-85559090\\uff0c\\u6211\\u4eec\\u7684\\u4e13\\u5bb6\\u5c06\\u4e3a\\u60a8\\u63d0\\u4f9b\\u6700\\u4e13\\u4e1a\\u7684\\u56de\\u7b54\\u3002<\\/p><p>\\u636e\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u4e13\\u5bb6\\u4ecb\\u7ecd\\u8bf4\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u5c31\\u662f\\u7528\\u836f\\u7269(\\u8089\\u6bd2\\u7d20)\\u963b\\u65ad\\u795e\\u7ecf\\u4e0e\\u808c\\u8089\\u7684\\u795e\\u7ecf\\u51b2\\u52a8\\uff0c\\u9ebb\\u75f9\\u8fc7\\u4e8e\\u53d1\\u8fbe\\u7684\\u808c\\u8089\\u4f7f\\u4e4b\\u6536\\u7f29\\uff0c\\u5b83\\u662f\\u5229\\u7528\\u9ebb\\u75f9\\u808c\\u8089\\u6765\\u8fbe\\u5230\\u201c\\u5931\\u80fd\\u6027\\u7684\\u840e\\u7f29\\u201d\\u7684\\u76ee\\u7684\\uff0c\\u4f7f\\u7684\\u539f\\u672c\\u80a5\\u539a\\u589e\\u751f\\u7684\\u808c\\u8089\\u7f29\\u5c0f\\uff0c\\u4e5f\\u5c31\\u8fbe\\u5230\\u4e86\\u7626\\u8138\\u7684\\u529f\\u6548\\u3002\\u90a3\\u4e48\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u4f1a\\u6709\\u526f\\u4f5c\\u7528\\u5417\\uff1f\\u6ce8\\u5c04\\u7626\\u8138\\u5728\\u5b89\\u5168\\u5242\\u91cf\\u4e4b\\u5185\\u662f\\u4e0d\\u4f1a\\u51fa\\u73b0\\u4efb\\u4f55\\u526f\\u4f5c\\u7528\\u7684\\uff0c\\u4f46\\u662f\\u5982\\u679c\\u8fc7\\u91cf\\u6ce8\\u5c04\\u6216\\u6ce8\\u5c04\\u65b9\\u6cd5\\u6709\\u95ee\\u9898\\uff0c\\u6216\\u8005\\u4e0e\\u5176\\u4ed6\\u4e00\\u4e9b\\u6297\\u751f\\u7d20\\u540c\\u65f6\\u4f7f\\u7528\\uff0c\\u53ef\\u80fd\\u4f1a\\u4ea7\\u751f\\u4e00\\u4e9b\\u526f\\u4f5c\\u7528\\u3002\\u4e3b\\u8981\\u8868\\u73b0\\u6709\\uff1a\\u9762\\u90e8\\u5982\\u679c\\u6253\\u5f97\\u8fc7\\u91cf\\uff0c\\u53ef\\u80fd\\u9020\\u6210\\u541e\\u54bd\\u56f0\\u96be\\uff1b\\u9762\\u90e8\\u4f1a\\u53d8\\u5f97\\u50f5\\u786c\\uff0c\\u7b11\\u5bb9\\u4e0d\\u81ea\\u7136\\uff1b\\u6709\\u5c40\\u90e8\\u7684\\u80bf\\u80c0\\u4ee5\\u53ca\\u53d1\\u70ed\\u8868\\u73b0\\u3002\\u4e00\\u822c\\u8fd9\\u4e9b\\u4e34\\u5e8a\\u8868\\u73b0\\u4e3a\\u4e00\\u8fc7\\u6027\\u7684\\uff0c\\u5e76\\u5728\\u6570\\u5468\\u5185\\u81ea\\u884c\\u6d88\\u5931\\u3002\\u6c42\\u7f8e\\u8005\\u5927\\u53ef\\u4e0d\\u5fc5\\u62c5\\u5fc3\\uff0c\\u6ce8\\u5c04\\u524d\\u4e00\\u5b9a\\u8981\\u9009\\u62e9\\u6b63\\u89c4\\u4e13\\u4e1a\\u7684\\u6574\\u5f62\\u7f8e\\u5bb9\\u673a\\u6784\\uff0c\\u627e\\u4e13\\u4e1a\\u7684\\u533b\\u5e08\\u8fdb\\u884c\\u6ce8\\u5c04\\u7626\\u8138\\uff0c\\u786e\\u4fdd\\u5b89\\u5168\\u548c\\u6548\\u679c\\uff0c\\u907f\\u514d\\u4e00\\u4e9b\\u4e0d\\u9700\\u8981\\u7684\\u526f\\u4f5c\\u7528\\u3002<\\/p>\",\"sortrank\":null,\"_token\":\"lHAHSn8WsVHDYMOSqhnwJ3YbmWl8K4gSAk8qpWAM\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/articles\"}', '2020-10-26 15:54:35', '2020-10-26 15:54:35');
INSERT INTO `admin_operation_log` VALUES ('593', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 15:54:36', '2020-10-26 15:54:36');
INSERT INTO `admin_operation_log` VALUES ('594', '1', 'admin/articles/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 15:58:20', '2020-10-26 15:58:20');
INSERT INTO `admin_operation_log` VALUES ('595', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 15:58:25', '2020-10-26 15:58:25');
INSERT INTO `admin_operation_log` VALUES ('596', '1', 'admin/articles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 15:58:29', '2020-10-26 15:58:29');
INSERT INTO `admin_operation_log` VALUES ('597', '1', 'admin/articles/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-26 15:58:35', '2020-10-26 15:58:35');
INSERT INTO `admin_operation_log` VALUES ('598', '1', 'admin/articles', 'POST', '192.168.10.1', '{\"category_id\":\"114\",\"title\":\"\\u73bb\\u5c3f\\u9178\\u6ce8\\u5c04\\u4e30\\u989d\\u5934\\u7684\\u6ce8\\u610f\\u4e8b\\u9879\",\"description\":null,\"body\":\"<p>\\u7cbe\\u81f4\\u7626\\u5c0f\\u7684\\u5df4\\u638c\\u8138\\u80fd\\u591f\\u8ba9\\u5973\\u6027\\u66f4\\u663e\\u5a07\\u5a9a\\u4e4b\\u611f\\uff0c\\u770b\\u8d77\\u6765\\u66f4\\u52a0\\u8212\\u670d\\u7f8e\\u4e3d\\u3002\\u6240\\u4ee5\\uff0c\\u5f53\\u524d\\u5f88\\u591a\\u88ab\\u9762\\u90e8\\u80a5\\u5927\\u95ee\\u9898\\u6240\\u56f0\\u6270\\u7684\\u7231\\u7f8e\\u8005\\u5c31\\u7eb7\\u7eb7\\u9009\\u62e9\\u4e86\\u505a\\u6ce8\\u5c04\\u7626\\u8138\\u3002\\u90a3\\u4e48\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u4f1a\\u6709\\u526f\\u4f5c\\u7528\\u5417\\uff1f\\u4e0b\\u9762\\u8ba9\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u7684\\u4e13\\u5bb6\\u6765\\u7ed9\\u5927\\u5bb6\\u8bb2\\u89e3\\u4e00\\u4e0b\\u3002<\\/p><p>\\u636e\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u4e13\\u5bb6\\u4ecb\\u7ecd\\u8bf4\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u5c31\\u662f\\u7528\\u836f\\u7269(\\u8089\\u6bd2\\u7d20)\\u963b\\u65ad\\u795e\\u7ecf\\u4e0e\\u808c\\u8089\\u7684\\u795e\\u7ecf\\u51b2\\u52a8\\uff0c\\u9ebb\\u75f9\\u8fc7\\u4e8e\\u53d1\\u8fbe\\u7684\\u808c\\u8089\\u4f7f\\u4e4b\\u6536\\u7f29\\uff0c\\u5b83\\u662f\\u5229\\u7528\\u9ebb\\u75f9\\u808c\\u8089\\u6765\\u8fbe\\u5230\\u201c\\u5931\\u80fd\\u6027\\u7684\\u840e\\u7f29\\u201d\\u7684\\u76ee\\u7684\\uff0c\\u4f7f\\u7684\\u539f\\u672c\\u80a5\\u539a\\u589e\\u751f\\u7684\\u808c\\u8089\\u7f29\\u5c0f\\uff0c\\u4e5f\\u5c31\\u8fbe\\u5230\\u4e86\\u7626\\u8138\\u7684\\u529f\\u6548\\u3002\\u90a3\\u4e48\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u4f1a\\u6709\\u526f\\u4f5c\\u7528\\u5417\\uff1f\\u6ce8\\u5c04\\u7626\\u8138\\u5728\\u5b89\\u5168\\u5242\\u91cf\\u4e4b\\u5185\\u662f\\u4e0d\\u4f1a\\u51fa\\u73b0\\u4efb\\u4f55\\u526f\\u4f5c\\u7528\\u7684\\uff0c\\u4f46\\u662f\\u5982\\u679c\\u8fc7\\u91cf\\u6ce8\\u5c04\\u6216\\u6ce8\\u5c04\\u65b9\\u6cd5\\u6709\\u95ee\\u9898\\uff0c\\u6216\\u8005\\u4e0e\\u5176\\u4ed6\\u4e00\\u4e9b\\u6297\\u751f\\u7d20\\u540c\\u65f6\\u4f7f\\u7528\\uff0c\\u53ef\\u80fd\\u4f1a\\u4ea7\\u751f\\u4e00\\u4e9b\\u526f\\u4f5c\\u7528\\u3002\\u4e3b\\u8981\\u8868\\u73b0\\u6709\\uff1a\\u9762\\u90e8\\u5982\\u679c\\u6253\\u5f97\\u8fc7\\u91cf\\uff0c\\u53ef\\u80fd\\u9020\\u6210\\u541e\\u54bd\\u56f0\\u96be\\uff1b\\u9762\\u90e8\\u4f1a\\u53d8\\u5f97\\u50f5\\u786c\\uff0c\\u7b11\\u5bb9\\u4e0d\\u81ea\\u7136\\uff1b\\u6709\\u5c40\\u90e8\\u7684\\u80bf\\u80c0\\u4ee5\\u53ca\\u53d1\\u70ed\\u8868\\u73b0\\u3002\\u4e00\\u822c\\u8fd9\\u4e9b\\u4e34\\u5e8a\\u8868\\u73b0\\u4e3a\\u4e00\\u8fc7\\u6027\\u7684\\uff0c\\u5e76\\u5728\\u6570\\u5468\\u5185\\u81ea\\u884c\\u6d88\\u5931\\u3002\\u6c42\\u7f8e\\u8005\\u5927\\u53ef\\u4e0d\\u5fc5\\u62c5\\u5fc3\\uff0c\\u6ce8\\u5c04\\u524d\\u4e00\\u5b9a\\u8981\\u9009\\u62e9\\u6b63\\u89c4\\u4e13\\u4e1a\\u7684\\u6574\\u5f62\\u7f8e\\u5bb9\\u673a\\u6784\\uff0c\\u627e\\u4e13\\u4e1a\\u7684\\u533b\\u5e08\\u8fdb\\u884c\\u6ce8\\u5c04\\u7626\\u8138\\uff0c\\u786e\\u4fdd\\u5b89\\u5168\\u548c\\u6548\\u679c\\uff0c\\u907f\\u514d\\u4e00\\u4e9b\\u4e0d\\u9700\\u8981\\u7684\\u526f\\u4f5c\\u7528\\u3002<\\/p><p>\\u76f8\\u4fe1\\u7ecf\\u8fc7\\u4ee5\\u4e0a\\u7684\\u63cf\\u8ff0\\uff0c\\u60a8\\u5df2\\u7ecf\\u5f88\\u4e86\\u89e3\\u4e86\\u3002\\u6b66\\u6c49\\u6b23\\u60a6\\u63d0\\u9192\\u60a8\\uff1a\\u4e3a\\u4e86\\u60a8\\u7684\\u5b89\\u5168\\u548c\\u624b\\u672f\\u6548\\u679c\\uff0c\\u8bf7\\u52a1\\u5fc5\\u5230\\u4e13\\u4e1a\\u7684\\u5927\\u578b\\u7f8e\\u5bb9\\u6574\\u5f62\\u533b\\u9662\\u505a\\u624b\\u672f\\u3002\\u5982\\u679c\\u60a8\\u8fd8\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u3002\\u8bf7\\u54a8\\u8be2\\u6211\\u4eec\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u7684\\u5728\\u7ebf\\u4e13\\u5bb6\\uff0c\\u54a8\\u8be2\\u70ed\\u7ebf\\uff1a027-85559090\\uff0c\\u6211\\u4eec\\u7684\\u4e13\\u5bb6\\u5c06\\u4e3a\\u60a8\\u63d0\\u4f9b\\u6700\\u4e13\\u4e1a\\u7684\\u56de\\u7b54\\u3002<\\/p><p>\\u636e\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u4e13\\u5bb6\\u4ecb\\u7ecd\\u8bf4\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u5c31\\u662f\\u7528\\u836f\\u7269(\\u8089\\u6bd2\\u7d20)\\u963b\\u65ad\\u795e\\u7ecf\\u4e0e\\u808c\\u8089\\u7684\\u795e\\u7ecf\\u51b2\\u52a8\\uff0c\\u9ebb\\u75f9\\u8fc7\\u4e8e\\u53d1\\u8fbe\\u7684\\u808c\\u8089\\u4f7f\\u4e4b\\u6536\\u7f29\\uff0c\\u5b83\\u662f\\u5229\\u7528\\u9ebb\\u75f9\\u808c\\u8089\\u6765\\u8fbe\\u5230\\u201c\\u5931\\u80fd\\u6027\\u7684\\u840e\\u7f29\\u201d\\u7684\\u76ee\\u7684\\uff0c\\u4f7f\\u7684\\u539f\\u672c\\u80a5\\u539a\\u589e\\u751f\\u7684\\u808c\\u8089\\u7f29\\u5c0f\\uff0c\\u4e5f\\u5c31\\u8fbe\\u5230\\u4e86\\u7626\\u8138\\u7684\\u529f\\u6548\\u3002\\u90a3\\u4e48\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u4f1a\\u6709\\u526f\\u4f5c\\u7528\\u5417\\uff1f\\u6ce8\\u5c04\\u7626\\u8138\\u5728\\u5b89\\u5168\\u5242\\u91cf\\u4e4b\\u5185\\u662f\\u4e0d\\u4f1a\\u51fa\\u73b0\\u4efb\\u4f55\\u526f\\u4f5c\\u7528\\u7684\\uff0c\\u4f46\\u662f\\u5982\\u679c\\u8fc7\\u91cf\\u6ce8\\u5c04\\u6216\\u6ce8\\u5c04\\u65b9\\u6cd5\\u6709\\u95ee\\u9898\\uff0c\\u6216\\u8005\\u4e0e\\u5176\\u4ed6\\u4e00\\u4e9b\\u6297\\u751f\\u7d20\\u540c\\u65f6\\u4f7f\\u7528\\uff0c\\u53ef\\u80fd\\u4f1a\\u4ea7\\u751f\\u4e00\\u4e9b\\u526f\\u4f5c\\u7528\\u3002\\u4e3b\\u8981\\u8868\\u73b0\\u6709\\uff1a\\u9762\\u90e8\\u5982\\u679c\\u6253\\u5f97\\u8fc7\\u91cf\\uff0c\\u53ef\\u80fd\\u9020\\u6210\\u541e\\u54bd\\u56f0\\u96be\\uff1b\\u9762\\u90e8\\u4f1a\\u53d8\\u5f97\\u50f5\\u786c\\uff0c\\u7b11\\u5bb9\\u4e0d\\u81ea\\u7136\\uff1b\\u6709\\u5c40\\u90e8\\u7684\\u80bf\\u80c0\\u4ee5\\u53ca\\u53d1\\u70ed\\u8868\\u73b0\\u3002\\u4e00\\u822c\\u8fd9\\u4e9b\\u4e34\\u5e8a\\u8868\\u73b0\\u4e3a\\u4e00\\u8fc7\\u6027\\u7684\\uff0c\\u5e76\\u5728\\u6570\\u5468\\u5185\\u81ea\\u884c\\u6d88\\u5931\\u3002\\u6c42\\u7f8e\\u8005\\u5927\\u53ef\\u4e0d\\u5fc5\\u62c5\\u5fc3\\uff0c\\u6ce8\\u5c04\\u524d\\u4e00\\u5b9a\\u8981\\u9009\\u62e9\\u6b63\\u89c4\\u4e13\\u4e1a\\u7684\\u6574\\u5f62\\u7f8e\\u5bb9\\u673a\\u6784\\uff0c\\u627e\\u4e13\\u4e1a\\u7684\\u533b\\u5e08\\u8fdb\\u884c\\u6ce8\\u5c04\\u7626\\u8138\\uff0c\\u786e\\u4fdd\\u5b89\\u5168\\u548c\\u6548\\u679c\\uff0c\\u907f\\u514d\\u4e00\\u4e9b\\u4e0d\\u9700\\u8981\\u7684\\u526f\\u4f5c\\u7528\\u3002<\\/p>\",\"sortrank\":\"0\",\"_token\":\"lHAHSn8WsVHDYMOSqhnwJ3YbmWl8K4gSAk8qpWAM\",\"_previous_\":\"http:\\/\\/xinyue.test\\/admin\\/articles\"}', '2020-10-26 15:58:59', '2020-10-26 15:58:59');
INSERT INTO `admin_operation_log` VALUES ('599', '1', 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2020-10-26 15:59:00', '2020-10-26 15:59:00');
INSERT INTO `admin_operation_log` VALUES ('600', '1', 'admin/articles', 'POST', '192.168.10.1', '{\"category_id\":\"114\",\"title\":\"\\u73bb\\u5c3f\\u9178\\u6ce8\\u5c04\\u4e30\\u989d\\u5934\\u7684\\u6ce8\\u610f\\u4e8b\\u9879\",\"description\":null,\"body\":\"<p>\\u7cbe\\u81f4\\u7626\\u5c0f\\u7684\\u5df4\\u638c\\u8138\\u80fd\\u591f\\u8ba9\\u5973\\u6027\\u66f4\\u663e\\u5a07\\u5a9a\\u4e4b\\u611f\\uff0c\\u770b\\u8d77\\u6765\\u66f4\\u52a0\\u8212\\u670d\\u7f8e\\u4e3d\\u3002\\u6240\\u4ee5\\uff0c\\u5f53\\u524d\\u5f88\\u591a\\u88ab\\u9762\\u90e8\\u80a5\\u5927\\u95ee\\u9898\\u6240\\u56f0\\u6270\\u7684\\u7231\\u7f8e\\u8005\\u5c31\\u7eb7\\u7eb7\\u9009\\u62e9\\u4e86\\u505a\\u6ce8\\u5c04\\u7626\\u8138\\u3002\\u90a3\\u4e48\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u4f1a\\u6709\\u526f\\u4f5c\\u7528\\u5417\\uff1f\\u4e0b\\u9762\\u8ba9\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u7684\\u4e13\\u5bb6\\u6765\\u7ed9\\u5927\\u5bb6\\u8bb2\\u89e3\\u4e00\\u4e0b\\u3002<\\/p><p>\\u636e\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u4e13\\u5bb6\\u4ecb\\u7ecd\\u8bf4\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u5c31\\u662f\\u7528\\u836f\\u7269(\\u8089\\u6bd2\\u7d20)\\u963b\\u65ad\\u795e\\u7ecf\\u4e0e\\u808c\\u8089\\u7684\\u795e\\u7ecf\\u51b2\\u52a8\\uff0c\\u9ebb\\u75f9\\u8fc7\\u4e8e\\u53d1\\u8fbe\\u7684\\u808c\\u8089\\u4f7f\\u4e4b\\u6536\\u7f29\\uff0c\\u5b83\\u662f\\u5229\\u7528\\u9ebb\\u75f9\\u808c\\u8089\\u6765\\u8fbe\\u5230\\u201c\\u5931\\u80fd\\u6027\\u7684\\u840e\\u7f29\\u201d\\u7684\\u76ee\\u7684\\uff0c\\u4f7f\\u7684\\u539f\\u672c\\u80a5\\u539a\\u589e\\u751f\\u7684\\u808c\\u8089\\u7f29\\u5c0f\\uff0c\\u4e5f\\u5c31\\u8fbe\\u5230\\u4e86\\u7626\\u8138\\u7684\\u529f\\u6548\\u3002\\u90a3\\u4e48\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u4f1a\\u6709\\u526f\\u4f5c\\u7528\\u5417\\uff1f\\u6ce8\\u5c04\\u7626\\u8138\\u5728\\u5b89\\u5168\\u5242\\u91cf\\u4e4b\\u5185\\u662f\\u4e0d\\u4f1a\\u51fa\\u73b0\\u4efb\\u4f55\\u526f\\u4f5c\\u7528\\u7684\\uff0c\\u4f46\\u662f\\u5982\\u679c\\u8fc7\\u91cf\\u6ce8\\u5c04\\u6216\\u6ce8\\u5c04\\u65b9\\u6cd5\\u6709\\u95ee\\u9898\\uff0c\\u6216\\u8005\\u4e0e\\u5176\\u4ed6\\u4e00\\u4e9b\\u6297\\u751f\\u7d20\\u540c\\u65f6\\u4f7f\\u7528\\uff0c\\u53ef\\u80fd\\u4f1a\\u4ea7\\u751f\\u4e00\\u4e9b\\u526f\\u4f5c\\u7528\\u3002\\u4e3b\\u8981\\u8868\\u73b0\\u6709\\uff1a\\u9762\\u90e8\\u5982\\u679c\\u6253\\u5f97\\u8fc7\\u91cf\\uff0c\\u53ef\\u80fd\\u9020\\u6210\\u541e\\u54bd\\u56f0\\u96be\\uff1b\\u9762\\u90e8\\u4f1a\\u53d8\\u5f97\\u50f5\\u786c\\uff0c\\u7b11\\u5bb9\\u4e0d\\u81ea\\u7136\\uff1b\\u6709\\u5c40\\u90e8\\u7684\\u80bf\\u80c0\\u4ee5\\u53ca\\u53d1\\u70ed\\u8868\\u73b0\\u3002\\u4e00\\u822c\\u8fd9\\u4e9b\\u4e34\\u5e8a\\u8868\\u73b0\\u4e3a\\u4e00\\u8fc7\\u6027\\u7684\\uff0c\\u5e76\\u5728\\u6570\\u5468\\u5185\\u81ea\\u884c\\u6d88\\u5931\\u3002\\u6c42\\u7f8e\\u8005\\u5927\\u53ef\\u4e0d\\u5fc5\\u62c5\\u5fc3\\uff0c\\u6ce8\\u5c04\\u524d\\u4e00\\u5b9a\\u8981\\u9009\\u62e9\\u6b63\\u89c4\\u4e13\\u4e1a\\u7684\\u6574\\u5f62\\u7f8e\\u5bb9\\u673a\\u6784\\uff0c\\u627e\\u4e13\\u4e1a\\u7684\\u533b\\u5e08\\u8fdb\\u884c\\u6ce8\\u5c04\\u7626\\u8138\\uff0c\\u786e\\u4fdd\\u5b89\\u5168\\u548c\\u6548\\u679c\\uff0c\\u907f\\u514d\\u4e00\\u4e9b\\u4e0d\\u9700\\u8981\\u7684\\u526f\\u4f5c\\u7528\\u3002<\\/p><p>\\u76f8\\u4fe1\\u7ecf\\u8fc7\\u4ee5\\u4e0a\\u7684\\u63cf\\u8ff0\\uff0c\\u60a8\\u5df2\\u7ecf\\u5f88\\u4e86\\u89e3\\u4e86\\u3002\\u6b66\\u6c49\\u6b23\\u60a6\\u63d0\\u9192\\u60a8\\uff1a\\u4e3a\\u4e86\\u60a8\\u7684\\u5b89\\u5168\\u548c\\u624b\\u672f\\u6548\\u679c\\uff0c\\u8bf7\\u52a1\\u5fc5\\u5230\\u4e13\\u4e1a\\u7684\\u5927\\u578b\\u7f8e\\u5bb9\\u6574\\u5f62\\u533b\\u9662\\u505a\\u624b\\u672f\\u3002\\u5982\\u679c\\u60a8\\u8fd8\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u3002\\u8bf7\\u54a8\\u8be2\\u6211\\u4eec\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u7684\\u5728\\u7ebf\\u4e13\\u5bb6\\uff0c\\u54a8\\u8be2\\u70ed\\u7ebf\\uff1a027-85559090\\uff0c\\u6211\\u4eec\\u7684\\u4e13\\u5bb6\\u5c06\\u4e3a\\u60a8\\u63d0\\u4f9b\\u6700\\u4e13\\u4e1a\\u7684\\u56de\\u7b54\\u3002<\\/p><p>\\u636e\\u6b66\\u6c49\\u6b23\\u60a6\\u6574\\u5f62\\u7f8e\\u5bb9\\u533b\\u9662\\u4e13\\u5bb6\\u4ecb\\u7ecd\\u8bf4\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u5c31\\u662f\\u7528\\u836f\\u7269(\\u8089\\u6bd2\\u7d20)\\u963b\\u65ad\\u795e\\u7ecf\\u4e0e\\u808c\\u8089\\u7684\\u795e\\u7ecf\\u51b2\\u52a8\\uff0c\\u9ebb\\u75f9\\u8fc7\\u4e8e\\u53d1\\u8fbe\\u7684\\u808c\\u8089\\u4f7f\\u4e4b\\u6536\\u7f29\\uff0c\\u5b83\\u662f\\u5229\\u7528\\u9ebb\\u75f9\\u808c\\u8089\\u6765\\u8fbe\\u5230\\u201c\\u5931\\u80fd\\u6027\\u7684\\u840e\\u7f29\\u201d\\u7684\\u76ee\\u7684\\uff0c\\u4f7f\\u7684\\u539f\\u672c\\u80a5\\u539a\\u589e\\u751f\\u7684\\u808c\\u8089\\u7f29\\u5c0f\\uff0c\\u4e5f\\u5c31\\u8fbe\\u5230\\u4e86\\u7626\\u8138\\u7684\\u529f\\u6548\\u3002\\u90a3\\u4e48\\uff0c\\u6ce8\\u5c04\\u7626\\u8138\\u4f1a\\u6709\\u526f\\u4f5c\\u7528\\u5417\\uff1f\\u6ce8\\u5c04\\u7626\\u8138\\u5728\\u5b89\\u5168\\u5242\\u91cf\\u4e4b\\u5185\\u662f\\u4e0d\\u4f1a\\u51fa\\u73b0\\u4efb\\u4f55\\u526f\\u4f5c\\u7528\\u7684\\uff0c\\u4f46\\u662f\\u5982\\u679c\\u8fc7\\u91cf\\u6ce8\\u5c04\\u6216\\u6ce8\\u5c04\\u65b9\\u6cd5\\u6709\\u95ee\\u9898\\uff0c\\u6216\\u8005\\u4e0e\\u5176\\u4ed6\\u4e00\\u4e9b\\u6297\\u751f\\u7d20\\u540c\\u65f6\\u4f7f\\u7528\\uff0c\\u53ef\\u80fd\\u4f1a\\u4ea7\\u751f\\u4e00\\u4e9b\\u526f\\u4f5c\\u7528\\u3002\\u4e3b\\u8981\\u8868\\u73b0\\u6709\\uff1a\\u9762\\u90e8\\u5982\\u679c\\u6253\\u5f97\\u8fc7\\u91cf\\uff0c\\u53ef\\u80fd\\u9020\\u6210\\u541e\\u54bd\\u56f0\\u96be\\uff1b\\u9762\\u90e8\\u4f1a\\u53d8\\u5f97\\u50f5\\u786c\\uff0c\\u7b11\\u5bb9\\u4e0d\\u81ea\\u7136\\uff1b\\u6709\\u5c40\\u90e8\\u7684\\u80bf\\u80c0\\u4ee5\\u53ca\\u53d1\\u70ed\\u8868\\u73b0\\u3002\\u4e00\\u822c\\u8fd9\\u4e9b\\u4e34\\u5e8a\\u8868\\u73b0\\u4e3a\\u4e00\\u8fc7\\u6027\\u7684\\uff0c\\u5e76\\u5728\\u6570\\u5468\\u5185\\u81ea\\u884c\\u6d88\\u5931\\u3002\\u6c42\\u7f8e\\u8005\\u5927\\u53ef\\u4e0d\\u5fc5\\u62c5\\u5fc3\\uff0c\\u6ce8\\u5c04\\u524d\\u4e00\\u5b9a\\u8981\\u9009\\u62e9\\u6b63\\u89c4\\u4e13\\u4e1a\\u7684\\u6574\\u5f62\\u7f8e\\u5bb9\\u673a\\u6784\\uff0c\\u627e\\u4e13\\u4e1a\\u7684\\u533b\\u5e08\\u8fdb\\u884c\\u6ce8\\u5c04\\u7626\\u8138\\uff0c\\u786e\\u4fdd\\u5b89\\u5168\\u548c\\u6548\\u679c\\uff0c\\u907f\\u514d\\u4e00\\u4e9b\\u4e0d\\u9700\\u8981\\u7684\\u526f\\u4f5c\\u7528\\u3002<\\/p>\",\"sortrank\":\"0\",\"_token\":\"lHAHSn8WsVHDYMOSqhnwJ3YbmWl8K4gSAk8qpWAM\"}', '2020-10-26 15:59:28', '2020-10-26 15:59:28');
INSERT INTO `admin_operation_log` VALUES ('601', '1', 'admin/articles', 'GET', '192.168.10.1', '[]', '2020-10-26 15:59:28', '2020-10-26 15:59:28');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO `admin_permissions` VALUES ('6', '用户管理', 'users', '', '/users*', '2020-10-18 15:57:22', '2020-10-18 15:57:22');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '2', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '3', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '4', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '6', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2020-10-18 14:34:12', '2020-10-18 14:34:12');
INSERT INTO `admin_roles` VALUES ('2', '运营', 'operation', '2020-10-18 15:58:44', '2020-10-18 15:58:44');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$oWyydjmDCk.pMzhwss2fa.K8AZ.hLfHUghY84fnflVOxIK23DTD8K', 'Administrator', null, 'pNPB19vwdeQaPVhMJZnt8daz9dUOH9T6fqHKcNMcUSlHTipdECi7oLjstUbL', '2020-10-18 14:34:10', '2020-10-18 14:34:10');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortrank` int(50) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_category_id_foreign` (`category_id`),
  CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', '114', '玻尿酸注射丰额头的注意事项', null, 'images/acc3bf260942b77494250c1c9660aa86.jpg', '<p>精致瘦小的巴掌脸能够让女性更显娇媚之感，看起来更加舒服美丽。所以，当前很多被面部肥大问题所困扰的爱美者就纷纷选择了做注射瘦脸。那么，注射瘦脸会有副作用吗？下面让武汉欣悦整形美容医院的专家来给大家讲解一下。</p><p>据武汉欣悦整形美容医院专家介绍说，注射瘦脸就是用药物(肉毒素)阻断神经与肌肉的神经冲动，麻痹过于发达的肌肉使之收缩，它是利用麻痹肌肉来达到“失能性的萎缩”的目的，使的原本肥厚增生的肌肉缩小，也就达到了瘦脸的功效。那么，注射瘦脸会有副作用吗？注射瘦脸在安全剂量之内是不会出现任何副作用的，但是如果过量注射或注射方法有问题，或者与其他一些抗生素同时使用，可能会产生一些副作用。主要表现有：面部如果打得过量，可能造成吞咽困难；面部会变得僵硬，笑容不自然；有局部的肿胀以及发热表现。一般这些临床表现为一过性的，并在数周内自行消失。求美者大可不必担心，注射前一定要选择正规专业的整形美容机构，找专业的医师进行注射瘦脸，确保安全和效果，避免一些不需要的副作用。</p><p>相信经过以上的描述，您已经很了解了。武汉欣悦提醒您：为了您的安全和手术效果，请务必到专业的大型美容整形医院做手术。如果您还有什么疑问。请咨询我们武汉欣悦整形美容医院的在线专家，咨询热线：027-85559090，我们的专家将为您提供最专业的回答。</p><p>据武汉欣悦整形美容医院专家介绍说，注射瘦脸就是用药物(肉毒素)阻断神经与肌肉的神经冲动，麻痹过于发达的肌肉使之收缩，它是利用麻痹肌肉来达到“失能性的萎缩”的目的，使的原本肥厚增生的肌肉缩小，也就达到了瘦脸的功效。那么，注射瘦脸会有副作用吗？注射瘦脸在安全剂量之内是不会出现任何副作用的，但是如果过量注射或注射方法有问题，或者与其他一些抗生素同时使用，可能会产生一些副作用。主要表现有：面部如果打得过量，可能造成吞咽困难；面部会变得僵硬，笑容不自然；有局部的肿胀以及发热表现。一般这些临床表现为一过性的，并在数周内自行消失。求美者大可不必担心，注射前一定要选择正规专业的整形美容机构，找专业的医师进行注射瘦脸，确保安全和效果，避免一些不需要的副作用。</p>', '0', '2020-10-26 15:59:28', '2020-10-26 15:59:28');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL DEFAULT '0' COMMENT '上级栏目ID',
  `topid` int(11) NOT NULL DEFAULT '0' COMMENT '上级栏目ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目名称',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `sortrank` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '缩略图',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('11', '0', '0', '整形美容', null, '0', null);
INSERT INTO `categories` VALUES ('12', '0', '0', '皮肤美容', null, '0', null);
INSERT INTO `categories` VALUES ('13', '0', '0', '注射美容', null, '0', null);
INSERT INTO `categories` VALUES ('14', '0', '0', '私密整形', null, '0', null);
INSERT INTO `categories` VALUES ('15', '0', '0', '品牌中心', null, '0', null);
INSERT INTO `categories` VALUES ('16', '15', '0', '品牌故事', null, '0', null);
INSERT INTO `categories` VALUES ('17', '15', '0', '荣誉资质', null, '0', null);
INSERT INTO `categories` VALUES ('18', '15', '0', '权威专家', null, '0', null);
INSERT INTO `categories` VALUES ('19', '15', '0', '尖端设备', null, '0', null);
INSERT INTO `categories` VALUES ('20', '15', '0', '院长寄语', null, '0', null);
INSERT INTO `categories` VALUES ('21', '15', '0', '五星环境', null, '0', null);
INSERT INTO `categories` VALUES ('22', '15', '0', '联系我们', null, '0', null);
INSERT INTO `categories` VALUES ('23', '15', '0', '来院路线', null, '0', null);
INSERT INTO `categories` VALUES ('24', '11', '0', '眼部整形', null, '0', null);
INSERT INTO `categories` VALUES ('25', '24', '0', '眼皮松弛', null, '0', null);
INSERT INTO `categories` VALUES ('26', '11', '0', '鼻部整形', null, '0', null);
INSERT INTO `categories` VALUES ('27', '11', '0', '面部整形', null, '0', null);
INSERT INTO `categories` VALUES ('28', '11', '0', '吸脂减肥', null, '0', null);
INSERT INTO `categories` VALUES ('29', '11', '0', '胸部整形', null, '0', null);
INSERT INTO `categories` VALUES ('30', '11', '0', '眉部美容', null, '0', null);
INSERT INTO `categories` VALUES ('31', '24', '0', '开外眼角', null, '0', null);
INSERT INTO `categories` VALUES ('32', '24', '0', '开内眼角', null, '0', null);
INSERT INTO `categories` VALUES ('33', '24', '0', '双眼皮手术', null, '0', null);
INSERT INTO `categories` VALUES ('34', '24', '0', '祛眼袋', null, '0', null);
INSERT INTO `categories` VALUES ('35', '24', '0', '小眼开大', null, '0', null);
INSERT INTO `categories` VALUES ('36', '26', '0', '鼻翼畸形', null, '0', null);
INSERT INTO `categories` VALUES ('37', '26', '0', '立体隆鼻', null, '0', null);
INSERT INTO `categories` VALUES ('38', '26', '0', '鼻翼再造', null, '0', null);
INSERT INTO `categories` VALUES ('39', '26', '0', '鼻头再造', null, '0', null);
INSERT INTO `categories` VALUES ('40', '26', '0', '歪鼻整形', null, '0', null);
INSERT INTO `categories` VALUES ('41', '26', '0', '鹰钩鼻', null, '0', null);
INSERT INTO `categories` VALUES ('42', '26', '0', '鼻翼肥大', null, '0', null);
INSERT INTO `categories` VALUES ('43', '26', '0', '鼻尖整形', null, '0', null);
INSERT INTO `categories` VALUES ('44', '26', '0', '驼峰鼻', null, '0', null);
INSERT INTO `categories` VALUES ('45', '26', '0', '鼻再造', null, '0', null);
INSERT INTO `categories` VALUES ('46', '27', '0', '垫下巴', null, '0', null);
INSERT INTO `categories` VALUES ('47', '27', '0', '酒窝再造', null, '0', null);
INSERT INTO `categories` VALUES ('48', '27', '0', '丰太阳穴', null, '0', null);
INSERT INTO `categories` VALUES ('49', '27', '0', '丰面颊', null, '0', null);
INSERT INTO `categories` VALUES ('50', '27', '0', '面部提升除皱', null, '0', null);
INSERT INTO `categories` VALUES ('51', '28', '0', '大腿吸脂', null, '0', null);
INSERT INTO `categories` VALUES ('52', '28', '0', '臀部吸脂', null, '0', null);
INSERT INTO `categories` VALUES ('53', '28', '0', '背部吸脂', null, '0', null);
INSERT INTO `categories` VALUES ('54', '28', '0', '上臂吸脂', null, '0', null);
INSERT INTO `categories` VALUES ('55', '28', '0', '腰腹吸脂', null, '0', null);
INSERT INTO `categories` VALUES ('56', '28', '0', '小腿吸脂', null, '0', null);
INSERT INTO `categories` VALUES ('57', '28', '0', '面部吸脂', null, '0', null);
INSERT INTO `categories` VALUES ('58', '29', '0', '假体隆胸', null, '0', null);
INSERT INTO `categories` VALUES ('59', '29', '0', '乳房下垂矫正', null, '0', null);
INSERT INTO `categories` VALUES ('60', '29', '0', '乳头内陷矫正', null, '0', null);
INSERT INTO `categories` VALUES ('61', '29', '0', '乳房再造', null, '0', null);
INSERT INTO `categories` VALUES ('62', '29', '0', '乳晕缩小', null, '0', null);
INSERT INTO `categories` VALUES ('63', '29', '0', '巨乳缩小', null, '0', null);
INSERT INTO `categories` VALUES ('64', '29', '0', '乳头缩小', null, '0', null);
INSERT INTO `categories` VALUES ('65', '29', '0', '乳晕再造', null, '0', null);
INSERT INTO `categories` VALUES ('66', '29', '0', '副乳祛除', null, '0', null);
INSERT INTO `categories` VALUES ('67', '29', '0', '自体脂肪隆胸', null, '0', null);
INSERT INTO `categories` VALUES ('68', '29', '0', '奥美定取出', null, '0', null);
INSERT INTO `categories` VALUES ('69', '30', '0', '提眉', null, '0', null);
INSERT INTO `categories` VALUES ('70', '30', '0', '凹陷眉', null, '0', null);
INSERT INTO `categories` VALUES ('71', '30', '0', '隆眉弓', null, '0', null);
INSERT INTO `categories` VALUES ('72', '30', '0', '眉再造', null, '0', null);
INSERT INTO `categories` VALUES ('73', '30', '0', '缺眉修复', null, '0', null);
INSERT INTO `categories` VALUES ('74', '12', '0', '美白嫩肤', null, '0', null);
INSERT INTO `categories` VALUES ('75', '12', '0', '冰点脱毛', null, '0', null);
INSERT INTO `categories` VALUES ('76', '12', '0', '祛斑祛痘', null, '0', null);
INSERT INTO `categories` VALUES ('77', '12', '0', '紧肤除皱', null, '0', null);
INSERT INTO `categories` VALUES ('78', '74', '0', '飞顿360', null, '0', null);
INSERT INTO `categories` VALUES ('79', '74', '0', '去红血丝', null, '0', null);
INSERT INTO `categories` VALUES ('80', '74', '0', '去黑头', null, '0', null);
INSERT INTO `categories` VALUES ('81', '74', '0', '缩小毛孔', null, '0', null);
INSERT INTO `categories` VALUES ('82', '74', '0', '去暗黄', null, '0', null);
INSERT INTO `categories` VALUES ('83', '75', '0', '激光脱毛', null, '0', null);
INSERT INTO `categories` VALUES ('84', '75', '0', '腋下脱毛', null, '0', null);
INSERT INTO `categories` VALUES ('85', '75', '0', '四肢脱毛', null, '0', null);
INSERT INTO `categories` VALUES ('86', '75', '0', '比基尼脱毛', null, '0', null);
INSERT INTO `categories` VALUES ('87', '75', '0', '其他脱毛', null, '0', null);
INSERT INTO `categories` VALUES ('88', '76', '0', '祛斑', null, '0', null);
INSERT INTO `categories` VALUES ('89', '76', '0', '祛痘', null, '0', null);
INSERT INTO `categories` VALUES ('90', '76', '0', '祛太田痣', null, '0', null);
INSERT INTO `categories` VALUES ('91', '76', '0', '祛汗斑', null, '0', null);
INSERT INTO `categories` VALUES ('92', '76', '0', '祛纹身', null, '0', null);
INSERT INTO `categories` VALUES ('93', '77', '0', '射频除皱', null, '0', null);
INSERT INTO `categories` VALUES ('94', '77', '0', '电波拉皮', null, '0', null);
INSERT INTO `categories` VALUES ('95', '77', '0', '面部除皱', null, '0', null);
INSERT INTO `categories` VALUES ('96', '77', '0', '面部年轻化', null, '0', null);
INSERT INTO `categories` VALUES ('97', '77', '0', '其他除皱', null, '0', null);
INSERT INTO `categories` VALUES ('98', '14', '0', '阴道紧缩', null, '0', null);
INSERT INTO `categories` VALUES ('99', '14', '0', '处女膜修复', null, '0', null);
INSERT INTO `categories` VALUES ('100', '14', '0', '外阴整形', null, '0', null);
INSERT INTO `categories` VALUES ('101', '14', '0', '阴蒂肥大整形', null, '0', null);
INSERT INTO `categories` VALUES ('102', '14', '0', '阴道再造术', null, '0', null);
INSERT INTO `categories` VALUES ('103', '14', '0', '包皮包茎术', null, '0', null);
INSERT INTO `categories` VALUES ('104', '14', '0', '无痕祛腋臭', null, '0', null);
INSERT INTO `categories` VALUES ('105', '13', '0', '注射除皱', null, '0', null);
INSERT INTO `categories` VALUES ('106', '13', '0', '注射塑形', null, '0', null);
INSERT INTO `categories` VALUES ('107', '13', '0', '注射减肥', null, '0', null);
INSERT INTO `categories` VALUES ('108', '105', '0', '抬头纹', null, '0', null);
INSERT INTO `categories` VALUES ('109', '105', '0', '眉间纹', null, '0', null);
INSERT INTO `categories` VALUES ('110', '105', '0', '鱼尾纹', null, '0', null);
INSERT INTO `categories` VALUES ('111', '105', '0', '法令纹', null, '0', null);
INSERT INTO `categories` VALUES ('112', '105', '0', '口周纹', null, '0', null);
INSERT INTO `categories` VALUES ('113', '105', '0', '颈部横纹', null, '0', null);
INSERT INTO `categories` VALUES ('114', '106', '0', '丰额头', null, '0', null);
INSERT INTO `categories` VALUES ('115', '106', '0', '填泪沟', null, '0', null);
INSERT INTO `categories` VALUES ('116', '106', '0', '丰面颊', null, '0', null);
INSERT INTO `categories` VALUES ('117', '106', '0', '丰鼻唇沟', null, '0', null);
INSERT INTO `categories` VALUES ('118', '106', '0', '注射隆鼻', null, '0', null);
INSERT INTO `categories` VALUES ('119', '106', '0', '丰唇', null, '0', null);
INSERT INTO `categories` VALUES ('120', '106', '0', '注射隆下巴', null, '0', null);
INSERT INTO `categories` VALUES ('121', '106', '0', '丰太阳穴', null, '0', null);
INSERT INTO `categories` VALUES ('122', '107', '0', '瘦脸', null, '0', null);
INSERT INTO `categories` VALUES ('123', '107', '0', '瘦小腿', null, '0', null);
INSERT INTO `categories` VALUES ('124', '107', '0', '溶脂针', null, '0', null);
INSERT INTO `categories` VALUES ('125', '107', '0', '注射美白', null, '0', null);
INSERT INTO `categories` VALUES ('126', '0', '0', '新闻中心', null, '0', null);

-- ----------------------------
-- Table structure for category_articles
-- ----------------------------
DROP TABLE IF EXISTS `category_articles`;
CREATE TABLE `category_articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortrank` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `category_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_articles_category_id_foreign` (`category_id`),
  CONSTRAINT `category_articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of category_articles
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2020_10_17_021819_create_user_addresses_table', '2');
INSERT INTO `migrations` VALUES ('5', '2016_01_04_173148_create_admin_tables', '3');
INSERT INTO `migrations` VALUES ('6', '2020_10_19_081006_add_info_to_users_table', '4');
INSERT INTO `migrations` VALUES ('7', '2020_10_21_075352_create_categories_table', '5');
INSERT INTO `migrations` VALUES ('8', '2020_10_21_090712_create_articles_table', '5');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for user_addresses
-- ----------------------------
DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE `user_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(10) unsigned NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_addresses_user_id_foreign` (`user_id`),
  CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_addresses
-- ----------------------------
INSERT INTO `user_addresses` VALUES ('1', '1', '北京市', '市辖区', '东城区', '第40街道第377号', '111111', '兰颖', '13041540126', null, '2020-10-17 13:43:46', '2020-10-18 10:03:19');
INSERT INTO `user_addresses` VALUES ('2', '1', '河北省', '石家庄市', '长安区', '第68街道第905号', '361300', '植明霞', '15026331587', null, '2020-10-17 13:43:46', '2020-10-17 13:43:46');
INSERT INTO `user_addresses` VALUES ('3', '1', '江苏省', '苏州市', '相城区', '第78街道第492号', '596100', '沙艳', '18890416566', null, '2020-10-17 13:43:47', '2020-10-17 13:43:47');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '女',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yawp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identitycard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '下次再请', '316446834@qq.com', '2020-10-16 11:59:48', '$2y$10$41VzRj1z4Fn4GJw39.k5GuzcDRbqXwm.iRxdKNBCZm2B2Rhzu.3Ky', null, '2020-10-11 14:31:10', '2020-10-19 14:38:07', '男', 'http://xinyue.test/uploads/images/avatars/202010/19/1_1603118287_B1p5mdG0M5.jpg', '看书、旅游', '眼睛、鼻子', '程序员', '武汉市武昌区', '316446834', '15872123654', null);
